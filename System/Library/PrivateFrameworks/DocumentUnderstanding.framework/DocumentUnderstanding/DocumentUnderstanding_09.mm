void DUFoundInEventResult.__allocating_init<A>(proto:)()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v5 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v83 - v6;
  v8 = *(v2 - 8);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v17 = v16 - v15;
  (*(v8 + 16))(v12, v4, v2);
  if (swift_dynamicCast())
  {
    v84 = v8;
    v85 = v4;
    v86 = v2;
    sub_232B12504(v7, 0, 1, v13);
    sub_232BC8B6C(v7, v17, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
    v18 = [objc_allocWithZone(v0) init];
    v19 = *(v13 + 20);
    v87 = v17;
    v20 = *(v17 + v19);
    sub_232B13F74(v20 + 16, &v139);
    v21 = *(v20 + 16);
    v22 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity], &v138);
    v18[v22] = v21;
    sub_232B13F74(v20 + 24, &v137);
    if (*(v20 + 33))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v20 + 24);
    }

    v24 = v18;
    sub_232BCA470();
    v26 = sub_232BC526C(0x7461767265736572, v25, v23);
    sub_232BC1FC8(v26);
    v28 = v27;

    v29 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BC8980(0xD000000000000031, 0x8000000232D06F70, v23, v28);
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v24, &v136);
    sub_232BCA2CC();
    sub_232B13F74(v20 + 40, &v135);
    v30 = *(v20 + 48);
    if (v30)
    {
      v31 = *(v20 + 40);
      v32 = *(v20 + 48);
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    v33 = &v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId];
    sub_232B13F5C(&v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId], &v134);
    *v33 = v31;
    *(v33 + 1) = v32;

    sub_232B13F74(v20 + 56, &v133);
    sub_232BCA1A0();
    sub_232BCA484();
    v35 = sub_232BC526C(0x7461767265736572, v34, v30);
    sub_232BC1FC8(v35);
    sub_232BCA314();
    v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v24, &v132);
    sub_232BCA2CC();
    v37 = sub_232B13F74(v20 + 72, &v131);
    if (!*(v20 + 80))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v37, &v130);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 296, &v129);
    sub_232BCA1A0();
    v38 = sub_232BCA174(0x4E6C65746F68);
    sub_232BC1FC8(v38);
    sub_232BCA314();
    v39 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v24, &v128);
    sub_232BCA2CC();
    v40 = sub_232B13F74(v20 + 312, &v127);
    if (!*(v20 + 320))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v40, &v126);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 328, &v125);
    sub_232BCA1A0();
    v41 = sub_232BCA174(0x4E7473657567);
    sub_232BC1FC8(v41);
    sub_232BCA314();
    v42 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v24, &v124);
    sub_232BCA2CC();
    v43 = sub_232B13F74(v20 + 344, &v123);
    if (!*(v20 + 352))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v43, &v122);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 360, &v121);
    sub_232BCA1A0();
    v44 = sub_232BCA174(0x4E6569766F6DLL);
    sub_232BC1FC8(v44);
    sub_232BCA314();
    v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v24, &v120);
    sub_232BCA2CC();
    v46 = sub_232B13F74(v20 + 376, &v119);
    if (!*(v20 + 384))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v46, &v118);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 88, &v117);
    v47 = sub_232BCA0F0();
    v48 = sub_232BCA37C(v47);
    sub_232BC1FC8(v48);
    sub_232BCA314();
    v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v24, &v116);
    sub_232BCA2CC();
    v50 = sub_232B13F74(v20 + 104, &v115);
    if (*(v20 + 112))
    {
      v51 = *(v20 + 104);
      v52 = *(v20 + 112);
    }

    else
    {
      v51 = 0;
      v52 = 0xE000000000000000;
    }

    v53 = &v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress];
    sub_232B2D0EC(v50, &v114);
    *v53 = v51;
    *(v53 + 1) = v52;

    sub_232B13F74(v20 + 120, &v113);
    v54 = *(v20 + 120);
    v55 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F5C(&v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents], &v112);
    *&v24[v55] = v54;

    sub_232B13F74(v20 + 128, &v111);
    v56 = sub_232BCA164();
    v57 = sub_232BC526C(v56 | 0x6572646441640000, 0xEA00000000007373, v54);
    sub_232BC1FC8(v57);
    sub_232BCA314();
    v58 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v24, &v110);
    sub_232BCA2CC();
    v59 = sub_232B13F74(v20 + 144, &v109);
    if (!*(v20 + 152))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v59, &v108);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 160, &v107);
    v60 = *(v20 + 160);
    v61 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F5C(&v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents], &v106);
    *&v24[v61] = v60;

    sub_232B13F74(v20 + 168, &v105);
    v62 = sub_232BCA0F0();
    v63 = sub_232BCA440(v62);
    sub_232BC1FC8(v63);
    sub_232BCA314();
    v64 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v24, &v104);
    sub_232BCA2CC();
    v65 = sub_232B13F74(v20 + 184, &v103);
    if (!*(v20 + 192))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v65, &v102);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 200, &v101);
    v66 = sub_232BCA164();
    v67 = sub_232BCA41C(v66);
    sub_232BC1FC8(v67);
    sub_232BCA314();
    v68 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v24, &v100);
    sub_232BCA2CC();
    v69 = sub_232B13F74(v20 + 216, &v99);
    if (!*(v20 + 224))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v69, &v98);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 232, &v97);
    v70 = sub_232BCA0F0();
    v71 = sub_232BCA3F8(v70);
    sub_232BC1FC8(v71);
    sub_232BCA314();
    v72 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v24, &v96);
    sub_232BCA2CC();
    v73 = sub_232B13F74(v20 + 248, &v95);
    if (!*(v20 + 256))
    {
      sub_232BCA278();
    }

    sub_232B2D0EC(v73, &v94);
    sub_232BCA1F0();

    sub_232B13F74(v20 + 264, &v93);
    v74 = sub_232BCA164();
    v75 = sub_232BCA3D4(v74);
    sub_232BC1FC8(v75);
    sub_232BCA314();
    v76 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_232BCA0C4();
    (*(v84 + 8))(v85, v86);
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v24, &v92);
    sub_232BCA2CC();
    sub_232B13F74(v20 + 280, &v91);
    if (*(v20 + 288))
    {
      v77 = *(v20 + 280);
      v78 = *(v20 + 288);
    }

    else
    {
      v77 = 0;
      v78 = 0xE000000000000000;
    }

    v79 = &v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate];
    sub_232B13F5C(&v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate], &v90);
    *v79 = v77;
    *(v79 + 1) = v78;

    sub_232B13F74(v20 + 392, &v89);
    if (*(v20 + 400))
    {
      v80 = *(v20 + 392);
      v81 = *(v20 + 400);
    }

    else
    {
      v80 = 0;
      v81 = 0xE000000000000000;
    }

    sub_232BC8A30(v87);
    v82 = &v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text];
    sub_232B13F5C(&v24[OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text], &v88);
    *v82 = v80;
    *(v82 + 1) = v81;
  }

  else
  {
    (*(v8 + 8))(v4, v2);
    sub_232B12504(v7, 1, 1, v13);
    sub_232B13790(v7, &qword_27DDC7788, &qword_232CFA9A0);
  }

  sub_232B20A00();
}

void sub_232BC6784()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
  v201 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232CE9330();
  v9 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20);
  if (qword_27DDC63F0 != -1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    *(v4 + v9) = qword_27DDC7ED0;
    v10 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity, &v256);
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
      sub_232BCA284(v14);
      v15 = sub_232B13ED0();
      v16 = sub_232C25F58(v15);
      sub_232BCA1C8(v16);
    }

    sub_232B13F5C(v13 + 16, &v255);
    *(v13 + 16) = v11;
    v17 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
    v18 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v2, &v254);
    v19 = *(v17 + v2);
    if (v19)
    {
      v20 = v19;
      [v20 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v17 = *(v4 + v9);
      }

      else
      {
        v21 = sub_232BCA2FC();
        sub_232BCA284(v21);
        sub_232BCA194();

        sub_232C25F58(v22);
        sub_232BCA194();

        *(v4 + v9) = v17;
      }

      LOBYTE(v1) = v1 & 1;
      v18 = sub_232B13F5C((v17 + 3), &v202);
      v17[3] = v11;
      *(v17 + 32) = v1;
      *(v17 + 33) = 0;
    }

    v23 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId;
    sub_232BCA1AC(v18, &v253);
    v24 = *(v23 + 8);
    if (v24)
    {
      sub_232BCA29C();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v4 + v9);
      if ((v25 & 1) == 0)
      {
        v27 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v27);
        v28 = sub_232B13ED0();
        v29 = sub_232C25F58(v28);
        sub_232BCA1C8(v29);
      }

      sub_232B13F5C(v26 + 40, &v203);
      *(v26 + 40) = v11;
      *(v26 + 48) = v24;
    }

    v30 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
    v31 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v2, &v252);
    v32 = *(v30 + v2);
    if (v32)
    {
      v33 = v32;
      [v33 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v30 = *(v4 + v9);
      }

      else
      {
        v34 = sub_232BCA2FC();
        sub_232BCA284(v34);
        sub_232BCA194();

        sub_232C25F58(v35);
        sub_232BCA194();

        *(v4 + v9) = v30;
      }

      LOBYTE(v1) = v1 & 1;
      v31 = sub_232B13F5C((v30 + 7), &v204);
      v30[7] = v11;
      *(v30 + 64) = v1;
      *(v30 + 65) = 0;
    }

    v36 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName;
    sub_232BCA1AC(v31, &v251);
    v37 = *(v36 + 8);
    if (v37)
    {
      sub_232BCA29C();
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v4 + v9);
      if ((v38 & 1) == 0)
      {
        v40 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v40);
        v41 = sub_232B13ED0();
        v42 = sub_232C25F58(v41);
        sub_232BCA1C8(v42);
      }

      sub_232B13F5C(v39 + 72, &v205);
      *(v39 + 72) = v11;
      *(v39 + 80) = v37;
    }

    v43 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError;
    v44 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v2, &v250);
    v45 = *(v43 + v2);
    if (v45)
    {
      v46 = v45;
      [v46 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v43 = *(v4 + v9);
      }

      else
      {
        v47 = sub_232BCA2FC();
        sub_232BCA284(v47);
        sub_232BCA194();

        sub_232C25F58(v48);
        sub_232BCA194();

        *(v4 + v9) = v43;
      }

      LOBYTE(v1) = v1 & 1;
      v44 = sub_232B13F5C((v43 + 37), &v206);
      v43[37] = v11;
      *(v43 + 304) = v1;
      *(v43 + 305) = 0;
    }

    v49 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName;
    sub_232BCA1AC(v44, &v249);
    v50 = *(v49 + 8);
    if (v50)
    {
      sub_232BCA29C();
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v4 + v9);
      if ((v51 & 1) == 0)
      {
        v53 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v53);
        v54 = sub_232B13ED0();
        v55 = sub_232C25F58(v54);
        sub_232BCA1C8(v55);
      }

      sub_232B13F5C(v52 + 312, &v207);
      *(v52 + 312) = v11;
      *(v52 + 320) = v50;
    }

    v56 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError;
    v57 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v2, &v248);
    v58 = *(v56 + v2);
    if (v58)
    {
      v59 = v58;
      [v59 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v56 = *(v4 + v9);
      }

      else
      {
        v60 = sub_232BCA2FC();
        sub_232BCA284(v60);
        sub_232BCA194();

        sub_232C25F58(v61);
        sub_232BCA194();

        *(v4 + v9) = v56;
      }

      LOBYTE(v1) = v1 & 1;
      v57 = sub_232B13F5C((v56 + 41), &v208);
      v56[41] = v11;
      *(v56 + 336) = v1;
      *(v56 + 337) = 0;
    }

    v62 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName;
    sub_232BCA1AC(v57, &v247);
    v63 = *(v62 + 8);
    if (v63)
    {
      sub_232BCA29C();
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v4 + v9);
      if ((v64 & 1) == 0)
      {
        v66 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v66);
        v67 = sub_232B13ED0();
        v68 = sub_232C25F58(v67);
        sub_232BCA1C8(v68);
      }

      sub_232B13F5C(v65 + 344, &v209);
      *(v65 + 344) = v11;
      *(v65 + 352) = v63;
    }

    v69 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
    v70 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v2, &v246);
    v71 = *(v69 + v2);
    if (v71)
    {
      v72 = v71;
      [v72 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v69 = *(v4 + v9);
      }

      else
      {
        v73 = sub_232BCA2FC();
        sub_232BCA284(v73);
        sub_232BCA194();

        sub_232C25F58(v74);
        sub_232BCA194();

        *(v4 + v9) = v69;
      }

      LOBYTE(v1) = v1 & 1;
      v70 = sub_232B13F5C((v69 + 45), &v210);
      v69[45] = v11;
      *(v69 + 368) = v1;
      *(v69 + 369) = 0;
    }

    v75 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName;
    sub_232BCA1AC(v70, &v245);
    v76 = *(v75 + 8);
    if (v76)
    {
      sub_232BCA29C();
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v4 + v9);
      if ((v77 & 1) == 0)
      {
        v79 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v79);
        v80 = sub_232B13ED0();
        v81 = sub_232C25F58(v80);
        sub_232BCA1C8(v81);
      }

      sub_232B13F5C(v78 + 376, &v211);
      *(v78 + 376) = v11;
      *(v78 + 384) = v76;
    }

    v82 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
    v83 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v2, &v244);
    v84 = *(v82 + v2);
    if (v84)
    {
      v85 = v84;
      [v85 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v82 = *(v4 + v9);
      }

      else
      {
        v86 = sub_232BCA2FC();
        sub_232BCA284(v86);
        sub_232BCA194();

        sub_232C25F58(v87);
        sub_232BCA194();

        *(v4 + v9) = v82;
      }

      LOBYTE(v1) = v1 & 1;
      v83 = sub_232B13F5C((v82 + 11), &v212);
      v82[11] = v11;
      *(v82 + 96) = v1;
      *(v82 + 97) = 0;
    }

    v88 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
    sub_232BCA1AC(v83, &v243);
    v89 = *(v88 + 8);
    if (v89)
    {
      sub_232BCA29C();
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v91 = *(v4 + v9);
      if ((v90 & 1) == 0)
      {
        v92 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v92);
        v93 = sub_232B13ED0();
        v94 = sub_232C25F58(v93);
        sub_232BCA1C8(v94);
      }

      sub_232B13F5C(v91 + 104, &v213);
      *(v91 + 104) = v11;
      *(v91 + 112) = v89;
    }

    v95 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents, &v242);
    v96 = *(v2 + v95);
    if (v96)
    {

      v97 = swift_isUniquelyReferenced_nonNull_native();
      v98 = *(v4 + v9);
      if ((v97 & 1) == 0)
      {
        v99 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v99);
        v100 = sub_232B13ED0();
        v101 = sub_232C25F58(v100);
        sub_232BCA1C8(v101);
      }

      sub_232B13F5C(v98 + 120, &v214);
      *(v98 + 120) = v96;
    }

    v102 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
    v103 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v2, &v241);
    v104 = *(v102 + v2);
    if (v104)
    {
      v105 = v104;
      [v105 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v102 = *(v4 + v9);
      }

      else
      {
        v106 = sub_232BCA2FC();
        sub_232BCA284(v106);
        sub_232BCA194();

        sub_232C25F58(v107);
        sub_232BCA194();

        *(v4 + v9) = v102;
      }

      LOBYTE(v1) = v1 & 1;
      v103 = sub_232B13F5C((v102 + 16), &v215);
      v102[16] = v11;
      *(v102 + 136) = v1;
      *(v102 + 137) = 0;
    }

    v108 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress;
    sub_232BCA1AC(v103, &v240);
    v109 = *(v108 + 8);
    if (v109)
    {
      sub_232BCA29C();
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v111 = *(v4 + v9);
      if ((v110 & 1) == 0)
      {
        v112 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v112);
        v113 = sub_232B13ED0();
        v114 = sub_232C25F58(v113);
        sub_232BCA1C8(v114);
      }

      sub_232B13F5C(v111 + 144, &v216);
      *(v111 + 144) = v11;
      *(v111 + 152) = v109;
    }

    v115 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents, &v239);
    v116 = *(v2 + v115);
    if (v116)
    {

      v117 = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v4 + v9);
      if ((v117 & 1) == 0)
      {
        v119 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v119);
        v120 = sub_232B13ED0();
        v121 = sub_232C25F58(v120);
        sub_232BCA1C8(v121);
      }

      sub_232B13F5C(v118 + 160, &v217);
      *(v118 + 160) = v116;
    }

    v122 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError;
    v123 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v2, &v238);
    v124 = *(v122 + v2);
    if (v124)
    {
      v125 = v124;
      [v125 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v122 = *(v4 + v9);
      }

      else
      {
        v126 = sub_232BCA2FC();
        sub_232BCA284(v126);
        sub_232BCA194();

        sub_232C25F58(v127);
        sub_232BCA194();

        *(v4 + v9) = v122;
      }

      LOBYTE(v1) = v1 & 1;
      v123 = sub_232B13F5C((v122 + 21), &v218);
      v122[21] = v11;
      *(v122 + 176) = v1;
      *(v122 + 177) = 0;
    }

    v128 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace;
    sub_232BCA1AC(v123, &v237);
    v129 = *(v128 + 8);
    if (v129)
    {
      sub_232BCA29C();
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v131 = *(v4 + v9);
      if ((v130 & 1) == 0)
      {
        v132 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v132);
        v133 = sub_232B13ED0();
        v134 = sub_232C25F58(v133);
        sub_232BCA1C8(v134);
      }

      sub_232B13F5C(v131 + 184, &v219);
      *(v131 + 184) = v11;
      *(v131 + 192) = v129;
    }

    v135 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError;
    v136 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v2, &v236);
    v137 = *(v135 + v2);
    if (v137)
    {
      v138 = v137;
      [v138 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v135 = *(v4 + v9);
      }

      else
      {
        v139 = sub_232BCA2FC();
        sub_232BCA284(v139);
        sub_232BCA194();

        sub_232C25F58(v140);
        sub_232BCA194();

        *(v4 + v9) = v135;
      }

      LOBYTE(v1) = v1 & 1;
      v136 = sub_232B13F5C((v135 + 25), &v220);
      v135[25] = v11;
      *(v135 + 208) = v1;
      *(v135 + 209) = 0;
    }

    v141 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace;
    sub_232BCA1AC(v136, &v235);
    v142 = *(v141 + 8);
    if (v142)
    {
      sub_232BCA29C();
      v143 = swift_isUniquelyReferenced_nonNull_native();
      v144 = *(v4 + v9);
      if ((v143 & 1) == 0)
      {
        v145 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v145);
        v146 = sub_232B13ED0();
        v147 = sub_232C25F58(v146);
        sub_232BCA1C8(v147);
      }

      sub_232B13F5C(v144 + 216, &v221);
      *(v144 + 216) = v11;
      *(v144 + 224) = v142;
    }

    v148 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError;
    v149 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v2, &v234);
    v150 = *(v148 + v2);
    if (v150)
    {
      v151 = v150;
      [v151 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v148 = *(v4 + v9);
      }

      else
      {
        v152 = sub_232BCA2FC();
        sub_232BCA284(v152);
        sub_232BCA194();

        sub_232C25F58(v153);
        sub_232BCA194();

        *(v4 + v9) = v148;
      }

      LOBYTE(v1) = v1 & 1;
      v149 = sub_232B13F5C((v148 + 29), &v222);
      v148[29] = v11;
      *(v148 + 240) = v1;
      *(v148 + 241) = 0;
    }

    v154 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate;
    sub_232BCA1AC(v149, &v233);
    v155 = *(v154 + 8);
    if (v155)
    {
      sub_232BCA29C();
      v156 = swift_isUniquelyReferenced_nonNull_native();
      v157 = *(v4 + v9);
      if ((v156 & 1) == 0)
      {
        v158 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v158);
        v159 = sub_232B13ED0();
        v160 = sub_232C25F58(v159);
        sub_232BCA1C8(v160);
      }

      sub_232B13F5C(v157 + 248, &v223);
      *(v157 + 248) = v11;
      *(v157 + 256) = v155;
    }

    v161 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError;
    v162 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v2, &v232);
    v163 = *(v161 + v2);
    if (v163)
    {
      v164 = v163;
      [v164 code];
      sub_232C246AC();
      if (sub_232BCA104())
      {

        v161 = *(v4 + v9);
      }

      else
      {
        v165 = sub_232BCA2FC();
        sub_232BCA284(v165);
        sub_232BCA194();

        sub_232C25F58(v166);
        sub_232BCA194();

        *(v4 + v9) = v161;
      }

      v162 = sub_232B13F5C((v161 + 33), &v224);
      v161[33] = v11;
      *(v161 + 272) = v1 & 1;
      *(v161 + 273) = 0;
    }

    v167 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate;
    v168 = sub_232BCA1AC(v162, &v231);
    v169 = *(v167 + 8);
    if (v169)
    {
      sub_232BCA29C();
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v171 = *(v4 + v9);
      if ((v170 & 1) == 0)
      {
        v172 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v172);
        v173 = sub_232B13ED0();
        v174 = sub_232C25F58(v173);
        sub_232BCA1C8(v174);
      }

      sub_232B13F5C(v171 + 280, &v225);
      *(v171 + 280) = v11;
      *(v171 + 288) = v169;
    }

    v175 = v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text;
    sub_232BCA1AC(v168, &v230);
    v176 = *(v175 + 8);
    if (v176)
    {
      sub_232BCA29C();
      v177 = swift_isUniquelyReferenced_nonNull_native();
      v178 = *(v4 + v9);
      if ((v177 & 1) == 0)
      {
        v179 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v179);
        v180 = sub_232B13ED0();
        v181 = sub_232C25F58(v180);
        sub_232BCA1C8(v181);
      }

      sub_232B13F5C(v178 + 392, &v226);
      *(v178 + 392) = v11;
      *(v178 + 400) = v176;
    }

    v182 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags;
    sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags, &v229);
    v1 = *(v2 + v182);
    if (!v1)
    {
      goto LABEL_131;
    }

    v196 = v4;
    v183 = sub_232B26B10();
    v4 = MEMORY[0x277D84F90];
    if (!v183)
    {
LABEL_128:
      v192 = swift_isUniquelyReferenced_nonNull_native();
      v193 = *(v196 + v9);
      if ((v192 & 1) == 0)
      {
        v194 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
        sub_232BCA284(v194);
        v195 = sub_232B13ED0();
        v193 = sub_232C25F58(v195);
        *(v196 + v9) = v193;
      }

      sub_232B13F5C(v193 + 408, &v227);
      *(v193 + 408) = v4;

LABEL_131:
      sub_232B20A00();
      return;
    }

    v184 = v183;
    v227 = MEMORY[0x277D84F90];
    v185 = v183 & ~(v183 >> 63);

    sub_232B64BC4(0, v185, 0);
    if (v184 < 0)
    {
      break;
    }

    v186 = 0;
    v2 = 0;
    v4 = v227;
    v199 = v9;
    v200 = v1 & 0xC000000000000001;
    v197 = v1 & 0xFFFFFFFFFFFFFF8;
    v198 = v1;
    while (1)
    {
      v187 = v186 + 1;
      if (__OFADD__(v186, 1))
      {
        break;
      }

      if (v200)
      {
        v188 = MEMORY[0x2383922C0](v186, v1);
      }

      else
      {
        if (v186 >= *(v197 + 16))
        {
          goto LABEL_133;
        }

        v188 = *(v1 + 8 * v186 + 32);
      }

      v228 = v188;
      sub_232BC75E4(&v228, v8);

      v227 = v4;
      v189 = v8;
      v191 = *(v4 + 16);
      v190 = *(v4 + 24);
      if (v191 >= v190 >> 1)
      {
        sub_232B64BC4((v190 > 1), v191 + 1, 1);
        v4 = v227;
      }

      *(v4 + 16) = v191 + 1;
      sub_232BC8B6C(v189, v4 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v191, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
      ++v186;
      v8 = v189;
      v1 = v198;
      v9 = v199;
      if (v187 == v184)
      {

        goto LABEL_128;
      }
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
  }

  __break(1u);
}

void sub_232BC75E4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_232CE9330();
  swift_beginAccess();
  sub_232C2470C();
  if ((v10 & 0x100) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  *v7 = v11;
  v7[8] = v10 & 1 | HIBYTE(v10) & 1;
  swift_beginAccess();
  v12 = v8[4];
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v21 = a2;
    v22[10] = v2;
    v22[0] = MEMORY[0x277D84F90];

    sub_232B64BE4(0, v13, 0);
    v14 = v22[0];
    v15 = *(v22[0] + 16);
    v16 = 32;
    do
    {
      v17 = *(v12 + v16);
      v22[0] = v14;
      v18 = *(v14 + 24);
      if (v15 >= v18 >> 1)
      {
        sub_232B64BE4(v18 > 1, v15 + 1, 1);
        v14 = v22[0];
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17;
      v16 += 8;
      ++v15;
      --v13;
    }

    while (v13);

    a2 = v21;
  }

  *(v7 + 3) = v14;
  swift_beginAccess();
  *(v7 + 2) = v8[3];
  swift_beginAccess();
  v19 = v8[6];
  *(v7 + 4) = v8[5];
  *(v7 + 5) = v19;
  sub_232BC8B6C(v7, a2, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange);
}

uint64_t sub_232BC77F0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  type metadata accessor for DUFoundInEventResult();
  sub_232BC6784();
  sub_232BC5434();
  v4 = v3;
  result = sub_232B124A8(&qword_27DDC7790, &unk_232CFA9A8);
  a1[3] = result;
  *a1 = v4;
  return result;
}

id sub_232BC78F4()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v0);
  sub_232B20704();
  v3 = v2 - v1;
  sub_232BC6784();
  sub_232BCA20C();
  sub_232BC9FEC(v4, 255, v5, &unk_232CFD898);
  v6 = sub_232CE94E0();
  v8 = v7;
  sub_232BC8A30(v3);
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  return sub_232C2EB20(v6, v8);
}

void sub_232BC7A40(void *a1)
{
  v2 = sub_232BC78F4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_232CE9D20();
    [a1 encodeObject:v3 forKey:v4];
  }
}

uint64_t DUFoundInEventResult.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUFoundInEventResult.init(coder:)(v2);
}

uint64_t DUFoundInEventResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232BC9FEC(&qword_27DDC7798, v2, type metadata accessor for DUFoundInEventResult, &protocol conformance descriptor for DUFoundInEventResult);
  sub_232CE98B0();

  v3 = v7;
  if (!v7)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232BCA50C(ObjectType);
    return 0;
  }

  v4 = swift_getObjectType();
  sub_232BCA50C(v4);
  return v3;
}

void DUFoundInEventResult.__allocating_init(foundInEventResult:)()
{
  v1 = objc_allocWithZone(v0);
  sub_232B26CE8();
  DUFoundInEventResult.init(foundInEventResult:)();
}

void DUFoundInEventResult.init(foundInEventResult:)()
{
  sub_232B35110();
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v0) = 0;
  v2 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v0) = 0;
  v4 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
  *v4 = 0;
  v4[1] = 0;
  v85 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  v86 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
  v87 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName);
  v5 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v0) = 0;
  v6 = v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
  *v6 = 0;
  v6[1] = 0;
  v78 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents) = 0;
  v79 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v0) = 0;
  v7 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress);
  *v7 = 0;
  v7[1] = 0;
  v80 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents) = 0;
  v81 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
  v82 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
  v83 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
  v84 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError;
  *(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v0) = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_text);
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_tags) = 0;
  v9 = v8;
  v10 = [v9 detectedEventPolarity];
  *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity) = v10;
  v11 = [v9 reservationIdError];
  if (v11)
  {
    v112[0] = v11;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v12 = v111[0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_232B13F5C(&v1[v0], v112);
  v13 = *&v1[v0];
  *&v1[v0] = v12;

  v14 = v9;
  v15 = sub_232BC8B00(v14, &selRef_reservationId);
  v17 = v16;
  sub_232B13F5C(v2, v111);
  *v2 = v15;
  v2[1] = v17;

  v18 = [v14 reservationNameError];
  if (v18)
  {
    v110[0] = v18;
    v19 = sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v20 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v109, v110, v21, v20);
    sub_232BCA230();
  }

  else
  {
    v19 = 0;
  }

  sub_232B13F5C(&v3[v0], v110);
  v22 = *&v3[v0];
  *&v3[v0] = v19;

  v23 = v14;
  v24 = sub_232BC8B00(v23, &selRef_reservationName);
  v26 = v25;
  sub_232B13F5C(v4, v109);
  *v4 = v24;
  v4[1] = v26;

  v27 = [v23 startAddressError];
  if (v27)
  {
    v108[0] = v27;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v28 = v107[0];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  sub_232B13F5C(&v5[v0], v108);
  v29 = *&v5[v0];
  *&v5[v0] = v28;

  v30 = v23;
  sub_232BC8B00(v30, &selRef_startAddress);
  sub_232BA5EAC();
  sub_232B13F5C(v6, v107);
  *v6 = v23;
  v6[1] = v24;

  v31 = v30;
  v32 = sub_232BC8A8C(v31, &selRef_startAddressComponents);
  if (v32)
  {
    sub_232BC2F8C(v32);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  sub_232B13F5C(v0 + v78, &v106);
  *(v0 + v78) = v34;

  v35 = [v31 endAddressError];
  if (v35)
  {
    v105[0] = v35;
    v36 = sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v37 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v104, v105, v38, v37);
    sub_232BCA230();
  }

  else
  {
    v36 = 0;
  }

  sub_232B13F5C(v79 + v0, v105);
  sub_232BCA3A4();
  v39 = v31;
  sub_232BC8B00(v39, &selRef_endAddress);
  sub_232BA5EAC();
  sub_232B13F5C(v7, v104);
  *v7 = v36;
  v7[1] = v79;

  v40 = v39;
  v41 = sub_232BC8A8C(v40, &selRef_endAddressComponents);
  if (v41)
  {
    sub_232BC2F8C(v41);
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  sub_232B13F5C(v0 + v80, v103);
  *(v0 + v80) = v43;

  v44 = [v40 startPlaceError];
  if (v44)
  {
    v102[0] = v44;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v45 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v101, v102, v46, v45);
    sub_232BCA230();
  }

  sub_232B13F5C(v81 + v0, v102);
  sub_232BCA3A4();
  v47 = v40;
  sub_232BC8B00(v47, &selRef_startPlace);
  sub_232BA5EAC();
  sub_232B13F08(v48, v101);
  sub_232BCA3BC();
  v49 = [v47 endPlaceError];
  if (v49)
  {
    v100[0] = v49;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v50 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v99, v100, v51, v50);
    sub_232BCA230();
  }

  sub_232B13F5C(v82 + v0, v100);
  sub_232BCA3A4();
  v52 = v47;
  sub_232BC8B00(v52, &selRef_endPlace);
  sub_232BA5EAC();
  sub_232B13F08(v53, v99);
  sub_232BCA3BC();
  v54 = [v52 startDateError];
  if (v54)
  {
    v98[0] = v54;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v55 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v97, v98, v56, v55);
    sub_232BCA230();
  }

  sub_232B13F5C(v83 + v0, v98);
  sub_232BCA3A4();
  v57 = v52;
  sub_232BC8B00(v57, &selRef_startDate);
  sub_232BA5EAC();
  sub_232B13F08(v58, v97);
  sub_232BCA3BC();
  v59 = [v57 endDateError];
  if (v59)
  {
    v96[0] = v59;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v60 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v95, v96, v61, v60);
    sub_232BCA230();
  }

  sub_232B13F5C(v84 + v0, v96);
  sub_232BCA3A4();
  v62 = v57;
  sub_232BC8B00(v62, &selRef_endDate);
  sub_232BA5EAC();
  sub_232B13F08(v63, v95);
  sub_232BCA3BC();
  v64 = [v62 hotelNameError];
  if (v64)
  {
    v94[0] = v64;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v65 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v93, v94, v66, v65);
    sub_232BCA230();
  }

  sub_232B13F5C(v85 + v0, v94);
  sub_232BCA3A4();
  v67 = v62;
  sub_232BC8B00(v67, &selRef_hotelName);
  sub_232BA5EAC();
  sub_232B13F08(v68, v93);
  sub_232BCA3BC();
  v69 = [v67 guestNameError];
  if (v69)
  {
    v92[0] = v69;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v70 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v91, v92, v71, v70);
    sub_232BCA230();
  }

  sub_232B13F5C(v86 + v0, v92);
  sub_232BCA3A4();
  v72 = v67;
  sub_232BC8B00(v72, &selRef_guestName);
  sub_232BA5EAC();
  sub_232B13F08(v73, v91);
  sub_232BCA3BC();
  v74 = [v72 movieNameError];
  if (v74)
  {
    v90[0] = v74;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v75 = sub_232BA4DEC(0, &qword_27DDC77A0, 0x277CCA9B8);
    sub_232BCA344(v89, v90, v76, v75);
    sub_232BCA230();
  }

  sub_232B13F5C(v87 + v0, v90);
  sub_232BCA3A4();
  sub_232BC8B00(v72, &selRef_movieName);
  sub_232BA5EAC();
  sub_232B13F08(v77, v89);
  sub_232BCA3BC();
  v88.receiver = v0;
  v88.super_class = type metadata accessor for DUFoundInEventResult();
  objc_msgSendSuper2(&v88, sel_init);

  sub_232B20A00();
}

id DUFoundInEventResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232BC8980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_232CE9D20();

  if (a4)
  {
    v8 = sub_232CE9C20();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_232BC8A30(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BC8A8C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_232CE9C40();

  return v4;
}

uint64_t sub_232BC8B00(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_232CE9D50();

  return v4;
}

uint64_t sub_232BC8B6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232BC9FEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232BCA034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_232BCA098()
{

  return sub_232BC8980(0xD000000000000031, v2 | 0x8000000000000000, v0, v1);
}

id sub_232BCA0C4()
{

  return sub_232BC8980(0xD000000000000031, v1 | 0x8000000000000000, v0, v2);
}

uint64_t sub_232BCA104()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BCA174(uint64_t a1)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;

  return sub_232BC526C(v3, 0xE900000000000065, v1);
}

uint64_t sub_232BCA1AC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double sub_232BCA1D4()
{
  *v2 = v0;
  v2[1] = v1;

  return result;
}

double sub_232BCA1F0()
{
  *v1 = v0;
  v1[1] = v2;

  return result;
}

uint64_t sub_232BCA284(uint64_t a1)
{

  return swift_allocObject();
}

double sub_232BCA29C()
{

  return result;
}

uint64_t sub_232BCA2B4()
{
}

void sub_232BCA2CC()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

void sub_232BCA2E4()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

uint64_t sub_232BCA2FC()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
}

uint64_t sub_232BCA314()
{
}

uint64_t sub_232BCA32C()
{
}

uint64_t sub_232BCA344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_232BCA37C(unsigned int a1)
{
  v3 = a1 | 0x6464417400000000;

  return sub_232BC526C(v3, 0xEC00000073736572, v1);
}

void sub_232BCA3A4()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BCA3BC()
{
  *v2 = v0;
  v2[1] = v1;
}

uint64_t sub_232BCA3D4(unsigned __int16 a1)
{
  v3 = a1 | 0x65746144640000;

  return sub_232BC526C(v3, 0xE700000000000000, v1);
}

uint64_t sub_232BCA3F8(unsigned int a1)
{
  v3 = a1 | 0x7461447400000000;

  return sub_232BC526C(v3, 0xE900000000000065, v1);
}

uint64_t sub_232BCA41C(unsigned __int16 a1)
{
  v3 = a1 | 0x6563616C50640000;

  return sub_232BC526C(v3, 0xE800000000000000, v1);
}

uint64_t sub_232BCA440(unsigned int a1)
{
  v3 = a1 | 0x616C507400000000;

  return sub_232BC526C(v3, 0xEA00000000006563, v1);
}

uint64_t sub_232BCA50C(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232BCA52C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_232CEA010();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_232BCA5DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v69[-v9];
  v11 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v69[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v69[-v19];
  v73 = a3;
  v74 = a2;
  v21 = *(a3 + 16);
  v75 = a1;
  v22 = sub_232CE9D20();
  v23 = [a4 featureValueForName_];

  if (!v23)
  {
    goto LABEL_4;
  }

  sub_232CEA1F0();

  v24 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  if (sub_232B12480(v10, 1, v24) == 1)
  {
    sub_232B267AC(v10, &qword_27DDC7038, &unk_232CF7F40);
LABEL_4:
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v25 = sub_232CE9A30();
    sub_232B135C4(v25, qword_2814E3DA8);
    v26 = sub_232CE9A00();
    v27 = sub_232CEA1C0();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v75;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_232B02000, v26, v27, "Unable to convert FoundInEventSmolBERToClassificationModel output to MLShapedArray", v30, 2u);
      MEMORY[0x238393870](v30, -1, -1);
    }

LABEL_9:

    return v29;
  }

  sub_232CE9A60();
  (*(*(v24 - 8) + 8))(v10, v24);
  v32 = v12;
  v33 = v20;
  v34 = v20;
  v35 = v11;
  (*(v12 + 32))(v34, v17, v11);
  sub_232CE9A70();
  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  inited = swift_initStackObject();
  v72 = xmmword_232CF6460;
  *(inited + 16) = xmmword_232CF6460;
  *(inited + 32) = v21;
  v37 = sub_232B34EB4();

  swift_setDeallocating();
  if ((v37 & 1) == 0)
  {
    v42 = v73;
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v43 = sub_232CE9A30();
    sub_232B135C4(v43, qword_2814E3DA8);
    (*(v12 + 16))(v14, v33, v11);

    v44 = sub_232CE9A00();
    v45 = sub_232CEA1C0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *&v72 = swift_slowAlloc();
      v76 = v72;
      *v46 = 136315394;
      v71 = v44;
      sub_232CE9A70();
      v47 = MEMORY[0x238391D80]();
      v70 = v45;
      v48 = v32;
      v49 = v47;
      v51 = v50;

      v52 = *(v48 + 8);
      v52(v14, v11);
      v53 = sub_232BAD2D4(v49, v51, &v76);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      v54 = MEMORY[0x238391D80](v42, MEMORY[0x277D837D0]);
      v56 = sub_232BAD2D4(v54, v55, &v76);

      *(v46 + 14) = v56;
      v57 = v71;
      _os_log_impl(&dword_232B02000, v71, v70, "FoundInEventSmolBERToClassificationModel output of shape: %s does not conform to expected size %s", v46, 0x16u);
      v58 = v72;
      swift_arrayDestroy();
      MEMORY[0x238393870](v58, -1, -1);
      MEMORY[0x238393870](v46, -1, -1);

      v52(v33, v11);
    }

    else
    {

      v59 = *(v32 + 8);
      v59(v14, v11);
      v59(v33, v11);
    }

    v29 = v75;
    goto LABEL_9;
  }

  sub_232BCE0E8();
  v38 = sub_232CE9A80();
  v39 = *(v38 + 16);
  v40 = v73;
  if (v39)
  {
    if (v39 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = 0;
      v62 = *(v38 + 32);
      v63 = (v38 + 36);
      for (i = 1; i != v39; ++i)
      {
        v65 = *v63++;
        v66 = v65;
        if (v62 < v65)
        {
          v41 = i;
          v62 = v66;
        }
      }
    }

    sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    result = swift_allocObject();
    *(result + 16) = v72;
    if (v41 < v21)
    {
      v60 = result;
      v67 = v40 + 16 * v41;
      v61 = *(v67 + 40);
      *(result + 32) = *(v67 + 32);
      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {

    sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    result = swift_allocObject();
    *(result + 16) = v72;
    if (v21)
    {
      v60 = result;
      v61 = *(v40 + 40);
      *(result + 32) = *(v40 + 32);
LABEL_29:
      *(v60 + 40) = v61;
      v68 = *(v12 + 8);

      v68(v33, v35);
      return v75;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232BCAD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    sub_232B649D4(0, v3, 0);
    v4 = v27;
    result = sub_232B66AD8();
    v8 = result;
    v9 = a2 + 64;
    v10 = v3 - 1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(a2 + 32))
      {
        if ((*(v9 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_18;
        }

        if (v7 != *(a2 + 36))
        {
          goto LABEL_19;
        }

        v24 = v10;
        v25 = v7;
        v11 = (*(a2 + 48) + 16 * v8);
        v12 = *v11;
        v13 = v11[1];
        v14 = *(*(a2 + 56) + 8 * v8);

        v26 = a3(v12, v13, v14, a1);
        v16 = v15;
        v18 = v17;

        v20 = *(v27 + 16);
        v19 = *(v27 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_232B649D4((v19 > 1), v20 + 1, 1);
        }

        *(v27 + 16) = v20 + 1;
        v21 = (v27 + 24 * v20);
        v21[4] = v26;
        v21[5] = v16;
        v21[6] = v18;
        if (v8 >= -(-1 << *(a2 + 32)))
        {
          goto LABEL_20;
        }

        v9 = a2 + 64;
        if ((*(a2 + 64 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_21;
        }

        if (v25 != *(a2 + 36))
        {
          goto LABEL_22;
        }

        result = sub_232CEA460();
        if (!v24)
        {
          goto LABEL_14;
        }

        v8 = result;
        v7 = *(a2 + 36);
        v10 = v24 - 1;
        if (result < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_14:

    return sub_232B63200(v4);
  }

  return result;
}

uint64_t sub_232BCAF08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v18);
  v55 = &v52 - v19;
  v56 = a2;
  v20 = a3[2];
  v57 = a1;
  v21 = sub_232CE9D20();
  v22 = [a4 featureValueForName_];

  if (!v22)
  {
    goto LABEL_4;
  }

  sub_232CEA1F0();

  v23 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  if (sub_232B12480(v10, 1, v23) != 1)
  {
    sub_232CE9A60();
    (*(*(v23 - 8) + 8))(v10, v23);
    v29 = v12;
    v30 = *(v12 + 32);
    v31 = v55;
    v32 = v11;
    v30(v55, v17, v11);
    sub_232CE9A70();
    sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF5E60;
    *(inited + 32) = 512;
    *(inited + 40) = v20;
    v34 = sub_232B34EB4();

    swift_setDeallocating();
    if (v34)
    {
      if (v20)
      {
        v36 = a3[4];
        v35 = a3[5];

        v37 = sub_232CEA010();
        v38 = v37;
        *(v37 + 16) = 512;
        for (i = -8176; ; i += 16)
        {
          v40 = v38 + i;
          *(v40 + 8208) = v36;
          *(v40 + 8216) = v35;
          if (!i)
          {
            break;
          }
        }

        v58 = v38;
        MEMORY[0x28223BE20](v37);
        *(&v52 - 4) = v31;
        *(&v52 - 3) = &v58;
        *(&v52 - 2) = a3;
        sub_232B1D268(sub_232BCE0C8, (&v52 - 6), 0, 512);
        v51 = *(v29 + 8);

        v51(v31, v11);
        return v57;
      }

      __break(1u);
    }

    else if (qword_2814DFA50 == -1)
    {
LABEL_16:
      v41 = sub_232CE9A30();
      sub_232B135C4(v41, qword_2814E3DA8);
      (*(v29 + 16))(v14, v31, v11);
      v42 = sub_232CE9A00();
      v43 = sub_232CEA1C0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58 = v54;
        *v44 = 136315650;
        sub_232CE9A70();
        v52 = MEMORY[0x238391D80]();
        v53 = v20;
        v45 = v29;
        v47 = v46;

        v48 = *(v45 + 8);
        v48(v14, v32);
        v49 = sub_232BAD2D4(v52, v47, &v58);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2048;
        *(v44 + 14) = 512;
        *(v44 + 22) = 2048;
        *(v44 + 24) = v53;
        _os_log_impl(&dword_232B02000, v42, v43, "FoundInEventSmolBERToClassificationModel output of shape: %s does not conform to expected size [%ld, %ld]", v44, 0x20u);
        v50 = v54;
        sub_232B2040C(v54);
        MEMORY[0x238393870](v50, -1, -1);
        MEMORY[0x238393870](v44, -1, -1);
      }

      else
      {

        v48 = *(v29 + 8);
        v48(v14, v32);
      }

      v48(v55, v32);
      return v57;
    }

    swift_once();
    goto LABEL_16;
  }

  sub_232B267AC(v10, &qword_27DDC7038, &unk_232CF7F40);
LABEL_4:
  if (qword_2814DFA50 != -1)
  {
    swift_once();
  }

  v24 = sub_232CE9A30();
  sub_232B135C4(v24, qword_2814E3DA8);
  v25 = sub_232CE9A00();
  v26 = sub_232CEA1C0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_232B02000, v25, v26, "Unable to convert FoundInEventSmolBERToClassificationModel output to MLShapedArray", v27, 2u);
    MEMORY[0x238393870](v27, -1, -1);
  }

  return v57;
}

void sub_232BCB580(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = *a1;
  sub_232BCE0E8();
  sub_232CE9A90();
  v12 = sub_232CE9A80();
  (*(v8 + 8))(v10, v7);
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13 - 1;
  if (v14)
  {
    v15 = 0;
    v16 = *(v12 + 32);
    v17 = 9;
    do
    {
      if (v16 < *(v12 + 4 * v17))
      {
        v15 = v17 - 8;
        v16 = *(v12 + 4 * v17);
      }

      ++v17;
      --v14;
    }

    while (v14);

    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {

    v15 = 0;
  }

  if (v15 >= *(a4 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = a4 + 16 * v15;
  v15 = *(v18 + 32);
  v12 = *(v18 + 40);
  v19 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v19;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_18:
  sub_232C237E0();
  v19 = v22;
  *a3 = v22;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (v11 < *(v19 + 16))
  {
    v21 = v19 + 16 * v11;
    *(v21 + 32) = v15;
    *(v21 + 40) = v12;
LABEL_15:

    return;
  }

LABEL_20:
  __break(1u);
}

_BYTE *sub_232BCB778(uint64_t a1, void *a2)
{
  type metadata accessor for DUFoundInEventsPostprocessing();
  swift_allocObject();
  v4 = sub_232BCE8BC(a2);
  v5 = objc_allocWithZone(type metadata accessor for DUFoundInEventResult());
  v6 = a2;
  v7 = [v5 init];
  v8 = sub_232BCE8C8(a1);
  if (v8 == 2)
  {

    v9 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity, v134);
    *(v7 + v9) = 0;
    return v7;
  }

  v10 = v8;
  v11 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity, v134);
  *(v7 + v11) = v10 & 1;
  if ((v10 & 1) == 0)
  {

    return v7;
  }

  sub_232BCE1BC();
  sub_232BCE1DC();
  if (!v13)
  {
    sub_232BC1F98(v12, 0, v14);
    sub_232BCE1A4();
    v16 = sub_232BCE1B0();
    goto LABEL_9;
  }

  v15 = v13;
  if (v13 == 1)
  {
    v16 = sub_232BCE1B0();
    v18 = 0;
LABEL_9:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v16, v17, v18);
    v19 = sub_232BCE194();
    sub_232B13F5C(v19, v133);
    sub_232BCE160();
    goto LABEL_11;
  }

  sub_232BC1DC4(v12, v13, v14);
  v20 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
  sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId, v133);
  *v20 = v10;
  v20[1] = v15;

LABEL_11:
  sub_232BCF130();
  if (v22 == 1)
  {
    v24 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v24, v25, 0);
    v26 = sub_232BCE194();
    sub_232B13F5C(v26, v132);
    sub_232BCE160();
    goto LABEL_20;
  }

  v27 = v21;
  v28 = v22;
  v29 = v23;
  if (v23)
  {
    v30 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents, v119);
    *(v7 + v30) = v29;

    if (!v28)
    {
      goto LABEL_19;
    }
  }

  else if (!v22)
  {
    goto LABEL_19;
  }

  v31 = v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
  sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress, v120);
  *v31 = v27;
  v31[1] = v28;

  if (v29)
  {

    v32 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v32, v33, v34);
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v7, v132);
    sub_232BCE160();
    goto LABEL_20;
  }

LABEL_19:

LABEL_20:
  sub_232BCF130();
  if (v36 == 1)
  {
    v38 = sub_232BC1EA0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v38, 0xEA00000000007373, 0);
    v39 = sub_232BCE194();
    sub_232B13F5C(v39, v131);
    sub_232BCE160();
    goto LABEL_30;
  }

  v40 = v35;
  v41 = v36;
  v42 = v37;
  if (v37)
  {
    v43 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents, v121);
    *(v7 + v43) = v42;

    if (!v41)
    {
      goto LABEL_28;
    }
  }

  else if (!v36)
  {
LABEL_28:

    goto LABEL_29;
  }

  v44 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress);
  sub_232BC1C58(v35, v122);
  *v44 = v40;
  v44[1] = v41;

  if (!v42)
  {
    goto LABEL_28;
  }

  v45 = sub_232BC1EA0();
  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v45, 0xEA00000000007373, v46);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v7, v131);
  sub_232BCE160();
LABEL_29:
  sub_232BCE1BC();
LABEL_30:
  sub_232BCF408();
  if (v47)
  {
    sub_232BCE1D0();
    if (!v51)
    {
      v55 = sub_232BC1DC4(v48, v49, v50);
      sub_232BC1C58(v55, v130);
      sub_232BCE1FC();
      goto LABEL_36;
    }

    v52 = sub_232BC1D10();
    v54 = 0;
  }

  else
  {

    v52 = sub_232BC1D10();
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v52, v53, v54);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v7, v130);
  sub_232BCE160();
LABEL_36:
  sub_232BCF408();
  if (v56)
  {
    sub_232BCE1D0();
    if (!v51)
    {
      v63 = sub_232BC1DC4(v57, v58, v59);
      sub_232BC1C58(v63, v129);
      sub_232BCE1FC();
      goto LABEL_42;
    }

    v60 = sub_232BC1DDC();
    v62 = 0;
  }

  else
  {

    v60 = sub_232BC1DDC();
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v60, v61, v62);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v7, v129);
  sub_232BCE160();
LABEL_42:
  sub_232BCE960();
  if (v66)
  {
    sub_232BCE1D0();
    if (!v51)
    {
      v72 = sub_232BC1DC4(v67, v68, v69);
      sub_232BC1C58(v72, v128);
      sub_232BCE1FC();
      goto LABEL_50;
    }

    v70 = 0;
  }

  else
  {
    sub_232BC1F98(v64, 0, v65);
    sub_232BCE1A4();
    if (v51)
    {
      v70 = v71 + 1;
    }

    else
    {
      v70 = v71;
    }
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x616C507472617473, 0xEA00000000006563, v70);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v7, v128);
  sub_232BCE160();
LABEL_50:
  v73 = v4;
  sub_232BCE960();
  if (v76)
  {
    sub_232BCE1D0();
    if (!v51)
    {
      v82 = sub_232BC1DC4(v77, v78, v79);
      sub_232BC1C58(v82, v127);
      sub_232BCE1FC();
      goto LABEL_58;
    }

    v80 = 0;
  }

  else
  {
    sub_232BC1F98(v74, 0, v75);
    sub_232BCE1A4();
    if (v51)
    {
      v80 = v81 + 1;
    }

    else
    {
      v80 = v81;
    }
  }

  v73 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6563616C50646E65, 0xE800000000000000, v80);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v7, v127);
  sub_232BCE160();
LABEL_58:
  sub_232BCE1DC();
  if (!v84)
  {
    sub_232BC1F98(v83, 0, v85);
    sub_232BCE1A4();
    v87 = sub_232BCE1B0();
    goto LABEL_62;
  }

  v86 = v84;
  if (v84 == 1)
  {
    v87 = sub_232BCE1B0();
    v89 = 0;
LABEL_62:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v87, v88, v89);
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v7, v126);
    sub_232BCE160();
    goto LABEL_64;
  }

  v90 = sub_232BC1DC4(v83, v84, v85);
  v91 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
  sub_232BC1C58(v90, v126);
  *v91 = v73;
  v91[1] = v86;

LABEL_64:
  sub_232BCE960();
  if (!v93)
  {
    v98 = v95;

    if (v98)
    {
      v97 = 1;
    }

    else
    {
      v97 = 2;
    }

    goto LABEL_70;
  }

  v96 = v93;
  if (v93 == 1)
  {
    v97 = 0;
LABEL_70:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(0xD000000000000013, 0x8000000232D06F20, v97);
    sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v7, v125);
    sub_232BCE160();
    goto LABEL_72;
  }

  sub_232BC1DC4(v92, v93, v94);
  v99 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName, v125);
  *v99 = v4;
  v99[1] = v96;

LABEL_72:
  sub_232BCE960();
  if (v101)
  {
    v104 = v101;
    if (v101 != 1)
    {
      sub_232BC1DC4(v100, v101, v102);
      v107 = (v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
      sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName, v124);
      *v107 = v4;
      v107[1] = v104;

      goto LABEL_80;
    }

    v105 = 0;
  }

  else
  {
    v106 = v103;

    if (v106)
    {
      v105 = 1;
    }

    else
    {
      v105 = 2;
    }
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6D614E7473657567, 0xE900000000000065, v105);
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v7, v124);
  sub_232BCE160();
LABEL_80:
  sub_232BCE960();
  if (v109)
  {
    v110 = v109;
    if (v109 != 1)
    {
      v116 = v108;

      v117 = v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName;
      sub_232B13F5C(v7 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName, v123);
      *v117 = v116;
      v117[1] = v110;

      return v7;
    }

    v111 = 0;
  }

  else
  {

    sub_232BCE1A4();
    if (v51)
    {
      v111 = v112 + 1;
    }

    else
    {
      v111 = v112;
    }
  }

  v113 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6369546569766F6DLL, 0xEF656D614E74656BLL, v111);

  v114 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v7, v123);
  v115 = *&v114[v7];
  *&v114[v7] = v113;

  return v7;
}

uint64_t sub_232BCC118()
{
  sub_232B26C44();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_232CE9A30();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for FoundInEventModelOutput(0);
  v1[26] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  v1[27] = swift_task_alloc();
  v4 = sub_232CE9700();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v5 = sub_232B5138C();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232BCC2A8()
{
  v1 = 0xD000000000000015;
  sub_232CE9810();
  if (sub_232CE97B0())
  {
    if (sub_232CE9710())
    {
      if (*(v0[19] + 24))
      {
        v2 = type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
        v0[32] = sub_232BB18A8(v2);
        sub_232BB1878(&dword_232CF8058);
        v12 = v3;
        v4 = swift_task_alloc();
        v0[33] = v4;
        *v4 = v0;
        v5 = sub_232BCE14C(v4);

        return v12(v5);
      }

      v7 = "ationRuleBasedImplementation";
    }

    else
    {
      v7 = "Backbone model is disabled";
      v1 = 0xD000000000000027;
    }
  }

  else
  {
    v7 = "ERToImplementation";
    v1 = 0xD00000000000001ALL;
  }

  v8 = v7 | 0x8000000000000000;
  sub_232B4A95C();
  v9 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v10 = v1;
  *(v10 + 8) = v8;
  *(v10 + 16) = 0;
  sub_232BCE178();

  sub_232BB189C();

  return v11(v9, 1);
}

uint64_t sub_232BCC458()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v2 = v1;
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;
  *(v6 + 272) = v5;

  v7 = sub_232B5138C();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BCC55C()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = v0[19];
    v3 = *(v2 + 24);
    *(v2 + 24) = v1;
    v4 = v1;

    v5 = type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
    v0[35] = sub_232BB18A8(v5);
    sub_232BB1878(&unk_232CF8050);
    v13 = v6;
    v7 = swift_task_alloc();
    v0[36] = v7;
    *v7 = v0;
    v8 = sub_232BCE14C(v7);

    return v13(v8);
  }

  else
  {
    sub_232B4A95C();
    v10 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v11 = 0xD000000000000020;
    *(v11 + 8) = 0x8000000232D06770;
    *(v11 + 16) = 0;
    sub_232BCE178();

    sub_232BB189C();

    return v12(v10, 1);
  }
}

uint64_t sub_232BCC6D8()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v2 = v1;
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;
  *(v6 + 296) = v5;

  v7 = sub_232B5138C();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_232BCC7DC()
{
  v75 = v0;
  v1 = *(v0 + 296);
  if (!v1)
  {
    v20 = *(v0 + 272);
    sub_232B4A95C();
    v21 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v22 = 0xD000000000000039;
    *(v22 + 8) = 0x8000000232D07410;
    *(v22 + 16) = 1;
LABEL_35:

    goto LABEL_36;
  }

  type metadata accessor for DUTrialAssetLoader();
  *(v0 + 304) = swift_initStackObject();
  *(v0 + 312) = sub_232C14534();
  v2 = sub_232C149A0();
  v3 = sub_232C15424(0xD00000000000001FLL, 0x8000000232D06190, 0xD000000000000028, 0x8000000232D07450, v2 & 1);
  *(v0 + 320) = v3;
  if (v3)
  {
    v4 = v3;
    LOBYTE(v73) = 1;
    v5 = sub_232C14684();
    *(v0 + 328) = v5;
    if (!v5)
    {
      sub_232CE9A20();
      v25 = sub_232CE9A00();
      v26 = sub_232CEA1C0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_232B02000, v25, v26, "Unable to load assets from Trial", v27, 2u);
        MEMORY[0x238393870](v27, -1, -1);
      }

      v28 = *(v0 + 272);
      v30 = *(v0 + 176);
      v29 = *(v0 + 184);
      v31 = *(v0 + 168);

      (*(v30 + 8))(v29, v31);
      sub_232B4A95C();
      v21 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
      *v32 = 0xD000000000000047;
      *(v32 + 8) = 0x8000000232D07500;
      *(v32 + 16) = 0;

      goto LABEL_25;
    }

    v6 = v5;
    v7 = sub_232C3B410(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      sub_232BA4DEC(0, &qword_2814DF8C8, 0x277CCA8D8);
      v11 = sub_232BCDD70(v9, v10);
      *(v0 + 336) = v11;
      if (v11)
      {
        v12 = v11;
        v70 = v4;
        v13 = sub_232CE9D20();
        v14 = sub_232CE9D20();
        v15 = [v12 pathForResource:v13 ofType:v14];

        if (v15)
        {
          v16 = sub_232CE9D50();
          v18 = v17;

          sub_232BA4DEC(0, &qword_2814DF930, 0x277CBEAC0);
          v19 = sub_232BD748C(v16, v18);
        }

        else
        {
          v19 = 0;
        }

        *(v0 + 344) = v19;
        v44 = sub_232CE9D20();
        v45 = sub_232CE9D20();
        v20 = [v12 pathForResource:v44 ofType:v45];

        if (v20)
        {
          v46 = sub_232CE9D50();
          v48 = v47;

          sub_232BA4DEC(0, &qword_2814DF930, 0x277CBEAC0);
          v20 = sub_232BD748C(v46, v48);
        }

        *(v0 + 352) = v20;
        if (v19)
        {
          *(v0 + 104) = 0x6E656B6F74;
          *(v0 + 112) = 0xE500000000000000;
          v49 = [v19 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v49)
          {
            sub_232CEA420();
            swift_unknownObjectRelease();
          }

          else
          {
            v73 = 0u;
            v74 = 0u;
          }

          v55 = v74;
          *(v0 + 16) = v73;
          *(v0 + 32) = v55;
          if (*(v0 + 40))
          {
            sub_232B124A8(&qword_27DDC7648, &unk_232CFA940);
            if (swift_dynamicCast())
            {
              *(v0 + 360) = *(v0 + 136);
              *(v0 + 120) = 0x65636E6575716573;
              *(v0 + 128) = 0xE800000000000000;
              v56 = [v19 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v56)
              {
                sub_232CEA420();
                swift_unknownObjectRelease();
              }

              else
              {
                v73 = 0u;
                v74 = 0u;
              }

              v62 = v74;
              *(v0 + 48) = v73;
              *(v0 + 64) = v62;
              if (*(v0 + 72))
              {
                if (swift_dynamicCast())
                {
                  *(v0 + 368) = *(v0 + 144);
                  v63 = type metadata accessor for DUFoundInEventDDSpecification();
                  *(v0 + 376) = sub_232BB18A8(v63);
                  sub_232BB1878(&dword_232CF8040);
                  v72 = v64;
                  v65 = swift_task_alloc();
                  *(v0 + 384) = v65;
                  *v65 = v0;
                  v66 = sub_232BCE14C(v65);

                  v72(v66);
                  return;
                }
              }

              else
              {

                sub_232B267AC(v0 + 48, &qword_27DDC68C8, &qword_232CF6210);
              }

              v57 = *(v0 + 272);
              v58 = 0x8000000232D07600;
              sub_232B4A95C();
              v21 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
              v60 = 0xD00000000000005BLL;
              goto LABEL_34;
            }

LABEL_33:
            v57 = *(v0 + 272);
            v58 = 0x8000000232D075A0;
            sub_232B4A95C();
            v21 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
            v60 = 0xD000000000000058;
LABEL_34:
            *v59 = v60;
            *(v59 + 8) = v58;
            *(v59 + 16) = 0;

            goto LABEL_35;
          }
        }

        else
        {
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_232B267AC(v0 + 16, &qword_27DDC68C8, &qword_232CF6210);
        goto LABEL_33;
      }

      sub_232CE9A20();
      v33 = v6;
      v34 = sub_232CE9A00();
      v35 = sub_232CEA1C0();
      if (!os_log_type_enabled(v34, v35))
      {
        v50 = *(v0 + 192);
        v43 = v33;
        v52 = *(v0 + 168);
        v51 = *(v0 + 176);

        (*(v51 + 8))(v50, v52);
        goto LABEL_24;
      }

      v71 = v4;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v73 = v37;
      *v36 = 136315138;
      v38 = sub_232C3B410(v33);
      v40 = v39;
      v69 = v33;

      if (v40)
      {
        v41 = *(v0 + 176);
        v67 = *(v0 + 168);
        v68 = *(v0 + 192);
        v42 = sub_232BAD2D4(v38, v40, &v73);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_232B02000, v34, v35, "Unable to create bundle from %s", v36, 0xCu);
        sub_232B2040C(v37);
        MEMORY[0x238393870](v37, -1, -1);
        MEMORY[0x238393870](v36, -1, -1);

        (*(v41 + 8))(v68, v67);
        v43 = v69;
        v4 = v71;
LABEL_24:
        v53 = *(v0 + 272);
        sub_232B4A95C();
        v21 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
        *v54 = 0xD000000000000043;
        *(v54 + 8) = 0x8000000232D07550;
        *(v54 + 16) = 0;

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v23 = *(v0 + 272);
  sub_232B4A95C();
  v21 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v24 = 0xD000000000000042;
  *(v24 + 8) = 0x8000000232D07480;
  *(v24 + 16) = 0;

LABEL_26:

LABEL_36:

  sub_232BB189C();

  v61(v21, 1);
}

uint64_t sub_232BCD128()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v2 = v1;
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;
  *(v6 + 392) = v5;

  v7 = sub_232B5138C();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BCD22C()
{
  if (v0[49])
  {
    v1 = v0[37];
    v2 = objc_allocWithZone(MEMORY[0x277CBFF68]);
    v3 = v1;
    v4 = [v2 init];
    v0[50] = v4;
    v5 = swift_task_alloc();
    v0[51] = v5;
    *v5 = v0;
    v5[1] = sub_232BCD414;

    return MEMORY[0x282111978](v3, v4);
  }

  else
  {
    v7 = v0[43];
    v6 = v0[44];
    v8 = v0[41];
    v9 = v0[42];
    v10 = v0[40];
    v11 = v0[37];
    v12 = v0[34];

    sub_232B4A95C();
    v16 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v13 = 0xD00000000000001BLL;
    *(v13 + 8) = 0x8000000232D060C0;
    *(v13 + 16) = 0;

    sub_232BCE178();

    sub_232BB189C();

    return v14(v16, 1);
  }
}

uint64_t sub_232BCD414()
{
  v2 = *v1;
  v3 = *v1;
  sub_232B26B3C();
  *v4 = v3;
  v5 = *v1;
  sub_232B482C0();
  *v6 = v5;
  v3[52] = v7;
  v3[53] = v0;

  v8 = v2[50];
  if (v0)
  {
    v9 = v3[37];

    v10 = sub_232BCDC50;
  }

  else
  {
    v11 = v3[37];

    v10 = sub_232BCD578;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

void sub_232BCD578()
{
  v1 = sub_232BCA5C4(v0[52], v0[46]);
  v0[54] = v1;

  if (v1)
  {
    v2 = sub_232BCACF0(v0[52], v0[45]);
    v0[55] = v2;

    if (v2)
    {
      v3 = type metadata accessor for DUWordPieceTokenizerSpecification();
      v0[56] = sub_232BB18A8(v3);
      sub_232BB1878(&dword_232CF8038);
      v4 = swift_task_alloc();
      v0[57] = v4;
      *v4 = v0;
      v4[1] = sub_232BCD7E4;
      sub_232B26CB4();

      __asm { BR              X2 }
    }

    v13 = 0xD00000000000004CLL;
    v7 = v0[43];
    v8 = v0[41];
    v17 = v0[42];
    v9 = v0[40];
    v18 = v0[44];
    v10 = v0[37];
    v11 = v0[34];

    v12 = "cationModel sequence prediction";
  }

  else
  {
    v7 = v0[43];
    v17 = v0[42];
    v9 = v0[40];
    v8 = v0[41];
    v18 = v0[44];
    v10 = v0[37];
    v11 = v0[34];

    v12 = "lassificationModel";
    v13 = 0xD00000000000004FLL;
  }

  sub_232B4A95C();
  sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v14 = v13;
  *(v14 + 8) = v12 | 0x8000000000000000;
  *(v14 + 16) = 0;

  swift_unknownObjectRelease();

  sub_232BB189C();
  sub_232B26CB4();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_232BCD7E4()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232BCD8E4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = sub_232B12480(v1, 1, v2);
  v4 = v0[55];
  v37 = v0[54];
  v38 = v3;
  if (v3 == 1)
  {
    v5 = v0[43];
    v35 = v0[44];
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[40];
    v9 = v0[37];
    v10 = v0[34];

    sub_232B267AC(v1, &qword_27DDC6F98, &unk_232CF7CA0);
    sub_232B4A95C();
    v11 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v12 = 0xD00000000000001ALL;
    *(v12 + 8) = 0x8000000232D04380;
    *(v12 + 16) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v0[49];
    v28 = v0[44];
    v33 = v0[43];
    v29 = v0[42];
    v30 = v0[40];
    v32 = v0[37];
    v34 = v0[34];
    v36 = v0[41];
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[26];
    v25 = v0[25];
    v27 = v0[29];
    (*(v27 + 32))(v13, v1, v2);
    v31 = v13;
    v16 = sub_232CE96B0();
    v18 = v17;
    v19 = *(v27 + 16);
    v19(v14, v13, v2);
    *v15 = v16;
    v15[1] = v18;
    v15[2] = v26;
    v15[3] = v37;
    v15[4] = v4;
    v19(v15 + *(v25 + 32), v14, v2);
    v20 = swift_task_alloc();
    *(v20 + 16) = v14;

    v21 = sub_232BCDEA4(sub_232BC16B4, v20, v4);

    v22 = *(v27 + 8);
    v22(v14, v2);

    v15[4] = v21;
    v11 = sub_232BCB778(v15, v28);

    swift_unknownObjectRelease();

    v22(v31, v2);
    sub_232BCE06C(v15);
  }

  sub_232BB189C();

  return v23(v11, v38 == 1);
}

void sub_232BCDC50()
{
  v11 = v0[53];
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[34];
  sub_232B4A95C();
  sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v8 = 0xD000000000000042;
  *(v8 + 8) = 0x8000000232D07660;
  *(v8 + 16) = 1;

  sub_232BCE178();

  sub_232BB189C();
  sub_232B26CB4();

  __asm { BRAA            X3, X16 }
}

id sub_232BCDD70(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE9D20();

  v4 = [v2 initWithPath_];

  return v4;
}

uint64_t sub_232BCDE08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_232BB2AC0;

  return sub_232BCC118();
}

void *sub_232BCDEA4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_232B124A8(&qword_27DDC7280, &unk_232CFAAD0);
  result = sub_232CEA630();
  v6 = result;
  v7 = 0;
  v29 = a3;
  v30 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v29 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v29 + 56) + 8 * v18);

      a1(&v31, &v32);

      if (v3)
      {
        break;
      }

      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v30;
      v22 = v31;
      v23 = (v30[6] + 16 * v18);
      *v23 = v20;
      v23[1] = v21;
      *(v30[7] + 8 * v18) = v22;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v30[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v30;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_232BCE06C(uint64_t a1)
{
  v2 = type metadata accessor for FoundInEventModelOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232BCE0E8()
{
  result = qword_27DDC7300;
  if (!qword_27DDC7300)
  {
    sub_232B27EEC(&qword_27DDC72F8, &unk_232CFAAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7300);
  }

  return result;
}

void sub_232BCE160()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BCE178()
{
}

void sub_232BCE1DC()
{

  sub_232BCE960();
}

uint64_t sub_232BCE1FC()
{
  *v1 = v0;
  v1[1] = v2;
}

uint64_t sub_232BCE274(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_232CE9A30();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BCE338, 0, 0);
}

uint64_t sub_232BCE338(uint64_t a1)
{
  v14 = v1;
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1B0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_232BAD2D4(0xD000000000000014, 0x8000000232D07790, &v13);
    _os_log_impl(&dword_232B02000, v2, v3, "FoundInEvent phase ID: %s", v8, 0xCu);
    sub_232B2040C(v9);
    MEMORY[0x238393870](v9, -1, -1);
    MEMORY[0x238393870](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v1[11] = v10;
  *v10 = v1;
  v10[1] = sub_232BCE4F0;
  v11 = v1[6];

  return sub_232B50048(v11);
}

uint64_t sub_232BCE4F0(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_232BCE5F0, 0, 0);
}

uint64_t sub_232BCE5F0()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = v1;
  }

  v5 = v0[1];

  return v5();
}

id sub_232BCE690()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 2048;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BCE6EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232BCE274(a1, a2);
}

uint64_t sub_232BCE7AC(uint64_t a1)
{
  result = sub_232BD3E90(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_232BD3ED0(result, v3, 0, a1);
  }
}

uint64_t sub_232BCE814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_232CE8AE0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_232B12504(a2, v7, 1, v6);
}

unint64_t sub_232BCE8C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!*(v1 + 16))
  {
    return 2;
  }

  result = sub_232B1F160(0x79746972616C6F70, 0xE800000000000000);
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  v4 = *(*(v1 + 56) + 8 * result);
  if (v4[2])
  {
    if (v4[4] == 0x544E455645 && v4[5] == 0xE500000000000000)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_232CEA750();
    }

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_232BCE960()
{
  sub_232B35110();
  v4 = *(v0 + 16);
  if (!v4)
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v12 = sub_232CE9A30();
    sub_232BD4144(v12, qword_2814E3DA8);
    v4 = sub_232CE9A00();
    v13 = sub_232CEA1C0();
    if (sub_232BA6EB8(v13))
    {
      v14 = sub_232BA73DC();
      sub_232BD4280(v14);
      sub_232BA6138();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      sub_232BA66EC();
    }

    goto LABEL_30;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = v2 == 0x7461767265736572 && v3 == 0xED000064496E6F69;
  if (v8 || (sub_232BD415C(0x7461767265736572, 0xED000064496E6F69) & 1) != 0)
  {
    sub_232BD41E4();
    v9 = v4;
    v10 = 0;
    v11 = 0xD00000000000001ALL;
    goto LABEL_19;
  }

  v20 = v6 == 0x7461767265736572 && v5 == 0xEF656D614E6E6F69;
  if (v20 || (sub_232BD415C(0x7461767265736572, 0xEF656D614E6E6F69) & 1) != 0)
  {
    sub_232BD40F4();
    v21 = "TITLE__HOTEL_RESTAURANT_NAME";
LABEL_18:
    v5 = v21 | 0x8000000000000000;
    v22 = v4;
    v10 = 1;
    v11 = 0xD000000000000011;
    goto LABEL_19;
  }

  v55 = v6 == 0xD000000000000013 && 0x8000000232D06F20 == v5;
  if (v55 || (sub_232BD415C(0xD000000000000013, 0x8000000232D06F20) & 1) != 0)
  {
    sub_232BD40F4();
    sub_232BD41E4();
    v56 = v4;
    v10 = 0;
    v11 = 0xD00000000000001CLL;
  }

  else
  {
    v67 = v6 == 0x6D614E7473657567 && v5 == 0xE900000000000065;
    if (v67 || (sub_232BD415C(0x6D614E7473657567, 0xE900000000000065) & 1) != 0)
    {
      sub_232BD40F4();
      v21 = "EVENT_LOCATION__START_ADDRESS";
      goto LABEL_18;
    }

    v68 = v6 == 0x6369546569766F6DLL && v5 == 0xEF656D614E74656BLL;
    if (v68 || (sub_232BD415C(0x6369546569766F6DLL, 0xEF656D614E74656BLL) & 1) != 0)
    {
      sub_232BD40F4();
      sub_232BD41E4();
      v69 = v4;
      v10 = 0;
      v11 = 0xD000000000000018;
    }

    else
    {
      v71 = v6;
      v72 = v5;
      sub_232B48080();
      v70 = v4;
      if (sub_232CEA400())
      {
        sub_232BD42C4();
        v71 = v6;
        v72 = v5;
        v10 = 0;
        if (sub_232CEA400())
        {
          sub_232BD41E4();
          v11 = 0xD000000000000019;
        }

        else
        {
          sub_232BD41E4();
          v11 = 0xD00000000000001BLL;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v5 = 0xE000000000000000;
      }
    }
  }

LABEL_19:
  sub_232BD4274();
  v23 = sub_232B20544();
  if (!v23)
  {

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v31 = sub_232CE9A30();
    sub_232BD4144(v31, qword_2814E3DA8);

    v32 = sub_232CE9A00();
    v33 = sub_232CEA1C0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_232BC1F80();
      v35 = sub_232BD41CC();
      sub_232BD42AC(v35);
      *v34 = 136315138;
      v36 = sub_232BD4274();
      v39 = sub_232BAD2D4(v36, v37, v38);

      *(v34 + 4) = v39;
      sub_232BAE130();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      sub_232BD41F0();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
    }

LABEL_30:
    sub_232BD42A0();
    goto LABEL_53;
  }

  v24 = v23;

  v71 = v11;
  v72 = v5;
  MEMORY[0x28223BE20](v25);
  sub_232BD4088();
  if (!sub_232C0A5F8())
  {

    goto LABEL_53;
  }

  type metadata accessor for FoundInEventModelOutput(0);
  v26 = sub_232CE96C0();
  v27 = v4;
  v28 = sub_232BCFBF8(v24, v11, v5, v4);

  v29 = sub_232BD2458(v26, v28, *v7, v7[1]);

  sub_232BD2D9C(v29);
  if (!v30)
  {
    if (v5 == 0x8000000232D078B0)
    {
      v45 = v10;
    }

    else
    {
      v45 = 0;
    }

    if (v45 & 1) != 0 || (sub_232CEA750())
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC(&qword_2814DFA50);
      }

      v46 = sub_232CE9A30();
      sub_232BD4144(v46, qword_2814E3DA8);

      v47 = sub_232CE9A00();
      v48 = sub_232CEA1C0();

      if (!os_log_type_enabled(v47, v48))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_53;
      }

      v49 = swift_slowAlloc();
      v50 = sub_232BD41CC();
      v71 = v50;
      v51 = sub_232BD42F8(4.8151e-34);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2048;
      v52 = v29[2];

      *(v49 + 14) = v52;

      sub_232BD42D8(&dword_232B02000, v53, v54, "DUFoundInEventsPostprocessing: Could not resolve a final candidate for %s in %ld candidates");
      sub_232B2040C(v50);
    }

    else
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC(&qword_2814DFA50);
      }

      v57 = sub_232CE9A30();
      sub_232BD4144(v57, qword_2814E3DA8);

      v47 = sub_232CE9A00();
      v58 = sub_232CEA1C0();

      if (!os_log_type_enabled(v47, v58))
      {

        goto LABEL_52;
      }

      v59 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v60 = sub_232BD42F8(4.8151e-34);

      *(v59 + 4) = v60;
      *(v59 + 12) = 2080;
      v61 = MEMORY[0x238391D80](v29, MEMORY[0x277D837D0]);
      v63 = v62;

      v64 = sub_232BAD2D4(v61, v63, &v71);

      *(v59 + 14) = v64;
      sub_232BD42D8(&dword_232B02000, v65, v66, "DUFoundInEventsPostprocessing: Could not resolve a final candidate for %s from %s");
      swift_arrayDestroy();
    }

    sub_232BA6A84();
    sub_232BA6A84();
LABEL_52:

    goto LABEL_53;
  }

  sub_232BD2F48();

LABEL_53:
  sub_232B20A00();
}

void sub_232BCF130()
{
  sub_232B35110();
  v3 = *(v0 + 16);
  if (!v3)
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v15 = sub_232CE9A30();
    sub_232BD4144(v15, qword_2814E3DA8);
    v9 = sub_232CE9A00();
    v16 = sub_232CEA1C0();
    if (sub_232BA6EB8(v16))
    {
      v17 = sub_232BA73DC();
      sub_232BD4280(v17);
      sub_232BA6138();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      sub_232BA66EC();
    }

    goto LABEL_20;
  }

  v4 = v2;
  sub_232BD42C4();
  if (v5)
  {
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = 0xD00000000000001BLL;
  }

  if (v5)
  {
    v7 = "EVENT_LOCATION__END_ADDRESS";
  }

  else
  {
    v7 = "EVENT_TIME__START_DATETIME";
  }

  v8 = v7 | 0x8000000000000000;
  v9 = v3;
  v10 = sub_232B20544();
  if (!v10)
  {

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v23 = sub_232CE9A30();
    sub_232BD4144(v23, qword_2814E3DA8);
    v24 = sub_232CE9A00();
    v25 = sub_232CEA1C0();
    if (sub_232BD4258(v25))
    {
      v26 = sub_232BC1F80();
      v27 = sub_232BD41CC();
      sub_232BD42AC(v27);
      *v26 = 136315138;
      *(v26 + 4) = sub_232BAD2D4(v1, 0xE800000000000000, v33);
      sub_232BAE130();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      sub_232BD41F0();
      sub_232BA6A84();
      sub_232BA6A84();
    }

LABEL_20:
    sub_232BD42A0();
    goto LABEL_22;
  }

  v11 = v10;
  v33[0] = v6;
  v33[1] = v8;
  MEMORY[0x28223BE20](v10);
  sub_232BD4088();
  if (sub_232C0A5F8())
  {
    type metadata accessor for FoundInEventModelOutput(0);
    v12 = sub_232CE96C0();
    v13 = v9;
    v14 = sub_232BCFBF8(v11, v6, v8, v3);

    sub_232BD1DEC(v12, v14, *v4, v4[1], v4[2]);
  }

  else
  {

    sub_232BD42A0();
  }

LABEL_22:
  sub_232B20A00();
}

void sub_232BCF408()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v5 = sub_232CE8AE0();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_232B3516C();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v98[-v13];
  v15 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v16 = sub_232B2D120(v15);
  MEMORY[0x28223BE20](v16);
  sub_232B3516C();
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v98[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v98[-v23];
  MEMORY[0x28223BE20](v25);
  v30 = *(v0 + 16);
  if (v30)
  {
    v100 = v14;
    v101 = v11;
    v102 = v7;
    v103 = v29;
    v106 = v5;
    v107 = v28;
    v104 = &v98[-v26];
    v105 = v27;
    if (v2)
    {
      v31 = 0xD00000000000001ALL;
    }

    else
    {
      v31 = 0xD000000000000018;
    }

    if (v2)
    {
      v32 = "EVENT_TIME__END_DATETIME";
    }

    else
    {
      v32 = "sectionLabelTokenMergeDistance";
    }

    v33 = v32 | 0x8000000000000000;
    v34 = v30;
    v35 = sub_232B20544();
    if (v35)
    {
      v36 = v35;
      v99 = v2;
      v108[0] = v31;
      v108[1] = v33;
      MEMORY[0x28223BE20](v35);
      sub_232BD4088();
      if (!sub_232C0A5F8())
      {

        sub_232BD42A0();
        goto LABEL_45;
      }

      type metadata accessor for FoundInEventModelOutput(0);
      v37 = sub_232CE96C0();
      v38 = v34;
      v39 = sub_232BCFBF8(v36, v31, v33, v30);
      v40 = v38;

      v41 = sub_232BD0D6C(v37, v39, *(v4 + 16), v99 & 1);

      v42 = v104;
      sub_232B55484();
      v43 = v106;
      sub_232B12504(v44, v45, v46, v106);
      v47 = *(v41 + 16);
      if (v47)
      {
        v48 = v107;
        if (v47 == 1)
        {
          sub_232BCE814(v41, v24);

          if (sub_232B12480(v24, 1, v43) == 1)
          {
            sub_232B267AC(v24, &qword_27DDC70B0, &unk_232CF81C0);
            goto LABEL_36;
          }

          v83 = v102[4];
          v84 = v100;
          v85 = sub_232BD4274();
          v83(v85);
          sub_232B267AC(v42, &qword_27DDC70B0, &unk_232CF81C0);
          (v83)(v42, v84, v43);
        }

        else
        {
          sub_232BD06E0();
          if (sub_232B12480(v21, 1, v43) == 1)
          {
            sub_232B267AC(v21, &qword_27DDC70B0, &unk_232CF81C0);
            if (qword_2814DFA50 != -1)
            {
              sub_232BB2CAC(&qword_2814DFA50);
            }

            v69 = sub_232CE9A30();
            sub_232BD4144(v69, qword_2814E3DA8);

            v70 = sub_232CE9A00();
            v71 = sub_232CEA1C0();

            if (os_log_type_enabled(v70, v71))
            {
              v72 = sub_232BC1F80();
              v73 = sub_232BD41CC();
              v102 = v39;
              sub_232BD42AC(v73);
              *v72 = 136315138;
              v74 = MEMORY[0x238391D80](v41, v43);
              v76 = v75;

              v77 = sub_232BAD2D4(v74, v76, v108);
              v48 = v107;

              *(v72 + 4) = v77;
              sub_232BA6138();
              _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
              sub_232BD41F0();
              v39 = v102;
              sub_232BA6A84();
              sub_232BA66EC();
            }

            else
            {
            }

            goto LABEL_36;
          }

          v86 = v101;
          v87 = v102[4];
          v87(v101, v21, v43);
          sub_232B267AC(v42, &qword_27DDC70B0, &unk_232CF81C0);
          v87(v42, v86, v43);
        }

        sub_232B12504(v42, 0, 1, v43);
      }

      else
      {

        v48 = v107;
      }

LABEL_36:
      v88 = v40;
      v89 = v103;
      sub_232BD3FB8(v42, v103);
      v90 = sub_232B12480(v89, 1, v43);
      sub_232B267AC(v89, &qword_27DDC70B0, &unk_232CF81C0);
      if (v90 == 1 || sub_232BD423C() || (sub_232CE8A30(), (v91 & 1) != 0) || sub_232BD423C() || (sub_232CE8A60(), (v92 & 1) != 0) || sub_232BD423C() || (sub_232CE8A50(), (v93 & 1) != 0))
      {
        sub_232B55484();
        sub_232B12504(v94, v95, v96, v43);
      }

      else
      {
        sub_232BD3FB8(v42, v48);
      }

      sub_232B55134(v48, v42);
      v97 = v105;
      sub_232BD3FB8(v42, v105);
      sub_232BCFE7C();

      sub_232B267AC(v97, &qword_27DDC70B0, &unk_232CF81C0);
      sub_232B267AC(v42, &qword_27DDC70B0, &unk_232CF81C0);
      goto LABEL_45;
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v58 = sub_232CE9A30();
    sub_232BD4144(v58, qword_2814E3DA8);
    v59 = sub_232CE9A00();
    v60 = sub_232CEA1C0();
    if (sub_232BA6EB8(v60))
    {
      v61 = v34;
      v62 = sub_232BC1F80();
      v63 = sub_232BD41CC();
      v108[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_232BAD2D4(1701669236, 0xE400000000000000, v108);
      sub_232BA6138();
      _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
      sub_232B2040C(v63);
      sub_232BA6A84();
      sub_232BA66EC();
    }

    else
    {
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v49 = sub_232CE9A30();
    sub_232BD4144(v49, qword_2814E3DA8);
    v50 = sub_232CE9A00();
    v51 = sub_232CEA1C0();
    if (sub_232BA6EB8(v51))
    {
      v52 = sub_232BA73DC();
      sub_232BD4280(v52);
      sub_232BA6138();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      sub_232BA66EC();
    }
  }

LABEL_45:
  sub_232B20A00();
}

id sub_232BCFBF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCAB58]) init];
  if (!a4)
  {
    v26 = 0u;
    v27 = 0u;
LABEL_10:
    sub_232B267AC(&v26, &qword_27DDC68C8, &qword_232CF6210);
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  *&v24 = 0xD00000000000001ELL;
  *(&v24 + 1) = 0x8000000232D07810;
  v7 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_232CEA420();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    goto LABEL_10;
  }

  sub_232B124A8(&qword_27DDC7640, &qword_232CFA938);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = sub_232B1DFEC(a2, a3, v24);
  v10 = v9;

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = 0;
  v12 = *(a1 + 16);
  v20 = v8 + 1;
  v13 = __OFADD__(v8, 1);
  v21 = v13;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v12 == v11)
    {
      return v6;
    }

    v15 = *(i - 1);
    v16 = *i;

    v17 = [v6 lastIndex];
    *&v26 = v15;
    *(&v26 + 1) = v16;
    sub_232B48080();
    LOBYTE(v15) = sub_232CEA3F0();

    if (v15)
    {
      break;
    }

LABEL_26:
    ++v11;
  }

  if (v8 < 1 || (result = sub_232CE8910(), v17 == result))
  {
LABEL_25:
    [v6 addIndex_];
    goto LABEL_26;
  }

  v19 = v11 - v17;
  if (!__OFSUB__(v11, v17))
  {
    if (v19 >= 2)
    {
      if (v21)
      {
        goto LABEL_29;
      }

      if (v20 >= v19)
      {
        [v6 addIndexesInRange_];
      }
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_232BCFE7C()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v60 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  v9 = sub_232CE8E90();
  sub_232B48F0C();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v15 = v14 - v13;
  v16 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v16);
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  v20 = sub_232CE8D10();
  sub_232B48F0C();
  v61 = v21;
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v62 = v24 - v23;
  v25 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v25);
  sub_232B2D114();
  MEMORY[0x28223BE20](v26);
  v28 = &v59 - v27;
  sub_232CE8AE0();
  sub_232B48F0C();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_232B20704();
  v34 = v33 - v32;
  v35 = v1;
  v37 = v36;
  sub_232BD3FB8(v35, v28);
  if (sub_232B12480(v28, 1, v37) == 1)
  {
    v38 = &qword_27DDC70B0;
    v39 = &unk_232CF81C0;
    v40 = v28;
LABEL_5:
    sub_232B267AC(v40, v38, v39);
    goto LABEL_18;
  }

  (*(v30 + 32))(v34, v28, v37);
  sub_232CE8E50();
  sub_232CE8E30();
  (*(v11 + 8))(v15, v9);
  if (sub_232B12480(v19, 1, v20) == 1)
  {
    (*(v30 + 8))(v34, v37);
    v38 = &qword_27DDC6A80;
    v39 = &qword_232CF6D30;
    v40 = v19;
    goto LABEL_5;
  }

  v59 = v37;
  v41 = v61;
  (*(v61 + 32))(v62, v19, v20);
  sub_232CE8AC0();
  v42 = sub_232CE8F00();
  v43 = sub_232B12480(v8, 1, v42);
  sub_232B267AC(v8, &qword_27DDC70B8, &qword_232CF81D0);
  if (v43 == 1)
  {
    v44 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_232CE8A40();
    if (v45 & 1) != 0 && (sub_232CE8A80(), (v46) && (sub_232CE8A90(), (v47))
    {
      v48 = 0x2D4D4D2D79797979;
      v49 = 0xEA00000000006464;
    }

    else
    {
      v49 = 0x8000000232D016A0;
      v48 = 0xD000000000000015;
    }

    sub_232BD39AC(v48, v49, v44);
    v53 = v62;
    v54 = sub_232CE8CD0();
    v55 = [v44 stringFromDate_];

    sub_232CE9D50();
    (*(v41 + 8))(v53, v20);
  }

  else
  {
    v50 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v51 = v60;
    sub_232CE8AC0();
    if (sub_232B12480(v51, 1, v42) == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_232CE8ED0();
      (*(*(v42 - 8) + 8))(v51, v42);
    }

    [v50 setTimeZone_];

    v56 = v62;
    v57 = sub_232CE8CD0();
    v58 = [v50 stringFromDate_];

    sub_232CE9D50();
    (*(v41 + 8))(v56, v20);
  }

  (*(v30 + 8))(v34, v59);
LABEL_18:
  sub_232B20A00();
}

uint64_t sub_232BD0424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_232CE8A70();
  v5 = v4;
  v6 = sub_232CE8A70();
  if (v5)
  {
    if ((v7 & 1) == 0)
    {
LABEL_7:
      sub_232CE8A70();
      return v8 & 1;
    }
  }

  else if ((v7 & 1) != 0 || v3 != v6)
  {
    goto LABEL_7;
  }

  v8 = 1;
  return v8 & 1;
}

void sub_232BD04A8()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_232CE8AE0();
  sub_232B48F0C();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v14 = v13 - v12;
  v15 = *(v10 + 16);
  v15(v13 - v12, v1, v8);
  sub_232CE8A70();
  if (v16)
  {
    goto LABEL_4;
  }

  if (sub_232BD0424(v14, v3, v5))
  {
    sub_232CE8AB0();
LABEL_4:
    v15(v7, v14, v8);
    v17 = 0;
    goto LABEL_10;
  }

  if (qword_2814DFA50 != -1)
  {
    sub_232BB2CAC(&qword_2814DFA50);
  }

  v18 = sub_232CE9A30();
  sub_232BD4144(v18, qword_2814E3DA8);
  v19 = sub_232CE9A00();
  v20 = sub_232CEA1C0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_232BC1F80();
    v22 = sub_232BD41CC();
    v27 = v22;
    *v21 = 136315138;
    v23 = swift_beginAccess();
    v24 = MEMORY[0x238390790](v23);
    v26 = sub_232BAD2D4(v24, v25, &v27);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_232B02000, v19, v20, "Conflict detected when merging component into %s", v21, 0xCu);
    sub_232B2040C(v22);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  v17 = 1;
LABEL_10:
  sub_232B12504(v7, v17, 1, v8);
  (*(v10 + 8))(v14, v8);
  sub_232B20A00();
}

void sub_232BD06E0()
{
  sub_232B35110();
  v69 = v0;
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  v7 = sub_232CE8E80();
  v68 = *(v7 - 8);
  v8 = v68;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v71 = v10 - v9;
  v11 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v11);
  sub_232B2D114();
  MEMORY[0x28223BE20](v12);
  v13 = sub_232B124A8(&qword_27DDC7800, &unk_232CFAB88);
  sub_232B2D120(v13);
  sub_232B2D114();
  MEMORY[0x28223BE20](v14);
  v74 = sub_232CE8AE0();
  sub_232B48F0C();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  v75 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232CE8E90();
  sub_232B55484();
  sub_232B12504(v23, v24, v25, v26);
  sub_232CE8F00();
  sub_232B55484();
  sub_232B12504(v27, v28, v29, v30);
  v73 = v22;
  sub_232CE8AA0();
  sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
  v31 = *(v8 + 72);
  v32 = v68;
  v33 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_232CF74B0;
  v35 = *(v32 + 104);
  v35(v34 + v33, *MEMORY[0x277CC9998], v7);
  v35(v34 + v33 + v31, *MEMORY[0x277CC9988], v7);
  v35(v34 + v33 + 2 * v31, *MEMORY[0x277CC9968], v7);
  v35(v34 + v33 + 3 * v31, *MEMORY[0x277CC9980], v7);
  v35(v34 + v33 + 4 * v31, *MEMORY[0x277CC99A0], v7);
  v70 = v31;
  v36 = *MEMORY[0x277CC99C8];
  v72 = v7;
  v35(v34 + v33 + 5 * v31, v36, v7);
  v37 = sub_232C0D110(v34);
  v38 = v37;
  v61 = *(v69 + 16);
  if (v61)
  {
    v59 = v16;
    v60 = v2;
    v39 = 0;
    v64 = *(v16 + 16);
    v65 = v16 + 16;
    v40 = v37 + 56;
    v63 = v69 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v68 = v32 + 8;
    v69 = v32 + 16;
    v41 = (v16 + 8);
    v67 = v16 + 32;
    v62 = *(v16 + 72);
    v43 = v74;
    v42 = v75;
    while (2)
    {
      v66 = v39 + 1;
      v64(v42, v63 + v62 * v39, v43);
      v44 = 1 << *(v38 + 32);
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = v45 & *(v38 + 56);
      v47 = (v44 + 63) >> 6;

      v48 = 0;
      if (v46)
      {
        while (1)
        {
          v49 = v48;
LABEL_11:
          v50 = v38;
          v51 = v71;
          v52 = v72;
          (*v69)(v71, *(v38 + 48) + (__clz(__rbit64(v46)) | (v49 << 6)) * v70, v72);
          v53 = v73;
          sub_232BD04A8();
          (*v68)(v51, v52);
          v54 = *v41;
          v43 = v74;
          (*v41)(v53, v74);
          if (sub_232B12480(v6, 1, v43) == 1)
          {
            break;
          }

          v46 &= v46 - 1;
          v55 = sub_232BD4274();
          v56(v55);
          v48 = v49;
          v38 = v50;
          if (!v46)
          {
            goto LABEL_8;
          }
        }

        v54(v75, v43);
        sub_232B267AC(v6, &qword_27DDC70B0, &unk_232CF81C0);
        v57 = 1;
        v2 = v60;
        goto LABEL_19;
      }

      while (1)
      {
LABEL_8:
        v49 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          __break(1u);
          return;
        }

        if (v49 >= v47)
        {
          break;
        }

        v46 = *(v40 + 8 * v49);
        ++v48;
        if (v46)
        {
          goto LABEL_11;
        }
      }

      v42 = v75;
      (*v41)(v75, v43);
      v39 = v66;
      if (v66 != v61)
      {
        continue;
      }

      break;
    }

    v16 = v59;
    v2 = v60;
  }

  else
  {

    v43 = v74;
  }

  (*(v16 + 32))(v2, v73, v43);
  v57 = 0;
LABEL_19:
  sub_232B12504(v2, v57, 1, v43);
  sub_232B20A00();
}

uint64_t sub_232BD0D6C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v20 = MEMORY[0x277D84F90];
  sub_232BD42B8();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = &v20;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_232BD3FA8;
  *(v9 + 24) = v8;
  v18 = sub_232BD4038;
  v19 = v9;
  sub_232BD40A0();
  v15 = 1107296256;
  sub_232BD403C();
  v16 = v10;
  v17 = &unk_284812168;
  v11 = _Block_copy(aBlock);

  [a2 enumerateRangesUsingBlock_];
  _Block_release(v11);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v13 = v20;

    return v13;
  }

  return result;
}

void sub_232BD0ED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v60 = a7;
  LODWORD(v7) = a6;
  v12 = sub_232CE8AE0();
  v55 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v51 - v15;
  v16 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  MEMORY[0x28223BE20](v16 - 8);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for FoundInEventDataDetectorsOutput(0);
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v25 = *(a4 + 16);
  if (v25 <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 >= v25)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v29 = NSUnionRange(*(a4 + 32 + 16 * a1), *(a4 + 32 + 16 * v28));
  length = v29.length;
  location = v29.location;
  v30 = *(a5 + 16);
  if (v30)
  {
    v31 = a5 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v32 = *(v22 + 72);
    v56 = (v55 + 32);
    v51 = v55 + 8;
    v52 = (v55 + 16);
    v53 = v7;
    do
    {
      sub_232BC1980(v31, v24);
      if (v24[v21[8]] == 5)
      {
        v33 = v21[20];
        v34 = &v24[v21[19]];
        if (v34[8])
        {
          v35 = 0;
        }

        else
        {
          v35 = *v34;
        }

        v36 = &v24[v33];
        v37 = *&v24[v33];
        if (v36[8])
        {
          v38 = 0;
        }

        else
        {
          v38 = v37;
        }

        v39 = v24;
        if ((v7 & 1) == 0)
        {
          v39 = &v24[v21[6]];
        }

        sub_232BD3FB8(v39, v20);
        if (sub_232B12480(v20, 1, v12) == 1 || (v63.length = length, v63.location = location, v64.location = v35, v64.length = v38, NSIntersectionRange(v63, v64).length < 1))
        {
          sub_232BD3F4C(v24);
          v41 = v20;
        }

        else
        {
          v40 = v57;
          sub_232BD3FB8(v20, v57);
          if (sub_232B12480(v40, 1, v12) != 1)
          {
            v42 = v58;
            v54 = *v56;
            v54(v58, v40, v12);
            (*v52)(v59, v42, v12);
            v43 = v60;
            v44 = *v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v43 = v44;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_232B36AB4();
              v44 = v49;
              *v60 = v49;
            }

            v7 = *(v44 + 16);
            if (v7 >= *(v44 + 24) >> 1)
            {
              sub_232B36AB4();
              *v60 = v50;
            }

            v46 = v55;
            (*(v55 + 8))(v58, v12);
            sub_232BD3F4C(v24);
            v47 = v59;
            v48 = *v60;
            *(v48 + 16) = v7 + 1;
            v54((v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v7), v47, v12);
            sub_232B267AC(v20, &qword_27DDC70B0, &unk_232CF81C0);
            LOBYTE(v7) = v53;
            goto LABEL_24;
          }

          sub_232BD3F4C(v24);
          sub_232B267AC(v20, &qword_27DDC70B0, &unk_232CF81C0);
          v41 = v40;
        }

        sub_232B267AC(v41, &qword_27DDC70B0, &unk_232CF81C0);
      }

      else
      {
        sub_232BD3F4C(v24);
      }

LABEL_24:
      v31 += v32;
      --v30;
    }

    while (v30);
  }
}

BOOL sub_232BD1400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 1;
  }

  sub_232B1F160(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  if (!*(a5 + 16))
  {
    return 0;
  }

  sub_232BD4330();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_232B48080();
  return sub_232CEA3C0() == 0;
}

uint64_t sub_232BD14C4(uint64_t a1)
{
  v35 = *(a1 + 16);
  if (!v35)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = 0;
  v36 = a1 + 32;
  v2 = MEMORY[0x277D84F98];
  while (2)
  {
    v37 = v1 + 1;
    v3 = *(v36 + 8 * v1) + 64;
    sub_232BD4178();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    v40 = v9;

    v10 = 0;
    v38 = v8;
    v39 = v3;
    if (!v6)
    {
      goto LABEL_5;
    }

    do
    {
      v11 = v10;
LABEL_8:
      v12 = (*(v40 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v6)))));
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_232BA62A4();
      if (!sub_232BD1400(v15, v16, v14, v13, v2))
      {

        return 0;
      }

      v41 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_232BA62A4();
      sub_232B1F160(v17, v18);
      sub_232B66BA0();
      if (__OFADD__(v21, v22))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        result = sub_232CEA7A0();
        __break(1u);
        return result;
      }

      v23 = v19;
      v24 = v20;
      sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
      if (sub_232CEA5C0())
      {
        v25 = sub_232BA62A4();
        v27 = sub_232B1F160(v25, v26);
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_27;
        }

        v23 = v27;
      }

      v6 &= v6 - 1;
      if (v24)
      {

        v29 = (*(v2 + 56) + 16 * v23);
        *v29 = v41;
        v29[1] = v13;
      }

      else
      {
        sub_232BD40C0();
        *v30 = v41;
        v30[1] = v13;
        v31 = *(v2 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        *(v2 + 16) = v33;
      }

      v10 = v11;
      v8 = v38;
      v3 = v39;
    }

    while (v6);
    while (1)
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v11 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v1 = v37;
    if (v37 != v35)
    {
      continue;
    }

    return v2;
  }
}

void sub_232BD1728()
{
  sub_232B35110();
  v86.location = v0;
  v86.length = v1;
  v3 = v2;
  v92 = sub_232CE9A30();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = type metadata accessor for FoundInEventDataDetectorsOutput(0);
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v16 = v15 - v14;
  v90 = sub_232CE9C60();
  v17 = *(v3 + 16);
  if (!v17)
  {
LABEL_72:
    sub_232B20A00();
    return;
  }

  v18 = 0;
  v19 = (v3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
  v91 = (v5 + 8);
  v20 = *(v12 + 72);
  v94 = v9;
  v85 = v10;
  v84 = v16;
  v83 = v17;
  v82 = v19;
  v81 = v20;
  while (1)
  {
    sub_232BC1980(v19 + v20 * v18, v16);
    if (*(v16 + v10[8]) == 4)
    {
      v21 = *(v16 + v10[17]);
      if (v21)
      {
        v22 = v10[19];
        v23 = v16 + v10[20];
        v24 = *(v23 + 8);
        v25 = *v23;
        v26.length = v24 ? 0 : v25;
        v26.location = *(v16 + v22 + 8) ? 0 : *(v16 + v22);
        if (NSIntersectionRange(v86, v26).length >= 1)
        {
          break;
        }
      }
    }

LABEL_71:
    ++v18;
    sub_232BD3F4C(v16);
    if (v18 == v17)
    {
      goto LABEL_72;
    }
  }

  v87 = v18;
  v27 = v21 + 64;
  sub_232BD4178();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;

  v33 = 0;
  v93 = v32;
  v88 = v21 + 64;
  v95 = v21;
LABEL_13:
  v34 = v33;
  if (!v30)
  {
    goto LABEL_15;
  }

  do
  {
    v33 = v34;
LABEL_18:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = v35 | (v33 << 6);
    v37 = *(*(v21 + 48) + 8 * v36);
    v38 = (*(v21 + 56) + 16 * v36);
    v39 = v38[1];
    v96 = *v38;
    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    v42 = v42 && v19 == v41;
    if (v42)
    {
      v64 = v37;
      v89 = v39;

      sub_232BD4194();
      goto LABEL_59;
    }

    v43 = sub_232BD4050(v40);
    v44 = v37;

    if (v43)
    {
      v89 = v39;
      sub_232BD4194();
      goto LABEL_60;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v42 && v19 == v46)
    {
      sub_232BD4104();
      goto LABEL_55;
    }

    sub_232BD4050(v45);
    sub_232BD4318();

    if (v43)
    {
      sub_232BD4104();
      goto LABEL_57;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v42 && v19 == v49)
    {
      sub_232BD4074();
      sub_232BD420C();
      goto LABEL_59;
    }

    sub_232BD4050(v48);
    sub_232BD4318();

    if (v43)
    {
      sub_232BD4074();
      sub_232BD420C();
      goto LABEL_60;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v42 && v19 == v52)
    {
      sub_232BD4074();
      sub_232BD428C();
LABEL_55:
      v32 = v32 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
LABEL_59:

LABEL_60:
      swift_isUniquelyReferenced_nonNull_native();
      v97 = v90;
      sub_232B1F160(v39, v32);
      sub_232B66BA0();
      if (__OFADD__(v67, v68))
      {
        goto LABEL_74;
      }

      v69 = v65;
      v70 = v66;
      sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
      if (sub_232CEA5C0())
      {
        v71 = sub_232BA62A4();
        v73 = sub_232B1F160(v71, v72);
        v75 = v89;
        if ((v70 & 1) != (v74 & 1))
        {
          goto LABEL_76;
        }

        v69 = v73;
        if ((v70 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v75 = v89;
        if ((v70 & 1) == 0)
        {
LABEL_64:
          v19 = v97;
          sub_232BD40C0();
          *v76 = v96;
          v76[1] = v75;

          isa = v19[2].isa;
          v78 = __OFADD__(isa, 1);
          v79 = (isa + 1);
          if (v78)
          {
            goto LABEL_75;
          }

          v90 = v19;
          v19[2].isa = v79;
          goto LABEL_68;
        }
      }

      v90 = v97;
      v80 = (v97[7].isa + 16 * v69);
      v19 = v80[1];
      *v80 = v96;
      v80[1] = v75;

LABEL_68:
      v21 = v95;
      v32 = v93;
      v27 = v88;
      goto LABEL_13;
    }

    sub_232BD4050(v51);
    sub_232BD4318();

    if (v43)
    {
      sub_232BD4074();
      sub_232BD428C();
LABEL_57:
      v32 = v32 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      goto LABEL_60;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v42 && v19 == v55)
    {
      sub_232BD41B0();
      goto LABEL_59;
    }

    sub_232BD4050(v54);
    sub_232BD4318();

    if (v43)
    {
      sub_232BD41B0();
      goto LABEL_60;
    }

    sub_232CE9A20();
    v57 = v44;
    v19 = sub_232CE9A00();
    v58 = sub_232CEA1E0();

    if (os_log_type_enabled(v19, v58))
    {
      v59 = sub_232BC1F80();
      v60 = sub_232BD41CC();
      sub_232BD42AC(v60);
      *v59 = 136315138;
      v61 = sub_232CE9D50();
      v63 = sub_232BAD2D4(v61, v62, &v97);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_232B02000, v19, v58, "DUFoundInEventPostprocessing: unknown address component key: %s", v59, 0xCu);
      sub_232BD41F0();
      v32 = v93;
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
    }

    (*v91)(v94, v92);
    v34 = v33;
    v21 = v95;
  }

  while (v30);
LABEL_15:
  while (1)
  {
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v33 >= v32)
    {

      v10 = v85;
      v16 = v84;
      v17 = v83;
      v18 = v87;
      v19 = v82;
      v20 = v81;
      goto LABEL_71;
    }

    v30 = *(v27 + 8 * v33);
    ++v34;
    if (v30)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  sub_232CEA7A0();
  __break(1u);
}

uint64_t sub_232BD1DEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = MEMORY[0x277D84F90];
  v13 = sub_232CE9C60();
  v54 = v12;
  v55 = MEMORY[0x277D84FA0];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v6;
  v14[4] = a5;
  v14[5] = &v54;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = &v55;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_232BD3E5C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_232BD4038;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  sub_232BD403C();
  aBlock[2] = v16;
  aBlock[3] = &unk_2848120F0;
  v17 = _Block_copy(aBlock);

  [a2 enumerateRangesUsingBlock_];
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_232BB2CAC(&qword_2814DFA50);
    goto LABEL_9;
  }

  v18 = v54;
  v19 = *(v54 + 16);
  v6 = &unk_2814DF000;
  if (!v19)
  {
    goto LABEL_12;
  }

  if (v19 == 1)
  {

    if (*(v18 + 16))
    {
      v13 = *(v18 + 32);

      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v21 = sub_232BD14C4(v20);

  if (v21)
  {

    v13 = v21;
    goto LABEL_12;
  }

  if (qword_2814DFA50 != -1)
  {
    goto LABEL_30;
  }

LABEL_9:
  v22 = sub_232CE9A30();
  sub_232BD4144(v22, qword_2814E3DA8);
  v23 = sub_232CE9A00();
  v24 = sub_232CEA1C0();
  if (sub_232BD4258(v24))
  {
    *sub_232BA73DC() = 0;
    sub_232BAE130();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
    sub_232BA6A84();
  }

LABEL_12:
  if (!*(v13 + 16))
  {
    v30 = *(v55 + 16);
    if (v30)
    {
      if (v30 == 1)
      {

        sub_232BCE7AC(v31);

        goto LABEL_27;
      }

      v41 = sub_232BD3064(v40);

      sub_232BD2D0C(v41);
      v43 = v42;

      if (v43)
      {
        goto LABEL_27;
      }

      if (v6[330] != -1)
      {
        sub_232BB2CAC(&qword_2814DFA50);
      }

      v44 = sub_232CE9A30();
      sub_232BD4144(v44, qword_2814E3DA8);
      v33 = sub_232CE9A00();
      v45 = sub_232CEA1C0();
      if (!os_log_type_enabled(v33, v45))
      {
LABEL_26:

        goto LABEL_27;
      }

      v46 = sub_232BC1F80();
      v52 = sub_232BD41CC();
      *v46 = 136315138;
      swift_beginAccess();

      v47 = sub_232CEA0E0();
      v49 = v48;

      v50 = sub_232BAD2D4(v47, v49, &v52);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_232B02000, v33, v45, "Unable to obtain final candidate in group of %s", v46, 0xCu);
      sub_232BD41F0();
      sub_232BA6A84();
    }

    else
    {
      if (v6[330] != -1)
      {
        sub_232BB2CAC(&qword_2814DFA50);
      }

      v32 = sub_232CE9A30();
      sub_232BD4144(v32, qword_2814E3DA8);
      v33 = sub_232CE9A00();
      v34 = sub_232CEA1C0();
      if (!sub_232BD4258(v34))
      {
        goto LABEL_26;
      }

      *sub_232BA73DC() = 0;
      sub_232BAE130();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
    }

    sub_232BA6A84();
    goto LABEL_26;
  }

LABEL_27:

  return v13;
}

unint64_t sub_232BD22C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(a4 + 16);
  if (v9 <= result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 >= v9)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v25[10] = v7;
  v25[11] = v8;
  NSUnionRange(*(a4 + 32 + 16 * result), *(a4 + 32 + 16 * v12));
  sub_232BD1728();
  v15 = v14;
  if (*(v14 + 16))
  {
    sub_232BAD0B4();
    v16 = *(*a7 + 16);
    sub_232BAD200(v16);
    v17 = *a7;
    *(v17 + 16) = v16 + 1;
    *(v17 + 8 * v16 + 32) = v15;
  }

  else
  {
  }

  result = sub_232CEA110();
  if ((v18 & 1) == 0)
  {
    v19 = sub_232CE9FB0();
    MEMORY[0x238391B80](v19);

    v20 = sub_232CE9D20();

    v21 = _PASCollapseWhitespaceAndStrip();

    v22 = sub_232CE9D50();
    v24 = v23;

    sub_232C48B20(v25, v22, v24);
  }

  return result;
}

uint64_t sub_232BD2458(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = MEMORY[0x277D84F90];
  sub_232BD42B8();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = &v20;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_232BD3E10;
  *(v9 + 24) = v8;
  v18 = sub_232BD3E1C;
  v19 = v9;
  sub_232BD40A0();
  v15 = 1107296256;
  sub_232BD403C();
  v16 = v10;
  v17 = &unk_284812078;
  v11 = _Block_copy(aBlock);

  [a2 enumerateRangesUsingBlock_];
  _Block_release(v11);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v13 = v20;

    return v13;
  }

  return result;
}

unint64_t sub_232BD25C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(a4 + 16);
  if (v7 <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 >= v7)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  NSUnionRange(*(a4 + 32 + 16 * result), *(a4 + 32 + 16 * v10));
  result = sub_232CEA110();
  if ((v15 & 1) == 0)
  {
    v16 = sub_232BD33C8(result, v14, a5, a6);
    v18 = v17;

    v19 = MEMORY[0x238391D20](v16, v18, a5, a6);
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      sub_232CE9FA0();
      v24 = sub_232CE9D20();

      v25 = _PASCollapseWhitespaceAndStrip();

      v26 = sub_232CE9D50();
      v28 = v27;

      sub_232BAD03C();
      v29 = *(*a7 + 16);
      result = sub_232BAD188(v29);
      v30 = *a7;
      *(v30 + 16) = v29 + 1;
      v31 = v30 + 16 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    else
    {
    }
  }

  return result;
}

void *sub_232BD276C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F98];
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v4 = *i;
      v6 = v2[2];

      if (v6 && (v7 = sub_232BD4330(), (v8 & 1) != 0))
      {
        v9 = *(v2[7] + 8 * v7);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_232BD4330();
      sub_232B66BA0();
      if (__OFADD__(v13, v14))
      {
        goto LABEL_21;
      }

      v15 = v11;
      v16 = v12;
      sub_232B124A8(&qword_27DDC77F8, &unk_232CFE4F0);
      if (sub_232CEA5C0())
      {
        v17 = sub_232BD4330();
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_23;
        }

        v15 = v17;
      }

      if (v16)
      {

        *(v2[7] + 8 * v15) = v10;
      }

      else
      {
        v2[(v15 >> 6) + 8] |= 1 << v15;
        v19 = (v2[6] + 16 * v15);
        *v19 = v5;
        v19[1] = v4;
        *(v2[7] + 8 * v15) = v10;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_22;
        }

        v2[2] = v22;
      }

      if (!--v1)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_232CEA7A0();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_232BD2900(uint64_t a1)
{
  v2 = sub_232B61CC8(a1);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = sub_232BD3490(a1, v4);
  v6 = v5[2];
  if (v6)
  {
    v32 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v6, 0);
    v9 = sub_232B66AD8();
    v10 = 0;
    v11 = v5 + 8;
    v28 = v6;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v5 + 32))
      {
        v12 = v9 >> 6;
        if ((v11[v9 >> 6] & (1 << v9)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 9) != v7)
        {
          goto LABEL_27;
        }

        v29 = v8;
        v30 = v10;
        v31 = v7;
        v13 = (v5[6] + 16 * v9);
        v15 = *v13;
        v14 = v13[1];
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_232B649F4(v16 > 1, v17 + 1, 1);
        }

        *(v32 + 16) = v17 + 1;
        v18 = v32 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v14;
        v19 = 1 << *(v5 + 32);
        if (v9 >= v19)
        {
          goto LABEL_28;
        }

        v11 = v5 + 8;
        v20 = v5[v12 + 8];
        if ((v20 & (1 << v9)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v5 + 9) != v31)
        {
          goto LABEL_30;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v22 = v28;
        }

        else
        {
          v23 = v12 << 6;
          v24 = v12 + 1;
          v22 = v28;
          v25 = &v5[v12 + 9];
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_232B48E94(v9, v31, v29 & 1);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_21;
            }
          }

          sub_232B48E94(v9, v31, v29 & 1);
        }

LABEL_21:
        v10 = v30 + 1;
        if (v30 + 1 == v22)
        {
          goto LABEL_24;
        }

        v8 = 0;
        v7 = *(v5 + 9);
        v9 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
  }
}

void sub_232BD2B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = a1 + 40;
    v4 = 0x8000000000000000;
    v5 = *(a1 + 16);
    do
    {

      v6 = sub_232CE9E60();

      if (v6 > v4)
      {
        v4 = v6;
      }

      v3 += 16;
      --v5;
    }

    while (v5);
    v7 = 0;
    v8 = a1 + 40;
    v9 = MEMORY[0x277D84F90];
LABEL_7:
    v10 = (v8 + 16 * v7);
    while (v1 != v7)
    {
      if (v7 >= v1)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_23;
      }

      v12 = *(v10 - 1);
      v11 = *v10;

      if (sub_232CE9E60() == v4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232B649F4(0, *(v9 + 16) + 1, 1);
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_232B649F4(v13 > 1, v14 + 1, 1);
        }

        *(v9 + 16) = v14 + 1;
        v15 = v9 + 16 * v14;
        *(v15 + 32) = v12;
        *(v15 + 40) = v11;
        ++v7;
        goto LABEL_7;
      }

      ++v7;
      v10 += 2;
    }

    if (*(v9 + 16) == 1)
    {
    }

    else
    {
    }
  }
}

uint64_t sub_232BD2D0C(uint64_t a1)
{
  v1 = sub_232BD276C(a1);
  sub_232BD2900(v1);
  v3 = v2;

  v4 = *(v3 + 16);
  if (v4 < 2)
  {
    if (!v4)
    {

      return 0;
    }

    v6 = *(v3 + 32);
  }

  else
  {
    sub_232BD2B60(v3);
    v6 = v5;
  }

  return v6;
}

uint64_t sub_232BD2D9C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v3 = sub_232CE9A30();
    sub_232BD4144(v3, qword_2814E3DA8);
    v4 = sub_232CE9A00();
    v5 = sub_232CEA1C0();
    if (sub_232BA6EB8(v5))
    {
      v6 = sub_232BA73DC();
      sub_232BD4280(v6);
      sub_232BA6138();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_232BA66EC();
    }

    return 0;
  }

  if (v1 != 1)
  {
    v12 = sub_232BD2D0C(a1);
    if (v13)
    {
      return v12;
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v15 = sub_232CE9A30();
    sub_232BD4144(v15, qword_2814E3DA8);

    v16 = sub_232CE9A00();
    v17 = sub_232CEA1C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_232BC1F80();
      *v18 = 134217984;
      *(v18 + 4) = v1;

      _os_log_impl(&dword_232B02000, v16, v17, "DUFoundInEventsPostprocessing: Unable to find most frequent longest candidate from %ld candidates", v18, 0xCu);
      sub_232BA6A84();
    }

    else
    {
    }

    return 0;
  }

  v2 = a1[4];

  return v2;
}

uint64_t sub_232BD2F48()
{
  v0 = sub_232CE89D0();
  sub_232B48F0C();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232CE8980();
  sub_232B48080();
  v7 = sub_232CEA3A0();
  (*(v2 + 8))(v6, v0);
  return v7;
}

void *sub_232BD3064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_232B374D0(*(a1 + 16), 0);
  sub_232BD3A10(&v8, v3 + 4, v1, a1);
  v5 = v4;
  v6 = v8;

  sub_232B08AC8(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_232BD3120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_232B374D0(*(a1 + 16), 0);
  sub_232BD3B6C(&v8, v3 + 4, v1, a1);
  v5 = v4;
  v6 = v8;

  sub_232B08AC8(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_232BD31DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_232B124A8(&qword_27DDC6B78, &unk_232CF6F00);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 4);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
      return;
    }

    goto LABEL_10;
  }
}

void sub_232BD32A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_232B124A8(&qword_27DDC6B00, &unk_232CF6E80);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 8);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_232BD336C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_232CE9F40();
    sub_232BD4224(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x238391C70](15, a1 >> 16);
    sub_232BD4224(v3);
    return v4 | 8;
  }
}

uint64_t sub_232BD33C8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0xC) == 4 << v8)
  {
    result = sub_232BD336C(a2, a3, a4);
    v6 = result;
  }

  if ((v7 & 0xC) == v9)
  {
    result = sub_232BD336C(v7, a3, a4);
    v7 = result;
  }

  v10 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 <= 4 * v10 && v6 >> 14 >= v7 >> 14)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t *sub_232BD3490(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_232BD36F0(v10, v6, v4, a2);
      MEMORY[0x238393870](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v7 = (v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_232C4883C(0, v6, v7);
  v8 = sub_232BD3600(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_232BD3600(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_232BD3778(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_232BD3778(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_232BD36F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_232BD3600(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_232BD3778(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_232B124A8(&qword_27DDC77F0, &unk_232CFAB70);
  result = sub_232CEA650();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_232CEA820();

    sub_232CE9E40();
    result = sub_232CEA850();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_232BD39AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();

  [a3 setDateFormat_];
}

void sub_232BD3A10(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_232BD3B6C(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
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
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_232BD3CC8()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_232B20A00();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v3 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      v18 = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_232BD3E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232BD3ED0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_232BD3F4C(uint64_t a1)
{
  v2 = type metadata accessor for FoundInEventDataDetectorsOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BD3FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BD4050(uint64_t a1)
{

  return sub_232CEA750();
}

void sub_232BD40C0()
{
  *(v0 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
}

uint64_t sub_232BD4128()
{

  return sub_232CE9D50();
}

uint64_t sub_232BD415C(uint64_t a1, uint64_t a2)
{

  return sub_232CEA750();
}

uint64_t sub_232BD41CC()
{

  return swift_slowAlloc();
}

uint64_t sub_232BD423C()
{

  return sub_232B12480(v1, 1, v0);
}

BOOL sub_232BD4258(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_232BD42D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_232BD42F8(float a1)
{
  *v3 = a1;

  return sub_232BAD2D4(v2, v1, (v4 - 96));
}

uint64_t sub_232BD4318()
{
}

unint64_t sub_232BD4330()
{

  return sub_232B1F160(v1, v0);
}

void static DUIDClassificationImplementation.containsDataDetector(for:)()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE9A30();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v38 = v9 - v8;
  v10 = objc_opt_self();
  v11 = sub_232CE9D20();
  v12 = MEMORY[0x238391CC0](v3, v1);
  if (qword_2814E1820 != -1)
  {
    swift_once();
  }

  v13 = [v10 scanString:v11 range:0 configuration:{v12, qword_2814E1828, v38}];

  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v14 = sub_232CE9FE0();

  v15 = sub_232B26B10();
  v40 = v6;
  if (v15)
  {
    v16 = v15;
    if (v15 < 1)
    {
      __break(1u);
      return;
    }

    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2383922C0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 type];
      v22 = sub_232CE9D50();
      v24 = v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232BD71FC();
        sub_232B35ECC();
        v18 = v27;
      }

      v25 = *(v18 + 16);
      if (v25 >= *(v18 + 24) >> 1)
      {
        sub_232BD71FC();
        sub_232B35ECC();
        v18 = v28;
      }

      ++v17;

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v24;
    }

    while (v16 != v17);
  }

  sub_232B25E10(v14);

  sub_232CE9A20();
  v29 = sub_232CE9A00();
  v30 = sub_232CEA1E0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_232BC1F80();
    v32 = sub_232BD41CC();
    v41 = v32;
    *v31 = 136315138;

    v34 = MEMORY[0x238391D80](v33, MEMORY[0x277D837D0]);
    v36 = v35;

    v37 = sub_232BAD2D4(v34, v36, &v41);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_232B02000, v29, v30, "DUIDClassificationImplementation: Data Detectors detected %s", v31, 0xCu);
    sub_232B2040C(v32);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  (*(v40 + 8))(v39, v4);
  sub_232B20A00();
}

uint64_t sub_232BD46E8()
{
  sub_232CE9810();
  result = sub_232CE9800();
  byte_27DDC7808 = result & 1;
  return result;
}

id sub_232BD475C()
{
  result = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
  qword_2814E1828 = result;
  return result;
}

uint64_t sub_232BD47A8()
{
  v0 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  sub_232B135FC(v0, qword_27DDD4FC0);
  v1 = sub_232B135C4(v0, qword_27DDD4FC0);
  v2 = sub_232CE8E10();

  return sub_232B12504(v1, 1, 1, v2);
}

void sub_232BD4824()
{
  sub_232B35110();
  v2 = v1;
  v3 = sub_232CE9A30();
  sub_232B48F0C();
  v127 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  sub_232B20628();
  v119 = v9;
  sub_232B20600();
  MEMORY[0x28223BE20](v10);
  sub_232B20628();
  v122 = v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  v121 = &v113 - v13;
  v124 = sub_232B124A8(&qword_27DDC7538, &unk_232CFA0F0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v14);
  v16 = &v113 - v15;
  v126 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  sub_232B13F24();
  MEMORY[0x28223BE20](v17);
  sub_232B20714();
  v123 = v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  sub_232B20628();
  v120 = v20;
  sub_232B20600();
  MEMORY[0x28223BE20](v21);
  sub_232BD7208();
  MEMORY[0x28223BE20](v22);
  v24 = &v113 - v23;
  v25 = sub_232CE8E10();
  sub_232B48F0C();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_232B20714();
  v118 = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  v32 = &v113 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v113 - v34;
  getNLAssetLocale(for:)(v2, v24);
  sub_232BAE100(v24);
  if (v60)
  {
    sub_232B13790(v24, &qword_27DDC7398, &unk_232CF9070);
    sub_232CE9A20();
    v36 = v2;
    v37 = sub_232CE9A00();
    v38 = sub_232CEA1C0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v3;
      v40 = sub_232BC1F80();
      v41 = sub_232BD41CC();
      v129[0] = v41;
      *v40 = 136315138;
      v128 = v36;
      type metadata accessor for NLLanguage(0, v42, v43, v44);
      v45 = v36;
      v46 = sub_232CE9DC0();
      v48 = sub_232BAD2D4(v46, v47, v129);

      *(v40 + 4) = v48;
      _os_log_impl(&dword_232B02000, v37, v38, "DUIDClassificationImplementation: Embedding not found for %s", v40, 0xCu);
      sub_232B2040C(v41);
      sub_232BD7180();
      sub_232BA6A84();

      sub_232BD71C4();
      v50 = v7;
      v51 = v39;
    }

    else
    {

      sub_232BD71C4();
      v50 = v7;
      v51 = v3;
    }

    v49(v50, v51);
    goto LABEL_32;
  }

  v116._rawValue = v2;
  v117 = v3;
  v125 = v27;
  v52 = *(v27 + 32);
  v52(v35, v24, v25);
  v53 = 0x27DDC6000uLL;
  if (qword_2814E3E88)
  {
    v114 = *(v125 + 16);
    v115 = v35;
    v114(v0, v35, v25);
    sub_232BD71FC();
    sub_232B12504(v54, v55, v56, v57);
    if (qword_27DDC63A0 != -1)
    {
      sub_232BD7140(&qword_27DDC63A0);
    }

    v58 = sub_232B135C4(v126, qword_27DDD4FC0);
    swift_beginAccess();
    v59 = *(v124 + 48);
    sub_232BAD840(v0, v16);
    sub_232BAD840(v58, &v16[v59]);
    sub_232BAE100(v16);
    if (v60)
    {
      sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
      sub_232BAE100(&v16[v59]);
      if (v60)
      {
        sub_232B13790(v16, &qword_27DDC7398, &unk_232CF9070);
        v35 = v115;
LABEL_29:
        v97 = v121;
        sub_232CE9A20();
        v98 = v118;
        v114(v118, v35, v25);
        v99 = sub_232CE9A00();
        v100 = sub_232CEA1A0();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = sub_232BC1F80();
          v102 = sub_232BD41CC();
          v129[0] = v102;
          *v101 = 136315138;
          v103 = sub_232CE8D60();
          v105 = v104;
          v106 = *(v125 + 8);
          v106(v98, v25);
          v107 = sub_232BAD2D4(v103, v105, v129);

          *(v101 + 4) = v107;
          _os_log_impl(&dword_232B02000, v99, v100, "DUIDClassificationImplementation: OTA model is already loaded and locale %s matches currently loaded model, early return.", v101, 0xCu);
          sub_232B2040C(v102);
          sub_232BA6A84();
          sub_232BD7180();

          sub_232BD71C4();
          v108(v121, v117);
          v109 = sub_232BD71B8();
          (v106)(v109);
        }

        else
        {

          v110 = *(v125 + 8);
          v110(v98, v25);
          sub_232BD71C4();
          v111(v97, v117);
          v112 = sub_232BD71B8();
          (v110)(v112);
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_232BAD840(v16, v120);
      sub_232BAE100(&v16[v59]);
      if (!v60)
      {
        v52(v32, &v16[v59], v25);
        sub_232BD70F8(&qword_27DDC7540, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
        v94 = sub_232CE9CF0();
        v95 = *(v125 + 8);
        v95(v32, v25);
        sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
        v96 = sub_232BD71B8();
        (v95)(v96);
        sub_232B13790(v16, &qword_27DDC7398, &unk_232CF9070);
        v35 = v115;
        v53 = 0x27DDC6000;
        if (v94)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
      v61 = sub_232BD71B8();
      v62(v61);
    }

    sub_232B13790(v16, &qword_27DDC7538, &unk_232CFA0F0);
    v35 = v115;
    v53 = 0x27DDC6000uLL;
  }

LABEL_19:
  getLDAsset(for:with:)(0xD00000000000001ELL, 0x8000000232D07A80, v35);
  if (v63)
  {
    v64 = v63;
    v65 = v122;
    sub_232CE9A20();
    v66 = sub_232CE9A00();
    v67 = sub_232CEA1A0();
    v68 = sub_232BC1E54(v67);
    v69 = v117;
    if (v68)
    {
      v70 = sub_232BA73DC();
      *v70 = 0;
      _os_log_impl(&dword_232B02000, v66, v67, "DUIDClassificationImplementation: LinguisticData bundle found, loading model", v70, 2u);
      sub_232BA6A84();
    }

    sub_232BD71C4();
    v71(v65, v69);
    sub_232BD51B0();
    v72 = v125;
    if (*(v53 + 928) != -1)
    {
      sub_232BD7140(&qword_27DDC63A0);
    }

    v73 = sub_232B135C4(v126, qword_27DDD4FC0);
    v74 = v123;
    (*(v72 + 16))(v123, v35, v25);
    sub_232BD71FC();
    sub_232B12504(v75, v76, v77, v78);
    swift_beginAccess();
    sub_232BAD7D0(v74, v73);
    swift_endAccess();

    v79 = sub_232BD71B8();
    v80(v79);
  }

  else
  {
    v81 = v119;
    sub_232CE9A20();
    v82 = sub_232CE9A00();
    v83 = sub_232CEA1A0();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v117;
    if (v84)
    {
      *sub_232BA73DC() = 0;
      sub_232BD71E0();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
      sub_232BD7180();
    }

    sub_232BD71C4();
    v91(v81, v85);
    requestNLAsset(for:)(v116);
    v92 = sub_232BD71B8();
    v93(v92);
  }

LABEL_32:
  sub_232B20A00();
}

void sub_232BD51B0()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_232CE9A30();
  sub_232B48F0C();
  v62[3] = v7;
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  sub_232B20714();
  v62[2] = v8;
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  v11 = v62 - v10;
  MEMORY[0x28223BE20](v12);
  sub_232B20628();
  v62[0] = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  v62[1] = v62 - v15;
  v16 = sub_232CE8B40();
  sub_232B48F0C();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v22 = v21 - v20;
  v23 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v62 - v24;
  v26 = sub_232CE8C00();
  sub_232B13F24();
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v30 = v29 - v28;
  sub_232BD7050(v5, v3, 0x6C65646F6D6C6D2ELL, 0xE900000000000063, v1);
  if (v31)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v32 setComputeUnits_];
    sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
    sub_232B12504(v25, 1, 1, v26);
    (*(v18 + 104))(v22, *MEMORY[0x277CC91D8], v16);
    sub_232CE8BE0();
    v33 = v32;
    v39 = sub_232C13FE8(v30, v33);
    v40 = objc_allocWithZone(MEMORY[0x277CD89D0]);
    v41 = v39;
    v42 = sub_232BD6F4C(v39);
    v43 = [v41 modelDescription];
    v44 = [v43 metadata];

    type metadata accessor for MLModelMetadataKey(0, v45, v46, v47);
    sub_232BD70F8(&qword_2814DF900, type metadata accessor for MLModelMetadataKey, &unk_232CF5CBC);
    v48 = sub_232CE9C40();

    sub_232B1E114(*MEMORY[0x277CBFE98], v48);

    if (v66[3])
    {
      v49 = swift_dynamicCast();
      v50 = v62[0];
      if (v49)
      {
        v52 = v64;
        v51 = v65;
LABEL_11:
        qword_27DDD4FD8 = v52;
        qword_27DDD4FE0 = v51;

        v53 = qword_2814E3E88;
        qword_2814E3E88 = v42;
        v54 = v42;

        sub_232CE9A20();
        v55 = sub_232CE9A00();
        v56 = sub_232CEA1A0();
        if (sub_232BC1E54(v56))
        {
          v57 = sub_232BC1F80();
          v58 = sub_232BD41CC();
          v66[0] = v58;
          *v57 = 136315138;
          if (qword_27DDD4FE0)
          {
            v59 = qword_27DDD4FD8;
          }

          else
          {
            v59 = 0x6E776F6E6B6E75;
          }

          if (qword_27DDD4FE0)
          {
            v60 = qword_27DDD4FE0;
          }

          else
          {
            v60 = 0xE700000000000000;
          }

          v61 = sub_232BAD2D4(v59, v60, v66);

          *(v57 + 4) = v61;
          _os_log_impl(&dword_232B02000, v55, v56, "DUFoundInEventClassificationImplementation: Successfully loaded model. Model description %s", v57, 0xCu);
          sub_232B2040C(v58);
          sub_232BD719C();
          sub_232BA6A84();
        }

        else
        {
        }

        sub_232BD721C();
        v38 = v50;
        goto LABEL_21;
      }
    }

    else
    {
      sub_232B13790(v66, &qword_27DDC68C8, &qword_232CF6210);
      v50 = v62[0];
    }

    v51 = 0xE300000000000000;
    v52 = 7104878;
    goto LABEL_11;
  }

  sub_232CE9A20();
  v34 = sub_232CE9A00();
  v35 = sub_232CEA1C0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = sub_232BA73DC();
    *v36 = 0;
    _os_log_impl(&dword_232B02000, v34, v35, "DUIDClassificationImplementation: Unable to find model URL from DocumentUnderstanding bundle.", v36, 2u);
    sub_232BA6A84();
  }

  sub_232BD721C();
  v38 = v11;
LABEL_21:
  v37(v38, v63);
  sub_232B20A00();
}

uint64_t static DUIDClassificationImplementation.getLoadedModelDescription()(uint64_t a1)
{
  type metadata accessor for DUIDClassificationImplementation();
  sub_232BD4824();
  v1 = qword_27DDD4FD8;

  return v1;
}

uint64_t static DUIDClassificationImplementation.isIDDocument(for:labelKey:labelThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v139 = a4;
  v136 = a1;
  v137 = a2;
  v129 = sub_232CE99B0();
  sub_232B48F0C();
  v128 = v8;
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v127 = v11 - v10;
  sub_232CE9970();
  sub_232B48F0C();
  v144 = v12;
  v145 = v13;
  MEMORY[0x28223BE20](v12);
  sub_232B20714();
  v132 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  v17 = v126 - v16;
  MEMORY[0x28223BE20](v18);
  sub_232BD7208();
  MEMORY[0x28223BE20](v19);
  v21 = v126 - v20;
  v22 = sub_232CE9A30();
  sub_232B48F0C();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_232B20714();
  v143 = v26;
  sub_232B20600();
  MEMORY[0x28223BE20](v27);
  sub_232B20628();
  v131 = v28;
  sub_232B20600();
  MEMORY[0x28223BE20](v29);
  sub_232B20628();
  v126[0] = v30;
  sub_232B20600();
  MEMORY[0x28223BE20](v31);
  sub_232B20628();
  v130 = v32;
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  v35 = v126 - v34;
  sub_232CE99A0();
  sub_232B48F0C();
  v134 = v37;
  v135 = v36;
  MEMORY[0x28223BE20](v36);
  sub_232B20704();
  v40 = v39 - v38;
  if (qword_2814DFA58 != -1)
  {
    sub_232BD7160(&qword_2814DFA58);
  }

  v126[1] = a3;
  v41 = sub_232B135C4(v22, qword_2814E3DC0);
  v42 = *(v24 + 16);
  v138 = v22;
  v42(v35, v41, v22);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v142 = v40;
  v43 = sub_232CE9990();
  v44 = sub_232CEA270();
  v45 = sub_232CEA340();
  v140 = v24;
  if (v45)
  {
    v46 = sub_232BA73DC();
    sub_232BD7228(v46);
    v47 = sub_232CE9960();
    sub_232BD7240(&dword_232B02000, v43, v44, v47, "DUIDClassificationImplementation:isIDDocument", "");
    sub_232BA6A84();
  }

  v49 = v144;
  v48 = v145;
  v50 = *(v145 + 16);
  v50(v5, v21, v144);
  sub_232CE99E0();
  swift_allocObject();
  v133 = sub_232CE99D0();
  v51 = *(v48 + 8);
  v145 = v48 + 8;
  v141 = v51;
  v51(v21, v49);
  sub_232CE9990();
  sub_232CE9950();
  v52 = sub_232CE9990();
  v53 = sub_232CEA270();
  if (sub_232CEA340())
  {
    v54 = sub_232BA73DC();
    sub_232BD7228(v54);
    v55 = sub_232CE9960();
    sub_232BD7240(&dword_232B02000, v52, v53, v55, "DUIDClassificationImplementation:loadCompiledNLModel", "");
    sub_232BA6A84();
  }

  v56 = v144;
  v50(v5, v17, v144);
  swift_allocObject();
  sub_232CE99D0();
  v141(v17, v56);
  v57 = v132;
  if (qword_2814E0C00 != -1)
  {
    swift_once();
  }

  v58 = v138;
  v59 = v142;
  v60 = v143;
  if (byte_27DDC7808 == 1)
  {
    v61 = objc_opt_self();
    v62 = sub_232CE9D20();
    v63 = [v61 dominantLanguageForString_];

    if (v63)
    {
      sub_232CE9A20();
      v64 = sub_232CE9A00();
      v65 = sub_232CEA1E0();
      if (sub_232BC1E54(v65))
      {
        *sub_232BA73DC() = 0;
        sub_232BD71D0();
        _os_log_impl(v66, v67, v68, v69, v70, 2u);
        v60 = v143;
        sub_232BA6A84();
      }

      sub_232BD71F0();
      v131 = v71;
      v71(v130, v58);
      type metadata accessor for DUIDClassificationImplementation();
      sub_232BD4824();
    }

    else
    {
      v81 = v126[0];
      sub_232CE9A20();
      v82 = sub_232CE9A00();
      v83 = sub_232CEA1E0();
      if (sub_232BC1E54(v83))
      {
        v84 = sub_232BA73DC();
        *v84 = 0;
        _os_log_impl(&dword_232B02000, v82, v83, "DUIDClassificationImplementation: LanguageRecognizer failed, skipping multilingual model loading", v84, 2u);
        sub_232BA6A84();

        sub_232BD71F0();
        v86 = v126[0];
      }

      else
      {

        sub_232BD71F0();
        v86 = v81;
      }

      v131 = v85;
      v85(v86, v58);
    }
  }

  else
  {
    sub_232CE9A20();
    v72 = sub_232CE9A00();
    v73 = sub_232CEA1E0();
    if (sub_232BC1E54(v73))
    {
      *sub_232BA73DC() = 0;
      sub_232BD71D0();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      v60 = v143;
      sub_232BA6A84();
    }

    sub_232BD71F0();
    v79 = v131;
    v131 = v80;
    v80(v79, v58);
    type metadata accessor for DUIDClassificationImplementation();
    sub_232BD4824();
  }

  v87 = sub_232CE9990();
  sub_232CE99C0();
  v88 = sub_232CEA260();
  if (sub_232CEA340())
  {

    v89 = v127;
    sub_232CE99F0();

    v90 = v128;
    v91 = v129;
    if ((*(v128 + 88))(v89, v129) == *MEMORY[0x277D85B00])
    {
      v92 = "[Error] Interval already ended";
    }

    else
    {
      (*(v90 + 8))(v89, v91);
      v92 = "";
    }

    v93 = sub_232BA73DC();
    sub_232BD7228(v93);
    v94 = sub_232CE9960();
    sub_232BD7240(&dword_232B02000, v87, v88, v94, "DUIDClassificationImplementation:loadCompiledNLModel", v92);
    sub_232BD719C();
    v60 = v143;
  }

  v141(v57, v144);
  v95 = qword_2814E3E88;
  if (qword_2814E3E88)
  {
    v150[0] = v136;
    v150[1] = v137;
    v148 = 10;
    v149 = 0xE100000000000000;
    v146 = 32;
    v147 = 0xE100000000000000;
    sub_232B48080();
    v96 = v95;
    sub_232CEA3B0();
    v97 = sub_232CEA2C0();

    if (*(v97 + 16))
    {
      sub_232CE9A20();

      v98 = sub_232CE9A00();
      v99 = sub_232CEA1E0();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v150[0] = v145;
        *v100 = 136315394;
        v101 = sub_232BD7234();
        *(v100 + 4) = sub_232BAD2D4(v101, v102, v103);
        *(v100 + 12) = 2080;
        sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_232CF6460;
        v105 = sub_232BD7234();
        v107 = sub_232B1DFEC(v105, v106, v97);
        v108 = MEMORY[0x277D83A80];
        *(v104 + 56) = MEMORY[0x277D839F8];
        *(v104 + 64) = v108;
        if (v109)
        {
          v110 = 0;
        }

        else
        {
          v110 = v107;
        }

        *(v104 + 32) = v110;
        v111 = sub_232CE9D80();
        v113 = sub_232BAD2D4(v111, v112, v150);

        *(v100 + 14) = v113;
        sub_232BD71D0();
        _os_log_impl(v114, v115, v116, v117, v118, 0x16u);
        swift_arrayDestroy();
        sub_232BA6A84();
        sub_232BA6A84();

        v131(v143, v138);
      }

      else
      {

        v131(v60, v58);
      }

      v119 = sub_232BD7234();
      v121 = COERCE_DOUBLE(sub_232B1DFEC(v119, v120, v97));
      v123 = v122;

      if ((v123 & 1) == 0)
      {
        v124 = v121 > a5;
        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v124 = 2;
LABEL_38:
  sub_232BD6CF0();

  (*(v134 + 8))(v59, v135);
  return v124;
}

uint64_t static DUIDClassificationImplementation.isIDDocumentLLM(for:labelThreshold:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  v2[8] = swift_task_alloc();
  v3 = sub_232CE9970();
  v2[9] = v3;
  sub_232B27FBC(v3);
  v2[10] = v4;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_232CE9A30();
  v2[13] = v5;
  sub_232B27FBC(v5);
  v2[14] = v6;
  v2[15] = swift_task_alloc();
  v7 = sub_232CE99A0();
  v2[16] = v7;
  sub_232B27FBC(v7);
  v2[17] = v8;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BD66A8, 0, 0);
}

uint64_t sub_232BD66A8()
{
  v21 = v0;
  if (qword_2814DFA58 != -1)
  {
    sub_232BD7160(&qword_2814DFA58);
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = sub_232B135C4(v3, qword_2814E3DC0);
  (*(v2 + 16))(v1, v4, v3);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v5 = sub_232CE9990();
  v6 = sub_232CEA270();
  if (sub_232CEA340())
  {
    v7 = sub_232BA73DC();
    *v7 = 0;
    v8 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v5, v6, v8, "DUIDClassificationImplementation:isIDDocumentLLM", "", v7, 2u);
    sub_232BD7180();
  }

  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];

  (*(v12 + 16))(v9, v10, v11);
  sub_232CE99E0();
  swift_allocObject();
  v0[19] = sub_232CE99D0();
  (*(v12 + 8))(v10, v11);
  type metadata accessor for DUModelRunner();
  v20 = 3;
  v0[20] = DUModelRunner.__allocating_init(extractionCategory:pid:)(&v20, 0, 1);
  sub_232CE8D50();
  v14 = sub_232CE8E10();
  sub_232B12504(v13, 0, 1, v14);
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_232BD6900;
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[6];

  return sub_232BDE98C(v18, v16, v17);
}

uint64_t sub_232BD6900(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[22] = v2;

  v7 = v6[8];
  if (v2)
  {
    sub_232B13790(v7, &qword_27DDC7398, &unk_232CF9070);

    v8 = sub_232BD6BF4;
  }

  else
  {
    v6[23] = a2;
    v6[24] = a1;
    sub_232B13790(v7, &qword_27DDC7398, &unk_232CF9070);

    v8 = sub_232BD6A98;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_232BD6A98()
{
  v1 = v0[23];
  v0[2] = v0[24];
  v0[3] = v1;
  v0[4] = 0x6E776F6E6B6E75;
  v0[5] = 0xE700000000000000;
  sub_232B48080();
  v2 = sub_232CEA3F0();

  sub_232BD6CF0();

  v3 = sub_232BD7234();
  v4(v3);

  v5 = v0[1];

  return v5((v2 & 1) == 0, 0x3FF0000000000000);
}

uint64_t sub_232BD6BF4(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[16];
  v4 = v1[17];
  swift_willThrow();
  sub_232BD6CF0();

  (*(v4 + 8))(v2, v3);

  v5 = v1[1];

  return v5();
}

void sub_232BD6CF0()
{
  sub_232B35110();
  v1 = v0;
  v23 = v2;
  v3 = sub_232CE99B0();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = sub_232CE9970();
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v16 = v15 - v14;
  v17 = sub_232CE9990();
  sub_232CE99C0();
  v22 = sub_232CEA260();
  if ((sub_232CEA340() & 1) == 0)
  {
LABEL_13:

    (*(v12 + 8))(v16, v10);
    sub_232B20A00();
    return;
  }

  if ((v1 & 1) == 0)
  {
    v18 = v23;
    if (v23)
    {
LABEL_9:

      sub_232CE99F0();

      if ((*(v5 + 88))(v9, v3) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v9, v3);
        v19 = "";
      }

      v20 = sub_232BA73DC();
      sub_232BD7228(v20);
      v21 = sub_232CE9960();
      sub_232BD7240(&dword_232B02000, v17, v22, v21, v18, v19);
      sub_232BD719C();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v18 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

id sub_232BD6F4C(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithMLModel:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_232BD7050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_232CE9D20();
  v7 = sub_232CE9D20();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_232CE9D50();

  return v9;
}

uint64_t sub_232BD70F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232BD7140(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_232BD7160(uint64_t a1)
{

  return swift_once();
}

void sub_232BD7180()
{

  JUMPOUT(0x238393870);
}

void sub_232BD719C()
{

  JUMPOUT(0x238393870);
}

void sub_232BD7240(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

void sub_232BD7258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v1, 0);
    v5 = sub_232B666F4(a1);
    v6 = 0;
    v7 = a1 + 64;
    v23 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v24 = v4;
        v25 = v6;
        v26 = v3;
        v9 = sub_232CE9DD0();
        v11 = v10;
        v13 = *(v27 + 16);
        v12 = *(v27 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_232B649F4(v12 > 1, v13 + 1, 1);
        }

        *(v27 + 16) = v13 + 1;
        v14 = v27 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v26)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (a1 + 72 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_232B48E94(v5, v26, v24 & 1);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_18;
            }
          }

          sub_232B48E94(v5, v26, v24 & 1);
        }

LABEL_18:
        v6 = v25 + 1;
        if (v25 + 1 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

id sub_232BD748C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE9D20();

  v4 = [v2 initWithContentsOfFile_];

  return v4;
}

BOOL sub_232BD7500(uint64_t a1)
{
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CFABE0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000232D07AF0;
  sub_232BD8164();
  *(v4 + 48) = v3 + 4;
  *(v4 + 56) = v5;
  sub_232BD8164();
  *(v7 + 64) = v6 | 3;
  *(v7 + 72) = v8;
  sub_232BD8164();
  *(v9 + 80) = v11;
  *(v9 + 88) = v10;
  sub_232BD8164();
  *(v12 + 96) = v14;
  *(v12 + 104) = v13;
  sub_232BD8164();
  *(v15 + 112) = v16;
  *(v15 + 120) = v17;
  sub_232BD8164();
  *(v19 + 128) = v18 + 7;
  *(v19 + 136) = v20;
  sub_232BD8164();
  *(v22 + 144) = v21 - 1;
  *(v22 + 152) = v23;
  strcpy((v22 + 160), "X-Spam-Status");
  *(v22 + 174) = -4864;
  strcpy((v22 + 176), "X-Spam-Score");
  *(v22 + 189) = 0;
  *(v22 + 190) = -5120;
  *(v22 + 192) = 0x2D73757269562D58;
  *(v22 + 200) = 0xEF64656E6E616353;
  *(v22 + 208) = 0x4449452D47532D58;
  *(v22 + 216) = 0xE800000000000000;
  *(v22 + 224) = 0x797469746E452D58;
  *(v22 + 232) = 0xEB0000000044492DLL;
  strcpy((v22 + 240), "X-Feedback-ID");
  *(v22 + 254) = -4864;
  *(v22 + 256) = 0x44492D47532D58;
  *(v22 + 264) = 0xE700000000000000;
  strcpy((v22 + 272), "X-DMARC-Info");
  *(v22 + 285) = 0;
  *(v22 + 286) = -5120;
  *(v22 + 288) = 0x6E492D4C43492D58;
  *(v22 + 296) = 0xEA00000000006F66;
  *(v22 + 304) = 0x63532D4C43492D58;
  *(v22 + 312) = 0xEB0000000065726FLL;
  *(v22 + 320) = v21 - 4;
  *(v22 + 328) = 0x8000000232D07BF0;
  *(v22 + 336) = 0x412D706F68532D58;
  *(v22 + 344) = 0xEA00000000007070;
  strcpy((v22 + 352), "X-SES-Outgoing");
  *(v22 + 367) = -18;
  *(v22 + 368) = 0x4C4246534D2D58;
  *(v22 + 376) = 0xE700000000000000;
  strcpy((v22 + 384), "X-SFMC-Stack");
  *(v22 + 397) = 0;
  *(v22 + 398) = -5120;
  strcpy((v22 + 400), "X-KMail-Flow");
  *(v22 + 413) = 0;
  *(v22 + 414) = -5120;
  strcpy((v22 + 416), "X-AliDM-Trace");
  *(v22 + 430) = -4864;
  *(v22 + 432) = v21;
  *(v22 + 440) = 0x8000000232D07C10;
  *(v22 + 448) = v21 - 2;
  *(v22 + 456) = 0x8000000232D07C30;
  strcpy((v22 + 464), "X-Campaign-ID");
  *(v22 + 478) = -4864;
  sub_232BD8164();
  *(v24 + 480) = v25;
  *(v24 + 488) = v26;
  strcpy((v24 + 496), "X-MessageKey");
  *(v24 + 509) = 0;
  *(v24 + 510) = -5120;
  strcpy((v24 + 512), "X-Report-Abuse");
  *(v24 + 527) = -18;
  v40 = MEMORY[0x277D84F90];
  sub_232B649F4(0, 31, 0);
  for (i = 0; i != 496; i += 16)
  {
    v28 = sub_232CE9DD0();
    v30 = v29;
    v32 = *(v40 + 16);
    v31 = *(v40 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_232B649F4(v31 > 1, v32 + 1, 1);
    }

    *(v40 + 16) = v32 + 1;
    v33 = v40 + 16 * v32;
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
  }

  swift_setDeallocating();
  sub_232C78884();
  sub_232BD7258(a1);
  v35 = sub_232BDC7F4(v34);
  v36 = sub_232BDC7F4(v40);
  sub_232BDC964(v36, v35);
  v38 = v37;

  return (v38 & 1) == 0;
}

uint64_t sub_232BD7984(uint64_t a1)
{
  type metadata accessor for DUInhumans();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_232BD8000(0x736E616D75686E49, 0xE800000000000000, 0x7473696C70, 0xE500000000000000, v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_232BD80BC();
    v7 = sub_232BD748C(v5, v6);
    if (v7)
    {
      v8 = v7;
      sub_232CE9C30();
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v9 = sub_232CE9A30();
    sub_232B135C4(v9, qword_2814E3DA8);
    v10 = sub_232CE9A00();
    v11 = sub_232CEA1C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "DUInhumans: Failed to load plist dictionary";
LABEL_12:
      _os_log_impl(&dword_232B02000, v10, v11, v13, v12, 2u);
      MEMORY[0x238393870](v12, -1, -1);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v14 = sub_232CE9A30();
    sub_232B135C4(v14, qword_2814E3DA8);
    v10 = sub_232CE9A00();
    v11 = sub_232CEA1C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "DUInhumans: Failed to locate plist bundle";
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_232BD7BA4(uint64_t a1, unint64_t a2)
{
  result = sub_232BD7984(a1);
  if (result)
  {
    sub_232B1E16C(a1, a2, result);

    if (v11[3])
    {
      sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
      sub_232B598F4(v11);
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v5 = sub_232CE9A30();
    sub_232B135C4(v5, qword_2814E3DA8);

    v6 = sub_232CE9A00();
    v7 = sub_232CEA1C0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_232BAD2D4(a1, a2, v11);
      _os_log_impl(&dword_232B02000, v6, v7, "DUInhumans: Failed to locale %s key", v8, 0xCu);
      sub_232B2040C(v9);
      MEMORY[0x238393870](v9, -1, -1);
      MEMORY[0x238393870](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_232BD7D58(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v25 = sub_232B124A8(&qword_27DDC7810, &qword_232CFAC08);
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v21 - v6;
  MEMORY[0x28223BE20](v7);
  v26 = &v21 - v8;
  result = sub_232BD7BA4(0xD000000000000011, 0x8000000232D07AD0);
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    if (v11)
    {
      v12 = 0;
      v23 = (v2 + 8);
      v24 = result;
      v21 = (v2 + 32);
      v22 = v4;
      v13 = result + 40;
      while (v12 < *(v10 + 16))
      {

        sub_232CE9240();
        v14 = v27;
        v15 = v25;
        sub_232CE9230();
        v16 = *v23;
        (*v23)(v4, v15);
        v17 = v11;
        v18 = v26;
        (*v21)(v26, v14, v15);
        v30 = v28;
        v31 = v29;
        sub_232BAD8B0();
        sub_232BD8100();
        v19 = sub_232CE9CC0();
        v20 = v18;
        v11 = v17;
        v4 = v22;
        result = v16(v20, v15);
        v10 = v24;
        if (v19)
        {

          return 1;
        }

        ++v12;
        v13 += 16;
        if (v11 == v12)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return result;
}

uint64_t sub_232BD8000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_232CE9D20();

  v7 = sub_232CE9D20();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_232CE9D50();

  return v9;
}

unint64_t sub_232BD80BC()
{
  result = qword_2814DF930;
  if (!qword_2814DF930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF930);
  }

  return result;
}

unint64_t sub_232BD8100()
{
  result = qword_2814E25B0;
  if (!qword_2814E25B0)
  {
    sub_232B27EEC(&qword_27DDC7810, &qword_232CFAC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E25B0);
  }

  return result;
}

uint64_t sub_232BD8170@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DULanguageTaggingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932220;
  *a1 = result;
  return result;
}

uint64_t sub_232BD81D8()
{
  v1 = *(v0[5] + 24);
  v0[6] = v1;
  if (!v1)
  {
    sub_232B4A95C();
    swift_allocError();
    *v8 = 0xD000000000000015;
    *(v8 + 8) = 0x8000000232D04650;
    *(v8 + 16) = 0;
    goto LABEL_8;
  }

  v2 = sub_232B58240();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v6 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_232CF6460;
      *(v7 + 32) = v4;
      *(v7 + 40) = v5;
LABEL_8:
      v9 = v0[1];

      return v9();
    }

    v12 = v1;
  }

  else
  {
    v11 = v1;
  }

  type metadata accessor for DUConcatenatedDocumentTextSpecification();
  v0[7] = swift_allocObject();
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_232BD8398;
  v14 = v0[5];

  return sub_232B4F570(v14);
}

uint64_t sub_232BD8398(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[9] = a2;

  return MEMORY[0x2822009F8](sub_232BD84BC, 0, 0);
}

uint64_t sub_232BD84BC()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = sub_232CE9D20();

    v4 = [v2 dominantLanguageForString_];

    v5 = v0[6];
    if (v4)
    {
      v6 = sub_232CE9D50();
      v8 = v7;

      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_232CF6460;
      *(v9 + 32) = v6;
      *(v9 + 40) = v8;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v10 = v0[6];
    sub_232B4A95C();
    v9 = swift_allocError();
    *v11 = 0xD000000000000031;
    *(v11 + 8) = 0x8000000232D07CC0;
    *(v11 + 16) = 0;
  }

  v12 = v0[1];

  return v12(v9, v1 == 0);
}

uint64_t sub_232BD8680(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232BD81B8(a2);
}

double sub_232BD876C(uint64_t a1)
{
  sub_232B26BFC(a1);

  return result;
}

uint64_t sub_232BD880C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags, v5);
  *(v1 + v3) = a1;
}

void *sub_232BD890C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BD89A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232BD89F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BD89A4(v1);
}

char *sub_232BD8A74(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v36 = v5 - v4;
  v6 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v18 = (v17 - v16);
  v19 = [objc_allocWithZone(type metadata accessor for DULanguageTaggingResponse()) init];
  sub_232BD9F28(a1, v18);
  v20 = *v18;
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  sub_232B13F5C(&v19[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags], v38);
  *&v19[v21] = v20;

  v22 = *(v15 + 32);
  sub_232B21B7C(v18 + v22, v13);
  if (sub_232B12480(v13, 1, v2) == 1)
  {
    sub_232BD9438(a1);
    sub_232BD9438(v18);
    sub_232B13790(v13, &qword_27DDC67C8, &unk_232CF5E70);
  }

  else
  {
    v23 = a1;
    sub_232B13790(v13, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B21B7C(v18 + v22, v10);
    v24 = sub_232BD9FD4();
    if (sub_232B12480(v24, v25, v2) == 1)
    {
      v26 = v36;
      sub_232CE9330();
      v27 = (v26 + *(v2 + 20));
      *v27 = 0;
      v27[1] = 0;
      v28 = sub_232BD9FD4();
      if (sub_232B12480(v28, v29, v2) != 1)
      {
        sub_232B13790(v10, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BD9FA4();
      sub_232BD9494(v10, v36, v30);
    }

    v31 = sub_232B4C530();
    sub_232BD9438(v23);
    sub_232BD9438(v18);
    v32 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
    sub_232B13F5C(&v19[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo], v37);
    v33 = *&v19[v32];
    *&v19[v32] = v31;
  }

  return v19;
}

char *sub_232BD8D20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [objc_allocWithZone(v2) init];
  sub_232BD9F28(a1, v15);
  v17 = *v15;
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  swift_beginAccess();
  *&v16[v18] = v17;

  v19 = *(v13 + 32);
  sub_232B21B7C(v15 + v19, v11);
  if (sub_232B12480(v11, 1, v4) == 1)
  {
    sub_232BD9438(a1);
    sub_232BD9438(v15);
    sub_232B13790(v11, &qword_27DDC67C8, &unk_232CF5E70);
  }

  else
  {
    v20 = a1;
    sub_232B13790(v11, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B21B7C(v15 + v19, v8);
    if (sub_232B12480(v8, 1, v4) == 1)
    {
      v21 = v28;
      sub_232CE9330();
      v22 = (v21 + *(v4 + 20));
      *v22 = 0;
      v22[1] = 0;
      if (sub_232B12480(v8, 1, v4) != 1)
      {
        sub_232B13790(v8, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BD9494(v8, v28, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    }

    v23 = sub_232B4C530();
    sub_232BD9438(v20);
    sub_232BD9438(v15);
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
    swift_beginAccess();
    v25 = *&v16[v24];
    *&v16[v24] = v23;
  }

  return v16;
}

char *DULanguageTaggingResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v48 = v8 - v7;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B3516C();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v18 = sub_232B2D120(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = *(a2 - 8);
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v25 = v24 - v23;
  v26 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v30 = (v29 - v28);
  v31 = [objc_allocWithZone(v3) init];
  (*(v21 + 16))(v25, a1, a2);
  if (swift_dynamicCast())
  {
    v47 = a1;
    sub_232B12504(v20, 0, 1, v26);
    sub_232BD9FBC();
    sub_232BD9494(v20, v30, v32);
    v33 = *v30;
    v34 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
    sub_232B13F5C(&v31[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags], v51);
    *&v31[v34] = v33;

    v35 = *(v26 + 24);
    sub_232B21B7C(v30 + v35, v16);
    v36 = v49;
    LODWORD(v33) = sub_232B12480(v16, 1, v49);
    sub_232B13790(v16, &qword_27DDC67C8, &unk_232CF5E70);
    if (v33 == 1)
    {
      (*(v21 + 8))(v47, a2);
      sub_232BD9438(v30);
    }

    else
    {
      sub_232B21B7C(v30 + v35, v13);
      v37 = sub_232B12480(v13, 1, v36);
      v38 = v47;
      if (v37 == 1)
      {
        v39 = v48;
        sub_232CE9330();
        v40 = (v39 + *(v36 + 20));
        *v40 = 0;
        v40[1] = 0;
        if (sub_232B12480(v13, 1, v36) != 1)
        {
          sub_232B13790(v13, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232BD9FA4();
        sub_232BD9494(v13, v48, v41);
      }

      v42 = sub_232B4C530();
      (*(v21 + 8))(v38, a2);
      sub_232BD9438(v30);
      v43 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
      sub_232B13F5C(&v31[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo], v50);
      v44 = *&v31[v43];
      *&v31[v43] = v42;
    }
  }

  else
  {
    (*(v21 + 8))(a1, a2);

    sub_232B12504(v20, 1, 1, v26);
    sub_232B13790(v20, &qword_27DDC7828, &unk_232CFBAC0);
    return 0;
  }

  return v31;
}

uint64_t sub_232BD9438(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BD9494(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

double sub_232BD94F4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v5 = sub_232B2D120(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v36[-v6];
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v36[-v17];
  v19 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v23 = (v22 - v21);
  *(v22 - v21) = MEMORY[0x277D84F90];
  sub_232CE9330();
  v24 = *(v20 + 32);
  sub_232BD9FE0(v23 + v24, 1);
  v25 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
  swift_beginAccess();
  v26 = *(v2 + v25);
  if (!v26)
  {
    v31 = sub_232BD9FD4();
    sub_232BD9FE0(v31, v32);
    goto LABEL_5;
  }

  v27 = v26;
  sub_232B55A40(v15);

  v28 = swift_dynamicCast();
  sub_232BD9FE0(v7, v28 ^ 1u);
  v29 = sub_232BD9FD4();
  if (sub_232B12480(v29, v30, v8) == 1)
  {
LABEL_5:
    sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_6;
  }

  sub_232BD9494(v7, v18, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232BD9494(v18, v12, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B13790(v23 + v24, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232BD9494(v12, v23 + v24, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232BD9FE0(v23 + v24, 0);
LABEL_6:
  v33 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  swift_beginAccess();
  *v23 = *(v2 + v33);
  sub_232BD9FBC();
  sub_232BD9494(v23, a1, v34);

  return result;
}

char *sub_232BD97A4@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BD94F4(v5 - v4);
  v7 = sub_232BD8A74(v6);
  result = sub_232B124A8(&qword_27DDC7830, &qword_232CFAC60);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232BD9898(void *a1)
{
  type metadata accessor for DULanguageTaggingResponse();
  sub_232BD9F8C();
  sub_232BD9EE0(v2, v3, v4, &protocol conformance descriptor for DULanguageTaggingResponse);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DULanguageTaggingResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BD9F8C();
  sub_232BD9EE0(v2, v3, v4, &protocol conformance descriptor for DULanguageTaggingResponse);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B4D64C(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B4D64C(v6);
  return v5;
}

id DULanguageTaggingResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DULanguageTaggingResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DULanguageTaggingResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DULanguageTaggingResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DULanguageTaggingResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232BD9CA4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BD8D20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BD9EE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232BD9F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BD9FE0(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

uint64_t sub_232BDA058(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  v4 = swift_task_alloc();
  *(v2 + 120) = v4;
  *v4 = v2;
  v4[1] = sub_232BDA108;

  return sub_232B5027C(a2);
}

uint64_t sub_232BDA108(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_232BDA208, 0, 0);
}

uint64_t sub_232BDA208()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[14];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(v2 + v3);
      v6 = v5;
    }

    else
    {
      v6 = [objc_allocWithZone(type metadata accessor for DULanguageTaggingResponse()) init];
      v5 = 0;
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = v6;
    v7 = v6;
    v8 = v5;

    v9 = *(v2 + v3);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
      swift_beginAccess();
      v11 = *(v9 + v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v12 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
    swift_beginAccess();
    *&v7[v12] = v11;

    v13 = *(v2 + v3);
    if (v13)
    {
      swift_beginAccess();
      v14 = v13;
      sub_232C5E194(v1);
      swift_endAccess();
    }

    else
    {
    }
  }

  v15 = v0[1];

  return v15();
}

id sub_232BDA3A0()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 1;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BDA3FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232BDA058(a1, a2);
}

void getNLAssetLocale(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_232CE9A30();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (v10)
  {
    v11 = v10;
    sub_232CE9A20();
    v12 = v11;
    v13 = sub_232CE9A00();
    v14 = sub_232CEA1A0();
    if (os_log_type_enabled(v13, v14))
    {
      v28 = a2;
      v15 = sub_232BC1F80();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v17 = sub_232BDB73C(v12);
      v19 = v18;

      if (!v19)
      {
LABEL_12:
        __break(1u);
        return;
      }

      v20 = sub_232BAD2D4(v17, v19, &v29);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_232B02000, v13, v14, "DULDAssetUtils: embedding asset locale identifier %s", v15, 0xCu);
      sub_232B2040C(v16);
      sub_232BA6A84();
      sub_232BA6A84();

      (*(v6 + 8))(v9, v4);
      a2 = v28;
    }

    else
    {

      (*(v6 + 8))(v9, v4);
    }

    sub_232BDB73C(v12);
    if (v26)
    {
      sub_232CE8D50();

      v27 = sub_232CE8E10();
      sub_232B12504(a2, 0, 1, v27);
      sub_232B20A00();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_232CE8E10();
  sub_232B20A00();

  sub_232B12504(v21, v22, v23, v24);
}