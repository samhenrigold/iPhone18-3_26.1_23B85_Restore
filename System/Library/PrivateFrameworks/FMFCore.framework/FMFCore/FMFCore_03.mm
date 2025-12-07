void *FMFLocation.address.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for FMFLocation(0);
  memcpy(__dst, (v1 + *(v3 + 44)), 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1)
  {
    sub_24A3BAFB0(v5);
    return memcpy(a1, v5, 0x130uLL);
  }

  else
  {
    memcpy(a1, __dst, 0x130uLL);
    return sub_24A37B740(__dst, v5, &unk_27EF404E0, &unk_24A4B5230);
  }
}

uint64_t sub_24A3BA0E8()
{
  *&v57[0] = 60;
  *(&v57[0] + 1) = 0xE100000000000000;
  v1 = sub_24A4AC420();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  v60 = v0;
  sub_24A3BAF14();
  v2 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v3 = v57[0];
  *&v57[0] = 0x6E69776F6C6C6F66;
  *(&v57[0] + 1) = 0xEB00000000203A67;
  v4 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v60 = v5;
  LOBYTE(v61) = v4 == 0;
  sub_24A3C9CEC(&qword_27EF3F0F0, &qword_24A4B4940);
  v6 = sub_24A4AB870();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  *&v57[0] = 0x7265776F6C6C6F66;
  *(&v57[0] + 1) = 0xEB00000000203A73;
  v7 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers);
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v60 = v8;
  LOBYTE(v61) = v7 == 0;
  v9 = sub_24A4AB870();
  MEMORY[0x24C217D50](v9);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  sub_24A4ABF50();

  *&v57[0] = 0xD000000000000011;
  *(&v57[0] + 1) = 0x800000024A4AF230;
  v10 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing);
  if (v10)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v60 = v11;
  LOBYTE(v61) = v10 == 0;
  v12 = sub_24A4AB870();
  MEMORY[0x24C217D50](v12);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  sub_24A4ABF50();

  *&v57[0] = 0xD000000000000011;
  *(&v57[0] + 1) = 0x800000024A4AF250;
  v13 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers);
  if (v13)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = 0;
  }

  v60 = v14;
  LOBYTE(v61) = v13 == 0;
  v15 = sub_24A4AB870();
  MEMORY[0x24C217D50](v15);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  sub_24A4ABF50();

  *&v57[0] = 0x4F676E69646E6570;
  *(&v57[0] + 1) = 0xEF203A7372656666;
  v16 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers);
  if (v16)
  {
    v17 = *(v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  v60 = v17;
  LOBYTE(v61) = v16 == 0;
  v18 = sub_24A4AB870();
  MEMORY[0x24C217D50](v18);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  *&v57[0] = 0x6E6F697461636F6CLL;
  *(&v57[0] + 1) = 0xEB00000000203A73;
  v19 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations);
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = 0;
  }

  v60 = v20;
  LOBYTE(v61) = v19 == 0;
  v21 = sub_24A4AB870();
  MEMORY[0x24C217D50](v21);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  sub_24A4ABF50();

  *&v57[0] = 0xD000000000000013;
  *(&v57[0] + 1) = 0x800000024A4AF270;
  v22 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress);
  if (v22)
  {
    v23 = *(v22 + 16);
  }

  else
  {
    v23 = 0;
  }

  v60 = v23;
  LOBYTE(v61) = v22 == 0;
  v24 = sub_24A4AB870();
  MEMORY[0x24C217D50](v24);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  *&v57[0] = 0x203A736C6562616CLL;
  *(&v57[0] + 1) = 0xE800000000000000;
  v25 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels);
  if (v25)
  {
    v26 = *(v25 + 16);
  }

  else
  {
    v26 = 0;
  }

  v60 = v26;
  LOBYTE(v61) = v25 == 0;
  v27 = sub_24A4AB870();
  MEMORY[0x24C217D50](v27);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  sub_24A4ABF50();

  *&v57[0] = 0xD000000000000013;
  *(&v57[0] + 1) = 0x800000024A4AF290;
  v28 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations);
  if (v28)
  {
    v29 = *(v28 + 16);
  }

  else
  {
    v29 = 0;
  }

  v60 = v29;
  LOBYTE(v61) = v28 == 0;
  v30 = sub_24A4AB870();
  MEMORY[0x24C217D50](v30);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  *&v57[0] = 0x3A73656369766564;
  *(&v57[0] + 1) = 0xE900000000000020;
  v31 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices);
  if (v31)
  {
    v32 = *(v31 + 16);
  }

  else
  {
    v32 = 0;
  }

  v60 = v32;
  LOBYTE(v61) = v31 == 0;
  v33 = sub_24A4AB870();
  MEMORY[0x24C217D50](v33);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](*&v57[0], *(&v57[0] + 1));

  sub_24A4ABF50();

  strcpy(v57, "preferences: ");
  HIWORD(v57[0]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16))
  {
    v34 = 0x6C696E2D6E6F6ELL;
  }

  else
  {
    v34 = 7104878;
  }

  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16))
  {
    v35 = 0xE700000000000000;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  MEMORY[0x24C217D50](v34, v35);

  MEMORY[0x24C217D50](8233, 0xE200000000000000);
  v36 = v57[0];
  v57[0] = v3;

  MEMORY[0x24C217D50](v36, *(&v36 + 1));

  v60 = 0x7365727574616566;
  v61 = 0xEA0000000000203ALL;
  v37 = sub_24A4AB870();
  MEMORY[0x24C217D50](v37);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0x7365727574616566, 0xEA0000000000203ALL);

  v58 = 0x203A6F666E49796DLL;
  v59 = 0xE800000000000000;
  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo))
  {
    v38 = 0x6C696E2D6E6F6ELL;
  }

  else
  {
    v38 = 7104878;
  }

  if (*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo))
  {
    v39 = 0xE700000000000000;
  }

  else
  {
    v39 = 0xE300000000000000;
  }

  MEMORY[0x24C217D50](v38, v39);

  MEMORY[0x24C217D50](8233, 0xE200000000000000);

  MEMORY[0x24C217D50](v58, v59);

  v40 = *&v57[0];
  v41 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 208);
  v57[12] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 192);
  v57[13] = v41;
  v57[14] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 224);
  v42 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 144);
  v57[8] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 128);
  v57[9] = v42;
  v43 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 176);
  v57[10] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 160);
  v57[11] = v43;
  v44 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 80);
  v57[4] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 64);
  v57[5] = v44;
  v45 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 112);
  v57[6] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 96);
  v57[7] = v45;
  v46 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 16);
  v57[0] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
  v57[1] = v46;
  v47 = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 48);
  v57[2] = *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config + 32);
  v57[3] = v47;
  v48 = sub_24A387AB8(v57);
  v49 = v48 == 1;
  if (v48 == 1)
  {
    v50 = 7104878;
  }

  else
  {
    v50 = 0x6C696E2D6E6F6ELL;
  }

  if (v49)
  {
    v51 = 0xE300000000000000;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  MEMORY[0x24C217D50](v50, v51);

  MEMORY[0x24C217D50](8233, 0xE200000000000000);

  MEMORY[0x24C217D50](0x203A6769666E6F63, 0xE800000000000000);

  sub_24A4ABF50();

  v52 = sub_24A4AB870();
  MEMORY[0x24C217D50](v52);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4AF2B0);

  sub_24A4ABF50();

  v53 = sub_24A4AB870();
  MEMORY[0x24C217D50](v53);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4AF2D0);

  sub_24A4ABF50();

  v54 = sub_24A4AB870();
  MEMORY[0x24C217D50](v54);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4AF2F0);

  sub_24A4ABF50();

  v55 = sub_24A4AB870();
  MEMORY[0x24C217D50](v55);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD000000000000022, 0x800000024A4AF310);

  return v40;
}

unint64_t sub_24A3BAF14()
{
  result = qword_27EF3F0E8;
  if (!qword_27EF3F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F0E8);
  }

  return result;
}

uint64_t sub_24A3BAF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

double sub_24A3BAFB0(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_24A3BB004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A3BB05C()
{
  v7 = sub_24A4ABD50();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24A4ABD10();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  sub_24A4AB6B0();
  v8 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF402C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24A4ABD90();
  qword_27EF40770 = result;
  return result;
}

uint64_t sub_24A3BB2D8(uint64_t a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_updateQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_24A3B1458;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D885C0;
  v11 = _Block_copy(aBlock);

  v12 = v1;
  sub_24A4AB6B0();
  v16 = MEMORY[0x277D84F90];
  sub_24A38D32C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_24A3BB5A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *FMLocationShiftingRequest.init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = a1;
  v3[4] = a2;
  return v3;
}

uint64_t sub_24A3BB640(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);
  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFRefreshController: initClientRequest completed", v9, 2u);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  if (a2 || !a1)
  {
    v14 = a2;
    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCC0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, &v23);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_24A376000, v15, v16, "FMFRefreshController: initClient completed with error: %s", v17, 0xCu);
      sub_24A37EEE0(v18);
      MEMORY[0x24C219130](v18, -1, -1);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_24A43DAE8(a2);
      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    *(a3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializedOnce) = 1;

    v10 = sub_24A4AB600();
    v11 = sub_24A4ABCE0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A376000, v10, v11, "FMFRefreshController: received snapshot initClient response", v12, 2u);
      MEMORY[0x24C219130](v12, -1, -1);
    }

    sub_24A3BB91C(a1);
    if ((*(a3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isSnapshotMode) & 1) == 0)
    {
      sub_24A3AE1EC(0.0);
    }
  }

  *(a3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_initializationInProgress) = 0;
  return result;
}

double sub_24A3BB91C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (*(v3 + 16))
  {
    v4 = sub_24A39B2C8(0xD000000000000017, 0x800000024A4AF510);
    if (v6)
    {
      sub_24A37EE84(*(v3 + 56) + 32 * v4, v12);
      if (swift_dynamicCast())
      {
        result = v11;
        *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_minCallbackInterval) = v11;
      }
    }
  }

  if (*(v3 + 16))
  {
    v7 = sub_24A39B2C8(0xD000000000000017, 0x800000024A4AF530);
    if (v8)
    {
      sub_24A37EE84(*(v3 + 56) + 32 * v7, v12);
      if (swift_dynamicCast())
      {
        result = v11;
        *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_maxCallbackInterval) = v11;
      }
    }
  }

  if (*(v3 + 16))
  {
    v9 = sub_24A39B2C8(0xD000000000000014, 0x800000024A4AF550);
    if (v10)
    {
      sub_24A37EE84(*(v3 + 56) + 32 * v9, v12);
      if (swift_dynamicCast())
      {
        result = v11;
        *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_callbackInterval) = v11;
      }
    }
  }

  return result;
}

uint64_t sub_24A3BBAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 24);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v4;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_24A3B3CF8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85C08;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A378620(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_24A3BBD8C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3BBDD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v98 = a5;
  v95 = a4;
  v96 = a2;
  v8 = sub_24A4AAAD0();
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x28223BE20](v8);
  v92 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FMFFriend(0);
  v10 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v12 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v87 - v14;
  MEMORY[0x28223BE20](v16);
  v91 = &v87 - v17;
  v97 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v97);
  v19 = (&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A3992EC(a1, v19, type metadata accessor for FMFLocation);
  v20 = v19[1];
  if (!v20)
  {
    return sub_24A39A7B8(v19, type metadata accessor for FMFLocation);
  }

  v88 = a3;
  v89 = v5;
  v104 = v19;
  v21 = *v19;
  v101[0] = 91;
  v101[1] = 0xE100000000000000;
  MEMORY[0x24C217D50](v21, v20);
  v102 = v101[0];
  v103 = v101[1];
  v22 = *(v96 + 16);
  if (v22)
  {
    v23 = v96 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v24 = *(v10 + 72);
    while (1)
    {
      sub_24A3992EC(v23, v12, type metadata accessor for FMFFriend);
      v25 = v21 == *v12 && v20 == v12[1];
      if (v25 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      sub_24A39A7B8(v12, type metadata accessor for FMFFriend);
      v23 += v24;
      if (!--v22)
      {
        goto LABEL_25;
      }
    }

    sub_24A39983C(v12, v15, type metadata accessor for FMFFriend);
    v27 = v91;
    sub_24A39983C(v15, v91, type metadata accessor for FMFFriend);
    v28 = *(v27 + *(v90 + 52));
    v29 = (v27 + *(v90 + 76));
    v30 = 0xE000000000000000;
    if (v29[1])
    {
      v31 = v29[5];
      v32 = v29[6];
      v33 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v33 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {
      }

      else
      {
        v31 = 0;
        v32 = 0xE000000000000000;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    v101[0] = 47;
    v101[1] = 0xE100000000000000;
    MEMORY[0x24C217D50](v31, v32);

    if (v28)
    {
      v34 = 10518754;
    }

    else
    {
      v34 = 0;
    }

    if (v28)
    {
      v30 = 0xA300000000000000;
    }

    MEMORY[0x24C217D50](v34, v30);

    MEMORY[0x24C217D50](v101[0], v101[1]);

    sub_24A39A7B8(v27, type metadata accessor for FMFFriend);
  }

LABEL_25:
  MEMORY[0x24C217D50](93, 0xE100000000000000);
  v35 = *(v97 + 44);
  v36 = v104;
  memcpy(v101, v104 + v35, 0x161uLL);
  if (sub_24A3B9C24(v101) == 1)
  {
    v100[0] = 0;
    v100[1] = 0xE000000000000000;
    sub_24A4ABF50();

    v100[0] = 0x1000000000000023;
    v100[1] = 0x800000024A4B2350;
    v99 = *(v36 + 33);
    v37 = sub_24A4AB870();
    MEMORY[0x24C217D50](v37);

    sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_24A4B4E10;
    memcpy(v100, (v36 + v35), 0x161uLL);
    if (sub_24A3B9C24(v100) == 1)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v40 = v100[41];
      if (v100[41])
      {
        v39 = v100[40];
        v64 = sub_24A4AB880();
        v66 = v65;

        v67._countAndFlagsBits = v64;
        v67._object = v66;
        FMFDefaultLabel.init(rawValue:)(v67);
        if (v99 != 5)
        {
          v39 = FMFDefaultLabel.localizedLabel.getter();
          v69 = v68;

          v40 = v69;
        }
      }

      else
      {
        v39 = 0;
      }
    }

    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_24A3ABD70();
    v70 = 7104878;
    if (v40)
    {
      v70 = v39;
    }

    v71 = 0xE300000000000000;
    if (v40)
    {
      v71 = v40;
    }

    *(v38 + 32) = v70;
    *(v38 + 40) = v71;
    v97 = sub_24A4AB860();
    v73 = v72;

    goto LABEL_47;
  }

  v41 = v101[38];
  v42 = [v41 timestamp];
  v43 = v92;
  sub_24A4AAAA0();

  v44 = sub_24A4AAA60();
  (*(v93 + 8))(v43, v94);
  v45 = [v88 stringFromDate_];

  v96 = sub_24A4AB850();
  v94 = v46;

  v100[0] = 0;
  v100[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v100[0] = 0x100000000000002ELL;
  v100[1] = 0x800000024A4B2380;
  v99 = *(v36 + 33);
  v47 = sub_24A4AB870();
  MEMORY[0x24C217D50](v47);

  v97 = v100[0];
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_24A4BA890;
  [v41 coordinate];
  v49 = MEMORY[0x277D839F8];
  v50 = MEMORY[0x277D83A80];
  *(v48 + 56) = MEMORY[0x277D839F8];
  *(v48 + 64) = v50;
  *(v48 + 32) = v51;
  [v41 coordinate];
  *(v48 + 96) = v49;
  *(v48 + 104) = v50;
  *(v48 + 72) = v52;
  v53 = MEMORY[0x277D837D0];
  *(v48 + 136) = MEMORY[0x277D837D0];
  v54 = sub_24A3ABD70();
  *(v48 + 144) = v54;
  v55 = v94;
  *(v48 + 112) = v96;
  *(v48 + 120) = v55;
  memcpy(v100, (v36 + v35), 0x161uLL);
  if (sub_24A3B9C24(v100) == 1 || (v56 = v100[41]) == 0)
  {
    v63 = (v48 + 152);
    *(v48 + 176) = v53;
    *(v48 + 184) = v54;
  }

  else
  {
    v57 = v53;
    v58 = v100[40];
    v59 = sub_24A4AB880();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    FMFDefaultLabel.init(rawValue:)(v62);
    if (v99 == 5)
    {
      v63 = (v48 + 152);
      *(v48 + 176) = v57;
      *(v48 + 184) = v54;
LABEL_45:
      *v63 = v58;
      goto LABEL_46;
    }

    v58 = FMFDefaultLabel.localizedLabel.getter();
    v75 = v74;

    v63 = (v48 + 152);
    *(v48 + 176) = v57;
    *(v48 + 184) = v54;
    if (v75)
    {
      v56 = v75;
      goto LABEL_45;
    }
  }

  *v63 = 7104878;
  v56 = 0xE300000000000000;
LABEL_46:
  *(v48 + 160) = v56;
  v97 = sub_24A4AB860();
  v73 = v76;

LABEL_47:
  v77 = v98;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v78 = sub_24A4AB630();
  sub_24A378E18(v78, qword_27EF4E260);
  v79 = v102;
  v80 = v103;

  v81 = sub_24A4AB600();
  v82 = sub_24A4ABCE0();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v100[0] = v84;
    *v83 = 136315650;
    *(v83 + 4) = sub_24A37BD58(v95, v77, v100);
    *(v83 + 12) = 2080;
    v85 = sub_24A37BD58(v79, v80, v100);

    *(v83 + 14) = v85;
    *(v83 + 22) = 2080;
    v86 = sub_24A37BD58(v97, v73, v100);

    *(v83 + 24) = v86;
    _os_log_impl(&dword_24A376000, v81, v82, "👀 FMFSecureLocCtrl: %s location for %s: %s", v83, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v84, -1, -1);
    MEMORY[0x24C219130](v83, -1, -1);
  }

  else
  {
  }

  return sub_24A39A7B8(v104, type metadata accessor for FMFLocation);
}

uint64_t sub_24A3BC89C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v14;
    v28 = a7;
    v20 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v26 = v15;
    v21 = *(v15 + 72);
    while (1)
    {
      sub_24A399284(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_24A39A758(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_24A39A758(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_24A3997D4(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v15 = v26;
    v14 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v15 + 56))(a7, v23, 1, v14, v16);
}

uint64_t sub_24A3BCA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_24A3BCAA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_24A3C9CEC(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24A3BCBC4(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F510, &unk_24A4B6900, &type metadata for FMFLocateInProgress);
  *v3 = result;
  return result;
}

uint64_t sub_24A3BCC3C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    (*(v4 + 56))(v6, 0, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A3BCD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v21 = a2;
  v4 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  v22 = a1;
  if (v9)
  {
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_24A3B4B10(v10, v7);
      v12 = v7[1];
      if (!v12 || (v13 = *v7, memcpy(v24, v7 + *(v4 + 44), 0x161uLL), sub_24A3B9C24(v24) == 1))
      {
        sub_24A3B4B74(v7);
      }

      else
      {
        v14 = v24[38];

        v15 = v14;
        sub_24A3B4B74(v7);
        type metadata accessor for FMLocationShiftingRequest();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = v13;
        v16[4] = v12;
        MEMORY[0x24C217E50]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A4ABAA0();
        }

        sub_24A4ABAE0();
        v8 = v25;
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  v17 = swift_allocObject();
  v18 = v21;
  v17[2] = v22;
  v17[3] = v18;
  v17[4] = v23;

  sub_24A3BBAB0(v8, sub_24A3B4B04, v17);
}

uint64_t sub_24A3BCF50()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Void __swiftcall FMFManager.didReceive(friends:fromServer:)(Swift::OpaquePointer friends, Swift::Bool fromServer)
{
  v3 = v2;
  v51 = fromServer;
  rawValue = friends._rawValue;
  v4 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v45 - v5;
  v6 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for FMFFriend(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v46 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v49 = &v45 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v22 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  sub_24A37B740(v3 + v22, v13, &qword_27EF3F2D0, &qword_24A4B4F50);
  v50 = v15;
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) != 1)
  {
    v31 = sub_24A3997D4(v13, v21, type metadata accessor for FMFFriend);
    MEMORY[0x28223BE20](v31);
    v45 = v21;
    *(&v45 - 2) = v21;
    sub_24A3BC89C(sub_24A431FF8, rawValue, type metadata accessor for FMFFriend, type metadata accessor for FMFFriend, type metadata accessor for FMFFriend, type metadata accessor for FMFFriend, v10);
    if (v23(v10, 1, v14) == 1)
    {
      sub_24A37EF2C(v10, &qword_27EF3F2D0, &qword_24A4B4F50);
      v32 = *(v3 + 128);
      v33 = v48;
      (*(v50 + 56))(v48, 1, 1, v14);
      v34 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
      swift_beginAccess();

      sub_24A43F22C(v33, v32 + v34);
      swift_endAccess();
    }

    else
    {
      v35 = v10;
      v36 = v49;
      sub_24A3997D4(v35, v49, type metadata accessor for FMFFriend);
      if (*(v3 + 224) == 1)
      {
        v37 = sub_24A3A290C();
        v24 = rawValue;
        if (v37)
        {
          v38 = sub_24A4ABB70();
          v39 = v47;
          (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
          v40 = v46;
          sub_24A399284(v36, v46, type metadata accessor for FMFFriend);
          v41 = (*(v50 + 80) + 40) & ~*(v50 + 80);
          v42 = swift_allocObject();
          v42[2] = 0;
          v42[3] = 0;
          v42[4] = v3;
          sub_24A3997D4(v40, v42 + v41, type metadata accessor for FMFFriend);

          sub_24A432370(0, 0, v39, &unk_24A4BA2B8, v42);
        }

        sub_24A39A758(v36, type metadata accessor for FMFFriend);
        goto LABEL_15;
      }

      sub_24A39A758(v36, type metadata accessor for FMFFriend);
    }

    v24 = rawValue;
LABEL_15:
    sub_24A39A758(v45, type metadata accessor for FMFFriend);
    goto LABEL_16;
  }

  sub_24A37EF2C(v13, &qword_27EF3F2D0, &qword_24A4B4F50);
  v24 = rawValue;
  if ((*(v3 + 225) & 1) == 0 && *(v3 + 224) == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      v27 = (*(v25 + 128))(v3, v24, ObjectType, v25);
      swift_unknownObjectRelease();
      if (sub_24A3A290C())
      {
LABEL_6:
        v28 = sub_24A4ABB70();
        v29 = v47;
        (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = 0;
        v30[4] = v3;
        v30[5] = v27;

        sub_24A432D64(0, 0, v29, &unk_24A4BA2A8, v30);

        goto LABEL_16;
      }
    }

    else
    {

      v27 = v24;
      if (sub_24A3A290C())
      {
        goto LABEL_6;
      }
    }

    if (*(v3 + 200))
    {

      sub_24A466B38(v27, 0, 0, 0);
    }
  }

LABEL_16:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v3 + 40);
    v44 = swift_getObjectType();
    (*(v43 + 32))(v3, v24, v51, v44, v43);
    swift_unknownObjectRelease();
  }

  if (*(v3 + 225) == 1 && (*(v3 + 226) & 1) == 0 && v51)
  {
    *(v3 + 226) = 1;
    sub_24A436774(v24, 0);
  }
}

uint64_t sub_24A3BD6E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3BD734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v134 = type metadata accessor for FMFFriend(0);
  v137 = *(v134 - 1);
  MEMORY[0x28223BE20](v134);
  v126 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v123 - v9);
  v11 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v133 = v123 - v15;
  v16 = *(a2 + 584);

  v17 = sub_24A4156A8(a1, v16);

  if (v17)
  {
    *a3 = 0;
    return result;
  }

  v124 = a3;
  v125 = v3;
  *(a2 + 576) = 0;

  *(a2 + 624) = 0;

  v19 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  v132 = a2;
  v129 = v13;
  v130 = v19;
  v128 = a1;
  if (v19)
  {
    v138[0] = MEMORY[0x277D84F90];
    sub_24A3BEBEC(0, v19, 0);
    v20 = v138[0];
    v131 = sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
    v21 = (a1 + 48);
    a2 = v19;
    do
    {
      v22 = *v21;
      v135 = v20;
      if (v22)
      {
        if (v22 == 1)
        {
          v136 = 0xE700000000000000;
          v23 = 0x776F6C6C616873;
        }

        else
        {
          v136 = 0xE400000000000000;
          v23 = 1885693284;
        }
      }

      else
      {
        v136 = 0xE400000000000000;
        v23 = 1701736302;
      }

      v24 = *(v21 - 2);
      v25 = *(v21 - 1);
      v26 = sub_24A4AC090();
      swift_bridgeObjectRetain_n();

      v27 = sub_24A39B2C8(v24, v25);
      v20 = v28;

      if (v20)
      {
        goto LABEL_87;
      }

      v26[(v27 >> 6) + 8] |= 1 << v27;
      v29 = (v26[6] + 16 * v27);
      *v29 = v24;
      v29[1] = v25;
      v30 = (v26[7] + 16 * v27);
      v31 = v136;
      *v30 = v23;
      v30[1] = v31;

      v32 = v26[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v26[2] = v34;
      v20 = v135;
      v138[0] = v135;
      v36 = *(v135 + 16);
      v35 = *(v135 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_24A3BEBEC((v35 > 1), v36 + 1, 1);
        v20 = v138[0];
      }

      v21 += 24;
      *(v20 + 16) = v36 + 1;
      *(v20 + 8 * v36 + 32) = v26;
      --a2;
    }

    while (a2);
    a2 = v132;
  }

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v37 = sub_24A4AB630();
    v38 = sub_24A378E18(v37, qword_27EF4E260);

    v39 = sub_24A4AB600();
    v40 = sub_24A4ABCE0();

    v41 = os_log_type_enabled(v39, v40);
    v123[1] = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v138[0] = v43;
      *v42 = 136315138;
      v44 = sub_24A3C9CEC(&qword_27EF3F4D8, &unk_24A4BAC90);
      v45 = MEMORY[0x24C217E90](v20, v44);
      v20 = v46;

      v47 = sub_24A37BD58(v45, v20, v138);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_24A376000, v39, v40, "FMFDataManager: Locate in progress (in) - %s", v42, 0xCu);
      sub_24A37EEE0(v43);
      MEMORY[0x24C219130](v43, -1, -1);
      MEMORY[0x24C219130](v42, -1, -1);
    }

    else
    {
    }

    if (v130)
    {
      v48 = 0;
      v131 = (v128 + 4);
      v128 = (v137 + 56);
      v136 = MEMORY[0x277D84F98];
      v127 = (v137 + 48);
      while (1)
      {
        v50 = v131 + 24 * v48;
        v51 = *v50;
        v52 = *(v50 + 8);
        LODWORD(v135) = *(v50 + 16);

        v53 = sub_24A390DA0();
        a2 = *(v53 + 16);
        if (a2)
        {
          v54 = 0;
          while (v54 < *(v53 + 16))
          {
            sub_24A3992EC(v53 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v54, v10, type metadata accessor for FMFFriend);
            v55 = *v10 == v51 && v10[1] == v52;
            if (v55 || (sub_24A4AC270() & 1) != 0)
            {

              v57 = v133;
              sub_24A39983C(v10, v133, type metadata accessor for FMFFriend);
              v56 = 0;
              goto LABEL_35;
            }

            ++v54;
            sub_24A39A7B8(v10, type metadata accessor for FMFFriend);
            if (a2 == v54)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

LABEL_33:

        v56 = 1;
        v57 = v133;
LABEL_35:
        v58 = v134;
        (*v128)(v57, v56, 1, v134);
        v59 = v129;
        v20 = &qword_24A4B4F50;
        sub_24A37B740(v57, v129, &qword_27EF3F2D0, &qword_24A4B4F50);
        v55 = (*v127)(v59, 1, v58) == 1;
        v60 = v57;
        a2 = v132;
        if (!v55)
        {
          break;
        }

        sub_24A37EF2C(v60, &qword_27EF3F2D0, &qword_24A4B4F50);

        v49 = v59;
LABEL_23:
        ++v48;
        sub_24A37EF2C(v49, &qword_27EF3F2D0, &qword_24A4B4F50);
        if (v48 == v130)
        {
          goto LABEL_49;
        }
      }

      v61 = v126;
      sub_24A39983C(v59, v126, type metadata accessor for FMFFriend);
      if (*(a2 + 672) == 1)
      {
        v62 = *(v61 + v134[11]);
        if (v62 != 2 && (v62 & 1) != 0)
        {
          goto LABEL_46;
        }

        v63 = *(v61 + v134[12]);
        if (v63 != 2 && (v63 & 1) != 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v64 = *(v61 + v134[12]);
        if (v64 != 2 && (v64 & 1) != 0 && *(v61 + v134[13]) != 1)
        {
LABEL_46:

          v67 = v61;
          goto LABEL_47;
        }
      }

      v65 = v136;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v65;
      sub_24A3BE4BC(v51, v52, v135, v51, v52, isUniquelyReferenced_nonNull_native);

      v136 = v138[0];
      v67 = v126;
LABEL_47:
      sub_24A39A7B8(v67, type metadata accessor for FMFFriend);
      v49 = v133;
      goto LABEL_23;
    }

    v136 = MEMORY[0x277D84F98];
LABEL_49:
    v141 = MEMORY[0x277D84F90];
    v68 = *(*(a2 + 584) + 16);
    if (v68)
    {

      v69 = (v137 + 48);
      v70 = MEMORY[0x277D84F90];
      do
      {
        v73 = *(v69 - 2);
        v72 = *(v69 - 1);
        v74 = *v69;
        v75 = v136;
        v76 = *(v136 + 16);

        if (v76 && (, v77 = sub_24A39B2C8(v73, v72), v79 = v78, , (v79 & 1) != 0))
        {

          v80 = *(v75 + 56) + 24 * v77;
          v81 = *v80;
          v82 = *(v80 + 8);
          v83 = *(v80 + 16);
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_24A3BEA68(0, *(v70 + 2) + 1, 1, v70);
          }

          v85 = *(v70 + 2);
          v84 = *(v70 + 3);
          if (v85 >= v84 >> 1)
          {
            v70 = sub_24A3BEA68((v84 > 1), v85 + 1, 1, v70);
          }

          *(v70 + 2) = v85 + 1;
          v86 = &v70[24 * v85];
          *(v86 + 4) = v81;
          *(v86 + 5) = v82;
          v86[48] = v83;
          v87 = v81;
          v88 = v136;
          sub_24A39B2C8(v87, v82);
          v90 = v89;

          if (v90)
          {
            v91 = swift_isUniquelyReferenced_nonNull_native();
            v138[0] = v88;
            if (!v91)
            {
              sub_24A4A8628();
              v88 = v138[0];
            }

            v136 = v88;
            sub_24A4A9BC4();
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_24A3BEA68(0, *(v70 + 2) + 1, 1, v70);
          }

          v93 = *(v70 + 2);
          v92 = *(v70 + 3);
          if (v93 >= v92 >> 1)
          {
            v70 = sub_24A3BEA68((v92 > 1), v93 + 1, 1, v70);
          }

          *(v70 + 2) = v93 + 1;
          v71 = &v70[24 * v93];
          *(v71 + 4) = v73;
          *(v71 + 5) = v72;
          v71[48] = v74;
        }

        v69 += 24;
        --v68;
      }

      while (v68);

      v141 = v70;
      a2 = v132;
    }

    sub_24A3BE628(v94);
    v95 = v141;
    v96 = *(v141 + 2);
    if (!v96)
    {
      break;
    }

    v140 = MEMORY[0x277D84F90];

    sub_24A3BEBEC(0, v96, 0);
    v97 = v140;
    v137 = sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
    v135 = v95;
    v20 = v95 + 48;
    while (1)
    {
      a2 = *(v20 - 16);
      v10 = *(v20 - 8);
      v98 = *v20;
      v139[0] = a2;
      v139[1] = v10;
      if (v98)
      {
        if (v98 == 1)
        {
          v99 = 0xE700000000000000;
          v100 = 0x776F6C6C616873;
        }

        else
        {
          v99 = 0xE400000000000000;
          v100 = 1885693284;
        }
      }

      else
      {
        v99 = 0xE400000000000000;
        v100 = 1701736302;
      }

      v138[0] = v100;
      v138[1] = v99;
      swift_bridgeObjectRetain_n();
      v101 = sub_24A4AB890();
      v103 = v102;
      v139[2] = v101;
      v139[3] = v102;
      v104 = sub_24A4AC090();

      v105 = sub_24A39B2C8(a2, v10);
      if (v106)
      {
        break;
      }

      v104[(v105 >> 6) + 8] |= 1 << v105;
      v107 = (v104[6] + 16 * v105);
      *v107 = a2;
      v107[1] = v10;
      v108 = (v104[7] + 16 * v105);
      *v108 = v101;
      v108[1] = v103;
      v109 = v104[2];
      v33 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v33)
      {
        goto LABEL_90;
      }

      v104[2] = v110;

      sub_24A37EF2C(v139, &qword_27EF405D8, &unk_24A4BACF8);

      v140 = v97;
      v112 = *(v97 + 16);
      v111 = *(v97 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_24A3BEBEC((v111 > 1), v112 + 1, 1);
        v97 = v140;
      }

      v20 += 24;
      *(v97 + 16) = v112 + 1;
      *(v97 + 8 * v112 + 32) = v104;
      if (!--v96)
      {
        a2 = v132;
        v95 = v135;
        goto LABEL_82;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v97 = MEMORY[0x277D84F90];
LABEL_82:

  v113 = sub_24A4AB600();
  v114 = sub_24A4ABCE0();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v138[0] = v116;
    *v115 = 136315138;
    v117 = sub_24A3C9CEC(&qword_27EF3F4D8, &unk_24A4BAC90);
    v118 = MEMORY[0x24C217E90](v97, v117);
    v120 = v119;

    v121 = sub_24A37BD58(v118, v120, v138);

    *(v115 + 4) = v121;

    _os_log_impl(&dword_24A376000, v113, v114, "FMFDataManager: Locate in progress (out) - %s", v115, 0xCu);
    sub_24A37EEE0(v116);
    MEMORY[0x24C219130](v116, -1, -1);
    MEMORY[0x24C219130](v115, -1, -1);
  }

  else
  {
  }

  v122 = v124;
  *(a2 + 584) = v95;

  *v122 = 1;
  return result;
}

void sub_24A3BE4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = a3;
  v14 = *v6;
  v15 = sub_24A39B2C8(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_24A4A8628();
      v15 = v23;
      goto LABEL_8;
    }

    sub_24A4A4B74(v20, a6 & 1);
    v15 = sub_24A39B2C8(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_24A4AC2B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = v11;
  }

  else
  {
    sub_24A4A8244(v15, a4, a5, a1, a2, v11, v25);
  }
}

uint64_t sub_24A3BE654(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t *, uint64_t, int64_t, uint64_t))
{
  v5 = *(result + 16);
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = a2;
  v10 = result;
  if (!swift_isUniquelyReferenced_nonNull_native() || (v11 = *(v6 + 24) >> 1, v11 < v8))
  {
    v6 = v4();
    v11 = *(v6 + 24) >> 1;
  }

  v12 = *(v6 + 16);
  v13 = v11 - v12;
  result = a3(&v45, v6 + 24 * v12 + 32, v11 - v12, v10);
  if (result < v5)
  {
    goto LABEL_12;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v6 + 16);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_16:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v8 + 1)
      {
        v23 = v8 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_46:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v48 = v24;
          v49 = 0;
          goto LABEL_10;
        }

        v26 = *(v14 + 8 * v25);
        ++v8;
      }

      while (!v26);
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v8 = v25;
      goto LABEL_24;
    }

    *(v6 + 16) = v19;
  }

  result = v45;
  if (v16 != v13)
  {
    goto LABEL_10;
  }

LABEL_13:
  v10 = *(v6 + 16);
  v14 = v46;
  v15 = v47;
  v8 = v48;
  v44 = v46;
  v41 = v47;
  if (!v49)
  {
    goto LABEL_16;
  }

  v20 = (v49 - 1) & v49;
  v21 = __clz(__rbit64(v49)) | (v48 << 6);
  v22 = (v47 + 64) >> 6;
LABEL_24:
  v43 = result;
  v27 = *(result + 56) + 24 * v21;
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);

  v31 = v44;
LABEL_26:
  while (1)
  {
    v32 = *(v6 + 24);
    v33 = v32 >> 1;
    if ((v32 >> 1) < v10 + 1)
    {
      break;
    }

    if (v10 < v33)
    {
      goto LABEL_28;
    }

LABEL_25:
    *(v6 + 16) = v10;
  }

  v39 = (v4)(v32 > 1, v10 + 1, 1, v6);
  v31 = v44;
  v6 = v39;
  v33 = *(v39 + 24) >> 1;
  if (v10 >= v33)
  {
    goto LABEL_25;
  }

LABEL_28:
  v42 = v33;
  while (1)
  {
    v34 = v6 + 32 + 24 * v10;
    *v34 = v29;
    *(v34 + 8) = v28;
    *(v34 + 16) = v30;
    ++v10;
    if (!v20)
    {
      break;
    }

    result = v43;
LABEL_36:
    v37 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v38 = *(result + 56) + 24 * (v37 | (v8 << 6));
    v29 = *v38;
    v28 = *(v38 + 8);
    v30 = *(v38 + 16);

    v31 = v44;
    if (v10 == v42)
    {
      v10 = v42;
      *(v6 + 16) = v42;
      goto LABEL_26;
    }
  }

  v35 = v8;
  result = v43;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v36 >= v22)
    {
      break;
    }

    v20 = *(v31 + 8 * v36);
    ++v35;
    if (v20)
    {
      v8 = v36;
      goto LABEL_36;
    }
  }

  if (v22 <= v8 + 1)
  {
    v40 = v8 + 1;
  }

  else
  {
    v40 = v22;
  }

  v47 = v41;
  v48 = v40 - 1;
  v49 = 0;
  *(v6 + 16) = v10;
LABEL_10:
  result = sub_24A3A13C0(result);
  *v3 = v6;
  return result;
}

char *sub_24A3BE94C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_24A3C9CEC(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24A3BEA8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 56) + 24 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24A3BEBEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A3BEC2C(a1, a2, a3, *v3, &qword_27EF3F4D0, &qword_24A4B5738, &qword_27EF3F4D8, &unk_24A4BAC90);
  *v3 = result;
  return result;
}

void *sub_24A3BEC2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A3C9CEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A3C9CEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_24A3BEDCC(int a1)
{
  v2 = v1;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v12 = sub_24A4AB630();
        sub_24A378E18(v12, qword_27EF4E260);
        v13 = sub_24A4AB600();
        v14 = sub_24A4ABCE0();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_30;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "FMFMyLocationController: location manager didChangeAuthorization: NOT DETERMINED";
        v17 = v14;
        v18 = v13;
        v19 = v15;
        v20 = 2;
        goto LABEL_29;
      case 1:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v21 = sub_24A4AB630();
        sub_24A378E18(v21, qword_27EF4E260);
        v4 = sub_24A4AB600();
        v5 = sub_24A4ABCE0();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_24;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "FMFMyLocationController: location manager didChangeAuthorization: RESTRICTED";
        goto LABEL_23;
      case 2:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v3 = sub_24A4AB630();
        sub_24A378E18(v3, qword_27EF4E260);
        v4 = sub_24A4AB600();
        v5 = sub_24A4ABCE0();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_24;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "FMFMyLocationController: location manager didChangeAuthorization: DENIED";
LABEL_23:
        _os_log_impl(&dword_24A376000, v4, v5, v7, v6, 2u);
        MEMORY[0x24C219130](v6, -1, -1);
LABEL_24:

        sub_24A45BD48();
        goto LABEL_31;
    }

LABEL_25:
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v23 = sub_24A4AB630();
    sub_24A378E18(v23, qword_27EF4E260);
    v13 = sub_24A4AB600();
    v24 = sub_24A4ABCE0();
    if (!os_log_type_enabled(v13, v24))
    {
      goto LABEL_30;
    }

    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1;
    v16 = "FMFMyLocationController: location manager didChangeAuthorization: UNKNOWN: %d";
    v17 = v24;
    v18 = v13;
    v19 = v15;
    v20 = 8;
LABEL_29:
    _os_log_impl(&dword_24A376000, v18, v17, v16, v19, v20);
    MEMORY[0x24C219130](v15, -1, -1);
LABEL_30:

    goto LABEL_31;
  }

  if ((a1 - 3) > 1)
  {
    goto LABEL_25;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);
  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFMyLocationController: location manager didChangeAuthorization: AUTHORIZED", v11, 2u);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager) startUpdatingLocation];
LABEL_31:
  v25 = objc_opt_self();
  v26 = [*(v2 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager) accuracyAuthorization] != 0;
  v27 = sub_24A4AB820();
  v28 = sub_24A4AB820();
  [v25 setBool:v26 forKey:v27 inDomain:v28];
}

uint64_t sub_24A3BF2E0(unint64_t a1)
{
  v4 = v1;
  v6 = sub_24A4AAB20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);

  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();

  v13 = a1 >> 62;
  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_14;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v41 = v3;
  *v2 = 136315138;
  if (v13)
  {
    goto LABEL_25;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_24A4AC060())
  {
    v37 = v7;
    v38 = v6;
    v36 = v4;
    if (!result)
    {
      v18 = 0;
      v20 = 0;
      goto LABEL_13;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C218380](0, a1);
      goto LABEL_10;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v15 = *(a1 + 32);
LABEL_10:
    v16 = v15;
    v17 = [v15 debugDescription];

    v18 = sub_24A4AB850();
    v20 = v19;

LABEL_13:
    v39 = v18;
    v40 = v20;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    v21 = sub_24A4AB870();
    v23 = sub_24A37BD58(v21, v22, &v41);

    *(v2 + 4) = v23;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFMyLocationController: location manager didUpdateLocations: %s", v2, 0xCu);
    sub_24A37EEE0(v3);
    MEMORY[0x24C219130](v3, -1, -1);
    MEMORY[0x24C219130](v2, -1, -1);

    v7 = v37;
    v6 = v38;
    v4 = v36;
LABEL_14:
    if (v13)
    {
      result = sub_24A4AC060();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x24C218380](0, a1);
      goto LABEL_19;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a1 + 32);
LABEL_19:
      v25 = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = v4;
      *(v26 + 24) = v25;
      v27 = v25;
      v28 = v4;
      sub_24A4AAB10();
      v29 = sub_24A4AAAF0();
      v31 = v30;
      (*(v7 + 8))(v9, v6);
      type metadata accessor for FMLocationShiftingRequest();
      v32 = swift_allocObject();
      v32[2] = v27;
      v32[3] = v29;
      v32[4] = v31;
      sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_24A4BB800;
      *(v33 + 32) = v32;
      v34 = swift_allocObject();
      v34[2] = v27;
      v34[3] = sub_24A45C7D0;
      v34[4] = v26;
      v35 = v27;

      sub_24A3BBAB0(v33, sub_24A3C2190, v34);
    }

    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3BF734()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3BF778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t a7@<X8>)
{
  v22 = a2;
  v23 = a7;
  v11 = sub_24A4ABDF0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if (*a4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = *a5;
  if (*(*a5 + 16) && (v16 = sub_24A3AE6B8(a1), (v17 & 1) != 0))
  {
    sub_24A37EE84(*(v15 + 56) + 32 * v16, v24);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  swift_endAccess();
  sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  v18 = swift_dynamicCast();
  v19 = *(a3 - 8);
  v20 = *(v19 + 56);
  if (v18)
  {
    v20(v14, 0, 1, a3);
    return (*(v19 + 32))(v23, v14, a3);
  }

  else
  {
    v20(v14, 1, 1, a3);
    (*(v12 + 8))(v14, v11);
    return (*(v19 + 16))(v23, v22, a3);
  }
}

void *sub_24A3BF9A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27EF3EC08 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  return sub_24A4ABD70();
}

uint64_t sub_24A3BFACC(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection + 8);
    ObjectType = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24A4B4E10;
    v5 = *(v1 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic);
    v6 = *(v1 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic + 8);
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = *(v2 + 32);
    swift_unknownObjectRetain();

    v7(v4, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A3BFBD8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_24A4ABA50();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v1 setEnabledTopics_];
}

uint64_t sub_24A3BFC44()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFSecureLocationCtrl: start refreshing", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[15];

  (*(v7 + 104))(v5, *MEMORY[0x277D09048], v6);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_24A3F5FA4;
  v9 = v0[17];

  return MEMORY[0x28215FBB8](v9);
}

uint64_t sub_24A3BFDF0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v2[7] = swift_task_alloc();
  v2[8] = *(type metadata accessor for FMFFriend(0) - 8);
  v2[9] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v2[10] = swift_task_alloc();
  v3 = sub_24A4AAD40();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_24A4AAD70();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_24A4AADE0();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3BFC44, v1, 0);
}

uint64_t sub_24A3C0000()
{
  v1 = *(*(v0 + 32) + 208);
  *(v0 + 40) = v1;
  if (v1)
  {

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();

    v2 = *(v0 + 16);
    *(v0 + 48) = v2;
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_24A434C0C;

    return sub_24A3BFDF0(v2);
  }

  else
  {
    **(v0 + 24) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_24A3C0160()
{
  v96 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v3 + 72);
    v7 = v1 + v5;
    v93 = MEMORY[0x277D84F90];
    do
    {
      v8 = v0[24];
      sub_24A3A0ADC(v7, v8);
      v9 = v0[24];
      if ((*(v8 + *(v4 + 36)) & 2) != 0)
      {
        sub_24A39976C(v9, v0[22], type metadata accessor for FMFFriend);
        v10 = v93;
        v95 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24A39E574(0, *(v93 + 16) + 1, 1);
          v10 = v95;
        }

        v12 = *(v10 + 16);
        v11 = *(v10 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_24A39E574((v11 > 1), v12 + 1, 1);
          v10 = v95;
        }

        v13 = v0[22];
        *(v10 + 16) = v12 + 1;
        v93 = v10;
        sub_24A39976C(v13, v10 + v5 + v12 * v6, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A39A638(v9, type metadata accessor for FMFFriend);
      }

      v7 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v93 = MEMORY[0x277D84F90];
  }

  v14 = *(v93 + 16);
  v94 = v14;
  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_30:
    v0[25] = v18;
    if (qword_27EF3EBF8 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v91 = v0[23];
  v15 = v0[20];
  v16 = v93 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v0[23];
    sub_24A3A0ADC(v16, v19);
    v20 = sub_24A3F5BAC(*(v91 + 32));
    sub_24A39A638(v19, type metadata accessor for FMFFriend);
    v21 = *(v20 + 16);
    v22 = v18[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v23 <= v18[3] >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v25, 1, v18);
      if (*(v20 + 16))
      {
LABEL_25:
        v26 = (v18[3] >> 1) - v18[2];
        sub_24A4AB220();
        if (v26 < v21)
        {
          goto LABEL_62;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v27 = v18[2];
          v28 = __OFADD__(v27, v21);
          v29 = v27 + v21;
          if (v28)
          {
            goto LABEL_63;
          }

          v18[2] = v29;
        }

        goto LABEL_15;
      }
    }

    if (v21)
    {
      goto LABEL_60;
    }

LABEL_15:
    v16 += v17;
    if (!--v14)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_31:
  v30 = sub_24A4AB630();
  sub_24A378E18(v30, qword_27EF4E260);

  v31 = sub_24A4AB600();
  v32 = sub_24A4ABCE0();
  v92 = v0;
  v88 = v18;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[18];
    v35 = v0[15];
    v34 = v0[16];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v95 = v37;
    *v36 = 134218242;
    *(v36 + 4) = v18[2];

    *(v36 + 12) = 2080;
    (*(v34 + 104))(v33, *MEMORY[0x277D08FE0], v35);
    sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0], MEMORY[0x277D09008]);
    v38 = sub_24A4AC240();
    v40 = v39;
    (*(v34 + 8))(v33, v35);
    v41 = sub_24A37BD58(v38, v40, &v95);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_24A376000, v31, v32, "FMFSecureLocationCtrl: setup location stream for: %ld friends, mode: %s", v36, 0x16u);
    sub_24A37EEE0(v37);
    MEMORY[0x24C219130](v37, -1, -1);
    MEMORY[0x24C219130](v36, -1, -1);
  }

  else
  {
  }

  v42 = v94;
  v43 = v0;
  if (v94)
  {
    v44 = v0[20];
    v90 = v0[21];
    v45 = v0[6];
    v46 = v93 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v89 = *(v44 + 72);
    do
    {
      v94 = v42;
      v52 = v43[21];
      sub_24A3A0ADC(v46, v52);
      v53 = *v52;
      v54 = *(v90 + 8);
      v18 = *(v90 + 32);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v45[15];
      v56 = v95;
      v0 = v45;
      v45[15] = 0x8000000000000000;
      v58 = sub_24A39B2C8(v53, v54);
      v59 = v56[2];
      v60 = (v57 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        goto LABEL_61;
      }

      v62 = v57;
      if (v56[3] >= v61)
      {
        if (v55)
        {
          if (v57)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_24A4A863C();
          v56 = v95;
          if (v62)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_24A4A4B88(v61, v55);
        v56 = v95;
        v63 = sub_24A39B2C8(v53, v54);
        if ((v62 & 1) != (v64 & 1))
        {

          return sub_24A4AC2B0();
        }

        v58 = v63;
        if (v62)
        {
LABEL_36:
          v47 = v56[7] + 32 * v58;
          *v47 = v53;
          *(v47 + 8) = v54;
          *(v47 + 16) = v18;
          *(v47 + 24) = 0;
          *(v47 + 26) = 0;

          goto LABEL_37;
        }
      }

      v56[(v58 >> 6) + 8] |= 1 << v58;
      v65 = (v56[6] + 16 * v58);
      *v65 = v53;
      v65[1] = v54;
      v66 = v56[7] + 32 * v58;
      *v66 = v53;
      *(v66 + 8) = v54;
      *(v66 + 16) = v18;
      *(v66 + 24) = 0;
      *(v66 + 26) = 0;
      v67 = v56[2];
      v28 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v28)
      {
        goto LABEL_64;
      }

      v56[2] = v68;

LABEL_37:
      v43 = v92;
      v48 = v92[21];
      v49 = v92[8];
      v0[15] = v56;
      swift_endAccess();

      v50 = sub_24A4AAAD0();
      (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
      sub_24A4244D4(v53, v54, v49, 0);
      v51 = v49;
      v45 = v0;
      sub_24A37EF2C(v51, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A39A638(v48, type metadata accessor for FMFFriend);
      v46 += v89;
      v42 = v94 - 1;
    }

    while (v94 != 1);
  }

  v69 = *(v43[6] + 112);
  v43[26] = v69;
  v70 = v43;
  if (v69)
  {
    (*(v43[16] + 104))(v43[17], *MEMORY[0x277D08FE0], v43[15]);

    v71 = swift_task_alloc();
    v43[27] = v71;
    *v71 = v43;
    v71[1] = sub_24A3FA428;
    v72 = v43[17];
    v73 = v43[10];

    return MEMORY[0x28215FB18](v73, v88, v72, 1);
  }

  else
  {

    v74 = v43[13];
    v75 = v70[14];
    v77 = v70[11];
    v76 = v70[12];
    v78 = v70[7];
    v79 = v70[6];
    v80 = sub_24A3C9CEC(&qword_27EF3FA48, &qword_24A4B72C0);
    (*(*(v80 - 8) + 56))(v75, 1, 1, v80);
    v81 = sub_24A4ABB70();
    (*(*(v81 - 8) + 56))(v78, 1, 1, v81);
    sub_24A37B740(v75, v74, &qword_27EF3FA30, &qword_24A4B72A8);
    v82 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController, &unk_24A4B7218);
    v83 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v84 = (v76 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    *(v85 + 16) = v79;
    *(v85 + 24) = v82;
    sub_24A37BE24(v74, v85 + v83, &qword_27EF3FA30, &qword_24A4B72A8);
    *(v85 + v84) = v79;
    swift_retain_n();
    sub_24A432D64(0, 0, v78, &unk_24A4B72D0, v85);

    sub_24A37EF2C(v75, &qword_27EF3FA30, &qword_24A4B72A8);

    v86 = v70[1];

    return v86();
  }
}

void *sub_24A3C0C34(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F4A8, &unk_24A4B6910, MEMORY[0x277D092D8]);
  *v3 = result;
  return result;
}

uint64_t sub_24A3C0CA0(void *a1, void *a2, char a3)
{
  v7 = sub_24A4AB690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AB6E0();
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocationUpdatingQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v3;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  aBlock[4] = sub_24A45C7D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A2F0;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  v17 = a1;
  v18 = a2;
  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_24A3C0F78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C0FC0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = *(v0 + 32);
  }

  return sub_24A3C0CA0(v1, *(v0 + 32), 0);
}

uint64_t sub_24A3C0FFC(void *a1, void *a2, void *a3)
{
  v6 = sub_24A4AB690();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
  v12 = sub_24A4ABD60();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_24A3C0FC0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A2A0;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a3;
  v17 = a2;

  sub_24A4AB6B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v8, v14);
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_24A3C12F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A3C1340(uint64_t a1)
{
  v2 = sub_24A4AB710();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);
  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFRefreshController: refreshTimerFired", v9, 2u);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  v10 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  *v5 = v10;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v11 = v10;
  LOBYTE(v10) = sub_24A4AB730();
  v12 = (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v13 = MEMORY[0x24C2189A0](v12);
    sub_24A3C1548(a1, sub_24A3D2718, 0);
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A3C1548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);
  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A376000, v10, v11, "FMFRefreshController: sending refreshClient request…", v12, 2u);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  v13 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshReason);
  v14 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend;
  swift_beginAccess();
  sub_24A3A4548(a1 + v14, v8);
  v15 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts;
  swift_beginAccess();
  v16 = *(a1 + v15);
  v17 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData;
  swift_beginAccess();
  v20 = *(a1 + v19);
  type metadata accessor for FMFInitRefreshClientRequest(0);
  v21 = swift_allocObject();
  sub_24A3A4548(v8, v21 + qword_27EF4E2F0);
  *(v21 + qword_27EF4E2F8) = v16;
  *(v21 + qword_27EF4E300) = v18;
  *(v21 + qword_27EF4E308) = v20;
  v22 = (v21 + qword_27EF4E310);
  v23 = MEMORY[0x277D84F90];
  *v22 = MEMORY[0x277D84F90];
  v22[1] = v23;
  v22[2] = v23;
  *(v21 + qword_27EF4E318) = 0;
  v24 = type metadata accessor for FMFFriend(0);
  if ((*(*(v24 - 8) + 48))(v8, 1, v24) != 1)
  {
    if (v13 == 2)
    {

      v26 = 0x800000024A4AF570;
      v25 = 0xD000000000000017;
      goto LABEL_13;
    }

    v37 = 0;
    v38 = 0xE000000000000000;

    sub_24A4ABF50();
    v39 = v13 & 1;
    sub_24A4AC030();
    v27 = 0xD000000000000018;
    v28 = 0x800000024A4AF590;
LABEL_12:
    MEMORY[0x24C217D50](v27, v28);
    v25 = v37;
    v26 = v38;
    goto LABEL_13;
  }

  if (v13 != 2)
  {
    v37 = 0;
    v38 = 0xE000000000000000;

    sub_24A4ABF50();
    v39 = v13 & 1;
    sub_24A4AC030();
    v27 = 0x687365726665722FLL;
    v28 = 0xEE00746E65696C43;
    goto LABEL_12;
  }

  v25 = 0x4368736572666572;
  v26 = 0xED0000746E65696CLL;
LABEL_13:
  v29 = sub_24A3A45B8(v25, v26);
  sub_24A37EF2C(v8, &qword_27EF3F2D0, &qword_24A4B4F50);
  v30 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 24);
  v31 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 32);
  sub_24A37EACC((a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController), v30);
  v32 = swift_allocObject();
  v32[2] = a2;
  v32[3] = a3;
  v32[4] = a1;
  v33 = *(v31 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

  v33(v29, sub_24A3D582C, v32, refreshed, v30, v31);
}

uint64_t sub_24A3C1A58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C1AA8(uint64_t a1)
{
  v2 = sub_24A3C1E10();

  return MEMORY[0x2821FE718](a1, v2);
}

unint64_t sub_24A3C1AE4(char a1)
{
  result = 0x7972746E756F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0x614E746565727473;
      break;
    case 4:
      result = 0x6441746565727473;
      break;
    case 5:
      result = 0x7974696C61636F6CLL;
      break;
    case 6:
      result = 0x646F436574617473;
      break;
    case 7:
      result = 0x6F436C6174736F70;
      break;
    case 8:
      result = 0x6B72616D646E616CLL;
      break;
    case 9:
    case 16:
    case 18:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E49664F61657261;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMFAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A3C1E10()
{
  result = qword_27EF40D70;
  if (!qword_27EF40D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D70);
  }

  return result;
}

uint64_t sub_24A3C1E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + qword_27EF407B0);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_24A45AB28;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A0C0;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37F064(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_24A3C2148()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24A3C21A0(unint64_t a1, void *a2, void (*a3)(void *))
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_24A4AC060();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = a2;
    goto LABEL_8;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = *(MEMORY[0x24C218380](0, a1) + 16);
    swift_unknownObjectRelease();
    v9 = v10;
    goto LABEL_9;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v4 = *(*(a1 + 32) + 16);
LABEL_8:
  v9 = v4;
LABEL_9:
  v11 = v9;
  a3(v9);
}

id sub_24A3C22A0(void *a1, char *a2, void *a3, uint64_t a4, void *a5)
{
  v53 = a5;
  v54 = a2;
  v8 = type metadata accessor for FMFLocation(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = &v49 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = a1;
  if (!a1)
  {
    v18 = a3;
  }

  memcpy(v57, (a4 + 16), 0x130uLL);
  v19 = *(a4 + 336);
  v20 = *(a4 + 344);
  v21 = *(a4 + 352);
  *(v17 + 3) = 0;
  v17[32] = 1;
  v22 = v8[8];
  v23 = sub_24A4AAB20();
  (*(*(v23 - 8) + 56))(&v17[v22], 1, 1, v23);
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 0;
  memcpy(v61, v57, 0x130uLL);
  v61[38] = v18;
  LOBYTE(v61[39]) = 0;
  *(&v61[39] + 1) = *v60;
  HIDWORD(v61[39]) = *&v60[3];
  v61[40] = v19;
  v61[41] = v20;
  LOWORD(v61[42]) = v21;
  *(&v61[42] + 2) = v58;
  HIWORD(v61[42]) = v59;
  v61[43] = 0;
  LOBYTE(v61[44]) = 0;
  nullsub_1();
  memcpy(&v17[v8[11]], v61, 0x161uLL);
  v17[33] = 0;
  v17[v8[9]] = 0;
  v17[v8[10]] = 0;
  v50 = v9;
  (*(v9 + 56))(v17, 0, 1, v8);
  v24 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
  v25 = v54;
  swift_beginAccess();
  v26 = a1;
  sub_24A37B740(v57, v55, &unk_27EF404E0, &unk_24A4B5230);

  sub_24A3C28C8(v17, &v25[v24]);
  swift_endAccess();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v27 = sub_24A4AB630();
  sub_24A378E18(v27, qword_27EF4E260);
  v28 = v25;
  v29 = sub_24A4AB600();
  v30 = sub_24A4ABCE0();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v52;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56[0] = v34;
    *v33 = 136315138;
    v35 = &v25[v24];
    v36 = v49;
    sub_24A37B740(v35, v49, &qword_27EF3F480, &unk_24A4B8C20);
    if ((*(v50 + 48))(v36, 1, v8))
    {
      v37 = 7104878;
      sub_24A3C29F0(v36);
    }

    else
    {
      sub_24A3B4B10(v36, v32);
      sub_24A3C29F0(v36);
      memcpy(v55, (v32 + v8[11]), 0x161uLL);
      if (sub_24A3B9C24(v55) != 1)
      {
        v46 = v55[38];
        sub_24A3B4B74(v32);
        v47 = [v46 description];

        v37 = sub_24A4AB850();
        v38 = v48;

        goto LABEL_11;
      }

      v37 = 7104878;
      sub_24A3B4B74(v32);
    }

    v38 = 0xE300000000000000;
LABEL_11:
    v25 = v54;
    v39 = sub_24A37BD58(v37, v38, v56);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_24A376000, v29, v30, "FMFMyLocationController: Updated server adjusted location to %s", v33, 0xCu);
    sub_24A37EEE0(v34);
    MEMORY[0x24C219130](v34, -1, -1);
    MEMORY[0x24C219130](v33, -1, -1);
  }

  v40 = &v28[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v40 + 1);
    ObjectType = swift_getObjectType();
    v43 = &v25[v24];
    v44 = v51;
    sub_24A37B740(v43, v51, &qword_27EF3F480, &unk_24A4B8C20);
    (*(v41 + 8))(v44, ObjectType, v41);
    swift_unknownObjectRelease();
    sub_24A3C29F0(v44);
  }

  return [v53 signal];
}

uint64_t sub_24A3C2838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3C28C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3C2938(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A3C2950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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
      *(result + 304) = (a2 - 1);
      return result;
    }

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3C29F0(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3C2A58(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 88))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FMFLocation.debugDescription.getter()
{
  v1 = v0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v43 = 0xD00000000000001ALL;
  v44 = 0x800000024A4AFFF0;
  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x24C217D50](v2, v3);

  MEMORY[0x24C217D50](0x3A6C6562616C202CLL, 0xEA00000000002720);
  v4 = type metadata accessor for FMFLocation(0);
  v5 = v4[11];
  memcpy(__dst, v0 + v5, 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1 || (v6 = __dst[41]) == 0)
  {
    v12 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v7 = __dst[40];
    v8 = sub_24A4AB880();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    FMFDefaultLabel.init(rawValue:)(v11);
    if (LOBYTE(v39[0]) == 5)
    {
      v12 = v7;
    }

    else
    {
      v32 = FMFDefaultLabel.localizedLabel.getter();
      v34 = v33;

      v12 = v32;
      v6 = v34;
    }
  }

  MEMORY[0x24C217D50](v12, v6);

  MEMORY[0x24C217D50](2108455, 0xE300000000000000);
  v14 = v43;
  v13 = v44;
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v40 = 0x676E697461636F6CLL;
  v41 = 0xEA0000000000203ALL;
  if (*(v1 + 16))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + 16))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v15, v16);

  MEMORY[0x24C217D50](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v17 = sub_24A4AB870();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);

  MEMORY[0x24C217D50](v40, v41);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v37 = 0x6E6F697461636F6CLL;
  v38 = 0xEA0000000000203ALL;
  memcpy(v39, v1 + v5, 0x161uLL);
  memcpy(v36, v1 + v5, 0x161uLL);
  sub_24A37B740(v39, v35, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A3C9CEC(&qword_27EF3F840, &qword_24A4B6598);
  v18 = sub_24A4AB870();
  MEMORY[0x24C217D50](v18);

  MEMORY[0x24C217D50](0x6E6F69746F6D202CLL, 0xEA0000000000203ALL);
  v19 = 0;
  if ((v1[4] & 1) == 0)
  {
    v19 = v1[3];
  }

  v36[0] = v19;
  v20 = sub_24A4AC240();
  MEMORY[0x24C217D50](v20);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v21 = v37;
  v22 = v38;
  v36[0] = v14;
  v36[1] = v13;

  MEMORY[0x24C217D50](v21, v22);

  v24 = v36[0];
  v23 = v36[1];
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v36, "livePending: ");
  HIWORD(v36[1]) = -4864;
  if (*(v1 + v4[9]))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + v4[9]))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v25, v26);

  MEMORY[0x24C217D50](0x61506576696C202CLL, 0xEE00203A64657375);
  if (*(v1 + v4[10]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + v4[10]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v27, v28);

  v29 = v36[0];
  v30 = v36[1];
  v36[0] = v24;
  v36[1] = v23;

  MEMORY[0x24C217D50](v29, v30);

  MEMORY[0x24C217D50](62, 0xE100000000000000);

  return v36[0];
}

uint64_t sub_24A3C3038()
{
  v1 = sub_24A4AAAD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v40, v0, 0x130uLL);
  v5 = *(v0 + 304);
  v35 = *(v0 + 312);
  v36 = *(v0 + 344);
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A4B5060;
  sub_24A3C34E4(v40, v39);

  [v5 coordinate];
  v7 = MEMORY[0x277D839F8];
  v8 = MEMORY[0x277D83A80];
  *(v6 + 56) = MEMORY[0x277D839F8];
  *(v6 + 64) = v8;
  *(v6 + 32) = v9;
  [v5 coordinate];
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v10;
  [v5 horizontalAccuracy];
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = v11;
  v12 = sub_24A4AB860();
  v39[0] = 0xD000000000000014;
  v39[1] = 0x800000024A4AF7A0;
  MEMORY[0x24C217D50](v12);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v13 = v39[0];
  v14 = v39[1];
  v39[0] = 0x6D617473656D6974;
  v39[1] = 0xEB00000000203A70;
  v15 = [v5 timestamp];
  sub_24A4AAAA0();

  sub_24A3819E8(&qword_27EF3F368, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v16 = sub_24A4AC240();
  v18 = v17;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C217D50](v16, v18);

  v19 = v39[0];
  v20 = v39[1];
  v39[0] = v13;
  v39[1] = v14;

  MEMORY[0x24C217D50](v19, v20);

  v21 = v39[0];
  v22 = v39[1];
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v39[0] = 0xD000000000000012;
  v39[1] = 0x800000024A4AF7C0;
  if (v35)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v35)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v23, v24);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v25 = v39[0];
  v26 = v39[1];
  v39[0] = v21;
  v39[1] = v22;

  MEMORY[0x24C217D50](v25, v26);

  v28 = v39[0];
  v27 = v39[1];
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v37 = 0x3A73736572646461;
  v38 = 0xE900000000000020;
  memcpy(v39, v40, sizeof(v39));
  sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  v29 = sub_24A4AB870();
  MEMORY[0x24C217D50](v29);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4AF7E0);
  v39[0] = v36;
  sub_24A3C9CEC(&qword_27EF3F330, &qword_24A4B5248);
  v30 = sub_24A4AB870();
  MEMORY[0x24C217D50](v30);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v31 = v37;
  v32 = v38;
  v39[0] = v28;
  v39[1] = v27;

  MEMORY[0x24C217D50](v31, v32);

  return v39[0];
}

uint64_t sub_24A3C34E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t FMFAddress.debugDescription.getter()
{

  sub_24A4ABF50();

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v0 = sub_24A4AB870();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t FMLocationShiftingRequest.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A3C3654()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C3694()
{
  memcpy(__dst, (v0 + 16), 0x161uLL);
  sub_24A3C36E0(__dst);
  return swift_deallocClassInstance();
}

void *sub_24A3C3758@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24A3C3770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A4AB850();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A3C37E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24A3C3868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24A3C38F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C3954()
{

  sub_24A37EEE0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A3C399C()
{
  swift_unknownObjectRelease();

  sub_24A37EEE0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A3C39EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C3A64()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C3AF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C3B2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24A3C3CD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_24A3C3EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_24A4AAAD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24A3C3F74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_24A4AAAD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24A3C40D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C417C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C41C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C41FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_24A3C424C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 83, 7);
}

uint64_t sub_24A3C42CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C4358()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C4390()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C43C8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C4410()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C44CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C451C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C4554()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C458C()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A3C45FC()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C466C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C46BC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C4714()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C4774()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A3C47DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C4830()
{
  v1 = type metadata accessor for FMFLocation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = v2 + 16 + ((((v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = sub_24A4AAB20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = v4 & ~v2;
  v11 = v5 + *(v1 + 44);
  v12 = *(v11 + 304);
  if (v12)
  {
    if (*(v11 + 168))
    {

      v12 = *(v11 + 304);
    }
  }

  v13 = v0 + v10;

  v14 = *(v1 + 32);
  if (!v9(v0 + v10 + v14, 1, v7))
  {
    (*(v8 + 8))(v13 + v14, v7);
  }

  v15 = v13 + *(v1 + 44);
  v16 = *(v15 + 304);
  if (v16)
  {
    if (*(v15 + 168))
    {

      v16 = *(v15 + 304);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v18, v2 | 7);
}

uint64_t sub_24A3C4B9C()
{
  v1 = type metadata accessor for FMFLocation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v19 = *(*(v1 - 8) + 64) + 7;
  v4 = v2 + ((v19 + v3) & 0xFFFFFFFFFFFFFFF8) + 8;

  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = sub_24A4AAB20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = v4 & ~v2;
  v11 = v5 + *(v1 + 44);
  v12 = *(v11 + 304);
  if (v12)
  {
    if (*(v11 + 168))
    {

      v12 = *(v11 + 304);
    }
  }

  v13 = v0 + v10;

  v14 = *(v1 + 32);
  if (!v9(v0 + v10 + v14, 1, v7))
  {
    (*(v8 + 8))(v13 + v14, v7);
  }

  v15 = v13 + *(v1 + 44);
  v16 = *(v15 + 304);
  if (v16)
  {
    if (*(v15 + 168))
    {

      v16 = *(v15 + 304);
    }
  }

  v17 = (v19 + v10) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v2 | 7);
}

uint64_t sub_24A3C4F08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C4F58()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C4FC0()
{
  v1 = type metadata accessor for FMFLocation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v20 = *(*(v1 - 8) + 64) + 7;
  v4 = v2 + ((v20 + v3) & 0xFFFFFFFFFFFFFFF8) + 8;

  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = sub_24A4AAB20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = v4 & ~v2;
  v11 = v5 + *(v1 + 44);
  v12 = *(v11 + 304);
  if (v12)
  {
    if (*(v11 + 168))
    {

      v12 = *(v11 + 304);
    }
  }

  v13 = v0 + v10;

  v14 = *(v1 + 32);
  if (!v9(v0 + v10 + v14, 1, v7))
  {
    (*(v8 + 8))(v13 + v14, v7);
  }

  v15 = v13 + *(v1 + 44);
  v16 = *(v15 + 304);
  if (v16)
  {
    if (*(v15 + 168))
    {

      v16 = *(v15 + 304);
    }
  }

  v17 = (v20 + v10) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v18 + 8, v2 | 7);
}

uint64_t sub_24A3C534C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C5394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24A3C545C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C550C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_24A3C9CEC(&qword_27EF3F7A0, &qword_24A4B6430);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_24A3C56A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A3C5704(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC7FMFCore25FMFGenericResponseHandler_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A3C5768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24A3C57B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_24A3C57F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C5844@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A3C5898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_selectedFriend;
  swift_beginAccess();
  return sub_24A37B740(v3 + v4, a2, &qword_27EF3F2D0, &qword_24A4B4F50);
}

uint64_t sub_24A3C5908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24A3C5960(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7FMFCore10FMFManager_isInitialized;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_24A3A3944(v5);
}

uint64_t sub_24A3C59BC()
{
  v1 = type metadata accessor for FMFLocation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = sub_24A4AAB20();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + *(v1 + 44);
  v10 = *(v9 + 304);
  if (v10)
  {
    if (*(v9 + 168))
    {

      v10 = *(v9 + 304);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24A3C5BDC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C5C14()
{
  v1 = type metadata accessor for FMFLocation(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = sub_24A4AAB20();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + *(v1 + 44);
  v10 = *(v9 + 304);
  if (v10)
  {
    if (*(v9 + 168))
    {

      v10 = *(v9 + 304);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A3C5E40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C5E80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C5EB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C5F00()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C5F84()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_24A4AAB80();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A3C60D8()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 200))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 336, 7);
}

uint64_t sub_24A3C61C0()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A4AAB80();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24A3C6330()
{

  if (*(v0 + 328))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 344, 7);
}

uint64_t sub_24A3C6424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A3C64E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A3C6590()
{
  v1 = type metadata accessor for FMFFriend(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A4AAAD0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[19] + 8))
  {
  }

  v9 = v5 + v1[20];
  v10 = type metadata accessor for FMFLocation(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 32);
    v12 = sub_24A4AAB20();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v9 + *(v10 + 44);
    v15 = *(v14 + 304);
    if (v15)
    {
      if (*(v14 + 168))
      {

        v15 = *(v14 + 304);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_24A3C68CC()
{
  v1 = type metadata accessor for FMFFriend(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A4AAAD0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[19] + 8))
  {
  }

  v9 = v5 + v1[20];
  v10 = type metadata accessor for FMFLocation(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 32);
    v12 = sub_24A4AAB20();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v9 + *(v10 + 44);
    v15 = *(v14 + 304);
    if (v15)
    {
      if (*(v14 + 168))
      {

        v15 = *(v14 + 304);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A3C6BFC()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_24A3C6C68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A3C6CC4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A3C6D28()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C6D68()
{
  MEMORY[0x24C219220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C6DA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C6DF0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A3C6E48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C6E98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C6ED0()
{

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_24A3C6F18()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C6F94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C6FCC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A3C7004()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A3C703C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C7074()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C70C4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C7124()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C718C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3C71D4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C72C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24A406830(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24A3C7340()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C73A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C73E0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C744C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C7490()
{
  v1 = type metadata accessor for FMFFriend(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A4AAAD0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[19] + 8))
  {
  }

  v9 = v5 + v1[20];
  v10 = type metadata accessor for FMFLocation(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 32);
    v12 = sub_24A4AAB20();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v9 + *(v10 + 44);
    v15 = *(v14 + 304);
    if (v15)
    {
      if (*(v14 + 168))
      {

        v15 = *(v14 + 304);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A3C77D0()
{
  v1 = type metadata accessor for FMFFriend(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A4AAAD0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[19] + 8))
  {
  }

  v9 = v5 + v1[20];
  v10 = type metadata accessor for FMFLocation(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 32);
    v12 = sub_24A4AAB20();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v9 + *(v10 + 44);
    v15 = *(v14 + 304);
    if (v15)
    {
      if (*(v14 + 168))
      {

        v15 = *(v14 + 304);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A3C7B28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A3C7B70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C7BC8()
{
  v1 = type metadata accessor for FMFLocationAlert(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = v0 + v3 + v1[12];
  v6 = type metadata accessor for FMFSchedule(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *(v6 + 40);
    v8 = sub_24A4AABE0();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  if (*(v4 + v1[23] + 168))
  {
  }

  v10 = v1[26];
  v11 = sub_24A4AAAD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[27];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  return MEMORY[0x2821FE8E8](v0, ((v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A3C7F84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24A3C8068()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A3C80A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A3C815C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A3C8230()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A3C8268()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  sub_24A49B34C(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  return MEMORY[0x2821FE8E8](v0, v4 + 17, v2 | 7);
}

uint64_t sub_24A3C8314()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A3C8498(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A3C84A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t KoreaFeatureFlag.hashValue.getter()
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

uint64_t sub_24A3C8554()
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

uint64_t sub_24A3C85C0(uint64_t a1)
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

unint64_t sub_24A3C8604()
{
  result = qword_27EF3ED10;
  if (!qword_27EF3ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3ED10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KoreaFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for KoreaFeatureFlag(_WORD *result, int a2, int a3)
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

_DWORD *sub_24A3C879C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24A3C87B8(uint64_t a1, id *a2)
{
  result = sub_24A4AB830();
  *a2 = 0;
  return result;
}

uint64_t sub_24A3C8830(uint64_t a1, id *a2)
{
  v3 = sub_24A4AB840();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24A3C88B0@<X0>(uint64_t *a2@<X8>)
{
  sub_24A4AB850();
  v3 = sub_24A4AB820();

  *a2 = v3;
  return result;
}

BOOL sub_24A3C88FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_24A3C893C(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3F2C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A3C89A8(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3F2C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A3C8A14(void *a1, uint64_t a2)
{
  v4 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3F2C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A3C8AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3F2C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A3C8B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24A4AC360();
  sub_24A4AB7E0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A3C8BB8(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey, &unk_24A4B403C);
  v3 = sub_24A3AA0FC(&qword_27EF3EDE8, type metadata accessor for FileAttributeKey, &unk_24A4B3BFC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A3C8D04@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24A4AB820();

  *a2 = v3;
  return result;
}

uint64_t sub_24A3C8D4C(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDD0, type metadata accessor for FileProtectionType, &unk_24A4B3D70);
  v3 = sub_24A3AA0FC(&qword_27EF3EDD8, type metadata accessor for FileProtectionType, &unk_24A4B3D10);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A3C8E98(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3ED88, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3EE8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A3C8F04(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3ED88, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3EE8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A3C8F74(uint64_t a1)
{
  v2 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3F2C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A3C8FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A3AA0FC(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3F2C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24A3C9064()
{
  v0 = sub_24A4AB850();
  v1 = MEMORY[0x24C217DE0](v0);

  return v1;
}

uint64_t sub_24A3C90A0(uint64_t a1)
{
  sub_24A4AB850();
  sub_24A4AB8F0();
}

uint64_t sub_24A3C90F4(uint64_t a1)
{
  sub_24A4AB850();
  sub_24A4AC360();
  sub_24A4AB8F0();
  v1 = sub_24A4AC3A0();

  return v1;
}

uint64_t sub_24A3C9168(void *a1, uint64_t *a2)
{
  v2 = sub_24A4AB850();
  v4 = v3;
  if (v2 == sub_24A4AB850() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A4AC270();
  }

  return v7 & 1;
}

unint64_t sub_24A3C9400()
{
  result = qword_27EF3EDB0;
  if (!qword_27EF3EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EDB0);
  }

  return result;
}

Swift::String __swiftcall FMFSchedule.DaysOfWeek.description()()
{
  v0 = sub_24A4AC240();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void *sub_24A3C9634@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24A3C9660@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24A3C9754(uint64_t a1)
{
  sub_24A4AB8F0();
}

unint64_t sub_24A3C9870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3CC468(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A3C98A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x756F487472617473;
  v5 = 0xE800000000000000;
  v6 = 0x737961446E617073;
  if (v2 != 5)
  {
    v6 = 0x7A5465636E6566;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E694D646E65;
  if (v2 != 3)
  {
    v8 = 0x6557664F73796164;
    v7 = 0xEA00000000006B65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6E694D7472617473;
  if (v2 != 1)
  {
    v10 = 0x72756F48646E65;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A3C9984()
{
  v1 = *v0;
  v2 = 0x756F487472617473;
  v3 = 0x737961446E617073;
  if (v1 != 5)
  {
    v3 = 0x7A5465636E6566;
  }

  v4 = 0x6E694D646E65;
  if (v1 != 3)
  {
    v4 = 0x6557664F73796164;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E694D7472617473;
  if (v1 != 1)
  {
    v5 = 0x72756F48646E65;
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

unint64_t sub_24A3C9A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3CC468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3C9A98(uint64_t a1)
{
  v2 = sub_24A3CA450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3C9AD4(uint64_t a1)
{
  v2 = sub_24A3CA450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFSchedule.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMFSchedule(0) + 40);

  return sub_24A3C9C7C(v3, a1);
}

uint64_t sub_24A3C9C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3C9CEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t FMFSchedule.timeZone.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMFSchedule(0) + 40);

  return sub_24A3C9D78(a1, v3);
}

uint64_t sub_24A3C9D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMFSchedule.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = *(type metadata accessor for FMFSchedule(0) + 40);
  v6 = sub_24A4AABE0();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_24A4B40B0;
  *(a1 + 32) = xmmword_24A4B40C0;
  sub_24A4AABD0();
  v7(v4, 0, 1, v6);
  return sub_24A3C9D78(v4, a1 + v5);
}

uint64_t FMFSchedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_24A3C9CEC(&qword_27EF3EF88, &qword_24A4B40E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for FMFSchedule(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 48);
  v16 = sub_24A4AABE0();
  v17 = *(*(v16 - 8) + 56);
  v42 = v13;
  v40 = v15;
  v17(v13 + v15, 1, 1, v16);
  v18 = a1[3];
  v41 = a1;
  sub_24A37EACC(a1, v18);
  sub_24A3CA450();
  sub_24A4AC3C0();
  if (v2)
  {
    v19 = v42;
    sub_24A37EEE0(v41);
    return sub_24A37EF2C(v19 + v40, &qword_27EF3EF80, &qword_24A4B40D8);
  }

  else
  {
    v20 = v6;
    v21 = v39;
    v22 = v8;
    v50 = 0;
    v23 = sub_24A4AC150();
    v24 = v7;
    v25 = v42;
    *v42 = v23;
    v49 = 1;
    v25[1] = sub_24A4AC150();
    v48 = 2;
    v25[2] = sub_24A4AC150();
    v47 = 3;
    v25[3] = sub_24A4AC150();
    v46 = 5;
    v25[5] = sub_24A4AC150();
    v45 = 4;
    v25[4] = sub_24A4AC150();
    v44 = 6;
    sub_24A4AC120();
    v38 = v10;
    sub_24A4AAB90();

    sub_24A3C9D78(v20, v25 + v40);
    v40 = FMFSchedule.debugDescription.getter();
    v28 = v27;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v29 = sub_24A4AB630();
    sub_24A378E18(v29, qword_27EF4E260);

    v30 = sub_24A4AB600();
    v31 = sub_24A4ABCE0();

    v32 = v22;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = v31;
      v35 = swift_slowAlloc();
      v43 = v35;
      *v33 = 136315138;
      v36 = sub_24A37BD58(v40, v28, &v43);
      v40 = v24;
      v37 = v36;

      *(v33 + 4) = v37;
      _os_log_impl(&dword_24A376000, v30, v34, "FMFCore.FMFSchedule: initialized with coder %s", v33, 0xCu);
      sub_24A37EEE0(v35);
      MEMORY[0x24C219130](v35, -1, -1);
      MEMORY[0x24C219130](v33, -1, -1);

      v25 = v42;
      (*(v32 + 8))(v38, v40);
    }

    else
    {

      (*(v22 + 8))(v38, v24);
    }

    sub_24A3CBAFC(v25, v21);
    sub_24A37EEE0(v41);
    return sub_24A3CBB60(v25);
  }
}

{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for FMFSchedule(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 40);
  v13 = sub_24A4AABE0();
  v14 = *(*(v13 - 8) + 56);
  v14(&v10[v12], 1, 1, v13);
  if (a1)
  {
    v15 = a1;
    result = [v15 startHour];
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      *v10 = result;
      result = [v15 startMin];
      if ((result & 0x8000000000000000) == 0)
      {
        *(v10 + 1) = result;
        result = [v15 endHour];
        if ((result & 0x8000000000000000) == 0)
        {
          *(v10 + 2) = result;
          result = [v15 endMin];
          if ((result & 0x8000000000000000) == 0)
          {
            *(v10 + 3) = result;
            *(v10 + 4) = [v15 daysOfWeek];
            result = [v15 spanDays];
            if ((result & 0x8000000000000000) == 0)
            {
              *(v10 + 5) = result;
              v17 = [v15 timeZone];
              v23 = v7;
              v18 = v12;
              v19 = v14;
              v20 = a2;
              v21 = v17;
              sub_24A4AABC0();

              v19(v6, 0, 1, v13);
              sub_24A3C9D78(v6, &v10[v18]);
              sub_24A3CBAFC(v10, v20);
              (*(v8 + 56))(v20, 0, 1, v23);
              return sub_24A3CBB60(v10);
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_24A37EF2C(&v10[v12], &qword_27EF3EF80, &qword_24A4B40D8);
  return (*(v8 + 56))(a2, 1, 1, v7);
}

unint64_t sub_24A3CA450()
{
  result = qword_27EF3EF90;
  if (!qword_27EF3EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EF90);
  }

  return result;
}

uint64_t FMFSchedule.debugDescription.getter()
{
  v1 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - v2;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0x6465686353464D46, 0xEB00000000656C75);
  MEMORY[0x24C217D50](0x487472617473203ALL, 0xED0000203A72756FLL);
  v17 = *v0;
  v4 = sub_24A4AC240();
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](0x694D747261747320, 0xEB00000000203A6ELL);
  v17 = v0[1];
  v5 = sub_24A4AC240();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](0x72756F48646E6520, 0xEA0000000000203ALL);
  v17 = v0[2];
  v6 = sub_24A4AC240();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](0x3A6E694D646E6520, 0xE900000000000020);
  v17 = v0[3];
  v7 = sub_24A4AC240();
  MEMORY[0x24C217D50](v7);

  v9 = v18;
  v8 = v19;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x57664F7379616420, 0xED0000203A6B6565);
  v17 = v0[4];
  sub_24A4AC030();
  MEMORY[0x24C217D50](0x7961446E61707320, 0xEB00000000203A73);
  v17 = v0[5];
  v10 = sub_24A4AC240();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](0x6E6F5A656D697420, 0xEB00000000203A65);
  v11 = type metadata accessor for FMFSchedule(0);
  sub_24A3C9C7C(v0 + *(v11 + 40), v3);
  v12 = sub_24A4AB870();
  MEMORY[0x24C217D50](v12);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v13 = v18;
  v14 = v19;
  v18 = v9;
  v19 = v8;

  MEMORY[0x24C217D50](v13, v14);

  return v18;
}

uint64_t FMFSchedule.init(fmlSchedule:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_24A4AAED0();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB170();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = *(type metadata accessor for FMFSchedule(0) + 40);
  v17 = sub_24A4AABE0();
  v18 = *(v17 - 8);
  v38 = *(v18 + 56);
  v39 = v16;
  v37 = v18 + 56;
  v38(a2 + v16, 1, 1, v17);
  sub_24A4AB110();
  v19 = sub_24A4AB150();
  v20 = *(v11 + 8);
  result = v20(v15, v10);
  if (v19 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  *a2 = v19;
  sub_24A4AB110();
  v22 = sub_24A4AB160();
  result = v20(v15, v10);
  if (v22 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a2[1] = v22;
  sub_24A4AB0F0();
  v23 = sub_24A4AB150();
  result = v20(v15, v10);
  if (v23 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a2[2] = v23;
  sub_24A4AB0F0();
  v24 = sub_24A4AB160();
  result = v20(v15, v10);
  if ((v24 & 0x8000000000000000) == 0)
  {
    a2[3] = v24;
    sub_24A4AB0E0();
    v25 = sub_24A4AAEC0();
    (*(v40 + 8))(v9, v41);
    a2[4] = v25;
    sub_24A4AB120();
    v38(v6, 0, 1, v17);
    sub_24A3C9D78(v6, a2 + v39);
    sub_24A4AB0F0();
    v26 = sub_24A4AB150();
    v20(v15, v10);
    v27 = v42;
    sub_24A4AB110();
    v28 = sub_24A4AB150();
    v20(v27, v10);
    if (v26 < v28)
    {
      v29 = sub_24A4AB130();
      result = (*(*(v29 - 8) + 8))(a1, v29);
      v30 = 1;
LABEL_12:
      a2[5] = v30;
      return result;
    }

    sub_24A4AB0F0();
    v31 = sub_24A4AB150();
    v20(v15, v10);
    sub_24A4AB110();
    v32 = sub_24A4AB150();
    v20(v27, v10);
    if (v31 == v32)
    {
      sub_24A4AB0F0();
      v33 = sub_24A4AB160();
      v20(v15, v10);
      sub_24A4AB110();
      v34 = sub_24A4AB160();
      v35 = sub_24A4AB130();
      (*(*(v35 - 8) + 8))(a1, v35);
      result = v20(v27, v10);
      if (v33 < v34)
      {
        v30 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v36 = sub_24A4AB130();
      result = (*(*(v36 - 8) + 8))(a1, v36);
    }

    v30 = 0;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_24A3CAD34@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v45 = sub_24A4AAED0();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v36 - v4;
  v5 = sub_24A4AB170();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v10);
  v47 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_24A4AABE0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v38 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v24 = type metadata accessor for FMFSchedule(0);
  sub_24A3C9C7C(v1 + *(v24 + 40), v17);
  v25 = *(v19 + 48);
  v26 = v25(v17, 1, v18);
  v39 = v23;
  if (v26 == 1)
  {
    sub_24A4AABD0();
    v27 = v19;
    if (v25(v17, 1, v18) != 1)
    {
      sub_24A37EF2C(v17, &qword_27EF3EF80, &qword_24A4B40D8);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
    v27 = v19;
  }

  result = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v1[1] & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_24A4AB140();
  result = v1[2];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v1[3] & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_24A4AB140();
  result = v1[4];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result <= 0xFF)
  {
    v29 = v41;
    sub_24A4AAEB0();
    v30 = v40;
    v31 = *(v40 + 16);
    v31(v9, v14, v5);
    v36 = v9;
    v37 = v14;
    v31(v46, v47, v5);
    v32 = v43;
    v33 = v45;
    (*(v43 + 16))(v42, v29, v45);
    v34 = v39;
    (*(v27 + 16))(v38, v39, v18);
    sub_24A4AB100();
    (*(v32 + 8))(v29, v33);
    v35 = *(v30 + 8);
    v35(v47, v5);
    v35(v37, v5);
    return (*(v27 + 8))(v34, v18);
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_24A3CB4CC()
{
  v1 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_24A4AABE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D07BD8]) init];
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  result = [result setStartHour_];
  if ((v0[1] & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [v9 setStartMin_];
  if ((v0[2] & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [v9 setEndHour_];
  if ((v0[3] & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v9 setEndMin_];
  result = [v9 setDaysOfWeek_];
  if ((v0[5] & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  [v9 setSpanDays_];
  v10 = type metadata accessor for FMFSchedule(0);
  sub_24A3C9C7C(v0 + *(v10 + 40), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24A37EF2C(v3, &qword_27EF3EF80, &qword_24A4B40D8);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v11 = sub_24A4AABB0();
    [v9 setTimeZone_];

    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

uint64_t FMFSchedule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  v8 = sub_24A3C9CEC(&qword_27EF3EF98, &qword_24A4B40E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3CA450();
  sub_24A4AC3D0();
  LOBYTE(v19[0]) = 0;
  sub_24A4AC1E0();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  LOBYTE(v19[0]) = 1;
  sub_24A4AC1E0();
  LOBYTE(v19[0]) = 2;
  sub_24A4AC1E0();
  LOBYTE(v19[0]) = 3;
  sub_24A4AC1E0();
  LOBYTE(v19[0]) = 4;
  sub_24A4AC1E0();
  LOBYTE(v19[0]) = 5;
  sub_24A4AC1E0();
  v13 = type metadata accessor for FMFSchedule(0);
  sub_24A3C9C7C(v3 + *(v13 + 40), v7);
  v14 = sub_24A4AABE0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    sub_24A37EF2C(v7, &qword_27EF3EF80, &qword_24A4B40D8);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = sub_24A4AABA0();
    v17 = v18;
    (*(v15 + 8))(v7, v14);
  }

  v19[0] = v16;
  v19[1] = v17;
  v20 = 6;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24A3CBAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFSchedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3CBB60(uint64_t a1)
{
  v2 = type metadata accessor for FMFSchedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3CBBBC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24A3CBC30(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_24A37BD58(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_24A3CBC8C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24A3CBC9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t _s7FMFCore11FMFScheduleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24A4AABE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF3EF80, &qword_24A4B40D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_24A3C9CEC(&qword_27EF3EFF8, &qword_24A4B44D0);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if (*a1 != *a2 || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    v19 = 0;
    return v19 & 1;
  }

  v15 = v12;
  v16 = *(type metadata accessor for FMFSchedule(0) + 40);
  v17 = *(v15 + 48);
  sub_24A3C9C7C(a1 + v16, v14);
  sub_24A3C9C7C(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_24A3C9C7C(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v17], v4);
      sub_24A3CC4B4();
      v19 = sub_24A4AB810();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_24A37EF2C(v14, &qword_27EF3EF80, &qword_24A4B40D8);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_13;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
LABEL_13:
    sub_24A37EF2C(v14, &qword_27EF3EFF8, &qword_24A4B44D0);
    v19 = 0;
    return v19 & 1;
  }

  sub_24A37EF2C(v14, &qword_27EF3EF80, &qword_24A4B40D8);
  v19 = 1;
  return v19 & 1;
}

unint64_t sub_24A3CC028()
{
  result = qword_27EF3EFA8;
  if (!qword_27EF3EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFA8);
  }

  return result;
}

unint64_t sub_24A3CC080()
{
  result = qword_27EF3EFB0;
  if (!qword_27EF3EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFB0);
  }

  return result;
}

unint64_t sub_24A3CC0D8()
{
  result = qword_27EF3EFB8;
  if (!qword_27EF3EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFB8);
  }

  return result;
}

unint64_t sub_24A3CC130()
{
  result = qword_27EF3EFC0;
  if (!qword_27EF3EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFSchedule.DaysOfWeek(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFSchedule.DaysOfWeek(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFSchedule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFSchedule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A3CC364()
{
  result = qword_27EF3EFE0;
  if (!qword_27EF3EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFE0);
  }

  return result;
}

unint64_t sub_24A3CC3BC()
{
  result = qword_27EF3EFE8;
  if (!qword_27EF3EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFE8);
  }

  return result;
}

unint64_t sub_24A3CC414()
{
  result = qword_27EF3EFF0;
  if (!qword_27EF3EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3EFF0);
  }

  return result;
}

unint64_t sub_24A3CC468(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A3CC4B4()
{
  result = qword_27EF3F000;
  if (!qword_27EF3F000)
  {
    sub_24A4AABE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F000);
  }

  return result;
}

uint64_t sub_24A3CC50C()
{
  qword_27EF3F010 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_none");

  return swift_unknownObjectRetain();
}

uint64_t sub_24A3CC548()
{
  qword_27EF3F018 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

const char *FMOSActivity.init(_:parent:options:)@<X0>(const char *description@<X0>, char a2@<W2>, NSObject **a3@<X3>, os_activity_flag_t *a4@<X4>, os_activity_t *a5@<X8>)
{
  if (a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!description)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    v6 = _os_activity_create(&dword_24A376000, description, *a3, *a4);
    description = swift_unknownObjectRelease();
    *a5 = v6;
    return description;
  }

LABEL_7:
  __break(1u);
  return description;
}

uint64_t sub_24A3CC640@<X0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return swift_unknownObjectRetain();
}

void *FMOSActivity.apply(execute:)(const void *a1)
{
  result = _Block_copy(a1);
  v3 = *v1;
  if (v3)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A3CC7F4;
    *(v6 + 24) = v5;
    v9[4] = sub_24A37CE0C;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24A37CDDC;
    v9[3] = &unk_285D85418;
    v7 = _Block_copy(v9);

    os_activity_apply(v3, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *static FMOSActivity.start(_:execute:)(const char *a1, int a2, char a3, void *aBlock)
{
  result = _Block_copy(aBlock);
  v7 = result;
  if (qword_27EF3EB98 == -1)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_once();
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = _os_activity_create(&dword_24A376000, a1, qword_27EF3F018, OS_ACTIVITY_FLAG_DEFAULT);
  v9 = _Block_copy(v7);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A3CCE10;
  *(v11 + 24) = v10;
  v13[4] = sub_24A3CCE14;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A37CDDC;
  v13[3] = &unk_285D85490;
  v12 = _Block_copy(v13);

  os_activity_apply(v8, v12);
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v7);
  result = swift_unknownObjectRelease();
  if (v12)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_24A3CCA18()
{
  result = qword_27EF3F020;
  if (!qword_27EF3F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F020);
  }

  return result;
}

unint64_t sub_24A3CCA70()
{
  result = qword_27EF3F028;
  if (!qword_27EF3F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F028);
  }

  return result;
}

unint64_t sub_24A3CCAC8()
{
  result = qword_27EF3F030;
  if (!qword_27EF3F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F030);
  }

  return result;
}

unint64_t sub_24A3CCB20()
{
  result = qword_27EF3F038;
  if (!qword_27EF3F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F038);
  }

  return result;
}

BOOL sub_24A3CCBB0(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_24A3CCBE0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24A3CCC0C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_24A3CCCE4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24A3CCD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMOSActivity.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMOSActivity.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t type metadata accessor for FMFSaveFavoritesRequest(uint64_t a1)
{
  result = qword_27EF3F0A0;
  if (!qword_27EF3F0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3CCEB8()
{
  v1 = *(v0 + qword_27EF4DFD0);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
LABEL_8:
    while (1)
    {
      v9 = __clz(__rbit64(v4)) | (v6 << 6);
      v10 = (*(v1 + 48) + 16 * v9);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(*(v1 + 56) + 8 * v9);
      v35[0] = 25705;
      v35[1] = 0xE200000000000000;
      v35[2] = v11;
      v35[3] = v12;
      v35[5] = MEMORY[0x277D837D0];
      v36[0] = 0x726564726FLL;
      v36[5] = MEMORY[0x277D83B88];
      v36[1] = 0xE500000000000000;
      v36[2] = v13;
      sub_24A3C9CEC(&unk_27EF40370, &qword_24A4B4720);
      v14 = sub_24A4AC090();

      sub_24A3CD35C(v35, &v32);
      v15 = v32;
      v16 = v33;
      v17 = sub_24A39B2C8(v32, v33);
      if (v18)
      {
        break;
      }

      *(v14 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v19 = (v14[6] + 16 * v17);
      *v19 = v15;
      v19[1] = v16;
      sub_24A3A60B4(v34, (v14[7] + 32 * v17));
      v20 = v14[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_21;
      }

      v14[2] = v22;
      sub_24A3CD35C(v36, &v32);
      v23 = v32;
      v24 = v33;
      v25 = sub_24A39B2C8(v32, v33);
      if (v26)
      {
        break;
      }

      *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
      v27 = (v14[6] + 16 * v25);
      *v27 = v23;
      v27[1] = v24;
      sub_24A3A60B4(v34, (v14[7] + 32 * v25));
      v28 = v14[2];
      v21 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v21)
      {
        goto LABEL_21;
      }

      v14[2] = v29;

      sub_24A3C9CEC(&qword_27EF3F0B0, &qword_24A4B4728);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_24A3ED8DC(0, v7[2] + 1, 1, v7);
      }

      v31 = v7[2];
      v30 = v7[3];
      if (v31 >= v30 >> 1)
      {
        v7 = sub_24A3ED8DC((v30 > 1), v31 + 1, 1, v7);
      }

      v4 &= v4 - 1;
      v7[2] = v31 + 1;
      v7[v31 + 4] = v14;
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        *(&v34[0] + 1) = sub_24A3C9CEC(&qword_27EF3F0B8, &qword_24A4B4730);
        v32 = v7;
        swift_beginAccess();
        sub_24A3A6CEC(&v32, 0x657469726F766166, 0xE900000000000073);
        swift_endAccess();
        return;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v6;
      if (v4)
      {
        v6 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_24A3CD220()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A3CD300()
{
  sub_24A3CD220();

  return swift_deallocClassInstance();
}

uint64_t sub_24A3CD35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F0B0, &qword_24A4B4728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SPSecureLocationsManager.currentStewieState()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24A3CD43C, 0, 0);
}

uint64_t sub_24A3CD43C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_24A4AAE50();
  *v2 = v0;
  v2[1] = sub_24A3CD530;
  v4 = *(v0 + 16);

  return MEMORY[0x28215EC68](v4, 0xD000000000000014, 0x800000024A4AF0C0, sub_24A3CD7B4, v1, v3);
}

uint64_t sub_24A3CD530()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A3CD66C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24A3CD66C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24A3CD6D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v8[4] = sub_24A3CFD28;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A3CDA38;
  v8[3] = &unk_285D856A0;
  v7 = _Block_copy(v8);

  [a2 currentStewieStateWithCompletion_];
  _Block_release(v7);
}

void sub_24A3CD7BC(unint64_t a1, void *a2)
{
  v4 = sub_24A4AAE50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9[1] = a2;
    v8 = a2;
    sub_24A4AA6D0();
  }

  else
  {
    sub_24A3CD8D8(a1, v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24A4AA6E0();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24A3CD8D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A4AB630();
    sub_24A378E18(v5, qword_27EF4E260);
    v6 = sub_24A4AB600();
    v7 = sub_24A4ABCC0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24A376000, v6, v7, "FMNetworkUtil: (SPSecureLocationsManager+StewieStateProvider): Failed to map SP Stewie services state %ld to FML one.", v8, 0xCu);
      MEMORY[0x24C219130](v8, -1, -1);
    }

    v4 = MEMORY[0x277D09138];
  }

  else
  {
    v4 = qword_278FE1108[a1];
  }

  v9 = *v4;
  v10 = sub_24A4AAE50();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

void sub_24A3CDA38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24A3CDAB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24A3A35A8;

  return SPSecureLocationsManager.currentStewieState()(a1);
}

uint64_t StewieStateProviderImpl.currentStewieState()(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A4AAD70();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_24A4AADE0();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3CDC38, 0, 0);
}

uint64_t sub_24A3CDC38()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_24A3CDD1C;
  v2 = v0[6];

  return MEMORY[0x28215FBB8](v2);
}

uint64_t sub_24A3CDD1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[8] = a1;

  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v3;
  v4[1] = sub_24A3CDE6C;
  v5 = v2[2];

  return MEMORY[0x28215FAC8](v5);
}

uint64_t sub_24A3CDE6C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A3CDFC0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24A3CDFC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3CE040(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A4AAD70();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_24A4AADE0();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3CE12C, 0, 0);
}

uint64_t sub_24A3CE12C()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_24A3CE210;
  v2 = v0[6];

  return MEMORY[0x28215FBB8](v2);
}

uint64_t sub_24A3CE210(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[8] = a1;

  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v3;
  v4[1] = sub_24A3CE360;
  v5 = v2[2];

  return MEMORY[0x28215FAC8](v5);
}

uint64_t sub_24A3CE360()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A3CFD30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_24A3CE4B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24A3CE540(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_24A4ABB70();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24A39997C(a3, v14);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_24A37B3F8(v14, (v10 + 6));
  v11 = a1;

  sub_24A432370(0, 0, v8, &unk_24A4B4850, v10);
}

uint64_t sub_24A3CE674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a4;
  v6[10] = a6;
  v7 = sub_24A4AAE50();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24A3CE750, 0, 0);
}

uint64_t sub_24A3CE750()
{
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  sub_24A37EACC(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24A3CE87C;
  v5 = v0[14];

  return v7(v5, v2, v3);
}

uint64_t sub_24A3CE87C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24A3CEA50;
  }

  else
  {
    v2 = sub_24A3CE990;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A3CE990()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[11];
  v5 = v0[9];
  swift_beginAccess();
  (*(v3 + 40))(v2, v1, v4);
  dispatch_group_leave(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24A3CEA50()
{
  v22 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCC0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v0[8] = v7;
    v10 = v7;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    v11 = sub_24A4AB870();
    v13 = sub_24A37BD58(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A376000, v4, v5, "FMNetworkUtil: failed to get current stewie state: %{public}s", v8, 0xCu);
    sub_24A37EEE0(v9);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D09140], v0[11]);
  v14 = v0[15];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[11];
  v18 = v0[9];
  swift_beginAccess();
  (*(v16 + 40))(v14, v15, v17);
  dispatch_group_leave(v18);

  v19 = v0[1];

  return v19();
}

uint64_t dispatch thunk of StewieStateProvider.currentStewieState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24A3A35A8;

  return v9(a1, a2, a3);
}

uint64_t sub_24A3CEE58()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = sub_24A4AB820();
  sub_24A3785D4();
  v1 = sub_24A4ABD60();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A3CE4B4;
  aBlock[3] = &unk_285D85650;
  v2 = _Block_copy(aBlock);
  v3 = _CTServerConnectionCreateOnTargetQueue();
  _Block_release(v2);

  if (v3)
  {
    v4 = sub_24A4AB820();
    _CTServerConnectionCopyCellularUsagePolicy();

    _CTServerConnectionGetCellularDataIsEnabled();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A4AB630();
    sub_24A378E18(v5, qword_27EF4E260);
    v6 = sub_24A4AB600();
    v7 = sub_24A4ABCE0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      swift_beginAccess();
      *(v8 + 4) = 0;
      _os_log_impl(&dword_24A376000, v6, v7, "FMNetworkUtil: Global cellular enabled? %{BOOL}d", v8, 8u);
      MEMORY[0x24C219130](v8, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_24A3CF238(uint64_t a1)
{
  v66 = a1;
  v1 = sub_24A4AAE50();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = v60 - v6;
  v7 = sub_24A4AB700();
  isa = v7[-1].isa;
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v60 - v10;
  v11 = sub_24A4AB690();
  v69 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB6E0();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6A0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A4AA700();
  v76 = v21;
  v77 = sub_24A38D2E4(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v22 = sub_24A38D3BC(aBlock);
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D089E0], v21);
  LOBYTE(v21) = sub_24A4AA6C0();
  sub_24A37EEE0(aBlock);
  if ((v21 & 1) == 0)
  {
LABEL_8:
    v41 = 0;
    return v41 & 1;
  }

  v62 = v4;
  v23 = swift_allocBox();
  v24 = *(v2 + 104);
  v63 = v25;
  v60[1] = v2 + 104;
  v60[0] = v24;
  v24();
  v26 = dispatch_group_create();
  v61 = v1;
  v27 = v26;
  dispatch_group_enter(v26);
  sub_24A3785D4();
  (*(v18 + 104))(v20, *MEMORY[0x277D851C8], v17);
  v28 = sub_24A4ABDA0();
  v64 = v2;
  v29 = v28;
  (*(v18 + 8))(v20, v17);
  sub_24A39997C(v66, v79);
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v23;
  sub_24A37B3F8(v79, v30 + 32);
  v77 = sub_24A3CFBF4;
  v78 = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  v76 = &unk_285D85600;
  v31 = _Block_copy(aBlock);
  v32 = v27;
  v66 = v23;

  sub_24A4AB6B0();
  v74 = MEMORY[0x277D84F90];
  sub_24A38D2E4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v13, v31);
  _Block_release(v31);

  (*(v69 + 8))(v13, v11);
  (*(v67 + 8))(v16, v68);

  v33 = v70;
  sub_24A4AB6F0();
  v34 = v71;
  sub_24A4AB720();
  v35 = v73;
  v36 = *(isa + 1);
  v36(v33, v73);
  sub_24A4ABCF0();
  v36(v34, v35);
  if (sub_24A4AB680())
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v37 = sub_24A4AB630();
    sub_24A378E18(v37, qword_27EF4E260);
    v38 = sub_24A4AB600();
    v39 = sub_24A4ABCE0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24A376000, v38, v39, "FMNetworkUtil: Stewie state is unavailable (timed out after 60 secs)", v40, 2u);
      MEMORY[0x24C219130](v40, -1, -1);
    }

    goto LABEL_8;
  }

  v73 = v32;
  v42 = [objc_allocWithZone(MEMORY[0x277D07B30]) init];
  v43 = [v42 isNetworkUp];

  v44 = v63;
  swift_beginAccess();
  v45 = v64;
  v46 = *(v64 + 16);
  v47 = v65;
  v48 = v61;
  v46(v65, v44, v61);
  v49 = v62;
  (v60[0])(v62, *MEMORY[0x277D09140], v48);
  sub_24A38D2E4(&qword_27EF3F0C0, MEMORY[0x277D09148], MEMORY[0x277D09150]);
  LOBYTE(v44) = sub_24A4AB810();
  v50 = *(v45 + 8);
  v50(v49, v48);
  v51 = v48;
  v64 = v45 + 8;
  v50(v47, v48);
  v52 = v44 | v43;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v41 = v52 ^ 1;
  v53 = sub_24A4AB630();
  sub_24A378E18(v53, qword_27EF4E260);

  v54 = sub_24A4AB600();
  v55 = sub_24A4ABCE0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134218240;
    v57 = v65;
    v46(v65, v63, v51);
    v58 = sub_24A4AAE40();
    v50(v57, v51);
    *(v56 + 4) = v58;

    *(v56 + 12) = 1024;
    *(v56 + 14) = v41 & 1;
    _os_log_impl(&dword_24A376000, v54, v55, "FMNetworkUtil: Stewie state is %ld (available=%{BOOL}d)", v56, 0x12u);
    MEMORY[0x24C219130](v56, -1, -1);
  }

  else
  {
  }

  return v41 & 1;
}

unint64_t sub_24A3CFC00()
{
  result = qword_27EF408F0;
  if (!qword_27EF408F0)
  {
    sub_24A3CBC9C(&unk_27EF40310, &unk_24A4B4F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF408F0);
  }

  return result;
}

uint64_t sub_24A3CFC64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A3A35A8;

  return sub_24A3CE674(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_24A3CFD3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A3B1F3C(*a1);
  v5 = v4;
  if (v3 == sub_24A3B1F3C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3CFDC4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3B1F3C(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3CFE28(uint64_t a1)
{
  sub_24A3B1F3C(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A3CFE7C(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A3B1F3C(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A3CFEDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3D0370(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A3CFF0C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A3B1F3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A3CFF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3D0370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3CFF6C(uint64_t a1)
{
  v2 = sub_24A3B16E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3CFFA8()
{

  sub_24A37F110(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 8), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 24));
  sub_24A3B2D38(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 8), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 16), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 24), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 32), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 40), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 48));
}

uint64_t sub_24A3D00E4()
{

  sub_24A3D02B0(v0 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse);

  sub_24A37F110(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 8), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 16), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences + 24));
  sub_24A3B2D38(*(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 8), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 16), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 24), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 32), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 40), *(v0 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo + 48));

  return v0;
}

uint64_t sub_24A3D0250()
{
  sub_24A3D00E4();

  return swift_deallocClassInstance();
}

uint64_t sub_24A3D02B0(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A3D031C()
{
  result = qword_27EF3F1D0;
  if (!qword_27EF3F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1D0);
  }

  return result;
}

unint64_t sub_24A3D0370(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC290();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A3D03C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24A3D0410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3D0460(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4C676E69646E6570;
  v4 = 0xEF676E697461636FLL;
  if (v2 != 1)
  {
    v3 = 0x6F4C646573756170;
    v4 = 0xEE00676E69746163;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x4C676E69646E6570;
  v8 = 0xEF676E697461636FLL;
  if (*a2 != 1)
  {
    v7 = 0x6F4C646573756170;
    v8 = 0xEE00676E69746163;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3D058C()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D0640(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3D06E0(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A3D0790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3D0F58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A3D07C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF676E697461636FLL;
  v5 = 0x4C676E69646E6570;
  if (v2 != 1)
  {
    v5 = 0x6F4C646573756170;
    v4 = 0xEE00676E69746163;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A3D0830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x737574617473;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x737574617473;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3D08C8()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D093C(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3D099C(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D0A0C@<X0>(char *a2@<X8>)
{
  v3 = sub_24A4AC0C0();

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

void sub_24A3D0A6C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x737574617473;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A3D0A9C@<X0>(char *a3@<X8>)
{
  v4 = sub_24A4AC0C0();

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

uint64_t sub_24A3D0B0C(uint64_t a1)
{
  v2 = sub_24A3D11B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3D0B48(uint64_t a1)
{
  v2 = sub_24A3D11B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3D0B84(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_24A3C9CEC(&qword_27EF3F1F8, &qword_24A4B4BC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3D11B8();
  sub_24A4AC3D0();
  v14 = 0;
  sub_24A4AC1B0();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  sub_24A4AC1B0();
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_24A3D0D84@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24A3D0FA4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_24A3D0DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = 0, (sub_24A4AC270() & 1) != 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 0x4C676E69646E6570;
      }

      else
      {
        v9 = 0x6F4C646573756170;
      }

      if (a3 == 1)
      {
        v10 = 0xEF676E697461636FLL;
      }

      else
      {
        v10 = 0xEE00676E69746163;
      }

      v11 = a6;
      if (a6)
      {
LABEL_12:
        if (v11 == 1)
        {
          v12 = 0x4C676E69646E6570;
        }

        else
        {
          v12 = 0x6F4C646573756170;
        }

        if (v11 == 1)
        {
          v13 = 0xEF676E697461636FLL;
        }

        else
        {
          v13 = 0xEE00676E69746163;
        }

        if (v9 != v12)
        {
          goto LABEL_24;
        }

LABEL_22:
        if (v10 == v13)
        {
          v8 = 1;
LABEL_25:

          return v8 & 1;
        }

LABEL_24:
        v8 = sub_24A4AC270();
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v9 = 1701736302;
      v11 = a6;
      if (a6)
      {
        goto LABEL_12;
      }
    }

    v13 = 0xE400000000000000;
    if (v9 != 1701736302)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return v8 & 1;
}

unint64_t sub_24A3D0F58(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A3D0FA4(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3F1E8, &qword_24A4B4BB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3D11B8();
  sub_24A4AC3C0();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24A4AC120();
    v10 = 1;
    sub_24A4AC120();
    sub_24A4AC0C0();

    (*(v4 + 8))(v6, v3);
  }

  sub_24A37EEE0(a1);
  return v7;
}

unint64_t sub_24A3D11B8()
{
  result = qword_27EF3F1F0;
  if (!qword_27EF3F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F1F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlertAcceptanceStatus(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_24A3D12C0()
{
  result = qword_27EF3F200;
  if (!qword_27EF3F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F200);
  }

  return result;
}

unint64_t sub_24A3D1318()
{
  result = qword_27EF3F208;
  if (!qword_27EF3F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F208);
  }

  return result;
}

unint64_t sub_24A3D1370()
{
  result = qword_27EF3F210;
  if (!qword_27EF3F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F210);
  }

  return result;
}

unint64_t sub_24A3D13C8()
{
  result = qword_27EF3F218;
  if (!qword_27EF3F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F218);
  }

  return result;
}

void sub_24A3D1444()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  oslog = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_24A37BD58(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A376000, oslog, v3, "FMFRefreshController: auto refreshing set to: %s", v4, 0xCu);
    sub_24A37EEE0(v5);
    MEMORY[0x24C219130](v5, -1, -1);
    MEMORY[0x24C219130](v4, -1, -1);
  }
}

char *sub_24A3D15D4()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v23);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFRefreshController<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  sub_24A3C8470(v1 + 40);
  sub_24A37EF2C(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_selectedFriend, &qword_27EF3F2D0, &qword_24A4B4F50);
  sub_24A37EEE0((v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController));

  swift_weakDestroy();

  v20 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_lastRefreshTime;
  v21 = sub_24A4AAAD0();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);

  return v1;
}

uint64_t sub_24A3D1888()
{
  sub_24A3D15D4();

  return swift_deallocClassInstance();
}

uint64_t sub_24A3D18E8()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFRefreshController: Start refreshing.", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A3D5B44;
  *(v7 + 24) = v1;
  v10[4] = sub_24A37CE34;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A37CDDC;
  v10[3] = &unk_285D85BB8;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_24A3D1ADC(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing) = 1;
  sub_24A3D1444();
  v2 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 24);
  v3 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController + 32);
  sub_24A37EACC((a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_interactionController), v2);
  (*(v3 + 56))(v2, v3);
  sub_24A3A8C1C();
  sub_24A3AE1EC(0.0);
}

uint64_t sub_24A3D1B70()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);
  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFRefreshController: Stop refreshing.", v11, 2u);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  aBlock[4] = sub_24A3D5B3C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85B68;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v7, v4, v12);
  _Block_release(v12);
  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
}

id sub_24A3D1ED0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_isRefreshing) = 0;
  sub_24A3D1444();
  sub_24A4565D4();
  v2 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshTimer);

  return [v2 invalidate];
}

uint64_t sub_24A3D1F38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24A3D5B30;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85B40;
  v14 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v18 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}