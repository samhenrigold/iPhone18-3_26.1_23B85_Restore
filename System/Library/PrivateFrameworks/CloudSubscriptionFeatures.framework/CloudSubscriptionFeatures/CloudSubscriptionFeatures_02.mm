uint64_t sub_1DF4B2A10()
{
  sub_1DF499628(*(v0 + 296), type metadata accessor for NetworkRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4B2AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1DF564104();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v6 = sub_1DF5644C4();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for NetworkRequest(0);
  v4[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B2C00, 0, 0);
}

uint64_t sub_1DF4B2C00()
{
  sub_1DF47E4CC(v0[25] + 120, (v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  v1 = v0[14];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 11, v1);
    sub_1DF493EA4(*v2, v2[1], v2[2], v2[3]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  }

  else
  {
    sub_1DF47E5B4((v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  }

  v3 = v0[25];
  v5 = v3[13];
  v4 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v5);
  sub_1DF494830(v5, v4);
  v6 = v0[32];
  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v12 = v0[24];
  v11 = v0[25];
  sub_1DF47FCEC(v11 + 40, (v7 + 2));
  sub_1DF47FCEC(v11, (v7 + 7));
  sub_1DF47E4CC(v12, v7 + *(v6 + 28), &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  *v7 = v24;
  v7[1] = v26;
  v27 = swift_task_alloc();
  v0[34] = v27;
  *v27 = v0;
  v27[1] = sub_1DF4B2E70;

  return sub_1DF494944((v0 + 2));
}

uint64_t sub_1DF4B2E70()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1DF499528;
  }

  else
  {
    v2 = sub_1DF4B2F84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4B2F84()
{
  sub_1DF47E4CC(*(v0 + 200) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 264);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 280);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = *(v0 + 208);
    sub_1DF564144();
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    type metadata accessor for Ticket();
    sub_1DF4BB5F0(&qword_1ECE37B30, type metadata accessor for Ticket, &protocol conformance descriptor for Ticket);
    sub_1DF564124();
    v9 = *(v0 + 264);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);

    sub_1DF499628(v9, type metadata accessor for NetworkRequest);
    *v11 = *(v0 + 168);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v12 = v14;
    *(v12 + 8) = v13;
    *(v12 + 16) = v16;
    *(v12 + 24) = v15;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    v19 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 264);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:

  v19 = *(v0 + 8);
LABEL_10:

  return v19();
}

uint64_t sub_1DF4B3280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = sub_1DF564104();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = sub_1DF5644C4();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for NetworkRequest(0);
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B33D0, 0, 0);
}

uint64_t sub_1DF4B33D0()
{
  sub_1DF47E4CC(v0[28] + 120, (v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  v1 = v0[14];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 11, v1);
    sub_1DF493EA4(*v2, v2[1], v2[2], v2[3]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  }

  else
  {
    sub_1DF47E5B4((v0 + 11), &qword_1ECE37AF8, &qword_1DF567DA0);
  }

  v3 = v0[28];
  v5 = v3[13];
  v4 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v5);
  sub_1DF494830(v5, v4);
  v6 = v0[35];
  v7 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v12 = v0[27];
  v11 = v0[28];
  sub_1DF47FCEC(v11 + 40, (v7 + 2));
  sub_1DF47FCEC(v11, (v7 + 7));
  sub_1DF47E4CC(v12, v7 + *(v6 + 28), &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF5644B4();
  v13 = sub_1DF5644A4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);
  v17 = sub_1DF488298(8, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1E12D6280](v17, v19, v21, v23);
  v26 = v25;

  *v7 = v24;
  v7[1] = v26;
  v27 = swift_task_alloc();
  v0[37] = v27;
  *v27 = v0;
  v27[1] = sub_1DF4B3640;

  return sub_1DF494944((v0 + 2));
}

uint64_t sub_1DF4B3640()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1DF4B3A00;
  }

  else
  {
    v2 = sub_1DF4B3754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4B3754()
{
  sub_1DF47E4CC(*(v0 + 224) + 160, v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 304);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 128), v1);
    sub_1DF4AD7D8(*(v0 + 32), *v3, v3[1], v3[2], v3[3]);
    if (v2)
    {
      v4 = *(v0 + 288);
      sub_1DF4B98C8(v0 + 16);
      sub_1DF499628(v4, type metadata accessor for NetworkRequest);
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  else
  {
    sub_1DF47E5B4(v0 + 128, &qword_1ECE37B00, &qword_1DF567DA8);
    v2 = *(v0 + 304);
  }

  sub_1DF4B8394(*(v0 + 32));
  if (!v2)
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 232);
    sub_1DF564144();
    swift_allocObject();
    sub_1DF564134();
    (*(v7 + 104))(v6, *MEMORY[0x1E6967F30], v8);
    sub_1DF564114();
    sub_1DF4BB290();
    sub_1DF564124();
    v9 = *(v0 + 288);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);

    sub_1DF499628(v9, type metadata accessor for NetworkRequest);
    v13 = *(v0 + 184);
    *v11 = *(v0 + 168);
    v11[1] = v13;
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 72);
    LOBYTE(v6) = *(v0 + 80);

    sub_1DF4B98C8(v0 + 16);

    *v12 = v15;
    *(v12 + 8) = v14;
    *(v12 + 16) = v17;
    *(v12 + 24) = v16;
    *(v12 + 32) = v18;
    *(v12 + 40) = v6;
    v19 = *(v0 + 8);
    goto LABEL_10;
  }

  v5 = *(v0 + 288);
  sub_1DF4B98C8(v0 + 16);
  sub_1DF499628(v5, type metadata accessor for NetworkRequest);
LABEL_9:

  v19 = *(v0 + 8);
LABEL_10:

  return v19();
}

uint64_t sub_1DF4B3A00()
{
  sub_1DF499628(*(v0 + 288), type metadata accessor for NetworkRequest);

  v1 = *(v0 + 8);

  return v1();
}

id sub_1DF4B3AC0()
{
  v1 = type metadata accessor for InternalError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DF4BB338(v0, v3, type metadata accessor for InternalError);
  sub_1DF4BB5F0(&qword_1ECE37B18, type metadata accessor for InternalError, &unk_1DF56B320);
  v4 = sub_1DF5650B4();
  if (v4)
  {
    v5 = v4;
    sub_1DF499628(v3, type metadata accessor for InternalError);
  }

  else
  {
    v5 = swift_allocError();
    sub_1DF4BB3A0(v3, v6, type metadata accessor for InternalError);
  }

  v7 = sub_1DF5642E4();

  v8 = [v7 domain];
  if (!v8)
  {
    sub_1DF564944();
    v8 = sub_1DF564914();
  }

  v9 = [v7 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v11;
  v12 = [v7 localizedDescription];
  v13 = sub_1DF564944();
  v15 = v14;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  sub_1DF49A758(inited);
  swift_setDeallocating();
  sub_1DF47E5B4(inited + 32, &qword_1ECE378E8, &unk_1DF5673D0);
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1DF564864();

  v18 = [v16 initWithDomain:v8 code:v9 userInfo:v17];

  return v18;
}

id sub_1DF4B3DAC(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  a2();
  v3 = sub_1DF5650B4();
  if (!v3)
  {
    v3 = swift_allocError();
    *v4 = a1;
  }

  v5 = v3;
  v6 = sub_1DF5642E4();

  v7 = [v6 domain];
  if (!v7)
  {
    sub_1DF564944();
    v7 = sub_1DF564914();
  }

  v8 = [v6 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v10;
  v11 = [v6 localizedDescription];
  v12 = sub_1DF564944();
  v14 = v13;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  sub_1DF49A758(inited);
  swift_setDeallocating();
  sub_1DF47E5B4(inited + 32, &qword_1ECE378E8, &unk_1DF5673D0);
  v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v16 = sub_1DF564864();

  v17 = [v15 initWithDomain:v7 code:v8 userInfo:v16];

  return v17;
}

uint64_t sub_1DF4B3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a8;
  v8[46] = v10;
  v8[43] = a6;
  v8[44] = a7;
  v8[41] = a4;
  v8[42] = a5;
  v8[39] = a2;
  v8[40] = a3;
  v8[38] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B3FE0, 0, 0);
}

uint64_t sub_1DF4B3FE0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v12 = *(v0 + 328);
  v13 = *(v0 + 360);
  sub_1DF47FCEC(*(v0 + 304), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 376) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B41E8;

  return sub_1DF4AE574(v0 + 256, v0 + 297, 2);
}

uint64_t sub_1DF4B41E8()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1DF4B43A4;
  }

  else
  {

    v2 = sub_1DF4B433C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4B433C()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 297);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF4B43A4()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DF4B440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = v10;
  v8[52] = v11;
  v8[49] = a7;
  v8[50] = a8;
  v8[47] = a5;
  v8[48] = a6;
  v8[45] = a3;
  v8[46] = a4;
  v8[43] = a1;
  v8[44] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B4444, 0, 0);
}

uint64_t sub_1DF4B4444()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v12 = *(v0 + 376);
  v13 = *(v0 + 408);
  sub_1DF47FCEC(*(v0 + 352), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 424) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B464C;

  return sub_1DF4AF020(v0 + 256, v0 + 304, 2);
}

uint64_t sub_1DF4B464C()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1DF4B4824;
  }

  else
  {

    v2 = sub_1DF4B47A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4B47A0()
{
  v1 = *(v0 + 344);
  sub_1DF49A9F0(v0 + 16);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  *v1 = *(v0 + 304);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF4B4824()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4B4888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a8;
  v8[47] = v10;
  v8[44] = a6;
  v8[45] = a7;
  v8[42] = a4;
  v8[43] = a5;
  v8[40] = a2;
  v8[41] = a3;
  v8[39] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B48C0, 0, 0);
}

uint64_t sub_1DF4B48C0()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v12 = *(v0 + 336);
  v13 = *(v0 + 368);
  sub_1DF47FCEC(*(v0 + 312), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B4AC4;

  return sub_1DF4AFACC(v0 + 256, v0 + 304, 2);
}

uint64_t sub_1DF4B4AC4()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1DF49A6F4;
  }

  else
  {

    v2 = sub_1DF4B4C18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4B4C18()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 304);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF4B4C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[49] = a8;
  v8[50] = v10;
  v8[47] = a6;
  v8[48] = a7;
  v8[45] = a4;
  v8[46] = a5;
  v8[43] = a2;
  v8[44] = a3;
  v8[42] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B4CB8, 0, 0);
}

uint64_t sub_1DF4B4CB8()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v12 = *(v0 + 360);
  v13 = *(v0 + 392);
  sub_1DF47FCEC(*(v0 + 336), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v12;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v13;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 408) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B4EC0;

  return sub_1DF4B0568(v0 + 256, v0 + 304, 2);
}

uint64_t sub_1DF4B4EC0()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1DF4B5080;
  }

  else
  {

    v2 = sub_1DF4B5014;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF4B5014()
{
  sub_1DF49A9F0((v0 + 2));
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

uint64_t sub_1DF4B5080()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4B50E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 384) = v11;
  *(v8 + 368) = v10;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 320) = a3;
  *(v8 + 328) = a4;
  *(v8 + 304) = a1;
  *(v8 + 312) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B5124, 0, 0);
}

uint64_t sub_1DF4B5124()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v13 = *(v0 + 344);
  v14 = *(v0 + 376);
  sub_1DF47FCEC(*(v0 + 320), v0 + 16);
  *(v0 + 160) = &type metadata for RetryAfterPreProcessor;
  *(v0 + 168) = &off_1F5A871B8;
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v13;
  *(v0 + 200) = &type metadata for RetryAfterPostProcessor;
  *(v0 + 208) = &off_1F5A87108;
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v14;
  v7 = objc_opt_self();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v8 = [v7 sharedSessionWithNoUrlCache];
  v9 = [v8 urlSession];

  *(v0 + 80) = sub_1DF4B987C();
  *(v0 + 88) = &off_1F5A86F88;
  *(v0 + 56) = v9;
  *(v0 + 120) = &type metadata for AlwaysAuthorized;
  *(v0 + 128) = &off_1F5A877E0;
  *(v0 + 240) = &type metadata for DefaultGatewayResponseValidator;
  *(v0 + 248) = &off_1F5A87078;
  v10 = swift_task_alloc();
  *(v0 + 392) = v10;
  *v10 = v0;
  v10[1] = sub_1DF4B532C;
  v11 = *(v0 + 312);

  return sub_1DF4ADBB8(v0 + 256, v11, 2);
}

uint64_t sub_1DF4B532C()
{
  v2 = *v1;
  v3 = *v1;
  v3[50] = v0;
  v3[51] = v2[32];
  v3[52] = v2[33];
  *(v3 + 53) = *(v3 + 17);
  v3[55] = v2[36];
  *(v3 + 297) = *(v3 + 296);

  if (v0)
  {
    v4 = sub_1DF4B5538;
  }

  else
  {
    v4 = sub_1DF4B549C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF4B549C()
{
  v1 = *(v0 + 297);
  v2 = *(v0 + 440);
  v6 = *(v0 + 408);
  v7 = *(v0 + 424);
  v3 = *(v0 + 304);
  sub_1DF49A9F0(v0 + 16);
  *v3 = v6;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF4B5538()
{
  sub_1DF49A9F0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4B559C()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ExcessiveRequestDetector(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for DefaultsRecentRequestFetcher;
  v12[4] = &off_1F5A8CED0;
  sub_1DF564474();
  v11[3] = &type metadata for TapToRadarPoster;
  v11[4] = &protocol witness table for TapToRadarPoster;
  sub_1DF47FCEC(v12, v7);
  (*(v1 + 16))(&v7[v5[7]], v3, v0);
  *&v7[v5[8]] = 20;
  sub_1DF47FCEC(v11, &v7[v5[9]]);
  v8 = &v7[v5[10]];
  *v8 = sub_1DF47FD50;
  v8[1] = 0;
  has_internal_ui = os_variant_has_internal_ui();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v7[v5[11]] = has_internal_ui;
  sub_1DF5574A0();
  return sub_1DF499628(v7, type metadata accessor for ExcessiveRequestDetector);
}

void sub_1DF4B578C(unsigned __int8 a1)
{
  v1 = sub_1DF564104();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1DF564914();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {

    v8 = sub_1DF564914();

    v9 = [v7 dataForKey_];

    if (v9)
    {
      v10 = sub_1DF564374();
      v12 = v11;

      sub_1DF564144();
      swift_allocObject();
      sub_1DF564134();
      (*(v2 + 104))(v4, *MEMORY[0x1E6967F30], v1);
      sub_1DF564114();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B40, &qword_1DF567E88);
      sub_1DF4BB53C();
      sub_1DF564124();

      sub_1DF48C308(v10, v12);
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED9550D8);
    v14 = sub_1DF564794();
    v15 = sub_1DF564C34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DF47C000, v14, v15, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v16, 2u);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }
}

void sub_1DF4B5BBC(void *a2@<X8>)
{
  v4 = sub_1DF564104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = sub_1DF564914();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {

    v11 = sub_1DF564914();

    v12 = [v10 dataForKey_];

    if (v12)
    {
      v23 = a2;
      v13 = sub_1DF564374();
      v15 = v14;

      sub_1DF564144();
      swift_allocObject();
      sub_1DF564134();
      (*(v5 + 104))(v7, *MEMORY[0x1E6967F30], v4);
      sub_1DF564114();
      sub_1DF4B9780();
      sub_1DF564124();

      sub_1DF48C308(v13, v15);

      if (!v2)
      {
        *v23 = v24;
      }
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED9550D8);
    v17 = sub_1DF564794();
    v18 = sub_1DF564C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DF47C000, v17, v18, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v19, 2u);
      MEMORY[0x1E12D75F0](v19, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }
}

void sub_1DF4B5FF8(uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, void (*a5)(void)@<X4>, void *a6@<X8>)
{
  v30 = a3;
  v31 = a5;
  v28 = a6;
  v29 = a4;
  v7 = sub_1DF564104();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = sub_1DF564914();
  v13 = [v11 initWithSuiteName_];

  if (v13)
  {

    v14 = sub_1DF564914();

    v15 = [v13 dataForKey_];

    if (v15)
    {
      v16 = sub_1DF564374();
      v18 = v17;

      sub_1DF564144();
      swift_allocObject();
      sub_1DF564134();
      (*(v8 + 104))(v10, *MEMORY[0x1E6967F30], v7);
      sub_1DF564114();
      v19 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, v30);
      sub_1DF4B9AA4(v29, a2, v19, v31);
      v20 = v32;
      sub_1DF564124();

      sub_1DF48C308(v16, v18);

      if (!v20)
      {
        *v28 = v33;
      }
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v26 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED9550D8);
    v22 = sub_1DF564794();
    v23 = sub_1DF564C34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DF47C000, v22, v23, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v24, 2u);
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }
}

char *sub_1DF4B6410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DF4B656C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B58, &qword_1DF567EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37B60, &unk_1DF567EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DF4B66A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B48, &qword_1DF567E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B50, &qword_1DF567E98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DF4B680C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_1DF4B69E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38470, &qword_1DF56CF60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DF4B6AF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A98, &qword_1DF567A40);
      v7 = *(type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1DF4B6CC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1DF4B6E64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DF565094();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
        v6 = sub_1DF564AD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DF4B71F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DF4B6F90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF4B6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1DF4BB338(v23, v17, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      sub_1DF4BB338(v20, v13, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v24 = sub_1DF564404();
      sub_1DF499628(v13, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      result = sub_1DF499628(v17, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1DF4BB3A0(v23, v35, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DF4BB3A0(v25, v20, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4B71F4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1DF4B8128(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1DF4B7B58(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1DF4B8128(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1DF4B809C(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1DF4BB338(v110 + v24 * v23, v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1DF4BB338(v26, v116, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      LODWORD(v111) = sub_1DF564404();
      sub_1DF499628(v28, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      result = sub_1DF499628(v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1DF4BB338(v30, v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v31 = v116;
        sub_1DF4BB338(v5, v116, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v32 = sub_1DF564404() & 1;
        sub_1DF499628(v31, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        result = sub_1DF499628(v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_1DF4BB3A0(v39 + v38, v107, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1DF4BB3A0(v107, v39 + v33, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_1DF4A9F30(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1DF4A9F30((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
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

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1DF4B7B58(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1DF4B8128(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_1DF4B809C(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1DF4BB338(v5, v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v93 = v116;
    sub_1DF4BB338(v90, v116, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    a4 = sub_1DF564404();
    sub_1DF499628(v93, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    result = sub_1DF499628(v18, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent;
    v94 = v115;
    sub_1DF4BB3A0(v5, v115, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF4BB3A0(v94, v90, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
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
  return result;
}

uint64_t sub_1DF4B7B58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1DF4BB338(v30, v43, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          v32 = v44;
          sub_1DF4BB338(v27, v44, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          v33 = sub_1DF564404();
          sub_1DF499628(v32, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          sub_1DF499628(v31, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1DF4BB338(a2, v43, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v21 = v44;
        sub_1DF4BB338(a4, v44, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        v22 = sub_1DF564404();
        sub_1DF499628(v21, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        sub_1DF499628(v20, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_1DF4B8154(&v48, &v47, &v46, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
  return 1;
}

uint64_t sub_1DF4B809C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF4B8128(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DF4B8154(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_1DF4B823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1DF564DE4();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

char *sub_1DF4B8394(void *a1)
{
  v2 = sub_1DF564494();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  result = [a1 statusCode];
  if ((result - 204) < 0xFFFFFFFFFFFFFFFCLL)
  {
    if (result == 460)
    {
      v10 = sub_1DF564914();
      v11 = [a1 valueForHTTPHeaderField_];

      if (v11)
      {
        if (qword_1ECE37868 != -1)
        {
          swift_once();
        }

        v12 = [qword_1ECE422C0 dateFromString_];

        if (v12)
        {
          sub_1DF564464();

          (*(v3 + 32))(v8, v6, v2);
          type metadata accessor for InternalError(0);
          sub_1DF4BB5F0(&qword_1ECE37B18, type metadata accessor for InternalError, &unk_1DF56B320);
          swift_allocError();
          (*(v3 + 16))(v13, v8, v2);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return (*(v3 + 8))(v8, v2);
        }
      }

      sub_1DF4B3DAC(8, sub_1DF498474, &type metadata for LocalError);
    }

    else if (result == 204)
    {
      type metadata accessor for InternalError(0);
      sub_1DF4BB5F0(&qword_1ECE37B18, type metadata accessor for InternalError, &unk_1DF56B320);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      ServerError.init(rawValue:)([a1 statusCode]);
      v14 = v19;
      if (v19 == 7)
      {
        v15 = [a1 statusCode];
        sub_1DF4B9A50();
        swift_allocError();
        *v16 = v15;
      }

      else
      {
        sub_1DF4B972C();
        swift_allocError();
        *v17 = v14;
      }
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF4B8748(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic(0);
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v5 = sub_1DF564494();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v6 = sub_1DF5644C4();
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4B8934, 0, 0);
}

void sub_1DF4B8934(uint64_t a1)
{
  v3 = v1[46];
  v2 = v1[47];
  v4 = v1[45];
  v6 = v1[32];
  v5 = v1[33];
  sub_1DF5644B4();
  v7 = sub_1DF5644A4();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  v11 = sub_1DF488298(8, v7, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1E12D6280](v11, v13, v15, v17);
  v20 = v19;

  v1[48] = v18;
  v1[49] = v20;
  sub_1DF564484();
  sub_1DF55C880(v18, v20);
  sub_1DF4B9704(v6, v5);
  sub_1DF4E20B4(v6, v5, sub_1DF47FD50);
  sub_1DF4B9718(v6, v5);
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v22 = v1[32];
  v21 = v1[33];
  v1[50] = qword_1ED954B20;
  sub_1DF559EC4();
  v1[51] = v23;
  v1[22] = &type metadata for GatewayRequest;
  v1[23] = &off_1F5A87910;
  v24 = swift_allocObject();
  v1[19] = v24;
  *(v24 + 16) = v22;
  *(v24 + 24) = v21;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 1;

  sub_1DF4B9704(v22, v21);

  v25 = swift_task_alloc();
  v1[52] = v25;
  *v25 = v1;
  v25[1] = sub_1DF4B8BBC;

  JUMPOUT(0x1DF4B50E4);
}

uint64_t sub_1DF4B8BBC()
{
  v2 = *v1;
  v3 = *v1;
  v3[53] = v0;
  v3[54] = v2[8];
  v3[55] = v2[9];
  *(v3 + 28) = *(v3 + 5);
  v3[58] = v2[12];
  *(v3 + 106) = *(v3 + 104);

  if (v0)
  {

    v4 = sub_1DF4B93A4;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v3 + 19);
    v4 = sub_1DF4B8D58;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF4B8D58()
{
  v65 = v0;
  v1 = *(v0 + 240);
  if (v1 >> 62)
  {
    v2 = sub_1DF564F04();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v1;
  if (v2)
  {
    v63[0] = MEMORY[0x1E69E7CC0];
    v3 = (v2 & ~(v2 >> 63));

    sub_1DF4BCE50(0, v3, 0);
    if (v2 < 0)
    {
      __break(1u);
LABEL_29:
      sub_1DF4B6CC0(v3, v2, v4 - 100, (2 * v4) | 1, &qword_1ECE37A88, &unk_1DF567A30, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v49 = v48;

      v3 = v49;
      goto LABEL_24;
    }

    v5 = 0;
    v6 = *(v0 + 312);
    v56 = *(v0 + 304);
    v58 = *(v0 + 320);
    v7 = v1;
    v54 = v1 & 0xC000000000000001;
    v8 = v63[0];
    v60 = v2;
    do
    {
      if (v54)
      {
        v9 = MEMORY[0x1E12D66D0](v5, v7);
      }

      else
      {
        v9 = *(v7 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = *(v0 + 320);
      v12 = *&v9[OBJC_IVAR___CloudFeature_featureID];
      v13 = *&v9[OBJC_IVAR___CloudFeature_featureID + 8];
      v14 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      LOBYTE(v14) = v10[v14];
      v15 = OBJC_IVAR___CloudFeature_ttl;
      swift_beginAccess();
      sub_1DF47E4CC(&v10[v15], v11 + *(v56 + 24), &qword_1ECE37A10, &qword_1DF567C00);

      *v11 = v12;
      *(v58 + 8) = v13;
      *(v58 + 16) = v14;
      v63[0] = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DF4BCE50((v16 > 1), v17 + 1, 1);
        v8 = v63[0];
      }

      v18 = *(v0 + 320);
      ++v5;
      *(v8 + 16) = v17 + 1;
      sub_1DF4BB3A0(v18, v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic);
      v7 = v62;
    }

    while (v60 != v5);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v0 + 424);
  sub_1DF564474();
  sub_1DF4B5FF8(&qword_1ECE37AE0, &qword_1DF567D78, &qword_1ECE374F0, sub_1DF4B9780, v63);
  if (v19)
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  else if (v63[0])
  {
    v20 = v63[0];
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v59 = *(v0 + 106);
  v57 = *(v0 + 464);
  v53 = *(v0 + 432);
  v55 = *(v0 + 448);
  v22 = *(v0 + 384);
  v21 = *(v0 + 392);
  v24 = *(v0 + 344);
  v23 = *(v0 + 352);
  v25 = *(v0 + 328);
  v26 = *(v0 + 336);
  v27 = *(v0 + 296);
  v61 = v0;
  v28 = *(v0 + 272);
  v29 = *(v26 + 16);
  v29(&v27[v28[5]], v23, v25);
  v29(&v27[v28[8]], v24, v25);
  *v27 = v22;
  *(v27 + 1) = v21;
  v30 = &v27[v28[6]];
  *v30 = v53;
  *(v30 + 1) = v55;
  *(v30 + 4) = v57;
  v30[40] = v59;
  *&v27[v28[7]] = v8;

  v3 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DF4AA034(0, v20[2] + 1, 1, v20);
  }

  v32 = v3[2];
  v31 = v3[3];
  v0 = v61;
  if (v32 >= v31 >> 1)
  {
    v3 = sub_1DF4AA034((v31 > 1), v32 + 1, 1, v3);
  }

  v33 = *(v61 + 296);
  v34 = *(v61 + 280);
  v3[2] = v32 + 1;
  v2 = v3 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  sub_1DF4BB3A0(v33, v2 + *(v34 + 72) * v32, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
  v63[0] = v2;
  v63[1] = v32 + 1;
  sub_1DF4B6E64(v63);
  v4 = v3[2];
  if (v4 >= 0x65)
  {
    goto LABEL_29;
  }

LABEL_24:
  v64[0] = 1;
  *(v0 + 40) = &type metadata for FeatureRequestFinishDiagnostic;
  *(v0 + 48) = sub_1DF4B9780();
  *(v0 + 56) = sub_1DF4B97D4();
  *(v0 + 16) = v3;
  sub_1DF55D5F0(v64, (v0 + 16));
  v35 = *(v0 + 106);
  v50 = *(v0 + 432);
  v51 = *(v0 + 448);
  v36 = *(v0 + 408);
  v37 = *(v0 + 344);
  v38 = *(v0 + 352);
  v52 = *(v0 + 464);
  v40 = *(v0 + 328);
  v39 = *(v0 + 336);
  v42 = *(v0 + 256);
  v41 = *(v0 + 264);

  v43 = *(v39 + 8);
  v43(v37, v40);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  LOBYTE(v63[0]) = v35;
  *(v0 + 136) = &type metadata for FeatureNetworkingFinishEvent;
  *(v0 + 144) = &off_1F5A8DC98;
  v44 = swift_allocObject();
  *(v0 + 112) = v44;
  *(v44 + 16) = v42;
  *(v44 + 24) = v41;
  *(v44 + 32) = v50;
  *(v44 + 48) = v51;
  *(v44 + 64) = v52;
  *(v44 + 72) = v63[0];
  *(v44 + 80) = v36;
  *(v44 + 88) = 0;
  v45 = __swift_project_boxed_opaque_existential_0((v0 + 112), &type metadata for FeatureNetworkingFinishEvent);
  sub_1DF4B9704(v42, v41);
  sub_1DF5636DC(v45, sub_1DF47FD50, 0, &type metadata for FeatureNetworkingFinishEvent, &off_1F5A8DC98);
  v43(v38, v40);
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_1DF4B559C();

  v46 = *(v0 + 8);

  return v46(v62);
}

uint64_t sub_1DF4B93A4()
{
  v1 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 105);
    v4 = qword_1DF568040[v3];
    v5 = *(v0 + 408);
    v6 = *(v0 + 336);
    v30 = *(v0 + 328);
    v31 = *(v0 + 352);
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    sub_1DF4B972C();
    v9 = swift_allocError();
    *v10 = v3;
    sub_1DF4B9704(v8, v7);
    v11 = sub_1DF5642E4();

    *(v0 + 136) = &type metadata for FeatureNetworkingFinishEvent;
    *(v0 + 144) = &off_1F5A8DC98;
    v12 = swift_allocObject();
    *(v0 + 112) = v12;
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
    *(v12 + 64) = v4;
    *(v12 + 72) = 0;
    *(v12 + 73) = *v32;
    *(v12 + 76) = *&v32[3];
    *(v12 + 80) = v5;
    *(v12 + 88) = v11;
    swift_allocError();
    *v13 = v3;
    swift_willThrow();

    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 112), v14);
    sub_1DF5636DC(v16, sub_1DF47FD50, 0, v14, v15);
    (*(v6 + 8))(v31, v30);
  }

  else
  {
    v17 = *(v0 + 408);
    v18 = *(v0 + 352);
    v19 = *(v0 + 328);
    v20 = *(v0 + 336);
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);

    sub_1DF4B9704(v22, v21);
    v23 = sub_1DF5642E4();
    *(v0 + 136) = &type metadata for FeatureNetworkingFinishEvent;
    *(v0 + 144) = &off_1F5A8DC98;
    v24 = swift_allocObject();
    *(v0 + 112) = v24;
    *(v24 + 16) = v22;
    *(v24 + 24) = v21;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0xE000000000000000;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0xE000000000000000;
    *(v24 + 64) = -1;
    *(v24 + 72) = 0;
    *(v24 + 80) = v17;
    *(v24 + 88) = v23;
    swift_willThrow();
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v27 = __swift_project_boxed_opaque_existential_0((v0 + 112), v25);
    sub_1DF5636DC(v27, sub_1DF47FD50, 0, v25, v26);
    (*(v20 + 8))(v18, v19);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_1DF4B559C();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1DF4B9704(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1DF4B9718(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1DF4B972C()
{
  result = qword_1ECE37778;
  if (!qword_1ECE37778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37778);
  }

  return result;
}

unint64_t sub_1DF4B9780()
{
  result = qword_1ECE374F8;
  if (!qword_1ECE374F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374F8);
  }

  return result;
}

unint64_t sub_1DF4B97D4()
{
  result = qword_1ECE37500;
  if (!qword_1ECE37500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37500);
  }

  return result;
}

unint64_t sub_1DF4B9828()
{
  result = qword_1ECE37AD8;
  if (!qword_1ECE37AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37AD8);
  }

  return result;
}

unint64_t sub_1DF4B987C()
{
  result = qword_1ED954670;
  if (!qword_1ED954670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED954670);
  }

  return result;
}

unint64_t sub_1DF4B991C()
{
  result = qword_1ED9546A8;
  if (!qword_1ED9546A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37B08, &unk_1DF567DB0);
    sub_1DF4BB5F0(&unk_1ED955110, type metadata accessor for CloudFeature, &protocol conformance descriptor for CloudFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546A8);
  }

  return result;
}

_BYTE *sub_1DF4B99D0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1DF4B9A50()
{
  result = qword_1ECE37B10;
  if (!qword_1ECE37B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37B10);
  }

  return result;
}

uint64_t sub_1DF4B9AA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF4B9B20()
{
  result = qword_1ECE37598;
  if (!qword_1ECE37598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37598);
  }

  return result;
}

void sub_1DF4B9B90()
{
  MEMORY[0x1E12D62C0](0xD000000000000012, 0x80000001DF5714F0);
  v0[7] = 0xEB000000002E7265;
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v0[8] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v1 = swift_allocObject();
  v0[2] = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 5;

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1DF4B9D44;

  JUMPOUT(0x1DF4B3FA8);
}

uint64_t sub_1DF4B9D44(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4B9EB4, 0, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_1DF4B9EB4()
{
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

unint64_t sub_1DF4B9F30()
{
  result = qword_1ED954930;
  if (!qword_1ED954930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954930);
  }

  return result;
}

uint64_t sub_1DF4B9F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4B9FA8, 0, 0);
}

void sub_1DF4B9FA8()
{
  v1 = v0[14];
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v0[15] = qword_1ED954B20;
  v0[10] = &type metadata for GatewayRequest;
  v0[11] = &off_1F5A87910;
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 2;

  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1DF4BA140;

  JUMPOUT(0x1DF4B440CLL);
}

uint64_t sub_1DF4BA140()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BA29C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 96);

    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    *(v3 + 32) = *(v2 + 48);
    *v3 = v4;
    *(v3 + 16) = v5;
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1DF4BA29C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4BA308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BA32C, 0, 0);
}

void sub_1DF4BA32C()
{
  v1 = v0[7];
  v2 = v0[8];
  strcpy(v10, "TicketStatus_");
  HIWORD(v10[1]) = -4864;

  MEMORY[0x1E12D62C0](v1, v2);
  v3 = v10[0];
  v4 = v10[1];
  strcpy(v10, "RetryAfter.");
  HIDWORD(v10[1]) = -352321536;
  MEMORY[0x1E12D62C0](v3, v4);

  v0[11] = v10[1];
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v0[12] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v8 = swift_allocObject();
  v0[2] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = 3;

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1DF4BA538;
  v12 = &off_1F5A86FD0;

  JUMPOUT(0x1DF4B4888);
}

uint64_t sub_1DF4BA538(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BA6A8, 0, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1DF4BA6A8()
{
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4BA720(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BA740, 0, 0);
}

void sub_1DF4BA740()
{
  v1 = v0[8];
  MEMORY[0x1E12D62C0](v0[7], v1);
  MEMORY[0x1E12D62C0](0x656B636954746547, 0xEA00000000005F74);

  v0[9] = 0xEB000000002E7265;
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v0[10] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v3 = swift_allocObject();
  v0[2] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 4;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1DF4BA92C;

  JUMPOUT(0x1DF4B4888);
}

uint64_t sub_1DF4BA92C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BAA9C, 0, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1DF4BAA9C()
{
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4BAB14(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BAB34, 0, 0);
}

void sub_1DF4BAB34()
{
  v1 = v0[8];
  MEMORY[0x1E12D62C0](v0[7], v1);
  MEMORY[0x1E12D62C0](0x656B636954746547, 0xEA00000000005F74);

  v0[9] = 0xEB000000002E7265;
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v0[10] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v3 = swift_allocObject();
  v0[2] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 4;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1DF4BAD20;

  JUMPOUT(0x1DF4B4C80);
}

uint64_t sub_1DF4BAD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;
  *(*v5 + 96) = v4;

  if (v4)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BAA9C, 0, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0((v10 + 16));
    v12 = *(v11 + 8);

    return v12(a1, a2, a3, a4);
  }
}

uint64_t sub_1DF4BAEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4BAEE4, 0, 0);
}

void sub_1DF4BAEE4()
{
  v1 = v0[7];
  v2 = v0[8];
  strcpy(v10, "TicketStatus_");
  HIWORD(v10[1]) = -4864;

  MEMORY[0x1E12D62C0](v1, v2);
  v3 = v10[0];
  v4 = v10[1];
  strcpy(v10, "RetryAfter.");
  HIDWORD(v10[1]) = -352321536;
  MEMORY[0x1E12D62C0](v3, v4);

  v0[11] = v10[1];
  if (qword_1ED954B18 != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v0[12] = qword_1ED954B20;
  v0[5] = &type metadata for GatewayRequest;
  v0[6] = &off_1F5A87910;
  v8 = swift_allocObject();
  v0[2] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = 3;

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1DF4BB0F0;
  v12 = &off_1F5A86FD0;

  JUMPOUT(0x1DF4B4C80);
}

uint64_t sub_1DF4BB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;
  *(*v5 + 112) = v4;

  if (v4)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4BA6A8, 0, 0);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0((v10 + 16));
    v12 = *(v11 + 8);

    return v12(a1, a2, a3, a4);
  }
}

unint64_t sub_1DF4BB290()
{
  result = qword_1ECE376E8;
  if (!qword_1ECE376E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376E8);
  }

  return result;
}

unint64_t sub_1DF4BB2E4()
{
  result = qword_1ECE37B28;
  if (!qword_1ECE37B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37B28);
  }

  return result;
}

uint64_t sub_1DF4BB338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF4BB3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DF4BB408()
{
  result = qword_1ECE376C8;
  if (!qword_1ECE376C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376C8);
  }

  return result;
}

unint64_t sub_1DF4BB45C()
{
  result = qword_1ED9546B0;
  if (!qword_1ED9546B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37B38, &qword_1DF567E80);
    sub_1DF4BB4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546B0);
  }

  return result;
}

unint64_t sub_1DF4BB4E8()
{
  result = qword_1ED954C28;
  if (!qword_1ED954C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C28);
  }

  return result;
}

unint64_t sub_1DF4BB53C()
{
  result = qword_1ED954778;
  if (!qword_1ED954778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37B40, &qword_1DF567E88);
    sub_1DF4BB5F0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954778);
  }

  return result;
}

uint64_t sub_1DF4BB5F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1DF4BB67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF4BB6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF4BB78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF4BB7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF4BB834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37BC0, &qword_1DF5682F0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BD46C();
  sub_1DF5652A4();
  LOBYTE(v17) = 0;
  sub_1DF565024();
  if (!v5)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    type metadata accessor for TicketStatus();
    sub_1DF4BCB98(&qword_1ECE37770, &protocol conformance descriptor for TicketStatus);
    sub_1DF565074();
    v17 = v11;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
    sub_1DF4BCBDC(&qword_1ECE37470, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DF565074();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1DF4BBA5C()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74656B636974;
  }
}

uint64_t sub_1DF4BBAB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF4BCEF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF4BBADC(uint64_t a1)
{
  v2 = sub_1DF4BD46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4BBB18(uint64_t a1)
{
  v2 = sub_1DF4BD46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF4BBB54@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF4BD008(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t WaitlistResult.ticket.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);

  return v1;
}

char *WaitlistResult.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for TicketStatus();
  v4 = sub_1DF564CB4();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_1DF4BC0E0();
  v6 = sub_1DF564CC4();
  if (!v6)
  {

LABEL_6:
    type metadata accessor for WaitlistResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v8 = sub_1DF564CB4();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1DF564944();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v14 = &v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
  *v14 = v10;
  v14[1] = v12;
  *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v5;
  if (!(v7 >> 62))
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_23:

    v17 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v17;
    v36.receiver = v2;
    v36.super_class = type metadata accessor for WaitlistResult();
    v33 = objc_msgSendSuper2(&v36, sel_init);

    return v33;
  }

  v15 = sub_1DF564F04();
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_10:
  v37 = MEMORY[0x1E69E7CC0];
  v16 = v5;
  result = sub_1DF4BCB24(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v34 = v16;
    v35 = v2;
    v17 = v37;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        MEMORY[0x1E12D66D0](v18, v7);
        v19 = sub_1DF564944();
        v21 = v20;
        swift_unknownObjectRelease();
        v37 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DF4BCB24((v22 > 1), v23 + 1, 1);
          v17 = v37;
        }

        ++v18;
        *(v17 + 16) = v23 + 1;
        v24 = v17 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v15 != v18);
    }

    else
    {
      v25 = v7 + 32;
      do
      {
        v26 = sub_1DF564944();
        v37 = v17;
        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        if (v29 >= v28 >> 1)
        {
          v31 = v26;
          v32 = v27;
          sub_1DF4BCB24((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v26 = v31;
          v17 = v37;
        }

        *(v17 + 16) = v29 + 1;
        v30 = v17 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        v25 += 8;
        --v15;
      }

      while (v15);
    }

    v2 = v35;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF4BC0E0()
{
  result = qword_1ED9560A0;
  if (!qword_1ED9560A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9560A0);
  }

  return result;
}

void sub_1DF4BC154(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8))
  {
    v3 = sub_1DF564914();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1DF564914();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
  v6 = sub_1DF564914();
  [a1 encodeObject:v5 forKey:v6];

  v7 = sub_1DF564A94();
  v8 = sub_1DF564914();
  [a1 encodeObject:v7 forKey:v8];
}

id WaitlistResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DF4BC390()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x4965727574616566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74656B636974;
  }
}

uint64_t sub_1DF4BC3E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF4BD2BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF4BC410(uint64_t a1)
{
  v2 = sub_1DF4BCB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4BC44C(uint64_t a1)
{
  v2 = sub_1DF4BCB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id WaitlistResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WaitlistResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF4BC51C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B90, &unk_1DF568080);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BCB44();
  sub_1DF5652A4();
  LOBYTE(v11) = 0;
  sub_1DF565024();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    HIBYTE(v10) = 1;
    type metadata accessor for TicketStatus();
    sub_1DF4BCB98(&qword_1ECE37770, &protocol conformance descriptor for TicketStatus);
    sub_1DF565074();
    v11 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
    sub_1DF4BCBDC(&qword_1ECE37470, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DF565074();
  }

  return (*(v6 + 8))(v8, v5);
}

char *WaitlistResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37B98, &qword_1DF568090);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BCB44();
  sub_1DF565284();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for WaitlistResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = sub_1DF564F84();
    v11 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
    *v11 = v9;
    v11[1] = v12;
    type metadata accessor for TicketStatus();
    v16 = 1;
    sub_1DF4BCB98(&qword_1ED954B30, &protocol conformance descriptor for TicketStatus);
    sub_1DF564FE4();
    *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
    v16 = 2;
    sub_1DF4BCBDC(&qword_1ED954678, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1DF564FE4();
    *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs) = v17;
    v13 = type metadata accessor for WaitlistResult();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

char *sub_1DF4BCAAC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WaitlistResult());
  result = WaitlistResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1DF4BCB24(char *a1, int64_t a2, char a3)
{
  result = sub_1DF4B6410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1DF4BCB44()
{
  result = qword_1ED954AF8;
  if (!qword_1ED954AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954AF8);
  }

  return result;
}

uint64_t sub_1DF4BCB98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TicketStatus();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF4BCBDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37A30, &qword_1DF5676D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF4BCD2C()
{
  result = qword_1ECE37BA8;
  if (!qword_1ECE37BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37BA8);
  }

  return result;
}

unint64_t sub_1DF4BCD84()
{
  result = qword_1ED954AE0;
  if (!qword_1ED954AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954AE0);
  }

  return result;
}

unint64_t sub_1DF4BCDDC()
{
  result = qword_1ED954AE8;
  if (!qword_1ED954AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954AE8);
  }

  return result;
}

void *sub_1DF4BCE30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF4B651C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF4BCE50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF4B6544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF4BCE70(void *a1, int64_t a2, char a3)
{
  result = sub_1DF4B656C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF4BCE90(void *a1, int64_t a2, char a3)
{
  result = sub_1DF4B66A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF4BCEB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF4B67E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF4BCED0(char *a1, int64_t a2, char a3)
{
  result = sub_1DF4B69E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF4BCEF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656B636974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF5716C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DF4BD008(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37BB0, &qword_1DF5682E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4BD46C();
  sub_1DF565284();
  LOBYTE(v10) = 0;
  v7 = sub_1DF564F84();
  type metadata accessor for TicketStatus();
  v9 = 1;
  sub_1DF4BCB98(&qword_1ED954B30, &protocol conformance descriptor for TicketStatus);
  sub_1DF564FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  v9 = 2;
  sub_1DF4BCBDC(&qword_1ED954678, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v8 = 0;
  sub_1DF564FE4();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1DF4BD2BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656B636974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4965727574616566 && a2 == 0xEA00000000007344)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DF4BD3D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF4BD41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF4BD46C()
{
  result = qword_1ECE37708;
  if (!qword_1ECE37708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37708);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Availability.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Availability.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF4BD614()
{
  result = qword_1ECE37BC8;
  if (!qword_1ECE37BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37BC8);
  }

  return result;
}

unint64_t sub_1DF4BD66C()
{
  result = qword_1ECE376F0;
  if (!qword_1ECE376F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376F0);
  }

  return result;
}

unint64_t sub_1DF4BD6C4()
{
  result = qword_1ECE376F8;
  if (!qword_1ECE376F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376F8);
  }

  return result;
}

uint64_t sub_1DF4BD73C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5265727574616566;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2)
    {
      v4 = 0xEE00747365757165;
    }

    else
    {
      v4 = 0x80000001DF570B60;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x74657373416D6661;
    v4 = 0xE900000000000073;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x74657373416D6461;
    }

    else
    {
      v3 = 0x656C655465726F63;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000073;
    }

    else
    {
      v4 = 0xED0000796E6F6870;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x5265727574616566;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v7 = 0xEE00747365757165;
    }

    else
    {
      v7 = 0x80000001DF570B60;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 2)
  {
    v5 = 0x74657373416D6661;
LABEL_29:
    v7 = 0xE900000000000073;
    if (v3 != v5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v5 = 0x74657373416D6461;
    goto LABEL_29;
  }

  v7 = 0xED0000796E6F6870;
  if (v3 != 0x656C655465726F63)
  {
LABEL_34:
    v8 = sub_1DF5650D4();
    goto LABEL_35;
  }

LABEL_32:
  if (v4 != v7)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_1DF4BD908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007965;
  v3 = 0x4B65727574616566;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C69546568636163;
    }

    else
    {
      v5 = 0x4B65727574616566;
    }

    if (v4)
    {
      v6 = 0xE90000000000006CLL;
    }

    else
    {
      v6 = 0xEA00000000007965;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x6573556E6163;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74696D696CLL;
    }

    else
    {
      v5 = 0x6F54737365636361;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB000000006E656BLL;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573556E6163;
  v9 = 0xE500000000000000;
  v10 = 0x74696D696CLL;
  if (a2 != 3)
  {
    v10 = 0x6F54737365636361;
    v9 = 0xEB000000006E656BLL;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6C69546568636163;
    v2 = 0xE90000000000006CLL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DF5650D4();
  }

  return v13 & 1;
}

uint64_t CloudFeature.featureID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CloudFeature_featureID);

  return v1;
}

uint64_t CloudFeature.canUse.getter()
{
  v1 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CloudFeature.accessToken.getter()
{
  v1 = (v0 + OBJC_IVAR___CloudFeature_accessToken);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CloudFeature.ttl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CloudFeature_ttl;
  swift_beginAccess();
  return sub_1DF47E4CC(v1 + v3, a1, &qword_1ECE37A10, &qword_1DF567C00);
}

id CloudFeature.__allocating_init(id:canUse:limit:accessToken:ttl:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_allocWithZone(v8);
  v15 = &v14[OBJC_IVAR___CloudFeature_limit];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v14[OBJC_IVAR___CloudFeature_accessToken];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___CloudFeature_ttl;
  v18 = sub_1DF564494();
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v14[OBJC_IVAR___CloudFeature_canUse] = a3;
  v19 = &v14[OBJC_IVAR___CloudFeature_featureID];
  *v19 = a1;
  v19[1] = a2;
  swift_beginAccess();
  *v15 = a4;
  v15[8] = a5 & 1;
  swift_beginAccess();
  *v16 = a6;
  v16[1] = a7;
  swift_beginAccess();
  sub_1DF4BEC40(a8, &v14[v17]);
  swift_endAccess();
  v25.receiver = v14;
  v25.super_class = v8;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  sub_1DF47E5B4(a8, &qword_1ECE37A10, &qword_1DF567C00);
  return v20;
}

id CloudFeature.init(id:canUse:limit:accessToken:ttl:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v15 = &v8[OBJC_IVAR___CloudFeature_limit];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v8[OBJC_IVAR___CloudFeature_accessToken];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___CloudFeature_ttl;
  v18 = sub_1DF564494();
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  v8[OBJC_IVAR___CloudFeature_canUse] = a3;
  v19 = &v8[OBJC_IVAR___CloudFeature_featureID];
  *v19 = a1;
  v19[1] = a2;
  swift_beginAccess();
  *v15 = a4;
  v15[8] = a5 & 1;
  swift_beginAccess();
  *v16 = a6;
  v16[1] = a7;
  swift_beginAccess();
  sub_1DF4BEC40(a8, &v8[v17]);
  swift_endAccess();
  v25.receiver = v8;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  sub_1DF47E5B4(a8, &qword_1ECE37A10, &qword_1DF567C00);
  return v20;
}

uint64_t sub_1DF4BE01C()
{
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF4BE108(uint64_t a1)
{
  sub_1DF5649E4();
}

uint64_t sub_1DF4BE1E0(uint64_t a1)
{
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

unint64_t sub_1DF4BE2C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF4BF2F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DF4BE2F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007965;
  v4 = 0x4B65727574616566;
  v5 = 0xE600000000000000;
  v6 = 0x6573556E6163;
  v7 = 0xE500000000000000;
  v8 = 0x74696D696CLL;
  if (v2 != 3)
  {
    v8 = 0x6F54737365636361;
    v7 = 0xEB000000006E656BLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69546568636163;
    v3 = 0xE90000000000006CLL;
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

unint64_t sub_1DF4BE3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF4BF2F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF4BE3D4(uint64_t a1)
{
  v2 = sub_1DF48C0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4BE410(uint64_t a1)
{
  v2 = sub_1DF48C0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudFeature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37C60, &unk_1DF568410);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF48C0D4();
  sub_1DF5652A4();
  v19 = 0;
  v11 = v15;
  sub_1DF565054();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  v18 = 2;
  sub_1DF565064();
  v13 = OBJC_IVAR___CloudFeature_ttl;
  swift_beginAccess();
  v15 = v2;
  sub_1DF47E4CC(v2 + v13, v6, &qword_1ECE37A10, &qword_1DF567C00);
  v17 = 1;
  sub_1DF4BECF8();
  sub_1DF565074();
  sub_1DF47E5B4(v6, &qword_1ECE37A10, &qword_1DF567C00);
  swift_beginAccess();
  v16 = 3;
  sub_1DF565034();
  swift_beginAccess();
  v20 = 4;

  sub_1DF565024();
  (*(v8 + 8))(v10, v7);
}

uint64_t CloudFeature.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1DF47E4CC(a1, v7, &qword_1ECE378F0, &qword_1DF5686F0);
  if (!v8)
  {
    sub_1DF47E5B4(v7, &qword_1ECE378F0, &qword_1DF5686F0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___CloudFeature_featureID) == *&v6[OBJC_IVAR___CloudFeature_featureID] && *(v1 + OBJC_IVAR___CloudFeature_featureID + 8) == *&v6[OBJC_IVAR___CloudFeature_featureID + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1DF5650D4();
  }

  return v4 & 1;
}

id CloudFeature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CloudFeature.status.getter()
{
  v1 = *(v0 + OBJC_IVAR___CloudFeature_featureID);
  v2 = *(v0 + OBJC_IVAR___CloudFeature_featureID + 8);
  v3 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = v0 + OBJC_IVAR___CloudFeature_limit;
  swift_beginAccess();
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = 2;
  }

  if (v4)
  {
    v7 = *(v5 + 8) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (qword_1ED955E70 != -1)
    {
      swift_once();
    }

    return sub_1DF4BEB48(v1, v2, qword_1ED955E80) & 1;
  }

  return result;
}

uint64_t _s25CloudSubscriptionFeatures0A7FeatureC5limitSiSgvg_0()
{
  v1 = v0 + OBJC_IVAR___CloudFeature_limit;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1DF4BEB08()
{
  v0 = sub_1DF552A0C(&unk_1F5A88468);
  result = sub_1DF4BF4C8(&unk_1F5A88488);
  qword_1ED955E80 = v0;
  return result;
}

uint64_t sub_1DF4BEB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DF565234();
  sub_1DF5649E4();
  v6 = sub_1DF565264();
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
    if (v11 || (sub_1DF5650D4() & 1) != 0)
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

uint64_t sub_1DF4BEC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4BECB0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1DF4BECF8()
{
  result = qword_1ED954C98;
  if (!qword_1ED954C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF48C1CC(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C98);
  }

  return result;
}

uint64_t FeatureStatus.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C62616C69617641;
    }

    if (a1 == 1)
    {
      return 0x6574696D696C6E55;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x616C696176616E55;
      case 3:
        return 0xD000000000000016;
      case 4:
        return 0x656E696665646E55;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1DF4BEF84()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6C62616C69617641;
    }

    if (v1 == 1)
    {
      return 0x6574696D696C6E55;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x616C696176616E55;
      case 3:
        return 0xD000000000000016;
      case 4:
        return 0x656E696665646E55;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1DF4BF050(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12D66D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = *&v4[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v4[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
      if (v7 || (sub_1DF5650D4() & 1) != 0)
      {
        v8 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        v9 = v5[v8];

        return v9;
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t sub_1DF4BF1A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12D66D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = *&v4[OBJC_IVAR___CloudFeature_featureID] == 0xD000000000000018 && 0x80000001DF5707C0 == *&v4[OBJC_IVAR___CloudFeature_featureID + 8];
      if (v7 || (sub_1DF5650D4() & 1) != 0)
      {
        v8 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        v9 = v5[v8];

        return v9;
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

unint64_t sub_1DF4BF2F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DF564F54();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DF4BF3C4()
{
  result = qword_1ECE37C70;
  if (!qword_1ECE37C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37C70);
  }

  return result;
}

unint64_t sub_1DF4BF41C()
{
  result = qword_1ED9558E8;
  if (!qword_1ED9558E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9558E8);
  }

  return result;
}

unint64_t sub_1DF4BF474()
{
  result = qword_1ED9558F0;
  if (!qword_1ED9558F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9558F0);
  }

  return result;
}

uint64_t sub_1DF4BF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DF47E4CC(a3, v25 - v10, &unk_1ECE383B0, &qword_1DF568C10);
  v12 = sub_1DF564B44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF47E5B4(v11, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DF564B04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DF5649B4() + 32;
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

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

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

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
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

uint64_t sub_1DF4BF824()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v1);
  v3 = (*(v2 + 80))(0xD000000000000029, 0x80000001DF570A10, v1, v2);
  if (v3 && (v4 = aOptedInBuddy[0], v5 = aOptedInBuddy[1], , v6 = sub_1DF480420(v4, v5), v8 = v7, , (v8 & 1) != 0))
  {
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1DF4C27BC();
    }

    sub_1DF49A88C((*(v3 + 56) + 32 * v6), &v15);
    sub_1DF4C260C(v6, v3);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  sub_1DF47E5B4(&v15, &qword_1ECE378F0, &qword_1DF5686F0);
  if (v3 && (v9 = qword_1F5A88560, v10 = unk_1F5A88568, , v11 = sub_1DF480420(v9, v10), v13 = v12, , (v13 & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DF4C27BC();
    }

    sub_1DF49A88C((*(v3 + 56) + 32 * v11), &v15);
    sub_1DF4C260C(v11, v3);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  sub_1DF47E5B4(&v15, &qword_1ECE378F0, &qword_1DF5686F0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1DF4BFA44()
{
  v1 = v0;
  if ((sub_1DF548FD8() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1ED9562B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9562C0;
  v3 = sub_1DF564914();
  LOBYTE(v2) = [v2 BOOLForKey_];

  if (v2)
  {
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF5647B4();
    __swift_project_value_buffer(v4, qword_1ED956048);
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF47C000, v5, v6, "GMBypass is enabled for opt-in, returning true", v7, 2u);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    v8 = 1;
  }

  else
  {
LABEL_10:
    v9 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults);
    v10 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
    __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24));
    v11 = sub_1DF4C33D8();
    (*(v10 + 48))(v20, v11);

    v12 = v20[3];
    sub_1DF47E5B4(v20, &qword_1ECE378F0, &qword_1DF5686F0);
    if (v12)
    {
      v13 = v9[4];
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      v14 = sub_1DF4C33D8();
      v8 = (*(v13 + 40))(v14);

      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v15 = sub_1DF5647B4();
      __swift_project_value_buffer(v15, qword_1ED956048);
      v16 = sub_1DF564794();
      v17 = sub_1DF564C44();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v8 & 1;
        _os_log_impl(&dword_1DF47C000, v16, v17, "Fetched value for opt-in status: %{BOOL}d", v18, 8u);
        MEMORY[0x1E12D75F0](v18, -1, -1);
      }
    }

    else
    {
      v8 = sub_1DF4C0D6C();
    }
  }

  return v8 & 1;
}

void sub_1DF4BFD90(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v93 - v7;
  v9 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24];
  v10 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32];
  v94 = &v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults], v9);
  v11 = sub_1DF4C33D8();
  (*(v10 + 48))(v97, v11);

  v12 = v98;
  sub_1DF47E5B4(v97, &qword_1ECE378F0, &qword_1DF5686F0);
  if (!v12 && (a1 & 1) != 0)
  {
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956048);
    v14 = sub_1DF564794();
    v15 = sub_1DF564C44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DF47C000, v14, v15, "User is opting in, setting followup to true to prevent CFU from showing.", v16, 2u);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }

    if (_s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0())
    {
      sub_1DF564484();
      v17 = sub_1DF564494();
      (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
      sub_1DF529F68(v8);
    }
  }

  v97[0] = MEMORY[0x1E69E7CC0];
  sub_1DF4BCE70(0, 3, 0);
  v18 = v97[0];
  v19 = sub_1DF5649A4();
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  if (v22 >= v21 >> 1)
  {
    v84 = v12;
    v85 = v19;
    v86 = v20;
    sub_1DF4BCE70((v21 > 1), v22 + 1, 1);
    v20 = v86;
    v19 = v85;
    v12 = v84;
    v18 = v97[0];
  }

  *(v18 + 16) = v22 + 1;
  v23 = v18 + 16 * v22;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  v24 = sub_1DF5649A4();
  v27 = *(v18 + 16);
  v26 = *(v18 + 24);
  if (v27 >= v26 >> 1)
  {
    v87 = v24;
    v88 = v12;
    v89 = v25;
    sub_1DF4BCE70((v26 > 1), v27 + 1, 1);
    v25 = v89;
    v12 = v88;
    v24 = v87;
    v18 = v97[0];
  }

  *(v18 + 16) = v27 + 1;
  v28 = v18 + 16 * v27;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  v29 = sub_1DF5649A4();
  v32 = *(v18 + 16);
  v31 = *(v18 + 24);
  if (v32 >= v31 >> 1)
  {
    v90 = v29;
    v91 = v12;
    v92 = v30;
    sub_1DF4BCE70((v31 > 1), v32 + 1, 1);
    v30 = v92;
    v12 = v91;
    v29 = v90;
  }

  v33 = v97[0];
  *(v97[0] + 16) = v32 + 1;
  v34 = v33 + 16 * v32;
  *(v34 + 32) = v29;
  *(v34 + 40) = v30;
  swift_arrayDestroy();
  v36 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  v35 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier + 8];
  if (v35)
  {
    v37 = sub_1DF5649A4();
    v39 = v38;
  }

  else
  {
    v39 = 0;
    v37 = *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  }

  v97[0] = v37;
  v97[1] = v39;
  MEMORY[0x1EEE9AC00](v37);
  v93[-2] = v97;
  v96 = sub_1DF4C1F84(sub_1DF4C35D8, &v93[-4], v33);

  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v40 = sub_1DF5647B4();
  v41 = __swift_project_value_buffer(v40, qword_1ED956048);
  v42 = v2;
  v43 = sub_1DF564794();
  v44 = sub_1DF564C44();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v97[0] = v46;
    *v45 = 67109634;
    *(v45 + 4) = a1 & 1;
    *(v45 + 8) = 2080;
    if (!v35)
    {
      v36 = 0;
    }

    v93[1] = v41;
    if (v35)
    {
      v47 = v35;
    }

    else
    {
      v47 = 0xE000000000000000;
    }

    v48 = sub_1DF47EF6C(v36, v47, v97);

    *(v45 + 10) = v48;
    *(v45 + 18) = 2080;
    v49 = v96;
    if (v96)
    {
      v50 = 0x7542206D6F726620;
    }

    else
    {
      v50 = 0x6D6F726620746F6ELL;
    }

    if (v96)
    {
      v51 = 0xEB00000000796464;
    }

    else
    {
      v51 = 0xEE00796464756220;
    }

    v52 = sub_1DF47EF6C(v50, v51, v97);

    *(v45 + 20) = v52;
    _os_log_impl(&dword_1DF47C000, v43, v44, "Setting GMOptIn.isOptedIn to %{BOOL}d from %s %s", v45, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v46, -1, -1);
    MEMORY[0x1E12D75F0](v45, -1, -1);

    if ((v49 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if ((v96 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  if (a1)
  {
    sub_1DF4C1234(0x6E695F646574706FLL, 0xEE0079646475625FLL, 1);
    if (!v12)
    {
      sub_1DF4C1234(0x74706F5F6F747561, 0xEB000000006E695FLL, 1);
      v53 = sub_1DF481988();
      v54 = [v53 aa_primaryAppleAccount];

      if (!v54 || (v55 = [v54 aa_personID], v54, !v55))
      {
        v75 = sub_1DF564794();
        v76 = sub_1DF564C44();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_1DF47C000, v75, v76, "Sending distributed notification on auto opt-in change.", v77, 2u);
          MEMORY[0x1E12D75F0](v77, -1, -1);
        }

        sub_1DF4FB95C();
        v78 = sub_1DF564794();
        v79 = sub_1DF564C44();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_1DF47C000, v78, v79, "Updating GMS on auto opt-in status.", v80, 2u);
          MEMORY[0x1E12D75F0](v80, -1, -1);
        }

        v81 = sub_1DF564B44();
        v82 = v95;
        (*(*(v81 - 8) + 56))(v95, 1, 1, v81);
        v68 = swift_allocObject();
        *(v68 + 16) = 0;
        *(v68 + 24) = 0;
        *(v68 + 32) = v42;
        *(v68 + 40) = 1;
        v83 = v42;
        v70 = &unk_1DF568710;
        v71 = v82;
        goto LABEL_47;
      }

      v56 = sub_1DF564794();
      v57 = sub_1DF564C44();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1DF47C000, v56, v57, "Opted in via buddy but device is signed in, skipping extra notification update.", v58, 2u);
        MEMORY[0x1E12D75F0](v58, -1, -1);
      }
    }
  }

  else
  {
    sub_1DF4C1234(0x756F5F646574706FLL, 0xEF79646475625F74, 1);
  }

LABEL_43:
  if ((sub_1DF4BFA44() & 1) != (a1 & 1))
  {
    v59 = *(v94 + 3);
    v60 = *(v94 + 4);
    __swift_project_boxed_opaque_existential_0(v94, v59);
    v98 = MEMORY[0x1E69E6370];
    LOBYTE(v97[0]) = a1 & 1;
    v61 = sub_1DF4C33D8();
    (*(v60 + 56))(v97, v61, v62, v59, v60);

    sub_1DF47E5B4(v97, &qword_1ECE378F0, &qword_1DF5686F0);
    v63 = sub_1DF564794();
    v64 = sub_1DF564C44();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 67109120;
      *(v65 + 4) = a1 & 1;
      _os_log_impl(&dword_1DF47C000, v63, v64, "Set new value for opt-in toggle %{BOOL}d, sending darwin notification.", v65, 8u);
      MEMORY[0x1E12D75F0](v65, -1, -1);
    }

    sub_1DF4FB95C();
    v66 = sub_1DF564B44();
    v67 = v95;
    (*(*(v66 - 8) + 56))(v95, 1, 1, v66);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    *(v68 + 32) = v42;
    *(v68 + 40) = a1 & 1;
    v69 = v42;
    v70 = &unk_1DF568700;
    v71 = v67;
LABEL_47:
    sub_1DF4BF520(0, 0, v71, v70, v68);

    return;
  }

  v72 = sub_1DF564794();
  v73 = sub_1DF564C44();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 67109120;
    *(v74 + 4) = a1 & 1;
    _os_log_impl(&dword_1DF47C000, v72, v73, "Attempted to set GMOptIn.isOptedIn to %{BOOL}d but it already has that value. Early returning.", v74, 8u);
    MEMORY[0x1E12D75F0](v74, -1, -1);
  }
}

uint64_t sub_1DF4C090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4C0930, 0, 0);
}

uint64_t sub_1DF4C0930()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DF4C09D4;
  v2 = *(v0 + 32);

  return sub_1DF4F5040(v2);
}

uint64_t sub_1DF4C09D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF4C0AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4C0AEC, 0, 0);
}

uint64_t sub_1DF4C0AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DF4C3EA4;
  v2 = *(v0 + 32);

  return sub_1DF4F5040(v2);
}

void (*sub_1DF4C0B90(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4BFA44() & 1;
  return sub_1DF4C0BDC;
}

unint64_t GMOptIn.State.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1DF4C0C18@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1DF4C0D34()
{
  if ((sub_1DF4C1694() & 1) == 0)
  {
    return 0;
  }

  if (sub_1DF4BFA44())
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1DF4C0D6C()
{
  v1 = v0;
  v2 = sub_1DF481988();
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = [v3 aa_personID];

    if (v4)
    {

      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v5 = sub_1DF5647B4();
      __swift_project_value_buffer(v5, qword_1ED956048);
      v6 = v1;
      v7 = sub_1DF564794();
      v8 = sub_1DF564C44();

      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_18;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = sub_1DF4C33D8();
      v13 = sub_1DF47EF6C(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF47C000, v7, v8, "No value for user opt-in key %s. Returning false.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      goto LABEL_17;
    }
  }

  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v14 = sub_1DF5647B4();
  __swift_project_value_buffer(v14, qword_1ED956048);
  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DF47C000, v15, v16, "Device has no DSID, checking if previous user has toggle enabled.", v17, 2u);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  v18 = sub_1DF4C1A84();
  v7 = sub_1DF564794();
  v19 = sub_1DF564C44();
  v20 = os_log_type_enabled(v7, v19);
  if ((v18 & 1) == 0)
  {
    if (!v20)
    {
LABEL_18:

      return 0;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DF47C000, v7, v19, "No previous user has opted-in. Returning false.", v9, 2u);
LABEL_17:
    MEMORY[0x1E12D75F0](v9, -1, -1);
    goto LABEL_18;
  }

  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DF47C000, v7, v19, "Previous user has opted-in. Returning true.", v21, 2u);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  return 1;
}

uint64_t sub_1DF4C108C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v6 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v5);
  v7 = (*(v6 + 40))(a1, a2, v5, v6);
  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF5647B4();
  __swift_project_value_buffer(v8, qword_1ED956048);

  v9 = sub_1DF564794();
  v10 = sub_1DF564C44();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DF47EF6C(a1, a2, &v14);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v7 & 1;
    _os_log_impl(&dword_1DF47C000, v9, v10, "Fetched value for %s status: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  return v7 & 1;
}

void sub_1DF4C1234(uint64_t a1, unint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = (v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults);
  v9 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v10 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v9);
  if (((*(v10 + 40))(a1, a2, v9, v10) & 1) == v7)
  {
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956048);

    oslog = sub_1DF564794();
    v19 = sub_1DF564C44();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1DF47EF6C(a1, a2, v23);
      *(v20 + 12) = 1024;
      *(v20 + 14) = a3 & 1;
      _os_log_impl(&dword_1DF47C000, oslog, v19, "Attempted to set %s to %{BOOL}d but it already has that value. Early returning.", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1E12D75F0](v21, -1, -1);
      MEMORY[0x1E12D75F0](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = v8[3];
    v12 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v11);
    v23[3] = MEMORY[0x1E69E6370];
    LOBYTE(v23[0]) = v7;
    (*(v12 + 56))(v23, a1, a2, v11, v12);
    sub_1DF47E5B4(v23, &qword_1ECE378F0, &qword_1DF5686F0);
    if (qword_1ED956040 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956048);

    v14 = sub_1DF564794();
    v15 = sub_1DF564C44();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1DF47EF6C(a1, a2, v23);
      *(v16 + 12) = 1024;
      *(v16 + 14) = a3 & 1;
      _os_log_impl(&dword_1DF47C000, v14, v15, "Set new value for %s %{BOOL}d.", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1E12D75F0](v17, -1, -1);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }
  }
}

void (*sub_1DF4C15E8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4C108C(0x74706F5F6F747561, 0xEB000000006E695FLL) & 1;
  return sub_1DF4C1650;
}

uint64_t sub_1DF4C1694()
{
  v0 = sub_1DF4BF824();
  if (!v0)
  {
    if (qword_1ED9558B8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  v1 = v0;
  v2 = 0;
  v3 = v0 + 64;
  v4 = 1 << *(v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v0 + 64);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
LABEL_6:
    if (v7 <= v2 + 1)
    {
      v9 = v2 + 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 - 1;
    while (1)
    {
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        v6 = 0;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        goto LABEL_14;
      }

      v6 = *(v3 + 8 * v8);
      ++v2;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
LABEL_20:
    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED955C68);
    v19 = sub_1DF564794();
    v20 = sub_1DF564C44();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v35 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DF47EF6C(0xD000000000000029, 0x80000001DF570A10, &v35);
      _os_log_impl(&dword_1DF47C000, v19, v20, "No persistent domain for suite %s, no users have toggled toggle off or on.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E12D75F0](v22, -1, -1);
      MEMORY[0x1E12D75F0](v21, -1, -1);
    }

    return 0;
  }

  while (1)
  {
    v8 = v2;
LABEL_13:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1DF47F24C(*(v1 + 56) + 32 * v12, v31);
    *&v32 = v15;
    *(&v32 + 1) = v14;
    sub_1DF49A88C(v31, &v33);

    v10 = v8;
LABEL_14:
    v35 = v32;
    v36[0] = v33;
    v36[1] = v34;
    v16 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {

      return 0;
    }

    v17 = v35;
    sub_1DF49A88C(v36, &v32);
    if (swift_dynamicCast())
    {
      break;
    }

    v2 = v10;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v24 = LOBYTE(v31[0]);
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DF5647B4();
  __swift_project_value_buffer(v25, qword_1ED955C68);

  v26 = sub_1DF564794();
  v27 = sub_1DF564C44();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v32 = v29;
    *v28 = 136315394;
    v30 = sub_1DF47EF6C(v17, v16, &v32);

    *(v28 + 4) = v30;
    *(v28 + 12) = 1024;
    *(v28 + 14) = v24;
    _os_log_impl(&dword_1DF47C000, v26, v27, "Previous key %s has value %{BOOL}d", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1E12D75F0](v29, -1, -1);
    MEMORY[0x1E12D75F0](v28, -1, -1);
  }

  else
  {
  }

  return 1;
}

int64_t sub_1DF4C1A84()
{
  v0 = sub_1DF4BF824();
  if (v0)
  {
    v1 = v0;
    v2 = v0 + 64;
    v3 = 1 << *(v0 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v0 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &unk_1ED955000;
    while (v5)
    {
LABEL_11:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v7 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_1DF47F24C(*(v1 + 56) + 32 * v11, v38);
      v37[0] = v13;
      v37[1] = v14;
      sub_1DF47F24C(v38, v36);

      if (swift_dynamicCast())
      {
        if (v8[279] != -1)
        {
          swift_once();
        }

        v15 = sub_1DF5647B4();
        __swift_project_value_buffer(v15, qword_1ED955C68);

        v16 = sub_1DF564794();
        v17 = sub_1DF564C44();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v34 = v1;
          v19 = swift_slowAlloc();
          v36[0] = v19;
          *v18 = 136315394;
          *(v18 + 4) = sub_1DF47EF6C(v13, v14, v36);
          *(v18 + 12) = 1024;
          v20 = v35;
          *(v18 + 14) = v35;
          _os_log_impl(&dword_1DF47C000, v16, v17, "Previous key %s has value %{BOOL}d", v18, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v19);
          v21 = v19;
          v1 = v34;
          MEMORY[0x1E12D75F0](v21, -1, -1);
          v22 = v18;
          v8 = &unk_1ED955000;
          MEMORY[0x1E12D75F0](v22, -1, -1);
        }

        else
        {

          v20 = v35;
        }

        sub_1DF47E5B4(v37, &qword_1ECE37CB8, &qword_1DF56A510);
        if (v20)
        {
          v6 = 1;
LABEL_20:

          if (v8[279] == -1)
          {
LABEL_21:
            v23 = sub_1DF5647B4();
            __swift_project_value_buffer(v23, qword_1ED955C68);
            v24 = sub_1DF564794();
            v25 = sub_1DF564C44();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v37[0] = v27;
              *v26 = 136315394;
              *(v26 + 4) = sub_1DF47EF6C(0x4F72657355796E61, 0xEE006E4964657470, v37);
              *(v26 + 12) = 1024;
              *(v26 + 14) = v6;
              _os_log_impl(&dword_1DF47C000, v24, v25, "%s returning %{BOOL}d", v26, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v27);
              MEMORY[0x1E12D75F0](v27, -1, -1);
              MEMORY[0x1E12D75F0](v26, -1, -1);
            }

            return v6;
          }

LABEL_31:
          swift_once();
          goto LABEL_21;
        }
      }

      else
      {
        sub_1DF47E5B4(v37, &qword_1ECE37CB8, &qword_1DF56A510);
      }
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v6 = 0;
        goto LABEL_20;
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v28 = sub_1DF5647B4();
  __swift_project_value_buffer(v28, qword_1ED955C68);
  v29 = sub_1DF564794();
  v30 = sub_1DF564C44();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1DF47EF6C(0xD000000000000029, 0x80000001DF570A10, v37);
    _os_log_impl(&dword_1DF47C000, v29, v30, "No persistent domain for suite %s, no users have toggled toggle off or on.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E12D75F0](v32, -1, -1);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF4C1F84(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void (*sub_1DF4C2080(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4C108C(0x6E695F646574706FLL, 0xEE0079646475625FLL) & 1;
  return sub_1DF4C20EC;
}

void (*sub_1DF4C2180(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DF4C108C(0x756F5F646574706FLL, 0xEF79646475625F74) & 1;
  return sub_1DF4C21EC;
}

id GMOptIn.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4C3210();
  if (qword_1ED955FE8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED958B80;
  v12[3] = sub_1DF4818A4();
  v12[4] = &off_1F5A8A490;
  v12[0] = v4;
  v6 = type metadata accessor for GMOptIn();
  v7 = objc_allocWithZone(v6);
  sub_1DF47FCEC(v12, &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults]);
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_availabilityClient] = v5;
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v11.receiver = v7;
  v11.super_class = v6;

  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t sub_1DF4C2340()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 24);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults), v1);
  v3 = sub_1DF49A758(MEMORY[0x1E69E7CC0]);
  (*(v2 + 72))(v3, 0xD000000000000029, 0x80000001DF570A10, v1, v2);
}

id GMOptIn.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMOptIn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMOptIn();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DF4C2500(uint64_t a1)
{
  v2 = sub_1DF564D74();

  return sub_1DF4C2544(a1, v2);
}

unint64_t sub_1DF4C2544(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DF4A799C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12D6640](v9, a1);
      sub_1DF4C3D44(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DF4C260C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF564D64() + 1) & ~v5;
    do
    {
      sub_1DF565234();

      sub_1DF5649E4();
      v10 = sub_1DF565264();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DF4C27BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE379F8, &unk_1DF568890);
  v2 = *v0;
  v3 = sub_1DF564F14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1DF47F24C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DF49A88C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_1DF4C2960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
  v2 = *v0;
  v3 = sub_1DF564F14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1DF4C2AC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CB0, &unk_1DF568870);
  v2 = *v0;
  v3 = sub_1DF564F14();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1DF4C2C38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37C98, &qword_1DF568850);
  v2 = *v0;
  v3 = sub_1DF564F14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1DF47FCEC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DF47E390(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

id sub_1DF4C2DE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CC8, &unk_1DF568880);
  v2 = *v0;
  v3 = sub_1DF564F14();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

BOOL sub_1DF4C2F4C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1DF5650D4() & 1;
    }
  }

  return result;
}

unint64_t sub_1DF4C2FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CA0, &qword_1DF568858);
    v3 = sub_1DF564F34();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DF480420(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF4C30D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37908, &qword_1DF568860);
    v3 = sub_1DF564F34();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF47E4CC(v4, v13, &qword_1ECE37CA8, &qword_1DF568868);
      result = sub_1DF4C2500(v13);
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
      result = sub_1DF49A88C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1DF4C3210()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  if (qword_1ED956040 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956048);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000029, 0x80000001DF570A10, &v10);
    _os_log_impl(&dword_1DF47C000, v5, v6, "Could not create UserDefaults with suiteName, will use .standard: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = [objc_opt_self() standardUserDefaults];

  return v9;
}

uint64_t sub_1DF4C33D8()
{
  v0 = sub_1DF481988();
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 aa_personID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1DF564944();

      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v5 = sub_1DF5647B4();
      __swift_project_value_buffer(v5, qword_1ED956048);
      v6 = sub_1DF564794();
      v7 = sub_1DF564C44();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_13;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device has primary DSID, using to key opt-in status.";
    }

    else
    {
      if (qword_1ED956040 != -1)
      {
        swift_once();
      }

      v4 = 0x695F656369766564;
      v10 = sub_1DF5647B4();
      __swift_project_value_buffer(v10, qword_1ED956048);
      v6 = sub_1DF564794();
      v7 = sub_1DF564C44();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_13;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device has primary account without DSID. Will fallback to device setting.";
    }

    _os_log_impl(&dword_1DF47C000, v6, v7, v9, v8, 2u);
    MEMORY[0x1E12D75F0](v8, -1, -1);
LABEL_13:

    return v4;
  }

  return 0x656369766564;
}

uint64_t sub_1DF4C35F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF4C0AC8(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF4C36BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D4B0;

  return sub_1DF4C090C(a1, v4, v5, v6, v7);
}

id _s25CloudSubscriptionFeatures7GMOptInC7currentACSgvgZ_0()
{
  v0 = sub_1DF4C3210();
  if (qword_1ED955FE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED958B80;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_1DF564944();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v13[3] = sub_1DF4818A4();
  v13[4] = &off_1F5A8A490;
  v13[0] = v0;
  v7 = type metadata accessor for GMOptIn();
  v8 = objc_allocWithZone(v7);
  sub_1DF47FCEC(v13, &v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_userDefaults]);
  *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_availabilityClient] = v1;
  v9 = &v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures7GMOptIn_bundleIdentifier];
  *v9 = v4;
  v9[1] = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v10;
}

unint64_t sub_1DF4C3908()
{
  result = qword_1ECE37C90;
  if (!qword_1ECE37C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37C90);
  }

  return result;
}

unint64_t sub_1DF4C3D98()
{
  result = qword_1ECE37CC0;
  if (!qword_1ECE37CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37CC0);
  }

  return result;
}

uint64_t sub_1DF4C3DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF48D4B0;

  return sub_1DF484C20(a1, v4);
}

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF4C4004()
{
  result = qword_1ECE37CD8;
  if (!qword_1ECE37CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37CD8);
  }

  return result;
}

uint64_t sub_1DF4C4058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF4C424C(unsigned __int8 a1)
{
  sub_1DF565234();
  MEMORY[0x1E12D6B00](a1);
  return sub_1DF565264();
}

uint64_t sub_1DF4C4294(void *a1, void *a2)
{
  v10 = a2;
  v3 = a2[3];
  v11 = a2[2];
  type metadata accessor for CacheBox.CodingKeys(255, v11, v3, a2[4]);
  swift_getWitnessTable();
  v4 = sub_1DF565084();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5652A4();
  v17 = 0;
  v8 = v12;
  sub_1DF565074();
  if (!v8)
  {
    v16 = 1;
    sub_1DF564494();
    sub_1DF484ECC(&qword_1ED955120, MEMORY[0x1E6969538]);
    sub_1DF565044();
    v15 = 2;
    sub_1DF565074();
    v14 = 3;
    sub_1DF565024();
    v13 = 4;
    sub_1DF565024();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DF4C4550(uint64_t a1)
{
  sub_1DF565234();
  sub_1DF4C4224(v3, *v1);
  return sub_1DF565264();
}

uint64_t sub_1DF4C459C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF4C4058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF4C45D0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DF4C4788();
  *a2 = result;
  return result;
}

uint64_t sub_1DF4C4604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF4C4658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DF4C46C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1DF4C4790(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  v2 = 0x80000001DF5719C0;
  v3 = 0xD000000000000015;
  if (a1 != 2)
  {
    v3 = 0x6C7070612E6D6F63;
    v2 = 0xEE00707673722E65;
  }

  v4 = 0x80000001DF571A00;
  if (a1)
  {
    v4 = 0x80000001DF5719E0;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v8 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v9 = sub_1DF4C4A38(v5, v6, 0);
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF5647B4();
  __swift_project_value_buffer(v10, qword_1ED9556D8);
  v11 = v9;
  v12 = sub_1DF564794();
  v13 = sub_1DF564C14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315394;
    v16 = 0x80000001DF5719C0;
    v17 = 0xD000000000000011;
    v18 = 0xD000000000000015;
    if (a1 != 2)
    {
      v18 = 0x6C7070612E6D6F63;
      v16 = 0xEE00707673722E65;
    }

    v19 = 0x80000001DF571A00;
    if (a1)
    {
      v19 = 0x80000001DF5719E0;
    }

    else
    {
      v17 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    if (a1 <= 1u)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    v22 = sub_1DF47EF6C(v20, v21, &v24);

    *(v14 + 4) = v22;
    *(v14 + 12) = 1024;

    *(v14 + 14) = v9 != 0;
    _os_log_impl(&dword_1DF47C000, v12, v13, "App Installation for bundleIdentifier %s: %{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1E12D75F0](v15, -1, -1);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  else
  {
  }

  return v9 != 0;
}

id sub_1DF4C4A38(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DF564914();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DF5642F4();

    swift_willThrow();
  }

  return v6;
}

_DWORD *sub_1DF4C4B14()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1DF4818A4();
    v4 = &off_1F5A8A490;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  type metadata accessor for TicketCache();
  v5 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  result = swift_slowAlloc();
  *(v6 + 16) = result;
  *result = 0;
  v5[2] = v2;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = v3;
  v5[6] = v4;
  v5[7] = v6;
  qword_1ED954C20 = v5;
  return result;
}

uint64_t static TicketCache.shared.getter()
{
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }
}

uint64_t TicketCache.persistentDomain.getter()
{
  sub_1DF4C4D14(v0 + 16, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_0(v4, v5);
    v1 = (*(v2 + 80))(0xD000000000000030, 0x80000001DF5709B0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1DF47E5B4(v4, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  return v1;
}

uint64_t sub_1DF4C4D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE0, &qword_1DF568B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void TicketCache.allTickets(forDSID:)(uint64_t a1, uint64_t a2)
{
  sub_1DF4C4D14(v2 + 16, v28);
  v3 = v29;
  if (v29)
  {
    v4 = v30;
    __swift_project_boxed_opaque_existential_0(v28, v29);
    v5 = (*(v4 + 80))(0xD000000000000030, 0x80000001DF5709B0, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v28);
    if (v5)
    {
      v6 = 1 << *(v5 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v5 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (v8)
      {
        v12 = v10;
LABEL_11:
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v14 = (*(v5 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_1DF4C4FE0(v16, v15, a1, a2);
        if (v17)
        {
          v18 = v17;
          v28[0] = v16;
          v28[1] = v15;
          v19 = sub_1DF564A44();
          v24 = v20;
          v25 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1DF4AA05C(0, v11[2] + 1, 1, v11);
          }

          v22 = v11[2];
          v21 = v11[3];
          if (v22 >= v21 >> 1)
          {
            v11 = sub_1DF4AA05C((v21 > 1), v22 + 1, 1, v11);
          }

          v11[2] = v22 + 1;
          v23 = &v11[3 * v22];
          v23[4] = v25;
          v23[5] = v24;
          v23[6] = v18;
          v10 = v12;
        }

        else
        {

          v10 = v12;
        }
      }

      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return;
        }

        v8 = *(v5 + 64 + 8 * v12);
        ++v10;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_1DF47E5B4(v28, &qword_1ECE37CE0, &qword_1DF568B40);
  }
}

id sub_1DF4C4FE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CF8, &qword_1DF568BA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v38 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v38 - v15);
  v17 = *(v4 + 56);
  os_unfair_lock_lock(*(v17 + 16));
  sub_1DF4C559C(a1, a2, v9);
  v18 = v16;
  v19 = v39;
  v20 = v40;
  v38 = a1;
  os_unfair_lock_unlock(*(v17 + 16));
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DF47E5B4(v9, &qword_1ECE37CF8, &qword_1DF568BA0);
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED956088);
    v22 = a2;

    v23 = sub_1DF564794();
    v24 = sub_1DF564C44();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v38;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1DF47EF6C(v26, v22, v41);
      _os_log_impl(&dword_1DF47C000, v23, v24, "No ticket cache for featureID: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }
  }

  else
  {
    sub_1DF4C61B0(v9, v14);
    v29 = v18;
    sub_1DF4C61B0(v14, v18);
    if (sub_1DF4FBB18(0, 0, v19, v20, 0))
    {
      v30 = *v18;
      sub_1DF47E5B4(v18, &qword_1ECE37CE8, &unk_1DF568D10);
      return v30;
    }

    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v32 = sub_1DF5647B4();
    __swift_project_value_buffer(v32, qword_1ED956088);
    v33 = a2;

    v34 = sub_1DF564794();
    v35 = sub_1DF564C44();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1DF47EF6C(v38, v33, v41);
      _os_log_impl(&dword_1DF47C000, v34, v35, "Ticket CacheBox is not valid for feature: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1E12D75F0](v37, -1, -1);
      MEMORY[0x1E12D75F0](v36, -1, -1);
    }

    sub_1DF47E5B4(v29, &qword_1ECE37CE8, &unk_1DF568D10);
  }

  return 0;
}

uint64_t sub_1DF4C559C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF4C4D14(v3 + 16, v16);
  v8 = v17;
  if (!v17)
  {
    sub_1DF47E5B4(v16, &qword_1ECE37CE0, &qword_1DF568B40);
    goto LABEL_6;
  }

  v9 = v18;
  __swift_project_boxed_opaque_existential_0(v16, v17);
  v10 = (*(v9 + 32))(a1, a2, v8, v9);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0(v16);
  if (v12 >> 60 == 15)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  sub_1DF5642A4();
  swift_allocObject();
  sub_1DF564294();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4C6220(&qword_1ECE374C8, &unk_1DF5689E0);
  sub_1DF564284();
  if (v4)
  {

    return sub_1DF48C2F4(v10, v12);
  }

  else
  {
    sub_1DF48C2F4(v10, v12);

    return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }
}

void sub_1DF4C5794(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4C6220(&qword_1ECE37CF0, &unk_1DF5689B8);
  v6 = sub_1DF5642B4();
  v8 = v7;
  v9 = *(v3 + 56);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1DF4C4D14(v3 + 16, v19);
  v10 = v20;
  if (v20)
  {
    v11 = v21;
    __swift_project_boxed_opaque_existential_0(v19, v20);
    v18[3] = MEMORY[0x1E6969080];
    v18[0] = v6;
    v18[1] = v8;
    v12 = *(v11 + 8);
    sub_1DF4AD474(v6, v8);
    v12(v18, a1, a2, v10, v11);
    sub_1DF47E5B4(v18, &qword_1ECE378F0, &qword_1DF5686F0);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    sub_1DF47E5B4(v19, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  os_unfair_lock_unlock(*(v9 + 16));
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956088);

  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1DF47EF6C(a1, a2, v19);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Updating cache for ticket: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  sub_1DF48C308(v6, v8);
}

void sub_1DF4C5BD4()
{
  v1 = v0;
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956088);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    sub_1DF4C4D14(v0 + 16, v15);
    v7 = v16;
    if (v16)
    {
      v8 = v17;
      __swift_project_boxed_opaque_existential_0(v15, v16);
      if ((*(v8 + 80))(0xD000000000000030, 0x80000001DF5709B0, v7, v8))
      {
        v9 = sub_1DF564884();
        v11 = v10;

        __swift_destroy_boxed_opaque_existential_0(v15);
        v12 = v9;
LABEL_10:
        v13 = sub_1DF47EF6C(v12, v11, &v18);

        *(v5 + 4) = v13;
        _os_log_impl(&dword_1DF47C000, v3, v4, "Resetting ticket cache. Current domain is: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x1E12D75F0](v6, -1, -1);
        MEMORY[0x1E12D75F0](v5, -1, -1);
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      sub_1DF47E5B4(v15, &qword_1ECE37CE0, &qword_1DF568B40);
    }

    v11 = 0xE500000000000000;
    v12 = 0x3E6C696E3CLL;
    goto LABEL_10;
  }

LABEL_11:

  v14 = *(v1 + 56);
  os_unfair_lock_lock(*(v14 + 16));
  sub_1DF4C5EE4(v1);
  os_unfair_lock_unlock(*(v14 + 16));
}

uint64_t TicketCache.deinit()
{
  sub_1DF47E5B4(v0 + 16, &qword_1ECE37CE0, &qword_1DF568B40);

  return v0;
}

uint64_t TicketCache.__deallocating_deinit()
{
  sub_1DF47E5B4(v0 + 16, &qword_1ECE37CE0, &qword_1DF568B40);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1DF4C5EE4(uint64_t a1)
{
  sub_1DF4C4D14(a1 + 16, v16);
  if (v17)
  {
    v2 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    sub_1DF49A758(MEMORY[0x1E69E7CC0]);
    (*(v2 + 72))();

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(v16, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956088);

  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    sub_1DF4C4D14(a1 + 16, v16);
    v8 = v17;
    if (v17)
    {
      v9 = v18;
      __swift_project_boxed_opaque_existential_0(v16, v17);
      if ((*(v9 + 80))(0xD000000000000030, 0x80000001DF5709B0, v8, v9))
      {
        v10 = sub_1DF564884();
        v12 = v11;

        __swift_destroy_boxed_opaque_existential_0(v16);
        v13 = v10;
LABEL_13:
        v14 = sub_1DF47EF6C(v13, v12, &v15);

        *(v6 + 4) = v14;
        _os_log_impl(&dword_1DF47C000, v4, v5, "Reset ticket cache. New domain is: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1E12D75F0](v7, -1, -1);
        MEMORY[0x1E12D75F0](v6, -1, -1);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      sub_1DF47E5B4(v16, &qword_1ECE37CE0, &qword_1DF568B40);
    }

    v12 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
    goto LABEL_13;
  }

LABEL_14:
}

uint64_t sub_1DF4C61B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4C6220(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37CE8, &unk_1DF568D10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF4C6274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4C631C, 0, 0);
}

uint64_t sub_1DF4C631C()
{
  v23 = v0;
  if (qword_1ED955FF0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v1 = v0[14];
    v2 = v0[15];
    v0[22] = off_1ED955FF8;
    v3 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v1, v2, 1, 1);
    v4 = v3;
    v0[23] = v3;
    if (v3 >> 62)
    {
      break;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E12D66D0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = *&v7[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v7[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
      if (v10 || (sub_1DF5650D4() & 1) != 0)
      {
        goto LABEL_22;
      }

      ++v6;
      if (v9 == v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v5 = sub_1DF564F04();
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_21:
  v8 = 0;
LABEL_22:
  v0[24] = v8;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF5647B4();
  v0[25] = __swift_project_value_buffer(v11, qword_1ED9556D8);

  v12 = sub_1DF564794();
  v13 = sub_1DF564C44();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[16];
    v14 = v0[17];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1DF47EF6C(v15, v14, &v22);
    _os_log_impl(&dword_1DF47C000, v12, v13, "[%{public}s]starting network fetch for all features", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_1DF4C6634;
  v20 = v0[18];
  v19 = v0[19];

  return sub_1DF4B8748(v20, v19);
}

uint64_t sub_1DF4C6634(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_1DF4C6E50;
  }

  else
  {
    v4 = sub_1DF4C6748;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1DF4C6748()
{
  v74 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  type metadata accessor for SystemProperties();
  inited = swift_initStackObject();
  inited[2] = 0;
  inited[3] = 0;
  inited[4] = 0;
  inited[5] = 1;
  v71 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_telemetryProvider);
  v4 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities), *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities + 24));
  v70 = *(*__swift_project_boxed_opaque_existential_0(v4, v4[3]) + 16);
  if (v1 >> 62)
  {
LABEL_63:
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_1DF564F04();
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v72 = v0;
  v8 = v1 & 0xC000000000000001;
  v1 = *(v0 + 216) + 32;
  v0 = 256;
  while (1)
  {
    if (v6 == v7)
    {
      v0 = 0;
      goto LABEL_18;
    }

    if (v8)
    {
      v9 = MEMORY[0x1E12D66D0](v7, v72[27]);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_60;
      }

      v9 = *(v1 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (*&v9[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v9[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL)
    {
      break;
    }

    v12 = sub_1DF5650D4();

    ++v7;
    if (v12)
    {
      goto LABEL_18;
    }
  }

  v0 = 256;
LABEL_18:
  if (v6)
  {
    v13 = 0;
    while (1)
    {
      if (v8)
      {
        v14 = MEMORY[0x1E12D66D0](v13, v72[27]);
      }

      else
      {
        if (v13 >= *(v5 + 16))
        {
          goto LABEL_62;
        }

        v14 = *(v1 + 8 * v13);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_61;
      }

      v17 = *&v14[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v14[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
      if (v17 || (sub_1DF5650D4() & 1) != 0)
      {
        v18 = OBJC_IVAR___CloudFeature_canUse;
        v20 = v72;
        swift_beginAccess();
        LODWORD(v18) = v15[v18];

        if (v18)
        {
          v19 = 0x10000;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_36;
      }

      ++v13;
      if (v16 == v6)
      {
        v19 = 0;
        v20 = v72;
        goto LABEL_36;
      }
    }
  }

  v19 = 0;
  v20 = v72;
LABEL_36:
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v22 = result;
    v23 = MobileGestalt_copy_regionCode_obj();

    v68 = v19;
    if (v23)
    {
      v24 = sub_1DF564944();
      v26 = v25;

      if (v24 == 18499 && v26 == 0xE200000000000000)
      {

        v27 = 0x1000000;
      }

      else
      {
        v28 = sub_1DF5650D4();

        v27 = 0x1000000;
        if ((v28 & 1) == 0)
        {
          v27 = 0;
        }
      }

      v66 = v27;
    }

    else
    {
      v66 = 0;
    }

    v69 = v0;
    v29 = v20[24];
    if (v29)
    {
      v30 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      if (*(v29 + v30))
      {
        v31 = 0x1000000000000;
      }

      else
      {
        v31 = 0;
      }

      v32 = 0x10000000000;
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    v33 = v20[27];
    v34 = v20[23];
    v35 = v20[19];
    v67 = v20[20];
    v36 = v20[18];
    v39 = v20 + 14;
    v37 = v20[14];
    v38 = v39[1];
    sub_1DF4B9704(v36, v35);
    sub_1DF4E2378(v69 | v70 | v68 | v66 | v32 | v31 | ((v38 != 0) << 32), v36, v35, v71);
    sub_1DF4B9718(v36, v35);
    sub_1DF4FC604(v33, v37, v38);
    sub_1DF4FB970();
    v40 = *(v67 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
    v41 = *(v67 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32);
    __swift_project_boxed_opaque_existential_0((v67 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore), v40);
    v42 = (*(v41 + 32))(v40, v41);
    sub_1DF4FEF1C(v42, v34, v33);

    v43 = sub_1DF564794();
    v44 = sub_1DF564C44();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v72;
      v47 = v72[16];
      v46 = v72[17];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v73 = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_1DF47EF6C(v47, v46, &v73);
      _os_log_impl(&dword_1DF47C000, v43, v44, "[%{public}s]network fetch finished for all features", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1E12D75F0](v49, -1, -1);
      MEMORY[0x1E12D75F0](v48, -1, -1);
    }

    else
    {

      v45 = v72;
    }

    v50 = v45[27];
    v52 = v45[20];
    v51 = v45[21];
    v53 = sub_1DF564B44();
    (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v52;
    v54[5] = v50;
    v55 = v52;

    sub_1DF4BF520(0, 0, v51, &unk_1DF568CA0, v54);

    v56 = sub_1DF564794();
    v57 = sub_1DF564C44();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v45[24];
    if (v58)
    {
      v61 = v45[16];
      v60 = v45[17];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v73 = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_1DF47EF6C(v61, v60, &v73);
      _os_log_impl(&dword_1DF47C000, v56, v57, "[%{public}s] CFU code deprecated, skipping CFU checks", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1E12D75F0](v63, -1, -1);
      MEMORY[0x1E12D75F0](v62, -1, -1);
    }

    v64 = v45[1];
    v65 = v45[27];

    return v64(v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4C6E50()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF4C6EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF4C6F60(a5);
}

uint64_t sub_1DF4C6F60(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4C6FFC, 0, 0);
}

uint64_t sub_1DF4C6FFC()
{
  super_class = v0[16].super_class;
  if (super_class >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    v3 = 0;
    v4 = super_class & 0xC000000000000001;
    v5 = super_class & 0xFFFFFFFFFFFFFF8;
    v6 = v0[16].super_class + 32;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1E12D66D0](v3, v0[16].super_class);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v6 + 8 * v3);
      }

      super_class = v7;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = *&v7[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v7[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
      if (v9 || (sub_1DF5650D4() & 1) != 0)
      {
        goto LABEL_18;
      }

      ++v3;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_17:
  v10 = v0[17].super_class;
  v23 = v10;
  v11 = sub_1DF564494();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v22 = type metadata accessor for CloudFeature(0);
  v13 = objc_allocWithZone(v22);
  v14 = &v13[OBJC_IVAR___CloudFeature_limit];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v13[OBJC_IVAR___CloudFeature_accessToken];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR___CloudFeature_ttl;
  v12(&v13[OBJC_IVAR___CloudFeature_ttl], 1, 1, v11);
  v13[OBJC_IVAR___CloudFeature_canUse] = 0;
  v17 = &v13[OBJC_IVAR___CloudFeature_featureID];
  *v17 = 0x6C6C2E64756F6C63;
  v17[1] = 0xE90000000000006DLL;
  swift_beginAccess();
  *v14 = 0;
  v14[8] = 1;
  swift_beginAccess();
  *v15 = 0;
  v15[1] = 0;
  swift_beginAccess();
  sub_1DF4BEC40(v23, &v13[v16]);
  swift_endAccess();
  v0[15].receiver = v13;
  v0[15].super_class = v22;
  super_class = objc_msgSendSuper2(v0 + 15, sel_init);
  sub_1DF47E5B4(v23, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_18:
  v0[18].receiver = super_class;
  v18 = objc_opt_self();
  v19 = CloudFeature.cloudFeatureObject.getter();
  v0[18].super_class = v19;
  v0[1].receiver = v0;
  v0[3].super_class = &v0[16];
  v0[1].super_class = sub_1DF4C73A8;
  v20 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
  v0[5].receiver = MEMORY[0x1E69E9820];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_1DF4E5758;
  v0[6].super_class = &block_descriptor_0;
  v0[7].receiver = v20;
  [v18 _currentAvailabilityWithFeatureObject_completionHandler_];

  return MEMORY[0x1EEE6DEC8](&v0[1]);
}

uint64_t sub_1DF4C73A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF4C7488, 0, 0);
}

uint64_t sub_1DF4C7488()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[32];
  v0[38] = v3;

  v4 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_availabilityClient;
  v0[39] = OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_availabilityClient;
  __swift_project_boxed_opaque_existential_0((v2 + v4), *(v2 + v4 + 24));
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_1DF4C7548;

  return sub_1DF4F31A0(v3);
}

uint64_t sub_1DF4C7548()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF4C7644, 0, 0);
}

uint64_t sub_1DF4C7644()
{
  v1 = v0[36];
  v2 = (v0[34] + v0[39]);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v3 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_1DF4C7720;

  return sub_1DF4F4A28(v4);
}

uint64_t sub_1DF4C7720()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF4C781C, 0, 0);
}

uint64_t sub_1DF4C781C()
{
  v1 = v0[33];
  v2 = (v0[34] + v0[39]);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v3 = sub_1DF5490B0(v1);
  v4 = sub_1DF4EA06C(v3);

  sub_1DF4E99A0(v4);
  v6 = v5;
  v0[42] = v5;

  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_1DF4C7910;

  return sub_1DF4F3A8C(v6);
}

uint64_t sub_1DF4C7910()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF4C7A28, 0, 0);
}

uint64_t sub_1DF4C7A28()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF4C7A98(int a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v69 = a4;
  v67 = a3;
  v68 = a5;
  v66 = a2;
  LODWORD(v76) = a1;
  v6 = sub_1DF564704();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v63 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - v16;
  v71 = v5;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v63 = v10;
  v18 = sub_1DF5647B4();
  v19 = __swift_project_value_buffer(v18, qword_1ED956020);
  v64 = *(v7 + 16);
  v64(v15, v17, v6);
  v65 = v19;
  v20 = sub_1DF564794();
  v21 = sub_1DF564C04();
  v22 = os_log_type_enabled(v20, v21);
  v75 = v17;
  v73 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v77 = v24;
    *v23 = 134349314;
    v25 = sub_1DF5646F4();
    v74 = *(v7 + 8);
    v74(v15, v6);
    *(v23 + 4) = v25;
    *(v23 + 12) = 2082;
    v26 = v76;
    sub_1DF48818C(v76);
    v27 = sub_1DF564E04();
    v29 = sub_1DF47EF6C(v27, v28, &v77);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}llu [Start] [Sync] %{public}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1E12D75F0](v24, -1, -1);
    v30 = v23;
    v17 = v75;
    MEMORY[0x1E12D75F0](v30, -1, -1);
  }

  else
  {
    v74 = *(v7 + 8);
    v74(v15, v6);

    v26 = v76;
  }

  v76 = sub_1DF487DC4(v26, v17, v66, v67);
  v31 = v70;
  v32 = v69();
  v34 = v72;
  if (v31)
  {
    sub_1DF48AD44(v26, v76, 0, 0);
    v35 = v63;
    v64(v63, v17, v6);
    v36 = sub_1DF564794();
    v37 = sub_1DF564C04();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v71 = v31;
      v39 = v38;
      v40 = swift_slowAlloc();
      v77 = v40;
      *v39 = 134349314;
      v41 = sub_1DF5646F4();
      v42 = v35;
      v43 = v41;
      v44 = v26;
      v45 = v74;
      v74(v42, v6);
      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      sub_1DF48818C(v44);
      v46 = sub_1DF564E04();
      v48 = sub_1DF47EF6C(v46, v47, &v77);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_1DF47C000, v36, v37, "%{public}llu [Finish] [Sync] FAILURE %{public}s", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1E12D75F0](v40, -1, -1);
      MEMORY[0x1E12D75F0](v39, -1, -1);
    }

    else
    {
      v45 = v74;
      v74(v35, v6);
    }

    swift_willThrow();

    return v45(v75, v6);
  }

  else
  {
    sub_1DF48AD44(v26, v76, v32, v33);

    v64(v34, v17, v6);
    v49 = v34;
    v50 = sub_1DF564794();
    v51 = v17;
    v52 = sub_1DF564C04();
    if (os_log_type_enabled(v50, v52))
    {
      v53 = swift_slowAlloc();
      v71 = 0;
      v54 = v53;
      v55 = swift_slowAlloc();
      v77 = v55;
      *v54 = 134349314;
      v56 = sub_1DF5646F4();
      v74(v49, v6);
      *(v54 + 4) = v56;
      *(v54 + 12) = 2082;
      sub_1DF48818C(v26);
      v57 = sub_1DF564E04();
      v59 = sub_1DF47EF6C(v57, v58, &v77);

      *(v54 + 14) = v59;
      _os_log_impl(&dword_1DF47C000, v50, v52, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x1E12D75F0](v55, -1, -1);
      MEMORY[0x1E12D75F0](v54, -1, -1);

      return (v74)(v75, v6);
    }

    else
    {
      v61 = v49;
      v62 = v74;
      v74(v61, v6);

      return v62(v51, v6);
    }
  }
}