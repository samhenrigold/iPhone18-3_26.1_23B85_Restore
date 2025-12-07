uint64_t sub_25B8C4FCC(uint64_t a1)
{
  v5 = *v2;
  v5[12] = *v2;
  v5[62] = a1;
  v5[63] = v1;

  if (v1)
  {
    v3 = sub_25B8C83B8;
  }

  else
  {
    sub_25B8CEEA8(v5[28]);
    v3 = sub_25B8C5150;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_25B8C5150()
{
  v1 = v0[62];
  v0[12] = v0;
  sub_25B8A60E0(v1);
  v23 = v0[2];
  v24 = v0[3];
  sub_25B946ED8();
  v0[8] = v23;
  v0[9] = v24;
  if (v0[9])
  {
    sub_25B86AEEC(v22 + 64);
  }

  else
  {
    sub_25B86AEEC(v22 + 64);
    v21 = *(v22 + 480);
    v20 = *(v22 + 472);
    sub_25B946ED8();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
  }

  v17 = *(v22 + 504);
  v18 = *(v22 + 16);
  v19 = *(v22 + 24);
  sub_25B946ED8();
  *(v22 + 32) = v18;
  *(v22 + 40) = v19;
  if (*(v22 + 40))
  {
    sub_25B86AEEC(v22 + 32);
    v15 = *(v22 + 16);
    v16 = *(v22 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v15, v16);
  }

  else
  {
    sub_25B86AEEC(v22 + 32);
    (*(v22 + 320))(*(v22 + 304), *(v22 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v22 + 272));
    oslog = sub_25B946C18();
    v12 = sub_25B947458();
    v14 = sub_25B947838();
    if (os_log_type_enabled(oslog, v12))
    {
      buf = sub_25B9474D8();
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v9 = sub_25B8895FC(0, v7, v7);
      v10 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v22 + 144) = buf;
      *(v22 + 152) = v9;
      *(v22 + 160) = v10;
      sub_25B889650(0, (v22 + 144));
      sub_25B889650(0, (v22 + 144));
      *(v22 + 168) = v14;
      v11 = swift_task_alloc();
      v11[2] = v22 + 144;
      v11[3] = v22 + 152;
      v11[4] = v22 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();
      if (v17)
      {
      }

      _os_log_impl(&dword_25B859000, oslog, v12, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v9, 0, v7);
      sub_25B8896B0(v10, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    else
    {
    }

    v6 = *(v22 + 344);
    v4 = *(v22 + 304);
    v5 = *(v22 + 272);
    MEMORY[0x277D82BD8](oslog);
    v6(v4, v5);
  }

  sub_25B8A8DB4(*(v22 + 216));
  v3 = swift_task_alloc();
  *(v22 + 512) = v3;
  *v3 = *(v22 + 96);
  v3[1] = sub_25B8C56E0;

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C56E0(uint64_t a1)
{
  v5 = *v2;
  v5[12] = *v2;
  v5[65] = a1;
  v5[66] = v1;

  if (v1)
  {
    v3 = sub_25B8C8E40;
  }

  else
  {
    sub_25B8CEEA8(v5[27]);
    v3 = sub_25B8C5864;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_25B8C5864()
{
  v1 = *(v0 + 520);
  *(v0 + 96) = v0;
  if (v1)
  {
    v6 = v7[65];
    v7[17] = v6;
    type metadata accessor for NetworkInfoDNSConfiguration();
    MEMORY[0x277D82BE0](v6);
    v2 = sub_25B8A7ED4(v6);
    sub_25B8A63BC(v2);
    MEMORY[0x277D82BD8](v6);
  }

  sub_25B86AEEC((v7 + 2));

  v3 = *(v7[12] + 8);
  v4 = v7[45];

  return v3(v4);
}

uint64_t sub_25B8C5A4C()
{
  v34 = v0;
  v1 = v0[33];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v19 = v0[47];
  v18 = v0[40];
  v2 = v0[37];
  v17 = v0[34];
  v16 = v0[26];
  v3 = v19;
  v0[15] = v19;
  v18(v2, v16 + OBJC_IVAR___NetworkInfoAssessment_logger, v17);
  v4 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_25B8A1C38();

  v27 = sub_25B946C18();
  v28 = sub_25B947438();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_25B8A3B24;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25B8A3C9C;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25B8A3CE8;
  *(v25 + 24) = v22;
  sub_25B947838();
  v26 = v5;

  *v26 = sub_25B88B5F4;
  v26[1] = v23;

  v26[2] = sub_25B88B5F4;
  v26[3] = v24;

  v26[4] = sub_25B8A3EB8;
  v26[5] = v25;
  sub_25B8860FC();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_25B9474D8();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v13 = sub_25B8895FC(1, v11, v11);
    v14 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    sub_25B889650(2, &v29);
    sub_25B889650(1, &v29);
    v32 = sub_25B88B5F4;
    v33 = v23;
    sub_25B889664(&v32, &v29, &v30, &v31);
    v32 = sub_25B88B5F4;
    v33 = v24;
    sub_25B889664(&v32, &v29, &v30, &v31);
    v32 = sub_25B8A3EB8;
    v33 = v25;
    sub_25B889664(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_25B859000, v27, v28, "Could not get IPv6 configuration: %@", buf, 0xCu);
    sub_25B8896B0(v13, 1, v11);
    sub_25B8896B0(v14, 0, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = v15[43];
  v8 = v15[37];
  v9 = v15[34];
  MEMORY[0x277D82BD8](v27);
  v10(v8, v9);

  sub_25B8A8DB4(v15[30]);
  v6 = swift_task_alloc();
  v15[55] = v6;
  *v6 = v15[12];
  v6[1] = sub_25B8C4678;

  return sub_25B900EA8(v15 + 556);
}

uint64_t sub_25B8C611C()
{
  v34 = v0;
  v1 = v0[32];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v19 = v0[49];
  v18 = v0[40];
  v2 = v0[37];
  v17 = v0[34];
  v16 = v0[26];
  v3 = v19;
  v0[15] = v19;
  v18(v2, v16 + OBJC_IVAR___NetworkInfoAssessment_logger, v17);
  v4 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_25B8A1C38();

  v27 = sub_25B946C18();
  v28 = sub_25B947438();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_25B8A3B24;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25B8A3C9C;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25B8A3CE8;
  *(v25 + 24) = v22;
  sub_25B947838();
  v26 = v5;

  *v26 = sub_25B88B5F4;
  v26[1] = v23;

  v26[2] = sub_25B88B5F4;
  v26[3] = v24;

  v26[4] = sub_25B8A3EB8;
  v26[5] = v25;
  sub_25B8860FC();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_25B9474D8();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v13 = sub_25B8895FC(1, v11, v11);
    v14 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    sub_25B889650(2, &v29);
    sub_25B889650(1, &v29);
    v32 = sub_25B88B5F4;
    v33 = v23;
    sub_25B889664(&v32, &v29, &v30, &v31);
    v32 = sub_25B88B5F4;
    v33 = v24;
    sub_25B889664(&v32, &v29, &v30, &v31);
    v32 = sub_25B8A3EB8;
    v33 = v25;
    sub_25B889664(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_25B859000, v27, v28, "Could not get IPv6 configuration: %@", buf, 0xCu);
    sub_25B8896B0(v13, 1, v11);
    sub_25B8896B0(v14, 0, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = v15[43];
  v8 = v15[37];
  v9 = v15[34];
  MEMORY[0x277D82BD8](v27);
  v10(v8, v9);

  sub_25B8A8DB4(v15[30]);
  v6 = swift_task_alloc();
  v15[55] = v6;
  *v6 = v15[12];
  v6[1] = sub_25B8C4678;

  return sub_25B900EA8(v15 + 556);
}

uint64_t sub_25B8C67EC()
{
  v34 = v0;
  v1 = v0[31];
  v0[12] = v0;
  sub_25B8CEEA8(v1);

  v19 = v0[54];
  v18 = v0[40];
  v2 = v0[37];
  v17 = v0[34];
  v16 = v0[26];
  v3 = v19;
  v0[15] = v19;
  v18(v2, v16 + OBJC_IVAR___NetworkInfoAssessment_logger, v17);
  v4 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_25B8A1C38();

  v27 = sub_25B946C18();
  v28 = sub_25B947438();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_25B8A3B24;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25B8A3C9C;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25B8A3CE8;
  *(v25 + 24) = v22;
  sub_25B947838();
  v26 = v5;

  *v26 = sub_25B88B5F4;
  v26[1] = v23;

  v26[2] = sub_25B88B5F4;
  v26[3] = v24;

  v26[4] = sub_25B8A3EB8;
  v26[5] = v25;
  sub_25B8860FC();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_25B9474D8();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v13 = sub_25B8895FC(1, v11, v11);
    v14 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    sub_25B889650(2, &v29);
    sub_25B889650(1, &v29);
    v32 = sub_25B88B5F4;
    v33 = v23;
    sub_25B889664(&v32, &v29, &v30, &v31);
    v32 = sub_25B88B5F4;
    v33 = v24;
    sub_25B889664(&v32, &v29, &v30, &v31);
    v32 = sub_25B8A3EB8;
    v33 = v25;
    sub_25B889664(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_25B859000, v27, v28, "Could not get IPv6 configuration: %@", buf, 0xCu);
    sub_25B8896B0(v13, 1, v11);
    sub_25B8896B0(v14, 0, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = v15[43];
  v8 = v15[37];
  v9 = v15[34];
  MEMORY[0x277D82BD8](v27);
  v10(v8, v9);

  sub_25B8A8DB4(v15[30]);
  v6 = swift_task_alloc();
  v15[55] = v6;
  *v6 = v15[12];
  v6[1] = sub_25B8C4678;

  return sub_25B900EA8(v15 + 556);
}

uint64_t sub_25B8C6ED0()
{
  v49 = v0;
  v1 = v0[30];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v34 = v0[56];
  v33 = v0[40];
  v2 = v0[36];
  v32 = v0[34];
  v31 = v0[26];
  v3 = v34;
  v0[16] = v34;
  v33(v2, v31 + OBJC_IVAR___NetworkInfoAssessment_logger, v32);
  v4 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  sub_25B8A1C38();

  v42 = sub_25B946C18();
  v43 = sub_25B947438();
  v38 = swift_allocObject();
  *(v38 + 16) = 64;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_25B8A3B24;
  *(v36 + 24) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_25B8A3C9C;
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_25B8A3CE8;
  *(v40 + 24) = v37;
  sub_25B947838();
  v41 = v5;

  *v41 = sub_25B88B5F4;
  v41[1] = v38;

  v41[2] = sub_25B88B5F4;
  v41[3] = v39;

  v41[4] = sub_25B8A3EB8;
  v41[5] = v40;
  sub_25B8860FC();

  if (os_log_type_enabled(v42, v43))
  {
    v14 = sub_25B9474D8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(1, v13, v13);
    v16 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v44 = v14;
    v45 = v15;
    v46 = v16;
    sub_25B889650(2, &v44);
    sub_25B889650(1, &v44);
    v47 = sub_25B88B5F4;
    v48 = v38;
    sub_25B889664(&v47, &v44, &v45, &v46);
    v47 = sub_25B88B5F4;
    v48 = v39;
    sub_25B889664(&v47, &v44, &v45, &v46);
    v47 = sub_25B8A3EB8;
    v48 = v40;
    sub_25B889664(&v47, &v44, &v45, &v46);
    _os_log_impl(&dword_25B859000, v42, v43, "Could not get IPv4 configuration: %@", v14, 0xCu);
    sub_25B8896B0(v15, 1, v13);
    sub_25B8896B0(v16, 0, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = *(v30 + 344);
  v8 = *(v30 + 288);
  v9 = *(v30 + 272);
  MEMORY[0x277D82BD8](v42);
  v10(v8, v9);

  v11 = *(v30 + 16);
  v12 = *(v30 + 24);
  sub_25B946ED8();
  *(v30 + 32) = v11;
  *(v30 + 40) = v12;
  if (*(v30 + 40))
  {
    sub_25B86AEEC(v30 + 32);
    v28 = *(v30 + 16);
    v29 = *(v30 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v28, v29);
  }

  else
  {
    sub_25B86AEEC(v30 + 32);
    (*(v30 + 320))(*(v30 + 304), *(v30 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v30 + 272));
    oslog = sub_25B946C18();
    v25 = sub_25B947458();
    v27 = sub_25B947838();
    if (os_log_type_enabled(oslog, v25))
    {
      buf = sub_25B9474D8();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v22 = sub_25B8895FC(0, v20, v20);
      v23 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v30 + 144) = buf;
      *(v30 + 152) = v22;
      *(v30 + 160) = v23;
      sub_25B889650(0, (v30 + 144));
      sub_25B889650(0, (v30 + 144));
      *(v30 + 168) = v27;
      v24 = swift_task_alloc();
      v24[2] = v30 + 144;
      v24[3] = v30 + 152;
      v24[4] = v30 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v25, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v22, 0, v20);
      sub_25B8896B0(v23, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v19 = *(v30 + 344);
    v17 = *(v30 + 304);
    v18 = *(v30 + 272);
    MEMORY[0x277D82BD8](oslog);
    v19(v17, v18);
  }

  sub_25B8A8DB4(*(v30 + 216));
  v6 = swift_task_alloc();
  *(v30 + 512) = v6;
  *v6 = *(v30 + 96);
  v6[1] = sub_25B8C56E0;

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C7944()
{
  v49 = v0;
  v1 = v0[29];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v34 = v0[58];
  v33 = v0[40];
  v2 = v0[36];
  v32 = v0[34];
  v31 = v0[26];
  v3 = v34;
  v0[16] = v34;
  v33(v2, v31 + OBJC_IVAR___NetworkInfoAssessment_logger, v32);
  v4 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  sub_25B8A1C38();

  v42 = sub_25B946C18();
  v43 = sub_25B947438();
  v38 = swift_allocObject();
  *(v38 + 16) = 64;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_25B8A3B24;
  *(v36 + 24) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_25B8A3C9C;
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_25B8A3CE8;
  *(v40 + 24) = v37;
  sub_25B947838();
  v41 = v5;

  *v41 = sub_25B88B5F4;
  v41[1] = v38;

  v41[2] = sub_25B88B5F4;
  v41[3] = v39;

  v41[4] = sub_25B8A3EB8;
  v41[5] = v40;
  sub_25B8860FC();

  if (os_log_type_enabled(v42, v43))
  {
    v14 = sub_25B9474D8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(1, v13, v13);
    v16 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v44 = v14;
    v45 = v15;
    v46 = v16;
    sub_25B889650(2, &v44);
    sub_25B889650(1, &v44);
    v47 = sub_25B88B5F4;
    v48 = v38;
    sub_25B889664(&v47, &v44, &v45, &v46);
    v47 = sub_25B88B5F4;
    v48 = v39;
    sub_25B889664(&v47, &v44, &v45, &v46);
    v47 = sub_25B8A3EB8;
    v48 = v40;
    sub_25B889664(&v47, &v44, &v45, &v46);
    _os_log_impl(&dword_25B859000, v42, v43, "Could not get IPv4 configuration: %@", v14, 0xCu);
    sub_25B8896B0(v15, 1, v13);
    sub_25B8896B0(v16, 0, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = *(v30 + 344);
  v8 = *(v30 + 288);
  v9 = *(v30 + 272);
  MEMORY[0x277D82BD8](v42);
  v10(v8, v9);

  v11 = *(v30 + 16);
  v12 = *(v30 + 24);
  sub_25B946ED8();
  *(v30 + 32) = v11;
  *(v30 + 40) = v12;
  if (*(v30 + 40))
  {
    sub_25B86AEEC(v30 + 32);
    v28 = *(v30 + 16);
    v29 = *(v30 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v28, v29);
  }

  else
  {
    sub_25B86AEEC(v30 + 32);
    (*(v30 + 320))(*(v30 + 304), *(v30 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v30 + 272));
    oslog = sub_25B946C18();
    v25 = sub_25B947458();
    v27 = sub_25B947838();
    if (os_log_type_enabled(oslog, v25))
    {
      buf = sub_25B9474D8();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v22 = sub_25B8895FC(0, v20, v20);
      v23 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v30 + 144) = buf;
      *(v30 + 152) = v22;
      *(v30 + 160) = v23;
      sub_25B889650(0, (v30 + 144));
      sub_25B889650(0, (v30 + 144));
      *(v30 + 168) = v27;
      v24 = swift_task_alloc();
      v24[2] = v30 + 144;
      v24[3] = v30 + 152;
      v24[4] = v30 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v25, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v22, 0, v20);
      sub_25B8896B0(v23, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v19 = *(v30 + 344);
    v17 = *(v30 + 304);
    v18 = *(v30 + 272);
    MEMORY[0x277D82BD8](oslog);
    v19(v17, v18);
  }

  sub_25B8A8DB4(*(v30 + 216));
  v6 = swift_task_alloc();
  *(v30 + 512) = v6;
  *v6 = *(v30 + 96);
  v6[1] = sub_25B8C56E0;

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C83B8()
{
  v49 = v0;
  v1 = v0[28];
  v0[12] = v0;
  sub_25B8CEEA8(v1);

  v34 = v0[63];
  v33 = v0[40];
  v2 = v0[36];
  v32 = v0[34];
  v31 = v0[26];
  v3 = v34;
  v0[16] = v34;
  v33(v2, v31 + OBJC_IVAR___NetworkInfoAssessment_logger, v32);
  v4 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  sub_25B8A1C38();

  v42 = sub_25B946C18();
  v43 = sub_25B947438();
  v38 = swift_allocObject();
  *(v38 + 16) = 64;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_25B8A3B24;
  *(v36 + 24) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_25B8A3C9C;
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_25B8A3CE8;
  *(v40 + 24) = v37;
  sub_25B947838();
  v41 = v5;

  *v41 = sub_25B88B5F4;
  v41[1] = v38;

  v41[2] = sub_25B88B5F4;
  v41[3] = v39;

  v41[4] = sub_25B8A3EB8;
  v41[5] = v40;
  sub_25B8860FC();

  if (os_log_type_enabled(v42, v43))
  {
    v14 = sub_25B9474D8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(1, v13, v13);
    v16 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v44 = v14;
    v45 = v15;
    v46 = v16;
    sub_25B889650(2, &v44);
    sub_25B889650(1, &v44);
    v47 = sub_25B88B5F4;
    v48 = v38;
    sub_25B889664(&v47, &v44, &v45, &v46);
    v47 = sub_25B88B5F4;
    v48 = v39;
    sub_25B889664(&v47, &v44, &v45, &v46);
    v47 = sub_25B8A3EB8;
    v48 = v40;
    sub_25B889664(&v47, &v44, &v45, &v46);
    _os_log_impl(&dword_25B859000, v42, v43, "Could not get IPv4 configuration: %@", v14, 0xCu);
    sub_25B8896B0(v15, 1, v13);
    sub_25B8896B0(v16, 0, MEMORY[0x277D84F70] + 8);
    sub_25B9474B8();
  }

  else
  {
  }

  v10 = *(v30 + 344);
  v8 = *(v30 + 288);
  v9 = *(v30 + 272);
  MEMORY[0x277D82BD8](v42);
  v10(v8, v9);

  v11 = *(v30 + 16);
  v12 = *(v30 + 24);
  sub_25B946ED8();
  *(v30 + 32) = v11;
  *(v30 + 40) = v12;
  if (*(v30 + 40))
  {
    sub_25B86AEEC(v30 + 32);
    v28 = *(v30 + 16);
    v29 = *(v30 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v28, v29);
  }

  else
  {
    sub_25B86AEEC(v30 + 32);
    (*(v30 + 320))(*(v30 + 304), *(v30 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v30 + 272));
    oslog = sub_25B946C18();
    v25 = sub_25B947458();
    v27 = sub_25B947838();
    if (os_log_type_enabled(oslog, v25))
    {
      buf = sub_25B9474D8();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v22 = sub_25B8895FC(0, v20, v20);
      v23 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v30 + 144) = buf;
      *(v30 + 152) = v22;
      *(v30 + 160) = v23;
      sub_25B889650(0, (v30 + 144));
      sub_25B889650(0, (v30 + 144));
      *(v30 + 168) = v27;
      v24 = swift_task_alloc();
      v24[2] = v30 + 144;
      v24[3] = v30 + 152;
      v24[4] = v30 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v25, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v22, 0, v20);
      sub_25B8896B0(v23, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v19 = *(v30 + 344);
    v17 = *(v30 + 304);
    v18 = *(v30 + 272);
    MEMORY[0x277D82BD8](oslog);
    v19(v17, v18);
  }

  sub_25B8A8DB4(*(v30 + 216));
  v6 = swift_task_alloc();
  *(v30 + 512) = v6;
  *v6 = *(v30 + 96);
  v6[1] = sub_25B8C56E0;

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C8E40()
{
  v4 = v0[45];
  v1 = v0[27];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  sub_25B86AEEC((v0 + 2));
  MEMORY[0x277D82BD8](v4);

  v2 = *(*(v5 + 96) + 8);

  return v2();
}

uint64_t sub_25B8C8FAC()
{
  *(v1 + 120) = v0;
  *(v1 + 64) = v1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 192) = 0;
  v2 = sub_25B946F98();
  *(v1 + 128) = v2;
  *(v1 + 136) = *(v2 - 8);
  *(v1 + 144) = swift_task_alloc();
  v3 = sub_25B946C48();
  *(v1 + 152) = v3;
  *(v1 + 160) = *(v3 - 8);
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 72) = v0;

  return MEMORY[0x2822009F8](sub_25B8C9114, 0);
}

uint64_t sub_25B8C9114()
{
  v0[8] = v0;
  type metadata accessor for NetworkInfoPingResult();
  v0[10] = sub_25B947838();
  v33 = sub_25B8A8A68();
  v34 = sub_25B8A61D0();
  v35 = v1;
  MEMORY[0x277D82BD8](v33);
  v0[2] = v34;
  v0[3] = v35;
  if (v0[3])
  {
    sub_25B86AEEC(v32 + 16);
    v31 = sub_25B8A8A68();
    *(v32 + 32) = sub_25B8A61D0();
    *(v32 + 40) = v2;
    if (*(v32 + 40))
    {
      v16 = *(v32 + 144);
      v15 = *(v32 + 128);
      v14 = *(v32 + 136);
      v12 = *(v32 + 32);
      v13 = *(v32 + 40);
      sub_25B946ED8();
      sub_25B86AEEC(v32 + 32);
      MEMORY[0x277D82BD8](v31);
      *(v32 + 48) = v12;
      *(v32 + 56) = v13;
      sub_25B946F68();
      sub_25B88BE14();
      v17 = sub_25B947528();
      (*(v14 + 8))(v16, v15);
      sub_25B86AEEC(v32 + 48);
      v18 = v17;
    }

    else
    {
      sub_25B86AEEC(v32 + 32);
      MEMORY[0x277D82BD8](v31);
      v18 = 0;
    }

    if (v18)
    {
      sub_25B946ED8();

      v11 = (v18 + 32);
    }

    else
    {
      v11 = 0;
    }

    v6 = *(v32 + 120);
    v7 = if_nametoindex(v11);
    swift_unknownObjectRelease();
    *(v32 + 192) = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
    MEMORY[0x277D82BE0](v6);
    v8 = swift_task_alloc();
    *(v32 + 176) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    *(v8 + 32) = v32 + 80;
    sub_25B87140C(v9, MEMORY[0x277D84F78] + 8);
    v5 = swift_task_alloc();
    *(v32 + 184) = v5;
    *v5 = *(v32 + 64);
    v5[1] = sub_25B8C987C;

    return MEMORY[0x282200600](v10, v9);
  }

  else
  {
    sub_25B86AEEC(v32 + 16);
    (*(*(v32 + 160) + 16))(*(v32 + 168), *(v32 + 120) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v32 + 152));
    v29 = sub_25B946C18();
    v28 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v30 = sub_25B947838();
    if (os_log_type_enabled(v29, v28))
    {
      v24 = sub_25B9474D8();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v25 = sub_25B8895FC(0, v23, v23);
      v26 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v32 + 88) = v24;
      *(v32 + 96) = v25;
      *(v32 + 104) = v26;
      sub_25B889650(0, (v32 + 88));
      sub_25B889650(0, (v32 + 88));
      *(v32 + 112) = v30;
      v27 = swift_task_alloc();
      v27[2] = v32 + 88;
      v27[3] = v32 + 96;
      v27[4] = v32 + 104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, v29, v28, "No primary interface? No ping.", v24, 2u);
      sub_25B8896B0(v25, 0, v23);
      sub_25B8896B0(v26, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v20 = *(v32 + 168);
    v21 = *(v32 + 152);
    v19 = *(v32 + 160);
    MEMORY[0x277D82BD8](v29);
    (*(v19 + 8))(v20, v21);
    v22 = sub_25B947838();
    sub_25B86CFA0((v32 + 80));

    v3 = *(*(v32 + 64) + 8);

    return v3(v22);
  }
}

uint64_t sub_25B8C987C()
{
  v2 = *(*v0 + 120);
  *(*v0 + 64) = *v0;

  return MEMORY[0x2822009F8](sub_25B8C99D4, 0);
}

uint64_t sub_25B8C99D4()
{
  *(v0 + 64) = v0;
  v3 = *(v0 + 80);
  sub_25B946ED8();
  sub_25B86CFA0((v0 + 80));

  v1 = *(*(v0 + 64) + 8);

  return v1(v3);
}

uint64_t sub_25B8C9AA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 144) = a5;
  *(v5 + 228) = a4;
  *(v5 + 136) = a3;
  *(v5 + 128) = a2;
  *(v5 + 64) = v5;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 224) = 0;
  *(v5 + 88) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 96) = 0;
  *(v5 + 232) = 0;
  *(v5 + 112) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 120) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0B0, &qword_25B94AF08);
  *(v5 + 152) = v6;
  *(v5 + 160) = *(v6 - 8);
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00);
  *(v5 + 176) = swift_task_alloc();
  v7 = sub_25B946C48();
  *(v5 + 184) = v7;
  *(v5 + 192) = *(v7 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 224) = a4;
  *(v5 + 88) = a5;

  return MEMORY[0x2822009F8](sub_25B8C9CE0, 0);
}

uint64_t sub_25B8C9CE0()
{
  v91 = v0;
  *(v0 + 64) = v0;
  v76 = sub_25B8A8A68();
  sub_25B8A5BC8(&v77);
  if (v78)
  {
    MEMORY[0x277D82BD8](v76);
  }

  else
  {
    v60 = v77;
    v1 = *(v75 + 208);
    v59 = *(v75 + 184);
    v61 = *(v75 + 228);
    v57 = *(v75 + 136);
    v58 = *(v75 + 192);
    *(v75 + 48) = v77;
    MEMORY[0x277D82BD8](v76);
    (*(v58 + 16))(v1, v57 + OBJC_IVAR___NetworkInfoAssessment_logger, v59);
    v62 = swift_allocObject();
    *(v62 + 16) = v60;
    v64 = swift_allocObject();
    *(v64 + 16) = v61;
    oslog = sub_25B946C18();
    v74 = sub_25B947448();
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_25B8D367C;
    *(v63 + 24) = v62;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_25B88B668;
    *(v68 + 24) = v63;
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = 4;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_25B89C9A8;
    *(v65 + 24) = v64;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_25B8D2E30;
    *(v71 + 24) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v72 = v2;

    *v72 = sub_25B88B5F4;
    v72[1] = v66;

    v72[2] = sub_25B88B5F4;
    v72[3] = v67;

    v72[4] = sub_25B88B6B4;
    v72[5] = v68;

    v72[6] = sub_25B88B5F4;
    v72[7] = v69;

    v72[8] = sub_25B88B5F4;
    v72[9] = v70;

    v72[10] = sub_25B8D2E7C;
    v72[11] = v71;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v74))
    {
      buf = sub_25B9474D8();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v55 = sub_25B8895FC(0, v53, v53);
      v56 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v86 = buf;
      v87 = v55;
      v88 = v56;
      sub_25B889650(2, &v86);
      sub_25B889650(2, &v86);
      v89 = sub_25B88B5F4;
      v90 = v66;
      sub_25B889664(&v89, &v86, &v87, &v88);
      v89 = sub_25B88B5F4;
      v90 = v67;
      sub_25B889664(&v89, &v86, &v87, &v88);
      v89 = sub_25B88B6B4;
      v90 = v68;
      sub_25B889664(&v89, &v86, &v87, &v88);
      v89 = sub_25B88B5F4;
      v90 = v69;
      sub_25B889664(&v89, &v86, &v87, &v88);
      v89 = sub_25B88B5F4;
      v90 = v70;
      sub_25B889664(&v89, &v86, &v87, &v88);
      v89 = sub_25B8D2E7C;
      v90 = v71;
      sub_25B889664(&v89, &v86, &v87, &v88);
      _os_log_impl(&dword_25B859000, oslog, v74, "Starting ping of %s via ifIndex %u", buf, 0x12u);
      sub_25B8896B0(v55, 0, v53);
      sub_25B8896B0(v56, 1, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v45 = *(v75 + 208);
    v46 = *(v75 + 184);
    v51 = *(v75 + 176);
    v48 = *(v75 + 228);
    v49 = *(v75 + 136);
    v44 = *(v75 + 192);
    MEMORY[0x277D82BD8](oslog);
    (*(v44 + 8))(v45, v46);
    sub_25B8D2F68();
    v47 = *(v49 + OBJC_IVAR___NetworkInfoAssessment_dispatchQueue);
    MEMORY[0x277D82BE0](v47);
    v52 = sub_25B8A99D4(v47);
    *(v75 + 120) = v52;
    v3 = sub_25B9472A8();
    (*(*(v3 - 8) + 56))(v51, 1);
    MEMORY[0x277D82BE0](v52);
    MEMORY[0x277D82BE0](v49);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = v52;
    *(v50 + 40) = v60;
    *(v50 + 56) = v48;
    *(v50 + 64) = v49;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0C8, &qword_25B94AF20);
    sub_25B8A5420(v51, &unk_25B94AF60, v50, v4);
    sub_25B8992C8(v51);
    MEMORY[0x277D82BD8](v52);
  }

  v42 = sub_25B8A8A68();
  sub_25B8A5D88(&v79);
  v43 = v79;
  if (v80)
  {
    MEMORY[0x277D82BD8](v42);
  }

  else
  {
    v5 = *(v75 + 200);
    v27 = *(v75 + 184);
    v28 = *(v75 + 228);
    v25 = *(v75 + 136);
    v26 = *(v75 + 192);
    *(v75 + 232) = v79;
    MEMORY[0x277D82BD8](v42);
    (*(v26 + 16))(v5, v25 + OBJC_IVAR___NetworkInfoAssessment_logger, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = v43;
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    log = sub_25B946C18();
    v41 = sub_25B947448();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_25B8D3310;
    *(v30 + 24) = v29;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_25B88B668;
    *(v35 + 24) = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 4;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_25B89C9A8;
    *(v32 + 24) = v31;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_25B8D2E30;
    *(v38 + 24) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v39 = v6;

    *v39 = sub_25B88B5F4;
    v39[1] = v33;

    v39[2] = sub_25B88B5F4;
    v39[3] = v34;

    v39[4] = sub_25B88B6B4;
    v39[5] = v35;

    v39[6] = sub_25B88B5F4;
    v39[7] = v36;

    v39[8] = sub_25B88B5F4;
    v39[9] = v37;

    v39[10] = sub_25B8D2E7C;
    v39[11] = v38;
    sub_25B8860FC();

    if (os_log_type_enabled(log, v41))
    {
      v22 = sub_25B9474D8();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v23 = sub_25B8895FC(0, v21, v21);
      v24 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v81 = v22;
      v82 = v23;
      v83 = v24;
      sub_25B889650(2, &v81);
      sub_25B889650(2, &v81);
      v84 = sub_25B88B5F4;
      v85 = v33;
      sub_25B889664(&v84, &v81, &v82, &v83);
      v84 = sub_25B88B5F4;
      v85 = v34;
      sub_25B889664(&v84, &v81, &v82, &v83);
      v84 = sub_25B88B6B4;
      v85 = v35;
      sub_25B889664(&v84, &v81, &v82, &v83);
      v84 = sub_25B88B5F4;
      v85 = v36;
      sub_25B889664(&v84, &v81, &v82, &v83);
      v84 = sub_25B88B5F4;
      v85 = v37;
      sub_25B889664(&v84, &v81, &v82, &v83);
      v84 = sub_25B8D2E7C;
      v85 = v38;
      sub_25B889664(&v84, &v81, &v82, &v83);
      _os_log_impl(&dword_25B859000, log, v41, "Starting ping of %s via ifIndex %u", v22, 0x12u);
      sub_25B8896B0(v23, 0, v21);
      sub_25B8896B0(v24, 1, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v13 = *(v75 + 200);
    v14 = *(v75 + 184);
    v19 = *(v75 + 176);
    v16 = *(v75 + 228);
    v17 = *(v75 + 136);
    v12 = *(v75 + 192);
    MEMORY[0x277D82BD8](log);
    (*(v12 + 8))(v13, v14);
    sub_25B8D2F68();
    v15 = *(v17 + OBJC_IVAR___NetworkInfoAssessment_dispatchQueue);
    MEMORY[0x277D82BE0](v15);
    v20 = sub_25B8A99D4(v15);
    *(v75 + 112) = v20;
    v7 = sub_25B9472A8();
    (*(*(v7 - 8) + 56))(v19, 1);
    MEMORY[0x277D82BE0](v20);
    MEMORY[0x277D82BE0](v17);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v20;
    *(v18 + 40) = v43;
    *(v18 + 44) = v16;
    *(v18 + 48) = v17;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0C8, &qword_25B94AF20);
    sub_25B8A5420(v19, &unk_25B94AF50, v18, v8);
    sub_25B8992C8(v19);
    MEMORY[0x277D82BD8](v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
  sub_25B947278();
  v9 = swift_task_alloc();
  *(v75 + 216) = v9;
  *v9 = *(v75 + 64);
  v9[1] = sub_25B8CB438;
  v10 = *(v75 + 152);

  return MEMORY[0x2822002E8](v75 + 16, 0, 0, v10);
}

uint64_t sub_25B8CB438()
{
  *(*v0 + 64) = *v0;

  return MEMORY[0x2822009F8](sub_25B8CB550, 0);
}

uint64_t sub_25B8CB550()
{
  v0[8] = v0;
  v6 = v0[3];
  if (v6 == 1)
  {
    (*(*(v5 + 160) + 8))();

    v1 = *(*(v5 + 64) + 8);

    return v1();
  }

  else
  {
    *(v5 + 32) = v0[2] & 1;
    *(v5 + 40) = v6;
    sub_25B946ED8();
    if (v6)
    {
      *(v5 + 96) = v6;
      type metadata accessor for NetworkInfoPingResult();
      sub_25B946ED8();
      *(v5 + 104) = NetworkInfoPingResult.__allocating_init(raw:)(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAFF0, &unk_25B94A9A0);
      sub_25B947208();
    }

    v3 = swift_task_alloc();
    *(v5 + 216) = v3;
    *v3 = *(v5 + 64);
    v3[1] = sub_25B8CB438;
    v4 = *(v5 + 152);

    return MEMORY[0x2822002E8](v5 + 16, 0, 0, v4);
  }
}

uint64_t sub_25B8CB864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 232) = a8;
  *(v8 + 260) = a7;
  *(v8 + 224) = a4;
  *(v8 + 216) = a1;
  *(v8 + 192) = v8;
  *(v8 + 200) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 256) = 0;
  *(v8 + 208) = 0;
  *&v10 = a5;
  *(&v10 + 1) = a6;
  *(v8 + 80) = v10;
  *(v8 + 200) = a4;
  *(v8 + 160) = v10;
  *(v8 + 256) = a7;
  *(v8 + 208) = a8;
  return MEMORY[0x2822009F8](sub_25B8CB8F0, 0);
}

uint64_t sub_25B8CB8F0()
{
  v5 = *(v0 + 260);
  v7 = *(v0 + 224);
  *(v0 + 192) = v0;
  IPv6Address.description.getter();
  v3 = sub_25B946F58();
  *(v0 + 240) = v3;

  sub_25B946F48("gateway-v6", 10, 1);
  v4 = sub_25B946F58();
  *(v0 + 248) = v4;

  v6 = sub_25B8CC1FC();
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_25B8CBAE0;
  v2 = swift_continuation_init();
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D0, &qword_25B94AF38);
  *(v0 + 128) = v2;
  *(v0 + 96) = MEMORY[0x277D85DD0];
  *(v0 + 104) = 1107296256;
  *(v0 + 108) = 0;
  *(v0 + 112) = sub_25B8CBCA8;
  *(v0 + 120) = &block_descriptor_512;
  [v7 startPing:v3 hostName:v4 interface:v5 pingCount:5 interPingInterval:1 burstCount:v6 & 1 interBurstInterval:0.25 timeout:1.0 stopTestOnFirstSuccess:2.0 withCompletion:v0 + 96];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CBAE0()
{
  *(*v0 + 192) = *v0;

  return MEMORY[0x2822009F8](sub_25B8CBBDC, 0);
}

uint64_t sub_25B8CBBDC()
{
  v1 = *(v0 + 248);
  v6 = *(v0 + 240);
  v2 = *(v0 + 216);
  *(v0 + 192) = v0;
  v3 = *(v0 + 184);
  *v2 = *(v0 + 176);
  *(v2 + 8) = v3;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v6);
  v4 = *(*(v0 + 192) + 8);

  return v4();
}

uint64_t sub_25B8CBCA8(uint64_t a1, char a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v10 = sub_25B946EA8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D8, &qword_25B94AF40);
  sub_25B8A57DC(v7, v9, v3);
  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a3);
}

uint64_t sub_25B8CBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 + 200) = a7;
  *(v7 + 236) = a6;
  *(v7 + 228) = a5;
  *(v7 + 192) = a4;
  *(v7 + 184) = a1;
  *(v7 + 160) = v7;
  *(v7 + 168) = 0;
  *(v7 + 224) = 0;
  *(v7 + 232) = 0;
  *(v7 + 176) = 0;
  *(v7 + 168) = a4;
  *(v7 + 224) = a5;
  *(v7 + 232) = a6;
  *(v7 + 176) = a7;
  return MEMORY[0x2822009F8](sub_25B8CBE44, 0);
}

uint64_t sub_25B8CBE44()
{
  v5 = *(v0 + 236);
  v7 = *(v0 + 192);
  *(v0 + 160) = v0;
  IPv4Address.description.getter();
  v3 = sub_25B946F58();
  *(v0 + 208) = v3;

  sub_25B946F48("gateway-v4", 10, 1);
  v4 = sub_25B946F58();
  *(v0 + 216) = v4;

  v6 = sub_25B8CC1FC();
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_25B8CC034;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D0, &qword_25B94AF38);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_25B8CBCA8;
  *(v0 + 104) = &block_descriptor_515;
  [v7 startPing:v3 hostName:v4 interface:v5 pingCount:5 interPingInterval:1 burstCount:v6 & 1 interBurstInterval:0.25 timeout:1.0 stopTestOnFirstSuccess:2.0 withCompletion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CC034()
{
  *(*v0 + 160) = *v0;

  return MEMORY[0x2822009F8](sub_25B8CC130, 0);
}

uint64_t sub_25B8CC130()
{
  v1 = *(v0 + 216);
  v6 = *(v0 + 208);
  v2 = *(v0 + 184);
  *(v0 + 160) = v0;
  v3 = *(v0 + 152);
  *v2 = *(v0 + 144);
  *(v2 + 8) = v3;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v6);
  v4 = *(*(v0 + 160) + 8);

  return v4();
}

uint64_t sub_25B8CC1FC()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoAssessment_stopPingTestOnFirstSuccess);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_25B8CC264(char a1)
{
  v3 = (v1 + OBJC_IVAR___NetworkInfoAssessment_stopPingTestOnFirstSuccess);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8CC344(uint64_t a1, uint64_t a2)
{
  *(v3 + 136) = v2;
  *(v3 + 128) = a2;
  *(v3 + 120) = a1;
  *(v3 + 64) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 216) = 0;
  v4 = sub_25B946C48();
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  v5 = sub_25B946F98();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 72) = v2;

  return MEMORY[0x2822009F8](sub_25B8CC4EC, 0);
}

uint64_t sub_25B8CC4EC()
{
  v0[8] = v0;
  type metadata accessor for NetworkInfoPingResult();
  v0[10] = sub_25B947838();
  v34 = sub_25B8A8A68();
  v35 = sub_25B8A61D0();
  v36 = v1;
  v0[24] = v1;
  if (v1)
  {
    v31 = *(v33 + 184);
    v30 = *(v33 + 168);
    v29 = *(v33 + 176);
    *(v33 + 32) = v35;
    *(v33 + 40) = v1;
    MEMORY[0x277D82BD8](v34);
    *(v33 + 48) = v35;
    *(v33 + 56) = v36;
    sub_25B946F68();
    sub_25B88BE14();
    v32 = sub_25B947528();
    (*(v29 + 8))(v31, v30);
    if (v32)
    {
      sub_25B946ED8();

      v28 = (v32 + 32);
    }

    else
    {
      v28 = 0;
    }

    v21 = *(v33 + 136);
    v23 = *(v33 + 128);
    v22 = *(v33 + 120);
    v24 = if_nametoindex(v28);
    swift_unknownObjectRelease();
    *(v33 + 216) = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
    MEMORY[0x277D82BE0](v21);
    sub_25B946ED8();
    v25 = swift_task_alloc();
    *(v33 + 200) = v25;
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    *(v25 + 32) = v23;
    *(v25 + 40) = v24;
    *(v25 + 48) = v33 + 80;
    sub_25B87140C(v26, MEMORY[0x277D84F78] + 8);
    v2 = swift_task_alloc();
    *(v33 + 208) = v2;
    *v2 = *(v33 + 64);
    v2[1] = sub_25B8CCC00;

    return MEMORY[0x282200600](v27, v26);
  }

  else
  {
    v3 = *(v33 + 160);
    v17 = *(v33 + 144);
    v15 = *(v33 + 136);
    v16 = *(v33 + 152);
    MEMORY[0x277D82BD8](v34);
    (*(v16 + 16))(v3, v15 + OBJC_IVAR___NetworkInfoAssessment_logger, v17);
    oslog = sub_25B946C18();
    v18 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v20 = sub_25B947838();
    if (os_log_type_enabled(oslog, v18))
    {
      buf = sub_25B9474D8();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v12 = sub_25B8895FC(0, v10, v10);
      v13 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v33 + 88) = buf;
      *(v33 + 96) = v12;
      *(v33 + 104) = v13;
      sub_25B889650(0, (v33 + 88));
      sub_25B889650(0, (v33 + 88));
      *(v33 + 112) = v20;
      v14 = swift_task_alloc();
      v14[2] = v33 + 88;
      v14[3] = v33 + 96;
      v14[4] = v33 + 104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v18, "No primary interface? No ping.", buf, 2u);
      sub_25B8896B0(v12, 0, v10);
      sub_25B8896B0(v13, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v7 = *(v33 + 160);
    v8 = *(v33 + 144);
    v6 = *(v33 + 152);
    MEMORY[0x277D82BD8](oslog);
    (*(v6 + 8))(v7, v8);
    v9 = sub_25B947838();
    sub_25B86CFA0((v33 + 80));

    v4 = *(*(v33 + 64) + 8);

    return v4(v9);
  }
}

uint64_t sub_25B8CCC00()
{
  v2 = *(*v0 + 136);
  *(*v0 + 64) = *v0;

  return MEMORY[0x2822009F8](sub_25B8CCD78, 0);
}

uint64_t sub_25B8CCD78()
{
  *(v0 + 64) = v0;
  v3 = *(v0 + 80);
  sub_25B946ED8();

  sub_25B86CFA0((v0 + 80));

  v1 = *(*(v0 + 64) + 8);

  return v1(v3);
}

uint64_t sub_25B8CCE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 368) = a7;
  *(v7 + 468) = a6;
  *(v7 + 360) = a5;
  *(v7 + 352) = a4;
  *(v7 + 344) = a3;
  *(v7 + 336) = a2;
  *(v7 + 272) = v7;
  *(v7 + 280) = 0;
  *(v7 + 288) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 464) = 0;
  *(v7 + 296) = 0;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  *(v7 + 200) = 0;
  *(v7 + 240) = 0;
  *(v7 + 248) = 0;
  *(v7 + 312) = 0;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 328) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00);
  *(v7 + 376) = swift_task_alloc();
  v8 = sub_25B946C48();
  *(v7 + 384) = v8;
  *(v7 + 392) = *(v8 - 8);
  *(v7 + 400) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0B0, &qword_25B94AF08);
  *(v7 + 408) = v9;
  *(v7 + 416) = *(v9 - 8);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 280) = a2;
  *(v7 + 288) = a3;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 464) = a6;
  *(v7 + 296) = a7;

  return MEMORY[0x2822009F8](sub_25B8CD0C8, 0);
}

uint64_t sub_25B8CD0C8()
{
  *(v0 + 272) = v0;
  v4 = sub_25B8A8F5C();
  *(v0 + 432) = v4;
  sub_25B946ED8();
  v3 = sub_25B946F58();
  *(v0 + 440) = v3;

  *(v0 + 16) = *(v0 + 272);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_25B8CD24C;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB040, &qword_25B94A9D8);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_25B8C3354;
  *(v0 + 104) = &block_descriptor_375;
  [v4 resolveHostname:v3 withCompletion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CD24C()
{
  *(*v0 + 272) = *v0;

  return MEMORY[0x2822009F8](sub_25B8CD348, 0);
}

uint64_t sub_25B8CD348()
{
  v58 = v0;
  v50 = *(v0 + 440);
  v1 = *(v0 + 432);
  *(v0 + 272) = v0;
  v2 = *(v0 + 160);
  v51 = *(v0 + 168);
  *(v0 + 448) = v51;
  *(v0 + 176) = v2;
  *(v0 + 184) = v51;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v50);
  sub_25B946ED8();
  *(v0 + 304) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  sub_25B89906C();
  sub_25B947418();
  v52 = 0;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC80, &qword_25B94A5C8);
    sub_25B9475E8();
    v47 = *(v49 + 208);
    v48 = *(v49 + 216);
    if (!v48)
    {
      break;
    }

    v3 = *(v49 + 400);
    v4 = *(v49 + 392);
    v5 = *(v49 + 384);
    v32 = *(v49 + 468);
    v31 = *(v49 + 360);
    v30 = *(v49 + 352);
    v6 = *(v49 + 344);
    *(v49 + 256) = v47;
    *(v49 + 264) = v48;
    (*(v4 + 16))(v3, v6 + OBJC_IVAR___NetworkInfoAssessment_logger, v5);
    sub_25B946ED8();
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    oslog = sub_25B946C18();
    v45 = sub_25B947448();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_25B8994FC;
    *(v34 + 24) = v33;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_25B88B668;
    *(v39 + 24) = v34;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    v41 = swift_allocObject();
    *(v41 + 16) = 4;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_25B89C9A8;
    *(v36 + 24) = v35;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_25B8D2E30;
    *(v42 + 24) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v43 = v7;

    *v43 = sub_25B88B5F4;
    v43[1] = v37;

    v43[2] = sub_25B88B5F4;
    v43[3] = v38;

    v43[4] = sub_25B88B6B4;
    v43[5] = v39;

    v43[6] = sub_25B88B5F4;
    v43[7] = v40;

    v43[8] = sub_25B88B5F4;
    v43[9] = v41;

    v43[10] = sub_25B8D2E7C;
    v43[11] = v42;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v45))
    {
      buf = sub_25B9474D8();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(0, v26, v26);
      v29 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v53 = buf;
      v54 = v28;
      v55 = v29;
      sub_25B889650(2, &v53);
      sub_25B889650(2, &v53);
      v56 = sub_25B88B5F4;
      v57 = v37;
      sub_25B889664(&v56, &v53, &v54, &v55);
      v56 = sub_25B88B5F4;
      v57 = v38;
      sub_25B889664(&v56, &v53, &v54, &v55);
      v56 = sub_25B88B6B4;
      v57 = v39;
      sub_25B889664(&v56, &v53, &v54, &v55);
      v56 = sub_25B88B5F4;
      v57 = v40;
      sub_25B889664(&v56, &v53, &v54, &v55);
      v56 = sub_25B88B5F4;
      v57 = v41;
      sub_25B889664(&v56, &v53, &v54, &v55);
      v56 = sub_25B8D2E7C;
      v57 = v42;
      sub_25B889664(&v56, &v53, &v54, &v55);
      _os_log_impl(&dword_25B859000, oslog, v45, "Starting ping of %s via ifIndex %u", buf, 0x12u);
      sub_25B8896B0(v28, 0, v26);
      sub_25B8896B0(v29, 1, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();

      v24 = 0;
      v25 = 0;
    }

    else
    {

      v24 = v52;
      v25 = v46;
    }

    v14 = *(v49 + 400);
    v15 = *(v49 + 384);
    v22 = *(v49 + 376);
    v19 = *(v49 + 468);
    v18 = *(v49 + 360);
    v17 = *(v49 + 352);
    v20 = *(v49 + 344);
    v13 = *(v49 + 392);
    MEMORY[0x277D82BD8](oslog);
    (*(v13 + 8))(v14, v15);
    sub_25B8D2F68();
    v16 = *(v20 + OBJC_IVAR___NetworkInfoAssessment_dispatchQueue);
    MEMORY[0x277D82BE0](v16);
    v23 = sub_25B8A99D4(v16);
    *(v49 + 328) = v23;
    v10 = sub_25B9472A8();
    (*(*(v10 - 8) + 56))(v22, 1);
    MEMORY[0x277D82BE0](v23);
    sub_25B946ED8();
    MEMORY[0x277D82BE0](v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v23;
    *(v21 + 40) = v47;
    *(v21 + 48) = v48;
    *(v21 + 56) = v17;
    *(v21 + 64) = v18;
    *(v21 + 72) = v19;
    *(v21 + 80) = v20;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0C8, &qword_25B94AF20);
    sub_25B8A5420(v22, &unk_25B94AF18, v21, v11);
    sub_25B8992C8(v22);
    MEMORY[0x277D82BD8](v23);
    v52 = v24;
    v46 = v25;
  }

  sub_25B86CFA0((v49 + 192));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
  sub_25B947278();
  v8 = swift_task_alloc();
  *(v49 + 456) = v8;
  *v8 = *(v49 + 272);
  v8[1] = sub_25B8CE268;
  v9 = *(v49 + 408);

  return MEMORY[0x2822002E8](v49 + 224, 0, 0, v9);
}

uint64_t sub_25B8CE268()
{
  *(*v0 + 272) = *v0;

  return MEMORY[0x2822009F8](sub_25B8CE380, 0);
}

uint64_t sub_25B8CE380()
{
  v0[34] = v0;
  v6 = v0[29];
  if (v6 == 1)
  {
    (*(*(v5 + 416) + 8))();

    v1 = *(*(v5 + 272) + 8);

    return v1();
  }

  else
  {
    *(v5 + 240) = v0[28] & 1;
    *(v5 + 248) = v6;
    sub_25B946ED8();
    if (v6)
    {
      *(v5 + 312) = v6;
      type metadata accessor for NetworkInfoPingResult();
      sub_25B946ED8();
      *(v5 + 320) = NetworkInfoPingResult.__allocating_init(raw:)(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAFF0, &unk_25B94A9A0);
      sub_25B947208();
    }

    v3 = swift_task_alloc();
    *(v5 + 456) = v3;
    *v3 = *(v5 + 272);
    v3[1] = sub_25B8CE268;
    v4 = *(v5 + 408);

    return MEMORY[0x2822002E8](v5 + 224, 0, 0, v4);
  }
}

uint64_t sub_25B8CE678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = v11;
  *(v8 + 292) = v10;
  *(v8 + 256) = a8;
  *(v8 + 248) = a7;
  *(v8 + 240) = a6;
  *(v8 + 232) = a5;
  *(v8 + 224) = a4;
  *(v8 + 216) = a1;
  *(v8 + 192) = v8;
  *(v8 + 200) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 288) = 0;
  *(v8 + 208) = 0;
  *(v8 + 200) = a4;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 288) = v10;
  *(v8 + 208) = v11;
  return MEMORY[0x2822009F8](sub_25B8CE724, 0);
}

uint64_t sub_25B8CE724()
{
  v9 = *(v0 + 292);
  v5 = *(v0 + 256);
  v4 = *(v0 + 248);
  v3 = *(v0 + 240);
  v2 = *(v0 + 232);
  v11 = *(v0 + 224);
  *(v0 + 192) = v0;
  sub_25B946ED8();
  v7 = sub_25B946F58();
  *(v0 + 272) = v7;

  sub_25B946ED8();
  v8 = sub_25B946F58();
  *(v0 + 280) = v8;

  v10 = sub_25B8CC1FC();
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_25B8CE918;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D0, &qword_25B94AF38);
  *(v0 + 112) = v6;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_25B8CBCA8;
  *(v0 + 104) = &block_descriptor_424;
  [v11 startPing:v7 hostName:v8 interface:v9 pingCount:5 interPingInterval:1 burstCount:v10 & 1 interBurstInterval:0.25 timeout:1.0 stopTestOnFirstSuccess:2.0 withCompletion:{v0 + 80, v2, v3, v4, v5}];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CE918()
{
  *(*v0 + 192) = *v0;

  return MEMORY[0x2822009F8](sub_25B8CEA14, 0);
}

uint64_t sub_25B8CEA14()
{
  v1 = *(v0 + 280);
  v6 = *(v0 + 272);
  v2 = *(v0 + 216);
  *(v0 + 192) = v0;
  v3 = *(v0 + 184);
  *v2 = *(v0 + 176);
  *(v2 + 8) = v3;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v6);
  v4 = *(*(v0 + 192) + 8);

  return v4();
}

id NetworkInfoAssessment.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoAssessment(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25B8CECE8()
{
  v2 = qword_27FBAAF98;
  if (!qword_27FBAAF98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8CED64()
{
  v2 = qword_27FBAAFA0;
  if (!qword_27FBAAFA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAFA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8CEDE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B946C48();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_25B8CEE44(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B946C48();
  (*(*(v2 - 8) + 40))(a2, a1);
  return a2;
}

uint64_t sub_25B8CEEA8(uint64_t a1)
{
  v1 = sub_25B946C48();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_25B8CEF04(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B946C48();
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

unint64_t sub_25B8CEF68()
{
  v2 = qword_27FBAAFE0;
  if (!qword_27FBAAFE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAAFE0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for NetworkInfoAssessment(uint64_t a1)
{
  v2 = qword_27FBAB060;
  if (!qword_27FBAB060)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

id sub_25B8CF0CC(uint64_t a1)
{
  v4 = [v1 initWithQueue_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_25B8CF154(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_25B9473C8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_25B947638();
  __break(1u);
LABEL_12:
  result = sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
  __break(1u);
  return result;
}

uint64_t sub_25B8CF480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_25B8D2B90;
        v16 = &v37;
        sub_25B8CF154(sub_25B8D2BAC, &v13, v11);
        return v10;
      }

      sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StaticString.swift", 24, 2, 148, 0);
      __break(1u);
    }

    sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 268, 0);
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 269, 0);
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                    __break(1u);
                  }

                  sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                  __break(1u);
                }

                sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
                __break(1u);
              }

              sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
              __break(1u);
            }

            sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
            __break(1u);
          }

          sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
          __break(1u);
        }

        sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_25B947638();
    __break(1u);
  }

  result = sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StaticString.swift", 24, 2, 136, 0);
  __break(1u);
  return result;
}

uint64_t sub_25B8CFCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 268, 0);
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 269, 0);
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 270, 0);
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                __break(1u);
              }

              sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
              __break(1u);
            }

            sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
            __break(1u);
          }

          sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
          __break(1u);
        }

        sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
      __break(1u);
    }

    sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
    __break(1u);
  }

  result = sub_25B947618("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
  __break(1u);
  return result;
}

uint64_t sub_25B8D0430(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B8D0464()
{
  v2 = qword_27FBAAFF8;
  if (!qword_27FBAAFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAFF0, &unk_25B94A9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D04EC()
{
  v2 = qword_27FBAB008;
  if (!qword_27FBAB008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB000, &qword_25B94A9B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D06CC()
{
  v2 = qword_27FBAB018;
  if (!qword_27FBAB018)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D0744()
{
  v2 = qword_27FBAB020;
  if (!qword_27FBAB020)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB020);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D07BC()
{
  v2 = *(sub_25B946B48() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_25B8D0888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B946B48();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_25B8C3480(v3, a1);
}

uint64_t sub_25B8D093C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_25B946B48();
  v1 = sub_25B8D0998();

  return sub_25B889718(v5, v3, v4, v1);
}

unint64_t sub_25B8D0998()
{
  v2 = qword_27FBAB028;
  if (!qword_27FBAB028)
  {
    sub_25B946B48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D0F38()
{
  v2 = *(sub_25B946B48() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_25B8D16B4()
{
  _Block_release(*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_25B8D1704()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_25B88B7A0;

  return sub_25B8C3570(v6, v5);
}

uint64_t sub_25B8D1A94(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_25B88B7A0;

  return sub_25B8C9AA0(a1, a2, v8, v9, v10);
}

uint64_t sub_25B8D1B74(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_25B88B7A0;

  return sub_25B8CCE64(a1, a2, v8, v9, v10, v11, v12);
}

unint64_t sub_25B8D1C84()
{
  v2 = qword_27FBAB058;
  if (!qword_27FBAB058)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D1D94(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8D1EFC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_25B8D210C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8D2274(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25B8D24BC(uint64_t a1)
{
  updated = sub_25B946C48();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of NetworkInfoAssessment.run()()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *((*v0 & *MEMORY[0x277D85000]) + 0x110);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B8A4CA0;

  return v6();
}

unint64_t sub_25B8D279C()
{
  v2 = qword_27FBAB070;
  if (!qword_27FBAB070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2830()
{
  v2 = qword_27FBAB078;
  if (!qword_27FBAB078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D28C4()
{
  v2 = qword_27FBAB080;
  if (!qword_27FBAB080)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2958()
{
  v2 = qword_27FBAB088;
  if (!qword_27FBAB088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D29EC()
{
  v2 = qword_27FBAB090;
  if (!qword_27FBAB090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2A80()
{
  v2 = qword_27FBAB098;
  if (!qword_27FBAB098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2AFC()
{
  v2 = qword_27FBAB0A8;
  if (!qword_27FBAB0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAADA0, &unk_25B949920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D2DB4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25B8D2E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_25B8D2EF0();
  v5 = MEMORY[0x277D84CC0];

  return sub_25B8A34EC(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_25B8D2EF0()
{
  v2 = qword_27FBAB0B8;
  if (!qword_27FBAB0B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2F68()
{
  v2 = qword_27FBAB0C0;
  if (!qword_27FBAB0C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAB0C0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_25B8D2FCC()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  MEMORY[0x277D82BD8](*(v0 + 80));
  return swift_deallocObject();
}

uint64_t sub_25B8D303C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8CE678(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_25B8D31B0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8A317C(a1, v6);
}

uint64_t sub_25B8D34F4()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_25B8D3554(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 44);
  v11 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8CBDC8(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_25B8D3874()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 64));
  return swift_deallocObject();
}

uint64_t sub_25B8D38D4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B8D39E4;

  return sub_25B8CB864(a1, v6, v7, v8, v9, *(&v9 + 1), v10, v11);
}

uint64_t sub_25B8D39E4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_25B8D3B4C()
{
  v2 = qword_27FBAB0E0;
  if (!qword_27FBAB0E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D3C04()
{
  v2 = qword_27FBAB0E8;
  if (!qword_27FBAB0E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D3CC0(uint64_t a1, uint64_t a2)
{
  sub_25B947838();
  *v2 = "type";
  *(v2 + 8) = 4;
  *(v2 + 16) = 2;
  *(v2 + 24) = "errorMessage";
  *(v2 + 32) = 12;
  *(v2 + 40) = 2;
  sub_25B8860FC();
  v6 = sub_25B947658();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_25B8D3DF4(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = sub_25B8D3CC0(a1, a2);

  if (v6 == 2)
  {
    return 2;
  }

  else
  {
    return v6 & 1;
  }
}

uint64_t sub_25B8D3E98(char a1)
{
  if (a1)
  {
    return sub_25B946F48("errorMessage", 12, 1);
  }

  else
  {
    return sub_25B946F48("type", 4, 1);
  }
}

uint64_t sub_25B8D4074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25B8D3CC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25B8D40AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B8D3E98(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B8D4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8D3DF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t TCPConnectionState.encode(to:)(uint64_t a1)
{
  v39 = a1;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB110, &qword_25B94AF70);
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v12 - v43;
  v59 = v12 - v43;
  v58 = MEMORY[0x28223BE20](v39);
  v44 = *v1;
  v48 = v1[1];
  v56 = v44;
  v57 = v48;
  v46 = v58[3];
  v47 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v46);
  sub_25B8D4D90();
  sub_25B9479C8();
  if (v48)
  {
    if (v48 == 1)
    {
      sub_25B946F48("timedOut", 8, 1);
      v7 = v38;
      v22 = v8;
      v54 = 0;
      sub_25B947738();
      v23 = v7;
      v24 = v7;
      if (!v7)
      {

        v32 = v23;
        goto LABEL_14;
      }

      v13 = v24;

      result = (*(v41 + 8))(v45, v40);
      v17 = v13;
    }

    else if (v48 == 2)
    {
      sub_25B946F48("pending", 7, 1);
      v9 = v38;
      v19 = v10;
      v55 = 0;
      sub_25B947738();
      v20 = v9;
      v21 = v9;
      if (!v9)
      {

        v32 = v20;
        goto LABEL_14;
      }

      v12[1] = v21;

      return (*(v41 + 8))(v45, v40);
    }

    else
    {
      v36 = v44;
      v37 = v48;
      v28 = v48;
      v27 = v44;
      sub_25B946ED8();
      v52 = v27;
      v53 = v28;
      sub_25B946F48("failed", 6, 1);
      v4 = v38;
      v29 = v5;
      v51 = 0;
      sub_25B947738();
      v30 = v4;
      v31 = v4;
      if (v4)
      {
        v15 = v31;

        result = (*(v41 + 8))(v45, v40);
        v17 = v15;
      }

      else
      {

        v6 = v30;
        v50 = 1;
        sub_25B947738();
        v25 = v6;
        v26 = v6;
        if (!v6)
        {

          v32 = v25;
          goto LABEL_14;
        }

        v14 = v26;

        result = (*(v41 + 8))(v45, v40);
        v17 = v14;
      }
    }
  }

  else
  {
    sub_25B946F48("connected", 9, 1);
    v2 = v38;
    v33 = v3;
    v49 = 0;
    sub_25B947738();
    v34 = v2;
    v35 = v2;
    if (!v2)
    {

      v32 = v34;
LABEL_14:
      v18 = v32;
      return (*(v41 + 8))(v45, v40);
    }

    v16 = v35;

    result = (*(v41 + 8))(v45, v40);
    v17 = v16;
  }

  return result;
}

uint64_t sub_25B8D477C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC11NetworkInfo8TCPProbe_logger;
  v2 = sub_25B946C48();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B8D47F0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8D4860(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_25B8D4964()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8D49D4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

char *TCPProbe.init(metrics:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = a1;
  v12 = a2;
  sub_25B946F48("com.apple.NetworkInfo", 21, 1);
  sub_25B946F48("TCP", 3, 1);
  sub_25B946C28();
  *OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics = 0;
  *&v14[OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue] = 0;
  MEMORY[0x277D82BE0](a1);
  v5 = &v14[OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics];
  swift_beginAccess();
  v2 = *v5;
  *v5 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v6 = v14;
  MEMORY[0x277D82BE0](a2);
  v7 = &v6[OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue];
  swift_beginAccess();
  v3 = *v7;
  *v7 = a2;
  MEMORY[0x277D82BD8](v3);
  swift_endAccess();
  v11.receiver = v14;
  v11.super_class = type metadata accessor for TCPProbe(0);
  v10 = objc_msgSendSuper2(&v11, sel_init);
  MEMORY[0x277D82BE0](v10);
  v14 = v10;
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v14);
  return v10;
}

unint64_t sub_25B8D4D14()
{
  v2 = qword_27FBAB100;
  if (!qword_27FBAB100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D4D90()
{
  v2 = qword_27FBAB108;
  if (!qword_27FBAB108)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB108);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for TCPProbe(uint64_t a1)
{
  v2 = qword_27FBAB158;
  if (!qword_27FBAB158)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_25B8D4E80(uint64_t a1, uint64_t a2)
{
  v3[29] = v2;
  v3[28] = a2;
  v3[27] = a1;
  v3[20] = v3;
  v3[10] = 0;
  v3[11] = 0;
  v3[21] = 0;
  v3[22] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v4 = sub_25B946B98();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB120, &qword_25B94AF80);
  v3[33] = swift_task_alloc();
  sub_25B946BB8();
  v3[34] = swift_task_alloc();
  v5 = sub_25B946BD8();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_25B946D38();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v7 = sub_25B946D08();
  v3[43] = v7;
  v3[44] = *(v7 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[10] = a1;
  v3[11] = a2;
  v3[21] = v2;

  return MEMORY[0x2822009F8](sub_25B8D51B0, 0);
}

uint64_t sub_25B8D51B0()
{
  v57 = v0;
  v54 = v0[28];
  v53 = v0[27];
  v0[20] = v0;
  sub_25B946ED8();
  v0[12] = v53;
  v0[13] = v54;
  v0[14] = sub_25B946F48(":", 1, 1);
  v0[15] = v1;
  sub_25B8D5FC8();
  sub_25B8D5FB0();
  v55 = sub_25B947408();
  v0[47] = v55;
  sub_25B86AEEC((v0 + 14));
  v0[22] = v55;
  sub_25B946D28();
  v0[23] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB130, &qword_25B94AF88);
  sub_25B8D6040();
  if (sub_25B9473E8())
  {
    v50 = v52[42];
    v49 = v52[38];
    v51 = v52[37];
    v47 = v52[35];
    v42 = v52[28];
    v41 = v52[27];
    v48 = v52[39];
    v46 = v52[36];
    sub_25B946BA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB140, &qword_25B94AF90);
    sub_25B947838();
    v43 = v2;
    v44 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v43 = sub_25B946F78();
    v43[1] = v3;
    v52[16] = sub_25B947818();
    v52[17] = v4;
    v5 = sub_25B946F48("Could not parse hostname from ", 30, 1);
    MEMORY[0x25F8715F0](v5);

    v52[18] = v41;
    v52[19] = v42;
    v45 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    v6 = sub_25B946F48("", 0, 1);
    MEMORY[0x25F8715F0](v6);

    sub_25B946ED8();
    sub_25B86AEEC((v52 + 16));
    v7 = sub_25B946FE8();
    v43[5] = v45;
    v43[2] = v7;
    v43[3] = v8;
    sub_25B8860FC();
    MEMORY[0x277D82BD8](v44);
    sub_25B946EC8();
    sub_25B8DAAF8();
    sub_25B946AE8();
    sub_25B946BC8();
    swift_willThrow();
    (*(v46 + 8))(v51, v47);
    (*(v48 + 8))(v50, v49);

    v9 = *(v52[20] + 8);

    return v9();
  }

  else
  {
    v38 = v52[46];
    v39 = v52[45];
    v40 = v52[43];
    v37 = v52[44];
    sub_25B947228();
    sub_25B9474F8();

    sub_25B946D18();
    (*(v37 + 32))(v38, v39, v40);
    if (sub_25B9471E8() == 2)
    {
      v35 = v52[38];
      v34 = v52[33];
      v33 = v52[39];
      sub_25B947228();
      sub_25B9470E8();

      sub_25B946D48();
      v36 = *(v33 + 48);
      if (v36(v34, 1, v35) == 1)
      {
        v32 = v52[38];
        v31 = v52[33];
        sub_25B946D28();
        if (v36(v31, 1, v32) != 1)
        {
          sub_25B8DAA50(v52[33]);
        }
      }

      else
      {
        (*(v52[39] + 32))(v52[41], v52[33], v52[38]);
      }

      (*(v52[39] + 40))(v52[42], v52[41], v52[38]);
    }

    v15 = v52[46];
    v20 = v52[45];
    v14 = v52[43];
    v17 = v52[42];
    v19 = v52[40];
    v18 = v52[38];
    v22 = v52[32];
    v24 = v52[29];
    v26 = v52[28];
    v25 = v52[27];
    v13 = v52[44];
    v16 = v52[39];
    v30 = type metadata accessor for NetworkInfoTCPConnectResult();
    v23 = NetworkInfoTCPConnectResult.__allocating_init()();
    v52[48] = v23;
    v52[24] = v23;
    sub_25B946ED8();
    sub_25B8E2738(v25, v26);
    v56[0] = 0;
    v56[1] = 2;
    sub_25B8E29D0(v56);
    sub_25B946B88();
    sub_25B946DF8();
    (*(v13 + 16))(v20, v15, v14);
    (*(v16 + 16))(v19, v17, v18);
    sub_25B946E18();
    sub_25B946E08();
    v21 = sub_25B946DA8();
    v52[49] = v21;
    v52[25] = v21;
    v27 = sub_25B946F48("probeHost(endpoint:)", 20, 1);
    v28 = v11;
    v52[50] = v11;

    MEMORY[0x277D82BE0](v23);
    MEMORY[0x277D82BE0](v24);
    sub_25B946ED8();
    v29 = swift_task_alloc();
    v52[51] = v29;
    v29[2] = v21;
    v29[3] = v22;
    v29[4] = v23;
    v29[5] = v24;
    v29[6] = v25;
    v29[7] = v26;
    v12 = swift_task_alloc();
    v52[52] = v12;
    *v12 = v52[20];
    v12[1] = sub_25B8D5BE4;

    return MEMORY[0x2822007B8](v52 + 26, 0, 0, v27, v28, sub_25B8DAA34, v29, v30);
  }
}

uint64_t sub_25B8D5BE4()
{
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 232);
  *(*v0 + 160) = *v0;

  return MEMORY[0x2822009F8](sub_25B8D5DBC, 0);
}

uint64_t sub_25B8D5DBC()
{
  v5 = v0[48];
  v10 = v0[46];
  v8 = v0[44];
  v9 = v0[43];
  v11 = v0[42];
  v6 = v0[39];
  v7 = v0[38];
  v12 = v0[32];
  v3 = v0[31];
  v4 = v0[30];
  v0[20] = v0;
  v13 = v0[26];

  (*(v3 + 8))(v12, v4);
  MEMORY[0x277D82BD8](v5);
  (*(v6 + 8))(v11, v7);
  (*(v8 + 8))(v10, v9);

  v1 = *(v0[20] + 8);

  return v1(v13);
}

unint64_t sub_25B8D5FC8()
{
  v2 = qword_27FBAB128;
  if (!qword_27FBAB128)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D6040()
{
  v2 = qword_27FBAB138;
  if (!qword_27FBAB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB130, &qword_25B94AF88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a1;
  v48 = a2;
  v58 = a3;
  v78 = a4;
  v90 = a5;
  v56 = a6;
  v57 = a7;
  v89 = sub_25B8DB698;
  v49 = &unk_25B94B1C8;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v52 = "NetworkInfo/TCPProbe.swift";
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00);
  v53 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v54 = &v39 - v53;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v81 = *(v85 - 8);
  v82 = v85 - 8;
  v67 = v81;
  v68 = *(v81 + 64);
  v55 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v84 = &v39 - v55;
  v75 = sub_25B946B98();
  v71 = *(v75 - 8);
  v72 = v75 - 8;
  v65 = v71;
  v66 = v71[8];
  v59 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v74 = &v39 - v59;
  v98 = v62;
  v97 = a2;
  v96 = v9;
  v95 = v10;
  v94 = v11;
  v92 = v12;
  v93 = v13;
  v60 = v71[2];
  v61 = v71 + 2;
  v60();
  MEMORY[0x277D82BE0](v78);

  v63 = *(v81 + 16);
  v64 = v81 + 16;
  v63(v84, v62, v85);
  v69 = *(v65 + 20);
  v73 = (v69 + 16) & ~v69;
  v79 = (v73 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = *(v67 + 80);
  v83 = (v80 + 8 + v70) & ~v70;
  v88 = swift_allocObject();
  v76 = v71[4];
  v77 = v71 + 4;
  v76(v88 + v73, v74, v75);
  v14 = v80;
  v15 = v81;
  v16 = v83;
  v17 = v84;
  v18 = v85;
  v19 = v88;
  *(v88 + v79) = v78;
  *(v19 + v14) = a2;
  v86 = *(v15 + 32);
  v87 = v15 + 32;
  v86(v19 + v16, v17, v18);
  sub_25B946D98();
  v91 = sub_25B8D4964();
  if (v91)
  {
    v47 = v91;
  }

  else
  {
    sub_25B947618(v50, 11, 2, v51, 68, 2, v52, 26, 2, 135, 0);
    __break(1u);
  }

  v39 = v47;
  sub_25B946DC8();
  MEMORY[0x277D82BD8](v39);
  v45 = 0;
  v20 = sub_25B9472A8();
  (*(*(v20 - 8) + 56))(v54, 1);
  MEMORY[0x277D82BE0](v78);
  (v60)(v74, v58, v75);
  MEMORY[0x277D82BE0](v90);
  sub_25B946ED8();

  v63(v84, v62, v85);
  v40 = (v69 + 40) & ~v69;
  v44 = (v40 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 8 + v70) & ~v70;
  v21 = swift_allocObject();
  v22 = v78;
  v23 = v40;
  v24 = v74;
  v25 = v75;
  v26 = v76;
  v46 = v21;
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v22;
  v26(v21 + v23, v24, v25);
  v27 = v41;
  v28 = v56;
  v29 = v57;
  v30 = v48;
  v31 = v42;
  v32 = v43;
  v33 = v84;
  v34 = v85;
  v35 = v86;
  v36 = v46;
  *(v46 + v44) = v90;
  v37 = (v36 + v27);
  *v37 = v28;
  v37[1] = v29;
  *(v36 + v31) = v30;
  v35(v36 + v32, v33, v34);
  sub_25B8DA2CC(v45, v45, v54, v49, v46, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_25B8D68AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v146 = a1;
  v147 = a2;
  v148 = a3;
  v144 = a4;
  v145 = a5;
  v96 = "Fatal error";
  v97 = "Double value cannot be converted to UInt32 because it is either infinite or NaN";
  v98 = "Swift/IntegerTypes.swift";
  v99 = "Double value cannot be converted to UInt32 because the result would be less than UInt32.min";
  v100 = "Double value cannot be converted to UInt32 because the result would be greater than UInt32.max";
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v201 = 0;
  v189 = 0.0;
  v186 = 0.0;
  v182 = 0;
  v183 = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  v176 = 0;
  v177 = 0;
  v200 = 0;
  v170 = 0;
  v171 = 0;
  v158 = 0;
  v159 = 0;
  v198 = 0;
  v199 = 0;
  v154 = 0;
  v155 = 0;
  v136 = 0;
  v101 = sub_25B946E48();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v105 = v47 - v104;
  v201 = v47 - v104;
  v106 = sub_25B946D58();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v106);
  v110 = v47 - v109;
  v111 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A0, &qword_25B94B1F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v136);
  v112 = v47 - v111;
  v113 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v114 = v47 - v113;
  v200 = v47 - v113;
  v115 = sub_25B946D38();
  v116 = *(v115 - 8);
  v117 = v115 - 8;
  v118 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136);
  v119 = v47 - v118;
  v199 = v47 - v118;
  v120 = sub_25B946D08();
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120);
  v124 = v47 - v123;
  v198 = v47 - v123;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A8, &qword_25B94B200);
  v125 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v126 = v47 - v125;
  v127 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v128 = v47 - v127;
  v129 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1B0, &qword_25B94B208) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136);
  v130 = v47 - v129;
  v131 = sub_25B946E38();
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v134 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136);
  v135 = v47 - v134;
  v197 = v47 - v134;
  v137 = sub_25B946B98();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v136);
  v141 = v47 - v140;
  v196 = v47 - v140;
  v142 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v143 = v47 - v142;
  v195 = v47 - v142;
  v151 = sub_25B946DB8();
  v149 = *(v151 - 8);
  v150 = v151 - 8;
  MEMORY[0x28223BE20](v151);
  v152 = v47 - v12;
  v194 = v13;
  v193 = v147;
  v192 = v148;
  v191 = v14;
  v190 = v15;
  (*(v149 + 16))();
  result = (*(v149 + 88))(v152, v151);
  v153 = result;
  if (result == *MEMORY[0x277CD8DE8])
  {
    (*(v149 + 96))(v152, v151);
    return (*(v102 + 8))(v152, v101);
  }

  if (v153 == *MEMORY[0x277CD8DE0])
  {
    (*(v149 + 96))(v152, v151);
    (*(v102 + 32))(v105, v152, v101);
    v201 = v105;
    sub_25B946B88();
    sub_25B946B58();
    v48 = v45 * 1000.0;
    v189 = v45 * 1000.0;
    sub_25B8DC85C();
    v188[0] = sub_25B9478F8();
    v188[1] = v46;
    sub_25B8E29D0(v188);
    if (((*&v48 >> 52) & 0x7FFLL) == 0x7FF)
    {
      sub_25B947618(v96, 11, 2, v97, 79, 2, v98, 24, 2, 4024, 0);
      __break(1u);
    }

    if (v48 <= -1.0)
    {
      sub_25B947618(v96, 11, 2, v99, 91, 2, v98, 24, 2, 4027, 0);
      __break(1u);
    }

    if (v48 >= 4294967300.0)
    {
      sub_25B947618(v96, 11, 2, v100, 94, 2, v98, 24, 2, 4030, 0);
      __break(1u);
    }

    sub_25B8E2C1C(v48);
    sub_25B946DD8();
    MEMORY[0x277D82BE0](v148);
    v47[1] = &v187;
    v187 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
    sub_25B947258();
    (*(v138 + 8))(v141, v137);
    return (*(v102 + 8))(v105, v101);
  }

  else if (v153 != *MEMORY[0x277CD8DD8] && v153 != *MEMORY[0x277CD8DF8])
  {
    if (v153 != *MEMORY[0x277CD8DD0])
    {
      if (v153 != *MEMORY[0x277CD8DF0])
      {
        return (*(v149 + 8))(v152, v151);
      }

      return result;
    }

    sub_25B946B88();
    sub_25B946B58();
    v95 = v17 * 1000.0;
    v186 = v17 * 1000.0;
    v185[0] = 0;
    v185[1] = 0;
    sub_25B8E29D0(v185);
    if (((*&v95 >> 52) & 0x7FFLL) == 0x7FF)
    {
      sub_25B947618(v96, 11, 2, v97, 79, 2, v98, 24, 2, 4024, 0);
      __break(1u);
    }

    if (v95 <= -1.0)
    {
      sub_25B947618(v96, 11, 2, v99, 91, 2, v98, 24, 2, 4027, 0);
      __break(1u);
    }

    if (v95 >= 4294967300.0)
    {
      sub_25B947618(v96, 11, 2, v100, 94, 2, v98, 24, 2, 4030, 0);
      __break(1u);
    }

    sub_25B8E2C1C(v95);
    sub_25B946D88();
    if ((*(v132 + 48))(v130, 1, v131) == 1)
    {
      sub_25B8DC8DC(v130);
LABEL_32:
      sub_25B946DD8();
      MEMORY[0x277D82BE0](v148);
      v49 = &v184;
      v184 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
      sub_25B947258();
      return (*(v138 + 8))(v143, v137);
    }

    (*(v132 + 32))(v135, v130, v131);
    sub_25B946E28();
    if (!(*(v107 + 48))(v128, 1, v106))
    {
      sub_25B8DCA2C(v128, v126);
      v94 = (*(v107 + 88))(v126, v106);
      if (v94 == *MEMORY[0x277CD8B08])
      {
        (*(v107 + 96))(v126, v106);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1C8, &qword_25B94B218);
        v83 = &v126[*(v18 + 48)];
        (*(v121 + 32))(v124);
        (*(v116 + 32))(v119, v83, v115);
        v198 = v124;
        v199 = v119;
        v85 = 1;
        v19 = sub_25B947818();
        v91 = &v156;
        v156 = v19;
        v157 = v20;
        v87 = "";
        v88 = 0;
        v89 = 1;
        v21 = sub_25B946F48("");
        v84 = v22;
        MEMORY[0x25F8715F0](v21);

        sub_25B9477D8();
        v23 = sub_25B946F48(":", v85, v89 & 1);
        v86 = v24;
        MEMORY[0x25F8715F0](v23);

        sub_25B9477D8();
        v25 = sub_25B946F48(v87, v88, v89 & 1);
        v90 = v26;
        MEMORY[0x25F8715F0](v25);

        v93 = v156;
        v92 = v157;
        sub_25B946ED8();
        sub_25B86AEEC(v91);
        v154 = sub_25B946FE8();
        v155 = v27;
        sub_25B8E2E5C(v154, v27);
        (*(v116 + 8))(v119, v115);
        (*(v121 + 8))(v124, v120);
        sub_25B8DC984(v128);
LABEL_31:
        (*(v132 + 8))(v135, v131);
        goto LABEL_32;
      }

      if (v94 == *MEMORY[0x277CD8B00])
      {
        (*(v107 + 96))(v126, v106);
        v74 = *v126;
        v75 = *(v126 + 1);
        v76 = *(v126 + 2);
        v77 = *(v126 + 3);
        v78 = *(v126 + 4);
        v79 = *(v126 + 5);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1C0, &qword_25B94B210);
        sub_25B8DCB54(&v126[*(v28 + 80)], v114);
        v180 = v74;
        v181 = v75;
        v178 = v76;
        v179 = v77;
        v176 = v78;
        v177 = v79;
        v200 = v114;
        sub_25B8DCC7C(v114, v112);
        v80 = sub_25B946D78();
        v81 = *(v80 - 8);
        v82 = v80 - 8;
        if ((*(v81 + 48))(v112, 1) == 1)
        {
          sub_25B8DCDA4(v112);
          v72 = 0;
          v73 = 0;
        }

        else
        {
          v70 = sub_25B946D68();
          v71 = v29;
          (*(v81 + 8))(v112, v80);
          v72 = v70;
          v73 = v71;
        }

        v172 = v72;
        v173 = v73;
        if (v73)
        {
          v174 = v172;
          v175 = v173;
        }

        else
        {
          v174 = sub_25B946F48("default", 7, 1);
          v175 = v30;
          if (v173)
          {
            sub_25B86AEEC(&v172);
          }
        }

        v58 = v174;
        v69 = v175;
        v170 = v174;
        v171 = v175;
        v31 = sub_25B947818();
        v66 = &v168;
        v168 = v31;
        v169 = v32;
        v62 = "";
        v63 = 0;
        v64 = 1;
        v33 = sub_25B946F48("");
        v52 = v34;
        MEMORY[0x25F8715F0](v33);

        v166 = v74;
        v167 = v75;
        v59 = MEMORY[0x277D837D0];
        v60 = MEMORY[0x277D83838];
        v61 = MEMORY[0x277D83830];
        sub_25B9477F8();
        v54 = ".";
        v56 = 1;
        v35 = sub_25B946F48(".");
        v53 = v36;
        MEMORY[0x25F8715F0](v35);

        v164 = v76;
        v165 = v77;
        sub_25B9477F8();
        v37 = sub_25B946F48(v54, v56, v64 & 1);
        v55 = v38;
        MEMORY[0x25F8715F0](v37);

        v162 = v78;
        v163 = v79;
        sub_25B9477F8();
        v39 = sub_25B946F48(":", v56, v64 & 1);
        v57 = v40;
        MEMORY[0x25F8715F0](v39);

        v160 = v58;
        v161 = v69;
        sub_25B9477F8();
        v41 = sub_25B946F48(v62, v63, v64 & 1);
        v65 = v42;
        MEMORY[0x25F8715F0](v41);

        v68 = v168;
        v67 = v169;
        sub_25B946ED8();
        sub_25B86AEEC(v66);
        v158 = sub_25B946FE8();
        v159 = v43;
        sub_25B8E2E5C(v158, v43);

        sub_25B8DCDA4(v114);

        sub_25B8DC984(v128);
        goto LABEL_31;
      }

      (*(v107 + 8))(v126, v106);
    }

    sub_25B946DE8();
    v50 = sub_25B946CF8();
    v51 = v44;
    v182 = v50;
    v183 = v44;
    (*(v107 + 8))(v110, v106);
    sub_25B8E2E5C(v50, v51);
    sub_25B8DC984(v128);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_25B8D7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v20;
  v8[23] = v19;
  v8[22] = a8;
  v8[21] = a7;
  v8[20] = a6;
  v8[19] = a5;
  v8[18] = a4;
  v8[9] = v8;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[13] = 0;
  v8[14] = 0;
  v8[16] = 0;
  v9 = sub_25B946C48();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = sub_25B946B98();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = sub_25B9475C8();
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();
  v8[10] = a4;
  v8[11] = a5;
  v8[12] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[13] = v19;
  v8[14] = v20;

  return MEMORY[0x2822009F8](sub_25B8D804C, 0);
}

uint64_t sub_25B8D804C()
{
  *(v0 + 72) = v0;
  *(v0 + 120) = 3;
  sub_25B8DBF4C();
  *(v0 + 56) = sub_25B9479E8();
  *(v0 + 64) = v1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v7 = sub_25B8DBFC4();
  sub_25B8DA030();
  v2 = swift_task_alloc();
  v6[34] = v2;
  *v2 = v6[9];
  v2[1] = sub_25B8D81C8;
  v3 = v6[33];
  v4 = v6[31];

  return sub_25B8DA054(v0 + 56, v0 + 16, v3, v4, v7);
}

uint64_t sub_25B8D81C8()
{
  v4 = *v1;
  v4[9] = *v1;
  v4[35] = v0;

  if (v0)
  {
    v2 = sub_25B8D91B4;
  }

  else
  {
    (*(v4[32] + 8))(v4[33], v4[31]);
    v2 = sub_25B8D8360;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B8D8360()
{
  v46 = v0;
  *(v0 + 72) = v0;
  v37 = *(v0 + 280);
  sub_25B8E294C(&v38);
  if (v39 == 2)
  {
    sub_25B946B88();
    sub_25B946B58();
    v35 = v1 * 1000.0;
    *(v36 + 128) = v1 * 1000.0;
    v40[0] = 0;
    v40[1] = 1;
    sub_25B8E29D0(v40);
    if (((*&v35 >> 52) & 0x7FFLL) == 0x7FF)
    {
      return sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because it is either infinite or NaN", 79, 2, "Swift/IntegerTypes.swift", 24, 2, 4024, 0);
    }

    if (v35 <= -1.0)
    {
      return sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because the result would be less than UInt32.min", 91, 2, "Swift/IntegerTypes.swift", 24, 2, 4027, 0);
    }

    if (v35 >= 4294967300.0)
    {
      return sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because the result would be greater than UInt32.max", 94, 2, "Swift/IntegerTypes.swift", 24, 2, 4030, 0);
    }

    v16 = *(v36 + 216);
    v19 = *(v36 + 200);
    v21 = *(v36 + 176);
    v20 = *(v36 + 168);
    v17 = *(v36 + 160);
    v18 = *(v36 + 208);
    sub_25B8E2C1C(v35);
    (*(v18 + 16))(v16, v17 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_logger, v19);
    sub_25B946ED8();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = v35;
    oslog = sub_25B946C18();
    v34 = sub_25B947448();
    v26 = swift_allocObject();
    *(v26 + 16) = 32;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_25B8994FC;
    *(v23 + 24) = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_25B88B668;
    *(v28 + 24) = v23;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_25B8DC0EC;
    *(v25 + 24) = v24;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_25B8DC798;
    *(v31 + 24) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v32 = v3;

    *v32 = sub_25B88B5F4;
    v32[1] = v26;

    v32[2] = sub_25B88B5F4;
    v32[3] = v27;

    v32[4] = sub_25B88B6B4;
    v32[5] = v28;

    v32[6] = sub_25B88B5F4;
    v32[7] = v29;

    v32[8] = sub_25B88B5F4;
    v32[9] = v30;

    v32[10] = sub_25B8DC850;
    v32[11] = v31;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v34))
    {
      buf = sub_25B9474D8();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v14 = sub_25B8895FC(0, v12, v12);
      v15 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v41 = buf;
      v42 = v14;
      v43 = v15;
      sub_25B889650(2, &v41);
      sub_25B889650(2, &v41);
      v44 = sub_25B88B5F4;
      v45 = v26;
      sub_25B889664(&v44, &v41, &v42, &v43);
      if (v37)
      {
      }

      v44 = sub_25B88B5F4;
      v45 = v27;
      sub_25B889664(&v44, &v41, &v42, &v43);
      v44 = sub_25B88B6B4;
      v45 = v28;
      sub_25B889664(&v44, &v41, &v42, &v43);
      v44 = sub_25B88B5F4;
      v45 = v29;
      sub_25B889664(&v44, &v41, &v42, &v43);
      v44 = sub_25B88B5F4;
      v45 = v30;
      sub_25B889664(&v44, &v41, &v42, &v43);
      v44 = sub_25B8DC850;
      v45 = v31;
      sub_25B889664(&v44, &v41, &v42, &v43);
      _os_log_impl(&dword_25B859000, oslog, v34, "TCP connection to %s timed out after %f ms", buf, 0x16u);
      sub_25B8896B0(v14, 0, v12);
      sub_25B8896B0(v15, 1, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    else
    {
    }

    v10 = *(v36 + 240);
    v11 = *(v36 + 224);
    v6 = *(v36 + 216);
    v7 = *(v36 + 200);
    v8 = *(v36 + 144);
    v9 = *(v36 + 232);
    v5 = *(v36 + 208);
    MEMORY[0x277D82BD8](oslog);
    (*(v5 + 8))(v6, v7);
    sub_25B946DD8();
    MEMORY[0x277D82BE0](v8);
    *(v36 + 136) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
    sub_25B947258();
    (*(v9 + 8))(v10, v11);
  }

  else
  {
    sub_25B8DC044(v38, v39);
  }

  v4 = *(*(v36 + 72) + 8);

  return v4();
}

uint64_t sub_25B8D91B4()
{
  v49 = v0;
  v40 = v0[35];
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v0[9] = v0;
  (*(v2 + 8))(v1, v3);

  sub_25B8E294C(&v41);
  if (v42 == 2)
  {
    sub_25B946B88();
    sub_25B946B58();
    v38 = v4 * 1000.0;
    *(v39 + 128) = v4 * 1000.0;
    v43[0] = 0;
    v43[1] = 1;
    sub_25B8E29D0(v43);
    if (((*&v38 >> 52) & 0x7FFLL) == 0x7FF)
    {
      return sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because it is either infinite or NaN", 79, 2, "Swift/IntegerTypes.swift", 24, 2, 4024, 0);
    }

    if (v38 <= -1.0)
    {
      return sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because the result would be less than UInt32.min", 91, 2, "Swift/IntegerTypes.swift", 24, 2, 4027, 0);
    }

    if (v38 >= 4294967300.0)
    {
      return sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because the result would be greater than UInt32.max", 94, 2, "Swift/IntegerTypes.swift", 24, 2, 4030, 0);
    }

    v19 = *(v39 + 216);
    v22 = *(v39 + 200);
    v24 = *(v39 + 176);
    v23 = *(v39 + 168);
    v20 = *(v39 + 160);
    v21 = *(v39 + 208);
    sub_25B8E2C1C(v38);
    (*(v21 + 16))(v19, v20 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_logger, v22);
    sub_25B946ED8();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = v38;
    oslog = sub_25B946C18();
    v37 = sub_25B947448();
    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_25B8994FC;
    *(v26 + 24) = v25;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_25B88B668;
    *(v31 + 24) = v26;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_25B8DC0EC;
    *(v28 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_25B8DC798;
    *(v34 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v35 = v6;

    *v35 = sub_25B88B5F4;
    v35[1] = v29;

    v35[2] = sub_25B88B5F4;
    v35[3] = v30;

    v35[4] = sub_25B88B6B4;
    v35[5] = v31;

    v35[6] = sub_25B88B5F4;
    v35[7] = v32;

    v35[8] = sub_25B88B5F4;
    v35[9] = v33;

    v35[10] = sub_25B8DC850;
    v35[11] = v34;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v37))
    {
      buf = sub_25B9474D8();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v17 = sub_25B8895FC(0, v15, v15);
      v18 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v44 = buf;
      v45 = v17;
      v46 = v18;
      sub_25B889650(2, &v44);
      sub_25B889650(2, &v44);
      v47 = sub_25B88B5F4;
      v48 = v29;
      sub_25B889664(&v47, &v44, &v45, &v46);
      v47 = sub_25B88B5F4;
      v48 = v30;
      sub_25B889664(&v47, &v44, &v45, &v46);
      v47 = sub_25B88B6B4;
      v48 = v31;
      sub_25B889664(&v47, &v44, &v45, &v46);
      v47 = sub_25B88B5F4;
      v48 = v32;
      sub_25B889664(&v47, &v44, &v45, &v46);
      v47 = sub_25B88B5F4;
      v48 = v33;
      sub_25B889664(&v47, &v44, &v45, &v46);
      v47 = sub_25B8DC850;
      v48 = v34;
      sub_25B889664(&v47, &v44, &v45, &v46);
      _os_log_impl(&dword_25B859000, oslog, v37, "TCP connection to %s timed out after %f ms", buf, 0x16u);
      sub_25B8896B0(v17, 0, v15);
      sub_25B8896B0(v18, 1, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v13 = *(v39 + 240);
    v14 = *(v39 + 224);
    v9 = *(v39 + 216);
    v10 = *(v39 + 200);
    v11 = *(v39 + 144);
    v12 = *(v39 + 232);
    v8 = *(v39 + 208);
    MEMORY[0x277D82BD8](oslog);
    (*(v8 + 8))(v9, v10);
    sub_25B946DD8();
    MEMORY[0x277D82BE0](v11);
    *(v39 + 136) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
    sub_25B947258();
    (*(v12 + 8))(v13, v14);
  }

  else
  {
    sub_25B8DC044(v41, v42);
  }

  v7 = *(*(v39 + 72) + 8);

  return v7();
}

uint64_t sub_25B8DA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_25B8DA140;

  return sub_25B8DC0F4(a1, a2, a4, a5);
}

uint64_t sub_25B8DA140()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_25B8DA2CC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_25B94B1D8;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_25B8A5160(v54, v57);
  v58 = sub_25B9472A8();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_25B8992C8(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_25B947298();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_25B947238();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  sub_25B946ED8();
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_25B946FC8();

    sub_25B8DBC08(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_25B8992C8(v54);

    v18 = v16;
  }

  else
  {

    sub_25B8992C8(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

id TCPProbe.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TCPProbe(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8DAA50(uint64_t a1)
{
  v3 = sub_25B946D38();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_25B8DAAF8()
{
  v2 = qword_27FBAB148;
  if (!qword_27FBAB148)
  {
    sub_25B946BD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB148);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_11NetworkInfo18TCPConnectionStateO(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < 0x100000000uLL)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_25B8DACB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFC && *(a1 + 16))
    {
      v5 = *a1 + 2147483644;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 3;
      if (v4 - 3 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25B8DAE04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25B8DB064(uint64_t a1)
{
  updated = sub_25B946C48();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of TCPProbe.probeHost(endpoint:)(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *((*v2 & *MEMORY[0x277D85000]) + 0xA0);
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_25B8A4CA0;

  return v9(a1, a2);
}

unint64_t sub_25B8DB30C()
{
  v2 = qword_27FBAB168;
  if (!qword_27FBAB168)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8DB3A0()
{
  v2 = qword_27FBAB170;
  if (!qword_27FBAB170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8DB434()
{
  v2 = qword_27FBAB178;
  if (!qword_27FBAB178)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB178);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8DB4B0()
{
  v3 = sub_25B946B98();
  v4 = *(v3 - 8);
  v2 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = (v2 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v6 = *(v8 - 8);
  v7 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v4 + 8))(v0 + v2, v3);
  MEMORY[0x277D82BD8](*(v0 + v5));

  (*(v6 + 8))(v0 + v7, v8);
  return swift_deallocObject();
}

uint64_t sub_25B8DB698(uint64_t a1)
{
  v7 = *(sub_25B946B98() - 8);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v8 = (v9 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v3 = *(v1 + v8);
  v4 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v5 = v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));

  return sub_25B8D68AC(a1, v1 + v9, v3, v4, v5);
}

uint64_t sub_25B8DB7C0()
{
  v4 = sub_25B946B98();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v6 = *(v8 - 8);
  v7 = (((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  (*(v2 + 8))(v0 + v3, v4);
  MEMORY[0x277D82BD8](*(v0 + v5));

  (*(v6 + 8))(v0 + v7, v8);
  return swift_deallocObject();
}

uint64_t sub_25B8DB9E8(uint64_t a1)
{
  v8 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_25B946B98() - 8);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v7 = (v12 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v3 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v13 = *(v1 + v7);
  v14 = *(v1 + v3);
  v15 = *(v1 + v3 + 8);
  v4 = swift_task_alloc();
  *(v8 + 24) = v4;
  *v4 = *(v8 + 16);
  v4[1] = sub_25B88B7A0;

  return sub_25B8D7DB8(a1, v9, v10, v11, v1 + v12, v13, v14, v15);
}

uint64_t sub_25B8DBC08@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_25B947618("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 2, 3820, 0);
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_25B8DBE10(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8A317C(a1, v6);
}

unint64_t sub_25B8DBF4C()
{
  v2 = qword_27FBAB190;
  if (!qword_27FBAB190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8DBFC4()
{
  v2 = qword_27FBAB198;
  if (!qword_27FBAB198)
  {
    sub_25B9475C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB198);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8DC044(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
  }

  return result;
}

uint64_t sub_25B8DC0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B8DC220, 0);
}

uint64_t sub_25B8DC220()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_25B9478C8();
  swift_getAssociatedConformanceWitness();
  sub_25B9475D8();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_25B8DC388;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x2822008C8](v3, v6, v5, v4);
}

uint64_t sub_25B8DC388()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x2822009F8](sub_25B8DC558, 0);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_25B8DC558()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void *sub_25B8DC7A4(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  sub_25B947508();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

unint64_t sub_25B8DC85C()
{
  v2 = qword_27FBAB1B8;
  if (!qword_27FBAB1B8)
  {
    sub_25B946E48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB1B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8DC8DC(uint64_t a1)
{
  v3 = sub_25B946E38();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_25B8DC984(uint64_t a1)
{
  v3 = sub_25B946D58();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_25B8DCA2C(const void *a1, void *a2)
{
  v6 = sub_25B946D58();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A8, &qword_25B94B200);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_25B8DCB54(const void *a1, void *a2)
{
  v6 = sub_25B946D78();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A0, &qword_25B94B1F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_25B8DCC7C(const void *a1, void *a2)
{
  v6 = sub_25B946D78();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A0, &qword_25B94B1F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_25B8DCDA4(uint64_t a1)
{
  v3 = sub_25B946D78();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_25B8DCF00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DCFF8();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DCF6C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD068(v3);
  return MEMORY[0x277D82BD8](v5);
}

uint64_t sub_25B8DCFF8()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_systemConfiguration);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD068(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___NetworkInfoResults_systemConfiguration);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_25B8DD170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD254();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD1DC(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD2BC(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD254()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_dnsResults);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD2BC(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoResults_dnsResults);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DD3AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD490();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD418(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD4F8(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD490()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_pings);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD4F8(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoResults_pings);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DD5E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD6CC();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD654(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD734(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD6CC()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_httpFetches);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD734(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoResults_httpFetches);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DD824@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD908();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD890(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD970(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD908()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_traceroutes);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD970(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoResults_traceroutes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DDA60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DDB44();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DDACC(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DDBAC(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDB44()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_tcpConnects);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DDBAC(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoResults_tcpConnects);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DDC9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DDD90();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDD0C(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DDE04(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDD90()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_packetCaptureFilename);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DDE04(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR___NetworkInfoResults_packetCaptureFilename);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8DDF0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DE000();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDF7C(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DE074(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DE000()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_droptapCaptureFilename);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DE074(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR___NetworkInfoResults_droptapCaptureFilename);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

char *NetworkInfoResults.init()()
{
  v10 = 0;
  v3 = OBJC_IVAR___NetworkInfoResults_dnsResults;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB270, &unk_25B94B220);
  sub_25B947838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  *v3 = sub_25B946EC8();
  v4 = OBJC_IVAR___NetworkInfoResults_pings;
  type metadata accessor for NetworkInfoPingResult();
  *&v10[v4] = sub_25B947838();
  v5 = OBJC_IVAR___NetworkInfoResults_httpFetches;
  type metadata accessor for NetworkInfoURLRetrievalResult();
  *&v10[v5] = sub_25B947838();
  v6 = OBJC_IVAR___NetworkInfoResults_traceroutes;
  *&v10[v6] = sub_25B947838();
  v7 = OBJC_IVAR___NetworkInfoResults_tcpConnects;
  type metadata accessor for NetworkInfoTCPConnectResult();
  *&v10[v7] = sub_25B947838();
  v0 = &v10[OBJC_IVAR___NetworkInfoResults_packetCaptureFilename];
  *v0 = 0;
  *(v0 + 1) = 0;
  v1 = &v10[OBJC_IVAR___NetworkInfoResults_droptapCaptureFilename];
  *v1 = 0;
  *(v1 + 1) = 0;
  type metadata accessor for NetworkInfoSystemConfiguration();
  *&v10[OBJC_IVAR___NetworkInfoResults_systemConfiguration] = NetworkInfoSystemConfiguration.__allocating_init()();
  v9.receiver = v10;
  v9.super_class = type metadata accessor for NetworkInfoResults();
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x277D82BE0](v8);
  v10 = v8;
  MEMORY[0x277D82BD8](v8);
  return v8;
}

uint64_t sub_25B8DE3DC(uint64_t a1)
{
  v80 = &v105;
  v73 = a1;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v92 = 0;
  v93 = 0;
  v89 = 0;
  v90 = 0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB278, &unk_25B94B230);
  v74 = *(v82 - 8);
  v75 = v82 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v73);
  v79 = v21 - v76;
  v3[3] = v21 - v76;
  v3[2] = v2;
  v3[1] = v1;
  v77 = v2[3];
  v78 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v77);
  sub_25B8E103C();
  sub_25B9479C8();
  v4 = sub_25B8DCFF8();
  v85 = &v105;
  *v80 = v4;
  v81 = &v104;
  v104 = 0;
  v83 = type metadata accessor for NetworkInfoSystemConfiguration();
  sub_25B8E10B8();
  v5 = v84;
  sub_25B947778();
  v86 = v5;
  v87 = v5;
  if (v5)
  {
    v28 = v87;
    MEMORY[0x277D82BD8](*v80);
    result = (*(v74 + 8))(v79, v82);
    v29 = v28;
    return result;
  }

  MEMORY[0x277D82BD8](*v80);
  v6 = sub_25B8DD254();
  v70 = &v103;
  v103 = v6;
  v68 = &v102;
  v102 = 1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB048, &qword_25B94A9E0);
  sub_25B8E1138();
  v7 = v86;
  sub_25B947778();
  v71 = v7;
  v72 = v7;
  if (v7)
  {
    v27 = v72;
    sub_25B86CFA0(&v103);
    result = (*(v74 + 8))(v79, v82);
    v29 = v27;
    return result;
  }

  sub_25B86CFA0(&v103);
  v8 = sub_25B8DD490();
  v65 = &v101;
  v101 = v8;
  v63 = &v100;
  v100 = 2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAFF0, &unk_25B94A9A0);
  sub_25B8E11DC();
  v9 = v71;
  sub_25B947778();
  v66 = v9;
  v67 = v9;
  if (v9)
  {
    v26 = v67;
    sub_25B86CFA0(&v101);
    result = (*(v74 + 8))(v79, v82);
    v29 = v26;
    return result;
  }

  sub_25B86CFA0(&v101);
  v10 = sub_25B8DD6CC();
  v60 = &v99;
  v99 = v10;
  v58 = &v98;
  v98 = 3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB030, &unk_25B94A9C0);
  sub_25B8E12F4();
  v11 = v66;
  sub_25B947778();
  v61 = v11;
  v62 = v11;
  if (v11)
  {
    v25 = v62;
    sub_25B86CFA0(&v99);
    result = (*(v74 + 8))(v79, v82);
    v29 = v25;
    return result;
  }

  sub_25B86CFA0(&v99);
  v12 = sub_25B8DD908();
  v55 = &v97;
  v97 = v12;
  v53 = &v96;
  v96 = 4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
  sub_25B86D4E0();
  v13 = v61;
  sub_25B947778();
  v56 = v13;
  v57 = v13;
  if (v13)
  {
    v24 = v57;
    sub_25B86CFA0(&v97);
    result = (*(v74 + 8))(v79, v82);
    v29 = v24;
    return result;
  }

  sub_25B86CFA0(&v97);
  v14 = sub_25B8DDB44();
  v50 = &v95;
  v95 = v14;
  v48 = &v94;
  v94 = 5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB038, &qword_25B94A9D0);
  sub_25B8E140C();
  v15 = v56;
  sub_25B947778();
  v51 = v15;
  v52 = v15;
  if (v15)
  {
    v23 = v52;
    sub_25B86CFA0(&v95);
    result = (*(v74 + 8))(v79, v82);
    v29 = v23;
    return result;
  }

  sub_25B86CFA0(&v95);
  v46 = sub_25B8DDD90();
  v47 = v16;
  if (v16)
  {
    v44 = v46;
    v45 = v47;
    v17 = v51;
    v40 = v47;
    v89 = v46;
    v90 = v47;
    v88 = 6;
    sub_25B947738();
    v41 = v17;
    v42 = v17;
    if (v17)
    {
      v22 = v42;

      result = (*(v74 + 8))(v79, v82);
      v29 = v22;
      return result;
    }

    v43 = v41;
  }

  else
  {
    v43 = v51;
  }

  v37 = v43;
  v38 = sub_25B8DE000();
  v39 = v18;
  if (!v18)
  {
    v34 = v37;
LABEL_17:
    v30 = v34;
    return (*(v74 + 8))(v79, v82);
  }

  v35 = v38;
  v36 = v39;
  v19 = v37;
  v31 = v39;
  v92 = v38;
  v93 = v39;
  v91 = 7;
  sub_25B947738();
  v32 = v19;
  v33 = v19;
  if (!v19)
  {

    v34 = v32;
    goto LABEL_17;
  }

  v21[1] = v33;

  return (*(v74 + 8))(v79, v82);
}

uint64_t sub_25B8DEE2C(uint64_t a1, uint64_t a2)
{
  v30[2] = a1;
  v30[3] = a2;
  sub_25B946ED8();
  v30[0] = sub_25B946F48("systemConfiguration", 19, 1);
  v30[1] = v2;
  v29[2] = a1;
  v29[3] = a2;
  v22 = MEMORY[0x25F870E10](v30[0], v2, a1, a2);
  sub_25B86AEEC(v30);
  if (v22)
  {

    v31 = 0;
    v19 = 0;
LABEL_18:

    return v19;
  }

  sub_25B946ED8();
  v29[0] = sub_25B946F48("dnsResults", 10, 1);
  v29[1] = v3;
  v28[2] = a1;
  v28[3] = a2;
  v18 = MEMORY[0x25F870E10](v29[0], v3, a1, a2);
  sub_25B86AEEC(v29);
  if (v18)
  {

    v31 = 1;
    v19 = 1;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v28[0] = sub_25B946F48("pings", 5, 1);
  v28[1] = v4;
  v27[2] = a1;
  v27[3] = a2;
  v17 = MEMORY[0x25F870E10](v28[0], v4, a1, a2);
  sub_25B86AEEC(v28);
  if (v17)
  {

    v31 = 2;
    v19 = 2;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v27[0] = sub_25B946F48("httpFetches", 11, 1);
  v27[1] = v5;
  v26[2] = a1;
  v26[3] = a2;
  v16 = MEMORY[0x25F870E10](v27[0], v5, a1, a2);
  sub_25B86AEEC(v27);
  if (v16)
  {

    v31 = 3;
    v19 = 3;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v26[0] = sub_25B946F48("traceroutes", 11, 1);
  v26[1] = v6;
  v25[2] = a1;
  v25[3] = a2;
  v15 = MEMORY[0x25F870E10](v26[0], v6, a1, a2);
  sub_25B86AEEC(v26);
  if (v15)
  {

    v31 = 4;
    v19 = 4;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v25[0] = sub_25B946F48("tcpConnects", 11, 1);
  v25[1] = v7;
  v24[2] = a1;
  v24[3] = a2;
  v14 = MEMORY[0x25F870E10](v25[0], v7, a1, a2);
  sub_25B86AEEC(v25);
  if (v14)
  {

    v31 = 5;
    v19 = 5;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v24[0] = sub_25B946F48("packetCaptureFilename", 21, 1);
  v24[1] = v8;
  v23[2] = a1;
  v23[3] = a2;
  v13 = MEMORY[0x25F870E10](v24[0], v8, a1, a2);
  sub_25B86AEEC(v24);
  if (v13)
  {

    v31 = 6;
    v19 = 6;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v23[0] = sub_25B946F48("droptapCaptureFilename", 22, 1);
  v23[1] = v9;
  v12 = MEMORY[0x25F870E10](v23[0], v9, a1, a2);
  sub_25B86AEEC(v23);
  if (v12)
  {

    v31 = 7;
    v19 = 7;
    goto LABEL_18;
  }

  return 8;
}

BOOL sub_25B8DF380(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_25B8DF784(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_25B946F48("systemConfiguration", 19, 1);
    case 1:
      return sub_25B946F48("dnsResults", 10, 1);
    case 2:
      return sub_25B946F48("pings", 5, 1);
    case 3:
      return sub_25B946F48("httpFetches", 11, 1);
    case 4:
      return sub_25B946F48("traceroutes", 11, 1);
    case 5:
      return sub_25B946F48("tcpConnects", 11, 1);
    case 6:
      return sub_25B946F48("packetCaptureFilename", 21, 1);
  }

  return sub_25B946F48("droptapCaptureFilename", 22, 1);
}

uint64_t sub_25B8DF9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8DEE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B8DFA20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8DF368();
  *a1 = result;
  return result;
}

id NetworkInfoResults.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoResults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8DFC20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DFCF4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFC8C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DFD58(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFCF4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_durationMillis);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DFD58(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_durationMillis);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8DFE30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DFF04();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFE9C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DFF68(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFF04()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_sequence);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DFF68(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_sequence);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E0040@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E0134();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E00B0(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E01A8(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E0134()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_destination);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E01A8(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_destination);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E02B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E03A8();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E0324(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E041C(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E03A8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_host);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E041C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_host);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E0528@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E061C();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E0598(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E0690(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E061C()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E0690(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

char *NetworkInfoPingResult.init(raw:)(uint64_t a1)
{
  v78 = 0;
  v77[4] = a1;
  v1 = OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error;
  *OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error = 0;
  *(v1 + 8) = 0;
  v46 = v78;
  v76[0] = sub_25B946F48("duration_ms", 11, 1);
  v76[1] = v2;
  sub_25B946F18();
  sub_25B86AEEC(v76);
  if (v77[3])
  {
    if (swift_dynamicCast())
    {
      v42 = v47;
      v43 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 1;
    }

    v44 = v42;
    v45 = v43;
  }

  else
  {
    sub_25B88BBA0(v77);
    v44 = 0;
    v45 = 1;
  }

  v74 = v44;
  v75 = v45 & 1;
  if (v45)
  {
    v41 = 0;
  }

  else
  {
    v41 = v74;
  }

  *&v46[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_durationMillis] = v41;
  v40 = v78;
  v72[0] = sub_25B946F48("sequence", 8, 1);
  v72[1] = v3;
  sub_25B946F18();
  sub_25B86AEEC(v72);
  if (v73[3])
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v36 = v48;
      v37 = 0;
    }

    else
    {
      v36 = 0;
      v37 = 1;
    }

    v38 = v36;
    v39 = v37;
  }

  else
  {
    sub_25B88BBA0(v73);
    v38 = 0;
    v39 = 1;
  }

  v70 = v38;
  v71 = v39 & 1;
  if (v39)
  {
    v35 = 0;
  }

  else
  {
    v35 = v70;
  }

  *&v40[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_sequence] = v35;
  v34 = v78;
  v66[0] = sub_25B946F48("destination", 11, 1);
  v66[1] = v5;
  sub_25B946F18();
  sub_25B86AEEC(v66);
  if (v67[3])
  {
    v6 = swift_dynamicCast();
    if (v6)
    {
      v30 = v49;
      v31 = v50;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v32 = v30;
    v33 = v31;
  }

  else
  {
    sub_25B88BBA0(v67);
    v32 = 0;
    v33 = 0;
  }

  v64 = v32;
  v65 = v33;
  if (v33)
  {
    v68 = v64;
    v69 = v65;
  }

  else
  {
    v68 = sub_25B946F48("unknown", 7, 1);
    v69 = v7;
  }

  v8 = v69;
  v9 = &v34[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_destination];
  *v9 = v68;
  v9[1] = v8;
  v29 = v78;
  v60[0] = sub_25B946F48("host", 4, 1);
  v60[1] = v10;
  sub_25B946F18();
  sub_25B86AEEC(v60);
  if (v61[3])
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v25 = v51;
      v26 = v52;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v27 = v25;
    v28 = v26;
  }

  else
  {
    sub_25B88BBA0(v61);
    v27 = 0;
    v28 = 0;
  }

  v58 = v27;
  v59 = v28;
  if (v28)
  {
    v62 = v58;
    v63 = v59;
  }

  else
  {
    v62 = sub_25B946F48("unknown", 7, 1);
    v63 = v12;
  }

  v13 = v63;
  v14 = &v29[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_host];
  *v14 = v62;
  v14[1] = v13;
  v24 = v78;
  v56[0] = sub_25B946F48("error", 5, 1);
  v56[1] = v15;
  sub_25B946F18();
  sub_25B86AEEC(v56);
  if (v57[3])
  {
    v16 = swift_dynamicCast();
    if (v16)
    {
      v20 = v53;
      v21 = v54;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v22 = v20;
    v23 = v21;
  }

  else
  {
    sub_25B88BBA0(v57);
    v22 = 0;
    v23 = 0;
  }

  v18 = &v24[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error];
  swift_beginAccess();
  *v18 = v22;
  *(v18 + 1) = v23;

  swift_endAccess();
  v55.receiver = v78;
  v55.super_class = type metadata accessor for NetworkInfoPingResult();
  v19 = objc_msgSendSuper2(&v55, sel_init);
  MEMORY[0x277D82BE0](v19);
  v78 = v19;

  MEMORY[0x277D82BD8](v78);
  return v19;
}

unint64_t sub_25B8E103C()
{
  v2 = qword_27FBAB280;
  if (!qword_27FBAB280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E10B8()
{
  v2 = qword_27FBAB288;
  if (!qword_27FBAB288)
  {
    type metadata accessor for NetworkInfoSystemConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E1138()
{
  v2 = qword_27FBAB290;
  if (!qword_27FBAB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB048, &qword_25B94A9E0);
    sub_25B8D2AFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E11DC()
{
  v2 = qword_27FBAB298;
  if (!qword_27FBAB298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAFF0, &unk_25B94A9A0);
    sub_25B8E1274();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E1274()
{
  v2 = qword_27FBAB2A0;
  if (!qword_27FBAB2A0)
  {
    type metadata accessor for NetworkInfoPingResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E12F4()
{
  v2 = qword_27FBAB2A8;
  if (!qword_27FBAB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB030, &unk_25B94A9C0);
    sub_25B8E138C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E138C()
{
  v2 = qword_27FBAB2B0;
  if (!qword_27FBAB2B0)
  {
    type metadata accessor for NetworkInfoURLRetrievalResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E140C()
{
  v2 = qword_27FBAB2B8;
  if (!qword_27FBAB2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB038, &qword_25B94A9D0);
    sub_25B8E14A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E14A4()
{
  v2 = qword_27FBAB2C0;
  if (!qword_27FBAB2C0)
  {
    type metadata accessor for NetworkInfoTCPConnectResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E1524()
{
  v2 = qword_27FBAB2C8;
  if (!qword_27FBAB2C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8E15A0(uint64_t a1)
{
  v34 = a1;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v46 = 0;
  v47 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB2F8, &qword_25B94B250);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v11 - v37;
  v54 = &v11 - v37;
  v53 = MEMORY[0x28223BE20](v34);
  v52 = v1;
  v38 = v53[3];
  v39 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v38);
  sub_25B8E1A60();
  sub_25B9479C8();
  sub_25B8DFCF4();
  v2 = v42;
  v51 = 0;
  sub_25B947798();
  v43 = v2;
  v44 = v2;
  if (v2)
  {
    v15 = v44;
    result = (*(v35 + 8))(v40, v41);
    v16 = v15;
  }

  else
  {
    sub_25B8DFF04();
    v3 = v43;
    v50 = 1;
    sub_25B947798();
    v32 = v3;
    v33 = v3;
    if (v3)
    {
      v14 = v33;
      result = (*(v35 + 8))(v40, v41);
      v16 = v14;
    }

    else
    {
      sub_25B8E0134();
      v4 = v32;
      v29 = v5;
      v49 = 2;
      sub_25B947738();
      v30 = v4;
      v31 = v4;
      if (v4)
      {
        v13 = v31;

        result = (*(v35 + 8))(v40, v41);
        v16 = v13;
      }

      else
      {

        sub_25B8E03A8();
        v6 = v30;
        v26 = v7;
        v48 = 3;
        sub_25B947738();
        v27 = v6;
        v28 = v6;
        if (v6)
        {
          v12 = v28;

          result = (*(v35 + 8))(v40, v41);
          v16 = v12;
        }

        else
        {

          v24 = sub_25B8E061C();
          v25 = v8;
          if (!v8)
          {
            v21 = v27;
LABEL_10:
            v17 = v21;
            return (*(v35 + 8))(v40, v41);
          }

          v22 = v24;
          v23 = v25;
          v9 = v27;
          v18 = v25;
          v46 = v24;
          v47 = v25;
          v45 = 4;
          sub_25B947738();
          v19 = v9;
          v20 = v9;
          if (!v9)
          {

            v21 = v19;
            goto LABEL_10;
          }

          v11 = v20;

          return (*(v35 + 8))(v40, v41);
        }
      }
    }
  }

  return result;
}

unint64_t sub_25B8E1A60()
{
  v2 = qword_27FBAB300;
  if (!qword_27FBAB300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB300);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8E1ADC(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;
  sub_25B946ED8();
  v21[0] = sub_25B946F48("durationMillis", 14, 1);
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x25F870E10](v21[0], v2, a1, a2);
  sub_25B86AEEC(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  sub_25B946ED8();
  v20[0] = sub_25B946F48("sequence", 8, 1);
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x25F870E10](v20[0], v3, a1, a2);
  sub_25B86AEEC(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  sub_25B946ED8();
  v19[0] = sub_25B946F48("destination", 11, 1);
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x25F870E10](v19[0], v4, a1, a2);
  sub_25B86AEEC(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  sub_25B946ED8();
  v18[0] = sub_25B946F48("host", 4, 1);
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x25F870E10](v18[0], v5, a1, a2);
  sub_25B86AEEC(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  sub_25B946ED8();
  v17[0] = sub_25B946F48("error", 5, 1);
  v17[1] = v6;
  v9 = MEMORY[0x25F870E10](v17[0], v6, a1, a2);
  sub_25B86AEEC(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

BOOL sub_25B8E1E68(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_25B8E2128()
{
  v2 = qword_27FBAB308;
  if (!qword_27FBAB308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8E21A4(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_25B946F48("durationMillis", 14, 1);
    case 1:
      return sub_25B946F48("sequence", 8, 1);
    case 2:
      return sub_25B946F48("destination", 11, 1);
    case 3:
      return sub_25B946F48("host", 4, 1);
  }

  return sub_25B946F48("error", 5, 1);
}

uint64_t sub_25B8E2360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8E1ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B8E238C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8E1E50();
  *a1 = result;
  return result;
}

id NetworkInfoPingResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoPingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8E25D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E26C4();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E2640(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E2738(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E26C4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_endpoint);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E2738(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_endpoint);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E2844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v6[2] = v4;
  sub_25B8E294C(v6);
  v2 = v6[1];
  *a2 = v6[0];
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E28BC(void *a1, uint64_t *a2)
{
  sub_25B8F003C(a1, v8);
  v5 = v8[0];
  v6 = v8[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  v7[2] = v4;
  v7[0] = v5;
  v7[1] = v6;
  sub_25B8E29D0(v7);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E294C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionState);
  swift_beginAccess();
  v4 = *v3;
  v6 = v3[1];
  sub_25B8EBA40(*v3, v6);
  result = swift_endAccess();
  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_25B8E29D0(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[1];
  sub_25B8EBA40(*a1, v7);
  v5 = (v1 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionState);
  swift_beginAccess();
  v2 = *v5;
  v3 = v5[1];
  *v5 = v6;
  v5[1] = v7;
  sub_25B8DC044(v2, v3);
  swift_endAccess();
  return sub_25B8DC044(v6, v7);
}

uint64_t sub_25B8E2AE4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E2BB8();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E2B50(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E2C1C(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E2BB8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E2C1C(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E2CF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E2DE8();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E2D64(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E2E5C(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E2DE8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_resolvedRemoteEndpoint);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E2E5C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_resolvedRemoteEndpoint);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E2F64(uint64_t a1, uint64_t a2)
{
  sub_25B947838();
  *v2 = "endpoint";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "connectionState";
  *(v2 + 32) = 15;
  *(v2 + 40) = 2;
  *(v2 + 48) = "connectionTimeMs";
  *(v2 + 56) = 16;
  *(v2 + 64) = 2;
  *(v2 + 72) = "resolvedRemoteEndpoint";
  *(v2 + 80) = 22;
  *(v2 + 88) = 2;
  sub_25B8860FC();
  v6 = sub_25B947658();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

uint64_t sub_25B8E312C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = sub_25B8E2F64(a1, a2);

  if (v6 == 4)
  {
    return 4;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_25B8E31DC(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_25B946F48("endpoint", 8, 1);
    case 1:
      return sub_25B946F48("connectionState", 15, 1);
    case 2:
      return sub_25B946F48("connectionTimeMs", 16, 1);
  }

  return sub_25B946F48("resolvedRemoteEndpoint", 22, 1);
}

uint64_t sub_25B8E3428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25B8E2F64(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25B8E3460@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B8E31DC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B8E34B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8E312C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B8E34DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8E31C4();
  *a1 = result;
  return result;
}

uint64_t sub_25B8E3568(uint64_t a1)
{
  v27 = a1;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v40 = 0;
  v41 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB340, &qword_25B94B258);
  v28 = *(v34 - 8);
  v29 = v34 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v9 - v30;
  v48 = v9 - v30;
  v47 = MEMORY[0x28223BE20](v27);
  v46 = v1;
  v31 = v47[3];
  v32 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v31);
  sub_25B8EBAF8();
  sub_25B9479C8();
  sub_25B8E26C4();
  v2 = v35;
  v36 = v3;
  v45 = 0;
  sub_25B947738();
  v37 = v2;
  v38 = v2;
  if (v2)
  {
    v12 = v38;

    result = (*(v28 + 8))(v33, v34);
    v13 = v12;
  }

  else
  {

    sub_25B8E294C(v44);
    v4 = v37;
    v43[0] = v44[0];
    v43[1] = v44[1];
    TCPConnectionState.encode(to:)(v27);
    v25 = v4;
    v26 = v4;
    if (v4)
    {
      v11 = v26;
      sub_25B8EBB74(v43);
      result = (*(v28 + 8))(v33, v34);
      v13 = v11;
    }

    else
    {
      sub_25B8EBB74(v43);
      sub_25B8E2BB8();
      v5 = v25;
      v42 = 2;
      sub_25B9477A8();
      v23 = v5;
      v24 = v5;
      if (v5)
      {
        v10 = v24;
        result = (*(v28 + 8))(v33, v34);
        v13 = v10;
      }

      else
      {
        v21 = sub_25B8E2DE8();
        v22 = v6;
        if (!v6)
        {
          v18 = v23;
LABEL_9:
          v14 = v18;
          return (*(v28 + 8))(v33, v34);
        }

        v19 = v21;
        v20 = v22;
        v7 = v23;
        v15 = v22;
        v40 = v21;
        v41 = v22;
        v39 = 3;
        sub_25B947738();
        v16 = v7;
        v17 = v7;
        if (!v7)
        {

          v18 = v16;
          goto LABEL_9;
        }

        v9[1] = v17;

        return (*(v28 + 8))(v33, v34);
      }
    }
  }

  return result;
}

char *NetworkInfoTCPConnectResult.init()()
{
  v7 = 0;
  v4 = OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_endpoint;
  *v4 = sub_25B946F48("");
  v4[1] = v0;
  v1 = &v7[OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionState];
  *v1 = 0;
  *(v1 + 1) = 2;
  *&v7[OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionTime] = 0;
  v2 = &v7[OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_resolvedRemoteEndpoint];
  *v2 = 0;
  *(v2 + 1) = 0;
  v6.receiver = v7;
  v6.super_class = type metadata accessor for NetworkInfoTCPConnectResult();
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v7 = v5;
  MEMORY[0x277D82BD8](v5);
  return v5;
}

id NetworkInfoTCPConnectResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoTCPConnectResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8E3BEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E3CE0();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E3C5C(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E3D54(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E3CE0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_url);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E3D54(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_url);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E3E60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E3F34();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E3ECC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E3F98(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E3F34()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_statusCode);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E3F98(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_statusCode);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4070@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E4164();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E40E0(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E41D8(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E4164()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_error);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E41D8(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_error);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E42E0@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E43B4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E434C(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4418(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E43B4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_totalTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4418(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_totalTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E44F0@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E45C4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E455C(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4628(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E45C4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_fetchStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4628(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_fetchStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4700@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E47D4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E476C(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4838(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E47D4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4838(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4910@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E49E4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E497C(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4A48(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E49E4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4A48(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4B20@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E4BF4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4B8C(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4C58(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4BF4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4C58(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4D30@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E4E04();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4D9C(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4E68(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4E04()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4E68(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4F40@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5014();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4FAC(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5078(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5014()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5078(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5150@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5224();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E51BC(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5288(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5224()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5288(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5360@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5434();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E53CC(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5498(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5434()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5498(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5570@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5644();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E55DC(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E56A8(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5644()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E56A8(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5780@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5854();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E57EC(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E58B8(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5854()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E58B8(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5990@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5A64();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E59FC(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5AC8(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5A64()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5AC8(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5BA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5C94();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5C10(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5D08(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5C94()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_networkProtocolName);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5D08(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_networkProtocolName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E5E14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5F08();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5E84(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5F7C(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5F08()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_localAddress);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5F7C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_localAddress);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E6088@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E617C();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E60F8(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E61F0(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E617C()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_remoteAddress);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E61F0(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_remoteAddress);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E62FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E63D0();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E6368(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E6434(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E63D0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesReceived);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E6434(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesReceived);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E650C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E65E0();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E6578(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E6644(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E65E0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesAfterDecoding);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E6644(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesAfterDecoding);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

char *NetworkInfoURLRetrievalResult.init()()
{
  v18 = 0;
  v12 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_url;
  *v12 = sub_25B946F48("");
  v12[1] = v0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_statusCode] = 0;
  v1 = &v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_error];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_totalTime] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_fetchStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseEnd] = 0;
  v13 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_networkProtocolName;
  v2 = sub_25B946F48("");
  v3 = &v18[v13];
  *v3 = v2;
  v3[1] = v4;
  v14 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_localAddress;
  v5 = sub_25B946F48("", 0, 1);
  v6 = &v18[v14];
  *v6 = v5;
  v6[1] = v7;
  v15 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_remoteAddress;
  v8 = sub_25B946F48("", 0, 1);
  v9 = &v18[v15];
  *v9 = v8;
  v9[1] = v10;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesReceived] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesAfterDecoding] = 0;
  v17.receiver = v18;
  v17.super_class = type metadata accessor for NetworkInfoURLRetrievalResult();
  v16 = objc_msgSendSuper2(&v17, sel_init);
  MEMORY[0x277D82BE0](v16);
  v18 = v16;
  MEMORY[0x277D82BD8](v16);
  return v16;
}

uint64_t sub_25B8E69E8(void *a1)
{
  v212 = a1;
  v202 = "Fatal error";
  v203 = "Double value cannot be converted to UInt32 because it is either infinite or NaN";
  v204 = "Swift/IntegerTypes.swift";
  v205 = "Double value cannot be converted to UInt32 because the result would be less than UInt32.min";
  v206 = "Double value cannot be converted to UInt32 because the result would be greater than UInt32.max";
  v314 = 0;
  v313 = 0;
  v310 = 0.0;
  v283 = 0.0;
  v207 = sub_25B946B98();
  v208 = *(v207 - 8);
  v209 = v207 - 8;
  v210 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v207);
  v211 = &v78 - v210;
  v213 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB3E8, &qword_25B94B260) - 8) + 64);
  v214 = (v213 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v212);
  v215 = &v78 - v214;
  v216 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v217 = &v78 - v216;
  v218 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v219 = &v78 - v218;
  v220 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v221 = &v78 - v220;
  v222 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v223 = &v78 - v222;
  v224 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10);
  v225 = &v78 - v224;
  v226 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v227 = &v78 - v226;
  v228 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14);
  v229 = &v78 - v228;
  v230 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16);
  v231 = &v78 - v230;
  v232 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20](v18);
  v233 = &v78 - v232;
  v234 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v20);
  v235 = &v78 - v234;
  v236 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v22);
  v237 = &v78 - v236;
  v238 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x28223BE20](v24);
  v239 = &v78 - v238;
  v240 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = MEMORY[0x28223BE20](v26);
  v241 = &v78 - v240;
  v242 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x28223BE20](v28);
  v243 = &v78 - v242;
  v244 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = MEMORY[0x28223BE20](v30);
  v245 = &v78 - v244;
  v246 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = MEMORY[0x28223BE20](v32);
  v247 = &v78 - v246;
  v248 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = MEMORY[0x28223BE20](v34);
  v249 = &v78 - v248;
  v250 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = MEMORY[0x28223BE20](v36);
  v251 = &v78 - v250;
  v252 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = MEMORY[0x28223BE20](v38);
  v253 = &v78 - v252;
  v254 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = MEMORY[0x28223BE20](v40);
  v255 = &v78 - v254;
  v256 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = MEMORY[0x28223BE20](v42);
  v257 = &v78 - v256;
  v258 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = MEMORY[0x28223BE20](v44);
  v259 = &v78 - v258;
  v260 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = MEMORY[0x28223BE20](v46);
  v261 = &v78 - v260;
  v262 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = MEMORY[0x28223BE20](v48);
  v263 = &v78 - v262;
  v264 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = MEMORY[0x28223BE20](v50);
  v265 = &v78 - v264;
  v266 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = MEMORY[0x28223BE20](v52);
  v267 = &v78 - v266;
  v268 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = MEMORY[0x28223BE20](v54);
  v269 = &v78 - v268;
  v314 = v56;
  v313 = v1;
  v270 = [v56 fetchStartDate];
  if (v270)
  {
    v201 = v270;
    v200 = v270;
    sub_25B946B78();
    (*(v208 + 32))(v267, v211, v207);
    (*(v208 + 56))(v267, 0, 1, v207);
    MEMORY[0x277D82BD8](v200);
  }

  else
  {
    (*(v208 + 56))(v267, 1, 1, v207);
  }

  sub_25B8EBBBC(v267, v269);
  v198 = *(v208 + 48);
  v199 = v208 + 48;
  if (v198(v269, 1, v207) == 1)
  {
    sub_25B8EBCE4(v269);
    v196 = 0.0;
    v197 = 1;
  }

  else
  {
    sub_25B946B68();
    v195 = v57;
    (*(v208 + 8))(v269, v207);
    v196 = v195;
    v197 = 0;
  }

  v311 = v196;
  v312 = v197 & 1;
  if (v197)
  {
    v194 = 0.0;
  }

  else
  {
    v194 = v311;
  }

  v192 = v194;
  v310 = v194;
  v193 = [v212 fetchStartDate];
  if (v193)
  {
    v191 = v193;
    v190 = v193;
    sub_25B946B78();
    (*(v208 + 32))(v263, v211, v207);
    (*(v208 + 56))(v263, 0, 1, v207);
    MEMORY[0x277D82BD8](v190);
  }

  else
  {
    (*(v208 + 56))(v263, 1, 1, v207);
  }

  sub_25B8EBBBC(v263, v265);
  if (v198(v265, 1, v207) == 1)
  {
    sub_25B8EBCE4(v265);
    v188 = 0;
    v189 = 1;
  }

  else
  {
    sub_25B946B68();
    v187 = v58;
    (*(v208 + 8))(v265, v207);
    v188 = Double.normalizedToEpoch(_:)(v192);
    v189 = 0;
  }

  v308 = v188;
  v309 = v189 & 1;
  if (v189)
  {
    v186 = 0;
  }

  else
  {
    v186 = v308;
  }

  sub_25B8E4628(v186);
  v185 = [v212 domainLookupStartDate];
  if (v185)
  {
    v184 = v185;
    v183 = v185;
    sub_25B946B78();
    (*(v208 + 32))(v259, v211, v207);
    (*(v208 + 56))(v259, 0, 1, v207);
    MEMORY[0x277D82BD8](v183);
  }

  else
  {
    (*(v208 + 56))(v259, 1, 1, v207);
  }

  sub_25B8EBBBC(v259, v261);
  if (v198(v261, 1, v207) == 1)
  {
    sub_25B8EBCE4(v261);
    v181 = 0;
    v182 = 1;
  }

  else
  {
    sub_25B946B68();
    v180 = v59;
    (*(v208 + 8))(v261, v207);
    v181 = Double.normalizedToEpoch(_:)(v192);
    v182 = 0;
  }

  v306 = v181;
  v307 = v182 & 1;
  if (v182)
  {
    v179 = 0;
  }

  else
  {
    v179 = v306;
  }

  sub_25B8E4838(v179);
  v178 = [v212 domainLookupEndDate];
  if (v178)
  {
    v177 = v178;
    v176 = v178;
    sub_25B946B78();
    (*(v208 + 32))(v255, v211, v207);
    (*(v208 + 56))(v255, 0, 1, v207);
    MEMORY[0x277D82BD8](v176);
  }

  else
  {
    (*(v208 + 56))(v255, 1, 1, v207);
  }

  sub_25B8EBBBC(v255, v257);
  if (v198(v257, 1, v207) == 1)
  {
    sub_25B8EBCE4(v257);
    v174 = 0;
    v175 = 1;
  }

  else
  {
    sub_25B946B68();
    v173 = v60;
    (*(v208 + 8))(v257, v207);
    v174 = Double.normalizedToEpoch(_:)(v192);
    v175 = 0;
  }

  v304 = v174;
  v305 = v175 & 1;
  if (v175)
  {
    v172 = 0;
  }

  else
  {
    v172 = v304;
  }

  sub_25B8E4A48(v172);
  v171 = [v212 connectStartDate];
  if (v171)
  {
    v170 = v171;
    v169 = v171;
    sub_25B946B78();
    (*(v208 + 32))(v251, v211, v207);
    (*(v208 + 56))(v251, 0, 1, v207);
    MEMORY[0x277D82BD8](v169);
  }

  else
  {
    (*(v208 + 56))(v251, 1, 1, v207);
  }

  sub_25B8EBBBC(v251, v253);
  if (v198(v253, 1, v207) == 1)
  {
    sub_25B8EBCE4(v253);
    v167 = 0;
    v168 = 1;
  }

  else
  {
    sub_25B946B68();
    v166 = v61;
    (*(v208 + 8))(v253, v207);
    v167 = Double.normalizedToEpoch(_:)(v192);
    v168 = 0;
  }

  v302 = v167;
  v303 = v168 & 1;
  if (v168)
  {
    v165 = 0;
  }

  else
  {
    v165 = v302;
  }

  sub_25B8E4C58(v165);
  v164 = [v212 secureConnectionStartDate];
  if (v164)
  {
    v163 = v164;
    v162 = v164;
    sub_25B946B78();
    (*(v208 + 32))(v247, v211, v207);
    (*(v208 + 56))(v247, 0, 1, v207);
    MEMORY[0x277D82BD8](v162);
  }

  else
  {
    (*(v208 + 56))(v247, 1, 1, v207);
  }

  sub_25B8EBBBC(v247, v249);
  if (v198(v249, 1, v207) == 1)
  {
    sub_25B8EBCE4(v249);
    v160 = 0;
    v161 = 1;
  }

  else
  {
    sub_25B946B68();
    v159 = v62;
    (*(v208 + 8))(v249, v207);
    v160 = Double.normalizedToEpoch(_:)(v192);
    v161 = 0;
  }

  v300 = v160;
  v301 = v161 & 1;
  if (v161)
  {
    v158 = 0;
  }

  else
  {
    v158 = v300;
  }

  sub_25B8E4E68(v158);
  v157 = [v212 secureConnectionEndDate];
  if (v157)
  {
    v156 = v157;
    v155 = v157;
    sub_25B946B78();
    (*(v208 + 32))(v243, v211, v207);
    (*(v208 + 56))(v243, 0, 1, v207);
    MEMORY[0x277D82BD8](v155);
  }

  else
  {
    (*(v208 + 56))(v243, 1, 1, v207);
  }

  sub_25B8EBBBC(v243, v245);
  if (v198(v245, 1, v207) == 1)
  {
    sub_25B8EBCE4(v245);
    v153 = 0;
    v154 = 1;
  }

  else
  {
    sub_25B946B68();
    v152 = v63;
    (*(v208 + 8))(v245, v207);
    v153 = Double.normalizedToEpoch(_:)(v192);
    v154 = 0;
  }

  v298 = v153;
  v299 = v154 & 1;
  if (v154)
  {
    v151 = 0;
  }

  else
  {
    v151 = v298;
  }

  sub_25B8E5078(v151);
  v150 = [v212 connectEndDate];
  if (v150)
  {
    v149 = v150;
    v148 = v150;
    sub_25B946B78();
    (*(v208 + 32))(v239, v211, v207);
    (*(v208 + 56))(v239, 0, 1, v207);
    MEMORY[0x277D82BD8](v148);
  }

  else
  {
    (*(v208 + 56))(v239, 1, 1, v207);
  }

  sub_25B8EBBBC(v239, v241);
  if (v198(v241, 1, v207) == 1)
  {
    sub_25B8EBCE4(v241);
    v146 = 0;
    v147 = 1;
  }

  else
  {
    sub_25B946B68();
    v145 = v64;
    (*(v208 + 8))(v241, v207);
    v146 = Double.normalizedToEpoch(_:)(v192);
    v147 = 0;
  }

  v296 = v146;
  v297 = v147 & 1;
  if (v147)
  {
    v144 = 0;
  }

  else
  {
    v144 = v296;
  }

  sub_25B8E5288(v144);
  v143 = [v212 requestStartDate];
  if (v143)
  {
    v142 = v143;
    v141 = v143;
    sub_25B946B78();
    (*(v208 + 32))(v235, v211, v207);
    (*(v208 + 56))(v235, 0, 1, v207);
    MEMORY[0x277D82BD8](v141);
  }

  else
  {
    (*(v208 + 56))(v235, 1, 1, v207);
  }

  sub_25B8EBBBC(v235, v237);
  if (v198(v237, 1, v207) == 1)
  {
    sub_25B8EBCE4(v237);
    v139 = 0;
    v140 = 1;
  }

  else
  {
    sub_25B946B68();
    v138 = v65;
    (*(v208 + 8))(v237, v207);
    v139 = Double.normalizedToEpoch(_:)(v192);
    v140 = 0;
  }

  v294 = v139;
  v295 = v140 & 1;
  if (v140)
  {
    v137 = 0;
  }

  else
  {
    v137 = v294;
  }

  sub_25B8E5498(v137);
  v136 = [v212 requestEndDate];
  if (v136)
  {
    v135 = v136;
    v134 = v136;
    sub_25B946B78();
    (*(v208 + 32))(v231, v211, v207);
    (*(v208 + 56))(v231, 0, 1, v207);
    MEMORY[0x277D82BD8](v134);
  }

  else
  {
    (*(v208 + 56))(v231, 1, 1, v207);
  }

  sub_25B8EBBBC(v231, v233);
  if (v198(v233, 1, v207) == 1)
  {
    sub_25B8EBCE4(v233);
    v132 = 0;
    v133 = 1;
  }

  else
  {
    sub_25B946B68();
    v131 = v66;
    (*(v208 + 8))(v233, v207);
    v132 = Double.normalizedToEpoch(_:)(v192);
    v133 = 0;
  }

  v292 = v132;
  v293 = v133 & 1;
  if (v133)
  {
    v130 = 0;
  }

  else
  {
    v130 = v292;
  }

  sub_25B8E56A8(v130);
  v129 = [v212 responseStartDate];
  if (v129)
  {
    v128 = v129;
    v127 = v129;
    sub_25B946B78();
    (*(v208 + 32))(v227, v211, v207);
    (*(v208 + 56))(v227, 0, 1, v207);
    MEMORY[0x277D82BD8](v127);
  }

  else
  {
    (*(v208 + 56))(v227, 1, 1, v207);
  }

  sub_25B8EBBBC(v227, v229);
  if (v198(v229, 1, v207) == 1)
  {
    sub_25B8EBCE4(v229);
    v125 = 0;
    v126 = 1;
  }

  else
  {
    sub_25B946B68();
    v124 = v67;
    (*(v208 + 8))(v229, v207);
    v125 = Double.normalizedToEpoch(_:)(v192);
    v126 = 0;
  }

  v290 = v125;
  v291 = v126 & 1;
  if (v126)
  {
    v123 = 0;
  }

  else
  {
    v123 = v290;
  }

  sub_25B8E58B8(v123);
  v122 = [v212 responseEndDate];
  if (v122)
  {
    v121 = v122;
    v120 = v122;
    sub_25B946B78();
    (*(v208 + 32))(v223, v211, v207);
    (*(v208 + 56))(v223, 0, 1, v207);
    MEMORY[0x277D82BD8](v120);
  }

  else
  {
    (*(v208 + 56))(v223, 1, 1, v207);
  }

  sub_25B8EBBBC(v223, v225);
  if (v198(v225, 1, v207) == 1)
  {
    sub_25B8EBCE4(v225);
    v118 = 0;
    v119 = 1;
  }

  else
  {
    sub_25B946B68();
    v117 = v68;
    (*(v208 + 8))(v225, v207);
    v118 = Double.normalizedToEpoch(_:)(v192);
    v119 = 0;
  }

  v288 = v118;
  v289 = v119 & 1;
  if (v119)
  {
    v116 = 0;
  }

  else
  {
    v116 = v288;
  }

  sub_25B8E5AC8(v116);
  v115 = [v212 responseEndDate];
  if (v115)
  {
    v114 = v115;
    v113 = v115;
    sub_25B946B78();
    (*(v208 + 32))(v219, v211, v207);
    (*(v208 + 56))(v219, 0, 1, v207);
    MEMORY[0x277D82BD8](v113);
  }

  else
  {
    (*(v208 + 56))(v219, 1, 1, v207);
  }

  sub_25B8EBBBC(v219, v221);
  if (v198(v221, 1, v207) == 1)
  {
    sub_25B8EBCE4(v221);
    v111 = 0.0;
    v112 = 1;
  }

  else
  {
    sub_25B946B68();
    v110 = v69;
    (*(v208 + 8))(v221, v207);
    v111 = v110;
    v112 = 0;
  }

  v286 = v111;
  v287 = v112 & 1;
  if (v112)
  {
    v109 = 0.0;
  }

  else
  {
    v109 = v286;
  }

  v107 = v109;
  v108 = [v212 fetchStartDate];
  if (v108)
  {
    v106 = v108;
    v105 = v108;
    sub_25B946B78();
    (*(v208 + 32))(v215, v211, v207);
    (*(v208 + 56))(v215, 0, 1, v207);
    MEMORY[0x277D82BD8](v105);
  }

  else
  {
    (*(v208 + 56))(v215, 1, 1, v207);
  }

  sub_25B8EBBBC(v215, v217);
  if (v198(v217, 1, v207) == 1)
  {
    sub_25B8EBCE4(v217);
    v103 = 0.0;
    v104 = 1;
  }

  else
  {
    sub_25B946B68();
    v102 = v70;
    (*(v208 + 8))(v217, v207);
    v103 = v102;
    v104 = 0;
  }

  v284 = v103;
  v285 = v104 & 1;
  if (v104)
  {
    v101 = 0.0;
  }

  else
  {
    v101 = v284;
  }

  v283 = v107 - v101;
  v100 = (v107 - v101) * 1000.0;
  if (((*&v100 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_25B947618(v202, 11, 2, v203, 79, 2, v204, 24, 2, 4024, 0);
    __break(1u);
  }

  if (v100 <= -1.0)
  {
    sub_25B947618(v202, 11, 2, v205, 91, 2, v204, 24, 2, 4027, 0);
    __break(1u);
  }

  if (v100 >= 4294967300.0)
  {
    sub_25B947618(v202, 11, 2, v206, 94, 2, v204, 24, 2, 4030, 0);
    __break(1u);
  }

  sub_25B8E4418(v100);
  v99 = [v212 networkProtocolName];
  if (v99)
  {
    v98 = v99;
    v93 = v99;
    v94 = sub_25B946F78();
    v95 = v71;
    MEMORY[0x277D82BD8](v93);
    v96 = v94;
    v97 = v95;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  v279 = v96;
  v280 = v97;
  if (v97)
  {
    v281 = v279;
    v282 = v280;
  }

  else
  {
    v281 = sub_25B946F48("", 0, 1);
    v282 = v72;
    if (v280)
    {
      sub_25B86AEEC(&v279);
    }
  }

  sub_25B8E5D08(v281, v282);
  v92 = [v212 localAddress];
  if (v92)
  {
    v91 = v92;
    v86 = v92;
    v87 = sub_25B946F78();
    v88 = v73;
    MEMORY[0x277D82BD8](v86);
    v89 = v87;
    v90 = v88;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v275 = v89;
  v276 = v90;
  if (v90)
  {
    v277 = v275;
    v278 = v276;
  }

  else
  {
    v277 = sub_25B946F48("", 0, 1);
    v278 = v74;
    if (v276)
    {
      sub_25B86AEEC(&v275);
    }
  }

  sub_25B8E5F7C(v277, v278);
  v85 = [v212 remoteAddress];
  if (v85)
  {
    v84 = v85;
    v79 = v85;
    v80 = sub_25B946F78();
    v81 = v75;
    MEMORY[0x277D82BD8](v79);
    v82 = v80;
    v83 = v81;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  v271 = v82;
  v272 = v83;
  if (v83)
  {
    v273 = v271;
    v274 = v272;
  }

  else
  {
    v273 = sub_25B946F48("", 0, 1);
    v274 = v76;
    if (v272)
    {
      sub_25B86AEEC(&v271);
    }
  }

  sub_25B8E61F0(v273, v274);
  sub_25B8E6434([v212 countOfResponseBodyBytesReceived]);
  return sub_25B8E6644([v212 countOfResponseBodyBytesAfterDecoding]);
}

Swift::UInt32 __swiftcall Double.normalizedToEpoch(_:)(Swift::Double a1)
{
  if (a1 >= v1)
  {
    return 0;
  }

  v5 = (v1 - a1) * 1000.0;
  sub_25B8EBD8C();
  sub_25B947378();
  if (v5 >= v2)
  {
    return -1;
  }

  if (((*&v5 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because it is either infinite or NaN", 79, 2, "Swift/IntegerTypes.swift", 24, 2, 4024, 0);
    __break(1u);
  }

  if (v5 <= -1.0)
  {
    sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because the result would be less than UInt32.min", 91, 2, "Swift/IntegerTypes.swift", 24, 2, 4027, 0);
    __break(1u);
  }

  if (v5 >= 4294967300.0)
  {
    sub_25B947618("Fatal error", 11, 2, "Double value cannot be converted to UInt32 because the result would be greater than UInt32.max", 94, 2, "Swift/IntegerTypes.swift", 24, 2, 4030, 0);
    __break(1u);
  }

  return v5;
}

uint64_t sub_25B8E9430(uint64_t a1, uint64_t a2)
{
  v66[2] = a1;
  v66[3] = a2;
  sub_25B946ED8();
  v66[0] = sub_25B946F48("url", 3, 1);
  v66[1] = v2;
  v65[2] = a1;
  v65[3] = a2;
  v46 = MEMORY[0x25F870E10](v66[0], v2, a1, a2);
  sub_25B86AEEC(v66);
  if (v46)
  {

    v67 = 0;
    v43 = 0;
LABEL_42:

    return v43;
  }

  sub_25B946ED8();
  v65[0] = sub_25B946F48("statusCode", 10, 1);
  v65[1] = v3;
  v64[2] = a1;
  v64[3] = a2;
  v42 = MEMORY[0x25F870E10](v65[0], v3, a1, a2);
  sub_25B86AEEC(v65);
  if (v42)
  {

    v67 = 1;
    v43 = 1;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v64[0] = sub_25B946F48("error", 5, 1);
  v64[1] = v4;
  v63[2] = a1;
  v63[3] = a2;
  v41 = MEMORY[0x25F870E10](v64[0], v4, a1, a2);
  sub_25B86AEEC(v64);
  if (v41)
  {

    v67 = 2;
    v43 = 2;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v63[0] = sub_25B946F48("totalTime", 9, 1);
  v63[1] = v5;
  v62[2] = a1;
  v62[3] = a2;
  v40 = MEMORY[0x25F870E10](v63[0], v5, a1, a2);
  sub_25B86AEEC(v63);
  if (v40)
  {

    v67 = 3;
    v43 = 3;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v62[0] = sub_25B946F48("fetchStart", 10, 1);
  v62[1] = v6;
  v61[2] = a1;
  v61[3] = a2;
  v39 = MEMORY[0x25F870E10](v62[0], v6, a1, a2);
  sub_25B86AEEC(v62);
  if (v39)
  {

    v67 = 4;
    v43 = 4;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v61[0] = sub_25B946F48("domainLookupStart", 17, 1);
  v61[1] = v7;
  v60[2] = a1;
  v60[3] = a2;
  v38 = MEMORY[0x25F870E10](v61[0], v7, a1, a2);
  sub_25B86AEEC(v61);
  if (v38)
  {

    v67 = 5;
    v43 = 5;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v60[0] = sub_25B946F48("domainLookupEnd", 15, 1);
  v60[1] = v8;
  v59[2] = a1;
  v59[3] = a2;
  v37 = MEMORY[0x25F870E10](v60[0], v8, a1, a2);
  sub_25B86AEEC(v60);
  if (v37)
  {

    v67 = 6;
    v43 = 6;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v59[0] = sub_25B946F48("connectStart", 12, 1);
  v59[1] = v9;
  v58[2] = a1;
  v58[3] = a2;
  v36 = MEMORY[0x25F870E10](v59[0], v9, a1, a2);
  sub_25B86AEEC(v59);
  if (v36)
  {

    v67 = 7;
    v43 = 7;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v58[0] = sub_25B946F48("secureConnectionStart", 21, 1);
  v58[1] = v10;
  v57[2] = a1;
  v57[3] = a2;
  v35 = MEMORY[0x25F870E10](v58[0], v10, a1, a2);
  sub_25B86AEEC(v58);
  if (v35)
  {

    v67 = 8;
    v43 = 8;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v57[0] = sub_25B946F48("secureConnectionEnd", 19, 1);
  v57[1] = v11;
  v56[2] = a1;
  v56[3] = a2;
  v34 = MEMORY[0x25F870E10](v57[0], v11, a1, a2);
  sub_25B86AEEC(v57);
  if (v34)
  {

    v67 = 9;
    v43 = 9;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v56[0] = sub_25B946F48("connectEnd", 10, 1);
  v56[1] = v12;
  v55[2] = a1;
  v55[3] = a2;
  v33 = MEMORY[0x25F870E10](v56[0], v12, a1, a2);
  sub_25B86AEEC(v56);
  if (v33)
  {

    v67 = 10;
    v43 = 10;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v55[0] = sub_25B946F48("requestStart", 12, 1);
  v55[1] = v13;
  v54[2] = a1;
  v54[3] = a2;
  v32 = MEMORY[0x25F870E10](v55[0], v13, a1, a2);
  sub_25B86AEEC(v55);
  if (v32)
  {

    v67 = 11;
    v43 = 11;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v54[0] = sub_25B946F48("requestEnd", 10, 1);
  v54[1] = v14;
  v53[2] = a1;
  v53[3] = a2;
  v31 = MEMORY[0x25F870E10](v54[0], v14, a1, a2);
  sub_25B86AEEC(v54);
  if (v31)
  {

    v67 = 12;
    v43 = 12;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v53[0] = sub_25B946F48("responseStart", 13, 1);
  v53[1] = v15;
  v52[2] = a1;
  v52[3] = a2;
  v30 = MEMORY[0x25F870E10](v53[0], v15, a1, a2);
  sub_25B86AEEC(v53);
  if (v30)
  {

    v67 = 13;
    v43 = 13;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v52[0] = sub_25B946F48("responseEnd", 11, 1);
  v52[1] = v16;
  v51[2] = a1;
  v51[3] = a2;
  v29 = MEMORY[0x25F870E10](v52[0], v16, a1, a2);
  sub_25B86AEEC(v52);
  if (v29)
  {

    v67 = 14;
    v43 = 14;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v51[0] = sub_25B946F48("networkProtocolName", 19, 1);
  v51[1] = v17;
  v50[2] = a1;
  v50[3] = a2;
  v28 = MEMORY[0x25F870E10](v51[0], v17, a1, a2);
  sub_25B86AEEC(v51);
  if (v28)
  {

    v67 = 15;
    v43 = 15;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v50[0] = sub_25B946F48("localAddress", 12, 1);
  v50[1] = v18;
  v49[2] = a1;
  v49[3] = a2;
  v27 = MEMORY[0x25F870E10](v50[0], v18, a1, a2);
  sub_25B86AEEC(v50);
  if (v27)
  {

    v67 = 16;
    v43 = 16;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v49[0] = sub_25B946F48("remoteAddress", 13, 1);
  v49[1] = v19;
  v48[2] = a1;
  v48[3] = a2;
  v26 = MEMORY[0x25F870E10](v49[0], v19, a1, a2);
  sub_25B86AEEC(v49);
  if (v26)
  {

    v67 = 17;
    v43 = 17;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v48[0] = sub_25B946F48("countOfResponseBodyBytesReceived", 32, 1);
  v48[1] = v20;
  v47[2] = a1;
  v47[3] = a2;
  v25 = MEMORY[0x25F870E10](v48[0], v20, a1, a2);
  sub_25B86AEEC(v48);
  if (v25)
  {

    v67 = 18;
    v43 = 18;
    goto LABEL_42;
  }

  sub_25B946ED8();
  v47[0] = sub_25B946F48("countOfResponseBodyBytesAfterDecoding", 37, 1);
  v47[1] = v21;
  v24 = MEMORY[0x25F870E10](v47[0], v21, a1, a2);
  sub_25B86AEEC(v47);
  if (v24)
  {

    v67 = 19;
    v43 = 19;
    goto LABEL_42;
  }

  return 20;
}

BOOL sub_25B8EA0A4(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      v4 = 1;
      break;
    case 2:
      v4 = 2;
      break;
    case 3:
      v4 = 3;
      break;
    case 4:
      v4 = 4;
      break;
    case 5:
      v4 = 5;
      break;
    case 6:
      v4 = 6;
      break;
    case 7:
      v4 = 7;
      break;
    case 8:
      v4 = 8;
      break;
    case 9:
      v4 = 9;
      break;
    case 10:
      v4 = 10;
      break;
    case 11:
      v4 = 11;
      break;
    case 12:
      v4 = 12;
      break;
    case 13:
      v4 = 13;
      break;
    case 14:
      v4 = 14;
      break;
    case 15:
      v4 = 15;
      break;
    case 16:
      v4 = 16;
      break;
    case 17:
      v4 = 17;
      break;
    case 18:
      v4 = 18;
      break;
    case 19:
      v4 = 19;
      break;
    default:
      v4 = 0;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    default:
      v3 = 0;
      break;
  }

  return v4 == v3;
}

uint64_t sub_25B8EA6D4(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = sub_25B946F48("statusCode", 10, 1);
      break;
    case 2:
      v2 = sub_25B946F48("error", 5, 1);
      break;
    case 3:
      v2 = sub_25B946F48("totalTime", 9, 1);
      break;
    case 4:
      v2 = sub_25B946F48("fetchStart", 10, 1);
      break;
    case 5:
      v2 = sub_25B946F48("domainLookupStart", 17, 1);
      break;
    case 6:
      v2 = sub_25B946F48("domainLookupEnd", 15, 1);
      break;
    case 7:
      v2 = sub_25B946F48("connectStart", 12, 1);
      break;
    case 8:
      v2 = sub_25B946F48("secureConnectionStart", 21, 1);
      break;
    case 9:
      v2 = sub_25B946F48("secureConnectionEnd", 19, 1);
      break;
    case 10:
      v2 = sub_25B946F48("connectEnd", 10, 1);
      break;
    case 11:
      v2 = sub_25B946F48("requestStart", 12, 1);
      break;
    case 12:
      v2 = sub_25B946F48("requestEnd", 10, 1);
      break;
    case 13:
      v2 = sub_25B946F48("responseStart", 13, 1);
      break;
    case 14:
      v2 = sub_25B946F48("responseEnd", 11, 1);
      break;
    case 15:
      v2 = sub_25B946F48("networkProtocolName", 19, 1);
      break;
    case 16:
      v2 = sub_25B946F48("localAddress", 12, 1);
      break;
    case 17:
      v2 = sub_25B946F48("remoteAddress", 13, 1);
      break;
    case 18:
      v2 = sub_25B946F48("countOfResponseBodyBytesReceived", 32, 1);
      break;
    case 19:
      v2 = sub_25B946F48("countOfResponseBodyBytesAfterDecoding", 37, 1);
      break;
    default:
      v2 = sub_25B946F48("url", 3, 1);
      break;
  }

  return v2;
}

uint64_t sub_25B8EAB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8E9430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B8EAB48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8EA08C();
  *a1 = result;
  return result;
}

id NetworkInfoURLRetrievalResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoURLRetrievalResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8EACA8(uint64_t a1)
{
  v90 = a1;
  v123 = 0;
  v122 = 0;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB408, &qword_25B94B268);
  v91 = *(v97 - 8);
  v92 = v97 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = v28 - v93;
  v123 = MEMORY[0x28223BE20](v90);
  v122 = v1;
  v94 = v123[3];
  v95 = v123[4];
  __swift_project_boxed_opaque_existential_1(v123, v94);
  sub_25B8EBE80();
  sub_25B9479C8();
  sub_25B8E3CE0();
  v2 = v98;
  v99 = v3;
  v121 = 0;
  sub_25B947738();
  v100 = v2;
  v101 = v2;
  if (v2)
  {
    v46 = v101;

    result = (*(v91 + 8))(v96, v97);
    v47 = v46;
  }

  else
  {

    sub_25B8E3F34();
    v4 = v100;
    v120 = 1;
    sub_25B947768();
    v88 = v4;
    v89 = v4;
    if (v4)
    {
      v45 = v89;
      result = (*(v91 + 8))(v96, v97);
      v47 = v45;
    }

    else
    {
      sub_25B8E4164();
      v5 = v88;
      v85 = v6;
      v119 = 2;
      sub_25B9476F8();
      v86 = v5;
      v87 = v5;
      if (v5)
      {
        v44 = v87;

        result = (*(v91 + 8))(v96, v97);
        v47 = v44;
      }

      else
      {

        sub_25B8E43B4();
        v7 = v86;
        v118 = 3;
        sub_25B9477A8();
        v83 = v7;
        v84 = v7;
        if (v7)
        {
          v43 = v84;
          result = (*(v91 + 8))(v96, v97);
          v47 = v43;
        }

        else
        {
          sub_25B8E45C4();
          v8 = v83;
          v117 = 4;
          sub_25B9477A8();
          v81 = v8;
          v82 = v8;
          if (v8)
          {
            v42 = v82;
            result = (*(v91 + 8))(v96, v97);
            v47 = v42;
          }

          else
          {
            sub_25B8E47D4();
            v9 = v81;
            v116 = 5;
            sub_25B9477A8();
            v79 = v9;
            v80 = v9;
            if (v9)
            {
              v41 = v80;
              result = (*(v91 + 8))(v96, v97);
              v47 = v41;
            }

            else
            {
              sub_25B8E49E4();
              v10 = v79;
              v115 = 6;
              sub_25B9477A8();
              v77 = v10;
              v78 = v10;
              if (v10)
              {
                v40 = v78;
                result = (*(v91 + 8))(v96, v97);
                v47 = v40;
              }

              else
              {
                sub_25B8E4BF4();
                v11 = v77;
                v114 = 7;
                sub_25B9477A8();
                v75 = v11;
                v76 = v11;
                if (v11)
                {
                  v39 = v76;
                  result = (*(v91 + 8))(v96, v97);
                  v47 = v39;
                }

                else
                {
                  sub_25B8E4E04();
                  v12 = v75;
                  v113 = 8;
                  sub_25B9477A8();
                  v73 = v12;
                  v74 = v12;
                  if (v12)
                  {
                    v38 = v74;
                    result = (*(v91 + 8))(v96, v97);
                    v47 = v38;
                  }

                  else
                  {
                    sub_25B8E5014();
                    v13 = v73;
                    v112 = 9;
                    sub_25B9477A8();
                    v71 = v13;
                    v72 = v13;
                    if (v13)
                    {
                      v37 = v72;
                      result = (*(v91 + 8))(v96, v97);
                      v47 = v37;
                    }

                    else
                    {
                      sub_25B8E5224();
                      v14 = v71;
                      v111 = 10;
                      sub_25B9477A8();
                      v69 = v14;
                      v70 = v14;
                      if (v14)
                      {
                        v36 = v70;
                        result = (*(v91 + 8))(v96, v97);
                        v47 = v36;
                      }

                      else
                      {
                        sub_25B8E5434();
                        v15 = v69;
                        v110 = 11;
                        sub_25B9477A8();
                        v67 = v15;
                        v68 = v15;
                        if (v15)
                        {
                          v35 = v68;
                          result = (*(v91 + 8))(v96, v97);
                          v47 = v35;
                        }

                        else
                        {
                          sub_25B8E5644();
                          v16 = v67;
                          v109 = 12;
                          sub_25B9477A8();
                          v65 = v16;
                          v66 = v16;
                          if (v16)
                          {
                            v34 = v66;
                            result = (*(v91 + 8))(v96, v97);
                            v47 = v34;
                          }

                          else
                          {
                            sub_25B8E5854();
                            v17 = v65;
                            v108 = 13;
                            sub_25B9477A8();
                            v63 = v17;
                            v64 = v17;
                            if (v17)
                            {
                              v33 = v64;
                              result = (*(v91 + 8))(v96, v97);
                              v47 = v33;
                            }

                            else
                            {
                              sub_25B8E5A64();
                              v18 = v63;
                              v107 = 14;
                              sub_25B9477A8();
                              v61 = v18;
                              v62 = v18;
                              if (v18)
                              {
                                v32 = v62;
                                result = (*(v91 + 8))(v96, v97);
                                v47 = v32;
                              }

                              else
                              {
                                sub_25B8E5C94();
                                v19 = v61;
                                v58 = v20;
                                v106 = 15;
                                sub_25B947738();
                                v59 = v19;
                                v60 = v19;
                                if (v19)
                                {
                                  v31 = v60;

                                  result = (*(v91 + 8))(v96, v97);
                                  v47 = v31;
                                }

                                else
                                {

                                  sub_25B8E5F08();
                                  v21 = v59;
                                  v55 = v22;
                                  v105 = 16;
                                  sub_25B947738();
                                  v56 = v21;
                                  v57 = v21;
                                  if (v21)
                                  {
                                    v30 = v57;

                                    result = (*(v91 + 8))(v96, v97);
                                    v47 = v30;
                                  }

                                  else
                                  {

                                    sub_25B8E617C();
                                    v23 = v56;
                                    v52 = v24;
                                    v104 = 17;
                                    sub_25B947738();
                                    v53 = v23;
                                    v54 = v23;
                                    if (v23)
                                    {
                                      v29 = v54;

                                      result = (*(v91 + 8))(v96, v97);
                                      v47 = v29;
                                    }

                                    else
                                    {

                                      sub_25B8E63D0();
                                      v25 = v53;
                                      v103 = 18;
                                      sub_25B947798();
                                      v50 = v25;
                                      v51 = v25;
                                      if (v25)
                                      {
                                        v28[2] = v51;
                                        return (*(v91 + 8))(v96, v97);
                                      }

                                      else
                                      {
                                        sub_25B8E65E0();
                                        v26 = v50;
                                        v102 = 19;
                                        sub_25B947798();
                                        v48 = v26;
                                        v49 = v26;
                                        if (v26)
                                        {
                                          v28[1] = v49;
                                        }

                                        return (*(v91 + 8))(v96, v97);
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}