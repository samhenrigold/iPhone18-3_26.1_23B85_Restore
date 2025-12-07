uint64_t sub_2554F8928()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2554F8960()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t MediaSuggesterService.__allocating_init()()
{
  sub_2554F9154();
  v0 = swift_allocObject();
  type metadata accessor for MediaSuggesterClient();
  sub_2554F9154();
  swift_allocObject();
  *(v0 + 16) = sub_2554FBBA4();
  return v0;
}

uint64_t MediaSuggesterService.init()()
{
  type metadata accessor for MediaSuggesterClient();
  sub_2554F9154();
  swift_allocObject();
  *(v0 + 16) = sub_2554FBBA4();
  return v0;
}

Swift::String __swiftcall MediaSuggesterService.hello()()
{
  v0 = sub_2554F9160();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t MediaSuggesterService.suggestions(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_2554F9108();
}

uint64_t sub_2554F8A74()
{
  sub_2554F9128();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2554F9104;
  sub_2554F9118();

  return sub_2554F9378();
}

uint64_t sub_2554F8B18()
{
  sub_2554F9128();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2554F8BA8;

  return sub_2554F9B48();
}

uint64_t sub_2554F8BA8()
{
  sub_2554F9128();
  sub_2554F9144();
  v3 = *v2;
  sub_2554F9134();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t MediaSuggesterService.candidates(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_2554F9108();
}

uint64_t sub_2554F8CA8()
{
  sub_2554F9128();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2554F8D38;
  sub_2554F9118();

  return sub_2554FA154();
}

uint64_t sub_2554F8D38()
{
  sub_2554F9128();
  sub_2554F9144();
  v3 = *v2;
  sub_2554F9134();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t MediaSuggesterService.candidates(for:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_2554F9108();
}

uint64_t sub_2554F8E3C()
{
  sub_2554F9128();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2554F8ED0;
  sub_2554F9118();

  return sub_2554FA9B0();
}

uint64_t sub_2554F8ED0()
{
  sub_2554F9128();
  sub_2554F9144();
  v3 = *v2;
  sub_2554F9134();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t MediaSuggesterService.candidateCount(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_2554F9108();
}

uint64_t sub_2554F8FD0()
{
  sub_2554F9128();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2554F9104;
  sub_2554F9118();

  return sub_2554FB24C();
}

uint64_t MediaSuggesterService.__deallocating_deinit()
{

  sub_2554F9154();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2554F9160()
{
  sub_2554FDFBC();
  sub_2554FDA48();
  result = MEMORY[0x28223BE20](v1);
  if (*(v0 + 16))
  {

    sub_2554FDE7C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2554F9378()
{
  sub_2554F9128();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_2554FDF2C();
  v1[20] = v3;
  sub_2554FDA6C(v3);
  v1[21] = v4;
  v1[22] = sub_2554FDC8C();
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2554F944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v23 = sub_2554FDC68(v22);
  sub_2554FDE2C();
  sub_2554FDD2C();
  v24 = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  v20[23] = v24;
  v25 = sub_2554FDBD8(v24);
  *(v25 + 16) = xmmword_2554FE520;
  [v19 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v25 + 56) = MEMORY[0x277D837D0];
  v26 = sub_2554FCF64();
  v20[24] = v26;
  sub_2554FDA08(v26);
  sub_2554FDEFC(v23, &dword_2554F7000, v21, "(Daemon) Suggestions Fetch", 26, 2, v18, "begin for bundleId: %{public}s");

  sub_2554FDAD0();
  v20[25] = v27;
  v20[26] = v28;
  v29 = sub_2554FDCB0();
  v30(v29);
  v31 = objc_opt_self();
  v20[16] = 0;
  v32 = sub_2554FDB68(v31, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v33 = sub_2554FDCFC();
  if (v19)
  {
    v34 = v20[19];
    sub_2554FDDDC();
    sub_2554FDD44();
    v20[27] = v21;
    v20[28] = v23;
    v36 = *(v34 + 16);
    v20[29] = v36;
    if (v36)
    {
      v37 = swift_task_alloc();
      v20[30] = v37;
      *(v37 + 16) = v21;
      *(v37 + 24) = v23;

      v38 = swift_task_alloc();
      v20[31] = v38;
      *v38 = v20;
      sub_2554FDCD4(v38);
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v35);
  }

  else
  {
    v40 = v33;
    sub_2554FDDBC();

    swift_willThrow();

    sub_2554FDA7C();
    sub_2554FDA88();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2554F96C8()
{
  sub_2554FDB0C();
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v4 = *v1;
  sub_2554F9134();
  *v5 = v4;
  *(v2 + 256) = v0;

  if (!v0)
  {
  }

  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2554F9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_2554FDCE0();
  v48 = *MEMORY[0x277D85DE8];
  v23 = v20[32];
  sub_2554FD67C(0, &qword_27F7B8140, 0x277CCAAC8);
  sub_2554FCF1C(&qword_27F7B8148, &qword_2554FE6A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2554FE530;
  *(v24 + 32) = sub_2554FD67C(0, &qword_27F7B8150, 0x277CBEA60);
  *(v24 + 40) = sub_2554FD67C(0, &qword_27F7B8158, 0x277CCACA8);
  *(v24 + 48) = sub_2554FE04C();
  *(v24 + 56) = sub_2554FE00C();
  *(v24 + 64) = sub_2554FDFEC();
  *(v24 + 72) = sub_2554FD67C(0, &qword_27F7B8160, 0x277D23720);
  *(v24 + 80) = sub_2554FDE0C();
  *(v24 + 88) = sub_2554FD67C(0, &qword_27F7B8168, 0x277CD3EC0);
  *(v24 + 96) = sub_2554FDDFC();
  sub_2554FDAB0();
  if (v23)
  {
    sub_2554FD00C(v20[27], v20[28]);
    sub_2554FDB84();

    sub_2554FDA7C();
    sub_2554FDAF0();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v48, a18, a19, a20);
  }

  else
  {
    sub_2554FDB18();
    HIDWORD(a12) = sub_2554FE02C();
    v34 = sub_2554FDE2C();
    sub_2554FDE1C();
    *(sub_2554FDBD8(v21) + 16) = xmmword_2554FE520;
    v35 = [v22 bundleId];
    sub_2554FDFCC();

    sub_2554FDA28(MEMORY[0x277D837D0]);
    sub_2554FDC2C(HIDWORD(a12), &dword_2554F7000, v34, "(Daemon) Suggestions Fetch", 26, v36, v37, "end for bundleId: %{public}s");

    v38 = sub_2554FDB9C();
    v39(v38);
    if (v20[5])
    {
      result = sub_2554FDD74();
      if (!v20[13])
      {
        __break(1u);
        return result;
      }

      sub_2554FD00C(v20[27], v20[28]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
      sub_2554FDD5C();
      sub_2554FCF1C(&qword_27F7B8178, &qword_2554FE6B0);
      sub_2554FDB48();
    }

    else
    {
      sub_2554FD00C(v20[27], v20[28]);
      sub_2554FDB84();
      sub_2554FD7E4((v20 + 2), &qword_27F7B8170, &qword_2554FE6A8);
    }

    sub_2554FDBAC();
    sub_2554FDCBC();
    sub_2554FDAF0();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, v48, a18, a19, a20);
  }
}

uint64_t sub_2554F9B48()
{
  sub_2554F9128();
  v1[17] = v0;
  v2 = sub_2554FDF2C();
  v1[18] = v2;
  sub_2554FDA6C(v2);
  v1[19] = v3;
  v1[20] = sub_2554FDC8C();
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2554F9BF0()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = sub_2554FE03C();
  v6 = sub_2554FDE2C();
  sub_2554FDE1C();
  sub_2554FDC2C(v5, &dword_2554F7000, v6, "(Daemon) BundleID Fetch", 23, v7, v8, "begin");

  v9 = *(v2 + 8);
  v0[21] = v9;
  v0[22] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = v9(v1, v3);
  v11 = *(v4 + 16);
  v0[23] = v11;
  if (v11)
  {

    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_2554F9D68;
    v10 = (v0 + 14);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821A27B8](v10);
}

uint64_t sub_2554F9D68()
{
  sub_2554F9128();
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v4 = *v1;
  sub_2554F9134();
  *v5 = v4;
  *(v2 + 200) = v0;

  if (!v0)
  {
  }

  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2554F9E6C()
{
  v1 = v0[25];
  sub_2554FD67C(0, &qword_27F7B8140, 0x277CCAAC8);
  sub_2554FCF1C(&qword_27F7B8148, &qword_2554FE6A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2554FE540;
  *(v2 + 32) = sub_2554FD67C(0, &qword_27F7B8150, 0x277CBEA60);
  *(v2 + 40) = sub_2554FD67C(0, &qword_27F7B8158, 0x277CCACA8);
  sub_2554FDAB0();
  if (v1)
  {
    sub_2554FDB84();

    sub_2554FDA7C();

    return v3();
  }

  else
  {
    v5 = v0[21];
    v6 = v0[20];
    v7 = v0[18];

    v8 = sub_2554FE02C();
    v9 = sub_2554FDE2C();
    sub_2554FDE1C();
    sub_2554FDC2C(v8, &dword_2554F7000, v9, "(Daemon) BundleID Fetch", 23, v10, v11, "end");

    v5(v6, v7);
    if (v0[5])
    {
      result = sub_2554FDD74();
      if (!v0[13])
      {
        __break(1u);
        return result;
      }

      sub_2554FDB84();
      sub_2554FD7E4((v0 + 2), &qword_27F7B8170, &qword_2554FE6A8);
      sub_2554FDD5C();
      sub_2554FCF1C(&qword_27F7B8180, &qword_2554FE6C8);
      swift_dynamicCast();
    }

    else
    {
      sub_2554FDB84();
      sub_2554FD7E4((v0 + 2), &qword_27F7B8170, &qword_2554FE6A8);
    }

    v12 = sub_2554FDCBC();

    return v13(v12);
  }
}

uint64_t sub_2554FA0F0()
{
  sub_2554F9128();

  sub_2554FDA7C();

  return v0();
}

uint64_t sub_2554FA154()
{
  sub_2554F9128();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_2554FDF2C();
  v1[20] = v3;
  sub_2554FDA6C(v3);
  v1[21] = v4;
  v1[22] = sub_2554FDC8C();
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2554FA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v22 = sub_2554FDC68(v21);
  sub_2554FDE2C();
  sub_2554FDD2C();
  v23 = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  v19[23] = v23;
  v24 = sub_2554FDBD8(v23);
  *(v24 + 16) = xmmword_2554FE520;
  [v18 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v24 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2554FCF64();
  v19[24] = v25;
  v26 = sub_2554FDA08(v25);
  sub_2554FDC44(v26, &dword_2554F7000, v27, "(Daemon) Candidates Fetch", v28, v29, v30, "begin for bundleId: %{public}s");

  sub_2554FDAD0();
  v19[25] = v31;
  v19[26] = v32;
  v33 = sub_2554FDCB0();
  v34(v33);
  v35 = objc_opt_self();
  v19[16] = 0;
  v36 = sub_2554FDB68(v35, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v37 = sub_2554FDCFC();
  if (v18)
  {
    v38 = v19[19];
    sub_2554FDDDC();
    sub_2554FDD44();
    v19[27] = v20;
    v19[28] = v22;
    v40 = *(v38 + 16);
    v19[29] = v40;
    if (v40)
    {
      v41 = swift_task_alloc();
      v19[30] = v41;
      *(v41 + 16) = v20;
      *(v41 + 24) = v22;

      v42 = swift_task_alloc();
      v19[31] = v42;
      *v42 = v19;
      sub_2554FDCD4(v42);
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v39);
  }

  else
  {
    v44 = v37;
    sub_2554FDDBC();

    swift_willThrow();

    sub_2554FDA7C();
    sub_2554FDA88();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2554FA490()
{
  sub_2554FDB0C();
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v4 = *v1;
  sub_2554F9134();
  *v5 = v4;
  *(v2 + 256) = v0;

  if (!v0)
  {
  }

  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2554FA904()
{
  sub_2554FDB0C();
  sub_2554FD00C(*(v0 + 216), *(v0 + 224));

  sub_2554FDA7C();

  return v1();
}

uint64_t sub_2554FA9B0()
{
  sub_2554F9128();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_2554FDF2C();
  v1[22] = v5;
  sub_2554FDA6C(v5);
  v1[23] = v6;
  v1[24] = sub_2554FDC8C();
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2554FAA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v55 = *MEMORY[0x277D85DE8];
  v54 = *(v18 + 176);
  v20 = *(v18 + 144);
  v21 = sub_2554FE03C();
  sub_2554FDE2C();
  sub_2554FDD2C();
  v22 = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  *(v18 + 200) = v22;
  v23 = sub_2554FDBD8(v22);
  *(v23 + 16) = xmmword_2554FE520;
  [v20 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v23 + 56) = MEMORY[0x277D837D0];
  v24 = sub_2554FCF64();
  *(v18 + 208) = v24;
  v25 = sub_2554FDA08(v24);
  sub_2554FDC44(v25, &dword_2554F7000, v26, "(Daemon) Candidates Fetch", v27, v28, v29, "begin for bundleId: %{public}s");

  sub_2554FDAD0();
  *(v18 + 216) = v30;
  *(v18 + 224) = v31;
  v32 = sub_2554FDCB0();
  v33(v32);
  v34 = objc_opt_self();
  *(v18 + 128) = 0;
  v35 = sub_2554FDB68(v34, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v36 = sub_2554FDCFC();
  if (v20)
  {
    v37 = *(v18 + 168);
    sub_2554FDDDC();
    sub_2554FDD44();
    *(v18 + 232) = v19;
    *(v18 + 240) = v21;
    v39 = *(v37 + 16);
    *(v18 + 248) = v39;
    if (v39)
    {
      v40 = swift_task_alloc();
      *(v18 + 256) = v40;
      v41 = *(v18 + 152);
      *(v40 + 16) = v19;
      *(v40 + 24) = v21;
      *(v40 + 32) = v41;

      v42 = swift_task_alloc();
      *(v18 + 264) = v42;
      *v42 = v18;
      sub_2554FDCD4(v42);
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v38);
  }

  else
  {
    v44 = v36;
    sub_2554FDDBC();

    swift_willThrow();

    sub_2554FDA7C();
    sub_2554FDA88();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, v54, a14, v55, a16, a17, a18);
  }
}

uint64_t sub_2554FAD0C()
{
  sub_2554FDB0C();
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v4 = *v1;
  sub_2554F9134();
  *v5 = v4;
  *(v2 + 272) = v0;

  if (!v0)
  {
  }

  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2554FB1A0()
{
  sub_2554FDB0C();
  sub_2554FD00C(*(v0 + 232), *(v0 + 240));

  sub_2554FDA7C();

  return v1();
}

uint64_t sub_2554FB24C()
{
  sub_2554F9128();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_2554FDF2C();
  v1[7] = v3;
  sub_2554FDA6C(v3);
  v1[8] = v4;
  v1[9] = sub_2554FDC8C();
  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2554FB320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2554FDBBC();
  sub_2554FDCA4();
  v50 = *MEMORY[0x277D85DE8];
  v20 = v18[9];
  v49 = v18[7];
  v21 = v18[5];
  v22 = sub_2554FE03C();
  sub_2554FDE2C();
  sub_2554FDD2C();
  v23 = sub_2554FCF1C(&qword_27F7B8130, &qword_2554FE690);
  v18[10] = v23;
  v24 = sub_2554FDBD8(v23);
  *(v24 + 16) = xmmword_2554FE520;
  [v21 bundleId];
  sub_2554FDFCC();
  sub_2554FDD14();
  *(v24 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2554FCF64();
  v18[11] = v25;
  sub_2554FDA08(v25);
  sub_2554FDEFC(v22, &dword_2554F7000, v19, "(Daemon) Candidate count fetch", 30, 2, v20, "begin for bundleId: %{public}s");

  sub_2554FDAD0();
  v18[12] = v26;
  v18[13] = v27;
  v28 = sub_2554FDCB0();
  v29(v28);
  v30 = objc_opt_self();
  v18[4] = 0;
  v31 = sub_2554FDB68(v30, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
  v32 = sub_2554FDCFC();
  if (v21)
  {
    v33 = v18[6];
    sub_2554FDDDC();
    sub_2554FDD44();
    v18[14] = v19;
    v18[15] = v22;
    v35 = *(v33 + 16);
    v18[16] = v35;
    if (v35)
    {
      v36 = swift_task_alloc();
      v18[17] = v36;
      *(v36 + 16) = v19;
      *(v36 + 24) = v22;

      v37 = swift_task_alloc();
      v18[18] = v37;
      *v37 = v18;
      sub_2554FDCD4(v37);
      sub_2554FDCC8();
      sub_2554FDAE0();
      sub_2554FDA88();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821A27B8](v34);
  }

  else
  {
    v39 = v32;
    sub_2554FDDBC();

    swift_willThrow();

    sub_2554FDA7C();
    sub_2554FDA88();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, v49, a14, v50, a16, a17, a18);
  }
}

uint64_t sub_2554FB5B0()
{
  sub_2554FDB0C();
  v2 = *v1;
  sub_2554FDA5C();
  *v3 = v2;
  v4 = *v1;
  sub_2554F9134();
  *v5 = v4;
  *(v2 + 152) = v0;

  if (!v0)
  {
  }

  sub_2554FDAA4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2554FB6F0(uint64_t a1)
{
  v24 = v1[15];
  v23 = v1[14];
  v22 = v1[12];
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[9];
  v21 = v1[7];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v20 = sub_2554FE02C();
  v8 = sub_2554FDE2C();
  sub_2554FDE1C();
  v9 = sub_2554FDBD8(v2);
  *(v9 + 16) = xmmword_2554FE520;
  v10 = [v5 bundleId];
  v11 = sub_2554FDFCC();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = v3;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_2554FDC2C(v20, &dword_2554F7000, v8, "(Daemon) Candidate count fetch", 30, v14, v15, "end for bundleId: %{public}s");

  v22(v4, v21);
  v16 = sub_2554FCAE4(v6, v7);
  sub_2554FD00C(v23, v24);
  sub_2554FD00C(v6, v7);

  v17 = v1[1];
  v18 = bswap64(v16);

  return v17(v18);
}

uint64_t sub_2554FB8C0()
{
  sub_2554FDB0C();
  sub_2554FD00C(*(v0 + 112), *(v0 + 120));

  sub_2554FDA7C();

  return v1();
}

id static MediaSuggesterXPCService.interface.getter()
{
  if (qword_27F7B80E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7B80F8;

  return v1;
}

uint64_t static MediaSuggesterXPCService.selectorClasses.getter()
{
  if (qword_27F7B80E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2554FBA68()
{
  v0 = sub_2554FDFBC();
  sub_2554FCEB8(v0, qword_27F7B8108);
  sub_2554FBB5C(v0, qword_27F7B8108);
  return sub_2554FDE4C();
}

uint64_t static MediaSuggesterXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7B80F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2554FDFBC();
  v3 = sub_2554FBB5C(v2, qword_27F7B8108);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2554FBB5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2554FBBA4()
{
  v1 = v0;
  sub_2554FDFBC();
  sub_2554FDA48();
  v34 = v3;
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2554FDF2C();
  sub_2554FDA48();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = sub_2554FDF4C();
  sub_2554FDA48();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  *(v1 + 16) = 0;
  sub_2554FDE3C();
  sub_2554FDE3C();
  sub_2554FDF3C();
  sub_2554FDF0C();
  v36 = *(v15 + 8);
  v36(v19, v13);
  v22 = sub_2554FDF3C();
  v23 = sub_2554FE03C();
  if (sub_2554FE05C())
  {
    v24 = swift_slowAlloc();
    v32 = v1;
    v25 = v24;
    *v24 = 0;
    v26 = sub_2554FDF1C();
    _os_signpost_emit_with_name_impl(&dword_2554F7000, v22, v23, v26, "MediaSuggesterClient.init", "", v25, 2u);
    v1 = v32;
    sub_2554FDC14();
  }

  v27 = v37;
  (*(v6 + 16))(v10, v12, v37);
  sub_2554FDF8C();
  swift_allocObject();
  v28 = sub_2554FDF7C();
  (*(v6 + 8))(v12, v27);
  v36(v21, v13);
  sub_2554FCC7C(&qword_27F7B8120, v29, type metadata accessor for MediaSuggesterClient, &protocol conformance descriptor for MediaSuggesterClient);
  sub_2554FCF1C(&qword_27F7B8190, &qword_2554FE6E0);
  swift_allocObject();

  *(v1 + 16) = sub_2554FDE9C();

  sub_2554FCF1C(&qword_27F7B8198, &qword_2554FE6E8);
  sub_2554FDE6C();

  sub_2554FC0E8(v28);

  return v1;
}

uint64_t sub_2554FC0E8(uint64_t a1)
{
  v1 = sub_2554FDF5C();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_2554FDF2C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2554FDF4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2554FDE3C();
  v11 = sub_2554FDF3C();
  sub_2554FDF6C();
  v18 = sub_2554FE02C();
  if (sub_2554FE05C())
  {

    sub_2554FDF9C();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2554FDF1C();
    _os_signpost_emit_with_name_impl(&dword_2554F7000, v11, v18, v15, "MediaSuggesterClient.init", v13, v14, 2u);
    MEMORY[0x259C36660](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2554FC3D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2554FD92C;
  *(v5 + 24) = v4;
  *a2 = sub_2554FD93C;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

void sub_2554FC4A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2554FC558;
  v5[3] = &unk_28676A330;
  v4 = _Block_copy(v5);

  [a3 helloWith_];
  _Block_release(v4);
}

uint64_t sub_2554FC558(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2554FDFCC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_2554FC5F0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_2554FDDDC();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_2554FD65C(v4, v8);
}

uint64_t sub_2554FC6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  a6(a5, v11, a1);
}

void sub_2554FC758(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2554FC5F0;
  v5[3] = &unk_28676A290;
  v4 = _Block_copy(v5);

  [a3 availablebundleIDsForMediaSuggestionsWith_];
  _Block_release(v4);
}

uint64_t sub_2554FC810(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  sub_2554FCA14(a4, a5, a7, v16, a1, a8, a9);
}

void sub_2554FC8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_2554FDDCC();
  v10 = sub_2554FDDEC();
  v11 = sub_2554FDDEC();
  v13[4] = sub_2554FD978;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2554FC5F0;
  v13[3] = &unk_28676A1F0;
  v12 = _Block_copy(v13);

  [a1 candidatesWithOptionsData:v9 startDate:v10 endDate:v11 with:v12];
  _Block_release(v12);
}

void sub_2554FCA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  v12 = sub_2554FDDCC();
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2554FC5F0;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a5 *a7];
  _Block_release(v13);
}

uint64_t sub_2554FCAE4(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        result = result;
        goto LABEL_5;
      }

      __break(1u);
      break;
    case 2uLL:
      result = *(result + 16);
LABEL_5:
      result = sub_2554FD5D4(result);
      break;
    case 3uLL:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MediaSuggesterClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2554FCBB4(uint64_t a1, uint64_t a2)
{
  result = sub_2554FCC7C(&qword_27F7B8120, a2, type metadata accessor for MediaSuggesterClient, &protocol conformance descriptor for MediaSuggesterClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2554FCC7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaSuggesterXPCService(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MediaSuggesterXPCService(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t *sub_2554FCEB8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2554FCF1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2554FCF64()
{
  result = qword_27F7B8138;
  if (!qword_27F7B8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B8138);
  }

  return result;
}

uint64_t sub_2554FD00C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_2554FD064(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2554FD128(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2554FD8CC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2554FD880(v11);
  return v7;
}

unint64_t sub_2554FD128(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2554FD228(a5, a6);
    *a1 = v9;
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
    result = sub_2554FE07C();
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

uint64_t sub_2554FD228(uint64_t a1, unint64_t a2)
{
  v3 = sub_2554FD274(a1, a2);
  sub_2554FD38C(&unk_28676A0A8);
  return v3;
}

uint64_t sub_2554FD274(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2554FDFDC())
  {
    result = sub_2554FD470(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2554FE06C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2554FE07C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2554FD38C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2554FD4E0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2554FD470(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2554FCF1C(&unk_27F7B81A0, &unk_2554FE6F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2554FD4E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2554FCF1C(&unk_27F7B81A0, &unk_2554FE6F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_2554FD5D4(uint64_t a1)
{
  v2 = sub_2554FDD8C();
  if (v2)
  {
    v3 = v2;
    result = sub_2554FDDAC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_2554FDD9C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2554FD644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2554FD65C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2554FD00C(result, a2);
  }

  return result;
}

uint64_t sub_2554FD67C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2554FD6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2554FCF1C(&qword_27F7B8170, &qword_2554FE6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2554FD72C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2554FD7E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2554FCF1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2554FD844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

uint64_t sub_2554FD880(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2554FD8CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2554FD97C()
{
  sub_2554F9128();

  return sub_2554FA904();
}

uint64_t sub_2554FDA08(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

void sub_2554FDA28(uint64_t a1@<X8>)
{
  v3[7] = a1;
  v3[8] = v2;
  v3[4] = v4;
  v3[5] = v1;
}

uint64_t sub_2554FDAB0()
{

  return MEMORY[0x28211EDE0](v2, v1, v0);
}

uint64_t sub_2554FDB18()
{
}

uint64_t sub_2554FDB48()
{

  return swift_dynamicCast();
}

id sub_2554FDB68(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_2554FDB84()
{

  return sub_2554FD00C(v1, v0);
}

uint64_t sub_2554FDBD8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2554FDBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{

  return sub_2554FDEFC(a13, a2, v14, a4, 25, 2, v13, a8);
}

void sub_2554FDC14()
{

  JUMPOUT(0x259C36660);
}

uint64_t sub_2554FDC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return sub_2554FDEFC(a1, a2, a3, a4, a5, 2, v8, a8);
}

uint64_t sub_2554FDC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return sub_2554FDEFC(v10, a2, v9, a4, 25, 2, v8, a8);
}

uint64_t sub_2554FDC68(uint64_t a1)
{

  return sub_2554FE03C();
}

uint64_t sub_2554FDC8C()
{

  return swift_task_alloc();
}

uint64_t sub_2554FDCFC()
{

  return MEMORY[0x2821F9930]();
}

uint64_t sub_2554FDD14()
{

  return MEMORY[0x2821F9798]();
}

uint64_t sub_2554FDD2C()
{

  return sub_2554FDE1C();
}

void sub_2554FDD44()
{
}

_OWORD *sub_2554FDD5C()
{

  return sub_2554FD72C((v0 + 80), (v0 + 48));
}

uint64_t sub_2554FDD74()
{

  return sub_2554FD6BC(v0 + 16, v0 + 80);
}