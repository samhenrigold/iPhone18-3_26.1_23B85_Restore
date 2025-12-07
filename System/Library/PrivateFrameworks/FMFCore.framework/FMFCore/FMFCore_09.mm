void sub_24A442D8C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v85 = a3;
  v86 = a4;
  v8 = type metadata accessor for FMReverseGeocodingRequest(0);
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v79 - v11;
  MEMORY[0x28223BE20](v12);
  v80 = &v79 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  v83 = a1[2];
  v20 = sub_24A448010();
  v22 = v21;
  v23 = qword_27EF400D8;
  swift_beginAccess();
  v87 = v23;
  if (*(*(v5 + v23) + 16))
  {

    sub_24A39B2C8(v20, v22);
    v25 = v24;

    if (v25)
    {
      if (qword_27EF3EC00 != -1)
      {
        swift_once();
      }

      v26 = sub_24A4AB630();
      sub_24A378E18(v26, qword_27EF4E278);
      sub_24A446A98(a1, v19, type metadata accessor for FMReverseGeocodingRequest);

      v27 = sub_24A4AB600();
      v28 = sub_24A4ABCE0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v92[0] = v30;
        *v29 = 136315394;
        v31 = sub_24A4AC420();
        v33 = sub_24A37BD58(v31, v32, v92);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        v34 = FMReverseGeocodingRequest.debugDescription.getter();
        v36 = v35;
        sub_24A447020(v19, type metadata accessor for FMReverseGeocodingRequest);
        v37 = sub_24A37BD58(v34, v36, v92);

        *(v29 + 14) = v37;
        _os_log_impl(&dword_24A376000, v27, v28, "%s: Loading declined, we are already processing similar location: %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v30, -1, -1);
        v38 = v29;
LABEL_21:
        MEMORY[0x24C219130](v38, -1, -1);
LABEL_22:

        return;
      }

      sub_24A447020(v19, type metadata accessor for FMReverseGeocodingRequest);
      return;
    }
  }

  else
  {
  }

  if (a2)
  {
LABEL_11:
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v39 = sub_24A4AB630();
    sub_24A378E18(v39, qword_27EF4E278);
    sub_24A446A98(a1, v16, type metadata accessor for FMReverseGeocodingRequest);

    v40 = sub_24A4AB600();
    v41 = sub_24A4ABCE0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v92[0] = v80;
      *v42 = 136315394;
      v43 = sub_24A4AC420();
      v45 = sub_24A37BD58(v43, v44, v92);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = FMReverseGeocodingRequest.debugDescription.getter();
      v48 = v47;
      sub_24A447020(v16, type metadata accessor for FMReverseGeocodingRequest);
      v49 = sub_24A37BD58(v46, v48, v92);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_24A376000, v40, v41, "%s: Loading new address for %s", v42, 0x16u);
      v50 = v80;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v50, -1, -1);
      MEMORY[0x24C219130](v42, -1, -1);
    }

    else
    {

      sub_24A447020(v16, type metadata accessor for FMReverseGeocodingRequest);
    }

    v51 = v84;
    sub_24A446A98(a1, v84, type metadata accessor for FMReverseGeocodingRequest);
    v52 = v82;
    sub_24A446A98(a1, v82, type metadata accessor for FMReverseGeocodingRequest);
    v53 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v5;
    sub_24A44680C(v52, v54 + v53);
    v55 = (v54 + ((v9 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
    v57 = v85;
    v56 = v86;
    *v55 = v85;
    v55[1] = v56;
    v58 = type metadata accessor for FMReverseGeocodingOperation(0);
    v59 = objc_allocWithZone(v58);
    v59[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation__isFinished] = 0;
    sub_24A446A98(v51, &v59[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_request], type metadata accessor for FMReverseGeocodingRequest);
    v60 = &v59[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_completion];
    *v60 = sub_24A446E0C;
    v60[1] = v54;

    sub_24A3C8498(v57, v56);
    v89.receiver = v59;
    v89.super_class = v58;
    v61 = objc_msgSendSuper2(&v89, sel_init);
    sub_24A447020(v51, type metadata accessor for FMReverseGeocodingRequest);
    [*(v5 + qword_27EF400E8) addOperation_];
    v62 = sub_24A448010();
    v64 = v63;
    v65 = v87;
    swift_beginAccess();
    v27 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = *(v5 + v65);
    *(v5 + v65) = 0x8000000000000000;
    sub_24A430A8C(v27, v62, v64, isUniquelyReferenced_nonNull_native);

    *(v5 + v65) = v90[0];
    swift_endAccess();
    goto LABEL_22;
  }

  sub_24A441BE4(a1, v91);
  memcpy(v92, v91, sizeof(v92));
  if (sub_24A3D77F8(v92) == 1)
  {
    memcpy(v90, v91, sizeof(v90));
    sub_24A37EF2C(v90, &unk_27EF404E0, &unk_24A4B5230);
    goto LABEL_11;
  }

  memcpy(v90, v91, sizeof(v90));
  sub_24A37EF2C(v90, &unk_27EF404E0, &unk_24A4B5230);
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v67 = sub_24A4AB630();
  sub_24A378E18(v67, qword_27EF4E278);
  v68 = v80;
  sub_24A446A98(a1, v80, type metadata accessor for FMReverseGeocodingRequest);

  v27 = sub_24A4AB600();
  v69 = sub_24A4ABCE0();

  if (os_log_type_enabled(v27, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v88 = v71;
    *v70 = 136315394;
    v72 = sub_24A4AC420();
    v74 = sub_24A37BD58(v72, v73, &v88);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2080;
    v75 = FMReverseGeocodingRequest.debugDescription.getter();
    v77 = v76;
    sub_24A447020(v68, type metadata accessor for FMReverseGeocodingRequest);
    v78 = sub_24A37BD58(v75, v77, &v88);

    *(v70 + 14) = v78;
    _os_log_impl(&dword_24A376000, v27, v69, "%s: Loading declined, we have already processed similar location: %s", v70, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v71, -1, -1);
    v38 = v70;
    goto LABEL_21;
  }

  sub_24A447020(v68, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A443764(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a1;
  v33 = sub_24A4AB690();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMReverseGeocodingRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + qword_27EF400F0);
  sub_24A446A98(a4, v17, type metadata accessor for FMReverseGeocodingRequest);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a2;
  sub_24A44680C(v17, v20 + v18);
  v21 = (v20 + v19);
  v23 = v30;
  v22 = v31;
  *v21 = v30;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_24A446EC0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89160;
  v24 = _Block_copy(aBlock);

  v25 = a2;
  sub_24A3C8498(v23, v22);
  swift_unknownObjectRetain();
  sub_24A4AB6B0();
  v37 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  v26 = v33;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v13, v10, v24);
  _Block_release(v24);
  (*(v36 + 8))(v10, v26);
  (*(v34 + 8))(v13, v35);
}

uint64_t sub_24A443AE4(void *a1, void *a2, uint64_t *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v143 = a2;
  v11 = sub_24A4AB690();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v137 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB6E0();
  v136 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v135 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AB6A0();
  v133 = *(v16 - 8);
  v134 = v16;
  MEMORY[0x28223BE20](v16);
  v132 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AAAD0();
  v129 = *(v18 - 8);
  v130 = v18;
  MEMORY[0x28223BE20](v18);
  v128 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v20 - 8);
  v124 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v131 = &v123 - v23;
  MEMORY[0x28223BE20](v24);
  v138 = &v123 - v25;
  v26 = qword_27EF400E0;
  v27 = *(a1 + qword_27EF400E0);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v142 = a3;
    v139 = a5;
    *(a1 + qword_27EF400E0) = v29;
    if (qword_27EF3EC00 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v30 = sub_24A4AB630();
  v31 = sub_24A378E18(v30, qword_27EF4E278);
  swift_retain_n();
  v140 = v31;
  v32 = sub_24A4AB600();
  v33 = sub_24A4ABCE0();
  v34 = os_log_type_enabled(v32, v33);
  v141 = a4;
  v126 = v12;
  v127 = v11;
  v125 = v14;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v149[0] = v36;
    *v35 = 136315394;
    v37 = sub_24A4AC420();
    v39 = a6;
    v40 = sub_24A37BD58(v37, v38, v149);

    *(v35 + 4) = v40;
    a6 = v39;
    *(v35 + 12) = 2048;
    v41 = *(a1 + v26);

    *(v35 + 14) = v41;

    _os_log_impl(&dword_24A376000, v32, v33, "%s: Total operations processed: %ld.", v35, 0x16u);
    sub_24A37EEE0(v36);
    MEMORY[0x24C219130](v36, -1, -1);
    MEMORY[0x24C219130](v35, -1, -1);
  }

  else
  {
  }

  v42 = *(a1 + v26);
  v44 = v142;
  v43 = v143;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v42 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
  {
    sub_24A4AAA70();
    v61 = v60;

    v62 = sub_24A4AB600();
    v63 = sub_24A4ABCE0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v149[0] = v65;
      *v64 = 136315394;
      v66 = sub_24A4AC420();
      v68 = a6;
      v69 = sub_24A37BD58(v66, v67, v149);

      *(v64 + 4) = v69;
      a6 = v68;
      v43 = v143;
      *(v64 + 12) = 2048;
      *(v64 + 14) = v42 / fabs(v61);
      _os_log_impl(&dword_24A376000, v62, v63, "%s: Current throughput: %f requests per second.", v64, 0x16u);
      sub_24A37EEE0(v65);
      MEMORY[0x24C219130](v65, -1, -1);
      v70 = v64;
      v44 = v142;
      MEMORY[0x24C219130](v70, -1, -1);
    }

    if (v43)
    {
      goto LABEL_8;
    }
  }

  else if (v143)
  {
LABEL_8:
    v45 = v138;
    sub_24A446A98(v44, v138, type metadata accessor for FMReverseGeocodingRequest);
    v46 = v43;
    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCE0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v149[0] = v50;
      *v49 = 136315394;
      v51 = FMReverseGeocodingRequest.debugDescription.getter();
      v52 = v45;
      v54 = v53;
      sub_24A447020(v52, type metadata accessor for FMReverseGeocodingRequest);
      v55 = sub_24A37BD58(v51, v54, v149);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      swift_getErrorValue();
      v56 = sub_24A4AC310();
      v58 = sub_24A37BD58(v56, v57, v149);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_24A376000, v47, v48, "FMReverseGeocodingCache: Geocoding error: %s for request: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v50, -1, -1);
      v59 = v49;
LABEL_10:
      MEMORY[0x24C219130](v59, -1, -1);

      goto LABEL_19;
    }

    v94 = v45;
    goto LABEL_18;
  }

  if (!a6)
  {
    v100 = v124;
    sub_24A446A98(v44, v124, type metadata accessor for FMReverseGeocodingRequest);

    v47 = sub_24A4AB600();
    v101 = sub_24A4ABCE0();

    if (os_log_type_enabled(v47, v101))
    {
      v102 = swift_slowAlloc();
      v103 = v100;
      v104 = swift_slowAlloc();
      v149[0] = v104;
      *v102 = 136315394;
      v105 = sub_24A4AC420();
      v107 = sub_24A37BD58(v105, v106, v149);

      *(v102 + 4) = v107;
      *(v102 + 12) = 2080;
      v108 = FMReverseGeocodingRequest.debugDescription.getter();
      v110 = v109;
      sub_24A447020(v103, type metadata accessor for FMReverseGeocodingRequest);
      v111 = sub_24A37BD58(v108, v110, v149);

      *(v102 + 14) = v111;
      _os_log_impl(&dword_24A376000, v47, v101, "%s: No map items received for request: %s", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v104, -1, -1);
      v59 = v102;
      goto LABEL_10;
    }

    v94 = v100;
LABEL_18:
    sub_24A447020(v94, type metadata accessor for FMReverseGeocodingRequest);
LABEL_19:
    v95 = sub_24A448010();
    v97 = v96;
    swift_beginAccess();
    sub_24A4A38B4(0, v95, v97);
    result = swift_endAccess();
    v99 = v141;
    if (v141)
    {
      sub_24A3BAFB0(v148);
      memcpy(v147, v148, sizeof(v147));
      v99(v147);
      memcpy(v149, v147, 0x130uLL);
      return sub_24A37EF2C(v149, &unk_27EF404E0, &unk_24A4B5230);
    }

    return result;
  }

  v71 = swift_unknownObjectRetain_n();
  FMFAddress.init(mapItem:)(v71, v146);
  v72 = sub_24A448010();
  v74 = v73;
  swift_beginAccess();
  sub_24A4A38B4(0, v72, v74);
  swift_endAccess();
  v75 = v128;
  sub_24A4AAAC0();
  memcpy(v149, v146, 0x130uLL);
  sub_24A441270(v44, v149, v75);
  (*(v129 + 8))(v75, v130);
  v76 = v44;
  v77 = v131;
  sub_24A446A98(v76, v131, type metadata accessor for FMReverseGeocodingRequest);
  memcpy(v148, v146, sizeof(v148));

  sub_24A3E5340(v148, v147);
  v78 = sub_24A4AB600();
  v79 = sub_24A4ABCE0();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v143 = a6;
    v82 = v81;
    v145[0] = v81;
    *v80 = 136315650;
    v83 = sub_24A4AC420();
    v85 = sub_24A37BD58(v83, v84, v145);

    *(v80 + 4) = v85;
    *(v80 + 12) = 2080;
    v86 = FMReverseGeocodingRequest.debugDescription.getter();
    v88 = v87;
    sub_24A447020(v77, type metadata accessor for FMReverseGeocodingRequest);
    v89 = sub_24A37BD58(v86, v88, v145);

    *(v80 + 14) = v89;
    *(v80 + 22) = 2080;
    memcpy(v147, v148, sizeof(v147));
    v90 = FMFAddress.debugDescription.getter();
    v92 = v91;
    sub_24A3D785C(v148);
    v93 = sub_24A37BD58(v90, v92, v145);

    *(v80 + 24) = v93;
    _os_log_impl(&dword_24A376000, v78, v79, "%s: address received for request: %s - %s", v80, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v82, -1, -1);
    MEMORY[0x24C219130](v80, -1, -1);
  }

  else
  {
    sub_24A3D785C(v148);

    sub_24A447020(v77, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A3785D4();
  v113 = v132;
  v112 = v133;
  v114 = v134;
  (*(v133 + 104))(v132, *MEMORY[0x277D851C8], v134);
  v115 = sub_24A4ABDA0();
  (*(v112 + 8))(v113, v114);
  memcpy(v145, v146, sizeof(v145));
  v116 = swift_allocObject();
  v116[2] = a1;
  memcpy(v116 + 3, v146, 0x130uLL);
  v117 = v141;
  v118 = v139;
  v116[41] = v141;
  v116[42] = v118;
  v144[4] = sub_24A447010;
  v144[5] = v116;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 1107296256;
  v144[2] = sub_24A388564;
  v144[3] = &unk_285D891B0;
  v119 = _Block_copy(v144);

  sub_24A3E5340(v145, v147);
  sub_24A3C8498(v117, v118);
  v120 = v135;
  sub_24A4AB6B0();
  v147[0] = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  v121 = v137;
  v122 = v127;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v120, v121, v119);
  _Block_release(v119);
  swift_unknownObjectRelease();

  (*(v126 + 8))(v121, v122);
  (*(v136 + 8))(v120, v125);
  memcpy(v147, v146, sizeof(v147));
  sub_24A3D785C(v147);
}

uint64_t sub_24A4449A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a3;
  v7 = sub_24A4AB690();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A4AB6E0();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMReverseGeocodingRequest(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(v4 + qword_27EF400F0);
  sub_24A446A98(a1, v16, type metadata accessor for FMReverseGeocodingRequest);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  sub_24A44680C(v16, v19 + v17);
  v20 = (v19 + v18);
  v21 = v25;
  *v20 = a2;
  v20[1] = v21;
  aBlock[4] = sub_24A446B70;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D88FF8;
  v22 = _Block_copy(aBlock);

  sub_24A3C8498(a2, v21);
  sub_24A4AB6B0();
  v28 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v9, v22);
  _Block_release(v22);
  (*(v27 + 8))(v9, v7);
  (*(v10 + 8))(v12, v26);
}

void sub_24A444CFC(void *a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v52 = a4;
  v7 = type metadata accessor for FMReverseGeocodingRequest(0);
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = sub_24A448010();
  v15 = v14;
  v16 = qword_27EF400D8;
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (!*(v17 + 16))
  {

    if (!a3)
    {
      return;
    }

LABEL_10:
    sub_24A441BE4(a2, v53);
    a3(v53);
    memcpy(v54, v53, sizeof(v54));
    sub_24A37EF2C(v54, &unk_27EF404E0, &unk_24A4B5230);
    return;
  }

  v18 = sub_24A39B2C8(v13, v15);
  if ((v19 & 1) == 0)
  {

    if (!a3)
    {
      return;
    }

    goto LABEL_10;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  sub_24A378E18(v21, qword_27EF4E278);
  sub_24A446A98(a2, v12, type metadata accessor for FMReverseGeocodingRequest);
  v22 = v20;

  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = v24;
    v26 = v25;
    v49 = swift_slowAlloc();
    v54[0] = v49;
    *v26 = 136315650;
    v27 = sub_24A4AC420();
    v47 = v23;
    v29 = sub_24A37BD58(v27, v28, v54);
    v50 = v22;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = FMReverseGeocodingRequest.debugDescription.getter();
    v33 = sub_24A37BD58(v31, v32, v54);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2080;
    v34 = FMReverseGeocodingRequest.debugDescription.getter();
    v36 = v35;
    sub_24A447020(v12, type metadata accessor for FMReverseGeocodingRequest);
    v37 = sub_24A37BD58(v34, v36, v54);
    v22 = v50;

    *(v26 + 24) = v37;
    v38 = v47;
    _os_log_impl(&dword_24A376000, v47, v48, "%s: Attaching to an existing operation: %s, source: %s", v26, 0x20u);
    v39 = v49;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v39, -1, -1);
    MEMORY[0x24C219130](v26, -1, -1);
  }

  else
  {

    sub_24A447020(v12, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A446A98(a2, v9, type metadata accessor for FMReverseGeocodingRequest);
  v40 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  sub_24A44680C(v9, v41 + v40);
  v42 = (v41 + ((v8 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  v43 = v52;
  *v42 = a3;
  v42[1] = v43;
  v54[4] = sub_24A446B88;
  v54[5] = v41;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 1107296256;
  v54[2] = sub_24A388564;
  v54[3] = &unk_285D89048;
  v44 = _Block_copy(v54);
  v45 = objc_opt_self();

  sub_24A3C8498(a3, v43);
  v46 = [v45 blockOperationWithBlock_];
  _Block_release(v44);

  [v46 addDependency_];
  [*(a1 + qword_27EF400E8) addOperation_];
}

uint64_t sub_24A44527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = sub_24A4AB690();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A4AB6E0();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMReverseGeocodingRequest(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(a1 + qword_27EF400F0);
  sub_24A446A98(a2, v16, type metadata accessor for FMReverseGeocodingRequest);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_24A44680C(v16, v19 + v17);
  v20 = (v19 + v18);
  v21 = v25;
  *v20 = a3;
  v20[1] = v21;
  aBlock[4] = sub_24A446BA0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89098;
  v22 = _Block_copy(aBlock);

  sub_24A3C8498(a3, v21);
  sub_24A4AB6B0();
  v28 = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v9, v22);
  _Block_release(v22);
  (*(v27 + 8))(v9, v7);
  (*(v10 + 8))(v12, v26);
}

uint64_t sub_24A4455D8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v72 = a4;
  v6 = sub_24A4AB690();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24A4AB6E0();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6A0();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AAAD0();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v63 - v20;
  v79 = a2;
  v63 = a2[2];
  v22 = sub_24A448010();
  v24 = v23;
  v25 = qword_27EF400C8;
  swift_beginAccess();
  v26 = *(a1 + v25);
  if (*(v26 + 16) && (, v27 = sub_24A39B2C8(v22, v24), v29 = v28, , (v29 & 1) != 0))
  {
    sub_24A37B740(*(v26 + 56) + *(v16 + 72) * v27, v21, &qword_27EF403A8, &qword_24A4BA760);

    v30 = 0;
  }

  else
  {

    v30 = 1;
  }

  (*(v16 + 56))(v21, v30, 1, v15);
  if ((*(v16 + 48))(v21, 1, v15))
  {
    sub_24A37EF2C(v21, &qword_27EF404F0, qword_24A4BA768);
    sub_24A3BAFB0(v84);
  }

  else
  {
    sub_24A37B740(v21, v18, &qword_27EF403A8, &qword_24A4BA760);
    sub_24A37EF2C(v21, &qword_27EF404F0, qword_24A4BA768);
    memcpy(v83, &v18[*(v15 + 48)], sizeof(v83));
    sub_24A3E5340(v83, v85);
    sub_24A37EF2C(v18, &qword_27EF403A8, &qword_24A4BA760);
    memcpy(v85, v83, 0x130uLL);
    nullsub_1();
    memcpy(v84, v85, 0x130uLL);
  }

  v31 = v67;
  if (qword_27EF3EC00 != -1)
  {
    swift_once();
  }

  v32 = sub_24A4AB630();
  sub_24A378E18(v32, qword_27EF4E278);
  sub_24A446A98(v79, v31, type metadata accessor for FMReverseGeocodingRequest);
  sub_24A37B740(v84, v85, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A37B740(v84, v85, &unk_27EF404E0, &unk_24A4B5230);

  v33 = sub_24A4AB600();
  v34 = sub_24A4ABCE0();

  sub_24A37EF2C(v84, &unk_27EF404E0, &unk_24A4B5230);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v80 = v36;
    *v35 = 136315650;
    v37 = sub_24A4AC420();
    v39 = sub_24A37BD58(v37, v38, &v80);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = FMReverseGeocodingRequest.debugDescription.getter();
    v42 = v41;
    sub_24A447020(v31, type metadata accessor for FMReverseGeocodingRequest);
    v43 = sub_24A37BD58(v40, v42, &v80);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    memcpy(v83, v84, sizeof(v83));
    memcpy(v85, v84, 0x130uLL);
    if (sub_24A3D77F8(v85) == 1)
    {
      memcpy(v82, v83, sizeof(v82));
      sub_24A37B740(v84, v81, &unk_27EF404E0, &unk_24A4B5230);
      sub_24A37EF2C(v82, &unk_27EF404E0, &unk_24A4B5230);
      sub_24A37EF2C(v84, &unk_27EF404E0, &unk_24A4B5230);
      v44 = 0xE400000000000000;
      v45 = 1701736302;
    }

    else
    {
      sub_24A37B740(v84, v82, &unk_27EF404E0, &unk_24A4B5230);
      v46 = FMFAddress.debugDescription.getter();
      v44 = v47;
      memcpy(v82, v83, sizeof(v82));
      sub_24A3D785C(v82);
      sub_24A37EF2C(v84, &unk_27EF404E0, &unk_24A4B5230);
      v45 = v46;
    }

    v48 = sub_24A37BD58(v45, v44, &v80);

    *(v35 + 24) = v48;
    _os_log_impl(&dword_24A376000, v33, v34, "%s: Existing operation completed, notifying the duplicate: %s - %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v36, -1, -1);
    MEMORY[0x24C219130](v35, -1, -1);
  }

  else
  {
    sub_24A37EF2C(v84, &unk_27EF404E0, &unk_24A4B5230);

    sub_24A447020(v31, type metadata accessor for FMReverseGeocodingRequest);
  }

  memcpy(v83, v84, sizeof(v83));
  if (sub_24A3D77F8(v83) != 1)
  {
    memcpy(v85, v84, 0x130uLL);
    memcpy(v82, v84, sizeof(v82));
    sub_24A3E5340(v82, v81);
    v49 = [v63 timestamp];
    v50 = v64;
    sub_24A4AAAA0();

    sub_24A441270(v79, v85, v50);
    sub_24A37EF2C(v84, &unk_27EF404E0, &unk_24A4B5230);
    (*(v65 + 8))(v50, v66);
  }

  sub_24A3785D4();
  v52 = v68;
  v51 = v69;
  v53 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x277D851C8], v70);
  v54 = sub_24A4ABDA0();
  (*(v51 + 8))(v52, v53);
  v55 = swift_allocObject();
  v57 = v71;
  v56 = v72;
  v55[2] = v71;
  v55[3] = v56;
  memcpy(v55 + 4, v84, 0x130uLL);
  v81[4] = sub_24A446C60;
  v81[5] = v55;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 1107296256;
  v81[2] = sub_24A388564;
  v81[3] = &unk_285D890E8;
  v58 = _Block_copy(v81);
  sub_24A37B740(v84, v82, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A3C8498(v57, v56);
  v59 = v73;
  sub_24A4AB6B0();
  v82[0] = MEMORY[0x277D84F90];
  sub_24A446B18();
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  v60 = v75;
  v61 = v78;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v59, v60, v58);
  _Block_release(v58);

  sub_24A37EF2C(v84, &unk_27EF404E0, &unk_24A4B5230);
  (*(v77 + 8))(v60, v61);
  (*(v74 + 8))(v59, v76);
}

void *FMFReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  swift_allocObject();
  sub_24A37B740(a1, v4, &qword_27EF3F650, &qword_24A4B5A10);
  v5 = sub_24A37B7A8(v4);
  sub_24A37EF2C(a1, &qword_27EF3F650, &qword_24A4B5A10);
  return v5;
}

double sub_24A4461FC(uint64_t a1, double a2)
{
  if (qword_27EF3EC08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  MEMORY[0x28223BE20](a1);
  sub_24A4ABD70();
  return v4;
}

uint64_t sub_24A4462C0(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v5 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24A3C9CEC(&qword_27EF3FE50, &unk_24A4B8C10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for FMReverseGeocodingRequest(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A446A98(a1, v10, type metadata accessor for FMFLocation);
  sub_24A37B740(v3 + qword_27EF4E178, v7, &qword_27EF3F650, &qword_24A4B5A10);
  sub_24A446558(v10, v7, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24A37EF2C(v13, &qword_27EF3FE50, &unk_24A4B8C10);
    sub_24A3BAFB0(v23);
    memcpy(v22, v23, sizeof(v22));
    return v20(v22);
  }

  else
  {
    sub_24A44680C(v13, v17);
    sub_24A4416C0(v17, v20, v21);
    return sub_24A447020(v17, type metadata accessor for FMReverseGeocodingRequest);
  }
}

uint64_t sub_24A446558@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[1];
  if (v6 && (v7 = *a1, v8 = type metadata accessor for FMFLocation(0), memcpy(__dst, a1 + *(v8 + 44), 0x161uLL), sub_24A3B9C24(__dst) != 1))
  {
    v11 = __dst[38];
    v12 = *(a1 + 33);
    v13 = v12 == 2;
    if (v12 == 2 && (a1[4] & 1) == 0)
    {
      v15 = a1[3];

      v16 = v11;
      sub_24A447020(a1, type metadata accessor for FMFLocation);
      v13 = (v15 - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {

      v14 = v11;
      sub_24A447020(a1, type metadata accessor for FMFLocation);
    }

    *a3 = v7;
    a3[1] = v6;
    v17 = type metadata accessor for FMReverseGeocodingRequest(0);
    *(a3 + v17[8]) = v13;
    *(a3 + v17[7]) = v12 == 2;
    a3[2] = v11;
    sub_24A37BE24(a2, a3 + v17[6], &qword_27EF3F650, &qword_24A4B5A10);
    return (*(*(v17 - 1) + 56))(a3, 0, 1, v17);
  }

  else
  {
    sub_24A37EF2C(a2, &qword_27EF3F650, &qword_24A4B5A10);
    sub_24A447020(a1, type metadata accessor for FMFLocation);
    v9 = type metadata accessor for FMReverseGeocodingRequest(0);
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }
}

void *FMFReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_24A37B740(a1, &v7 - v3, &qword_27EF3F650, &qword_24A4B5A10);
  v5 = sub_24A37B7A8(v4);
  sub_24A37EF2C(a1, &qword_27EF3F650, &qword_24A4B5A10);
  return v5;
}

uint64_t sub_24A44680C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMReverseGeocodingRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMFReverseGeocodingCache.deinit()
{
  v1 = qword_27EF400C0;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A37EF2C(v0 + qword_27EF4E178, &qword_27EF3F650, &qword_24A4B5A10);
  return v0;
}

uint64_t FMFReverseGeocodingCache.__deallocating_deinit()
{
  v1 = qword_27EF400C0;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A37EF2C(v0 + qword_27EF4E178, &qword_27EF3F650, &qword_24A4B5A10);

  return swift_deallocClassInstance();
}

uint64_t sub_24A446A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A446B18()
{
  result = qword_27EF408E0;
  if (!qword_27EF408E0)
  {
    sub_24A4AB690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF408E0);
  }

  return result;
}

uint64_t sub_24A446BB8(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

void *sub_24A446C60()
{
  v1 = *(v0 + 16);
  result = memcpy(v3, (v0 + 32), sizeof(v3));
  if (v1)
  {
    return v1(v3);
  }

  return result;
}

uint64_t sub_24A446CB4()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
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

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24A446E0C(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_24A443764(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_24A446EC0()
{
  v1 = *(type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  return sub_24A443AE4(v5, v6, (v0 + v2), v8, v9, v10);
}

void *sub_24A446F60(uint64_t a1, const void *a2, void (*a3)(_BYTE *))
{
  result = memcpy(__dst, a2, sizeof(__dst));
  if (a3)
  {
    memcpy(__src, a2, sizeof(__src));
    nullsub_1();
    memcpy(v6, __src, sizeof(v6));
    sub_24A3E5340(__dst, v8);
    a3(v6);
    memcpy(v8, v6, sizeof(v8));
    return sub_24A37EF2C(v8, &unk_27EF404E0, &unk_24A4B5230);
  }

  return result;
}

uint64_t sub_24A447020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FMFAddUpdateLabelRequest(uint64_t a1)
{
  result = qword_27EF404F8;
  if (!qword_27EF404F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4470FC(uint64_t a1)
{
  result = type metadata accessor for FMFLabelledLocation(319);
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

void sub_24A447194()
{
  v14 = *MEMORY[0x277D85DE8];
  sub_24A4AA790();
  swift_allocObject();
  sub_24A4AA780();
  type metadata accessor for FMFLabelledLocation(0);
  sub_24A447550();
  v0 = sub_24A4AA770();
  v2 = v1;

  v3 = objc_opt_self();
  v4 = sub_24A4AAA00();
  v10[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:v10];

  v6 = v10[0];
  if (v5)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
    sub_24A3A60B4(v11, v13);
    sub_24A37EE84(v13, v11);
    v7 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
    if (swift_dynamicCast())
    {
      v12 = v7;
      v11[0] = v10[0];
      swift_beginAccess();
      sub_24A3A6CEC(v11, 0xD000000000000010, 0x800000024A4B1EF0);
      swift_endAccess();
      sub_24A386E10(v0, v2);
      sub_24A37EEE0(v13);
    }

    else
    {
      sub_24A37EEE0(v13);
      sub_24A386E10(v0, v2);
    }
  }

  else
  {
    v8 = v6;
    v9 = sub_24A4AA950();

    swift_willThrow();
    sub_24A386E10(v0, v2);
  }
}

uint64_t sub_24A44742C()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24A3D7178(v0 + qword_27EF4E1D0);

  return swift_deallocClassInstance();
}

unint64_t sub_24A447550()
{
  result = qword_27EF3F348;
  if (!qword_27EF3F348)
  {
    type metadata accessor for FMFLabelledLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F348);
  }

  return result;
}

uint64_t type metadata accessor for FMFRespondToInviteRequest(uint64_t a1)
{
  result = qword_27EF40508;
  if (!qword_27EF40508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A447648()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF4E1E8);
  v3 = *(v0 + qword_27EF4E1E8 + 8);
  v7 = MEMORY[0x277D837D0];
  v6[0] = v2;
  v6[1] = v3;
  swift_beginAccess();

  sub_24A3A6CEC(v6, 25705, 0xE200000000000000);
  v4 = *(v1 + qword_27EF4E1F0);
  v7 = MEMORY[0x277D839B0];
  LOBYTE(v6[0]) = v4;
  sub_24A3A6CEC(v6, 0x6465747065636361, 0xE800000000000000);
  return swift_endAccess();
}

uint64_t sub_24A44772C()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A447810()
{
  sub_24A44772C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFAskToFollowRequest(uint64_t a1)
{
  result = qword_27EF40518;
  if (!qword_27EF40518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A447908()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF4E208);
  v3 = sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v7 = v3;
  v6[0] = v2;
  swift_beginAccess();

  sub_24A3A6CEC(v6, 7562345, 0xE300000000000000);
  v4 = *(v1 + qword_27EF4E210);
  v7 = v3;
  v6[0] = v4;

  sub_24A3A6CEC(v6, 0x736C69616D65, 0xE600000000000000);
  return swift_endAccess();
}

uint64_t sub_24A4479E0()
{
}

uint64_t sub_24A447A20()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A447B10()
{
  sub_24A447A20();

  return swift_deallocClassInstance();
}

uint64_t FMReverseGeocodingRequest.debugDescription.getter()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4BA880);
  MEMORY[0x24C217D50](0x69746E656469203ALL, 0xEE00203A72656966);
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](0x203A6873616820, 0xE700000000000000);
  v1 = v0[2];
  v2 = sub_24A448010();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0x203A74616C20, 0xE600000000000000);
  [v1 coordinate];
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x203A676E6F6C20, 0xE700000000000000);
  [v1 coordinate];
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x3A73756964617220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x3A74656B63756220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  v3 = sub_24A4AC240();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B1F80);
  v4 = type metadata accessor for FMReverseGeocodingRequest(0);
  if (*(v0 + *(v4 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v4 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v5, v6);

  MEMORY[0x24C217D50](0xD000000000000013, 0x800000024A4B1FA0);
  MEMORY[0x24C217D50](v5, v6);

  MEMORY[0x24C217D50](0xD000000000000011, 0x800000024A4B1FC0);
  [v1 referenceFrame];
  v7 = sub_24A4AC240();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0;
}

uint64_t FMReverseGeocodingRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMReverseGeocodingRequest.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMReverseGeocodingRequest(0) + 24);

  return sub_24A38D9BC(v3, a1);
}

uint64_t sub_24A448010()
{
  [v0 coordinate];
  v2 = round(v1 * 10000.0) / 10000.0;
  [v0 coordinate];
  v4 = round(v3 * 10000.0) / 10000.0;
  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24A4BA890;
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;
  v8 = [v0 referenceFrame];
  v9 = MEMORY[0x277D84D30];
  *(v5 + 136) = MEMORY[0x277D84CC0];
  *(v5 + 144) = v9;
  *(v5 + 112) = v8;
  [v0 horizontalAccuracy];
  if (v10 >= 5.0)
  {
    if (v10 >= 10.0)
    {
      if (v10 >= 25.0)
      {
        v11 = 50;
        v12 = 100;
        v13 = 1000;
        if (v10 < 250.0)
        {
          v13 = 250;
        }

        if (v10 >= 100.0)
        {
          v12 = v13;
        }

        if (v10 >= 50.0)
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 25;
      }
    }

    else
    {
      v11 = 10;
    }
  }

  else
  {
    v11 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v5 + 176) = MEMORY[0x277D83B88];
  *(v5 + 184) = v14;
  *(v5 + 152) = v11;

  return sub_24A4AB860();
}

uint64_t type metadata accessor for FMReverseGeocodingRequest(uint64_t a1)
{
  result = qword_27EF40540;
  if (!qword_27EF40540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMReverseGeocodingRequest.hash(into:)(uint64_t a1)
{
  v2 = sub_24A4AAB80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_24A4AB8F0();
  sub_24A4ABDC0();
  v9 = type metadata accessor for FMReverseGeocodingRequest(0);
  sub_24A38D9BC(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_24A4AC380();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_24A4AC380();
    sub_24A448AA8(&qword_27EF40528, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
    sub_24A4AB7E0();
    (*(v3 + 8))(v5, v2);
  }

  sub_24A4AC380();
  return sub_24A4AC380();
}

uint64_t FMReverseGeocodingRequest.hashValue.getter()
{
  sub_24A4AC360();
  FMReverseGeocodingRequest.hash(into:)(v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A448468()
{
  sub_24A4AC360();
  FMReverseGeocodingRequest.hash(into:)(v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A4484AC(uint64_t a1)
{
  sub_24A4AC360();
  FMReverseGeocodingRequest.hash(into:)(v2);
  return sub_24A4AC3A0();
}

uint64_t sub_24A4484F0()
{
  sub_24A4AC360();
  sub_24A4AC390();
  return sub_24A4AC3A0();
}

uint64_t sub_24A448564(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AC390();
  return sub_24A4AC3A0();
}

uint64_t _s7FMFCore25FMReverseGeocodingRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24A4AAB80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_24A3C9CEC(&qword_27EF40550, &qword_24A4BA9F8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_24A37B428(0, &qword_27EF3F358, 0x277D82BB8);
  if ((sub_24A4ABDB0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = type metadata accessor for FMReverseGeocodingRequest(0);
  v14 = v22[6];
  v15 = *(v11 + 48);
  sub_24A38D9BC(a1 + v14, v13);
  sub_24A38D9BC(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24A38D9BC(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24A448AA8(&qword_27EF40558, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v17 = sub_24A4AB810();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_24A37EF2C(v13, &qword_27EF3F650, &qword_24A4B5A10);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_24A37EF2C(v13, &qword_27EF40550, &qword_24A4BA9F8);
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_24A37EF2C(v13, &qword_27EF3F650, &qword_24A4B5A10);
LABEL_11:
  if (*(a1 + v22[7]) == *(a2 + v22[7]))
  {
    v19 = *(a1 + v22[8]) ^ *(a2 + v22[8]) ^ 1;
    return v19 & 1;
  }

LABEL_12:
  v19 = 0;
  return v19 & 1;
}

void sub_24A4489F4(uint64_t a1)
{
  sub_24A37B428(319, &qword_27EF40200, 0x277CE41F8);
  if (v1 <= 0x3F)
  {
    sub_24A37ECA0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24A448AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24A448AF0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for FMFLocationAlert(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v22 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v19 = a2;
    v20 = a1;
    while (v11 < *(a1 + 16))
    {
      v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v14 = *(v6 + 72);
      sub_24A3992EC(a1 + v13 + v14 * v11, v10, type metadata accessor for FMFLocationAlert);
      v15 = sub_24A44F594(v10, a2);
      if (v2)
      {
        sub_24A39A7B8(v10, type metadata accessor for FMFLocationAlert);

        goto LABEL_15;
      }

      if (v15)
      {
        sub_24A39983C(v10, v22, type metadata accessor for FMFLocationAlert);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBDE8(0, *(v12 + 16) + 1, 1);
          v12 = v23;
        }

        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_24A3DBDE8((v17 > 1), v18 + 1, 1);
          v12 = v23;
        }

        *(v12 + 16) = v18 + 1;
        sub_24A39983C(v22, v12 + v13 + v18 * v14, type metadata accessor for FMFLocationAlert);
        a2 = v19;
        a1 = v20;
      }

      else
      {
        sub_24A39A7B8(v10, type metadata accessor for FMFLocationAlert);
      }

      if (v21 == ++v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_24A448DBC()
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
    v21 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v21);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  sub_24A3C8470(v1 + 32);

  sub_24A3873B4(v1 + 80);

  sub_24A37F110(*(v1 + 744), *(v1 + 752), *(v1 + 760), *(v1 + 768));
  sub_24A3B2D38(*(v1 + 1032), *(v1 + 1040), *(v1 + 1048), *(v1 + 1056), *(v1 + 1064), *(v1 + 1072), *(v1 + 1080));

  return v1;
}

uint64_t sub_24A4490B8()
{
  sub_24A448DBC();

  return swift_deallocClassInstance();
}

uint64_t sub_24A4490EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 784);
  *a2 = *(result + 776);
  *(a2 + 8) = v2;
  return result;
}

__n128 sub_24A449100@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1000);
  *(a2 + 192) = *(a1 + 984);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 1016);
  v3 = *(a1 + 936);
  *(a2 + 128) = *(a1 + 920);
  *(a2 + 144) = v3;
  v4 = *(a1 + 968);
  *(a2 + 160) = *(a1 + 952);
  *(a2 + 176) = v4;
  v5 = *(a1 + 872);
  *(a2 + 64) = *(a1 + 856);
  *(a2 + 80) = v5;
  v6 = *(a1 + 904);
  *(a2 + 96) = *(a1 + 888);
  *(a2 + 112) = v6;
  v7 = *(a1 + 808);
  *a2 = *(a1 + 792);
  *(a2 + 16) = v7;
  result = *(a1 + 840);
  *(a2 + 32) = *(a1 + 824);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_24A449148@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 536);
  v3 = *(v2 + 88);
  v12[0] = *(v2 + 72);
  v12[1] = v3;
  v13[0] = *(v2 + 104);
  *(v13 + 9) = *(v2 + 113);
  if (*&v12[0])
  {
    v4 = *(v2 + 88);
    *a2 = *(v2 + 72);
    a2[1] = v4;
    a2[2] = *(v2 + 104);
    *(a2 + 41) = *(v2 + 113);
  }

  else
  {
    v5 = *(a1 + 1048);
    v10[0] = *(a1 + 1032);
    v10[1] = v5;
    v11[0] = *(a1 + 1064);
    v6 = v11[0];
    *(v11 + 9) = *(a1 + 1073);
    v7 = *(v11 + 9);
    *a2 = v10[0];
    a2[1] = v5;
    a2[2] = v6;
    *(a2 + 41) = v7;
    sub_24A37B740(v10, &v9, &qword_27EF3FD68, &unk_24A4B9F40);
  }

  return sub_24A37B740(v12, v10, &qword_27EF3FD68, &unk_24A4B9F40);
}

double sub_24A44921C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 1096);

  return result;
}

double sub_24A44923C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 1104);

  return result;
}

double sub_24A44925C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 1112);

  return result;
}

void sub_24A44927C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 536);
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = v5[2];
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    *a2 = v7;
    return;
  }

  v12[9] = v2;
  v7 = sub_24A40B47C(v6, 0);
  v8 = *(type metadata accessor for FMFFriend(0) - 8);
  sub_24A40C240(v12, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v10 = v9;
  v11 = v12[0];

  sub_24A3A13C0(v11);
  if (v10 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void *sub_24A4493A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFFriend(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  result = sub_24A4ABD70();
  v15 = v21;
  v16 = *(v21 + 16);
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      sub_24A3992EC(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v7, type metadata accessor for FMFFriend);
      v18 = *v7 == a1 && v7[1] == a2;
      if (v18 || (sub_24A4AC270() & 1) != 0)
      {

        sub_24A39983C(v7, v10, type metadata accessor for FMFFriend);
        sub_24A39983C(v10, v13, type metadata accessor for FMFFriend);
        v19 = *(v13 + 5);

        sub_24A39A7B8(v13, type metadata accessor for FMFFriend);
        return v19;
      }

      ++v17;
      result = sub_24A39A7B8(v7, type metadata accessor for FMFFriend);
      if (v16 == v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

void *sub_24A4495F8(uint64_t a1)
{
  v2 = type metadata accessor for FMFFriend(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A4ABD70();
  v6 = v25;
  v7 = *(v25 + 16);
  if (v7)
  {
    v24[1] = a1;
    v25 = MEMORY[0x277D84F90];
    sub_24A3DBDA8(0, v7, 0);
    v8 = v25;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_24A3992EC(v9, v5, type metadata accessor for FMFFriend);
      v12 = *v5;
      v11 = v5[1];

      sub_24A39A7B8(v5, type metadata accessor for FMFFriend);
      v25 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24A3DBDA8((v13 > 1), v14 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = sub_24A3999E0(v8);

  v18 = sub_24A3999E0(v17);

  v19 = sub_24A473E64(v16, v18);

  v20 = v19[2];
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = sub_24A3A11D8(v19[2], 0);
  v22 = sub_24A3A1268(&v25, v21 + 4, v20, v19);
  sub_24A3A13C0(v25);
  if (v22 != v20)
  {
    __break(1u);
LABEL_11:

    return MEMORY[0x277D84F90];
  }

  return v21;
}

uint64_t sub_24A44988C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v24 = type metadata accessor for FMFFriend(0);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  result = sub_24A4ABD70();
  v17 = v25;
  v18 = *(v25 + 16);
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      sub_24A3992EC(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v9, type metadata accessor for FMFFriend);
      v20 = *v9 == a1 && v9[1] == a2;
      if (v20 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      ++v19;
      result = sub_24A39A7B8(v9, type metadata accessor for FMFFriend);
      if (v18 == v19)
      {
        goto LABEL_10;
      }
    }

    sub_24A39983C(v9, v12, type metadata accessor for FMFFriend);
    sub_24A39983C(v12, v15, type metadata accessor for FMFFriend);
    sub_24A37B740(&v15[*(v24 + 80)], v6, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A39A7B8(v15, type metadata accessor for FMFFriend);
    v21 = type metadata accessor for FMFLocation(0);
    if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
    {
      sub_24A37EF2C(v6, &qword_27EF3F480, &unk_24A4B8C20);
      return 1;
    }

    else
    {
      v22 = v6[33];
      sub_24A39A7B8(v6, type metadata accessor for FMFLocation);
      return v22 != 3;
    }
  }

  else
  {
LABEL_10:

    return 0;
  }
}

void sub_24A449BD8(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[85];

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    a2[72] = 0;

    a2[78] = 0;

    v8 = 1;
    swift_beginAccess();
    a2[79] = 0;

    a2[85] = a1;

    sub_24A387F3C();
  }

  *a3 = v8;
}

void sub_24A449CAC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 544);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    *(a2 + 576) = 0;

    *(a2 + 544) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A449D4C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 552);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    *(a2 + 576) = 0;

    *(a2 + 552) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A449DEC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 560);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    *(a2 + 576) = 0;

    *(a2 + 560) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A449E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 568);

  v7 = sub_24A41556C(a1, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    *(a2 + 576) = 0;

    *(a2 + 568) = a1;

    sub_24A387F3C();
    v8 = 1;
  }

  *a3 = v8;
}

void sub_24A449F2C(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMFFriend(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = a1[1];
  if (v19)
  {
    v48[0] = v48 - v18;
    v48[1] = a3;
    v20 = a4;
    v51 = v5;
    v21 = *a1;
    v22 = *(a2 + 16);

    if (v22)
    {
      v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v24 = *(v11 + 72);
      while (1)
      {
        sub_24A3992EC(v23, v13, type metadata accessor for FMFFriend);
        v25 = v21 == *v13 && v19 == v13[1];
        if (v25 || (sub_24A4AC270() & 1) != 0)
        {
          break;
        }

        sub_24A39A7B8(v13, type metadata accessor for FMFFriend);
        v23 += v24;
        if (!--v22)
        {
          goto LABEL_10;
        }
      }

      sub_24A39983C(v13, v16, type metadata accessor for FMFFriend);
      v32 = v16;
      v33 = v48[0];
      sub_24A39983C(v32, v48[0], type metadata accessor for FMFFriend);
      v34 = *(v33 + *(v10 + 52));
      v26 = v20;
      if (*v20)
      {
        v35 = 0;
      }

      else
      {
        v35 = 8236;
      }

      if (*v20)
      {
        v36 = 0xE000000000000000;
      }

      else
      {
        v36 = 0xE200000000000000;
      }

      v49 = v21;
      v50 = v19;
      v37 = sub_24A4AB9F0();
      v39 = v38;
      v49 = v35;
      v50 = v36;

      MEMORY[0x24C217D50](v37, v39);

      MEMORY[0x24C217D50](47, 0xE100000000000000);

      v40 = v49;
      v41 = v50;
      v42 = (v33 + *(v10 + 76));
      if (v42[1])
      {
        v43 = v42[5];
        v44 = v42[6];
        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (v45)
        {
        }

        else
        {
          v43 = 0;
          v44 = 0xE000000000000000;
        }
      }

      else
      {
        v43 = 0;
        v44 = 0xE000000000000000;
      }

      v49 = v40;
      v50 = v41;

      MEMORY[0x24C217D50](v43, v44);

      if (v34)
      {
        v46 = 10518754;
      }

      else
      {
        v46 = 0;
      }

      if (v34)
      {
        v47 = 0xA300000000000000;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      MEMORY[0x24C217D50](v46, v47);

      MEMORY[0x24C217D50](v49, v50);

      sub_24A39A7B8(v48[0], type metadata accessor for FMFFriend);
    }

    else
    {
LABEL_10:
      v26 = v20;
      if (*v20)
      {
        v27 = 0;
      }

      else
      {
        v27 = 8236;
      }

      if (*v20)
      {
        v28 = 0xE000000000000000;
      }

      else
      {
        v28 = 0xE200000000000000;
      }

      v49 = v21;
      v50 = v19;
      v29 = sub_24A4AB9F0();
      v31 = v30;
      v49 = v27;
      v50 = v28;

      MEMORY[0x24C217D50](v29, v31);

      MEMORY[0x24C217D50](v49, v50);
    }

    *v26 = 0;
  }
}

void sub_24A44A358(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FMFLocation(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v8 + 56);
  v24(a3, 1, 1, v7, v9);
  swift_beginAccess();
  v12 = *(a1 + 632);
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      v21 = v7;
      v22 = a3;
      v23 = v3;
      v14 = *a2;
      v15 = a2[1];
      v16 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

      v17 = 0;
      while (v17 < *(v12 + 16))
      {
        sub_24A3992EC(v16 + *(v8 + 72) * v17, v11, type metadata accessor for FMFLocation);
        v18 = v11[1];
        if (v18)
        {
          v19 = *v11 == v14 && v18 == v15;
          if (v19 || (sub_24A4AC270() & 1) != 0)
          {
            v20 = v22;
            sub_24A37EF2C(v22, &qword_27EF3F480, &unk_24A4B8C20);

            sub_24A39983C(v11, v20, type metadata accessor for FMFLocation);
            (v24)(v20, 0, 1, v21);
            return;
          }
        }

        ++v17;
        sub_24A39A7B8(v11, type metadata accessor for FMFLocation);
        if (v13 == v17)
        {

          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_24A44A59C(uint64_t a1, uint64_t a2)
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
  v16[1] = *(v3 + 56);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24A454408;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89668;
  v14 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v18 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_24A44A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v13 = sub_24A45461C((a1 + 616), a2, a3);

  v15 = *(*(a1 + 616) + 16);
  if (v15 < v13)
  {
    __break(1u);
  }

  else
  {
    v23 = v10;
    v24 = v7;
    sub_24A45455C(v13, v15);
    swift_endAccess();
    v17 = sub_24A448D6C(aBlock);
    if (!*v16)
    {
      (v17)(aBlock, 0);
      goto LABEL_6;
    }

    v18 = v16;

    v19 = sub_24A45461C(v18, a2, a3);

    v20 = *(*v18 + 16);
    if (v20 >= v19)
    {
      sub_24A45455C(v19, v20);
      (v17)(aBlock, 0);
LABEL_6:
      aBlock[4] = sub_24A454390;
      aBlock[5] = a1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A388564;
      aBlock[3] = &unk_285D89690;
      v21 = _Block_copy(aBlock);

      sub_24A4AB6B0();
      v26 = MEMORY[0x277D84F90];
      sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
      sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
      sub_24A4ABE90();
      MEMORY[0x24C218190](0, v12, v9, v21);
      _Block_release(v21);
      (*(v24 + 8))(v9, v6);
      (*(v25 + 8))(v12, v23);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A44AC3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_24A4AB690();
  v122 = *(v7 - 8);
  v123 = v7;
  MEMORY[0x28223BE20](v7);
  v120 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_24A4AB6E0();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[75];

  v11 = sub_24A41587C(a1, v10);

  if (v11)
  {
    *a3 = 0;
    return result;
  }

  v116 = a3;
  v117 = v3;
  a2[72] = 0;

  a2[78] = 0;

  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v124 = a2;
  if (v13)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A3DBEA8(0, v13, 0);
    isUniquelyReferenced_nonNull_native = aBlock[0];
    v16 = sub_24A3C9CEC(&qword_27EF40570, &unk_24A4BAC80);
    v125 = v13;
    v126 = v16;
    v115 = a1;
    a1 += 48;
    v14 = v13;
    do
    {
      v13 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = *(a1 - 16);
      v17 = *(a1 - 8);
      v18 = *a1;
      v19 = sub_24A4AC090();
      swift_bridgeObjectRetain_n();

      v20 = sub_24A39B2C8(isUniquelyReferenced_nonNull_native, v17);
      v22 = v21;

      if (v22)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v19[(v20 >> 6) + 8] |= 1 << v20;
      v23 = (v19[6] + 16 * v20);
      *v23 = isUniquelyReferenced_nonNull_native;
      v23[1] = v17;
      *(v19[7] + v20) = v18;

      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_63;
      }

      v19[2] = v26;
      isUniquelyReferenced_nonNull_native = v13;
      aBlock[0] = v13;
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_24A3DBEA8((v27 > 1), v28 + 1, 1);
        isUniquelyReferenced_nonNull_native = aBlock[0];
      }

      a1 += 24;
      *(isUniquelyReferenced_nonNull_native + 16) = v28 + 1;
      *(isUniquelyReferenced_nonNull_native + 8 * v28 + 32) = v19;
      --v14;
    }

    while (v14);
    v14 = MEMORY[0x277D84F90];
    v13 = v125;
    a1 = v115;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  }

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v29 = sub_24A4AB630();
    v30 = sub_24A378E18(v29, qword_27EF4E260);

    v115 = v30;
    v31 = sub_24A4AB600();
    v32 = sub_24A4ABCE0();

    v33 = os_log_type_enabled(v31, v32);
    v126 = isUniquelyReferenced_nonNull_native;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v36 = sub_24A3C9CEC(&qword_27EF3F4E8, &qword_24A4B5748);
      v37 = MEMORY[0x24C217E90](isUniquelyReferenced_nonNull_native, v36);
      v39 = sub_24A37BD58(v37, v38, aBlock);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_24A376000, v31, v32, "FMFDataManager: Shallow locate in progress (in) - %s", v34, 0xCu);
      sub_24A37EEE0(v35);
      MEMORY[0x24C219130](v35, -1, -1);
      MEMORY[0x24C219130](v34, -1, -1);
    }

    if (v13)
    {
      v40 = (a1 + 48);
      v41 = MEMORY[0x277D84F98];
      while (1)
      {
        v45 = *(v40 - 2);
        v44 = *(v40 - 1);
        a1 = *v40;
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v41;
        v46 = sub_24A39B2C8(v45, v44);
        v48 = v41;
        v49 = v41[2];
        v50 = (v47 & 1) == 0;
        v25 = __OFADD__(v49, v50);
        v51 = v49 + v50;
        if (v25)
        {
          goto LABEL_64;
        }

        v52 = v47;
        if (v48[3] < v51)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v58 = v46;
        sub_24A4A9214();
        v46 = v58;
        v14 = MEMORY[0x277D84F90];
        if (v52)
        {
LABEL_17:
          v42 = v46;

          v41 = aBlock[0];
          v43 = *(aBlock[0] + 56) + 24 * v42;
          *v43 = v45;
          *(v43 + 8) = v44;
          *(v43 + 16) = a1;

          goto LABEL_18;
        }

LABEL_25:
        v41 = aBlock[0];
        *(aBlock[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
        v54 = (v41[6] + 16 * v46);
        *v54 = v45;
        v54[1] = v44;
        v55 = v41[7] + 24 * v46;
        *v55 = v45;
        *(v55 + 8) = v44;
        *(v55 + 16) = a1;
        v56 = v41[2];
        v25 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v25)
        {
          goto LABEL_67;
        }

        v41[2] = v57;
LABEL_18:
        v40 += 24;
        if (!--v13)
        {
          goto LABEL_30;
        }
      }

      sub_24A4A5AF0(v51, isUniquelyReferenced_nonNull_native);
      v46 = sub_24A39B2C8(v45, v44);
      if ((v52 & 1) != (v53 & 1))
      {
        result = sub_24A4AC2B0();
        __break(1u);
        return result;
      }

LABEL_24:
      if (v52)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

    v41 = MEMORY[0x277D84F98];
LABEL_30:

    v129 = v14;
    v59 = v124;
    v60 = *(v124[75] + 16);
    if (v60)
    {

      v61 = (v126 + 48);
      v62 = MEMORY[0x277D84F90];
      do
      {
        v65 = *(v61 - 2);
        v64 = *(v61 - 1);
        v66 = *v61;
        v67 = v41[2];

        v68 = v41;
        if (v67 && (, v69 = sub_24A39B2C8(v65, v64), v71 = v70, , (v71 & 1) != 0))
        {

          v72 = v68[7] + 24 * v69;
          v74 = *v72;
          v73 = *(v72 + 8);
          v75 = *(v72 + 16);
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_24A3EDC98(0, *(v62 + 2) + 1, 1, v62);
          }

          v77 = *(v62 + 2);
          v76 = *(v62 + 3);
          if (v77 >= v76 >> 1)
          {
            v62 = sub_24A3EDC98((v76 > 1), v77 + 1, 1, v62);
          }

          *(v62 + 2) = v77 + 1;
          v78 = &v62[24 * v77];
          *(v78 + 4) = v74;
          *(v78 + 5) = v73;
          v78[48] = v75;
          v41 = v68;
          sub_24A39B2C8(v74, v73);
          v80 = v79;

          if (v80)
          {
            v81 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v41;
            if (!v81)
            {
              sub_24A4A9214();
              v41 = aBlock[0];
            }

            sub_24A4A9BC4();
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_24A3EDC98(0, *(v62 + 2) + 1, 1, v62);
          }

          v83 = *(v62 + 2);
          v82 = *(v62 + 3);
          if (v83 >= v82 >> 1)
          {
            v62 = sub_24A3EDC98((v82 > 1), v83 + 1, 1, v62);
          }

          *(v62 + 2) = v83 + 1;
          v63 = &v62[24 * v83];
          *(v63 + 4) = v65;
          *(v63 + 5) = v64;
          v63[48] = v66;
          v41 = v68;
        }

        v61 += 24;
        --v60;
      }

      while (v60);

      v129 = v62;
      v59 = v124;
      v14 = MEMORY[0x277D84F90];
    }

    v114[1] = v41;
    sub_24A3DB91C(v84);
    v85 = v129;
    *(v59 + 600) = v129;

    v86 = *(v85 + 16);
    if (!v86)
    {
      break;
    }

    aBlock[0] = v14;
    sub_24A3BEBEC(0, v86, 0);
    v87 = aBlock[0];
    v125 = sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
    v114[0] = v85;
    v13 = v85 + 48;
    while (1)
    {
      v126 = v86;
      v88 = v87;
      v14 = *(v13 - 16);
      v89 = *(v13 - 8);
      LOBYTE(v127) = *v13;
      swift_bridgeObjectRetain_n();
      v90 = sub_24A4AB890();
      v92 = v91;
      isUniquelyReferenced_nonNull_native = sub_24A4AC090();

      v93 = sub_24A39B2C8(v14, v89);
      a1 = v94;

      if (a1)
      {
        break;
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v93 >> 6) + 64) |= 1 << v93;
      v95 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v93);
      *v95 = v14;
      v95[1] = v89;
      v96 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v93);
      *v96 = v90;
      v96[1] = v92;

      v97 = *(isUniquelyReferenced_nonNull_native + 16);
      v25 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (v25)
      {
        goto LABEL_66;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v98;
      v87 = v88;
      aBlock[0] = v88;
      v100 = *(v88 + 16);
      v99 = *(v88 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_24A3BEBEC((v99 > 1), v100 + 1, 1);
        v87 = aBlock[0];
      }

      v13 += 24;
      *(v87 + 16) = v100 + 1;
      *(v87 + 8 * v100 + 32) = isUniquelyReferenced_nonNull_native;
      v86 = v126 - 1;
      if (v126 == 1)
      {

        v59 = v124;
        goto LABEL_58;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v87 = MEMORY[0x277D84F90];
LABEL_58:

  v101 = sub_24A4AB600();
  v102 = sub_24A4ABCE0();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock[0] = v104;
    *v103 = 136315138;
    v105 = sub_24A3C9CEC(&qword_27EF3F4D8, &unk_24A4BAC90);
    v106 = MEMORY[0x24C217E90](v87, v105);
    v108 = v107;

    v109 = sub_24A37BD58(v106, v108, aBlock);

    *(v103 + 4) = v109;
    _os_log_impl(&dword_24A376000, v101, v102, "FMFDataManager: Shallow locate in progress (out) - %s", v103, 0xCu);
    sub_24A37EEE0(v104);
    MEMORY[0x24C219130](v104, -1, -1);
    MEMORY[0x24C219130](v103, -1, -1);
  }

  else
  {
  }

  aBlock[4] = sub_24A454388;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89460;
  v110 = _Block_copy(aBlock);

  v111 = v118;
  sub_24A4AB6B0();
  v127 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  v112 = v120;
  v113 = v123;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v111, v112, v110);
  _Block_release(v110);
  (*(v122 + 8))(v112, v113);
  (*(v119 + 8))(v111, v121);

  *v116 = 1;
  return result;
}

uint64_t sub_24A44B87C(uint64_t a1)
{
  sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
  sub_24A4ABD70();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 72))(v7, ObjectType, v2);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 40);
    v6 = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    (*(v5 + 56))(v7, 0, v6, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A44B9EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_24A4AB690();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  v77 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v76 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[74];

  v13 = sub_24A41587C(a1, v12);

  if (v13)
  {
    *a3 = 0;
    return result;
  }

  v15 = a3;
  v70 = v9;
  v71 = v10;
  v74 = v3;
  a2[72] = 0;

  v75 = a2;
  a2[78] = 0;

  v16 = *(a1 + 16);
  v72 = v7;
  v73 = v15;
  if (!v16)
  {
    v18 = MEMORY[0x277D84F98];
LABEL_18:
    v38 = MEMORY[0x277D84F90];
    v81 = MEMORY[0x277D84F90];
    v39 = v75;
    v40 = *(v75[74] + 16);
    if (v40)
    {

      v41 = (v69 + 48);
      v42 = MEMORY[0x277D84F90];
      do
      {
        v44 = *(v41 - 2);
        v45 = *(v41 - 1);
        v46 = *v41;
        v47 = v18[2];

        if (v47 && (, v48 = sub_24A39B2C8(v44, v45), v50 = v49, , (v50 & 1) != 0))
        {

          v51 = v18[7] + 24 * v48;
          v52 = *v51;
          v53 = *(v51 + 8);
          v54 = *(v51 + 16);
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_24A3EDC98(0, *(v42 + 2) + 1, 1, v42);
          }

          v56 = *(v42 + 2);
          v55 = *(v42 + 3);
          if (v56 >= v55 >> 1)
          {
            v42 = sub_24A3EDC98((v55 > 1), v56 + 1, 1, v42);
          }

          *(v42 + 2) = v56 + 1;
          v57 = &v42[24 * v56];
          *(v57 + 4) = v52;
          *(v57 + 5) = v53;
          v57[48] = v54;
          sub_24A39B2C8(v52, v53);
          v59 = v58;

          if (v59)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v18;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_24A4A9214();
              v18 = aBlock[0];
            }

            sub_24A4A9BC4();
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_24A3EDC98(0, *(v42 + 2) + 1, 1, v42);
          }

          v62 = *(v42 + 2);
          v61 = *(v42 + 3);
          if (v62 >= v61 >> 1)
          {
            v42 = sub_24A3EDC98((v61 > 1), v62 + 1, 1, v42);
          }

          *(v42 + 2) = v62 + 1;
          v43 = &v42[24 * v62];
          *(v43 + 4) = v44;
          *(v43 + 5) = v45;
          v43[48] = v46;
        }

        v41 += 24;
        --v40;
      }

      while (v40);

      v81 = v42;
      v39 = v75;
      v38 = MEMORY[0x277D84F90];
    }

    sub_24A3DB91C(v63);
    v39[74] = v81;

    aBlock[4] = sub_24A4540F8;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89410;
    v64 = _Block_copy(aBlock);

    v65 = v76;
    sub_24A4AB6B0();
    v79 = v38;
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    v66 = v70;
    v67 = v72;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v65, v66, v64);
    _Block_release(v64);
    (*(v78 + 8))(v66, v67);
    (*(v77 + 8))(v65, v71);

    *v73 = 1;
    return result;
  }

  v17 = (a1 + 48);
  v18 = MEMORY[0x277D84F98];
  while (1)
  {
    v22 = *(v17 - 2);
    v21 = *(v17 - 1);
    v23 = *v17;
    swift_bridgeObjectRetain_n();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v18;
    v25 = sub_24A39B2C8(v22, v21);
    v27 = v18[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v18[3] < v30)
    {
      sub_24A4A5AF0(v30, v24);
      v25 = sub_24A39B2C8(v22, v21);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_40;
      }

LABEL_12:
      if (v31)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if (v24)
    {
      goto LABEL_12;
    }

    v37 = v25;
    sub_24A4A9214();
    v25 = v37;
    if (v31)
    {
LABEL_5:
      v19 = v25;

      v18 = aBlock[0];
      v20 = *(aBlock[0] + 56) + 24 * v19;
      *v20 = v22;
      *(v20 + 8) = v21;
      *(v20 + 16) = v23;

      goto LABEL_6;
    }

LABEL_13:
    v18 = aBlock[0];
    *(aBlock[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v33 = (v18[6] + 16 * v25);
    *v33 = v22;
    v33[1] = v21;
    v34 = v18[7] + 24 * v25;
    *v34 = v22;
    *(v34 + 8) = v21;
    *(v34 + 16) = v23;
    v35 = v18[2];
    v29 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v29)
    {
      goto LABEL_39;
    }

    v18[2] = v36;
LABEL_6:
    v17 += 24;
    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

uint64_t sub_24A44C0E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_24A4AB690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_24A4AB6E0();
  v79 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v13 = (v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_24A415A6C(a1, a2[76]);
  if (result)
  {
    *a3 = 0;
    return result;
  }

  v75 = v7;
  v77 = v3;
  a2[72] = 0;

  v78 = a2;
  a2[78] = 0;

  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_46;
  }

LABEL_4:
  v72 = v10;
  v73 = isUniquelyReferenced_nonNull_native;
  v74 = v8;
  v15 = sub_24A4AB630();
  v16 = sub_24A378E18(v15, qword_27EF4E260);

  v70[1] = v16;
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();

  if (os_log_type_enabled(v17, v18))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 138412290;
    v20 = sub_24A4ABA50();
    *(v8 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&dword_24A376000, v17, v18, "FMFDataManager: fallbackToLegacy (in) %@", v8, 0xCu);
    sub_24A37EF2C(v19, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v19, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v71 = v13;

  v10 = *(a1 + 16);
  v76 = a3;
  if (v10)
  {
    a3 = (a1 + 48);
    v13 = MEMORY[0x277D84F98];
    while (1)
    {
      v23 = *(a3 - 2);
      a1 = *(a3 - 1);
      v24 = *a3;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v13;
      v25 = sub_24A39B2C8(v23, a1);
      v27 = v13[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        swift_once();
        goto LABEL_4;
      }

      v8 = v26;
      if (v13[3] < v30)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      isUniquelyReferenced_nonNull_native = v25;
      sub_24A4A93A0();
      v25 = isUniquelyReferenced_nonNull_native;
      if (v8)
      {
LABEL_8:
        v21 = v25;

        v13 = aBlock[0];
        v22 = *(aBlock[0] + 56) + 24 * v21;
        *v22 = v23;
        *(v22 + 8) = a1;
        *(v22 + 16) = v24;

        goto LABEL_9;
      }

LABEL_16:
      v13 = aBlock[0];
      *(aBlock[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = (v13[6] + 16 * v25);
      *v32 = v23;
      v32[1] = a1;
      v33 = v13[7] + 24 * v25;
      *v33 = v23;
      *(v33 + 8) = a1;
      *(v33 + 16) = v24;
      v34 = v13[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_45;
      }

      v13[2] = v35;
LABEL_9:
      a3 += 24;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }

    sub_24A4A5DCC(v30, isUniquelyReferenced_nonNull_native);
    v25 = sub_24A39B2C8(v23, a1);
    if ((v8 & 1) != (v31 & 1))
    {
      result = sub_24A4AC2B0();
      __break(1u);
      return result;
    }

LABEL_15:
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v13 = MEMORY[0x277D84F98];
LABEL_21:
  v82 = MEMORY[0x277D84F90];
  v36 = *(v78[76] + 16);
  if (v36)
  {

    v37 = (v70[0] + 48);
    v38 = MEMORY[0x277D84F90];
    do
    {
      v40 = *(v37 - 2);
      v41 = *(v37 - 1);
      v42 = *v37;
      v43 = v13[2];

      if (v43 && (, v44 = sub_24A39B2C8(v40, v41), v46 = v45, , (v46 & 1) != 0))
      {

        v47 = v13[7] + 24 * v44;
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = *(v47 + 16);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_24A3EDED4(0, *(v38 + 2) + 1, 1, v38);
        }

        v52 = *(v38 + 2);
        v51 = *(v38 + 3);
        if (v52 >= v51 >> 1)
        {
          v38 = sub_24A3EDED4((v51 > 1), v52 + 1, 1, v38);
        }

        *(v38 + 2) = v52 + 1;
        v53 = &v38[24 * v52];
        *(v53 + 4) = v48;
        *(v53 + 5) = v49;
        v53[48] = v50;
        sub_24A39B2C8(v48, v49);
        v55 = v54;

        if (v55)
        {
          v56 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v13;
          if (!v56)
          {
            sub_24A4A93A0();
            v13 = aBlock[0];
          }

          sub_24A4A9BC4();
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_24A3EDED4(0, *(v38 + 2) + 1, 1, v38);
        }

        v58 = *(v38 + 2);
        v57 = *(v38 + 3);
        if (v58 >= v57 >> 1)
        {
          v38 = sub_24A3EDED4((v57 > 1), v58 + 1, 1, v38);
        }

        *(v38 + 2) = v58 + 1;
        v39 = &v38[24 * v58];
        *(v39 + 4) = v40;
        *(v39 + 5) = v41;
        v39[48] = v42;
      }

      v37 += 24;
      --v36;
    }

    while (v36);

    v82 = v38;
  }

  sub_24A3DB948(v59);
  v60 = v78;
  v78[76] = v82;
  swift_bridgeObjectRetain_n();

  v61 = sub_24A4AB600();
  v62 = sub_24A4ABCE0();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    v65 = sub_24A4ABA50();

    *(v63 + 4) = v65;
    *v64 = v65;
    _os_log_impl(&dword_24A376000, v61, v62, "FMFDataManager: fallbackToLegacy (out) %@", v63, 0xCu);
    sub_24A37EF2C(v64, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v64, -1, -1);
    MEMORY[0x24C219130](v63, -1, -1);
  }

  else
  {
  }

  aBlock[4] = sub_24A454390;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89488;
  v66 = _Block_copy(aBlock);

  v67 = v71;
  sub_24A4AB6B0();
  v80 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  v68 = v72;
  v69 = v75;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v67, v68, v66);
  _Block_release(v66);
  (*(v74 + 8))(v68, v69);
  (*(v79 + 8))(v67, v73);

  *v76 = 1;
  return result;
}

uint64_t sub_24A44C9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
    sub_24A4ABD70();
    (*(v4 + 72))(v9, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(a1 + 40);
    v8 = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    (*(v7 + 56))(v9, 0, v8, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A44CB28()
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
    _os_log_impl(&dword_24A376000, v9, v10, "FMFDataManager: purging old locations", v11, 2u);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  aBlock[4] = sub_24A4543F8;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D895C8;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v7, v4, v12);
  _Block_release(v12);
  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
}

uint64_t sub_24A44CE94(uint64_t a1)
{
  v2 = sub_24A4AB690();
  v149 = *(v2 - 8);
  v150 = v2;
  MEMORY[0x28223BE20](v2);
  v147 = &v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_24A4AB6E0();
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_24A4AAAD0();
  v5 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMFLocation(0);
  MEMORY[0x28223BE20](v7);
  v153 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v152 = &v144 - v10;
  MEMORY[0x28223BE20](v11);
  v166 = &v144 - v12;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v144 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v144 - v18;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v165 = &v144 - v22;
  MEMORY[0x28223BE20](v23);
  v159 = &v144 - v24;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v158 = &v144 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v144 - v29;
  MEMORY[0x28223BE20](v31);
  v37 = &v144 - v36;
  v151 = a1;
  v38 = *(a1 + 624);
  if (v38)
  {
    v39 = *(v38 + 16);
    if (v39)
    {
      v154 = v32;
      v155 = v34;
      v157 = v35;
      v168 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v40 = v38 + v168;
      v41 = *(v33 + 72);
      v160 = (v5 + 8);
      v144 = v38;

      v170 = v39 - 1;
      *&v42 = 136315138;
      v156 = v42;
      v164 = MEMORY[0x277D84F90];
      v172 = MEMORY[0x277D84F90];
      v161 = v16;
      v169 = v41;
      v167 = v30;
      while (1)
      {
        v171 = v40;
        sub_24A3992EC(v40, v37, type metadata accessor for FMFLocation);
        v43 = v37[33];
        memcpy(v177, &v37[v7[11]], 0x161uLL);
        if (sub_24A3B9C24(v177) == 1 || (v43 ? (v44 = 604800.0) : (v44 = 7200.0), v45 = v177[38], v46 = [v45 timestamp], v47 = v162, sub_24A4AAAA0(), v46, sub_24A4AAA70(), v49 = v48, (*v160)(v47, v163), v45, fabs(v49) >= v44))
        {
          if (qword_27EF3EBF8 != -1)
          {
            swift_once();
          }

          v56 = sub_24A4AB630();
          sub_24A378E18(v56, qword_27EF4E260);
          sub_24A3992EC(v37, v30, type metadata accessor for FMFLocation);
          v57 = sub_24A4AB600();
          v58 = sub_24A4ABCE0();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v176[0] = v60;
            *v59 = v156;
            v61 = FMFLocation.debugDescription.getter();
            v63 = v62;
            sub_24A39A7B8(v167, type metadata accessor for FMFLocation);
            v64 = sub_24A37BD58(v61, v63, v176);
            v16 = v161;

            *(v59 + 4) = v64;
            _os_log_impl(&dword_24A376000, v57, v58, "FMFDataManager: Purging location: %s", v59, 0xCu);
            sub_24A37EEE0(v60);
            v65 = v60;
            v30 = v167;
            MEMORY[0x24C219130](v65, -1, -1);
            MEMORY[0x24C219130](v59, -1, -1);
          }

          else
          {

            sub_24A39A7B8(v30, type metadata accessor for FMFLocation);
          }

          v50 = 0;
          v41 = v169;
          if (!v37[33])
          {
LABEL_10:
            v51 = v154;
            sub_24A3992EC(v37, v154, type metadata accessor for FMFLocation);
            v52 = v7[8];
            v53 = sub_24A4AAB20();
            v54 = v159;
            (*(*(v53 - 8) + 56))(&v159[v52], 1, 1, v53);
            v55 = *(v51 + 8);
            *v54 = *v51;
            v54[1] = v55;
            if (v50)
            {
              memcpy(v175, (v51 + v7[11]), 0x161uLL);
              sub_24A37B740(v175, v176, &qword_27EF3F840, &qword_24A4B6598);
              memcpy(v176, v175, 0x161uLL);
            }

            else
            {
              sub_24A3B4ACC(v176);
            }

            v79 = v159;
            memcpy(&v159[v7[11]], v176, 0x161uLL);
            *(v79 + 16) = 1;
            *(v79 + 33) = *(v51 + 33);
            v80 = *(v51 + 32);
            *(v79 + 24) = *(v51 + 24);
            v81 = v7[9];
            v82 = *(v51 + v81);
            *(v79 + 32) = v80;
            *(v79 + v81) = v82;
            v83 = *(v51 + v7[10]);

            sub_24A39A7B8(v51, type metadata accessor for FMFLocation);
            *(v79 + v7[10]) = v83;
            sub_24A39983C(v79, v158, type metadata accessor for FMFLocation);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v172 = sub_24A3B5C2C(0, v172[2] + 1, 1, v172);
            }

            v30 = v167;
            v85 = v172[2];
            v84 = v172[3];
            if (v85 >= v84 >> 1)
            {
              v172 = sub_24A3B5C2C((v84 > 1), v85 + 1, 1, v172);
            }

            v86 = v172;
            v172[2] = v85 + 1;
            sub_24A39983C(v158, v86 + v168 + v85 * v41, type metadata accessor for FMFLocation);
            if (*(v37 + 1))
            {
              v87 = *v37;
              v88 = *(v37 + 1);
            }

            else
            {
              v87 = 0;
              v88 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = sub_24A3BEA68(0, *(v164 + 2) + 1, 1, v164);
            }

            v90 = *(v164 + 2);
            v89 = *(v164 + 3);
            if (v90 >= v89 >> 1)
            {
              v164 = sub_24A3BEA68((v89 > 1), v90 + 1, 1, v164);
            }

            v91 = v164;
            *(v164 + 2) = v90 + 1;
            v92 = &v91[24 * v90];
            *(v92 + 4) = v87;
            *(v92 + 5) = v88;
            v92[48] = 1;
            sub_24A39A7B8(v37, type metadata accessor for FMFLocation);
            v41 = v169;
            v74 = v171;
            v78 = v170;
            if (!v170)
            {
              goto LABEL_46;
            }

            goto LABEL_40;
          }
        }

        else
        {
          v50 = 1;
          if (!v37[33])
          {
            goto LABEL_10;
          }
        }

        v66 = v157;
        sub_24A3992EC(v37, v157, type metadata accessor for FMFLocation);
        v67 = v7[8];
        v68 = sub_24A4AAB20();
        (*(*(v68 - 8) + 56))(&v19[v67], 1, 1, v68);
        v69 = *(v66 + 8);
        *v19 = *v66;
        *(v19 + 1) = v69;
        if (v50)
        {
          memcpy(v175, (v66 + v7[11]), 0x161uLL);
          sub_24A37B740(v175, v176, &qword_27EF3F840, &qword_24A4B6598);
          memcpy(v176, v175, 0x161uLL);
        }

        else
        {
          sub_24A3B4ACC(v176);
        }

        memcpy(&v19[v7[11]], v176, 0x161uLL);
        v19[16] = 1;
        v19[33] = *(v66 + 33);
        v70 = *(v66 + 32);
        *(v19 + 3) = *(v66 + 24);
        v71 = v7[9];
        v72 = *(v66 + v71);
        v19[32] = v70;
        v19[v71] = v72;
        v73 = *(v66 + v7[10]);

        sub_24A39A7B8(v66, type metadata accessor for FMFLocation);
        v19[v7[10]] = v73;
        sub_24A39983C(v19, v165, type metadata accessor for FMFLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_24A3B5C2C(0, v172[2] + 1, 1, v172);
        }

        v74 = v171;
        v76 = v172[2];
        v75 = v172[3];
        if (v76 >= v75 >> 1)
        {
          v172 = sub_24A3B5C2C((v75 > 1), v76 + 1, 1, v172);
        }

        v77 = v172;
        v172[2] = v76 + 1;
        sub_24A39983C(v165, v77 + v168 + v76 * v41, type metadata accessor for FMFLocation);
        sub_24A39A7B8(v37, type metadata accessor for FMFLocation);
        v78 = v170;
        if (!v170)
        {
LABEL_46:

          v98 = v151;
          swift_beginAccess();
          if (*(v98 + 632))
          {
            v99 = *(v98 + 632);
          }

          else
          {
            v99 = MEMORY[0x277D84F90];
          }

          v100 = *(v99 + 16);
          if (v100)
          {
            v167 = v99;
            v101 = v99 + v168;

            v102 = v101;
            v171 = v100 - 1;
            v103 = MEMORY[0x277D84F90];
            v105 = v152;
            v104 = v153;
            while (1)
            {
              v170 = v102;
              sub_24A3992EC(v102, v16, type metadata accessor for FMFLocation);
              v106 = v16[33];
              memcpy(v176, &v16[v7[11]], 0x161uLL);
              if (sub_24A3B9C24(v176) == 1 || (v106 ? (v107 = 604800.0) : (v107 = 7200.0), v108 = v176[38], v109 = [v108 timestamp], v110 = v162, sub_24A4AAAA0(), v109, sub_24A4AAA70(), v112 = v111, v113 = v110, v114 = v169, (*v160)(v113, v163), v108, fabs(v112) >= v107))
              {
                if (qword_27EF3EBF8 != -1)
                {
                  swift_once();
                }

                v116 = sub_24A4AB630();
                sub_24A378E18(v116, qword_27EF4E260);
                v117 = v16;
                v118 = v155;
                sub_24A3992EC(v117, v155, type metadata accessor for FMFLocation);
                v119 = sub_24A4AB600();
                v120 = sub_24A4ABCE0();
                if (os_log_type_enabled(v119, v120))
                {
                  v121 = swift_slowAlloc();
                  v122 = swift_slowAlloc();
                  v175[0] = v122;
                  *v121 = v156;
                  v123 = FMFLocation.debugDescription.getter();
                  v125 = v124;
                  sub_24A39A7B8(v118, type metadata accessor for FMFLocation);
                  v126 = sub_24A37BD58(v123, v125, v175);
                  v105 = v152;

                  *(v121 + 4) = v126;
                  _os_log_impl(&dword_24A376000, v119, v120, "FMFDataManager: Purging location: %s", v121, 0xCu);
                  sub_24A37EEE0(v122);
                  v127 = v122;
                  v104 = v153;
                  MEMORY[0x24C219130](v127, -1, -1);
                  MEMORY[0x24C219130](v121, -1, -1);
                }

                else
                {

                  sub_24A39A7B8(v118, type metadata accessor for FMFLocation);
                }

                v115 = 0;
                v16 = v161;
                v114 = v169;
              }

              else
              {
                v115 = 1;
              }

              sub_24A3992EC(v16, v105, type metadata accessor for FMFLocation);
              v128 = v7[8];
              v129 = sub_24A4AAB20();
              (*(*(v129 - 8) + 56))(v104 + v128, 1, 1, v129);
              v130 = *(v105 + 8);
              *v104 = *v105;
              *(v104 + 8) = v130;
              if (v115)
              {
                memcpy(v174, (v105 + v7[11]), 0x161uLL);
                sub_24A37B740(v174, &v173, &qword_27EF3F840, &qword_24A4B6598);
                memcpy(v175, v174, 0x161uLL);
              }

              else
              {
                sub_24A3B4ACC(v175);
              }

              memcpy((v104 + v7[11]), v175, 0x161uLL);
              *(v104 + 16) = 1;
              *(v104 + 33) = *(v105 + 33);
              v131 = *(v105 + 32);
              *(v104 + 24) = *(v105 + 24);
              v132 = v7[9];
              v133 = *(v105 + v132);
              *(v104 + 32) = v131;
              *(v104 + v132) = v133;
              v134 = *(v105 + v7[10]);

              sub_24A39A7B8(v105, type metadata accessor for FMFLocation);
              *(v104 + v7[10]) = v134;
              sub_24A39983C(v104, v166, type metadata accessor for FMFLocation);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_24A3B5C2C(0, v103[2] + 1, 1, v103);
              }

              v136 = v103[2];
              v135 = v103[3];
              if (v136 >= v135 >> 1)
              {
                v103 = sub_24A3B5C2C((v135 > 1), v136 + 1, 1, v103);
              }

              v103[2] = v136 + 1;
              sub_24A39983C(v166, v103 + v168 + v136 * v114, type metadata accessor for FMFLocation);
              sub_24A39A7B8(v16, type metadata accessor for FMFLocation);
              if (!v171)
              {
                break;
              }

              --v171;
              v102 = v170 + v114;
            }
          }

          else
          {

            v103 = MEMORY[0x277D84F90];
          }

          v137 = v151;
          *(v151 + 584) = v164;

          swift_beginAccess();
          v138 = v172;
          *(v137 + 616) = v172;

          *(v137 + 632) = v103;

          v139 = swift_allocObject();
          *(v139 + 16) = v137;
          *(v139 + 24) = v138;
          v176[4] = sub_24A454400;
          v176[5] = v139;
          v176[0] = MEMORY[0x277D85DD0];
          v176[1] = 1107296256;
          v176[2] = sub_24A388564;
          v176[3] = &unk_285D89618;
          v140 = _Block_copy(v176);

          v141 = v145;
          sub_24A4AB6B0();
          v174[0] = MEMORY[0x277D84F90];
          sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
          sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
          v142 = v147;
          v143 = v150;
          sub_24A4ABE90();
          MEMORY[0x24C218190](0, v141, v142, v140);
          _Block_release(v140);
          (*(v149 + 8))(v142, v143);
          (*(v146 + 8))(v141, v148);
        }

LABEL_40:
        v170 = v78 - 1;
        v40 = v74 + v41;
      }
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v93 = sub_24A4AB630();
  sub_24A378E18(v93, qword_27EF4E260);
  v94 = sub_24A4AB600();
  v95 = sub_24A4ABCE0();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_24A376000, v94, v95, "FMFDataManager: Purge skipped, we don't have any", v96, 2u);
    MEMORY[0x24C219130](v96, -1, -1);
  }

  return sub_24A44E7AC();
}

void *sub_24A44E1E4(uint64_t a1, uint64_t a2)
{
  result = sub_24A4ABD70();
  if (v8 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
      sub_24A4ABD70();
      (*(v4 + 72))(v8, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(a1 + 40);
      v7 = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
      sub_24A4ABD70();
      (*(v6 + 56))(v8, 0, v7, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A44E38C()
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
    _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager: reset falling back to legacy states", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v7 = *(v1 + 608);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = sub_24A3EDED4(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = (v7 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v14 = *(v9 + 2);
      v13 = *(v9 + 3);

      if (v14 >= v13 >> 1)
      {
        v9 = sub_24A3EDED4((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[24 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v15[48] = 0;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  MEMORY[0x28223BE20](v6);
  sub_24A4ABD70();
}

uint64_t sub_24A44E598()
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
    _os_log_impl(&dword_24A376000, v3, v4, "FMFDataManager: reset shallowlocates in progress", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v7 = *(v1 + 600);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = sub_24A3EDC98(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = (v7 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v9 + 2);
      v14 = *(v9 + 3);

      if (v13 >= v14 >> 1)
      {
        v9 = sub_24A3EDC98((v14 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v15 = &v9[24 * v13];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v15[48] = 1;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  MEMORY[0x28223BE20](v6);
  sub_24A4ABD70();
}

uint64_t sub_24A44E7AC()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v73 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24A4AB6E0();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v67 - v7;
  v8 = type metadata accessor for FMFLocation(0);
  v9 = *(v8 - 8);
  v89 = v8;
  v90 = v9;
  MEMORY[0x28223BE20](v8);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v67 - v12);
  MEMORY[0x28223BE20](v14);
  v79 = &v67 - v15;
  MEMORY[0x28223BE20](v16);
  v83 = &v67 - v17;
  MEMORY[0x28223BE20](v18);
  v82 = &v67 - v19;
  v75 = type metadata accessor for FMFFriend(0);
  v20 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A4AB630();
  sub_24A378E18(v23, qword_27EF4E260);
  v24 = sub_24A4AB600();
  v25 = sub_24A4ABCE0();
  v26 = os_log_type_enabled(v24, v25);
  v84 = v1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24A376000, v24, v25, "FMFDataManager: reset locating state for friends", v27, 2u);
    v28 = v27;
    v1 = v84;
    MEMORY[0x24C219130](v28, -1, -1);
  }

  v29 = sub_24A390DA0();
  v88 = *(v29 + 16);
  if (v88)
  {
    v68 = v3;
    v69 = v2;
    v30 = *(v20 + 80);
    v70 = v29;
    v87 = v29 + ((v30 + 32) & ~v30);
    v78 = (v1 + 616);
    swift_beginAccess();
    v31 = 0;
    v86 = *(v20 + 72);
    v76 = (v90 + 48);
    v77 = (v90 + 56);
    v32 = MEMORY[0x277D84F90];
    v91 = MEMORY[0x277D84F90];
    v33 = v85;
    do
    {
      sub_24A3992EC(v87 + v86 * v31, v22, type metadata accessor for FMFFriend);
      if (*(v1 + 672) & 1) != 0 || (v41 = *(v22 + *(v75 + 48)), v41 != 2) && (v41)
      {
        v34 = *v78;
        v35 = *(*v78 + 16);

        if (v35)
        {
          v36 = v34 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
          v37 = *(v90 + 72);
          do
          {
            sub_24A3992EC(v36, v13, type metadata accessor for FMFLocation);
            v38 = v13[1];
            if (v38)
            {
              v39 = *v13 == *v22 && v38 == v22[1];
              if (v39 || (sub_24A4AC270() & 1) != 0)
              {
                v33 = v85;
                sub_24A39983C(v13, v85, type metadata accessor for FMFLocation);
                v40 = 0;
                v1 = v84;
                goto LABEL_33;
              }
            }

            sub_24A39A7B8(v13, type metadata accessor for FMFLocation);
            v36 += v37;
            --v35;
          }

          while (v35);
          v40 = 1;
          v1 = v84;
          v33 = v85;
        }

        else
        {
          v40 = 1;
        }

LABEL_33:
        v56 = v89;
        (*v77)(v33, v40, 1, v89);

        if ((*v76)(v33, 1, v56) == 1)
        {
          sub_24A37EF2C(v33, &qword_27EF3F480, &unk_24A4B8C20);
        }

        else
        {
          v57 = v79;
          sub_24A39983C(v33, v79, type metadata accessor for FMFLocation);
          sub_24A3992EC(v57, v80, type metadata accessor for FMFLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_24A3B5C2C(0, v32[2] + 1, 1, v32);
          }

          v59 = v32[2];
          v58 = v32[3];
          if (v59 >= v58 >> 1)
          {
            v32 = sub_24A3B5C2C((v58 > 1), v59 + 1, 1, v32);
          }

          sub_24A39A7B8(v79, type metadata accessor for FMFLocation);
          v32[2] = v59 + 1;
          sub_24A39983C(v80, v32 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v59, type metadata accessor for FMFLocation);
        }
      }

      else
      {
        v42 = v32;
        v43 = *v22;
        v44 = v22[1];
        v45 = v82;
        *(v82 + 24) = 0;
        *(v45 + 32) = 1;
        v46 = v89;
        v47 = v89[8];
        v48 = sub_24A4AAB20();
        (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
        v81 = v43;
        *v45 = v43;
        *(v45 + 8) = v44;
        v32 = v42;
        sub_24A3B4ACC(v93);
        memcpy((v45 + v46[11]), v93, 0x161uLL);
        *(v45 + 16) = 1;
        *(v45 + 33) = 0;
        *(v45 + v46[9]) = 0;
        *(v45 + v46[10]) = 0;
        sub_24A3992EC(v45, v83, type metadata accessor for FMFLocation);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_24A3B5C2C(0, v42[2] + 1, 1, v42);
        }

        v50 = v32[2];
        v49 = v32[3];
        if (v50 >= v49 >> 1)
        {
          v32 = sub_24A3B5C2C((v49 > 1), v50 + 1, 1, v32);
        }

        v32[2] = v50 + 1;
        sub_24A39983C(v83, v32 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v50, type metadata accessor for FMFLocation);
        v51 = v91;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_24A3BEA68(0, *(v51 + 2) + 1, 1, v51);
        }

        v53 = *(v51 + 2);
        v52 = *(v51 + 3);
        v91 = v51;
        if (v53 >= v52 >> 1)
        {
          v91 = sub_24A3BEA68((v52 > 1), v53 + 1, 1, v91);
        }

        sub_24A39A7B8(v82, type metadata accessor for FMFLocation);
        v54 = v91;
        *(v91 + 2) = v53 + 1;
        v55 = &v54[24 * v53];
        *(v55 + 4) = v81;
        *(v55 + 5) = v44;
        v55[48] = 1;
        v1 = v84;
        v33 = v85;
      }

      ++v31;
      sub_24A39A7B8(v22, type metadata accessor for FMFFriend);
    }

    while (v31 != v88);

    v3 = v68;
    v2 = v69;
    v60 = MEMORY[0x277D84F90];
    v61 = v91;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
  }

  *(v1 + 584) = v61;

  swift_beginAccess();
  *(v1 + 616) = v32;

  v62 = swift_allocObject();
  *(v62 + 16) = v1;
  *(v62 + 24) = v32;
  v93[4] = sub_24A4543F0;
  v93[5] = v62;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 1107296256;
  v93[2] = sub_24A388564;
  v93[3] = &unk_285D895A0;
  v63 = _Block_copy(v93);

  v64 = v71;
  sub_24A4AB6B0();
  v92 = v60;
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  v65 = v73;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v64, v65, v63);
  _Block_release(v63);
  (*(v3 + 8))(v65, v2);
  (*(v72 + 8))(v64, v74);
}

void *sub_24A44F2C4(uint64_t a1, uint64_t a2)
{
  result = sub_24A4ABD70();
  if (v13 == 1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A4AB630();
    sub_24A378E18(v4, qword_27EF4E260);

    v5 = sub_24A4AB600();
    v6 = sub_24A4ABCE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
      sub_24A4ABD70();
      v8 = *(v13 + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_24A376000, v5, v6, "FMFDataManager: resetting locating in progress for (%ld friend", v7, 0xCu);
      MEMORY[0x24C219130](v7, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3F168, &unk_24A4BA240);
      sub_24A4ABD70();
      (*(v9 + 72))(v13, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(a1 + 40);
      v12 = swift_getObjectType();
      sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
      sub_24A4ABD70();
      (*(v11 + 56))(v13, 0, v12, v11);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A44F594(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFLocationAlert(0);
  v7 = v6;
  v8 = *(a1 + *(v6 + 72));
  if (v8)
  {
    v9 = a2[1];
    v36[0] = *a2;
    v36[1] = v9;
    MEMORY[0x28223BE20](v6);
    v32[2] = v36;

    v10 = sub_24A45363C(sub_24A454B90, v32, v8);

    if (v10)
    {
      return 1;
    }
  }

  v12 = *(a1 + *(v7 + 68));
  if (!v12)
  {
    return 0;
  }

  v32[5] = v3;
  v13 = a2[4];
  v14 = *(v12 + 16);
  result = swift_bridgeObjectRetain_n();
  v35 = v14;
  if (!v14)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v15 = 0;
  v34 = v12 + 32;
  v16 = v13 + 56;
  v17 = MEMORY[0x277D84F90];
  v33 = v12;
  do
  {
    v18 = v15;
    while (1)
    {
      if (v18 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = v18 + 1;
      if (*(v13 + 16))
      {
        break;
      }

LABEL_9:
      v18 = v15;
      if (v15 == v35)
      {
        goto LABEL_29;
      }
    }

    v19 = (v34 + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_24A4AC360();

    sub_24A4AB8F0();
    v22 = sub_24A4AC3A0();
    v23 = -1 << *(v13 + 32);
    v24 = v22 & ~v23;
    if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    v25 = ~v23;
    while (1)
    {
      v26 = (*(v13 + 48) + 16 * v24);
      v27 = *v26 == v21 && v26[1] == v20;
      if (v27 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    if ((result & 1) == 0)
    {
      result = sub_24A3DBDA8(0, *(v17 + 16) + 1, 1);
      v17 = v37;
    }

    v29 = *(v17 + 16);
    v28 = *(v17 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_24A3DBDA8((v28 > 1), v29 + 1, 1);
      v17 = v37;
    }

    *(v17 + 16) = v29 + 1;
    v30 = v17 + 16 * v29;
    *(v30 + 32) = v21;
    *(v30 + 40) = v20;
    v12 = v33;
  }

  while (v15 != v35);
LABEL_29:
  swift_bridgeObjectRelease_n();
  v31 = *(v17 + 16);

  return v31 != 0;
}

void sub_24A44F860(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *, __n128), uint64_t (*a4)(void *, __n128))
{
  v38 = a4;
  v7 = type metadata accessor for FMFLocationAlert(0);
  v8 = v7;
  v9 = *(a1 + *(v7 + 72));
  if (!v9 || (v10 = a2[1], v39 = *a2, v40 = v10, MEMORY[0x28223BE20](v7), v33 = &v39, , v11 = sub_24A45363C(a3, v32, v9), , (v11 & 1) == 0))
  {
    v12 = *(a1 + *(v8 + 68));
    if (v12)
    {
      v13 = a2[4];
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = sub_24A3A11D8(*(v13 + 16), 0);
        v16 = sub_24A3A1268(&v39, v15 + 4, v14, v13);
        v17 = v39;
        v37 = v41;

        sub_24A3A13C0(v17);
        if (v16 != v14)
        {
LABEL_24:
          __break(1u);
          return;
        }

        v18 = v15;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      v19 = *(v12 + 16);
      v37 = v18;

      if (v19)
      {
        v21 = 0;
        v22 = v12 + 40;
        v34 = v19 - 1;
        v23 = MEMORY[0x277D84F90];
        v35 = v12 + 40;
        do
        {
          v36 = v23;
          v24 = (v22 + 16 * v21);
          v25 = v21;
          while (1)
          {
            if (v25 >= *(v12 + 16))
            {
              __break(1u);
              goto LABEL_24;
            }

            v26 = *(v24 - 1);
            v27 = *v24;
            v21 = v25 + 1;
            v39 = v26;
            v40 = v27;
            MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
            v33 = &v39;

            if (sub_24A45363C(v38, v32, v37))
            {
              break;
            }

            v24 += 2;
            ++v25;
            if (v19 == v21)
            {
              goto LABEL_21;
            }
          }

          v23 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_24A3DBDA8(0, *(v23 + 16) + 1, 1);
            v23 = v42;
          }

          v29 = *(v23 + 16);
          v28 = *(v23 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v36 = v29 + 1;
            isUniquelyReferenced_nonNull_native = sub_24A3DBDA8((v28 > 1), v29 + 1, 1);
            v30 = v36;
            v23 = v42;
          }

          *(v23 + 16) = v30;
          v31 = v23 + 16 * v29;
          *(v31 + 32) = v26;
          *(v31 + 40) = v27;
          v22 = v35;
        }

        while (v34 != v25);
      }

LABEL_21:
    }
  }
}

void sub_24A44FB50(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_24A42EE0C(a2, a3, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v11 = v6;
    v12 = sub_24A4AC060();
    v6 = v11;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x24C218380](0);
  }

  else
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  sub_24A42E63C(v9, v14);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 728);
  *(a1 + 728) = 0x8000000000000000;
  sub_24A430ACC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 728) = v13;
  swift_endAccess();
}

uint64_t *sub_24A44FCB8@<X0>(uint64_t **a1@<X8>)
{
  result = sub_24A39CB88();
  *a1 = result;
  return result;
}

double sub_24A44FCF4(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_24A3873B4(__dst);
  sub_24A37F0C8(v7);
  sub_24A37F110(0, 0, 0, 0);
  *&v5[183] = v7[11];
  *&v5[199] = v7[12];
  *&v5[215] = v7[13];
  *&v5[231] = v7[14];
  *&v5[119] = v7[7];
  *&v5[135] = v7[8];
  *&v5[151] = v7[9];
  *&v5[167] = v7[10];
  *&v5[55] = v7[3];
  *&v5[71] = v7[4];
  *&v5[87] = v7[5];
  *&v5[103] = v7[6];
  *&v5[7] = v7[0];
  *&v5[23] = v7[1];
  *&v5[39] = v7[2];
  memset(v8, 0, 57);
  sub_24A37EF2C(v8, &qword_27EF3FD68, &unk_24A4B9F40);
  v2 = MEMORY[0x277D84F90];
  *__src = MEMORY[0x277D84F90];
  *(__src + 1) = v2;
  *(__src + 2) = v2;
  *(__src + 3) = v2;
  *(__src + 4) = v2;
  *(__src + 5) = v2;
  *(__src + 6) = v2;
  *(__src + 7) = v2;
  *(__src + 8) = v2;
  *(__src + 72) = 0u;
  *(__src + 88) = 0u;
  *(__src + 13) = 0;
  __src[112] = 1;
  *(__src + 161) = *&v5[48];
  *(__src + 145) = *&v5[32];
  *(__src + 129) = *&v5[16];
  *(__src + 113) = *v5;
  *(__src + 225) = *&v5[112];
  *(__src + 209) = *&v5[96];
  *(__src + 193) = *&v5[80];
  *(__src + 177) = *&v5[64];
  *(__src + 257) = *&v5[144];
  *(__src + 273) = *&v5[160];
  *(__src + 241) = *&v5[128];
  *(__src + 44) = *&v5[239];
  *(__src + 321) = *&v5[208];
  *(__src + 337) = *&v5[224];
  *(__src + 289) = *&v5[176];
  *(__src + 305) = *&v5[192];
  result = 0.0;
  *(__src + 401) = 0u;
  *(__src + 376) = 0u;
  *(__src + 392) = 0u;
  *(__src + 360) = 0u;
  *(__src + 53) = v2;
  *(__src + 54) = v2;
  v4 = MEMORY[0x277D84F98];
  *(__src + 55) = v2;
  *(__src + 56) = v4;
  return result;
}

void sub_24A44FED0()
{
  v1 = sub_24A4AB690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A4AB6E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(v0 + 48) + OBJC_IVAR____TtC7FMFCore23FMFManagerConfiguration_disableContactMatching) & 1) == 0)
  {
    v13 = *(v0 + 56);
    aBlock[4] = sub_24A45405C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D892F8;
    v12 = v7;
    v10 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v14 = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v9, v4, v10);
    _Block_release(v10);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v12);
  }
}

uint64_t sub_24A45019C(uint64_t result)
{
  v1 = *(result + 576);
  if (v1)
  {
    v2 = *(result + 720);

    sub_24A39F9FC(v1, v2);
  }

  return result;
}

uint64_t sub_24A450218(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A4AB6E0();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 56);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_24A454024;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D892A8;
  v12 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v16 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_24A4504F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A4AB690();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A4AB6E0();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 720) = a2;

  *(a1 + 576) = 0;

  sub_24A387F3C();
  aBlock[4] = sub_24A45402C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D892D0;
  v10 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v15 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v10);
  _Block_release(v10);
  (*(v14 + 8))(v6, v4);
  (*(v7 + 8))(v9, v13);
}

uint64_t sub_24A4507E0(uint64_t a1, _BYTE *a2)
{
  v5 = sub_24A4AB690();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMFFriend(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  LOBYTE(a2) = *a2;
  v18 = *(v2 + 56);
  sub_24A3992EC(a1, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFFriend);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  sub_24A39983C(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for FMFFriend);
  *(v15 + v14 + v13) = a2;
  aBlock[4] = sub_24A454064;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89348;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v7, v16);
  _Block_release(v16);
  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

uint64_t sub_24A450B84(uint64_t a1, uint64_t *a2, int a3)
{
  v26 = a3;
  v5 = sub_24A4AB690();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A4AB6E0();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-v12];
  v14 = *a2;
  v15 = a2[1];
  sub_24A3992EC(a2, &v25[-v12], type metadata accessor for FMFFriend);
  v16 = type metadata accessor for FMFFriend(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v13, 0, 1, v16);
  swift_beginAccess();

  sub_24A39AF88(v13, v14, v15);
  swift_endAccess();
  v18 = sub_24A453580(aBlock);
  v19 = sub_24A450FD8(v32, v14, v15);
  v21 = v20;
  if (!(*(v17 + 48))(v20, 1, v16))
  {
    *(v21 + *(v16 + 84)) = v26;
  }

  (v19)(v32, 0);
  (v18)(aBlock, 0);
  *(a1 + 576) = 0;

  aBlock[4] = sub_24A3BCC0C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89370;
  v22 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v32[0] = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  v23 = v30;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v7, v22);
  _Block_release(v22);
  (*(v29 + 8))(v7, v23);
  (*(v27 + 8))(v10, v28);
}

uint64_t (*sub_24A450FD8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24A453818(v6, a2, a3);
  return sub_24A451060;
}

void sub_24A451060(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_24A4510D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = a4;
  v7 = sub_24A4AB690();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24A4AB6E0();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_24A453580(aBlock);
  v14 = sub_24A450FD8(v33, a2, a3);
  v16 = v15;
  v17 = type metadata accessor for FMFFriend(0);
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    *(v16 + *(v17 + 84)) = 7;
  }

  (v14)(v33, 0);
  (v13)(aBlock, 0);
  (*(v18 + 56))(v12, 1, 1, v17);
  swift_beginAccess();

  sub_24A39AF88(v12, a2, a3);
  result = swift_endAccess();
  if (v31)
  {
    *(a1 + 576) = 0;

    aBlock[4] = sub_24A3BCC0C;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D893E8;
    v20 = _Block_copy(aBlock);

    v21 = v25;
    sub_24A4AB6B0();
    v33[0] = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    v22 = v27;
    v23 = v30;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v21, v22, v20);
    _Block_release(v20);
    (*(v29 + 8))(v22, v23);
    (*(v26 + 8))(v21, v28);
  }

  return result;
}

uint64_t sub_24A451528(uint64_t a1)
{
  v3 = sub_24A4AB690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFFriend(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v17[1] = *(v1 + 56);
  sub_24A3992EC(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFFriend);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_24A39983C(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FMFFriend);
  aBlock[4] = sub_24A4549CC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89988;
  v15 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v19 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v15);
  _Block_release(v15);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v18);
}

uint64_t sub_24A4518B8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A4AB690();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB6E0();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = *a2;
  v14 = a2[1];
  sub_24A3992EC(a2, &v18 - v11, type metadata accessor for FMFFriend);
  v15 = type metadata accessor for FMFFriend(0);
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  swift_beginAccess();

  sub_24A39AF88(v12, v13, v14);
  swift_endAccess();
  *(a1 + 576) = 0;

  aBlock[4] = sub_24A3BCC0C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D899B0;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v16);
  _Block_release(v16);
  (*(v20 + 8))(v6, v4);
  (*(v18 + 8))(v9, v19);
}

uint64_t sub_24A451C90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v7 = v6;
  v11 = sub_24A4AB690();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24A4AB6E0();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v7 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v26 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v25);
}

uint64_t sub_24A451F70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_24A4AB690();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v20 = *(v11 - 8);
  v21 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - v15;
  v17 = type metadata accessor for FMFFriend(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  swift_beginAccess();

  sub_24A39AF88(v16, a2, a3);
  result = swift_endAccess();
  if (a4)
  {
    *(a1 + 576) = 0;

    aBlock[4] = sub_24A3BCC0C;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89938;
    v19 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v23 = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v13, v10, v19);
    _Block_release(v19);
    (*(v22 + 8))(v10, v8);
    (*(v20 + 8))(v13, v21);
  }

  return result;
}

uint64_t sub_24A452308(uint64_t *a1, char a2)
{
  v5 = sub_24A4AB690();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v18 = *(v2 + 56);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v11;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 48) = v13;
  *(v15 + 56) = a2;
  aBlock[4] = sub_24A454A30;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89A00;
  v16 = _Block_copy(aBlock);

  sub_24A388B00(v11, v12, v14, v13);
  sub_24A4AB6B0();
  v21 = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v7, v16);
  _Block_release(v16);
  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

uint64_t sub_24A452608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v37 = a6;
  v40 = a4;
  v39 = sub_24A4AB690();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24A4AB6E0();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 536);
  v15 = v14[5];
  v16 = v14[6];
  v18 = v14[7];
  v17 = v14[8];
  v14[5] = a2;
  v14[6] = a3;
  v19 = v40;
  v14[7] = v40;
  v14[8] = a5;
  sub_24A388B00(a2, a3, v19, a5);
  sub_24A37F110(v15, v16, v18, v17);
  v20 = *(a1 + 64);
  v48 = sub_24A454A44;
  v49 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_24A388564;
  v47 = &unk_285D89A28;
  v21 = _Block_copy(&aBlock);
  v36 = a1;
  v22 = v13;

  sub_24A4AB6B0();
  v23 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v24 = sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  v25 = v39;
  v35[0] = v24;
  sub_24A4ABE90();
  v35[1] = v20;
  MEMORY[0x24C218190](0, v22, v11, v21);
  _Block_release(v21);
  v26 = *(v42 + 8);
  v27 = v11;
  v42 += 8;
  v26(v11, v25);
  v28 = v38;
  v29 = *(v41 + 8);
  v41 += 8;
  v29(v22, v38);

  if (!v40 && (v37 & 1) != 0)
  {
    v31 = v23;
    v32 = v36;
    *(v36 + 576) = 0;

    v48 = sub_24A3BCC0C;
    v49 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_24A388564;
    v47 = &unk_285D89A50;
    v33 = _Block_copy(&aBlock);

    sub_24A4AB6B0();
    v43 = v31;
    v34 = v39;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v22, v27, v33);
    _Block_release(v33);
    v26(v27, v34);
    v29(v22, v28);
  }

  return result;
}

void sub_24A452A58(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A4ABD70();
    v4 = v6;
    v5 = v7;
    (*(v2 + 8))(&v4, ObjectType, v2);
    swift_unknownObjectRelease();
    sub_24A37F110(v4, *(&v4 + 1), v5, *(&v5 + 1));
  }
}

uint64_t sub_24A452B2C(_OWORD *a1, char a2)
{
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v21[0] = *a1;
  v21[1] = v12;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  v17 = *(v2 + 56);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v2;
  v14 = a1[1];
  *(v13 + 32) = *a1;
  *(v13 + 48) = v14;
  *(v13 + 64) = a1[2];
  *(v13 + 73) = *(a1 + 41);
  aBlock[4] = sub_24A454A4C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D89AA0;
  v15 = _Block_copy(aBlock);

  sub_24A37B740(v21, v19, &qword_27EF3FD68, &unk_24A4B9F40);
  sub_24A4AB6B0();
  v19[0] = MEMORY[0x277D84F90];
  sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v8, v15);
  _Block_release(v15);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

void sub_24A452E64(char a1, uint64_t a2, _OWORD *a3)
{
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = *(a2 + 536);
    v16 = *(v15 + 72);
    v17 = *(v15 + 80);
    v18 = *(v15 + 88);
    v19 = *(v15 + 96);
    v34 = v7;
    v20 = *(v15 + 104);
    v30 = *(v15 + 112);
    v31 = v6;
    v32 = v9;
    v33 = v11;
    v21 = *(v15 + 120);
    v23 = a3[1];
    v22 = a3[2];
    v24 = *(a3 + 41);
    *(v15 + 72) = *a3;
    *(v15 + 113) = v24;
    *(v15 + 104) = v22;
    *(v15 + 88) = v23;
    v25 = a3;
    v26 = v12;
    sub_24A37B740(v25, aBlock, &qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A3B2D38(v16, v17, v18, v19, v20, v30, v21);
    aBlock[4] = sub_24A454A5C;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89AC8;
    v27 = _Block_copy(aBlock);

    sub_24A4AB6B0();
    v35 = MEMORY[0x277D84F90];
    sub_24A37F01C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40, MEMORY[0x277D83970]);
    v28 = v32;
    v29 = v31;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v14, v28, v27);
    _Block_release(v27);
    (*(v34 + 8))(v28, v29);
    (*(v26 + 8))(v14, v33);
  }
}

uint64_t sub_24A4531B0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A4ABD70();
    v5 = v7[3];
    v6 = v7[4];
    v7[0] = v8[0];
    *(v7 + 9) = *(v8 + 9);
    (*(v3 + 24))(&v5, ObjectType, v3);
    swift_unknownObjectRelease();
    v9[0] = v5;
    v9[1] = v6;
    v10[0] = v7[0];
    *(v10 + 9) = *(v7 + 9);
    return sub_24A37EF2C(v9, &qword_27EF3FD68, &unk_24A4B9F40);
  }

  return result;
}

uint64_t FMFPendingUpdateReason.hash(into:)()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      return MEMORY[0x24C218780](v2);
    }

    if (v1 == 3)
    {
      v2 = 1;
      return MEMORY[0x24C218780](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        v2 = 2;
        return MEMORY[0x24C218780](v2);
      case 5u:
        v2 = 3;
        return MEMORY[0x24C218780](v2);
      case 6u:
        v2 = 5;
        return MEMORY[0x24C218780](v2);
    }
  }

  MEMORY[0x24C218780](4);
  return sub_24A4AC380();
}

uint64_t FMFPendingUpdateReason.hashValue.getter()
{
  v1 = *v0;
  sub_24A4AC360();
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x24C218780](4);
    sub_24A4AC380();
    return sub_24A4AC3A0();
  }

  if (v1 == 4)
  {
    v2 = 2;
    goto LABEL_12;
  }

  if (v1 == 5)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 != 6)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x24C218780](v2);
  return sub_24A4AC3A0();
}

uint64_t sub_24A453428()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      v2 = 0;
      return MEMORY[0x24C218780](v2);
    }

    if (v1 == 3)
    {
      v2 = 1;
      return MEMORY[0x24C218780](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        v2 = 2;
        return MEMORY[0x24C218780](v2);
      case 5u:
        v2 = 3;
        return MEMORY[0x24C218780](v2);
      case 6u:
        v2 = 5;
        return MEMORY[0x24C218780](v2);
    }
  }

  MEMORY[0x24C218780](4);
  return sub_24A4AC380();
}

uint64_t sub_24A4534BC(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x24C218780](4);
    sub_24A4AC380();
    return sub_24A4AC3A0();
  }

  if (v2 == 4)
  {
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 5)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 != 6)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  MEMORY[0x24C218780](v3);
  return sub_24A4AC3A0();
}

uint64_t sub_24A4535D0()
{

  sub_24A37F110(v0[5], v0[6], v0[7], v0[8]);
  sub_24A3B2D38(v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);

  return swift_deallocClassInstance();
}

uint64_t sub_24A45363C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24A4536E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_24A4AB960();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_24A4AB960();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_24A4537B8(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_24A4A91D8();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_24A4A5AB4(v4, v5);
  return 1;
}

void (*sub_24A453818(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
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
  v7[8] = sub_24A453E58(v7);
  v7[9] = sub_24A453924(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24A4538C4;
}

void sub_24A4538C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24A453924(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for FMFFriend(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_24A39B2C8(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_24A39983C(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for FMFFriend);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_24A453C00;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_24A4A91D8();
      goto LABEL_16;
    }

    sub_24A4A5AB4(v25, a4 & 1);
    v29 = sub_24A39B2C8(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_24A4AC2B0();
  __break(1u);
  return result;
}

void sub_24A453C00(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_24A37B740(v5, v6, &qword_27EF3F2D0, &qword_24A4B4F50);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_24A39983C(v9, *(v2 + 6), type metadata accessor for FMFFriend);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_24A39983C(v13, v14, type metadata accessor for FMFFriend);
        sub_24A4A8218(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_24A37B740(v5, v17, &qword_27EF3F2D0, &qword_24A4B4F50);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v22 = *(v2 + 2);
      sub_24A39983C(v9, *(v2 + 7), type metadata accessor for FMFFriend);
      v11 = *v22;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24A39983C(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for FMFFriend);
      goto LABEL_10;
    }
  }

  sub_24A37EF2C(v9, &qword_27EF3F2D0, &qword_24A4B4F50);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_24A406964(*(v20 + 48) + 16 * v19);
    sub_24A4A7450(v19, v20, v21);
  }

LABEL_10:
  v23 = *(v2 + 9);
  v24 = *(v2 + 10);
  v26 = *(v2 + 7);
  v25 = *(v2 + 8);
  v28 = *(v2 + 5);
  v27 = *(v2 + 6);
  sub_24A37EF2C(v24, &qword_27EF3F2D0, &qword_24A4B4F50);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);

  free(v2);
}

uint64_t (*sub_24A453E58(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24A453E80;
}

uint64_t sub_24A453E8C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270() & 1;
  }
}

BOOL _s7FMFCore22FMFPendingUpdateReasonO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_17;
      }

      if (v3 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(v2)
  {
    case 4u:
      return v3 == 4;
    case 5u:
      return v3 == 5;
    case 6u:
      return v3 == 6;
  }

LABEL_17:
  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t sub_24A453F88()
{
  result = qword_27EF40560;
  if (!qword_27EF40560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40560);
  }

  return result;
}

uint64_t sub_24A453FF0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A45400C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_24A454064()
{
  v1 = *(type metadata accessor for FMFFriend(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = *(v3 + *(v1 + 64));

  return sub_24A450B84(v2, v3, v4);
}

uint64_t *sub_24A45413C@<X0>(uint64_t **a1@<X8>)
{
  result = sub_24A39CB88();
  *a1 = result;
  return result;
}

uint64_t sub_24A45416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(type metadata accessor for FMFLocation(0) - 8);
  v7 = *(v6 + 72);
  v8 = (((*(v6 + 80) + 32) & ~*(v6 + 80)) + a1 + 8);
  while (1)
  {
    if (*v8)
    {
      sub_24A3A1434();
      if (sub_24A4ABE60())
      {
        break;
      }
    }

    v8 = (v8 + v7);
    if (v3 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

void sub_24A4542A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

unint64_t sub_24A454414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for FMFLocation(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_24A45455C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24A3B5C2C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_24A454414(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24A45461C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMFLocation(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (v33 - v15);
  v17 = *a1;
  result = sub_24A45416C(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v33[1] = 0;
  if (v19)
  {
    return v17[2];
  }

  v37 = v10;
  v38 = v13;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v44 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_30;
  }

  v22 = v17 + 2;
  v21 = v17[2];
  if (v20 == v21)
  {
    return v44;
  }

  v39 = v8;
  while (v20 < v21)
  {
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = v17 + v23;
    v25 = *(v8 + 72);
    v26 = v25 * v20;
    sub_24A3992EC(v17 + v23 + v25 * v20, v16, type metadata accessor for FMFLocation);
    v27 = v16[1];
    if (v27)
    {
      v42 = *v16;
      v43 = v27;
      v40 = v35;
      v41 = v36;
      sub_24A3A1434();
      v28 = sub_24A4ABE60();
      result = sub_24A39A7B8(v16, type metadata accessor for FMFLocation);
      if (v28)
      {
        v8 = v39;
        goto LABEL_11;
      }
    }

    else
    {
      result = sub_24A39A7B8(v16, type metadata accessor for FMFLocation);
    }

    v29 = v44;
    if (v20 == v44)
    {
      v8 = v39;
    }

    else
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v30 = *v22;
      if (v44 >= v30)
      {
        goto LABEL_27;
      }

      v31 = v25 * v44;
      result = sub_24A3992EC(&v24[v25 * v44], v38, type metadata accessor for FMFLocation);
      if (v20 >= v30)
      {
        goto LABEL_28;
      }

      sub_24A3992EC(&v24[v26], v37, type metadata accessor for FMFLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24A473E3C(v17);
      }

      v32 = v34;
      v8 = v39;
      result = sub_24A39AF20(v37, v17 + v23 + v31, type metadata accessor for FMFLocation);
      if (v20 >= v17[2])
      {
        goto LABEL_29;
      }

      result = sub_24A39AF20(v38, v17 + v23 + v26, type metadata accessor for FMFLocation);
      *v32 = v17;
      v29 = v44;
    }

    v44 = v29 + 1;
LABEL_11:
    ++v20;
    v22 = v17 + 2;
    v21 = v17[2];
    if (v20 == v21)
    {
      return v44;
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
  return result;
}

uint64_t sub_24A454970(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24A4549CC()
{
  v1 = *(type metadata accessor for FMFFriend(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_24A4518B8(v2, v3);
}

unint64_t sub_24A454A64()
{
  result = qword_27EF405F0;
  if (!qword_27EF405F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF405F0);
  }

  return result;
}

uint64_t FMFStopSharingAction.__allocating_init(friend:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A423930(a1, v2 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend);
  *(v2 + 16) = 1;
  return v2;
}

uint64_t FMFStopSharingAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend);
  *(v1 + 16) = 1;
  return v1;
}

uint64_t sub_24A454C30()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend(0);
  sub_24A4AC030();
  return 0;
}

uint64_t FMFStopSharingAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFStopSharingAction(uint64_t a1)
{
  result = qword_27EF40610;
  if (!qword_27EF40610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A454E90(uint64_t a1)
{
  result = type metadata accessor for FMFFriend(319);
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

uint64_t *sub_24A454F5C()
{
  type metadata accessor for FMFContactsDataController(0);
  swift_allocObject();
  result = FMFContactsDataController.init(isSnapshotMode:)(0);
  qword_27EF40620 = result;
  return result;
}

id static FMFCoreHelper.contact(for:keysToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EF3EBE8 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    swift_once();
    a1 = v4;
    a2 = v5;
    a3 = v6;
  }

  return sub_24A3AB248(a1, a2, a3);
}

uint64_t static FMFCoreHelper.displayName(for:)(void *a1)
{
  if (qword_27EF3EBE8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  sub_24A42E63C(a1, v4);
  v1 = v5;

  return v1;
}

id FMFCoreHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMFCoreHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFCoreHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FMFCoreHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFCoreHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FMFStopFollowingAction.__allocating_init(friend:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A423930(a1, v2 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);
  *(v2 + 16) = 0;
  return v2;
}

uint64_t FMFStopFollowingAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A4552F4()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend(0);
  sub_24A4AC030();
  return 0;
}

uint64_t FMFStopFollowingAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFStopFollowingAction(uint64_t a1)
{
  result = qword_27EF40628;
  if (!qword_27EF40628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFUpdateStewieLocationAction.__allocating_init(publishReason:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t FMFUpdateStewieLocationAction.init(publishReason:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 16) = 0;
  return v1;
}

FMFCore::FMWindowStatePrefKeys_optional __swiftcall FMWindowStatePrefKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
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

  *v2 = v5;
  return result;
}

uint64_t FMWindowStatePrefKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0x6956776F646E6977;
  }

  else
  {
    return 0x736F4D746E6F7266;
  }
}

uint64_t sub_24A455738(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6956776F646E6977;
  }

  else
  {
    v3 = 0x736F4D746E6F7266;
  }

  if (v2)
  {
    v4 = 0xEF776F646E695774;
  }

  else
  {
    v4 = 0xED0000656C626973;
  }

  if (*a2)
  {
    v5 = 0x6956776F646E6977;
  }

  else
  {
    v5 = 0x736F4D746E6F7266;
  }

  if (*a2)
  {
    v6 = 0xED0000656C626973;
  }

  else
  {
    v6 = 0xEF776F646E695774;
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

unint64_t sub_24A4557FC()
{
  result = qword_27EF40638;
  if (!qword_27EF40638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40638);
  }

  return result;
}

uint64_t sub_24A455850()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4558EC(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A455974(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A455A0C@<X0>(char *a2@<X8>)
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

void sub_24A455A6C(uint64_t *a1@<X8>)
{
  v2 = 0x736F4D746E6F7266;
  if (*v1)
  {
    v2 = 0x6956776F646E6977;
  }

  v3 = 0xEF776F646E695774;
  if (*v1)
  {
    v3 = 0xED0000656C626973;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A455AD4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A455B2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A455C40(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A383C20(*a1);
  v5 = v4;
  if (v3 == sub_24A383C20(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A455CC8()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A383C20(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A455D2C(uint64_t a1)
{
  sub_24A383C20(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A455D80(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A383C20(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A455DE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A4560C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A455E10@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A383C20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A455E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A4560C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A455E64(uint64_t a1)
{
  v2 = sub_24A383BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A455EA0(uint64_t a1)
{
  v2 = sub_24A383BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24A455F10()
{
  result = qword_27EF40658;
  if (!qword_27EF40658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40658);
  }

  return result;
}

unint64_t sub_24A455F68()
{
  result = qword_27EF40660;
  if (!qword_27EF40660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40660);
  }

  return result;
}

unint64_t sub_24A455FC0()
{
  result = qword_27EF40668;
  if (!qword_27EF40668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40668);
  }

  return result;
}

unint64_t sub_24A456018()
{
  result = qword_27EF40670;
  if (!qword_27EF40670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40670);
  }

  return result;
}

unint64_t sub_24A456070()
{
  result = qword_27EF40678;
  if (!qword_27EF40678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40678);
  }

  return result;
}

unint64_t sub_24A4560C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A456118(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_24A4561C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A45622C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A42AC0C;
}

uint64_t sub_24A4562CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_preferencesStore + 8);
  ObjectType = swift_getObjectType();
  v3 = (v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken);
  v4 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topicAPSToken + 8);
  v6 = *(v1 + 16);

  v6(v4, v5, ObjectType, v1);
  v7 = v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    v10 = swift_getObjectType();
    v11 = *v3;
    v12 = v3[1];
    v13 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken);
    v14 = *(v0 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_publicAPSToken + 8);
    v15 = *(v9 + 8);

    v15(v0, v11, v12, v13, v14, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection];
  if (*&v0[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection])
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(0, ObjectType, v2);
    swift_unknownObjectRelease();
    if (*v1)
    {
      v5 = *(v1 + 1);
      v6 = swift_getObjectType();
      v7 = *(v5 + 40);
      swift_unknownObjectRetain();
      v7(v6, v5);
      swift_unknownObjectRelease();
    }
  }

  v9.receiver = v0;
  v9.super_class = type metadata accessor for FMAPSConnectionHandler();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_24A4565FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A4AB6E0();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connectionQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_24A4AB6B0();
  v19 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_24A4568A8(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection))
  {
    v1 = *(result + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_connection + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
    v3(0, ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FMAPSConnectionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_24A456BE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);
    v15 = v2;
    v37 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    if (os_log_type_enabled(v37, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24A37BD58(*&v15[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic], *&v15[OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_topic + 8], aBlock);
      _os_log_impl(&dword_24A376000, v37, v16, "FMAPSConnectionHandler: Topic APS Token was nil for %s.", v17, 0xCu);
      sub_24A37EEE0(v18);
      MEMORY[0x24C219130](v18, -1, -1);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    else
    {
      v34 = v37;
    }
  }

  else
  {
    v35 = v11;
    v36 = v10;
    v37 = v6;
    v19 = sub_24A4AAA00();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A4AB630();
    sub_24A378E18(v20, qword_27EF4E260);
    v21 = v19;
    v22 = sub_24A4AB600();
    v23 = sub_24A4ABCE0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_24A376000, v22, v23, "FMAPSConnectionHandler: Topic APS Token received %@.", v24, 0xCu);
      sub_24A3A9244(v25);
      MEMORY[0x24C219130](v25, -1, -1);
      MEMORY[0x24C219130](v24, -1, -1);
    }

    v27 = [v21 fm_hexString];
    v28 = sub_24A4AB850();
    v30 = v29;

    v31 = swift_allocObject();
    v31[2] = v3;
    v31[3] = v28;
    v31[4] = v30;
    aBlock[4] = sub_24A457568;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D89DD8;
    v32 = _Block_copy(aBlock);
    v33 = v3;
    sub_24A4AB6B0();
    v38 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v13, v8, v32);
    _Block_release(v32);

    (v37[1].isa)(v8, v5);
    (*(v35 + 8))(v13, v36);
  }
}

uint64_t sub_24A45714C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
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
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v11 = 136315394;
    if (!a2)
    {
LABEL_13:

      __break(1u);
      goto LABEL_14;
    }

    v14 = v13;
    result = sub_24A37BD58(a1, a2, v20);
    *(v11 + 4) = result;
    *(v11 + 12) = 2112;
    if (!a3)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v16 = sub_24A4AB760();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_24A376000, v9, v10, "FMAPSConnectionHandler: Received message for topic: %s \n Message: %@", v11, 0x16u);
    sub_24A3A9244(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  else
  {
  }

  v17 = v4 + OBJC_IVAR____TtC7FMFCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = *(v17 + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(v4, a3, ObjectType, v18);
  return swift_unknownObjectRelease();
}

void sub_24A4575B0()
{
  v0 = sub_24A4AB820();
  v1 = MGGetBoolAnswer();

  byte_27EF40728 = v1;
}

uint64_t sub_24A457618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24A4AB8A0();
  v6 = sub_24A3A1434();
  v7 = MEMORY[0x277D837D0];
  v29 = v6;
  v30 = v6;
  v27 = MEMORY[0x277D837D0];
  v28 = v6;
  v8 = sub_24A4ABE40();
  v10 = v9;

  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A4BB330;
  *(v11 + 56) = v7;
  v12 = sub_24A3ABD70();
  v31 = a1;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 96) = v7;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = v8;
  *(v11 + 80) = v10;

  v13 = sub_24A4AB860();
  v15 = v14;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  v19 = sub_24A4AA800();
  v21 = v20;

  if (v19 == v13 && v21 == v15)
  {

LABEL_8:
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24A4B4E10;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = v12;
    *(v24 + 32) = v31;
    *(v24 + 40) = a2;

    sub_24A4AB860();
    v25 = [v17 bundleForClass_];
    v19 = sub_24A4AA800();

    return v19;
  }

  v22 = sub_24A4AC270();

  if (v22)
  {
    goto LABEL_8;
  }

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_8;
  }

  return v19;
}

uint64_t sub_24A4578FC(uint64_t a1, uint64_t a2)
{
  if (qword_27EF3EBF0 != -1)
  {
    swift_once();
  }

  if (byte_27EF40728)
  {
    v2 = 1312902231;
  }

  else
  {
    v2 = 1229343063;
  }

  MEMORY[0x24C217D50](95, 0xE100000000000000);

  MEMORY[0x24C217D50](v2, 0xE400000000000000);

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_24A4AA800();

  return v5;
}

uint64_t FMFDevice.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMFDevice.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24A457ABC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x6143654D6F747561;
    v3 = 0xED0000656C626170;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x6143654D6F747561;
    v7 = 0xED0000656C626170;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
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

uint64_t sub_24A457BC0()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A457C5C(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A457CE4(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A457D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A458200(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A457DAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x6143654D6F747561;
    v4 = 0xED0000656C626170;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24A457E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A458200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A457E2C(uint64_t a1)
{
  v2 = sub_24A385340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A457E68(uint64_t a1)
{
  v2 = sub_24A385340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static FMFDevice.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_24A4AC270()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24A4AC270()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t FMFDevice.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24A4ABF50();

  MEMORY[0x24C217D50](v3, v4);
  MEMORY[0x24C217D50](0x6669746E65646920, 0xED0000203A726569);
  MEMORY[0x24C217D50](v1, v2);
  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B2780);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v6, v7);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_24A458078(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_24A4AC270()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24A4AC270()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A45811C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24A458164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A4581AC()
{
  result = qword_27EF40748;
  if (!qword_27EF40748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40748);
  }

  return result;
}

unint64_t sub_24A458200(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for FMFMyLocationRequest(uint64_t a1)
{
  result = qword_27EF40760;
  if (!qword_27EF40760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4582E8()
{
  v1 = *(v0 + qword_27EF4E248);
  [v1 coordinate];
  v2 = MEMORY[0x277D839F8];
  v15 = MEMORY[0x277D839F8];
  *&v14 = v3;
  sub_24A3A60B4(&v14, v13);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0x656475746974616CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  [v1 coordinate];
  v15 = v2;
  *&v14 = v6;
  sub_24A3A60B4(&v14, v13);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0x64757469676E6F6CLL, 0xE900000000000065, v7);
  [v1 horizontalAccuracy];
  v15 = v2;
  *&v14 = v8;
  sub_24A3A60B4(&v14, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0xD000000000000012, 0x800000024A4AE0B0, v9);
  [v1 verticalAccuracy];
  v15 = v2;
  *&v14 = v10;
  sub_24A3A60B4(&v14, v13);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A3A60C4(v13, 0xD000000000000010, 0x800000024A4B14B0, v11);
  v15 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
  *&v14 = v4;
  swift_beginAccess();
  sub_24A3A6CEC(&v14, 0x6E6F697461636F6CLL, 0xE800000000000000);
  return swift_endAccess();
}

uint64_t sub_24A45851C()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A4585FC()
{
  sub_24A45851C();

  return swift_deallocClassInstance();
}

FMFCore::FMFConfigValue_optional __swiftcall FMFConfigValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A4586B4()
{
  v0 = FMFConfigValue.rawValue.getter();
  v2 = v1;
  if (v0 == FMFConfigValue.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24A4AC270();
  }

  return v5 & 1;
}

uint64_t sub_24A458750()
{
  sub_24A4AC360();
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4587B8(uint64_t a1)
{
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();
}

uint64_t sub_24A45881C(uint64_t a1)
{
  sub_24A4AC360();
  FMFConfigValue.rawValue.getter();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A45888C@<X0>(unint64_t *a1@<X8>)
{
  result = FMFConfigValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t FMFLocationNotificationsURL.getter()
{
  v0 = sub_24A4AB820();
  v1 = MGGetSInt32Answer();

  v2 = 0xD00000000000005ELL;
  if (v1 == 9)
  {
    v2 = 0xD000000000000056;
  }

  if (v1 == 3)
  {
    return 0xD00000000000005FLL;
  }

  else
  {
    return v2;
  }
}

uint64_t (*FMFGlobalConfigStore.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EF3EC10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24A458A30()
{
  sub_24A3C9CEC(&qword_27EF40808, &unk_24A4BB7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A4B5060;
  *(inited + 32) = 8;
  v1 = MEMORY[0x277D839F8];
  *(inited + 64) = MEMORY[0x277D839F8];
  *(inited + 40) = 0x4034000000000000;
  *(inited + 72) = 9;
  *(inited + 104) = v1;
  *(inited + 80) = 0x404E000000000000;
  *(inited + 112) = 10;
  *(inited + 144) = v1;
  *(inited + 120) = 0x405E000000000000;
  v2 = sub_24A3AD5F4(inited);
  swift_setDeallocating();
  sub_24A3C9CEC(&qword_27EF403A0, &unk_24A4BA180);
  result = swift_arrayDestroy();
  qword_27EF40780 = v2;
  return result;
}

uint64_t (*FMFWaldoGlobalConfigStore.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EF3EC18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24A458BDC()
{
  sub_24A3C9CEC(&qword_27EF40808, &unk_24A4BB7E0);
  inited = swift_initStackObject();
  *(inited + 32) = 12;
  v1 = inited + 32;
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 30;
  v2 = sub_24A3AD5F4(inited);
  swift_setDeallocating();
  result = sub_24A37EF2C(v1, &qword_27EF403A0, &unk_24A4BA180);
  qword_27EF40788 = v2;
  return result;
}

double sub_24A458CA8(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t sub_24A458D28(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*FMFDimplekeyGlobalConfigStore.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EF3EC20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t getEnumTagSinglePayload for FMFConfigValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFConfigValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A459010@<X0>(void *a1@<X8>)
{
  v3 = qword_27EF407C8;
  swift_beginAccess();
  sub_24A37B740(v1 + v3, &v10, &qword_27EF407E0, &unk_24A4BB7D0);
  if (v11)
  {
    return sub_24A37B3F8(&v10, a1);
  }

  sub_24A37EF2C(&v10, &qword_27EF407E0, &unk_24A4BB7D0);
  v5 = sub_24A4AA700();
  v11 = v5;
  v12 = sub_24A37F064(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v6 = sub_24A38D3BC(&v10);
  (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D08A08], v5);
  LOBYTE(v5) = sub_24A4AA6C0();
  sub_24A37EEE0(&v10);
  if (v5)
  {
    v7 = type metadata accessor for StewieStateProviderImpl();
    v8 = swift_allocObject();
    v9 = &protocol witness table for StewieStateProviderImpl;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
    v7 = sub_24A37B428(0, &qword_27EF40408, 0x277D496C0);
    v9 = &protocol witness table for SPSecureLocationsManager;
  }

  a1[3] = v7;
  a1[4] = v9;
  *a1 = v8;
  sub_24A39997C(a1, &v10);
  swift_beginAccess();
  sub_24A45AB94(&v10, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24A4591F4()
{

  MEMORY[0x24C219220](v0 + qword_27EF407A0);

  sub_24A37EF2C(v0 + qword_27EF407B8, &qword_27EF3F650, &qword_24A4B5A10);
  v1 = qword_27EF4E290;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24A3C8470(v0 + qword_27EF4E298);
  sub_24A3C8470(v0 + qword_27EF4E2A0);

  return sub_24A37EF2C(v0 + qword_27EF407C8, &qword_27EF407E0, &unk_24A4BB7D0);
}

uint64_t sub_24A459314()
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
    v24 = v6;
    *v5 = 136315138;
    v7 = *(v1 + qword_27EF40798);
    v8 = *(v1 + qword_27EF40798 + 8);

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v24);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFServerInteractionController<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v20 = sub_24A4AAC90();

  MEMORY[0x24C219220](v20 + qword_27EF407A0);

  sub_24A37EF2C(v20 + qword_27EF407B8, &qword_27EF3F650, &qword_24A4B5A10);
  v21 = qword_27EF4E290;
  v22 = sub_24A4AAAD0();
  (*(*(v22 - 8) + 8))(v20 + v21, v22);
  sub_24A3C8470(v20 + qword_27EF4E298);
  sub_24A3C8470(v20 + qword_27EF4E2A0);

  sub_24A37EF2C(v20 + qword_27EF407C8, &qword_27EF407E0, &unk_24A4BB7D0);
  return v20;
}

uint64_t sub_24A4595EC()
{
  sub_24A459314();

  return swift_deallocClassInstance();
}

void sub_24A459640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277D07B80]);
  v8 = sub_24A4AB820();
  v9 = [v7 initWithDescription:v8 andTimeout:120.0];

  sub_24A3A7DF4(a2);
  v17 = type metadata accessor for FMFMyLocationRequest(0);
  v18 = MEMORY[0x277D07D08];
  v16[0] = a2;
  v15[3] = v17;
  v15[4] = sub_24A37F064(&qword_27EF407E8, type metadata accessor for FMFMyLocationRequest, &unk_24A4B7CA8);
  v10 = objc_opt_self();
  swift_retain_n();
  v11 = [v10 processInfo];
  v12 = [v11 processName];

  sub_24A4AB850();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v9;

  v14 = v9;
  sub_24A4AAC70();

  sub_24A37EEE0(v15);
  sub_24A37EEE0(v16);
  [v14 wait];
}

id sub_24A459838(uint64_t a1, unint64_t a2, void *a3, void (*a4)(__n128), uint64_t a5, void *a6)
{
  if (a3)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A4AB630();
    sub_24A378E18(v9, qword_27EF4E260);
    v10 = a3;
    v11 = sub_24A4AB600();
    v12 = sub_24A4ABCE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v40 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_24A4AC310();
      v17 = sub_24A37BD58(v15, v16, &v40);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A376000, v11, v12, "FMFServerInteractionController: didn't complete because of error: %s", v13, 0xCu);
      sub_24A37EEE0(v14);
      MEMORY[0x24C219130](v14, -1, -1);
      MEMORY[0x24C219130](v13, -1, -1);
    }

    (a4)(0, a3);
    return [a6 signal];
  }

  if (a2 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
LABEL_15:
      sub_24A386DFC(a1, a2);
      goto LABEL_17;
    }

    if (*(a1 + 16) == *(a1 + 24))
    {
LABEL_17:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v20 = sub_24A4AB630();
      sub_24A378E18(v20, qword_27EF4E260);
      v21 = sub_24A4AB600();
      v22 = sub_24A4ABCE0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_24A376000, v21, v22, "FMFServerInteractionController: received empty data", v23, 2u);
        MEMORY[0x24C219130](v23, -1, -1);
      }

      sub_24A45AB40();
      v24 = swift_allocError();
      *v25 = 1;
      (a4)(0, v24);

      return [a6 signal];
    }

    goto LABEL_24;
  }

  if (v19)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_17;
    }

LABEL_24:
    v26 = a1;
    v27 = a2;
    sub_24A3AE614(a1, a2);
    a1 = v26;
    a2 = v27;
    goto LABEL_25;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_25:
  v28 = a1;
  v29 = a2;
  sub_24A4AA760();
  swift_allocObject();
  sub_24A4AA750();
  type metadata accessor for FMFMyLocationResponse();
  sub_24A37F064(&qword_27EF407F8, type metadata accessor for FMFMyLocationResponse, &unk_24A4B97B0);
  v39 = v29;
  sub_24A4AA740();

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v30 = sub_24A4AB630();
  sub_24A378E18(v30, qword_27EF4E260);

  v31 = sub_24A4AB600();
  v32 = sub_24A4ABCE0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v33 = 136315138;

    v35 = sub_24A4AB870();
    v37 = sub_24A37BD58(v35, v36, &v40);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_24A376000, v31, v32, "FMFServerInteractionController: received response?: %s", v33, 0xCu);
    sub_24A37EEE0(v34);
    MEMORY[0x24C219130](v34, -1, -1);
    MEMORY[0x24C219130](v33, -1, -1);
  }

  (a4)(v38, 0);

  [a6 signal];
  return sub_24A386DFC(v28, v39);
}

void sub_24A459EF0(id *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = a1;
  v76 = &v71 - v8;
  v83 = *a1;
  refreshed = type metadata accessor for FMFInitRefreshClientRequest(0);
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v78 = sub_24A4AA800();
  v82 = v13;

  v14 = [v11 bundleForClass_];
  v15 = sub_24A4AA800();
  v81 = v16;

  v73 = v11;
  v74 = ObjCClassFromMetadata;
  v17 = [v11 bundleForClass_];
  v18 = sub_24A4AA800();
  v80 = v19;

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v20 = sub_24A4AB630();
  sub_24A378E18(v20, qword_27EF4E260);

  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v3;
  v72 = v15;
  if (v23)
  {
    v25 = v83;
    v26 = refreshed == v83;
    v27 = swift_slowAlloc();
    *v27 = 67109376;
    *(v27 + 4) = v26;
    *(v27 + 8) = 1024;
    *(v27 + 10) = *(v3 + qword_27EF407C0);

    _os_log_impl(&dword_24A376000, v21, v22, "FMFServerInteractionController: createNetworkAlertIfNeeded: %{BOOL}d %{BOOL}d", v27, 0xEu);
    MEMORY[0x24C219130](v27, -1, -1);

    v28 = v79;
    if (refreshed != v25)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v28 = v79;
    if (refreshed != v83)
    {
      goto LABEL_8;
    }
  }

  if ((*(v24 + qword_27EF407C0) & 1) == 0)
  {

    LOBYTE(v84[0]) = 4;
    v37 = sub_24A423DAC(v84);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_24A45A9E0(v37, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

LABEL_8:
  if (!v28)
  {
LABEL_18:

    return;
  }

  v29 = sub_24A4AA940();
  v30 = [v29 domain];
  v31 = sub_24A4AB850();
  v33 = v32;

  if (v31 == sub_24A4AB850() && v33 == v34)
  {
  }

  else
  {
    v35 = sub_24A4AC270();

    if ((v35 & 1) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }
  }

  if (refreshed == v83)
  {
    goto LABEL_17;
  }

  v36 = v18;
  if ([v29 code] == -1001 || objc_msgSend(v29, sel_code) == -999 || objc_msgSend(v29, sel_code) == -1005)
  {
    goto LABEL_17;
  }

  v39 = v29;
  v40 = sub_24A4AB600();
  v41 = sub_24A4ABCE0();

  v42 = os_log_type_enabled(v40, v41);
  v83 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v84[0] = v44;
    *v43 = 136315138;
    v45 = [v39 debugDescription];
    v46 = sub_24A4AB850();
    v48 = v47;

    v49 = sub_24A37BD58(v46, v48, v84);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_24A376000, v40, v41, "FMFServerInteractionController: error received: %s", v43, 0xCu);
    sub_24A37EEE0(v44);
    MEMORY[0x24C219130](v44, -1, -1);
    MEMORY[0x24C219130](v43, -1, -1);
  }

  v50 = v81;
  swift_getErrorValue();
  if (sub_24A3E3E74(v84[2], v84[3]))
  {

    v52 = v73;
    v51 = v74;
    v53 = [v73 bundleForClass_];
    v78 = sub_24A4AA800();
    v82 = v54;

    v55 = [v52 bundleForClass_];
    v56 = sub_24A4AA800();
    v50 = v57;

    v58 = [v52 bundleForClass_];
    v59 = sub_24A4AA800();
    v61 = v60;
  }

  else
  {
    v61 = v80;
    v56 = v72;
    v59 = v36;
  }

  v62 = sub_24A4AA9D0();
  v63 = *(*(v62 - 8) + 56);
  v64 = v76;
  v63(v76, 1, 1, v62);
  v65 = v77;
  v66 = (v63)(v77, 1, 1, v62);
  if ((*(*v75 + qword_27EF4E0E0 + 192))(v66))
  {
    v67 = 2;
  }

  else
  {
    v67 = 3;
  }

  type metadata accessor for FMFAlert(0);
  v68 = swift_allocObject();
  v68[3] = 0;
  swift_unknownObjectWeakInit();
  v68[4] = 0;
  v68[5] = 0;
  v69 = v82;
  v68[6] = v78;
  v68[7] = v69;
  v68[8] = v56;
  v68[9] = v50;
  v68[10] = v59;
  v68[11] = v61;
  v68[12] = 0;
  v68[13] = 0;
  sub_24A3996FC(v64, v68 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(v65, v68 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v68 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v67;
  v70 = swift_unknownObjectWeakLoadStrong();
  if (v70)
  {
    sub_24A45A9E0(v68, v70);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_24A45A8C0()
{
  v1 = sub_24A4AAAD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_24A4AAAC0();
  v6 = qword_27EF4E290;
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v4, v1);
  return swift_endAccess();
}

uint64_t sub_24A45A9E0(uint64_t a1, uint64_t a2)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFManager: didReceive serverAlert", v7, 2u);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 104))(a2, a1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_24A45AB40()
{
  result = qword_27EF407F0;
  if (!qword_27EF407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF407F0);
  }

  return result;
}

uint64_t sub_24A45AB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF407E0, &unk_24A4BB7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_24A45AC08()
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
    _os_log_impl(&dword_24A376000, v3, v4, "FMFMyLocationController: Starting to update my location", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager);

  return [v6 startUpdatingLocation];
}

id sub_24A45AD08()
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
    _os_log_impl(&dword_24A376000, v3, v4, "FMFMyLocationController: Restarting to update my location", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_locationManager);
  [v6 stopUpdatingLocation];

  return [v6 startUpdatingLocation];
}

void sub_24A45AE1C(char a1, _BYTE *a2, id a3, void *a4)
{
  if (a1)
  {
    goto LABEL_8;
  }

  if ((a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold + 8] & 1) == 0)
  {
    v7 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
    [a3 horizontalAccuracy];
    if (v7 <= v8)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v27 = sub_24A4AB630();
      sub_24A378E18(v27, qword_27EF4E260);
      v28 = a3;
      v38 = sub_24A4AB600();
      v29 = sub_24A4ABCE0();

      if (os_log_type_enabled(v38, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134349312;
        [v28 horizontalAccuracy];
        *(v30 + 4) = v31;
        *(v30 + 12) = 2050;
        *(v30 + 14) = v7;
        _os_log_impl(&dword_24A376000, v38, v29, "FMFMyLocationController: Can‘t publish location because accuracy (%{public}f) is worse than threshold (%{public}f)", v30, 0x16u);
        MEMORY[0x24C219130](v30, -1, -1);
      }

      goto LABEL_9;
    }
  }

  v9 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
  if (!v9 || (a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold + 8] & 1) != 0)
  {
    goto LABEL_8;
  }

  v10 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
  v11 = v9;
  [v11 distanceFromLocation_];
  if (v12 > v10)
  {

LABEL_8:
    type metadata accessor for FMFMyLocationRequest(0);
    *(swift_allocObject() + qword_27EF4E248) = a4;
    v13 = a4;
    v14 = sub_24A3A45B8(0xD000000000000011, 0x800000024A4B2CD0);
    v15 = objc_allocWithZone(MEMORY[0x277D07B80]);
    v16 = sub_24A4AB820();
    v17 = [v15 initWithDescription:v16 andTimeout:120.0];

    v18 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController + 24];
    v19 = *&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController + 32];
    sub_24A37EACC(&a2[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_interactionController], v18);
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = v17;
    v20[5] = v13;
    v21 = a3;
    v22 = *(v19 + 72);
    v23 = v21;
    v24 = v13;
    v25 = a2;
    v38 = v17;
    v22(v14, sub_24A45C7E8, v20, v18, v19);

    [v38 wait];

LABEL_9:
    v26 = v38;
    goto LABEL_10;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v32 = sub_24A4AB630();
  sub_24A378E18(v32, qword_27EF4E260);
  v33 = a3;
  v38 = v11;
  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349312;
    [v38 distanceFromLocation:v33];
    *(v36 + 4) = v37;
    *(v36 + 12) = 2050;
    *(v36 + 14) = v10;
    _os_log_impl(&dword_24A376000, v34, v35, "FMFMyLocationController: Can‘t publish location because distance (%{public}f) less than threshold (%{public}f)", v36, 0x16u);
    MEMORY[0x24C219130](v36, -1, -1);

    goto LABEL_9;
  }

  v26 = v34;
LABEL_10:
}

id sub_24A45B254(uint64_t a1, void *a2, char *a3, void *a4, void *a5, void *a6)
{
  v98 = a4;
  v11 = type metadata accessor for FMFLocation(0);
  v99 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A4AAB20();
  v101 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v16 - 8);
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v21 = &v92 - v20;
  if (a2)
  {
    v93 = v18;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v100 = a5;
    v22 = sub_24A4AB630();
    v23 = sub_24A378E18(v22, qword_27EF4E260);
    v24 = a2;
    v94 = v23;
    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCC0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v97 = v13;
      v29 = a3;
      v30 = v28;
      v108[0] = v28;
      *v27 = 136315138;
      v102[0] = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v31 = sub_24A4ABDE0();
      v33 = sub_24A37BD58(v31, v32, v108);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_24A376000, v25, v26, "Error while getting my location details. Error - %s", v27, 0xCu);
      sub_24A37EEE0(v30);
      v34 = v30;
      a3 = v29;
      v13 = v97;
      MEMORY[0x24C219130](v34, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    v35 = sub_24A4AA700();
    v108[3] = v35;
    v108[4] = sub_24A37EF8C(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v36 = sub_24A38D3BC(v108);
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D089E0], v35);
    LOBYTE(v35) = sub_24A4AA6C0();
    sub_24A37EEE0(v108);
    if ((v35 & 1) == 0)
    {
      return [v100 signal];
    }

    v37 = sub_24A3BAFB0(v103);
    *(v21 + 3) = 0;
    v21[32] = 1;
    (*(v101 + 7))(&v21[v11[8]], 1, 1, v13, v37);
    *v21 = 0;
    *(v21 + 1) = 0;
    v21[16] = 0;
    memcpy(v108, v103, 0x130uLL);
    v38 = v98;
    v108[38] = v98;
    LOBYTE(v108[39]) = 0;
    *(&v108[39] + 1) = *v107;
    HIDWORD(v108[39]) = *&v107[3];
    memset(&v108[40], 0, 18);
    *(&v108[42] + 2) = v105;
    HIWORD(v108[42]) = v106;
    v108[43] = 0;
    LOBYTE(v108[44]) = 0;
    nullsub_1();
    memcpy(&v21[v11[11]], v108, 0x161uLL);
    v21[33] = 0;
    v21[v11[9]] = 0;
    v21[v11[10]] = 0;
    v39 = v99;
    (*(v99 + 56))(v21, 0, 1, v11);
    v40 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
    swift_beginAccess();
    v41 = v38;
    sub_24A3C28C8(v21, &a3[v40]);
    swift_endAccess();
    v42 = a3;
    v43 = a3;
    v44 = sub_24A4AB600();
    v45 = sub_24A4ABCE0();

    v46 = os_log_type_enabled(v44, v45);
    v95 = v42;
    if (!v46)
    {
LABEL_19:

      v84 = &v43[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v85 = *(v84 + 1);
        ObjectType = swift_getObjectType();
        sub_24A37B740(&v95[v40], v21, &qword_27EF3F480, &unk_24A4B8C20);
        (*(v85 + 8))(v21, ObjectType, v85);
        swift_unknownObjectRelease();
        sub_24A3C29F0(v21);
      }

      return [v100 signal];
    }

    v101 = v43;
    v47 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v104[0] = v98;
    *v47 = 136315138;
    v48 = v93;
    sub_24A37B740(&v42[v40], v93, &qword_27EF3F480, &unk_24A4B8C20);
    if ((*(v39 + 48))(v48, 1, v11))
    {
      v49 = 7104878;
      sub_24A3C29F0(v48);
    }

    else
    {
      v80 = v96;
      sub_24A3B4B10(v48, v96);
      sub_24A3C29F0(v48);
      memcpy(v102, (v80 + v11[11]), 0x161uLL);
      if (sub_24A3B9C24(v102) != 1)
      {
        v87 = v102[38];
        v88 = v80;
        v89 = v87;
        sub_24A3B4B74(v88);
        v90 = [v89 description];

        v49 = sub_24A4AB850();
        v81 = v91;

        goto LABEL_18;
      }

      v49 = 7104878;
      sub_24A3B4B74(v80);
    }

    v81 = 0xE300000000000000;
LABEL_18:
    v43 = v101;
    v82 = sub_24A37BD58(v49, v81, v104);

    *(v47 + 4) = v82;
    _os_log_impl(&dword_24A376000, v44, v45, "FMFMyLocationController: Updated non-server adjusted location to %s", v47, 0xCu);
    v83 = v98;
    sub_24A37EEE0(v98);
    MEMORY[0x24C219130](v83, -1, -1);
    MEMORY[0x24C219130](v47, -1, -1);
    goto LABEL_19;
  }

  if (a1)
  {
    v50 = &a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
    *v50 = *(a1 + 376);
    v50[8] = 0;
    v51 = &a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
    *v51 = *(a1 + 384);
    v51[8] = 0;
    v100 = a5;
    v52 = *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
    v53 = v98;
    *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation] = v98;

    v98 = v53;

    v54 = *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation];
    *&a3[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_unshiftedLocation] = a6;
    v55 = a6;

    v56 = *(a1 + 320);
    memcpy(v102, (a1 + 16), 0x130uLL);
    v57 = *(a1 + 336);
    v95 = a3;
    v96 = v57;
    v58 = *(a1 + 344);
    v59 = v13;
    v97 = v13;
    v60 = *(a1 + 352);
    v61 = *(a1 + 360);
    *(v21 + 3) = 0;
    v21[32] = 1;
    (*(v101 + 7))(&v21[v11[8]], 1, 1, v59);
    *v21 = 0;
    *(v21 + 1) = 0;
    v21[16] = 0;
    memcpy(v108, v102, 0x130uLL);
    v108[38] = v56;
    LOBYTE(v108[39]) = 0;
    *(&v108[39] + 1) = *v107;
    HIDWORD(v108[39]) = *&v107[3];
    v108[40] = v96;
    v108[41] = v58;
    LOWORD(v108[42]) = v60;
    *(&v108[42] + 2) = v105;
    HIWORD(v108[42]) = v106;
    v108[43] = v61;
    LOBYTE(v108[44]) = 0;
    nullsub_1();
    memcpy(&v21[v11[11]], v108, 0x161uLL);
    v21[33] = 0;
    v21[v11[9]] = 0;
    v21[v11[10]] = 0;
    (*(v99 + 56))(v21, 0, 1, v11);
    v62 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myUnshiftedLocation;
    v63 = v95;
    swift_beginAccess();
    v64 = v56;
    sub_24A37B740(v102, v103, &unk_27EF404E0, &unk_24A4B5230);

    sub_24A3C28C8(v21, &v63[v62]);
    swift_endAccess();
    v65 = swift_allocObject();
    v66 = v98;
    v65[2] = v63;
    v65[3] = v66;
    v67 = v100;
    v65[4] = a1;
    v65[5] = v67;

    v68 = v66;
    v69 = v64;
    v70 = v67;
    v71 = v63;
    sub_24A4AAB10();
    v72 = sub_24A4AAAF0();
    v74 = v73;
    (*(v101 + 1))(v15, v97);
    type metadata accessor for FMLocationShiftingRequest();
    v75 = swift_allocObject();
    v75[2] = v69;
    v75[3] = v72;
    v75[4] = v74;
    sub_24A3C9CEC(&unk_27EF403B0, &qword_24A4BA190);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_24A4BB800;
    *(v76 + 32) = v75;
    v77 = swift_allocObject();
    v77[2] = v69;
    v77[3] = sub_24A3C282C;
    v77[4] = v65;
    v78 = v69;

    sub_24A3BBAB0(v76, sub_24A3C219C, v77);
  }

  else
  {

    return [a5 signal];
  }
}

uint64_t sub_24A45BD48()
{
  v1 = sub_24A4AB690();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocationUpdatingQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A45C7C8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8A200;
  v8 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v13 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_24A45C024(uint64_t a1)
{
  v1 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for FMFLocation(0);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myLocation;
    swift_beginAccess();
    sub_24A3C28C8(v3, v5 + v7);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for FMFLocation(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_myUnshiftedLocation;
    swift_beginAccess();
    sub_24A3C28C8(v3, v9 + v11);
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = &v12[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_accuracyThreshold];
    *v13 = 0;
    v13[8] = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = &v14[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_distanceThreshold];
    *v15 = 0;
    v15[8] = 1;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = *&v16[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation];
    *&v16[OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_currentMyLocation] = 0;
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18 + OBJC_IVAR____TtC7FMFCore23FMFMyLocationController_delegate;
    v20 = v18;
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = *(v19 + 8);

    if (v21)
    {
      ObjectType = swift_getObjectType();
      v24 = type metadata accessor for FMFLocation(0);
      (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
      (*(v22 + 8))(v3, ObjectType, v22);
      swift_unknownObjectRelease();
      sub_24A3C29F0(v3);
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);
  v26 = sub_24A4AB600();
  v27 = sub_24A4ABCE0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24A376000, v26, v27, "FMFMyLocationController: Invalidated cached location data", v28, 2u);
    MEMORY[0x24C219130](v28, -1, -1);
  }
}