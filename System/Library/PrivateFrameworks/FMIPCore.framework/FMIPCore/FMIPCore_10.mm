uint64_t sub_24A75F7DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = a2;
  v8 = sub_24A82CDF4();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24A82CE54();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FMReverseGeocodingRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *(v4 + qword_27EF5EFD0);
  sub_24A68FE04(a1, v17, type metadata accessor for FMReverseGeocodingRequest);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = v18 + v16;
  v20 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  sub_24A68D628(v17, v21 + v18, type metadata accessor for FMReverseGeocodingRequest);
  *(v21 + v19) = v27;
  v22 = v21 + v20;
  v23 = v28;
  *(v22 + 8) = a3;
  *(v22 + 16) = v23;
  aBlock[4] = sub_24A770F84;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7430;
  v24 = _Block_copy(aBlock);

  sub_24A6A7314(a3, v23);
  sub_24A82CE24();
  v33 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v10, v24);
  _Block_release(v24);
  (*(v32 + 8))(v10, v8);
  (*(v30 + 8))(v13, v31);
}

void sub_24A75FBAC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v85 = a3;
  v86 = a4;
  v8 = type metadata accessor for FMReverseGeocodingRequest(0);
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v84 = &v79 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v79 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  v83 = a1[2];
  v20 = sub_24A6F47C0();
  v22 = v21;
  v23 = qword_27EF5EFB8;
  swift_beginAccess();
  v87 = v23;
  if (*(*(v5 + v23) + 16))
  {

    sub_24A6A2D48(v20, v22);
    v25 = v24;

    if (v25)
    {
      if (qword_27EF5CB88 != -1)
      {
        swift_once();
      }

      v26 = sub_24A82CDC4();
      sub_24A6797D0(v26, qword_27EF78C00);
      sub_24A68FE04(a1, v19, type metadata accessor for FMReverseGeocodingRequest);

      v27 = sub_24A82CD94();
      v28 = sub_24A82D504();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v92[0] = v30;
        *v29 = 136315394;
        v31 = sub_24A82DDB4();
        v33 = sub_24A68761C(v31, v32, v92);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        v34 = FMReverseGeocodingRequest.debugDescription.getter();
        v36 = v35;
        sub_24A69004C(v19, type metadata accessor for FMReverseGeocodingRequest);
        v37 = sub_24A68761C(v34, v36, v92);

        *(v29 + 14) = v37;
        _os_log_impl(&dword_24A675000, v27, v28, "%s: Loading declined, we are already processing similar location: %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v30, -1, -1);
        v38 = v29;
LABEL_21:
        MEMORY[0x24C21E1D0](v38, -1, -1);
LABEL_22:

        return;
      }

      sub_24A69004C(v19, type metadata accessor for FMReverseGeocodingRequest);
      return;
    }
  }

  else
  {
  }

  if (a2)
  {
LABEL_11:
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v39 = sub_24A82CDC4();
    sub_24A6797D0(v39, qword_27EF78C00);
    sub_24A68FE04(a1, v17, type metadata accessor for FMReverseGeocodingRequest);

    v40 = sub_24A82CD94();
    v41 = sub_24A82D504();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v92[0] = v80;
      *v42 = 136315394;
      v43 = sub_24A82DDB4();
      v45 = sub_24A68761C(v43, v44, v92);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = FMReverseGeocodingRequest.debugDescription.getter();
      v48 = v47;
      sub_24A69004C(v17, type metadata accessor for FMReverseGeocodingRequest);
      v49 = sub_24A68761C(v46, v48, v92);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_24A675000, v40, v41, "%s: Loading new address for %s", v42, 0x16u);
      v50 = v80;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v50, -1, -1);
      MEMORY[0x24C21E1D0](v42, -1, -1);
    }

    else
    {

      sub_24A69004C(v17, type metadata accessor for FMReverseGeocodingRequest);
    }

    v51 = v84;
    sub_24A68FE04(a1, v84, type metadata accessor for FMReverseGeocodingRequest);
    v52 = v82;
    sub_24A68FE04(a1, v82, type metadata accessor for FMReverseGeocodingRequest);
    v53 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v5;
    sub_24A68D628(v52, v54 + v53, type metadata accessor for FMReverseGeocodingRequest);
    v55 = (v54 + ((v9 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
    v57 = v85;
    v56 = v86;
    *v55 = v85;
    v55[1] = v56;
    v58 = type metadata accessor for FMReverseGeocodingOperation(0);
    v59 = objc_allocWithZone(v58);
    v59[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation__isFinished] = 0;
    sub_24A68FE04(v51, &v59[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_request], type metadata accessor for FMReverseGeocodingRequest);
    v60 = &v59[OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation_completion];
    *v60 = sub_24A76EF30;
    v60[1] = v54;

    sub_24A6A7314(v57, v56);
    v89.receiver = v59;
    v89.super_class = v58;
    v61 = objc_msgSendSuper2(&v89, sel_init);
    sub_24A69004C(v51, type metadata accessor for FMReverseGeocodingRequest);
    [*(v5 + qword_27EF5EFC8) addOperation_];
    v62 = sub_24A6F47C0();
    v64 = v63;
    v65 = v87;
    swift_beginAccess();
    v27 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = *(v5 + v65);
    *(v5 + v65) = 0x8000000000000000;
    sub_24A784F08(v27, v62, v64, isUniquelyReferenced_nonNull_native);

    *(v5 + v65) = v90[0];
    swift_endAccess();
    goto LABEL_22;
  }

  sub_24A75E6A0(a1, v91);
  memcpy(v92, v91, sizeof(v92));
  if (sub_24A6921A8(v92) == 1)
  {
    memcpy(v90, v91, sizeof(v90));
    sub_24A67F378(v90, &unk_27EF5E0D0, &qword_24A8319E0);
    goto LABEL_11;
  }

  memcpy(v90, v91, sizeof(v90));
  sub_24A67F378(v90, &unk_27EF5E0D0, &qword_24A8319E0);
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v67 = sub_24A82CDC4();
  sub_24A6797D0(v67, qword_27EF78C00);
  v68 = v80;
  sub_24A68FE04(a1, v80, type metadata accessor for FMReverseGeocodingRequest);

  v27 = sub_24A82CD94();
  v69 = sub_24A82D504();

  if (os_log_type_enabled(v27, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v88 = v71;
    *v70 = 136315394;
    v72 = sub_24A82DDB4();
    v74 = sub_24A68761C(v72, v73, &v88);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2080;
    v75 = FMReverseGeocodingRequest.debugDescription.getter();
    v77 = v76;
    sub_24A69004C(v68, type metadata accessor for FMReverseGeocodingRequest);
    v78 = sub_24A68761C(v75, v77, &v88);

    *(v70 + 14) = v78;
    _os_log_impl(&dword_24A675000, v27, v69, "%s: Loading declined, we have already processed similar location: %s", v70, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v71, -1, -1);
    v38 = v70;
    goto LABEL_21;
  }

  sub_24A69004C(v68, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A760598(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a1;
  v33 = sub_24A82CDF4();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMReverseGeocodingRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + qword_27EF5EFD0);
  sub_24A68FE04(a4, v17, type metadata accessor for FMReverseGeocodingRequest);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a2;
  sub_24A68D628(v17, v20 + v18, type metadata accessor for FMReverseGeocodingRequest);
  v21 = (v20 + v19);
  v23 = v30;
  v22 = v31;
  *v21 = v30;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_24A76EFE4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7390;
  v24 = _Block_copy(aBlock);

  v25 = a2;
  sub_24A6A7314(v23, v22);
  swift_unknownObjectRetain();
  sub_24A82CE24();
  v37 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  v26 = v33;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v10, v24);
  _Block_release(v24);
  (*(v36 + 8))(v10, v26);
  (*(v34 + 8))(v13, v35);
}

uint64_t sub_24A760988(void *a1, void *a2, uint64_t *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v134 = a4;
  v135 = a3;
  v132 = a2;
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CE54();
  v128 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v127 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A82CE04();
  v125 = *(v15 - 8);
  v126 = v15;
  MEMORY[0x28223BE20](v15);
  v124 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CA34();
  v121 = *(v17 - 8);
  v122 = v17;
  MEMORY[0x28223BE20](v17);
  v120 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FMReverseGeocodingRequest(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v115 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v123 = &v115 - v23;
  MEMORY[0x28223BE20](v22);
  v130 = &v115 - v24;
  v25 = qword_27EF5EFC0;
  v26 = *(a1 + qword_27EF5EFC0);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v116 = v12;
    v131 = a5;
    *(a1 + qword_27EF5EFC0) = v28;
    if (qword_27EF5CB88 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v29 = sub_24A82CDC4();
  v30 = sub_24A6797D0(v29, qword_27EF78C00);
  swift_retain_n();
  v133 = v30;
  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();
  v33 = os_log_type_enabled(v31, v32);
  v118 = v10;
  v119 = v9;
  v117 = v13;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v129 = a6;
    v36 = v35;
    v141[0] = v35;
    *v34 = 136315394;
    v37 = sub_24A82DDB4();
    v39 = sub_24A68761C(v37, v38, v141);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2048;
    v40 = *(a1 + v25);

    *(v34 + 14) = v40;

    _os_log_impl(&dword_24A675000, v31, v32, "%s: Total operations processed: %ld.", v34, 0x16u);
    sub_24A6876E8(v36);
    a6 = v129;
    MEMORY[0x24C21E1D0](v36, -1, -1);
    MEMORY[0x24C21E1D0](v34, -1, -1);
  }

  else
  {
  }

  v41 = *(a1 + v25);
  v42 = v132;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v41 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
  {
    sub_24A82C9C4();
    v58 = v57;

    v59 = sub_24A82CD94();
    v60 = sub_24A82D504();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v141[0] = v62;
      *v61 = 136315394;
      v63 = sub_24A82DDB4();
      v65 = sub_24A68761C(v63, v64, v141);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2048;
      *(v61 + 14) = v41 / fabs(v58);
      _os_log_impl(&dword_24A675000, v59, v60, "%s: Current throughput: %f requests per second.", v61, 0x16u);
      sub_24A6876E8(v62);
      v42 = v132;
      MEMORY[0x24C21E1D0](v62, -1, -1);
      MEMORY[0x24C21E1D0](v61, -1, -1);
    }

    if (v42)
    {
      goto LABEL_8;
    }
  }

  else if (v132)
  {
LABEL_8:
    v43 = v130;
    sub_24A68FE04(v135, v130, type metadata accessor for FMReverseGeocodingRequest);
    v44 = v42;
    v45 = sub_24A82CD94();
    v46 = sub_24A82D504();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v141[0] = v48;
      *v47 = 136315394;
      v49 = FMReverseGeocodingRequest.debugDescription.getter();
      v51 = v50;
      sub_24A69004C(v43, type metadata accessor for FMReverseGeocodingRequest);
      v52 = sub_24A68761C(v49, v51, v141);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      swift_getErrorValue();
      v53 = sub_24A82DC74();
      v55 = sub_24A68761C(v53, v54, v141);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_24A675000, v45, v46, "FMReverseGeocodingCache: Geocoding error: %s for request: %s", v47, 0x16u);
      swift_arrayDestroy();
      v56 = v48;
LABEL_10:
      MEMORY[0x24C21E1D0](v56, -1, -1);
      MEMORY[0x24C21E1D0](v47, -1, -1);

      goto LABEL_19;
    }

    v88 = v43;
    goto LABEL_18;
  }

  if (!a6)
  {
    v93 = v115;
    sub_24A68FE04(v135, v115, type metadata accessor for FMReverseGeocodingRequest);

    v45 = sub_24A82CD94();
    v94 = sub_24A82D504();

    if (os_log_type_enabled(v45, v94))
    {
      v47 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v141[0] = v95;
      *v47 = 136315394;
      v96 = sub_24A82DDB4();
      v98 = sub_24A68761C(v96, v97, v141);

      *(v47 + 4) = v98;
      *(v47 + 12) = 2080;
      v99 = FMReverseGeocodingRequest.debugDescription.getter();
      v101 = v100;
      sub_24A69004C(v93, type metadata accessor for FMReverseGeocodingRequest);
      v102 = sub_24A68761C(v99, v101, v141);

      *(v47 + 14) = v102;
      _os_log_impl(&dword_24A675000, v45, v94, "%s: No map items received for request: %s", v47, 0x16u);
      swift_arrayDestroy();
      v56 = v95;
      goto LABEL_10;
    }

    v88 = v93;
LABEL_18:
    sub_24A69004C(v88, type metadata accessor for FMReverseGeocodingRequest);
LABEL_19:
    v89 = sub_24A6F47C0();
    v91 = v90;
    swift_beginAccess();
    sub_24A7BE560(0, v89, v91);
    result = swift_endAccess();
    if (v134)
    {
      sub_24A68808C(v140);
      memcpy(v139, v140, sizeof(v139));
      v134(v139);
      memcpy(v141, v139, 0x120uLL);
      return sub_24A67F378(v141, &unk_27EF5E0D0, &qword_24A8319E0);
    }

    return result;
  }

  v66 = swift_unknownObjectRetain_n();
  v129 = a6;
  FMIPAddress.init(mapItem:)(v66, v138);
  v67 = v135;
  v68 = sub_24A6F47C0();
  v70 = v69;
  swift_beginAccess();
  sub_24A7BE560(0, v68, v70);
  swift_endAccess();
  v71 = v120;
  sub_24A82CA24();
  memcpy(v141, v138, 0x120uLL);
  sub_24A75E250(v67, v141, v71);
  (*(v121 + 8))(v71, v122);
  v72 = v123;
  sub_24A68FE04(v67, v123, type metadata accessor for FMReverseGeocodingRequest);
  memcpy(v140, v138, sizeof(v140));

  sub_24A76ECE4(v140, v139);
  v73 = sub_24A82CD94();
  v74 = sub_24A82D504();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v137[0] = v76;
    *v75 = 136315650;
    v77 = sub_24A82DDB4();
    v79 = sub_24A68761C(v77, v78, v137);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    v80 = FMReverseGeocodingRequest.debugDescription.getter();
    v82 = v81;
    sub_24A69004C(v72, type metadata accessor for FMReverseGeocodingRequest);
    v83 = sub_24A68761C(v80, v82, v137);

    *(v75 + 14) = v83;
    *(v75 + 22) = 2080;
    memcpy(v139, v140, sizeof(v139));
    v84 = FMIPAddress.debugDescription.getter();
    v86 = v85;
    sub_24A6CD854(v140);
    v87 = sub_24A68761C(v84, v86, v137);

    *(v75 + 24) = v87;
    _os_log_impl(&dword_24A675000, v73, v74, "%s: address received for request: %s - %s", v75, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v76, -1, -1);
    MEMORY[0x24C21E1D0](v75, -1, -1);
  }

  else
  {
    sub_24A6CD854(v140);

    sub_24A69004C(v72, type metadata accessor for FMReverseGeocodingRequest);
  }

  v104 = v116;
  v103 = v117;
  sub_24A67B054();
  v106 = v124;
  v105 = v125;
  v107 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x277D851C8], v126);
  v108 = sub_24A82D5A4();
  (*(v105 + 8))(v106, v107);
  memcpy(v137, v138, sizeof(v137));
  v109 = swift_allocObject();
  v109[2] = a1;
  memcpy(v109 + 3, v138, 0x120uLL);
  v110 = v134;
  v111 = v131;
  v109[39] = v134;
  v109[40] = v111;
  v136[4] = sub_24A76F084;
  v136[5] = v109;
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 1107296256;
  v136[2] = sub_24A699BA0;
  v136[3] = &unk_285DC73E0;
  v112 = _Block_copy(v136);

  sub_24A76ECE4(v137, v139);
  sub_24A6A7314(v110, v111);
  v113 = v127;
  sub_24A82CE24();
  v139[0] = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  v114 = v119;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v113, v104, v112);
  _Block_release(v112);
  swift_unknownObjectRelease();

  (*(v118 + 8))(v104, v114);
  (*(v128 + 8))(v113, v103);
  memcpy(v139, v138, sizeof(v139));
  sub_24A6CD854(v139);
}

uint64_t sub_24A76187C(void *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A82CE54();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A675000, v11, v12, "FMDiskIO: save to disk", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  v14 = *a1;
  v27 = a1[1];
  v28 = v14;
  v15 = a1[2];
  v25 = a1[3];
  v26 = v15;
  v24 = a1[4];
  v16 = swift_allocObject();
  v17 = *(a1 + 1);
  *(v16 + 24) = *a1;
  *(v16 + 16) = v2;
  *(v16 + 40) = v17;
  *(v16 + 56) = a1[4];
  aBlock[4] = sub_24A76F348;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7520;
  v18 = _Block_copy(aBlock);

  sub_24A67E964(&v28, &v22, &qword_27EF5DFF0, &qword_24A839E00);
  sub_24A67E964(&v27, &v22, &qword_27EF5E008, &unk_24A837700);
  sub_24A67E964(&v26, &v22, &qword_27EF5E030, &qword_24A837710);
  sub_24A67E964(&v25, &v22, &qword_27EF5E048, &qword_24A837718);
  sub_24A67E964(&v24, &v22, &qword_27EF5E048, &qword_24A837718);
  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v18);
  _Block_release(v18);
  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}

uint64_t sub_24A761CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = v4;
  v9 = sub_24A82CDF4();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24A82CE54();
  v12 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_281518F88);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v14;
    v19 = v7;
    v20 = v11;
    v21 = v9;
    v22 = v12;
    v23 = a1;
    v24 = a3;
    v25 = a4;
    v26 = v18;
    *v18 = 0;
    _os_log_impl(&dword_24A675000, v16, v17, "FMDiskIO: save to disk", v18, 2u);
    v27 = v26;
    a4 = v25;
    a3 = v24;
    a1 = v23;
    v12 = v22;
    v9 = v21;
    v11 = v20;
    v7 = v19;
    v14 = v32;
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v7;
  *(v28 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = a4;
  v29 = _Block_copy(aBlock);

  sub_24A82CE24();
  v36 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v11, v29);
  _Block_release(v29);
  (*(v35 + 8))(v11, v9);
  (*(v12 + 8))(v14, v34);
}

uint64_t sub_24A7620CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A675000, v11, v12, "FMDiskIO: save to disk", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 56) = *(a1 + 32);
  *(v14 + 72) = v15;
  *(v14 + 88) = *(a1 + 64);
  v16 = *(a1 + 16);
  *(v14 + 24) = *a1;
  *(v14 + 16) = v2;
  *(v14 + 104) = *(a1 + 80);
  *(v14 + 40) = v16;
  aBlock[4] = sub_24A76F4D0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC75C0;
  v17 = _Block_copy(aBlock);

  sub_24A6EF948(a1, v21);
  sub_24A82CE24();
  v21[0] = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v17);
  _Block_release(v17);
  (*(v20 + 8))(v6, v4);
  (*(v7 + 8))(v9, v19);
}

void sub_24A762488(uint64_t a1, __int128 *a2)
{
  v110[1] = *MEMORY[0x277D85DE8];
  v96 = sub_24A82CCD4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v97 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E1D0, &qword_24A8377E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v93 - v7;
  v9 = sub_24A6BBA94(&qword_27EF5E1D8, &qword_24A8377F0);
  v99 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v98 = &v93 - v10;
  v11 = sub_24A82C8B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[1];
  v105 = *a2;
  v106 = v15;
  v107 = *(a2 + 4);
  v104 = 0;
  v101 = objc_opt_self();
  v16 = [v101 defaultManager];
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v100 = a1;
  v102 = v17;
  v103 = v18;
  v19 = sub_24A82CF94();
  v20 = [v16 fileExistsAtPath:v19 isDirectory:&v104];

  if (v20)
  {
LABEL_4:
    sub_24A82C754();
    swift_allocObject();
    sub_24A82C744();
    sub_24A76F354();
    v25 = sub_24A82C734();
    if (v2)
    {

      v27 = v2;
LABEL_27:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v78 = sub_24A82CDC4();
      sub_24A6797D0(v78, qword_281518F88);
      v79 = v27;
      v80 = sub_24A82CD94();
      v81 = sub_24A82D4E4();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v108 = v83;
        *v82 = 136315138;
        swift_getErrorValue();
        v84 = sub_24A82DC74();
        v86 = sub_24A68761C(v84, v85, &v108);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_24A675000, v80, v81, "FMDiskIO: Could not save objects to disk %s", v82, 0xCu);
        sub_24A6876E8(v83);
        MEMORY[0x24C21E1D0](v83, -1, -1);
        MEMORY[0x24C21E1D0](v82, -1, -1);
      }

      else
      {
      }

      return;
    }

    v28 = v25;
    v29 = v26;
    v30 = v100;
    sub_24A67E964(v100 + *(*v100 + 128), v8, &qword_27EF5E1D0, &qword_24A8377E8);
    if ((*(v99 + 48))(v8, 1, v9) == 1)
    {
      sub_24A67F378(v8, &qword_27EF5E1D0, &qword_24A8377E8);
      v98 = v28;
      v99 = v29;
      v31 = sub_24A82C8E4();
      v32 = *(v30 + 40);
      v33 = *(v30 + 48);
      v108 = v102;
      v109 = v103;

      v94 = v33;
      MEMORY[0x24C21C9E0](v32, v33);
      v34 = sub_24A82CF94();

      v35 = [v31 writeToFile:v34 atomically:1];

      if (v35)
      {
        v93 = v32;
LABEL_9:
        v36 = [v101 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v38 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v39 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v40;
        *(inited + 40) = v39;
        v41 = v38;
        v42 = v39;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey, &unk_24A83185C);
        v43 = sub_24A82CED4();

        v108 = v102;
        v109 = v103;

        MEMORY[0x24C21C9E0](v93, v94);
        v44 = sub_24A82CF94();

        v108 = 0;
        v45 = [v36 setAttributes:v43 ofItemAtPath:v44 error:&v108];

        if ((v45 & 1) == 0)
        {
          v77 = v108;
          v27 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v98, v99);

          goto LABEL_27;
        }

        v46 = qword_281515DC8;
        v47 = v108;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = sub_24A82CDC4();
        sub_24A6797D0(v48, qword_281518F88);

        v49 = sub_24A82CD94();
        v50 = sub_24A82D504();

        v51 = os_log_type_enabled(v49, v50);
        v52 = v93;
        if (v51)
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v110[0] = v54;
          *v53 = 136315138;
          v108 = v102;
          v109 = v103;

          MEMORY[0x24C21C9E0](v52, v94);
          v55 = sub_24A68761C(v108, v109, v110);

          *(v53 + 4) = v55;
          _os_log_impl(&dword_24A675000, v49, v50, "FMDiskIO: Successfully wrote object to disk @ %s", v53, 0xCu);
          sub_24A6876E8(v54);
          MEMORY[0x24C21E1D0](v54, -1, -1);
          MEMORY[0x24C21E1D0](v53, -1, -1);
        }

        sub_24A67E0F0(v98, v99);

LABEL_34:

        return;
      }

      v28 = v98;
    }

    else
    {
      sub_24A67E8FC(v8, v98, &qword_27EF5E1D8, &qword_24A8377F0);
      v67 = v97;
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20], MEMORY[0x277D08F28]);
      v74 = v96;
      v75 = sub_24A82C734();
      v99 = v29;
      v87 = v75;
      v88 = v76;
      v89 = sub_24A82C8E4();
      sub_24A67E0F0(v87, v88);
      v90 = *(v30 + 40);
      v91 = *(v30 + 48);
      v108 = v102;
      v109 = v103;

      v93 = v90;
      v94 = v91;
      MEMORY[0x24C21C9E0](v90, v91);
      v92 = sub_24A82CF94();

      LODWORD(v87) = [v89 writeToFile:v92 atomically:1];

      (*(v95 + 8))(v67, v74);
      sub_24A67F378(v98, &qword_27EF5E1D8, &qword_24A8377F0);
      if (v87)
      {
        v98 = v28;
        goto LABEL_9;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v68 = sub_24A82CDC4();
    sub_24A6797D0(v68, qword_281518F88);
    v69 = sub_24A82CD94();
    v70 = sub_24A82D504();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v28;
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_24A675000, v69, v70, "FMDiskIO: Could not save objects to disk", v72, 2u);
      MEMORY[0x24C21E1D0](v72, -1, -1);
      v73 = v71;
    }

    else
    {
      v73 = v28;
    }

    sub_24A67E0F0(v73, v99);

    goto LABEL_34;
  }

  v21 = [v101 defaultManager];
  sub_24A82C824();
  v22 = sub_24A82C844();
  (*(v12 + 8))(v14, v11);
  v108 = 0;
  v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v108];

  if (v23)
  {
    v24 = v108;
    goto LABEL_4;
  }

  v56 = v108;
  v57 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v58 = sub_24A82CDC4();
  sub_24A6797D0(v58, qword_281518F88);
  v59 = v100;

  v60 = sub_24A82CD94();
  v61 = sub_24A82D504();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v110[0] = v63;
    *v62 = 136315138;
    v64 = *(v59 + 40);
    v65 = *(v59 + 48);
    v108 = v102;
    v109 = v103;

    MEMORY[0x24C21C9E0](v64, v65);
    v66 = sub_24A68761C(v108, v109, v110);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_24A675000, v60, v61, "FMDiskIO: Could not create directory for content: %s", v62, 0xCu);
    sub_24A6876E8(v63);
    MEMORY[0x24C21E1D0](v63, -1, -1);
    MEMORY[0x24C21E1D0](v62, -1, -1);
  }
}

void sub_24A763288(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t (*a10)(void))
{
  v121[1] = *MEMORY[0x277D85DE8];
  v104 = sub_24A82CCD4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v107 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a4;
  v112 = a5;
  v19 = sub_24A6BBA94(a4, a5);
  MEMORY[0x28223BE20](v19 - 8);
  v110 = &v103 - v20;
  v108 = a6;
  v105 = a7;
  v21 = sub_24A6BBA94(a6, a7);
  v109 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v106 = &v103 - v22;
  v23 = sub_24A82C8B4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a2;
  v117 = 0;
  v114 = objc_opt_self();
  v27 = [v114 defaultManager];
  v28 = a1[3];
  v29 = a1[4];
  v113 = a1;
  v115 = v28;
  v116 = v29;
  v30 = sub_24A82CF94();
  LOBYTE(a5) = [v27 fileExistsAtPath:v30 isDirectory:&v117];

  if (a5)
  {
LABEL_4:
    sub_24A82C754();
    swift_allocObject();
    v35 = sub_24A82C744();
    sub_24A6BBA94(a8, a9);
    a10();
    v36 = sub_24A82C734();
    if (v10)
    {

      v38 = v10;
LABEL_21:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v85 = sub_24A82CDC4();
      sub_24A6797D0(v85, qword_281518F88);
      v86 = v38;
      v87 = sub_24A82CD94();
      v88 = sub_24A82D4E4();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v119 = v90;
        *v89 = 136315138;
        swift_getErrorValue();
        v91 = sub_24A82DC74();
        v93 = sub_24A68761C(v91, v92, &v119);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_24A675000, v87, v88, "FMDiskIO: Could not save objects to disk %s", v89, 0xCu);
        sub_24A6876E8(v90);
        MEMORY[0x24C21E1D0](v90, -1, -1);
        MEMORY[0x24C21E1D0](v89, -1, -1);
      }

      else
      {
      }

      return;
    }

    v39 = v36;
    v40 = v37;
    v41 = v113;
    v42 = v110;
    v43 = v111;
    v44 = v112;
    sub_24A67E964(v41 + *(*v41 + 128), v110, v111, v112);
    if ((*(v109 + 48))(v42, 1, v21) == 1)
    {
      sub_24A67F378(v42, v43, v44);
      v112 = v39;
      v45 = sub_24A82C8E4();
      v46 = v41[5];
      v47 = v41[6];
      v119 = v115;
      v120 = v116;

      v110 = v46;
      v48 = v47;
      MEMORY[0x24C21C9E0](v46, v47);
      v49 = sub_24A82CF94();

      v50 = [v45 writeToFile:v49 atomically:1];

      if (v50)
      {
LABEL_8:
        v109 = v40;
        v51 = [v114 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v53 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v54 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v55;
        *(inited + 40) = v54;
        v56 = v53;
        v57 = v54;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey, &unk_24A83185C);
        v58 = sub_24A82CED4();

        v119 = v115;
        v120 = v116;

        MEMORY[0x24C21C9E0](v110, v48);
        v59 = sub_24A82CF94();

        v119 = 0;
        LOBYTE(inited) = [v51 setAttributes:v58 ofItemAtPath:v59 error:&v119];

        if ((inited & 1) == 0)
        {
          v84 = v119;
          v38 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v112, v109);

          goto LABEL_21;
        }

        v60 = qword_281515DC8;
        v61 = v119;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = sub_24A82CDC4();
        sub_24A6797D0(v62, qword_281518F88);

        v63 = sub_24A82CD94();
        v64 = sub_24A82D504();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v121[0] = v66;
          *v65 = 136315138;
          v119 = v115;
          v120 = v116;

          MEMORY[0x24C21C9E0](v110, v48);
          v67 = sub_24A68761C(v119, v120, v121);

          *(v65 + 4) = v67;
          _os_log_impl(&dword_24A675000, v63, v64, "FMDiskIO: Successfully wrote object to disk @ %s", v65, 0xCu);
          sub_24A6876E8(v66);
          MEMORY[0x24C21E1D0](v66, -1, -1);
          MEMORY[0x24C21E1D0](v65, -1, -1);
        }

        v68 = v112;
        v69 = v109;
LABEL_32:
        sub_24A67E0F0(v68, v69);

        return;
      }
    }

    else
    {
      v111 = v35;
      sub_24A67E8FC(v42, v106, v108, v105);
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20], MEMORY[0x277D08F28]);
      v81 = v104;
      v82 = sub_24A82C734();
      v112 = v39;
      v94 = v82;
      v95 = v83;
      v96 = sub_24A82C8E4();
      sub_24A67E0F0(v94, v95);
      v98 = v41[5];
      v97 = v41[6];
      v119 = v115;
      v120 = v116;

      v110 = v98;
      v48 = v97;
      MEMORY[0x24C21C9E0](v98, v97);
      v99 = sub_24A82CF94();

      LODWORD(v97) = [v96 writeToFile:v99 atomically:1];

      (*(v103 + 8))(v107, v81);
      sub_24A67F378(v106, v108, v105);
      if (v97)
      {
        goto LABEL_8;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v100 = sub_24A82CDC4();
    sub_24A6797D0(v100, qword_281518F88);
    v63 = sub_24A82CD94();
    v101 = sub_24A82D504();
    if (os_log_type_enabled(v63, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_24A675000, v63, v101, "FMDiskIO: Could not save objects to disk", v102, 2u);
      MEMORY[0x24C21E1D0](v102, -1, -1);
    }

    v68 = v112;
    v69 = v40;
    goto LABEL_32;
  }

  v31 = [v114 defaultManager];
  sub_24A82C824();
  v32 = sub_24A82C844();
  (*(v24 + 8))(v26, v23);
  v119 = 0;
  v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v119];

  if (v33)
  {
    v34 = v119;
    goto LABEL_4;
  }

  v70 = v119;
  v71 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v72 = sub_24A82CDC4();
  sub_24A6797D0(v72, qword_281518F88);
  v73 = v113;

  v74 = sub_24A82CD94();
  v75 = sub_24A82D504();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v121[0] = v77;
    *v76 = 136315138;
    v78 = v73[5];
    v79 = v73[6];
    v119 = v115;
    v120 = v116;

    MEMORY[0x24C21C9E0](v78, v79);
    v80 = sub_24A68761C(v119, v120, v121);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_24A675000, v74, v75, "FMDiskIO: Could not create directory for content: %s", v76, 0xCu);
    sub_24A6876E8(v77);
    MEMORY[0x24C21E1D0](v77, -1, -1);
    MEMORY[0x24C21E1D0](v76, -1, -1);
  }
}

void sub_24A764040(uint64_t a1, uint64_t a2)
{
  v103[1] = *MEMORY[0x277D85DE8];
  v91 = sub_24A82CCD4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v92 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E250, &qword_24A837840);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v87 - v7;
  v9 = sub_24A6BBA94(&qword_27EF5E258, &qword_24A837848);
  v94 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v93 = &v87 - v10;
  v11 = sub_24A82C8B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a2;
  v99 = 0;
  v96 = objc_opt_self();
  v15 = [v96 defaultManager];
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v95 = a1;
  v97 = v16;
  v98 = v17;
  v18 = sub_24A82CF94();
  LOBYTE(a1) = [v15 fileExistsAtPath:v18 isDirectory:&v99];

  if (a1)
  {
LABEL_4:
    sub_24A82C754();
    swift_allocObject();
    sub_24A82C744();
    sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
    sub_24A76F57C(&qword_27EF5E268, sub_24A76F4DC, MEMORY[0x277D83948]);
    v23 = sub_24A82C734();
    if (v2)
    {

      v25 = v2;
LABEL_27:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v71 = sub_24A82CDC4();
      sub_24A6797D0(v71, qword_281518F88);
      v72 = v25;
      v73 = sub_24A82CD94();
      v74 = sub_24A82D4E4();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v101 = v76;
        *v75 = 136315138;
        swift_getErrorValue();
        v77 = sub_24A82DC74();
        v79 = sub_24A68761C(v77, v78, &v101);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_24A675000, v73, v74, "FMDiskIO: Could not save objects to disk %s", v75, 0xCu);
        sub_24A6876E8(v76);
        MEMORY[0x24C21E1D0](v76, -1, -1);
        MEMORY[0x24C21E1D0](v75, -1, -1);
      }

      else
      {
      }

      return;
    }

    v26 = v23;
    v27 = v24;
    v28 = v95;
    sub_24A67E964(v95 + *(*v95 + 128), v8, &qword_27EF5E250, &qword_24A837840);
    if ((*(v94 + 48))(v8, 1, v9) == 1)
    {
      sub_24A67F378(v8, &qword_27EF5E250, &qword_24A837840);
      v94 = v26;
      v29 = sub_24A82C8E4();
      v31 = *(v28 + 40);
      v30 = *(v28 + 48);
      v101 = v97;
      v102 = v98;

      v89 = v30;
      MEMORY[0x24C21C9E0](v31, v30);
      v32 = sub_24A82CF94();

      v33 = [v29 writeToFile:v32 atomically:1];

      if (v33)
      {
        v88 = v31;
LABEL_9:
        v93 = v27;
        v34 = [v96 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v36 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v37 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v38;
        *(inited + 40) = v37;
        v39 = v36;
        v40 = v37;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey, &unk_24A83185C);
        v41 = sub_24A82CED4();

        v101 = v97;
        v102 = v98;

        MEMORY[0x24C21C9E0](v88, v89);
        v42 = sub_24A82CF94();

        v101 = 0;
        v43 = [v34 setAttributes:v41 ofItemAtPath:v42 error:&v101];

        if ((v43 & 1) == 0)
        {
          v70 = v101;
          v25 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v94, v93);

          goto LABEL_27;
        }

        v44 = qword_281515DC8;
        v45 = v101;
        if (v44 != -1)
        {
          swift_once();
        }

        v46 = sub_24A82CDC4();
        sub_24A6797D0(v46, qword_281518F88);

        v47 = sub_24A82CD94();
        v48 = sub_24A82D504();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v103[0] = v50;
          *v49 = 136315138;
          v101 = v97;
          v102 = v98;

          MEMORY[0x24C21C9E0](v88, v89);
          v51 = sub_24A68761C(v101, v102, v103);

          *(v49 + 4) = v51;
          _os_log_impl(&dword_24A675000, v47, v48, "FMDiskIO: Successfully wrote object to disk @ %s", v49, 0xCu);
          sub_24A6876E8(v50);
          MEMORY[0x24C21E1D0](v50, -1, -1);
          MEMORY[0x24C21E1D0](v49, -1, -1);
        }

        sub_24A67E0F0(v94, v93);

LABEL_34:

        return;
      }

      v26 = v94;
    }

    else
    {
      sub_24A67E8FC(v8, v93, &qword_27EF5E258, &qword_24A837848);
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20], MEMORY[0x277D08F28]);
      v69 = v91;
      v80 = sub_24A82C734();
      v82 = v81;
      v83 = sub_24A82C8E4();
      sub_24A67E0F0(v80, v82);
      v84 = *(v28 + 40);
      v85 = *(v28 + 48);
      v101 = v97;
      v102 = v98;

      v88 = v84;
      v89 = v85;
      MEMORY[0x24C21C9E0](v84, v85);
      v86 = sub_24A82CF94();

      LODWORD(v80) = [v83 writeToFile:v86 atomically:1];

      (*(v90 + 8))(v92, v69);
      sub_24A67F378(v93, &qword_27EF5E258, &qword_24A837848);
      if (v80)
      {
        v94 = v26;
        goto LABEL_9;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v63 = sub_24A82CDC4();
    sub_24A6797D0(v63, qword_281518F88);
    v64 = sub_24A82CD94();
    v65 = sub_24A82D504();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v26;
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_24A675000, v64, v65, "FMDiskIO: Could not save objects to disk", v67, 2u);
      MEMORY[0x24C21E1D0](v67, -1, -1);
      v68 = v66;
    }

    else
    {
      v68 = v26;
    }

    sub_24A67E0F0(v68, v27);

    goto LABEL_34;
  }

  v19 = [v96 defaultManager];
  sub_24A82C824();
  v20 = sub_24A82C844();
  (*(v12 + 8))(v14, v11);
  v101 = 0;
  v21 = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v101];

  if (v21)
  {
    v22 = v101;
    goto LABEL_4;
  }

  v52 = v101;
  v53 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v54 = sub_24A82CDC4();
  sub_24A6797D0(v54, qword_281518F88);
  v55 = v95;

  v56 = sub_24A82CD94();
  v57 = sub_24A82D504();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v103[0] = v59;
    *v58 = 136315138;
    v60 = *(v55 + 40);
    v61 = *(v55 + 48);
    v101 = v97;
    v102 = v98;

    MEMORY[0x24C21C9E0](v60, v61);
    v62 = sub_24A68761C(v101, v102, v103);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_24A675000, v56, v57, "FMDiskIO: Could not create directory for content: %s", v58, 0xCu);
    sub_24A6876E8(v59);
    MEMORY[0x24C21E1D0](v59, -1, -1);
    MEMORY[0x24C21E1D0](v58, -1, -1);
  }
}

void sub_24A764E04(uint64_t a1, __int128 *a2)
{
  v112 = *MEMORY[0x277D85DE8];
  v94 = sub_24A82CCD4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v95 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E238, &qword_24A837830);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v91 - v7;
  v9 = sub_24A6BBA94(&qword_27EF5E240, &qword_24A837838);
  v97 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v96 = &v91 - v10;
  v11 = sub_24A82C8B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[3];
  v108 = a2[2];
  v109 = v15;
  v110 = a2[4];
  v111 = *(a2 + 10);
  v16 = a2[1];
  v106 = *a2;
  v107 = v16;
  v102 = 0;
  v99 = objc_opt_self();
  v17 = [v99 defaultManager];
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v98 = a1;
  v100 = v18;
  v101 = v19;
  v20 = sub_24A82CF94();
  LOBYTE(a1) = [v17 fileExistsAtPath:v20 isDirectory:&v102];

  if (a1)
  {
LABEL_4:
    sub_24A82C754();
    swift_allocObject();
    sub_24A82C744();
    sub_24A76F4DC();
    v25 = sub_24A82C734();
    if (v2)
    {

      v27 = v2;
LABEL_26:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v76 = sub_24A82CDC4();
      sub_24A6797D0(v76, qword_281518F88);
      v77 = v27;
      v78 = sub_24A82CD94();
      v79 = sub_24A82D4E4();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v103 = v81;
        *v80 = 136315138;
        swift_getErrorValue();
        v82 = sub_24A82DC74();
        v84 = sub_24A68761C(v82, v83, &v103);

        *(v80 + 4) = v84;
        _os_log_impl(&dword_24A675000, v78, v79, "FMDiskIO: Could not save objects to disk %s", v80, 0xCu);
        sub_24A6876E8(v81);
        MEMORY[0x24C21E1D0](v81, -1, -1);
        MEMORY[0x24C21E1D0](v80, -1, -1);
      }

      else
      {
      }

      return;
    }

    v28 = v25;
    v29 = v26;
    v30 = v98;
    sub_24A67E964(v98 + *(*v98 + 128), v8, &qword_27EF5E238, &qword_24A837830);
    if ((*(v97 + 48))(v8, 1, v9) == 1)
    {
      sub_24A67F378(v8, &qword_27EF5E238, &qword_24A837830);
      v31 = v28;
      v97 = v29;
      v32 = sub_24A82C8E4();
      v33 = *(v30 + 40);
      v34 = *(v30 + 48);
      v103 = v100;
      v104 = v101;

      v92 = v33;
      v91 = v34;
      MEMORY[0x24C21C9E0](v33, v34);
      v35 = sub_24A82CF94();

      v36 = [v32 writeToFile:v35 atomically:1];

      if (v36)
      {
LABEL_8:
        v37 = [v99 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v39 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v40 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v41;
        *(inited + 40) = v40;
        v42 = v39;
        v43 = v40;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67F008(&qword_281512B90, type metadata accessor for FileAttributeKey, &unk_24A83185C);
        v44 = sub_24A82CED4();

        v103 = v100;
        v104 = v101;

        MEMORY[0x24C21C9E0](v92, v91);
        v45 = sub_24A82CF94();

        v103 = 0;
        LOBYTE(v40) = [v37 setAttributes:v44 ofItemAtPath:v45 error:&v103];

        if ((v40 & 1) == 0)
        {
          v75 = v103;
          v27 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v31, v97);

          goto LABEL_26;
        }

        v46 = qword_281515DC8;
        v47 = v103;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = sub_24A82CDC4();
        sub_24A6797D0(v48, qword_281518F88);

        v49 = sub_24A82CD94();
        v50 = sub_24A82D504();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v105 = v52;
          *v51 = 136315138;
          v103 = v100;
          v104 = v101;

          MEMORY[0x24C21C9E0](v92, v91);
          v53 = sub_24A68761C(v103, v104, &v105);

          *(v51 + 4) = v53;
          _os_log_impl(&dword_24A675000, v49, v50, "FMDiskIO: Successfully wrote object to disk @ %s", v51, 0xCu);
          sub_24A6876E8(v52);
          MEMORY[0x24C21E1D0](v52, -1, -1);
          MEMORY[0x24C21E1D0](v51, -1, -1);
        }

        sub_24A67E0F0(v31, v97);

LABEL_33:

        return;
      }

      v28 = v31;
    }

    else
    {
      sub_24A67E8FC(v8, v96, &qword_27EF5E240, &qword_24A837838);
      v65 = v95;
      sub_24A82CC94();
      sub_24A67F008(&qword_27EF5E1A0, MEMORY[0x277D08F20], MEMORY[0x277D08F28]);
      v72 = v94;
      v73 = sub_24A82C734();
      v97 = v29;
      v85 = v73;
      v86 = v74;
      v87 = sub_24A82C8E4();
      sub_24A67E0F0(v85, v86);
      v88 = *(v30 + 40);
      v89 = *(v30 + 48);
      v103 = v100;
      v104 = v101;

      v92 = v88;
      v91 = v89;
      MEMORY[0x24C21C9E0](v88, v89);
      v90 = sub_24A82CF94();

      LODWORD(v85) = [v87 writeToFile:v90 atomically:1];

      (*(v93 + 8))(v65, v72);
      sub_24A67F378(v96, &qword_27EF5E240, &qword_24A837838);
      if (v85)
      {
        v31 = v28;
        goto LABEL_8;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v66 = sub_24A82CDC4();
    sub_24A6797D0(v66, qword_281518F88);
    v67 = sub_24A82CD94();
    v68 = sub_24A82D504();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v28;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_24A675000, v67, v68, "FMDiskIO: Could not save objects to disk", v70, 2u);
      MEMORY[0x24C21E1D0](v70, -1, -1);
      v71 = v69;
    }

    else
    {
      v71 = v28;
    }

    sub_24A67E0F0(v71, v97);

    goto LABEL_33;
  }

  v21 = [v99 defaultManager];
  sub_24A82C824();
  v22 = sub_24A82C844();
  (*(v12 + 8))(v14, v11);
  v103 = 0;
  v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v103];

  if (v23)
  {
    v24 = v103;
    goto LABEL_4;
  }

  v54 = v103;
  v55 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v56 = sub_24A82CDC4();
  sub_24A6797D0(v56, qword_281518F88);
  v57 = v98;

  v58 = sub_24A82CD94();
  v59 = sub_24A82D504();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v105 = v61;
    *v60 = 136315138;
    v62 = *(v57 + 40);
    v63 = *(v57 + 48);
    v103 = v100;
    v104 = v101;

    MEMORY[0x24C21C9E0](v62, v63);
    v64 = sub_24A68761C(v103, v104, &v105);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_24A675000, v58, v59, "FMDiskIO: Could not create directory for content: %s", v60, 0xCu);
    sub_24A6876E8(v61);
    MEMORY[0x24C21E1D0](v61, -1, -1);
    MEMORY[0x24C21E1D0](v60, -1, -1);
  }
}

uint64_t sub_24A765C04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24A76F5F4;
  *(v6 + 24) = v5;
  v11[4] = sub_24A680674;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A6805E4;
  v11[3] = &unk_285DC7868;
  v7 = _Block_copy(v11);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v14;
    v10 = v13;
    *a1 = v12;
    *(a1 + 16) = v10;
    *(a1 + 32) = v9;
  }

  return result;
}

uint64_t sub_24A765D84()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A76F6BC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC78E0;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_24A765EE4(void *a1, uint64_t *a2)
{
  v73 = a2;
  v72 = sub_24A82CC54();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24A82CCD4();
  v71 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v5 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E1D0, &qword_24A8377E8);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = v65 - v7;
  v76 = sub_24A6BBA94(&qword_27EF5E1D8, &qword_24A8377F0);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v79 = v65 - v8;
  v80 = sub_24A82C8B4();
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v77 = v5;
  v12 = sub_24A82CDC4();
  v81 = sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMDiskIO: read from disk", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = [objc_opt_self() defaultManager];
  v18 = a1[3];
  v17 = a1[4];
  v20 = a1[5];
  v19 = a1[6];
  *&v82 = v18;
  *(&v82 + 1) = v17;

  MEMORY[0x24C21C9E0](v20, v19);
  v21 = sub_24A82CF94();

  v22 = [v16 fileExistsAtPath_];

  if (v22)
  {
    v68 = a1;
    *&v82 = v18;
    *(&v82 + 1) = v17;

    MEMORY[0x24C21C9E0](v20, v19);
    sub_24A82C824();

    v23 = sub_24A82C8C4();
    v32 = v31;
    v33 = v19;
    v34 = v23;
    (*(v9 + 8))(v11, v80);

    sub_24A681458(v34, v32);
    v35 = sub_24A82CD94();
    v36 = sub_24A82D504();

    sub_24A67E0F0(v34, v32);
    LODWORD(v80) = v36;
    v37 = os_log_type_enabled(v35, v36);
    v65[3] = v33;
    v65[2] = v18;
    v65[1] = v17;
    v66 = v32;
    v67 = v34;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      v85 = v65[0];
      *v38 = 136315394;
      *&v82 = v18;
      *(&v82 + 1) = v17;

      v39 = v35;
      MEMORY[0x24C21C9E0](v20, v33);
      v40 = sub_24A68761C(v82, *(&v82 + 1), &v85);

      *(v38 + 4) = v40;
      *(v38 + 12) = 2080;
      v41 = sub_24A82C8D4();
      v43 = sub_24A68761C(v41, v42, &v85);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_24A675000, v35, v80, "FMDiskIO: file: %s data: %s", v38, 0x16u);
      v44 = v65[0];
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v44, -1, -1);
      MEMORY[0x24C21E1D0](v38, -1, -1);
    }

    else
    {
    }

    v45 = v78;
    v46 = v76;
    sub_24A82C724();
    swift_allocObject();
    sub_24A82C714();
    v47 = v75;
    sub_24A67E964(v68 + *(*v68 + 128), v75, &qword_27EF5E1D0, &qword_24A8377E8);
    v48 = (*(v74 + 48))(v47, 1, v46);
    v49 = v77;
    if (v48 == 1)
    {
      sub_24A67F378(v47, &qword_27EF5E1D0, &qword_24A8377E8);
      sub_24A76F5FC();
      v50 = v67;
      v51 = v66;
      sub_24A82C704();
      sub_24A67E0F0(v50, v51);
    }

    else
    {
      sub_24A67E8FC(v47, v79, &qword_27EF5E1D8, &qword_24A8377F0);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20], MEMORY[0x277D08F30]);
      sub_24A82C704();
      v60 = v69;
      sub_24A82CC64();
      v61 = sub_24A82CCC4();
      v63 = v62;
      (*(v70 + 8))(v60, v72);
      sub_24A76F5FC();
      sub_24A82C704();
      v64 = (v71 + 8);

      sub_24A67E0F0(v61, v63);
      sub_24A67E0F0(v67, v66);
      (*v64)(v49, v45);
      sub_24A67F378(v79, &qword_27EF5E1D8, &qword_24A8377F0);
    }

    v52 = v84;
    v53 = v73;
    v54 = *v73;
    v55 = v73[1];
    v56 = v73[2];
    v57 = v73[3];
    v58 = v73[4];
    v59 = v83;
    *v73 = v82;
    *(v53 + 1) = v59;
    v53[4] = v52;
    sub_24A76F650(v54, v55, v56, v57, v58);
  }

  else
  {
    v24 = v17;
    v25 = v19;

    v81 = sub_24A82CD94();
    v26 = sub_24A82D4E4();

    if (os_log_type_enabled(v81, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v85 = v28;
      *v27 = 136315138;
      *&v82 = v18;
      *(&v82 + 1) = v24;

      MEMORY[0x24C21C9E0](v20, v25);
      v29 = sub_24A68761C(v82, *(&v82 + 1), &v85);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_24A675000, v81, v26, "FMDiskIO: Disk archive does not exist at: %s", v27, 0xCu);
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v28, -1, -1);
      MEMORY[0x24C21E1D0](v27, -1, -1);
    }

    else
    {
      v30 = v81;
    }
  }
}

uint64_t sub_24A766C5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24A82D744();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_24A766CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80) + 48);
  v5 = *(sub_24A6BBA94(&qword_27EF5E1F8, &unk_24A837800) + 48);
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_24A68FE04(a1 + v4, a2 + v5, type metadata accessor for FMIPDeviceConnectedState);
}

uint64_t sub_24A766DB4(uint64_t a1, const void *a2, void (*a3)(_BYTE *))
{
  memcpy(__dst, a2, sizeof(__dst));
  result = (*(*a1 + 352))(__dst);
  if (a3)
  {
    memcpy(v7, __dst, sizeof(v7));
    memcpy(__src, __dst, sizeof(__src));
    nullsub_1();
    memcpy(v6, __src, sizeof(v6));
    sub_24A76ECE4(v7, v9);
    a3(v6);
    memcpy(v9, v6, sizeof(v9));
    return sub_24A67F378(v9, &unk_27EF5E0D0, &qword_24A8319E0);
  }

  return result;
}

void sub_24A766EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  v4 = MEMORY[0x24C21D990]();
  sub_24A762488(a1, v5);
  objc_autoreleasePoolPop(v4);
}

void sub_24A766F0C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A763288(a1, v3, v5, &qword_27EF5E160, &qword_24A8377A8, &qword_27EF5E168, &unk_24A8377B0, &qword_27EF5E170, &qword_24A836D58, sub_24A76F288);
  objc_autoreleasePoolPop(v4);
}

void sub_24A766FA8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A763288(a1, v3, v5, &qword_27EF5E210, &qword_24A837818, &qword_27EF5E218, &qword_24A837820, &unk_27EF5E220, &unk_24A8343D0, sub_24A76F41C);
  objc_autoreleasePoolPop(v4);
}

void sub_24A767044(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A763288(a1, v3, v5, &qword_27EF5E1A8, &qword_24A8377D0, &unk_27EF5E1B0, &unk_24A8377D8, &qword_27EF5DC18, &qword_24A836D50, sub_24A714B30);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_24A7670E0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

void sub_24A767138(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x24C21D990]();
  sub_24A764040(a1, v3);
  objc_autoreleasePoolPop(v4);
}

void sub_24A767190(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v5 = MEMORY[0x24C21D990]();
  sub_24A764E04(a1, v6);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_24A767204@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_24A6BBA94(&qword_27EF5E200, &qword_24A83BA80);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v40 - v3;
  v4 = type metadata accessor for FMIPDeviceConnectedState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A6BBA94(&qword_27EF5E208, &qword_24A837810);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v42 = &v40 - v16;
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v45 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v41 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    (*(v9 + 16))(v11, *(v18 + 48) + *(v9 + 72) * v26, v8);
    sub_24A68FE04(*(v18 + 56) + *(v5 + 72) * v26, v7, type metadata accessor for FMIPDeviceConnectedState);
    v27 = v7;
    v28 = v44;
    v29 = *(v44 + 48);
    v30 = v42;
    (*(v9 + 32))();
    sub_24A68D628(v27, v30 + v29, type metadata accessor for FMIPDeviceConnectedState);
    v31 = v43;
    (*(v43 + 56))(v30, 0, 1, v28);
    v32 = v41;
    v25 = v22;
LABEL_11:
    *v1 = v18;
    v1[1] = v17;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v25;
    v1[4] = v32;
    v34 = v1[5];
    sub_24A67E8FC(v30, v33, &qword_27EF5E208, &qword_24A837810);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v28);
    v37 = v47;
    if (v36 != 1)
    {
      v38 = v40;
      sub_24A67E8FC(v33, v40, &qword_27EF5E200, &qword_24A83BA80);
      v34(v38);
      sub_24A67F378(v38, &qword_27EF5E200, &qword_24A83BA80);
      v35 = 0;
    }

    v39 = sub_24A6BBA94(&qword_27EF5E1F8, &unk_24A837800);
    return (*(*(v39 - 8) + 56))(v37, v35, 1, v39);
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v30 = v42;
        v31 = v43;
        v28 = v44;
        (*(v43 + 56))(v42, 1, 1, v44);
        v32 = 0;
        goto LABEL_11;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_24A76768C(uint64_t a1, unsigned __int8 *a2)
{
  v155 = sub_24A82CA34();
  *&v184 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v5 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v153 = &v141 - v10;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v11 = MEMORY[0x28223BE20](updated);
  v181 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v180 = &v141 - v13;
  v14 = type metadata accessor for FMIPItem(0);
  v15 = *(v14 - 8);
  v182 = v14;
  *&v183 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v179 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v141 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v141 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v178 = &v141 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v157 = &v141 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v141 - v28;
  v156 = *a2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v30 = sub_24A82CDC4();
  v31 = sub_24A6797D0(v30, qword_281518F88);

  v151 = v31;
  v32 = sub_24A82CD94();
  v33 = sub_24A82D504();
  v34 = os_log_type_enabled(v32, v33);
  v159 = v5;
  v154 = v9;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v186[0] = v177;
    *v35 = 134218242;
    *(v35 + 4) = *(a1 + 16);

    *(v35 + 12) = 2080;
    v185[0] = v156;
    v36 = FMIPLocationType.rawValue.getter();
    v38 = sub_24A68761C(v36, v37, v186);

    *(v35 + 14) = v38;
    _os_log_impl(&dword_24A675000, v32, v33, "FMIPDataManager: updateItemLocations %ld type %s", v35, 0x16u);
    v39 = v177;
    sub_24A6876E8(v177);
    MEMORY[0x24C21E1D0](v39, -1, -1);
    MEMORY[0x24C21E1D0](v35, -1, -1);
  }

  else
  {
  }

  v41 = v157;
  v42 = *(a1 + 16);
  v43 = v182;
  if (!v42)
  {
    return MEMORY[0x277D84F90];
  }

  v150 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v44 = a1 + v150;
  v45 = *(v183 + 72);
  v142 = (v23 + 392);
  v148 = v20 + 392;
  v149 = v45;
  v146 = (v184 + 56);
  v147 = (v184 + 16);
  v144 = (v184 + 32);
  v145 = (v184 + 48);
  v46 = MEMORY[0x277D84F90];
  *&v40 = 136315650;
  v141 = v40;
  v158 = v29;
  v143 = v20;
  do
  {
    v176 = v44;
    v177 = v42;
    sub_24A68FE04(v44, v29, type metadata accessor for FMIPItem);
    v189 = 0;
    v190 = 0uLL;
    v187 = 0;
    v188 = 0uLL;
    v47 = *(v29 + 49);
    if (v47)
    {
      v185[0] = 16;
      FMIPLocation.init(location:type:)(v47, v185, v186);
      v48 = v186[1];
      v49 = v186[2];
      v50 = 256;
      if (!BYTE1(v186[0]))
      {
        v50 = 0;
      }

      v51 = v50 | LOBYTE(v186[0]);
      v52 = 0x10000;
      if (!BYTE2(v186[0]))
      {
        v52 = 0;
      }

      v53 = v51 | v52 | (BYTE3(v186[0]) << 24);
      swift_beginAccess();
      v54 = v190;
      v189 = v53;
      *&v190 = v48;
      *(&v190 + 1) = v49;
    }

    v55 = *(v29 + 40);
    if (v55)
    {
      v185[0] = 16;
      FMIPLocation.init(location:type:)(v55, v185, v186);
      v56 = v186[1];
      v57 = v186[2];
      v58 = 256;
      if (!BYTE1(v186[0]))
      {
        v58 = 0;
      }

      v59 = v58 | LOBYTE(v186[0]);
      v60 = 0x10000;
      if (!BYTE2(v186[0]))
      {
        v60 = 0;
      }

      v61 = v59 | v60 | (BYTE3(v186[0]) << 24);
      swift_beginAccess();
      v62 = v188;
      v187 = v61;
      *&v188 = v56;
      *(&v188 + 1) = v57;
    }

    sub_24A68FE04(v29, v41, type metadata accessor for FMIPItem);
    v63 = sub_24A82CD94();
    v64 = sub_24A82D504();
    v65 = os_log_type_enabled(v63, v64);
    v175 = v46;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v186[0] = v67;
      *v66 = v141;
      v68 = (v41 + v43[14]);
      v69 = v41;
      v70 = *v68;
      v71 = v68[1];

      v72 = v69;
      v29 = v158;
      sub_24A69004C(v72, type metadata accessor for FMIPItem);
      v73 = sub_24A68761C(v70, v71, v186);

      *(v66 + 4) = v73;
      v43 = v182;
      *(v66 + 12) = 1024;
      swift_beginAccess();
      *(v66 + 14) = v190 != 0;
      *(v66 + 18) = 1024;
      swift_beginAccess();
      *(v66 + 20) = v188 != 0;
      _os_log_impl(&dword_24A675000, v63, v64, "FMIPDataManager: updateItemLocations item %s location: %{BOOL}d, crowdsourcedLocation: %{BOOL}d", v66, 0x18u);
      sub_24A6876E8(v67);
      MEMORY[0x24C21E1D0](v67, -1, -1);
      MEMORY[0x24C21E1D0](v66, -1, -1);
    }

    else
    {

      sub_24A69004C(v41, type metadata accessor for FMIPItem);
    }

    sub_24A68FE04(v29, v23, type metadata accessor for FMIPItem);
    v74 = v180;
    *v180 = v156;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v75 = v189;
    v184 = v190;
    swift_beginAccess();
    v76 = v187;
    v77 = v188;
    v78 = *&v23[v43[19]];
    v79 = v184;
    v183 = v188;
    if (!v184)
    {
      v75 = *(v23 + 48);
      v184 = *v142;
      v80 = v184;
      v77 = v183;
    }

    v81 = v23[v43[25]];
    v82 = v77;
    if (v81 == 1)
    {
      v83 = v184;
      v84 = v77;
      v85 = v79;

      v75 = 0;
      v184 = 0u;
    }

    else
    {
      v86 = v79;
      v87 = v82;
    }

    memcpy(v186, v23 + 8, sizeof(v186));
    memcpy(v20 + 8, v23 + 8, 0x121uLL);
    *(v20 + 38) = *(v23 + 38);
    if (!v82)
    {
      v76 = *(v23 + 39);
      v183 = *(v23 + 20);
      v88 = v183;
    }

    *(v20 + 39) = v76;
    *(v20 + 20) = v183;
    v89 = *(v23 + 43);
    *(v20 + 42) = *(v23 + 42);
    *(v20 + 43) = v89;
    v173 = v89;
    v90 = *(v23 + 45);
    *(v20 + 44) = *(v23 + 44);
    *(v20 + 45) = v90;
    v174 = v90;
    v91 = *(v23 + 47);
    *(v20 + 46) = *(v23 + 46);
    *(v20 + 47) = v91;
    *&v183 = v91;
    v92 = v182;
    v20[v182[21]] = v23[v182[21]];
    v20[v92[22]] = v23[v92[22]];
    v20[v92[25]] = v81;
    v93 = v184;
    v167 = v184;
    if (!v184)
    {
      v75 = *(v23 + 48);
      v184 = *v142;
      v94 = v184;
      v93 = v184;
    }

    *(v20 + 48) = v75;
    *v148 = v93;
    sub_24A67E964(&v23[v92[13]], &v20[v92[13]], &unk_27EF5E100, &unk_24A839DB0);
    v95 = v92[14];
    v97 = *&v23[v95];
    v96 = *&v23[v95 + 8];
    v98 = &v20[v95];
    *v98 = v97;
    *(v98 + 1) = v96;
    v161 = v96;
    v99 = v92[15];
    v101 = *&v23[v99];
    v100 = *&v23[v99 + 8];
    v102 = &v20[v99];
    *v102 = v101;
    *(v102 + 1) = v100;
    v160 = v100;
    v103 = v92[16];
    v104 = *&v23[v103];
    v105 = *&v23[v103 + 8];
    v106 = *&v23[v103 + 16];
    v107 = *&v23[v103 + 24];
    LODWORD(v100) = v23[v103 + 32];
    v108 = &v20[v103];
    v171 = v105;
    v172 = v104;
    *v108 = v104;
    *(v108 + 1) = v105;
    v169 = v107;
    v170 = v106;
    *(v108 + 2) = v106;
    *(v108 + 3) = v107;
    v168 = v100;
    v108[32] = v100;
    sub_24A68FE04(&v23[v92[24]], &v20[v92[24]], type metadata accessor for FMIPProductType);
    v109 = v92[17];
    v110 = &v23[v109];
    v112 = *&v23[v109 + 16];
    v111 = *&v23[v109 + 24];
    v113 = *&v23[v109 + 32];
    v114 = &v20[v109];
    *v114 = *v110;
    v163 = v112;
    *(v114 + 2) = v112;
    *(v114 + 3) = v111;
    *(v114 + 4) = v113;
    v115 = v92[18];
    v117 = *&v23[v115];
    v116 = *&v23[v115 + 8];
    v118 = &v20[v115];
    *v118 = v117;
    *(v118 + 1) = v116;
    v165 = v116;
    v166 = v113;
    *&v20[v92[19]] = v78;
    v119 = v92[20];
    v121 = *&v23[v119];
    v120 = *&v23[v119 + 8];
    v122 = &v20[v119];
    *v122 = v121;
    *(v122 + 1) = v120;
    v162 = v120;
    v123 = v92[23];
    v164 = *&v23[v123];
    *&v20[v123] = v164;
    v124 = *v23;
    v125 = v181;
    sub_24A68FE04(v74, v181, type metadata accessor for FMIPItemUpdateType);
    v126 = *v147;
    v127 = v153;
    v128 = v155;
    (*v147)(v153, v124 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v155);
    (*v146)(v127, 0, 1, v128);
    type metadata accessor for FMIPItemUpdateContext(0);
    v129 = swift_allocObject();
    sub_24A68FE04(v125, v129 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v130 = v124 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    *&v184 = v129;
    v126((v129 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp), v124 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v128);
    v131 = v154;
    sub_24A67E964(v127, v154, &qword_27EF5E0E0, &qword_24A836D90);
    v132 = *v145;
    if ((*v145)(v131, 1, v128) == 1)
    {
      v126(v159, v130, v128);
      sub_24A67E964(v186, v185, &unk_27EF5E0D0, &qword_24A8319E0);
      v167 = v167;

      sub_24A76ED78(v172, v171, v170, v169);

      sub_24A67F378(v127, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A69004C(v181, type metadata accessor for FMIPItemUpdateType);
      if (v132(v131, 1, v128) != 1)
      {
        sub_24A67F378(v131, &qword_27EF5E0E0, &qword_24A836D90);
      }

      v133 = v159;
      v43 = v182;
      v41 = v157;
      v134 = v144;
    }

    else
    {
      sub_24A67E964(v186, v185, &unk_27EF5E0D0, &qword_24A8319E0);
      v167 = v167;

      sub_24A76ED78(v172, v171, v170, v169);

      sub_24A67F378(v127, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A69004C(v181, type metadata accessor for FMIPItemUpdateType);
      v134 = v144;
      v133 = v159;
      (*v144)(v159, v131, v128);
      v43 = v182;
      v41 = v157;
    }

    v46 = v175;
    v20 = v143;
    v135 = v184;
    (*v134)(v184 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v133, v128);

    sub_24A69004C(v180, type metadata accessor for FMIPItemUpdateType);
    *v20 = v135;
    *&v20[v43[26]] = *&v23[v43[26]];
    v136 = v178;
    sub_24A68D628(v20, v178, type metadata accessor for FMIPItem);
    sub_24A69004C(v23, type metadata accessor for FMIPItem);
    sub_24A68FE04(v136, v179, type metadata accessor for FMIPItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_24A7802C4(0, v46[2] + 1, 1, v46);
    }

    v29 = v158;
    v138 = v46[2];
    v137 = v46[3];
    if (v138 >= v137 >> 1)
    {
      v46 = sub_24A7802C4((v137 > 1), v138 + 1, 1, v46);
    }

    sub_24A69004C(v178, type metadata accessor for FMIPItem);
    sub_24A69004C(v29, type metadata accessor for FMIPItem);
    v46[2] = v138 + 1;
    v139 = v149;
    sub_24A68D628(v179, v46 + v150 + v138 * v149, type metadata accessor for FMIPItem);

    v44 = v176 + v139;
    v42 = (v177 - 1);
  }

  while (v177 != 1);
  return v46;
}

void sub_24A7685B4(void *a1, uint64_t a2)
{
  v88 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v69 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v69 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v69 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v69 - v10;
  v86 = type metadata accessor for FMIPDevice(0);
  v11 = *(v86 - 8);
  v12 = MEMORY[0x28223BE20](v86);
  v75 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v69 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v69 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v89 = &v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v85 = (&v69 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  v24 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v92 = (&v69 - v26);
  v27 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = (&v69 - v31);
  v33 = a1[2];
  v95 = (v25 + 56);
  v34 = (v25 + 48);
  v35 = v33;
  v93 = v11;
  v84 = (v11 + 48);

  v36 = 0;
  v91 = 0;
  *&v37 = 136315138;
  v81 = v37;
  v90 = a1;
  v94 = v35;
  while (1)
  {
    if (v36 == v35)
    {
      v38 = 1;
      v36 = v35;
      goto LABEL_9;
    }

    if (v36 >= v35)
    {
      break;
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_30;
    }

    v39 = v92;
    v40 = a1 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v36;
    v41 = *(v24 + 48);
    *v92 = v36;
    sub_24A68FE04(v40, v39 + v41, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v39, v30, &unk_27EF5E0C0, &unk_24A837180);
    v38 = 0;
    ++v36;
    v35 = v94;
LABEL_9:
    (*v95)(v30, v38, 1, v24);
    sub_24A67E8FC(v30, v32, &qword_27EF5DF70, &unk_24A837730);
    if ((*v34)(v32, 1, v24) == 1)
    {
      return;
    }

    v42 = *v32;
    sub_24A68D628(v32 + *(v24 + 48), v23, type metadata accessor for FMIPDevice);
    if ((v23[216] & 2) != 0)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v83 = a1;
      v43 = sub_24A82CDC4();
      v44 = sub_24A6797D0(v43, qword_281518F88);
      v45 = v85;
      sub_24A68FE04(v23, v85, type metadata accessor for FMIPDevice);
      v79 = v44;
      v46 = sub_24A82CD94();
      LODWORD(v78) = sub_24A82D504();
      if (os_log_type_enabled(v46, v78))
      {
        v82 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v71 = v46;
        v72 = v47;
        v102[0] = v47;
        *v82 = v81;
        v48 = v45[1];
        v70 = *v45;

        sub_24A69004C(v45, type metadata accessor for FMIPDevice);
        v49 = sub_24A68761C(v70, v48, v102);

        v50 = v82;
        *(v82 + 4) = v49;
        v51 = v71;
        _os_log_impl(&dword_24A675000, v71, v78, "FMIPDataManager: Trying to preserve historical locations for device %s", v50, 0xCu);
        v52 = v72;
        sub_24A6876E8(v72);
        MEMORY[0x24C21E1D0](v52, -1, -1);
        MEMORY[0x24C21E1D0](v82, -1, -1);
      }

      else
      {

        v53 = sub_24A69004C(v45, type metadata accessor for FMIPDevice);
      }

      v82 = &v69;
      MEMORY[0x28223BE20](v53);
      v54 = v87;
      v55 = v91;
      sub_24A79F0DC(sub_24A76EDBC, v88, v87);
      v91 = v55;
      if ((*v84)(v54, 1, v86) == 1)
      {
        sub_24A67F378(v54, &qword_27EF5DF08, &qword_24A837770);
        a1 = v83;
        v35 = v94;
      }

      else
      {
        sub_24A68D628(v54, v89, type metadata accessor for FMIPDevice);
        v56 = v80;
        sub_24A68FE04(v23, v80, type metadata accessor for FMIPDevice);
        v57 = sub_24A82CD94();
        LODWORD(v79) = sub_24A82D504();
        if (os_log_type_enabled(v57, v79))
        {
          v82 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v102[0] = v78;
          *v82 = v81;
          v71 = *v56;
          v72 = v57;
          v58 = v56;
          v59 = *(v56 + 8);

          sub_24A69004C(v58, type metadata accessor for FMIPDevice);
          v60 = sub_24A68761C(v71, v59, v102);

          v61 = v82;
          *(v82 + 4) = v60;
          v62 = v72;
          _os_log_impl(&dword_24A675000, v72, v79, "FMIPDataManager: Preserving historical locations for device %s", v61, 0xCu);
          v63 = v78;
          sub_24A6876E8(v78);
          MEMORY[0x24C21E1D0](v63, -1, -1);
          MEMORY[0x24C21E1D0](v82, -1, -1);
        }

        else
        {

          sub_24A69004C(v56, type metadata accessor for FMIPDevice);
        }

        a1 = v83;
        v35 = v94;
        if (*(v23 + 31) || !*(v89 + 248))
        {
          sub_24A69004C(v89, type metadata accessor for FMIPDevice);
        }

        else
        {
          v83 = *(v89 + 248);
          sub_24A68FE04(v23, v75, type metadata accessor for FMIPDevice);
          memcpy(v102, v23 + 304, 0x120uLL);
          memcpy(v101, v23 + 304, sizeof(v101));
          memset(v100, 0, sizeof(v100));
          memset(v99, 0, sizeof(v99));
          v64 = type metadata accessor for FMIPItemGroup(0);
          memset(v98, 0, sizeof(v98));
          (*(*(v64 - 8) + 56))(v76, 1, 1, v64);
          v97 = 7;
          v65 = type metadata accessor for FMIPDeviceConnectedState(0);
          (*(*(v65 - 8) + 56))(v77, 1, 1, v65);
          v66 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
          v67 = v73;
          (*(*(v66 - 8) + 56))(v73, 1, 1, v66);

          sub_24A67E964(v102, &v96, &unk_27EF5E0D0, &qword_24A8319E0);
          FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v75, v83, v101, v100, v99, v98, 2, v76, v74, 2u, 2, &v97, v77, v67);
          v68 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_24A766CD4(v68);
          }

          sub_24A69004C(v89, type metadata accessor for FMIPDevice);
          v35 = v94;
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (v42 >= v90[2])
          {
            goto LABEL_32;
          }

          sub_24A76F3A8(v74, v90 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v42, type metadata accessor for FMIPDevice);
        }
      }
    }

    sub_24A69004C(v23, type metadata accessor for FMIPDevice);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_24A7690FC(void *a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v56 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v56 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v56 - v8;
  v9 = type metadata accessor for FMIPDevice(0);
  v70 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v64 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v56 - v14);
  v16 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v68 = (&v56 - v18);
  v19 = &qword_27EF5DF70;
  v20 = &unk_24A837730;
  v21 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v56 - v25);
  v27 = a1[2];
  v74 = (v17 + 48);
  v75 = (v17 + 56);

  v28 = 0;
  v69 = a1;
  while (1)
  {
    v71 = a1;
    while (1)
    {
      if (v28 == v27)
      {
        v29 = 1;
        v28 = v27;
      }

      else
      {
        if (v28 >= v27)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_24;
        }

        v31 = v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v28;
        v32 = *(v16 + 48);
        v33 = v28;
        v34 = v26;
        v35 = v27;
        v36 = v16;
        v37 = v15;
        v38 = v24;
        v39 = v20;
        v40 = v19;
        v41 = v68;
        *v68 = v33;
        sub_24A68FE04(v31, v41 + v32, type metadata accessor for FMIPDevice);
        v42 = v41;
        v19 = v40;
        v20 = v39;
        v24 = v38;
        v15 = v37;
        v16 = v36;
        v27 = v35;
        v26 = v34;
        sub_24A67E8FC(v42, v24, &unk_27EF5E0C0, &unk_24A837180);
        v29 = 0;
        v28 = v30;
      }

      (*v75)(v24, v29, 1, v16);
      sub_24A67E8FC(v24, v26, v19, v20);
      if ((*v74)(v26, 1, v16) == 1)
      {
        return;
      }

      v72 = *v26;
      sub_24A68D628(v26 + *(v16 + 48), v15, type metadata accessor for FMIPDevice);
      v43 = v15[3];
      if (v43)
      {
        if (*(v73 + 16))
        {
          v44 = sub_24A6A2D48(v15[2], v43);
          a1 = v71;
          if (v45)
          {
            break;
          }
        }
      }

      sub_24A69004C(v15, type metadata accessor for FMIPDevice);
    }

    v46 = (*(v73 + 56) + 24 * v44);
    v60 = *v46;
    v47 = v46[2];
    v56 = v46[1];
    v57 = v47;
    v59 = v46[3];
    v49 = *(v46 + 1);
    v48 = *(v46 + 2);
    v61 = v49;
    v58 = v48;
    sub_24A68FE04(v15, v64, type metadata accessor for FMIPDevice);
    v62 = v15[31];
    memcpy(v82, v15 + 38, 0x120uLL);
    memcpy(v81, v15 + 38, sizeof(v81));
    v50 = 256;
    if (!v56)
    {
      v50 = 0;
    }

    v51 = v50 | v60;
    v52 = 0x10000;
    if (!v57)
    {
      v52 = 0;
    }

    v80[0] = v51 | v52 | (v59 << 24);
    v80[1] = v61;
    v80[2] = v58;
    memset(v79, 0, sizeof(v79));
    v53 = type metadata accessor for FMIPItemGroup(0);
    memset(v78, 0, sizeof(v78));
    (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
    v77 = 7;
    v54 = type metadata accessor for FMIPDeviceConnectedState(0);
    (*(*(v54 - 8) + 56))(v66, 1, 1, v54);
    v55 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
    (*(*(v55 - 8) + 56))(v67, 1, 1, v55);

    v61 = v61;
    sub_24A67E964(v82, &v76, &unk_27EF5E0D0, &qword_24A8319E0);
    FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v64, v62, v81, v80, v79, v78, 2, v65, v63, 2u, 2, &v77, v66, v67);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_24A766CD4(a1);
    }

    sub_24A69004C(v15, type metadata accessor for FMIPDevice);
    if ((v72 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v72 >= a1[2])
    {
      goto LABEL_26;
    }

    sub_24A76F3A8(v63, a1 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v72, type metadata accessor for FMIPDevice);
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24A769874(void *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v46 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v46 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v46 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v64 = sub_24A82CAA4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPDevice(0);
  v61 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v54 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = (&v46 - v22);
  v23 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v46 - v27);
  v29 = (v21 + 56);
  v65 = a1[2];
  v30 = (v21 + 48);
  v31 = v11;
  v63 = (v62 + 48);
  v48 = (v62 + 8);
  v49 = (v62 + 32);

  v32 = 0;
  v60 = a1;
  v58 = a1;
  v62 = v31;
  while (1)
  {
    if (v32 == v65)
    {
      v33 = 1;
      v32 = v65;
      goto LABEL_9;
    }

    if (v32 >= v65)
    {
      break;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_24;
    }

    v34 = v59;
    v35 = v60 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v32;
    v36 = *(v20 + 48);
    *v59 = v32;
    sub_24A68FE04(v35, v34 + v36, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v34, v26, &unk_27EF5E0C0, &unk_24A837180);
    v33 = 0;
    ++v32;
    v31 = v62;
LABEL_9:
    (*v29)(v26, v33, 1, v20);
    sub_24A67E8FC(v26, v28, &qword_27EF5DF70, &unk_24A837730);
    if ((*v30)(v28, 1, v20) == 1)
    {
      return;
    }

    v37 = *v28;
    sub_24A68D628(v28 + *(v20 + 48), v19, type metadata accessor for FMIPDevice);
    if (!*(v19 + 3))
    {
      goto LABEL_3;
    }

    sub_24A82CA44();
    if ((*v63)(v31, 1, v64) == 1)
    {
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
      sub_24A67F378(v31, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v49)(v57, v31, v64);
      if (*(v51 + 16) && (v38 = sub_24A77EDF8(v57), (v39 & 1) != 0))
      {
        v47 = *(*(v51 + 56) + v38);
      }

      else
      {
        v47 = 0;
      }

      sub_24A68FE04(v19, v54, type metadata accessor for FMIPDevice);
      v52 = *(v19 + 31);
      memcpy(v73, v19 + 304, 0x120uLL);
      memcpy(v72, v19 + 304, sizeof(v72));
      v70 = *(v19 + 35);
      v46 = *(v19 + 18);
      v71 = v46;
      memset(v69, 0, sizeof(v69));
      v40 = type metadata accessor for FMIPItemGroup(0);
      memset(v68, 0, sizeof(v68));
      (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
      v67 = 7;
      v41 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
      v42 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      v43 = v50;
      (*(*(v42 - 8) + 56))(v50, 1, 1, v42);

      sub_24A67E964(v73, &v66, &unk_27EF5E0D0, &qword_24A8319E0);
      v44 = v46;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v54, v52, v72, &v70, v69, v68, v47, v55, v53, 2u, 2, &v67, v56, v43);
      v45 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24A766CD4(v45);
      }

      v31 = v62;
      (*v48)(v57, v64);
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v37 >= v58[2])
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v53, v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v37, type metadata accessor for FMIPDevice);
LABEL_3:
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24A76A0B0(void *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v46 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v46 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v46 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v64 = sub_24A82CAA4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPDevice(0);
  v61 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v54 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = (&v46 - v22);
  v23 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v46 - v27);
  v29 = (v21 + 56);
  v65 = a1[2];
  v30 = (v21 + 48);
  v31 = v11;
  v63 = (v62 + 48);
  v48 = (v62 + 8);
  v49 = (v62 + 32);

  v32 = 0;
  v60 = a1;
  v58 = a1;
  v62 = v31;
  while (1)
  {
    if (v32 == v65)
    {
      v33 = 1;
      v32 = v65;
      goto LABEL_9;
    }

    if (v32 >= v65)
    {
      break;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_24;
    }

    v34 = v59;
    v35 = v60 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v32;
    v36 = *(v20 + 48);
    *v59 = v32;
    sub_24A68FE04(v35, v34 + v36, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v34, v26, &unk_27EF5E0C0, &unk_24A837180);
    v33 = 0;
    ++v32;
    v31 = v62;
LABEL_9:
    (*v29)(v26, v33, 1, v20);
    sub_24A67E8FC(v26, v28, &qword_27EF5DF70, &unk_24A837730);
    if ((*v30)(v28, 1, v20) == 1)
    {
      return;
    }

    v37 = *v28;
    sub_24A68D628(v28 + *(v20 + 48), v19, type metadata accessor for FMIPDevice);
    if (!*(v19 + 3))
    {
      goto LABEL_3;
    }

    sub_24A82CA44();
    if ((*v63)(v31, 1, v64) == 1)
    {
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
      sub_24A67F378(v31, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v49)(v57, v31, v64);
      if (*(v51 + 16) && (v38 = sub_24A77EDF8(v57), (v39 & 1) != 0))
      {
        v47 = *(*(v51 + 56) + v38);
      }

      else
      {
        v47 = 0;
      }

      sub_24A68FE04(v19, v54, type metadata accessor for FMIPDevice);
      v52 = *(v19 + 31);
      memcpy(v73, v19 + 304, 0x120uLL);
      memcpy(v72, v19 + 304, sizeof(v72));
      v70 = *(v19 + 35);
      v46 = *(v19 + 18);
      v71 = v46;
      memset(v69, 0, sizeof(v69));
      v40 = type metadata accessor for FMIPItemGroup(0);
      memset(v68, 0, sizeof(v68));
      (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
      v67 = 7;
      v41 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
      v42 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      v43 = v50;
      (*(*(v42 - 8) + 56))(v50, 1, 1, v42);

      sub_24A67E964(v73, &v66, &unk_27EF5E0D0, &qword_24A8319E0);
      v44 = v46;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v54, v52, v72, &v70, v69, v68, 2, v55, v53, 2u, v47, &v67, v56, v43);
      v45 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24A766CD4(v45);
      }

      v31 = v62;
      (*v48)(v57, v64);
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v37 >= v58[2])
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v53, v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v37, type metadata accessor for FMIPDevice);
LABEL_3:
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24A76A8F4(void *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v46 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v46 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v46 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v64 = sub_24A82CAA4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPDevice(0);
  v61 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v54 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = (&v46 - v22);
  v23 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v46 - v27);
  v29 = (v21 + 56);
  v65 = a1[2];
  v30 = (v21 + 48);
  v31 = v11;
  v63 = (v62 + 48);
  v48 = (v62 + 8);
  v49 = (v62 + 32);

  v32 = 0;
  v60 = a1;
  v58 = a1;
  v62 = v31;
  while (1)
  {
    if (v32 == v65)
    {
      v33 = 1;
      v32 = v65;
      goto LABEL_9;
    }

    if (v32 >= v65)
    {
      break;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_24;
    }

    v34 = v59;
    v35 = v60 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v32;
    v36 = *(v20 + 48);
    *v59 = v32;
    sub_24A68FE04(v35, v34 + v36, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v34, v26, &unk_27EF5E0C0, &unk_24A837180);
    v33 = 0;
    ++v32;
    v31 = v62;
LABEL_9:
    (*v29)(v26, v33, 1, v20);
    sub_24A67E8FC(v26, v28, &qword_27EF5DF70, &unk_24A837730);
    if ((*v30)(v28, 1, v20) == 1)
    {
      return;
    }

    v37 = *v28;
    sub_24A68D628(v28 + *(v20 + 48), v19, type metadata accessor for FMIPDevice);
    if (!*(v19 + 3))
    {
      goto LABEL_3;
    }

    sub_24A82CA44();
    if ((*v63)(v31, 1, v64) == 1)
    {
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
      sub_24A67F378(v31, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v49)(v57, v31, v64);
      if (*(v51 + 16) && (v38 = sub_24A77EDF8(v57), (v39 & 1) != 0))
      {
        v47 = *(*(v51 + 56) + v38);
      }

      else
      {
        v47 = 0;
      }

      sub_24A68FE04(v19, v54, type metadata accessor for FMIPDevice);
      v52 = *(v19 + 31);
      memcpy(v73, v19 + 304, 0x120uLL);
      memcpy(v72, v19 + 304, sizeof(v72));
      v70 = *(v19 + 35);
      v46 = *(v19 + 18);
      v71 = v46;
      memset(v69, 0, sizeof(v69));
      v40 = type metadata accessor for FMIPItemGroup(0);
      memset(v68, 0, sizeof(v68));
      (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
      v67 = 7;
      v41 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
      v42 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      v43 = v50;
      (*(*(v42 - 8) + 56))(v50, 1, 1, v42);

      sub_24A67E964(v73, &v66, &unk_27EF5E0D0, &qword_24A8319E0);
      v44 = v46;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v54, v52, v72, &v70, v69, v68, 2, v55, v53, v47, 2, &v67, v56, v43);
      v45 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24A766CD4(v45);
      }

      v31 = v62;
      (*v48)(v57, v64);
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v37 >= v58[2])
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v53, v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v37, type metadata accessor for FMIPDevice);
LABEL_3:
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24A76B138(void *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v47 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v47 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v47 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v64 = sub_24A82CAA4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPDevice(0);
  v61 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v54 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = (&v47 - v22);
  v23 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v47 - v27);
  v29 = (v21 + 56);
  v65 = a1[2];
  v30 = (v21 + 48);
  v31 = v11;
  v63 = (v62 + 48);
  v48 = (v62 + 8);
  v49 = (v62 + 32);

  v32 = 0;
  v60 = a1;
  v58 = a1;
  v62 = v31;
  while (1)
  {
    if (v32 == v65)
    {
      v33 = 1;
      v32 = v65;
      goto LABEL_9;
    }

    if (v32 >= v65)
    {
      break;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_24;
    }

    v34 = v59;
    v35 = v60 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v32;
    v36 = *(v20 + 48);
    *v59 = v32;
    sub_24A68FE04(v35, v34 + v36, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v34, v26, &unk_27EF5E0C0, &unk_24A837180);
    v33 = 0;
    ++v32;
    v31 = v62;
LABEL_9:
    (*v29)(v26, v33, 1, v20);
    sub_24A67E8FC(v26, v28, &qword_27EF5DF70, &unk_24A837730);
    if ((*v30)(v28, 1, v20) == 1)
    {
      return;
    }

    v37 = *v28;
    sub_24A68D628(v28 + *(v20 + 48), v19, type metadata accessor for FMIPDevice);
    if (!*(v19 + 3))
    {
      goto LABEL_3;
    }

    sub_24A82CA44();
    if ((*v63)(v31, 1, v64) == 1)
    {
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
      sub_24A67F378(v31, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v49)(v57, v31, v64);
      if (*(v51 + 16) && (v38 = sub_24A77EDF8(v57), (v39 & 1) != 0))
      {
        v40 = *(*(v51 + 56) + v38);
      }

      else
      {
        v40 = 7;
      }

      sub_24A68FE04(v19, v54, type metadata accessor for FMIPDevice);
      v52 = *(v19 + 31);
      memcpy(v73, v19 + 304, 0x120uLL);
      memcpy(v72, v19 + 304, sizeof(v72));
      v70 = *(v19 + 35);
      v47 = *(v19 + 18);
      v71 = v47;
      memset(v69, 0, sizeof(v69));
      v41 = type metadata accessor for FMIPItemGroup(0);
      memset(v68, 0, sizeof(v68));
      (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
      v67 = v40;
      v42 = type metadata accessor for FMIPDeviceConnectedState(0);
      (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
      v43 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);

      sub_24A67E964(v73, &v66, &unk_27EF5E0D0, &qword_24A8319E0);
      v45 = v47;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v54, v52, v72, &v70, v69, v68, 2, v55, v53, 2u, 2, &v67, v56, v44);
      v46 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24A766CD4(v46);
      }

      v31 = v62;
      (*v48)(v57, v64);
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v37 >= v58[2])
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v53, v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v37, type metadata accessor for FMIPDevice);
LABEL_3:
      sub_24A69004C(v19, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24A76B96C(void *a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v51 - v4;
  v5 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v51 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v51 - v10;
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v71 = sub_24A82CAA4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMIPDevice(0);
  v68 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v60 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v59 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v66 = (&v51 - v24);
  v25 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = (&v51 - v29);
  v31 = (v23 + 56);
  v72 = a1[2];
  v32 = (v23 + 48);
  v33 = v13;
  v70 = (v69 + 48);
  v54 = (v69 + 8);
  v55 = (v69 + 32);

  v34 = 0;
  v67 = a1;
  v65 = a1;
  v69 = v33;
  while (1)
  {
    if (v34 == v72)
    {
      v35 = 1;
      v34 = v72;
      goto LABEL_9;
    }

    if (v34 >= v72)
    {
      break;
    }

    if (__OFADD__(v34, 1))
    {
      goto LABEL_24;
    }

    v36 = v66;
    v37 = v67 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v34;
    v38 = *(v22 + 48);
    *v66 = v34;
    sub_24A68FE04(v37, v36 + v38, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v36, v28, &unk_27EF5E0C0, &unk_24A837180);
    v35 = 0;
    ++v34;
    v33 = v69;
LABEL_9:
    (*v31)(v28, v35, 1, v22);
    sub_24A67E8FC(v28, v30, &qword_27EF5DF70, &unk_24A837730);
    if ((*v32)(v30, 1, v22) == 1)
    {
      return;
    }

    v39 = *v30;
    sub_24A68D628(v30 + *(v22 + 48), v21, type metadata accessor for FMIPDevice);
    if (!*(v21 + 3))
    {
      goto LABEL_3;
    }

    sub_24A82CA44();
    if ((*v70)(v33, 1, v71) == 1)
    {
      sub_24A69004C(v21, type metadata accessor for FMIPDevice);
      sub_24A67F378(v33, &qword_27EF5D020, &qword_24A830E40);
    }

    else
    {
      (*v55)(v64, v33, v71);
      if (*(v57 + 16) && (v40 = sub_24A77EDF8(v64), (v41 & 1) != 0))
      {
        v42 = v40;
        *&v53 = *(v57 + 56);
        v58 = type metadata accessor for FMIPDeviceConnectedState(0);
        v52 = *(v58 - 8);
        v43 = v53 + *(v52 + 72) * v42;
        v44 = v61;
        sub_24A68FE04(v43, v61, type metadata accessor for FMIPDeviceConnectedState);
        (*(v52 + 56))(v44, 0, 1, v58);
      }

      else
      {
        v45 = type metadata accessor for FMIPDeviceConnectedState(0);
        v44 = v61;
        (*(*(v45 - 8) + 56))(v61, 1, 1, v45);
      }

      sub_24A68FE04(v21, v60, type metadata accessor for FMIPDevice);
      v58 = *(v21 + 31);
      memcpy(v80, v21 + 304, 0x120uLL);
      memcpy(v79, v21 + 304, sizeof(v79));
      v77 = *(v21 + 35);
      v53 = *(v21 + 18);
      v78 = v53;
      memset(v76, 0, sizeof(v76));
      v46 = type metadata accessor for FMIPItemGroup(0);
      memset(v75, 0, sizeof(v75));
      (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
      v74 = 7;
      sub_24A67E964(v44, v62, &qword_27EF5DE20, &qword_24A8371A0);
      v47 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      v48 = v56;
      (*(*(v47 - 8) + 56))(v56, 1, 1, v47);

      sub_24A67E964(v80, &v73, &unk_27EF5E0D0, &qword_24A8319E0);
      v49 = v53;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v60, v58, v79, &v77, v76, v75, 2, v63, v59, 2u, 2, &v74, v62, v48);
      v50 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_24A766CD4(v50);
      }

      v33 = v69;
      sub_24A67F378(v61, &qword_27EF5DE20, &qword_24A8371A0);
      (*v54)(v64, v71);
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v39 >= v65[2])
      {
        goto LABEL_26;
      }

      sub_24A76F3A8(v59, v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v39, type metadata accessor for FMIPDevice);
LABEL_3:
      sub_24A69004C(v21, type metadata accessor for FMIPDevice);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24A76C298(void *a1, uint64_t a2)
{
  v76 = a2;
  v3 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v61 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v61 - v6;
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v61 - v8;
  v65 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v73 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v61 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_24A82CAA4();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPDevice(0);
  v79 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v68 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v25 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v77 = (&v61 - v27);
  v28 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (&v61 - v32);
  v34 = (v26 + 56);
  v35 = (v26 + 48);
  v36 = v14;
  v37 = a1[2];
  v84 = v34;
  v85 = v37;
  v81 = (v82 + 48);
  v63 = v73 + 56;
  v74 = (v82 + 8);
  v75 = (v82 + 32);

  v38 = 0;
  v78 = a1;
  v72 = a1;
  v82 = v36;
  while (1)
  {
    if (v38 == v85)
    {
      v39 = 1;
      v38 = v85;
      goto LABEL_9;
    }

    if (v38 >= v85)
    {
      break;
    }

    if (__OFADD__(v38, 1))
    {
      goto LABEL_23;
    }

    v40 = v77;
    v41 = v78 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v38;
    v42 = *(v25 + 48);
    *v77 = v38;
    sub_24A68FE04(v41, v40 + v42, type metadata accessor for FMIPDevice);
    sub_24A67E8FC(v40, v31, &unk_27EF5E0C0, &unk_24A837180);
    v39 = 0;
    ++v38;
    v36 = v82;
LABEL_9:
    (*v84)(v31, v39, 1, v25);
    sub_24A67E8FC(v31, v33, &qword_27EF5DF70, &unk_24A837730);
    if ((*v35)(v33, 1, v25) == 1)
    {
      return;
    }

    v43 = *v33;
    sub_24A68D628(v33 + *(v25 + 48), v24, type metadata accessor for FMIPDevice);
    if (!*(v24 + 3))
    {
      goto LABEL_3;
    }

    v80 = v43;
    v44 = v17;
    sub_24A82CA44();
    v45 = v83;
    if ((*v81)(v36, 1, v83) == 1)
    {
      sub_24A69004C(v24, type metadata accessor for FMIPDevice);
      sub_24A67F378(v36, &qword_27EF5D020, &qword_24A830E40);
      v17 = v44;
    }

    else
    {
      v46 = v45;
      v17 = v44;
      (*v75)(v44, v36, v46);
      if (*(v76 + 16) && (v47 = sub_24A77EDF8(v44), (v48 & 1) != 0))
      {
        v49 = *(v76 + 56) + *(v73 + 72) * v47;
        v62 = type metadata accessor for FMIPDeviceLostModeMetadata;
        v50 = v64;
        sub_24A68FE04(v49, v64, type metadata accessor for FMIPDeviceLostModeMetadata);
        v51 = v50;
        v52 = v69;
        sub_24A68D628(v51, v69, type metadata accessor for FMIPDeviceLostModeMetadata);
        sub_24A68FE04(v24, v68, type metadata accessor for FMIPDevice);
        v53 = *(v24 + 31);
        memcpy(v93, v24 + 304, 0x120uLL);
        memcpy(v92, v24 + 304, sizeof(v92));
        v90 = *(v24 + 35);
        v61 = *(v24 + 18);
        v91 = v61;
        memset(v89, 0, sizeof(v89));
        v54 = type metadata accessor for FMIPItemGroup(0);
        memset(v88, 0, sizeof(v88));
        (*(*(v54 - 8) + 56))(v70, 1, 1, v54);
        v87 = 7;
        v55 = type metadata accessor for FMIPDeviceConnectedState(0);
        (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
        v56 = v52;
        v57 = v66;
        sub_24A68FE04(v56, v66, v62);
        (*(v73 + 56))(v57, 0, 1, v65);

        sub_24A67E964(v93, &v86, &unk_27EF5E0D0, &qword_24A8319E0);
        v58 = v61;
        FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v68, v53, v92, &v90, v89, v88, 2, v70, v67, 2u, 2, &v87, v71, v57);
        v59 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_24A766CD4(v59);
        }

        v36 = v82;
        v60 = v80;
        sub_24A69004C(v69, type metadata accessor for FMIPDeviceLostModeMetadata);
        (*v74)(v17, v83);
        if ((v60 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v60 >= v72[2])
        {
          goto LABEL_25;
        }

        sub_24A76F3A8(v67, v72 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v60, type metadata accessor for FMIPDevice);
LABEL_3:
        sub_24A69004C(v24, type metadata accessor for FMIPDevice);
      }

      else
      {
        (*v74)(v44, v83);
        sub_24A69004C(v24, type metadata accessor for FMIPDevice);
        v36 = v82;
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
}

uint64_t sub_24A76CC38(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemGroup(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (v20 - v9);
  v11 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (v20 - v15);
  v20[2] = 0;
  v20[3] = 0;
  v20[1] = a1;
  swift_bridgeObjectRetain_n();
  while (1)
  {
    sub_24A7547C4(v14);
    sub_24A67E8FC(v14, v16, &qword_27EF5E118, &qword_24A837760);
    v17 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
    if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
    {
      goto LABEL_9;
    }

    v18 = *v16;
    sub_24A68D628(v16 + *(v17 + 48), v8, type metadata accessor for FMIPItemGroup);

    FMIPItemGroup.init(itemGroup:items:)(v8, a2, v10);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_24A766CC0(a1);
      a1 = result;
      if ((v18 & 0x8000000000000000) != 0)
      {
LABEL_8:
        __break(1u);
LABEL_9:

        return a1;
      }
    }

    if (v18 >= a1[2])
    {
      break;
    }

    sub_24A76F3A8(v10, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, type metadata accessor for FMIPItemGroup);
  }

  __break(1u);
  return result;
}

void sub_24A76CED0(void *a1, uint64_t a2, uint64_t a3)
{
  v162 = sub_24A82CA34();
  v6 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v153 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v159 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v150 = &v126 - v11;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v12 = MEMORY[0x28223BE20](updated);
  v158 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v157 = &v126 - v14;
  v163 = type metadata accessor for FMIPItem(0);
  v166 = *(v163 - 1);
  v15 = MEMORY[0x28223BE20](v163);
  v156 = (&v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v155 = &v126 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v154 = &v126 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = (&v126 - v21);
  v23 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v164 = (&v126 - v25);
  v26 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = (&v126 - v30);
  v169 = (v24 + 48);
  v170 = (v24 + 56);
  v171 = a1[2];
  v160 = (v6 + 16);
  v147 = (v6 + 48);
  v148 = (v6 + 56);
  v146 = (v6 + 32);
  v32 = a2;

  v33 = 0;
  v165 = a1;
  v172 = v32;
  while (1)
  {
    v168 = a1;
    while (1)
    {
      if (v33 == v171)
      {
        v34 = 1;
        v33 = v171;
      }

      else
      {
        if (v33 >= v171)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (__OFADD__(v33, 1))
        {
          goto LABEL_45;
        }

        v35 = v164;
        v36 = v165 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v33;
        v37 = *(v23 + 48);
        *v164 = v33;
        sub_24A68FE04(v36, v35 + v37, type metadata accessor for FMIPItem);
        sub_24A67E8FC(v35, v29, &unk_27EF5E0F0, &unk_24A837170);
        v34 = 0;
        ++v33;
        v32 = v172;
      }

      (*v170)(v29, v34, 1, v23);
      sub_24A67E8FC(v29, v31, &qword_27EF5DF68, &unk_24A837750);
      if ((*v169)(v31, 1, v23) == 1)
      {
        return;
      }

      v38 = a3;
      v167 = *v31;
      sub_24A68D628(v31 + *(v23 + 48), v22, type metadata accessor for FMIPItem);
      if (*(v32 + 16))
      {
        v39 = v22[44];
        v40 = v22[45];
        v41 = sub_24A6A2D48(v39, v40);
        v32 = v172;
        if (v42)
        {
          break;
        }
      }

      sub_24A69004C(v22, type metadata accessor for FMIPItem);
      a3 = v38;
    }

    v43 = (*(v172 + 56) + 24 * v41);
    v152 = *v43;
    LODWORD(v143) = v43[1];
    LODWORD(v142) = v43[2];
    v144 = v43[3];
    v44 = *(v43 + 1);
    v145 = *(v43 + 2);
    v161 = *(v38 + 16);
    v45 = v44;
    v141 = v45;
    if (v161)
    {
      v46 = v40;
      v47 = v45;
      v48 = sub_24A6A2D48(v39, v46);
      v49 = v152;
      v50 = v143;
      v51 = v142;
      v53 = v144;
      v52 = v145;
      v161 = v47;
      if (v54)
      {
        v55 = (*(v38 + 56) + 24 * v48);
        v49 = *v55;
        v50 = v55[1];
        v51 = v55[2];
        v53 = v55[3];
        v56 = *(v55 + 1);
        v52 = *(v55 + 2);
        v161 = v56;
      }
    }

    else
    {
      v49 = v152;
      v50 = v143;
      v51 = v142;
      v161 = v45;
      v53 = v144;
      v52 = v145;
    }

    v137 = v53;
    v138 = v52;
    LODWORD(v139) = v49;
    v57 = v155;
    sub_24A68FE04(v22, v155, type metadata accessor for FMIPItem);
    *v157 = 1;
    swift_storeEnumTagMultiPayload();
    memcpy(v176, v22 + 1, 0x120uLL);
    v151 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 256;
    if (!v50)
    {
      v60 = 0;
    }

    v135 = v60;
    if (v51)
    {
      v61 = 0x10000;
    }

    else
    {
      v61 = 0;
    }

    v62 = *(v57 + v163[19]);
    LODWORD(v136) = *(v57 + v163[25]);
    v140 = v62;
    if ((v136 & 1) == 0)
    {
      v63 = 0x10000;
      if (!v142)
      {
        v63 = 0;
      }

      v64 = 256;
      if (!v143)
      {
        v64 = 0;
      }

      v151 = (v64 | v152 | v63 | (v144 << 24));
      v65 = v61;
      v66 = v141;
      v67 = v141;
      v58 = v66;
      v61 = v65;
      v59 = v145;
    }

    v145 = v59;
    v152 = v58;
    memcpy(v175, v22 + 1, sizeof(v175));
    if (sub_24A6921A8(v175) == 1)
    {
      memcpy(v173, (v57 + 8), sizeof(v173));
      sub_24A67E964(v173, v174, &unk_27EF5E0D0, &qword_24A8319E0);
      v68 = v173;
    }

    else
    {
      v68 = v176;
    }

    memcpy(v174, v68, sizeof(v174));
    v69 = v135 | v139 | v61 | (v137 << 24);
    v70 = v156;
    memcpy(v156 + 1, v174, 0x120uLL);
    *(v70 + 296) = *(v57 + 296);
    v70[38] = *(v57 + 304);
    v70[39] = v69;
    v71 = v138;
    v70[40] = v161;
    v70[41] = v71;
    v72 = *(v57 + 344);
    v70[42] = *(v57 + 336);
    v70[43] = v72;
    v142 = v72;
    v73 = *(v57 + 360);
    v70[44] = *(v57 + 352);
    v70[45] = v73;
    v143 = v73;
    v74 = *(v57 + 376);
    v70[46] = *(v57 + 368);
    v70[47] = v74;
    v144 = v74;
    v75 = v163;
    *(v70 + v163[21]) = *(v57 + v163[21]);
    *(v70 + v75[22]) = *(v57 + v75[22]);
    *(v70 + v75[25]) = v136;
    v76 = v152;
    if (!v152)
    {
      v77 = *(v57 + 392);
      v151 = *(v57 + 384);
      v152 = v77;
      v145 = *(v57 + 400);
      v78 = v77;
      v76 = v152;
    }

    v70[48] = v151;
    v70[49] = v76;
    v70[50] = v145;
    sub_24A67E964(v57 + v75[13], v70 + v75[13], &unk_27EF5E100, &unk_24A839DB0);
    v79 = v75[14];
    v81 = *(v57 + v79);
    v80 = *(v57 + v79 + 8);
    v82 = (v70 + v79);
    *v82 = v81;
    v82[1] = v80;
    v129 = v80;
    v83 = v75[15];
    v85 = *(v57 + v83);
    v84 = *(v57 + v83 + 8);
    v86 = (v70 + v83);
    *v86 = v85;
    v86[1] = v84;
    v132 = v84;
    v87 = v75[16];
    v88 = *(v57 + v87);
    v89 = *(v57 + v87 + 8);
    v90 = *(v57 + v87 + 16);
    v91 = *(v57 + v87 + 24);
    LODWORD(v84) = *(v57 + v87 + 32);
    v92 = v70 + v87;
    v133 = v88;
    v134 = v89;
    *v92 = v88;
    *(v92 + 1) = v89;
    v135 = v90;
    v136 = v91;
    *(v92 + 2) = v90;
    *(v92 + 3) = v91;
    LODWORD(v138) = v84;
    v92[32] = v84;
    sub_24A68FE04(v57 + v75[24], v70 + v75[24], type metadata accessor for FMIPProductType);
    v93 = v75[17];
    v94 = (v57 + v93);
    v96 = *(v57 + v93 + 16);
    v95 = *(v57 + v93 + 24);
    v97 = *(v57 + v93 + 32);
    v98 = v70 + v93;
    *v98 = *v94;
    v131 = v96;
    *(v98 + 2) = v96;
    *(v98 + 3) = v95;
    v137 = v97;
    *(v98 + 4) = v97;
    v99 = v75[18];
    v101 = *(v57 + v99);
    v100 = *(v57 + v99 + 8);
    v102 = (v70 + v99);
    *v102 = v101;
    v102[1] = v100;
    v139 = v100;
    *(v70 + v75[19]) = v140;
    v103 = v75[20];
    v105 = *(v57 + v103);
    v104 = *(v57 + v103 + 8);
    v106 = (v70 + v103);
    *v106 = v105;
    v106[1] = v104;
    v140 = v104;
    v107 = v75[23];
    v145 = *(v57 + v107);
    *(v70 + v107) = v145;
    v152 = *v57;
    v108 = v152;
    v130 = type metadata accessor for FMIPItemUpdateType;
    sub_24A68D628(v157, v158, type metadata accessor for FMIPItemUpdateType);
    v151 = *v160;
    v109 = v108 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp;
    v110 = v150;
    v111 = v162;
    (v151)(v150, v109, v162);
    (*v148)(v110, 0, 1, v111);
    type metadata accessor for FMIPItemUpdateContext(0);
    v112 = swift_allocObject();
    sub_24A68D628(v158, v112 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, v130);
    v130 = v112;
    v128 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    (v151)(v112 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v152 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v111);
    v113 = v110;
    v114 = v159;
    sub_24A67E8FC(v113, v159, &qword_27EF5E0E0, &qword_24A836D90);
    v127 = *v147;
    if (v127(v114, 1, v111) == 1)
    {
      v115 = v162;
      (v151)(v153, v152 + v128, v162);
      v116 = v159;
      LODWORD(v115) = v127(v159, 1, v115);
      v117 = v161;
      sub_24A67E964(v176, v173, &unk_27EF5E0D0, &qword_24A8319E0);

      sub_24A76ED78(v133, v134, v135, v136);

      if (v115 != 1)
      {
        sub_24A67F378(v116, &qword_27EF5E0E0, &qword_24A836D90);
      }

      a3 = v38;
      v32 = v172;
      v122 = v162;
      v121 = v153;
      v118 = v146;
    }

    else
    {
      v118 = v146;
      v119 = v153;
      (*v146)(v153, v159, v162);
      v120 = v161;
      sub_24A67E964(v176, v173, &unk_27EF5E0D0, &qword_24A8319E0);

      sub_24A76ED78(v133, v134, v135, v136);

      v121 = v119;
      a3 = v38;
      v32 = v172;
      v122 = v162;
    }

    v123 = v130;
    (*v118)(v130 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v121, v122);
    v125 = v155;
    v124 = v156;
    *v156 = v123;
    *(v124 + v163[26]) = *(v125 + v163[26]);
    sub_24A68D628(v124, v154, type metadata accessor for FMIPItem);
    sub_24A69004C(v125, type metadata accessor for FMIPItem);
    a1 = v168;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_24A766CE8(a1);
    }

    sub_24A69004C(v22, type metadata accessor for FMIPItem);
    if ((v167 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v167 >= a1[2])
    {
      goto LABEL_47;
    }

    sub_24A76F3A8(v154, a1 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v167, type metadata accessor for FMIPItem);
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_24A76DCB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for FMIPDeviceConnectedState(0);
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24A82CAA4();
  v12 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A6BBA94(&qword_27EF5E1F0, &qword_24A8377F8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v41 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v46 = a1;
  v47 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v48 = v19;
  v49 = 0;
  v50 = v22 & v20;
  v51 = a2;
  v52 = a3;
  v23 = (v12 + 32);
  v42 = (v12 + 8);
  v43 = v12;

  v41[1] = a3;

  while (1)
  {
    sub_24A767204(v17);
    v24 = sub_24A6BBA94(&qword_27EF5E1F8, &unk_24A837800);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_24A6BAFBC(v46);
    }

    v25 = *(v24 + 48);
    v26 = *v23;
    (*v23)(v14, v17, v45);
    sub_24A68D628(&v17[v25], v53, type metadata accessor for FMIPDeviceConnectedState);
    v27 = *a5;
    v29 = sub_24A77EDF8(v14);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24A786F2C();
        v36 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v42)(v14, v45);
      sub_24A76F3A8(v53, v36[7] + *(v44 + 72) * v29, type metadata accessor for FMIPDeviceConnectedState);
      a4 = 1;
    }

    else
    {
      sub_24A782AE0(v32, a4 & 1);
      v34 = sub_24A77EDF8(v14);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v29 = v34;
      v36 = *a5;
      if (v33)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v26((v36[6] + *(v43 + 72) * v29), v14, v45);
      sub_24A68D628(v53, v36[7] + *(v44 + 72) * v29, type metadata accessor for FMIPDeviceConnectedState);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_24A82DC44();
  __break(1u);
  return result;
}

uint64_t sub_24A76E0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F4C65666173 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024A8472E0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A847300 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024A847320 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A847340 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A76E290@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5DFE0, &unk_24A8376F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A76E6B4();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  v18 = 0;
  sub_24A76E990(&qword_27EF5DFF8, sub_24A689824, MEMORY[0x277D83978]);
  sub_24A82DA84();
  v9 = v19;
  sub_24A6BBA94(&qword_27EF5E008, &unk_24A837700);
  v18 = 1;
  sub_24A76E708();
  sub_24A82DA84();
  v17 = v19;
  sub_24A6BBA94(&qword_27EF5E030, &qword_24A837710);
  v18 = 2;
  sub_24A76E7C4();
  sub_24A82DA84();
  v15 = v19;
  v16 = v9;
  sub_24A6BBA94(&qword_27EF5E048, &qword_24A837718);
  v18 = 3;
  v14[1] = sub_24A76E8D4();
  sub_24A82DA84();
  v14[0] = v19;
  v18 = 4;
  sub_24A82DA84();
  (*(v6 + 8))(v8, v5);
  v10 = v19;
  result = sub_24A6876E8(a1);
  v12 = v17;
  *a2 = v16;
  a2[1] = v12;
  v13 = v14[0];
  a2[2] = v15;
  a2[3] = v13;
  a2[4] = v10;
  return result;
}

unint64_t sub_24A76E6B4()
{
  result = qword_27EF5DFE8;
  if (!qword_27EF5DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFE8);
  }

  return result;
}

unint64_t sub_24A76E708()
{
  result = qword_27EF5E010;
  if (!qword_27EF5E010)
  {
    sub_24A6CCDC0(&qword_27EF5E008, &unk_24A837700);
    sub_24A67F008(&qword_27EF5DBA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_24A70B3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E010);
  }

  return result;
}

unint64_t sub_24A76E7C4()
{
  result = qword_27EF5E038;
  if (!qword_27EF5E038)
  {
    sub_24A6CCDC0(&qword_27EF5E030, &qword_24A837710);
    sub_24A67F008(&qword_27EF5DBA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_24A76E880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E038);
  }

  return result;
}

unint64_t sub_24A76E880()
{
  result = qword_27EF5E040;
  if (!qword_27EF5E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E040);
  }

  return result;
}

unint64_t sub_24A76E8D4()
{
  result = qword_27EF5E050;
  if (!qword_27EF5E050)
  {
    sub_24A6CCDC0(&qword_27EF5E048, &qword_24A837718);
    sub_24A67F008(&qword_27EF5DBA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E050);
  }

  return result;
}

uint64_t sub_24A76E990(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5DFF0, &qword_24A839E00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A76EA08()
{
  result = qword_27EF5E068;
  if (!qword_27EF5E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E068);
  }

  return result;
}

unint64_t sub_24A76EA5C()
{
  result = qword_27EF5E070;
  if (!qword_27EF5E070)
  {
    sub_24A6CCDC0(&qword_27EF5E008, &unk_24A837700);
    sub_24A67F008(&qword_27EF5DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_24A714C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E070);
  }

  return result;
}

unint64_t sub_24A76EB18()
{
  result = qword_27EF5E088;
  if (!qword_27EF5E088)
  {
    sub_24A6CCDC0(&qword_27EF5E030, &qword_24A837710);
    sub_24A67F008(&qword_27EF5DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_24A76EBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E088);
  }

  return result;
}

unint64_t sub_24A76EBD4()
{
  result = qword_27EF5E090;
  if (!qword_27EF5E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E090);
  }

  return result;
}

unint64_t sub_24A76EC28()
{
  result = qword_27EF5E098;
  if (!qword_27EF5E098)
  {
    sub_24A6CCDC0(&qword_27EF5E048, &qword_24A837718);
    sub_24A67F008(&qword_27EF5DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E098);
  }

  return result;
}

double sub_24A76ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A76EDBC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

uint64_t sub_24A76EE38()
{
  v1 = *(type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_24A82CA34() - 8);
  v5 = (v3 + *(v4 + 80) + 288) & ~*(v4 + 80);
  memcpy(v7, (v0 + v3), sizeof(v7));
  return sub_24A75E250((v0 + v2), v7, v0 + v5);
}

uint64_t sub_24A76EF30(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_24A760598(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_24A76EFE4()
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

  return sub_24A760988(v5, v6, (v0 + v2), v8, v9, v10);
}

uint64_t sub_24A76F094()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A82CAE4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

void sub_24A76F1E8()
{
  v1 = *(type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_24A75FBAC((v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

unint64_t sub_24A76F288()
{
  result = qword_27EF5E178;
  if (!qword_27EF5E178)
  {
    sub_24A6CCDC0(&qword_27EF5E170, &qword_24A836D58);
    sub_24A67F008(&qword_27EF5E180, type metadata accessor for FMIPItemGroup, &protocol conformance descriptor for FMIPItemGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E178);
  }

  return result;
}

unint64_t sub_24A76F354()
{
  result = qword_27EF5E1E0;
  if (!qword_27EF5E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E1E0);
  }

  return result;
}

uint64_t sub_24A76F3A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A76F41C()
{
  result = qword_281512BC8;
  if (!qword_281512BC8)
  {
    sub_24A6CCDC0(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A67F008(&qword_281514640, type metadata accessor for FMIPDevice, &protocol conformance descriptor for FMIPDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BC8);
  }

  return result;
}

unint64_t sub_24A76F4DC()
{
  result = qword_27EF5E248;
  if (!qword_27EF5E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E248);
  }

  return result;
}

uint64_t sub_24A76F530()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A76F57C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5E260, &qword_24A837850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A76F5FC()
{
  result = qword_27EF5E298;
  if (!qword_27EF5E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E298);
  }

  return result;
}

uint64_t sub_24A76F650(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24A76F724()
{
  result = qword_27EF5E2A0;
  if (!qword_27EF5E2A0)
  {
    sub_24A6CCDC0(&qword_27EF5E170, &qword_24A836D58);
    sub_24A67F008(&qword_27EF5E2A8, type metadata accessor for FMIPItemGroup, &protocol conformance descriptor for FMIPItemGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E2A0);
  }

  return result;
}

void sub_24A76F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
  }
}

void sub_24A76F848(int a1, uint64_t a2)
{
  v140 = a1;
  v139 = sub_24A82CA34();
  v3 = *(v139 - 8);
  MEMORY[0x28223BE20](v139 - 8);
  v138 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v137 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v136 = &v123 - v8;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated);
  v165 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem(0);
  v147 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v123 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v134 = &v123 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v123 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v123 - v22;
  v24 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v125 = (&v123 - v26);
  v27 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v144 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v143 = &v123 - v30;
  v31 = a2;
  v32 = *(a2 + 16);
  v141 = (v25 + 48);
  v142 = (v25 + 56);
  v124 = 0x800000024A847410;
  v129 = (v3 + 56);
  v130 = (v3 + 16);
  v128 = (v3 + 48);
  v145 = (v3 + 32);
  v33 = v31;

  v35 = 0;
  *&v36 = 136315394;
  v123 = v36;
  v126 = v34;
  v127 = v16;
  v167 = v10;
  v132 = v24;
  v133 = v21;
  v146 = v23;
  v131 = v32;
  while (1)
  {
    v166 = v33;
    if (v35 == v32)
    {
      v37 = 1;
      v164 = v32;
      v38 = v144;
    }

    else
    {
      if (v35 >= v32)
      {
        goto LABEL_49;
      }

      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_50;
      }

      v40 = v125;
      v41 = v126 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v35;
      v42 = *(v24 + 48);
      *v125 = v35;
      sub_24A68FE04(v41, v40 + v42, type metadata accessor for FMIPItem);
      v43 = v40;
      v38 = v144;
      sub_24A67E8FC(v43, v144, &unk_27EF5E0F0, &unk_24A837170);
      v37 = 0;
      v164 = v39;
    }

    v44 = v143;
    (*v142)(v38, v37, 1, v24);
    sub_24A67E8FC(v38, v44, &qword_27EF5DF68, &unk_24A837750);
    if ((*v141)(v44, 1, v24) == 1)
    {
      return;
    }

    v163 = *v44;
    sub_24A68D628(v44 + *(v24 + 48), v23, type metadata accessor for FMIPItem);
    if (v140)
    {
      v45 = (v23[*(v10 + 76)] >> 6) & 1;
    }

    else
    {
      v45 = 0;
    }

    LODWORD(v162) = v45;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v46 = sub_24A82CDC4();
    sub_24A6797D0(v46, qword_281518F88);
    sub_24A68FE04(v23, v21, type metadata accessor for FMIPItem);
    v47 = sub_24A82CD94();
    v48 = sub_24A82D504();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v172[0] = v50;
      *v49 = v123;
      v51 = *(v21 + 44);
      v52 = *(v21 + 45);

      sub_24A69004C(v21, type metadata accessor for FMIPItem);
      v53 = sub_24A68761C(v51, v52, v172);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = v162;
      if (v162)
      {
        v55 = 0xD000000000000012;
      }

      else
      {
        v55 = 0;
      }

      if (v162)
      {
        v56 = v124;
      }

      else
      {
        v56 = 0xE000000000000000;
      }

      v57 = sub_24A68761C(v55, v56, v172);

      *(v49 + 14) = v57;
      v10 = v167;
      _os_log_impl(&dword_24A675000, v47, v48, "FMIPDataManager: Resetting transient properties for %s %s", v49, 0x16u);
      swift_arrayDestroy();
      v58 = v50;
      v23 = v146;
      MEMORY[0x24C21E1D0](v58, -1, -1);
      MEMORY[0x24C21E1D0](v49, -1, -1);
    }

    else
    {

      sub_24A69004C(v21, type metadata accessor for FMIPItem);
      v54 = v162;
    }

    sub_24A68FE04(v23, v16, type metadata accessor for FMIPItem);
    swift_storeEnumTagMultiPayload();
    memcpy(v172, v23 + 8, 0x120uLL);
    v59 = *(v23 + 49);
    v60 = *(v23 + 39);
    v61 = *(v23 + 20);
    v62 = *&v16[*(v10 + 76)];
    if (!v54)
    {
      v62 &= ~0x40uLL;
    }

    v162 = v62;
    v168 = v61;
    if (v59)
    {
      v63 = *(v23 + 48);
      v64 = *(v23 + 50);
      v65 = v59;
    }

    else
    {
      v63 = *(v16 + 48);
      v65 = *(v16 + 49);
      v64 = *(v16 + 50);
      v66 = v65;
      *&v61 = v168;
    }

    v67 = v16[*(v10 + 100)];
    v68 = v61;
    sub_24A67E964(v172, v171, &unk_27EF5E0D0, &qword_24A8319E0);
    if (v67 == 1)
    {
      v69 = v59;
      v70 = v68;

      v63 = 0;
      v65 = 0;
      v64 = 0;
    }

    else
    {
      v71 = v68;
      v72 = v59;
    }

    memcpy(v171, v172, sizeof(v171));
    if (sub_24A6921A8(v171) == 1)
    {
      memcpy(v169, v16 + 8, sizeof(v169));
      sub_24A67E964(v169, v170, &unk_27EF5E0D0, &qword_24A8319E0);
      v73 = v169;
    }

    else
    {
      v73 = v172;
    }

    memcpy(v170, v73, sizeof(v170));
    memcpy(v13 + 8, v170, 0x120uLL);
    v13[296] = v16[296];
    *(v13 + 38) = *(v16 + 38);
    if (!v68)
    {
      v60 = *(v16 + 39);
      v168 = *(v16 + 20);
      v74 = v168;
    }

    *(v13 + 39) = v60;
    *(v13 + 20) = v168;
    v75 = *(v16 + 43);
    *(v13 + 42) = *(v16 + 42);
    *(v13 + 43) = v75;
    v160 = v75;
    v76 = *(v16 + 45);
    *(v13 + 44) = *(v16 + 44);
    *(v13 + 45) = v76;
    v161 = v76;
    v77 = *(v16 + 47);
    *(v13 + 46) = *(v16 + 46);
    *(v13 + 47) = v77;
    *&v168 = v77;
    v78 = v167;
    v13[v167[21]] = v16[v167[21]];
    v13[v78[22]] = v16[v78[22]];
    v13[v78[25]] = v67;
    if (!v65)
    {
      v63 = *(v16 + 48);
      v65 = *(v16 + 49);
      v64 = *(v16 + 50);
      v79 = v65;
    }

    *(v13 + 48) = v63;
    *(v13 + 49) = v65;
    *(v13 + 50) = v64;
    sub_24A67E964(&v16[v78[13]], &v13[v78[13]], &unk_27EF5E100, &unk_24A839DB0);
    v80 = v78[14];
    v82 = *&v16[v80];
    v81 = *&v16[v80 + 8];
    v83 = &v13[v80];
    *v83 = v82;
    *(v83 + 1) = v81;
    v154 = v81;
    v84 = v78[15];
    v86 = *&v16[v84];
    v85 = *&v16[v84 + 8];
    v87 = &v13[v84];
    *v87 = v86;
    *(v87 + 1) = v85;
    v153 = v85;
    v88 = v78[16];
    v89 = *&v16[v88];
    v90 = *&v16[v88 + 8];
    v91 = *&v16[v88 + 16];
    v92 = *&v16[v88 + 24];
    LODWORD(v85) = v16[v88 + 32];
    v93 = &v13[v88];
    v158 = v90;
    v159 = v89;
    *v93 = v89;
    *(v93 + 1) = v90;
    v156 = v92;
    v157 = v91;
    *(v93 + 2) = v91;
    *(v93 + 3) = v92;
    v155 = v85;
    v93[32] = v85;
    sub_24A68FE04(&v16[v78[24]], &v13[v78[24]], type metadata accessor for FMIPProductType);
    v94 = v78[17];
    v95 = &v16[v94];
    v97 = *&v16[v94 + 16];
    v96 = *&v16[v94 + 24];
    v98 = *&v16[v94 + 32];
    v99 = &v13[v94];
    *v99 = *v95;
    *(v99 + 2) = v97;
    *(v99 + 3) = v96;
    v152 = v98;
    *(v99 + 4) = v98;
    v100 = v78[18];
    v102 = *&v16[v100];
    v101 = *&v16[v100 + 8];
    v103 = &v13[v100];
    *v103 = v102;
    *(v103 + 1) = v101;
    v150 = v97;
    v151 = v101;
    *&v13[v78[19]] = v162;
    v104 = v78[20];
    v106 = *&v16[v104];
    v105 = *&v16[v104 + 8];
    v107 = &v13[v104];
    *v107 = v106;
    *(v107 + 1) = v105;
    v149 = v105;
    v108 = v78[23];
    v162 = *&v16[v108];
    *&v13[v108] = v162;
    v109 = *v16;
    v110 = *v130;
    v111 = v136;
    v112 = v139;
    (*v130)(v136, *v16 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v139);
    (*v129)(v111, 0, 1, v112);
    type metadata accessor for FMIPItemUpdateContext(0);
    v113 = swift_allocObject();
    sub_24A68D628(v165, v113 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v114 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    v148 = v113;
    v110((v113 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp), v109 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v112);
    v115 = v137;
    sub_24A67E8FC(v111, v137, &qword_27EF5E0E0, &qword_24A836D90);
    v116 = *v128;
    if ((*v128)(v115, 1, v112) == 1)
    {
      v117 = v109 + v114;
      v118 = v138;
      v110(v138, v117, v112);
      v119 = v116(v115, 1, v112);

      sub_24A76ED78(v159, v158, v157, v156);

      v21 = v133;
      v32 = v131;
      if (v119 != 1)
      {
        sub_24A67F378(v115, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      v118 = v138;
      (*v145)(v138, v115, v112);

      sub_24A76ED78(v159, v158, v157, v156);

      v21 = v133;
      v32 = v131;
    }

    v120 = v148;
    (*v145)((v148 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp), v118, v112);
    *v13 = v120;
    v10 = v167;
    v16 = v127;
    *&v13[v167[26]] = *&v127[v167[26]];
    v121 = v134;
    sub_24A68D628(v13, v134, type metadata accessor for FMIPItem);
    sub_24A69004C(v16, type metadata accessor for FMIPItem);
    v33 = v166;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v132;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_24A766CE8(v33);
    }

    v23 = v146;
    sub_24A69004C(v146, type metadata accessor for FMIPItem);
    if ((v163 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v163 >= v33[2])
    {
      goto LABEL_48;
    }

    sub_24A76F3A8(v121, v33 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v163, type metadata accessor for FMIPItem);
    v35 = v164;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_24A7705F0(int a1, void *a2)
{
  v75 = a1;
  v74 = type metadata accessor for FMIPItemGroup(0);
  v80 = *(v74 - 8);
  v3 = MEMORY[0x28223BE20](v74);
  v5 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v63 - v7);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v66 = (&v63 - v19);
  v20 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (&v63 - v24);
  v26 = a2[2];
  v77 = (v18 + 56);
  v78 = v26;
  v76 = (v18 + 48);
  v64 = 0x800000024A847410;

  v27 = 0;
  *&v28 = 136315394;
  v63 = v28;
  v67 = a2;
  v29 = a2;
  v71 = v17;
  v72 = v14;
  v79 = v16;
  v69 = v23;
  v70 = v25;
  v73 = v11;
  v65 = v8;
  while (1)
  {
    if (v27 == v78)
    {
      v30 = 1;
      v82 = v78;
    }

    else
    {
      if (v27 >= v78)
      {
        goto LABEL_32;
      }

      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_33;
      }

      v32 = v67 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v27;
      v33 = *(v17 + 48);
      v34 = v14;
      v35 = v29;
      v36 = v66;
      *v66 = v27;
      sub_24A68FE04(v32, v36 + v33, type metadata accessor for FMIPItemGroup);
      v37 = v36;
      v29 = v35;
      v14 = v34;
      v8 = v65;
      sub_24A67E8FC(v37, v23, &unk_27EF5E120, &qword_24A837768);
      v30 = 0;
      v82 = v31;
    }

    (*v77)(v23, v30, 1, v17);
    sub_24A67E8FC(v23, v25, &qword_27EF5E118, &qword_24A837760);
    if ((*v76)(v25, 1, v17) == 1)
    {
      return;
    }

    v38 = *v25;
    sub_24A68D628(v25 + *(v17 + 48), v16, type metadata accessor for FMIPItemGroup);
    if (v75)
    {
      v39 = (v16[64] >> 6) & 1;
    }

    else
    {
      v39 = 0;
    }

    v81 = v29;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v40 = sub_24A82CDC4();
    sub_24A6797D0(v40, qword_281518F88);
    sub_24A68FE04(v16, v14, type metadata accessor for FMIPItemGroup);
    v41 = sub_24A82CD94();
    v42 = sub_24A82D504();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v83[0] = v44;
      *v43 = v63;
      v68 = v38;
      v45 = v39;
      v46 = *(v14 + 1);
      v47 = *(v14 + 2);

      sub_24A69004C(v14, type metadata accessor for FMIPItemGroup);
      v48 = sub_24A68761C(v46, v47, v83);
      v39 = v45;
      v38 = v68;

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = v39 ? 0xD000000000000012 : 0;
      v50 = v39 ? v64 : 0xE000000000000000;
      v51 = sub_24A68761C(v49, v50, v83);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_24A675000, v41, v42, "FMIPDataManager: Resetting transient properties for item group %s %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v44, -1, -1);
      v52 = v43;
      v16 = v79;
      MEMORY[0x24C21E1D0](v52, -1, -1);
    }

    else
    {

      sub_24A69004C(v14, type metadata accessor for FMIPItemGroup);
    }

    sub_24A68FE04(v16, v8, type metadata accessor for FMIPItemGroup);
    v53 = v8[8];
    v54 = v8[9];
    if (!v39)
    {
      v53 &= ~0x40uLL;
    }

    v56 = v8[2];
    v55 = v8[3];
    v57 = *v8;
    v5[1] = v8[1];
    v5[2] = v56;
    v58 = v74;
    *(v5 + *(v74 + 52)) = *(v8 + *(v74 + 52));
    v59 = v8[6];
    v5[7] = v8[7];
    v5[8] = v53;
    v60 = v8[4];
    v61 = v8[5];
    v5[3] = v55;
    v5[4] = v60;
    v5[5] = v61;
    v5[6] = v59;
    v5[9] = v54;
    *v5 = v57;
    sub_24A67E964(v8 + *(v58 + 48), v5 + *(v58 + 48), &unk_27EF5E100, &unk_24A839DB0);

    sub_24A69004C(v8, type metadata accessor for FMIPItemGroup);
    v62 = v73;
    sub_24A68D628(v5, v73, type metadata accessor for FMIPItemGroup);
    v29 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_24A766CC0(v29);
    }

    v17 = v71;
    v14 = v72;
    v25 = v70;
    v16 = v79;
    sub_24A69004C(v79, type metadata accessor for FMIPItemGroup);
    if ((v38 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v38 >= v29[2])
    {
      goto LABEL_31;
    }

    sub_24A76F3A8(v62, v29 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v38, type metadata accessor for FMIPItemGroup);
    v23 = v69;
    v27 = v82;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

unint64_t sub_24A770D64()
{
  result = qword_27EF5E2F0;
  if (!qword_27EF5E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E2F0);
  }

  return result;
}

unint64_t sub_24A770DDC()
{
  result = qword_27EF5E310;
  if (!qword_27EF5E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E310);
  }

  return result;
}

unint64_t sub_24A770E34()
{
  result = qword_27EF5E318;
  if (!qword_27EF5E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E318);
  }

  return result;
}

unint64_t sub_24A770E8C()
{
  result = qword_27EF5E320;
  if (!qword_27EF5E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E320);
  }

  return result;
}

unint64_t sub_24A770EE4()
{
  result = qword_27EF5E328;
  if (!qword_27EF5E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E328);
  }

  return result;
}

void sub_24A770FE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMIPInitClientResponse();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = sub_24A7710A0(v3);
LABEL_5:

    MEMORY[0x2821FE918](v4, a2, 0, 0, 0);
    return;
  }

  type metadata accessor for FMIPRefreshClientResponse();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v4 = sub_24A771088(v5);
    goto LABEL_5;
  }
}

uint64_t sub_24A7710B8(uint64_t a1, uint64_t (*a2)(void, __n128))
{
  v4 = v2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);

  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v30[0] = v10;
    *v9 = 136315138;
    v11 = sub_24A82DDB4();
    v13 = sub_24A68761C(v11, v12, v30);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPDemoDataInjector: Injecting demo content into %s", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  if (*(a1 + 56))
  {
    v14 = *(a1 + 56);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  sub_24A771344(v14);
  v16 = v15;

  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  if (v18)
  {
    v19 = *(v18 + 64);
    v30[2] = *(v18 + 48);
    v20 = *(v18 + 80);
    v30[3] = v19;
    v30[4] = v20;
    v31 = *(v18 + 96);
    v21 = *(v18 + 32);
    v30[0] = *(v18 + 16);
    v30[1] = v21;
    v22 = *(*(v4 + 16) + 112);
    type metadata accessor for FMIPUserInfoResponseFragment();
    v23 = swift_allocObject();
    memmove((v23 + 16), (v18 + 16), 0x58uLL);
    *(v23 + 104) = v22;
    sub_24A6EF948(v30, v29);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  (a2)(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  *(v27 + 24) = v23;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  *(v27 + 48) = v26;
  *(v27 + 56) = v16;

  return v27;
}

void sub_24A771344(uint64_t a1)
{
  v2 = v1;
  v35 = type metadata accessor for FMIPDevice(0);
  v4 = *(v35 - 8);
  v5 = MEMORY[0x28223BE20](v35);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = sub_24A82CA34();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 16);
  sub_24A82CA24();
  v36 = v19;
  sub_24A7D0980(v18);
  (*(v16 + 8))(v18, v15);
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v22 = *(v4 + 72);
    while (1)
    {
      sub_24A6FE328(v21, v8);
      if ((v8[217] & 4) != 0)
      {
        break;
      }

      sub_24A6FE094(v8);
      v21 += v22;
      if (!--v20)
      {
        goto LABEL_5;
      }
    }

    sub_24A6CAF68(v8, v14);
    v23 = 0;
  }

  else
  {
LABEL_5:
    v23 = 1;
  }

  v24 = v35;
  (*(v4 + 56))(v14, v23, 1, v35);
  v25 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
  swift_beginAccess();
  sub_24A74E590(v14, v2 + v25);
  swift_endAccess();
  sub_24A7718EC(v14, v12);
  if ((*(v4 + 48))(v12, 1, v24) == 1)
  {
    sub_24A77195C(v12);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A82CDC4();
    sub_24A6797D0(v26, qword_281518F88);
    v27 = sub_24A82CD94();
    v28 = sub_24A82D4E4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      MEMORY[0x24C21E1D0](v29, -1, -1);
    }

    sub_24A77195C(v14);
  }

  else
  {
    v30 = v34;
    sub_24A6CAF68(v12, v34);
    v31 = *(v36 + 104);
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24A8327A0;
    sub_24A6FE328(v30, v33 + v32);
    v37 = v31;

    sub_24A77EB44(v33);
    sub_24A6FE094(v30);
    sub_24A77195C(v14);
  }
}

uint64_t sub_24A77178C()
{

  sub_24A77195C(v0 + OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPDemoDataInjector(uint64_t a1)
{
  result = qword_27EF5E330;
  if (!qword_27EF5E330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A77184C(uint64_t a1)
{
  sub_24A6A73F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24A7718EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A77195C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7719C4(uint64_t a1)
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

uint64_t sub_24A7719E8(uint64_t a1)
{
  v1 = *(a1 + 24);
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

__n128 sub_24A771A0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_24A771A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_24A771A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A771B1C()
{
  v1 = *v0;
  v2 = 0x6F43656369766564;
  v3 = 0xD000000000000010;
  v4 = 0x6C43656369766564;
  if (v1 != 3)
  {
    v4 = 0x6F4D656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6369766544776172;
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

uint64_t sub_24A771BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A7723F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A771C08(uint64_t a1)
{
  v2 = sub_24A7739F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A771C44(uint64_t a1)
{
  v2 = sub_24A7739F8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A771C80@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A7725BC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_24A771CCC()
{
  v1 = *(v0 + 16);
  v2 = 0x6172676563617073;
  v3 = 0x7265766C6973;
  if (v1 != 4)
  {
    v3 = 48;
  }

  if (v1 == 3)
  {
    v3 = 0x302D312D31;
  }

  v4 = 0x302D322D31;
  if (v1 != 1)
  {
    v4 = 0x302D312D31;
  }

  if (*(v0 + 16))
  {
    v2 = v4;
  }

  if (*(v0 + 16) <= 2u)
  {
    result = v2;
  }

  else
  {
    result = v3;
  }

  if (*(v0 + 144) != 1 && *(v0 + 128) != 1)
  {
    v6 = *(v0 + 120);

    return v6;
  }

  return result;
}

uint64_t sub_24A771DC8()
{
  v1 = *(v0 + 16);
  v2 = 0x506B6F6F4263614DLL;
  v3 = 0x312C336863746157;
  v4 = 0x316F725063614D69;
  if (v1 != 4)
  {
    v4 = 0x5F73646F50726941;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x3231656E6F685069;
  if (v1 != 1)
  {
    v5 = 0x312C3864615069;
  }

  if (*(v0 + 16))
  {
    v2 = v5;
  }

  if (*(v0 + 16) <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*(v0 + 144) >= 2uLL)
  {
    v6 = *(v0 + 136);
  }

  return v6;
}

uint64_t sub_24A771EE8()
{
  v1 = *(v0 + 16);
  v2 = 0x206B6F6F4263614DLL;
  v3 = 0x615720656C707041;
  v4 = 1667321193;
  if (v1 != 4)
  {
    v4 = 0x726F737365636341;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656E6F685069;
  if (v1 != 1)
  {
    v5 = 1684099177;
  }

  if (*(v0 + 16))
  {
    v2 = v5;
  }

  if (*(v0 + 16) <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*(v0 + 144) != 1 && *(v0 + 160) != 0)
  {
    v6 = *(v0 + 152);
  }

  return v6;
}

uint64_t sub_24A771FF8()
{
  v1 = *(v0 + 16);
  v2 = 0x506B6F6F4263614DLL;
  v3 = 0x6863746157;
  v4 = 1667321193;
  if (v1 != 4)
  {
    v4 = 0x726F737365636341;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656E6F685069;
  if (v1 != 1)
  {
    v5 = 1684099177;
  }

  if (*(v0 + 16))
  {
    v2 = v5;
  }

  if (*(v0 + 16) <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*(v0 + 144) != 1 && *(v0 + 176) != 0)
  {
    v6 = *(v0 + 168);
  }

  return v6;
}

unint64_t sub_24A7720F8()
{
  v1 = *(v0 + 16);
  v2 = 0x2D315F3864615069;
  v3 = 0x315F336863746157;
  v4 = 0x5F73646F50726941;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*(v0 + 16))
  {
    v2 = 0xD000000000000018;
  }

  if (*(v0 + 16) <= 2u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (*(v0 + 144) != 1 && *(v0 + 192) != 0)
  {
    v5 = *(v0 + 184);
  }

  return v5;
}

uint64_t sub_24A772230()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x72656E776FLL;
  v4 = 0x656469727265766FLL;
  if (v1 != 4)
  {
    v4 = 0x656E696C6E4F7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461636F6CLL;
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

uint64_t sub_24A7722E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A772A10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A77230C(uint64_t a1)
{
  v2 = sub_24A773140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A772348(uint64_t a1)
{
  v2 = sub_24A773140();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A772384@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A772C18(a2, v10);
  if (!v2)
  {
    v5 = v11[0];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 185) = *(v11 + 9);
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_24A7723F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369766544776172 && a2 == 0xEE006C65646F4D65 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A8441F0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A7725BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5E408, &unk_24A837D70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7739F8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  LOBYTE(v33) = 0;
  sub_24A773A4C();
  sub_24A82DA84();
  v32 = v38;
  v31 = v39;
  LOBYTE(v33) = 1;
  sub_24A82DA84();
  v30 = v38;
  v28 = v39;
  LOBYTE(v33) = 2;
  sub_24A82DA84();
  v27 = v38;
  v26 = v39;
  LOBYTE(v33) = 3;
  sub_24A82DA84();
  v24 = v38;
  v23 = v39;
  v48 = 4;
  sub_24A82DA84();
  v29 = a2;
  v25 = a1;
  (*(v6 + 8))(v8, v5);
  v22 = v47;
  v10 = v32;
  *&v33 = v32;
  v11 = v31;
  v12 = v30;
  *(&v33 + 1) = v31;
  *&v34 = v30;
  v13 = v28;
  v14 = v27;
  *(&v34 + 1) = v28;
  *&v35 = v27;
  v15 = v26;
  v16 = v24;
  *(&v35 + 1) = v26;
  *&v36 = v24;
  v17 = v23;
  *(&v36 + 1) = v23;
  v37 = v47;
  sub_24A773AC8(&v33, &v38);
  sub_24A6876E8(v25);
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v44 = v16;
  v45 = v17;
  v46 = v22;
  result = sub_24A773B00(&v38);
  v18 = v36;
  v19 = v29;
  v29[2] = v35;
  v19[3] = v18;
  v19[4] = v37;
  v20 = v34;
  *v19 = v33;
  v19[1] = v20;
  return result;
}

uint64_t sub_24A772A10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A847570 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E696C6E4F7369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24A772C18@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5E340, &qword_24A837B80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v72 = a1;
  sub_24A67DF6C(a1, v9);
  sub_24A773140();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(v72);
  }

  v10 = v6;
  LOBYTE(v38[0]) = 0;
  v11 = v5;
  v12 = sub_24A82DA44();
  v14 = v13;
  v34 = v12;
  LOBYTE(v35) = 1;
  sub_24A773250();
  sub_24A82DA84();
  v15 = LOBYTE(v38[0]);
  v60 = 2;
  sub_24A7732A4();
  sub_24A82DA84();
  v32 = v15;
  *(&v71[1] + 7) = v62;
  *(&v71[2] + 7) = v63;
  *(&v71[3] + 7) = v64;
  *(&v71[4] + 7) = v65;
  *(v71 + 7) = v61;
  LOBYTE(v38[0]) = 3;
  v16 = sub_24A82DA04();
  v33 = v17;
  v31 = v16;
  v54 = 4;
  sub_24A7732F8();
  sub_24A82DA34();
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v66 = v55;
  v67 = v56;
  v53 = 5;
  v18 = sub_24A82DA54();
  (*(v10 + 8))(v8, v11);
  *(&v36[2] + 1) = v71[2];
  *(&v36[3] + 1) = v71[3];
  *(&v36[4] + 1) = v71[4];
  *(v36 + 1) = v71[0];
  *(&v36[1] + 1) = v71[1];
  *(v37 + 8) = v66;
  *(&v37[4] + 8) = v70;
  *(&v37[3] + 8) = v69;
  *(&v37[2] + 8) = v68;
  v30 = v18 & 1;
  v19 = v33;
  v20 = v34;
  *&v35 = v34;
  *(&v35 + 1) = v14;
  LOBYTE(v15) = v32;
  LOBYTE(v36[0]) = v32;
  v21 = v31;
  *&v36[5] = *(&v71[4] + 15);
  *(&v36[5] + 1) = v31;
  *&v37[0] = v33;
  *(&v37[1] + 8) = v67;
  BYTE8(v37[5]) = v30;
  sub_24A71FF60(&v35, v38);
  sub_24A6876E8(v72);
  v42 = v71[2];
  v43 = v71[3];
  *v44 = v71[4];
  v40 = v71[0];
  v41 = v71[1];
  v47 = v66;
  v51 = v70;
  v50 = v69;
  v49 = v68;
  v38[0] = v20;
  v38[1] = v14;
  v39 = v15;
  *&v44[15] = *(&v71[4] + 15);
  v45 = v21;
  v46 = v19;
  v48 = v67;
  v52 = v30;
  result = sub_24A71FFBC(v38);
  v23 = v37[4];
  a2[10] = v37[3];
  a2[11] = v23;
  *(a2 + 185) = *(&v37[4] + 9);
  v24 = v37[0];
  a2[6] = v36[5];
  a2[7] = v24;
  v25 = v37[2];
  a2[8] = v37[1];
  a2[9] = v25;
  v26 = v36[2];
  a2[2] = v36[1];
  a2[3] = v26;
  v27 = v36[4];
  a2[4] = v36[3];
  a2[5] = v27;
  v28 = v36[0];
  *a2 = v35;
  a2[1] = v28;
  return result;
}

unint64_t sub_24A773140()
{
  result = qword_27EF5E348;
  if (!qword_27EF5E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E348);
  }

  return result;
}

uint64_t sub_24A773194(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E350, &qword_24A837B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A773250()
{
  result = qword_27EF5E358;
  if (!qword_27EF5E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E358);
  }

  return result;
}

unint64_t sub_24A7732A4()
{
  result = qword_27EF5E360;
  if (!qword_27EF5E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E360);
  }

  return result;
}

unint64_t sub_24A7732F8()
{
  result = qword_27EF5E368[0];
  if (!qword_27EF5E368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF5E368);
  }

  return result;
}

uint64_t sub_24A773354(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24A7733B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_24A773530(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

__n128 sub_24A773800(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24A77381C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24A773878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_24A7738F4()
{
  result = qword_27EF5E3F0;
  if (!qword_27EF5E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E3F0);
  }

  return result;
}

unint64_t sub_24A77394C()
{
  result = qword_27EF5E3F8;
  if (!qword_27EF5E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E3F8);
  }

  return result;
}

unint64_t sub_24A7739A4()
{
  result = qword_27EF5E400;
  if (!qword_27EF5E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E400);
  }

  return result;
}

unint64_t sub_24A7739F8()
{
  result = qword_27EF5E410;
  if (!qword_27EF5E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E410);
  }

  return result;
}

unint64_t sub_24A773A4C()
{
  result = qword_27EF5E418;
  if (!qword_27EF5E418)
  {
    sub_24A6CCDC0(&qword_27EF5D248, &unk_24A834970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E418);
  }

  return result;
}

unint64_t sub_24A773B44()
{
  result = qword_27EF5E420;
  if (!qword_27EF5E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E420);
  }

  return result;
}

unint64_t sub_24A773B9C()
{
  result = qword_27EF5E428;
  if (!qword_27EF5E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E428);
  }

  return result;
}

unint64_t sub_24A773BF4()
{
  result = qword_27EF5E430;
  if (!qword_27EF5E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E430);
  }

  return result;
}

void *FMIPSnapshotHandlers.__allocating_init(devicesResponseFilter:devicesResponseHandler:itemsResponseFilter:itemsResponseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

void *FMIPSnapshotHandlers.init(devicesResponseFilter:devicesResponseHandler:itemsResponseFilter:itemsResponseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t *FMIPSnapshotHandlers.deinit()
{
  sub_24A6AFFE8(v0[2], v0[3]);
  sub_24A6AFFE8(v0[4], v0[5]);
  sub_24A6AFFE8(v0[6], v0[7]);
  sub_24A6AFFE8(v0[8], v0[9]);
  return v0;
}

uint64_t FMIPSnapshotHandlers.__deallocating_deinit()
{
  sub_24A6AFFE8(v0[2], v0[3]);
  sub_24A6AFFE8(v0[4], v0[5]);
  sub_24A6AFFE8(v0[6], v0[7]);
  sub_24A6AFFE8(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t FMIPManagerConfiguration.cacheDirectory.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);

  return v1;
}

uint64_t sub_24A773DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D608, &qword_24A837E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPManagerConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v2 = sub_24A82CAE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A773F14(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider);

  return v0;
}

uint64_t sub_24A773F14(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D608, &qword_24A837E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPManagerConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v2 = sub_24A82CAE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A773F14(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider);

  return swift_deallocClassInstance();
}

unint64_t sub_24A774064()
{
  result = qword_27EF5E438;
  if (!qword_27EF5E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E438);
  }

  return result;
}

unint64_t sub_24A7740BC()
{
  result = qword_27EF5E440;
  if (!qword_27EF5E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E440);
  }

  return result;
}

unint64_t sub_24A774114()
{
  result = qword_27EF5E448;
  if (!qword_27EF5E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E448);
  }

  return result;
}

unint64_t sub_24A77416C()
{
  result = qword_27EF5E450;
  if (!qword_27EF5E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E450);
  }

  return result;
}

id sub_24A774234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_24A82DBE4();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_24A82C7E4();

  v11 = [v10 code];
  return v11;
}

uint64_t sub_24A774394(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_24A82DBE4();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_24A82C7E4();

  v11 = [v10 domain];
  v12 = sub_24A82CFC4();

  return v12;
}

BOOL sub_24A774514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_24A82DBE4();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_24A82C7E4();

  v11 = sub_24A774668();
  return v11;
}

BOOL sub_24A774668()
{
  v1 = [v0 domain];
  v2 = sub_24A82CFC4();
  v4 = v3;

  if (v2 == sub_24A82CFC4() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_24A82DC04();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 code] < 500)
  {
    return 0;
  }

  return [v0 code] < 600;
}

uint64_t type metadata accessor for FMIPVerifyTrustedStateRequest(uint64_t a1)
{
  result = qword_27EF5E460;
  if (!qword_27EF5E460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A77479C(uint64_t a1)
{
  result = type metadata accessor for FMIPDevice(319);
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

uint64_t sub_24A774834()
{
  v1 = v0;
  v3 = *(v0 + qword_27EF78DA8);
  v2 = *(v0 + qword_27EF78DA8 + 8);
  v11 = MEMORY[0x277D837D0];
  *&v10 = v3;
  *(&v10 + 1) = v2;
  v4 = qword_27EF5D920;
  v5 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v5 + 6);

  os_unfair_lock_unlock(v5 + 6);

  sub_24A6A50DC(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v9, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v7 = *(v1 + v4);

  os_unfair_lock_lock((v7 + 24));
  sub_24A6A3D28((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));
}

uint64_t sub_24A77495C()
{
  v0 = sub_24A6F8F90();
  sub_24A6FE094(v0 + qword_27EF78DA8);

  return swift_deallocClassInstance();
}

uint64_t FMIPLockAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message);

  return v1;
}

uint64_t FMIPLockAction.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode);

  return v1;
}

unint64_t sub_24A774A68()
{
  if ((*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 240);
  if (v2)
  {
    return 1;
  }

  else
  {
    return (v2 >> 13) & 1;
  }
}

uint64_t FMIPLockAction.__allocating_init(device:message:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  FMIPLockAction.init(device:message:passcode:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t FMIPLockAction.init(device:message:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isSoundEnabled) = 0;
  v6 = (v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message);
  *v6 = a2;
  v6[1] = a3;
  v7 = (v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode);
  *v7 = a4;
  v7[1] = a5;
  *(v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled) = a3 != 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v8 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v12 = 0;
  v12[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v5;
}

uint64_t sub_24A774C3C()
{
}

uint64_t FMIPLockAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();

  return v0;
}

uint64_t FMIPLockAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore14FMIPLockActionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);
  v3 = *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message) != *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_24A82DC04();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);
  v10 = *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode) != *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode) || v9 != v10)
  {
    v12 = a1;
    v13 = a2;
    v14 = sub_24A82DC04();
    a2 = v13;
    v15 = v14;
    a1 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled))
  {
    return 0;
  }

  v17 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v18 = a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;

  return static FMIPDevice.== infix(_:_:)(v17, v18);
}

uint64_t type metadata accessor for FMIPLockAction(uint64_t a1)
{
  result = qword_27EF5E470;
  if (!qword_27EF5E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *FMImageCache.init(converter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A67ABB0(a1, a2);

  return v2;
}

uint64_t FMImageCache.deinit()
{

  return v0;
}

uint64_t sub_24A77500C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_24A775054(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_24A775120()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMImageCache: Purging cache...", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A77A5F8;
  *(v7 + 24) = v1;
  v10[4] = sub_24A6806A0;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A6805E4;
  v10[3] = &unk_285DC7DA8;
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

uint64_t sub_24A77530C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v26 = *v3;
  v6 = v26;
  v31 = sub_24A82CDF4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24A82CE54();
  v30 = *(v32 - 8);
  v9 = MEMORY[0x28223BE20](v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = &v25 - v15;
  v29 = v4[3];
  (*(v13 + 16))(&v25 - v15, a1, v12);
  v17 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = *(v26 + 88);
  *(v18 + 40) = *(v6 + 104);
  *(v18 + 48) = v4;
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = (v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v27;
  v20 = v28;
  *v19 = v27;
  v19[1] = v20;
  aBlock[4] = sub_24A77A9CC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC8080;
  v22 = _Block_copy(aBlock);

  sub_24A6A7314(v21, v20);
  sub_24A82CE24();
  v34 = MEMORY[0x277D84F90];
  sub_24A6794FC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v23 = v31;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v8, v22);
  _Block_release(v22);
  (*(v33 + 8))(v8, v23);
  (*(v30 + 8))(v11, v32);
}

void sub_24A77571C(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  isEscapingClosureAtFileLocation = v3;
  v82 = a3;
  v89 = a2;
  v6 = *v3;
  v7 = v6[10];
  v91 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v88 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = (v79 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = v79 - v13;
  v87 = v14;
  MEMORY[0x28223BE20](v12);
  v80 = v79 - v15;
  v16 = v6[12];
  v17 = sub_24A82D634();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v79 - v19;
  swift_beginAccess();
  v21 = v6[13];
  v84 = v6[11];
  v85 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = *(AssociatedConformanceWitness + 16);

  v92 = a1;
  sub_24A82CF34();

  v23 = *(*(v16 - 8) + 48);
  v86 = v16;
  LODWORD(v6) = v23(v20, 1, v16);
  (*(v18 + 8))(v20, v17);
  if (v6 != 1 || (swift_beginAccess(), , v24 = sub_24A82D424(), , (v24 & 1) != 0))
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v25 = sub_24A82CDC4();
    sub_24A6797D0(v25, qword_281518F88);
    v26 = v91;
    v27 = v92;
    v28 = v88;
    v81 = *(v91 + 16);
    v81(v88, v92, v7);
    v29 = sub_24A82CD94();
    v30 = sub_24A82D504();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v90;
    if (v31)
    {
      v33 = v28;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v36 = sub_24A82DC14();
      AssociatedConformanceWitness = isEscapingClosureAtFileLocation;
      v37 = v32;
      v39 = v38;
      (*(v91 + 8))(v33, v7);
      v40 = sub_24A68761C(v36, v39, aBlock);
      v32 = v37;
      v27 = v92;
      isEscapingClosureAtFileLocation = AssociatedConformanceWitness;

      *(v34 + 4) = v40;
      _os_log_impl(&dword_24A675000, v29, v30, "FMImageCache: Loading declined, we are already processing similar location: %s", v34, 0xCu);
      sub_24A6876E8(v35);
      v41 = v35;
      v26 = v91;
      MEMORY[0x24C21E1D0](v41, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);

      v42 = v89;
      if (!v89)
      {
        return;
      }
    }

    else
    {

      (*(v26 + 8))(v28, v7);
      v42 = v89;
      if (!v89)
      {
        return;
      }
    }

    v43 = *(isEscapingClosureAtFileLocation + 24);
    v81(v32, v27, v7);
    v44 = (*(v26 + 80) + 56) & ~*(v26 + 80);
    v45 = (v87 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *&v47 = v7;
    *(&v47 + 1) = v84;
    *&v48 = v86;
    *(&v48 + 1) = v85;
    *(v46 + 16) = v47;
    *(v46 + 32) = v48;
    *(v46 + 48) = isEscapingClosureAtFileLocation;
    (*(v26 + 32))(v46 + v44, v32, v7);
    v49 = (v46 + v45);
    v22 = v82;
    *v49 = v42;
    v49[1] = v22;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A77A834;
    *(v7 + 24) = v46;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DC7FB8;
    v50 = _Block_copy(aBlock);
    sub_24A6A7314(v42, v22);
    sub_24A6A7314(v42, v22);

    dispatch_sync(v43, v50);
    sub_24A6AFFE8(v42, v22);
    _Block_release(v50);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v88 = v22;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v51 = sub_24A82CDC4();
  sub_24A6797D0(v51, qword_281518F88);
  v52 = v91;
  v53 = v91 + 16;
  v54 = v80;
  v89 = *(v91 + 16);
  v89(v80, v92, v7);
  v55 = sub_24A82CD94();
  v56 = sub_24A82D504();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_24A82DC14();
    v61 = v60;
    v62 = *(v91 + 8);
    v82 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v62;
    v62(v54, v7);
    v63 = sub_24A68761C(v59, v61, aBlock);
    v52 = v91;

    *(v57 + 4) = v63;
    _os_log_impl(&dword_24A675000, v55, v56, "FMImageCache: Attempting to load request: %s", v57, 0xCu);
    sub_24A6876E8(v58);
    MEMORY[0x24C21E1D0](v58, -1, -1);
    MEMORY[0x24C21E1D0](v57, -1, -1);
  }

  else
  {

    v64 = *(v52 + 8);
    v82 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v64;
    v64(v54, v7);
  }

  v65 = v89;
  v66 = v92;
  v89(v90, v92, v7);
  v67 = v65;
  v68 = swift_allocObject();
  v79[1] = v53;
  v69 = v68;
  swift_weakInit();
  v70 = v81;
  v67(v81, v66, v7);
  v71 = (*(v52 + 80) + 56) & ~*(v52 + 80);
  v72 = swift_allocObject();
  *&v73 = v7;
  v74 = v84;
  v75 = v85;
  *(&v73 + 1) = v84;
  *&v76 = v86;
  *(&v76 + 1) = v85;
  *(v72 + 16) = v73;
  *(v72 + 32) = v76;
  *(v72 + 48) = v69;
  (*(v52 + 32))(v72 + v71, v70, v7);
  v77 = v90;
  v78 = (*(v75 + 24))(v90, sub_24A77A7CC, v72, v74, v75);
  [*(isEscapingClosureAtFileLocation + 16) addOperation_];
  v89(v70, v66, v7);
  swift_beginAccess();
  sub_24A82D434();
  sub_24A82D3F4();
  (AssociatedConformanceWitness)(v77, v7);
  swift_endAccess();
}

void sub_24A776138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x24C21D990]();
  sub_24A7797CC(v3, a3, a1, a2);

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_24A7761AC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = *v1;
  v3 = *(*v1 + 12);
  v4 = sub_24A82D634();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v49 = &v46 - v6;
  v7 = sub_24A82C8B4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - v15;
  (*(v2 + 20))(v14);
  v17 = *(v2 + 10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v17, AssociatedConformanceWitness);
  sub_24A82C864();

  v19 = *(v8 + 8);
  v52 = v7;
  v20 = v7;
  v21 = v19;
  v19(v13, v20);
  v22 = sub_24A82C8C4();
  v24 = v23;
  v25 = v48;
  v26 = v49;
  v1[7]();
  sub_24A67E0F0(v22, v24);
  v27 = *(v3 - 8);
  if ((*(v27 + 48))(v26, 1, v3) == 1)
  {
    v50 = v3;
    (*(v25 + 8))(v26, v47);
    v29 = v51;
    v28 = v52;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v30 = sub_24A82CDC4();
    sub_24A6797D0(v30, qword_281518F88);
    (*(v8 + 16))(v29, v16, v28);
    v31 = sub_24A82CD94();
    v32 = v16;
    v33 = sub_24A82D504();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;
      sub_24A6794FC(&qword_27EF5E508, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v36 = sub_24A82DB84();
      v37 = v29;
      v38 = v21;
      v39 = v28;
      v40 = v36;
      v42 = v41;
      v38(v37, v39);
      v43 = sub_24A68761C(v40, v42, &v54);

      *(v34 + 4) = v43;
      _os_log_impl(&dword_24A675000, v31, v33, "FMImageCache: Failed to load cached image from disk: %s", v34, 0xCu);
      sub_24A6876E8(v35);
      MEMORY[0x24C21E1D0](v35, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);

      v38(v32, v39);
    }

    else
    {

      v21(v29, v28);
      v21(v32, v28);
    }

    return (*(*(v50 - 8) + 56))(v53, 1, 1);
  }

  else
  {
    v21(v16, v52);
    v45 = v53;
    (*(v27 + 32))(v53, v26, v3);
    return (*(v27 + 56))(v45, 0, 1, v3);
  }
}

uint64_t FMImageCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

void *FMImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A67ABB0(a1, a2);

  return v4;
}

uint64_t sub_24A77682C@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a5;
  v123 = a4;
  v126 = a3;
  v7 = *a1;
  v8 = *(*a1 + 96);
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v9 = sub_24A82DD44();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v116 = &v108 - v11;
  v12 = *(v7 + 80);
  v125 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v111 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v114 = &v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v108 - v18;
  MEMORY[0x28223BE20](v17);
  v121 = &v108 - v19;
  v20 = sub_24A82D634();
  v119 = *(v20 - 8);
  v120 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v113 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v127 = &v108 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v108 - v26;
  v28 = *(v8 - 8);
  v29 = MEMORY[0x28223BE20](v25);
  v124 = (&v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v32 = &v108 - v31;
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = *(AssociatedConformanceWitness + 16);

  v128 = v12;
  v122 = v33;
  sub_24A82CF34();

  v34 = *(v28 + 6);
  if (v34(v27, 1, v8) != 1)
  {
    v57 = *(v28 + 4);
    v127 = v28 + 32;
    v124 = v57;
    v57(v32, v27, v8);
    v58 = v32;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v59 = sub_24A82CDC4();
    sub_24A6797D0(v59, qword_281518F88);
    v60 = v125;
    v61 = v121;
    v62 = a2;
    v63 = v128;
    (*(v125 + 16))(v121, v62, v128);
    v64 = sub_24A82CD94();
    v65 = sub_24A82D4C4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v122 = v58;
      v67 = v66;
      v68 = swift_slowAlloc();
      v120 = v8;
      v69 = v68;
      v130[0] = v68;
      *v67 = 136315138;
      v70 = sub_24A82DC14();
      v71 = v61;
      v73 = v72;
      (*(v60 + 8))(v71, v63);
      v74 = sub_24A68761C(v70, v73, v130);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_24A675000, v64, v65, "FMImageCache: Found cached data for request: %s in memory cache.", v67, 0xCu);
      sub_24A6876E8(v69);
      v75 = v69;
      v8 = v120;
      MEMORY[0x24C21E1D0](v75, -1, -1);
      v76 = v67;
      v58 = v122;
      MEMORY[0x24C21E1D0](v76, -1, -1);

      v77 = v126;
      if (!v126)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*(v60 + 8))(v61, v63);
      v77 = v126;
      if (!v126)
      {
LABEL_19:
        v98 = v129;
        v124(v129, v58, v8);
        return (*(v28 + 7))(v98, 0, 1, v8);
      }
    }

    v96 = v116;
    (*(v28 + 2))(v116, v58, v8);
    v97 = v118;
    swift_storeEnumTagMultiPayload();
    v77(v96);
    (*(v117 + 8))(v96, v97);
    goto LABEL_19;
  }

  v121 = v28;
  v35 = v120;
  v119 = *(v119 + 1);
  v119(v27, v120);
  v36 = v127;
  sub_24A7761AC(v127);
  v37 = a2;
  if (v34(v36, 1, v8) == 1)
  {
    v119(v127, v35);
    swift_beginAccess();
    v38 = a1;

    v127 = a2;
    v39 = v128;
    v40 = sub_24A82D424();

    v41 = v121;
    if ((v40 & 1) == 0)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v42 = sub_24A82CDC4();
      sub_24A6797D0(v42, qword_281518F88);
      v43 = v125;
      v44 = v111;
      (*(v125 + 16))(v111, v127, v39);
      v45 = sub_24A82CD94();
      v46 = sub_24A82D504();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v119 = v38;
        v48 = v47;
        v49 = swift_slowAlloc();
        v120 = v8;
        v50 = v49;
        v131 = v49;
        *v48 = 136315138;
        v51 = sub_24A82DC14();
        v52 = v44;
        v54 = v53;
        (*(v43 + 8))(v52, v39);
        v55 = sub_24A68761C(v51, v54, &v131);

        *(v48 + 4) = v55;
        _os_log_impl(&dword_24A675000, v45, v46, "FMImageCache: Cached data for request: %s not found, regenerating.", v48, 0xCu);
        sub_24A6876E8(v50);
        v56 = v50;
        v8 = v120;
        MEMORY[0x24C21E1D0](v56, -1, -1);
        MEMORY[0x24C21E1D0](v48, -1, -1);
      }

      else
      {

        (*(v43 + 8))(v44, v39);
      }

      sub_24A77530C(v127, v126, v123);
    }

    return (*(v41 + 7))(v129, 1, 1, v8);
  }

  else
  {
    v78 = *(v121 + 4);
    v111 = v121 + 32;
    v110 = v78;
    v78(v124, v127, v8);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v119 = a1;
    v79 = sub_24A82CDC4();
    sub_24A6797D0(v79, qword_281518F88);
    v80 = v125;
    v81 = v112;
    v82 = v128;
    v109 = *(v125 + 16);
    v109(v112, a2, v128);
    v83 = sub_24A82CD94();
    v84 = sub_24A82D4C4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v127 = v37;
      v86 = v85;
      v87 = swift_slowAlloc();
      v120 = v8;
      v88 = v87;
      v130[0] = v87;
      *v86 = 136315138;
      v89 = sub_24A82DC14();
      v90 = v81;
      v92 = v91;
      (*(v80 + 8))(v90, v82);
      v93 = sub_24A68761C(v89, v92, v130);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_24A675000, v83, v84, "FMImageCache: Found cached data for request: %s in disk cache.", v86, 0xCu);
      sub_24A6876E8(v88);
      v94 = v88;
      v8 = v120;
      MEMORY[0x24C21E1D0](v94, -1, -1);
      v95 = v86;
      v37 = v127;
      MEMORY[0x24C21E1D0](v95, -1, -1);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
    }

    v109(v114, v37, v82);
    v100 = v121;
    v101 = *(v121 + 2);
    v102 = v113;
    v103 = v124;
    v101(v113, v124, v8);
    v127 = *(v100 + 7);
    (v127)(v102, 0, 1, v8);
    swift_beginAccess();
    sub_24A82CF24();
    sub_24A82CF44();
    swift_endAccess();
    v104 = v126;
    if (v126)
    {
      v105 = v116;
      v101(v116, v124, v8);
      v106 = v118;
      swift_storeEnumTagMultiPayload();
      v104(v105);
      v103 = v124;
      (*(v117 + 8))(v105, v106);
    }

    v107 = v129;
    v110(v129, v103, v8);
    return (v127)(v107, 0, 1, v8);
  }
}

void sub_24A7774A4(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = sub_24A82C8B4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v41 - v8;
  v10 = *(v2 + 80);
  v11 = *(swift_getAssociatedConformanceWitness() + 16);
  v12 = sub_24A82CEC4();
  swift_beginAccess();
  a1[4] = v12;

  v13 = *(v2 + 96);
  swift_getTupleTypeMetadata2();
  v14 = sub_24A82D294();
  v15 = sub_24A77A2EC(v14, v10, v13, v11);

  swift_beginAccess();
  a1[6] = v15;

  v42 = objc_opt_self();
  v16 = [v42 defaultManager];
  (*(*a1 + 160))();
  v17 = sub_24A82C844();
  v41[0] = *(v4 + 8);
  v41[1] = v4 + 8;
  (v41[0])(v9, v3);
  v43 = 0;
  v18 = [v16 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:5 error:&v43];

  v19 = v43;
  if (v18)
  {
    v20 = sub_24A82D244();
    v21 = v19;

    v22 = *(v20 + 16);
    if (!v22)
    {
LABEL_7:

      return;
    }

    v23 = v3;
    v24 = 0;
    v25 = (v4 + 16);
    while (v24 < *(v20 + 16))
    {
      (*(v4 + 16))(v7, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v23);
      v26 = [v42 defaultManager];
      v27 = sub_24A82C844();
      v28 = v23;
      (v41[0])(v7, v23);
      v43 = 0;
      v29 = [v26 removeItemAtURL:v27 error:&v43];

      if (!v29)
      {
        v31 = v43;

        goto LABEL_10;
      }

      ++v24;
      v30 = v43;
      v23 = v28;
      if (v22 == v24)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = v43;
LABEL_10:
    v25 = sub_24A82C7F4();

    swift_willThrow();
    if (qword_281515DC8 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v32 = sub_24A82CDC4();
  sub_24A6797D0(v32, qword_281518F88);
  v33 = v25;
  v34 = sub_24A82CD94();
  v35 = sub_24A82D504();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;
    swift_getErrorValue();
    v38 = sub_24A82DC74();
    v40 = sub_24A68761C(v38, v39, &v43);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_24A675000, v34, v35, "FMImageCache: Error deleting file : %s", v36, 0xCu);
    sub_24A6876E8(v37);
    MEMORY[0x24C21E1D0](v37, -1, -1);
    MEMORY[0x24C21E1D0](v36, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A7779EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v22 = &v17 - v7;
  swift_beginAccess();
  v8 = v5[12];

  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  sub_24A82DD44();
  swift_getFunctionTypeMetadata1();
  sub_24A82D314();
  v9 = v5[13];
  v10 = v5[11];
  swift_getAssociatedConformanceWitness();
  v21 = a2;
  sub_24A82CF34();

  v11 = v23;
  if (!v23)
  {
    v11 = sub_24A82D294();
  }

  v26 = v11;
  v12 = swift_allocObject();
  *&v13 = v6;
  *(&v13 + 1) = v10;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  v15 = v19;
  *(v12 + 48) = v18;
  *(v12 + 56) = v15;
  v23 = sub_24A77A8A4;
  v24 = v12;

  sub_24A82D2E4();
  (*(v20 + 16))(v22, v21, v6);
  v25 = v26;
  swift_beginAccess();
  sub_24A82CF24();
  sub_24A82CF44();
  return swift_endAccess();
}

uint64_t sub_24A777CA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a7;
  v46 = a8;
  v44 = a5;
  v47 = a3;
  v48 = a1;
  v49 = a2;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = a9;
    v22 = *(result + 24);
    v42 = v13;
    v43 = v22;

    v23 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v18 + 16))(&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v44, a6);
    v24 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v41 = v15;
    v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = v14;
    v26 = v11;
    v27 = v10;
    v28 = swift_allocObject();
    v29 = v45;
    v30 = v46;
    *(v28 + 2) = a6;
    *(v28 + 3) = v29;
    v31 = v40;
    *(v28 + 4) = v30;
    *(v28 + 5) = v31;
    (*(v18 + 32))(&v28[v24], v20, a6);
    *&v28[v25] = v23;
    v32 = &v28[(v25 + 15) & 0xFFFFFFFFFFFFFFF8];
    v34 = v48;
    v33 = v49;
    *v32 = v48;
    *(v32 + 1) = v33;
    LOBYTE(v25) = v47 & 1;
    v32[16] = v47 & 1;
    aBlock[4] = sub_24A77A8D8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC8030;
    v35 = _Block_copy(aBlock);

    sub_24A77A978(v34, v33, v25);
    v36 = v50;
    sub_24A82CE24();
    v51 = MEMORY[0x277D84F90];
    sub_24A6794FC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v37 = v42;
    sub_24A82D6B4();
    v38 = v43;
    MEMORY[0x24C21CE90](0, v36, v37, v35);
    _Block_release(v35);

    (*(v26 + 8))(v37, v27);
    (*(v41 + 8))(v36, v44);
  }

  return result;
}

void *sub_24A778144(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t *, uint64_t), unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v127 = a7;
  LODWORD(v108) = a5;
  v110 = a4;
  v109 = a3;
  v128 = a1;
  v118 = sub_24A82D634();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = v102 - v12;
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v121 = sub_24A82DD44();
  v115 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v114 = (v102 - v13);
  v14 = sub_24A82D634();
  MEMORY[0x28223BE20](v14 - 8);
  v105 = v102 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v112 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v111 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (v102 - v19);
  v113 = v21;
  v22 = sub_24A82DD44();
  v125 = *(v22 - 8);
  v126 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  AssociatedConformanceWitness = (v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v124 = (v102 - v26);
  v129 = a6;
  v27 = *(a6 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v119 = v102 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = v102 - v33;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v35 = sub_24A82CDC4();
  v36 = sub_24A6797D0(v35, qword_281518F88);
  v37 = *(v27 + 16);
  v123 = v27 + 16;
  v122 = v37;
  v37(v34, v128, v129);
  v102[2] = v36;
  v38 = sub_24A82CD94();
  v39 = sub_24A82D504();
  v40 = os_log_type_enabled(v38, v39);
  v107 = a8;
  v106 = v20;
  v104 = v27;
  v103 = v30;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v102[1] = a2;
    v42 = v41;
    v43 = swift_slowAlloc();
    v132 = v43;
    *v42 = 136315138;
    v44 = v129;
    swift_getAssociatedConformanceWitness();
    v45 = sub_24A82DC14();
    v46 = v44;
    v48 = v47;
    v49 = *(v27 + 8);
    v49(v34, v46);
    v50 = sub_24A68761C(v45, v48, &v132);

    *(v42 + 4) = v50;
    _os_log_impl(&dword_24A675000, v38, v39, "FMImageCache: Finished loading request: %s", v42, 0xCu);
    sub_24A6876E8(v43);
    MEMORY[0x24C21E1D0](v43, -1, -1);
    MEMORY[0x24C21E1D0](v42, -1, -1);
  }

  else
  {

    v49 = *(v27 + 8);
    v49(v34, v129);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v52 = AssociatedConformanceWitness;
  if (result)
  {
    v53 = result;
    v54 = v124;
    sub_24A7790F8(v109, v110, v108 & 1, result, v124);
    (*(v125 + 16))(v52, v54, v126);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = *v52;
      v56 = v103;
      v122(v103, v128, v129);
      v57 = v55;
      v58 = sub_24A82CD94();
      v59 = sub_24A82D504();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        AssociatedConformanceWitness = swift_slowAlloc();
        v132 = AssociatedConformanceWitness;
        *v60 = 136315394;
        v61 = v49;
        v62 = v129;
        swift_getAssociatedConformanceWitness();
        LODWORD(v113) = v59;
        v63 = sub_24A82DC14();
        v65 = v64;
        v66 = v56;
        v67 = a9;
        v61(v66, v62);
        v68 = sub_24A68761C(v63, v65, &v132);

        *(v60 + 4) = v68;
        *(v60 + 12) = 2080;
        swift_getErrorValue();
        v69 = sub_24A82DC74();
        v71 = sub_24A68761C(v69, v70, &v132);

        *(v60 + 14) = v71;
        _os_log_impl(&dword_24A675000, v58, v113, "FMImageCache: Failed to fetch image for request: %s due to: %s", v60, 0x16u);
        v72 = AssociatedConformanceWitness;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v72, -1, -1);
        MEMORY[0x24C21E1D0](v60, -1, -1);
      }

      else
      {

        v49(v56, v129);
        v67 = a9;
      }

      swift_beginAccess();
      v93 = v121;
      swift_getFunctionTypeMetadata1();
      sub_24A82D314();
      swift_getAssociatedConformanceWitness();

      sub_24A82CF34();

      if (v130)
      {
        v131 = v130;
        MEMORY[0x28223BE20](v94);
        v102[-6] = v129;
        v102[-5] = v95;
        v102[-4] = v107;
        v102[-3] = v67;
        v102[-2] = v55;
        swift_getWitnessTable();
        v93 = v121;
        sub_24A82D1B4();
      }

      v96 = v114;
      *v114 = v55;
      swift_storeEnumTagMultiPayload();
      v97 = *(*v53 + 288);
      v98 = v55;
      v97(v128, v96);

      (*(v115 + 8))(v96, v93);
    }

    else
    {
      v102[0] = a9;
      v73 = v112;
      v74 = v128;
      v75 = v106;
      v76 = v113;
      (*(v112 + 32))(v106, v52, v113);
      v122(v119, v74, v129);
      v77 = v73 + 16;
      v78 = *(v73 + 16);
      v79 = v111;
      v110 = v77;
      v109 = v78;
      (v78)(v111, v75, v76);
      sub_24A67E0F0(*v79, *(v79 + 1));
      v80 = *(v76 + 48);
      v81 = v107;
      v82 = *(v107 - 8);
      v83 = *(v82 + 32);
      v84 = &v79[v80];
      v85 = v105;
      v108 = v82 + 32;
      v104 = v83;
      v83(v105, v84, v107);
      (*(v82 + 56))(v85, 0, 1, v81);
      swift_beginAccess();
      v86 = v127;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_24A82CF24();
      sub_24A82CF44();
      swift_endAccess();
      sub_24A776138(*v75, v75[1], v74);
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_24A82D314();

      sub_24A82CF34();

      if (v130)
      {
        v131 = v130;
        MEMORY[0x28223BE20](v87);
        v102[-6] = v129;
        v102[-5] = v86;
        v88 = v102[0];
        v102[-4] = v81;
        v102[-3] = v88;
        v102[-2] = v75;
        swift_getWitnessTable();
        sub_24A82D1B4();
      }

      v89 = v111;
      v90 = v113;
      (v109)(v111, v75, v113);
      sub_24A67E0F0(*v89, *(v89 + 1));
      v91 = v114;
      v104(v114, &v89[*(v90 + 48)], v81);
      v92 = v121;
      swift_storeEnumTagMultiPayload();
      (*(*v53 + 288))(v128, v91);
      (*(v115 + 8))(v91, v92);
      (*(v112 + 8))(v75, v90);
    }

    swift_beginAccess();
    v99 = v129;
    sub_24A82D434();
    v100 = v116;
    v101 = v128;
    sub_24A82D404();
    (*(v117 + 8))(v100, v118);
    swift_endAccess();
    v122(v119, v101, v99);
    v131 = 0;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_24A82D314();
    sub_24A82CF24();
    sub_24A82CF44();
    swift_endAccess();

    return (*(v125 + 8))(v124, v126);
  }

  return result;
}

id sub_24A7790F8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v29 = a2;
  v9 = *(*a4 + 96);
  v10 = sub_24A82D634();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  if (a3)
  {
    *a5 = a1;
    swift_getTupleTypeMetadata2();
    sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82DD44();
    swift_storeEnumTagMultiPayload();

    return a1;
  }

  else
  {
    v27 = v15;
    v19 = a4[7];
    v20 = v29;
    sub_24A681458(a1, v29);
    v28 = a1;
    v19(a1, v20);
    if ((*(v14 + 48))(v13, 1, v9) == 1)
    {
      (*(v27 + 8))(v13, v10);
      sub_24A6D3FAC();
      v21 = swift_allocError();
      *v22 = 1;
      sub_24A77A8CC(v28, v29, 0);
      *a5 = v21;
      swift_getTupleTypeMetadata2();
    }

    else
    {
      v23 = *(v14 + 32);
      v23(v17, v13, v9);
      v24 = *(swift_getTupleTypeMetadata2() + 48);
      v25 = v29;
      *a5 = v28;
      a5[1] = v25;
      v23(a5 + v24, v17, v9);
    }

    sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82DD44();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24A77948C(void (**a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v16 - v9;
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v11 = sub_24A82DD44();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  v16 = *a1;
  (*(v8 + 16))(v10, v17, TupleTypeMetadata2);
  sub_24A67E0F0(*v10, *(v10 + 1));
  (*(*(a5 - 8) + 32))(v14, &v10[*(TupleTypeMetadata2 + 48)], a5);
  swift_storeEnumTagMultiPayload();
  v16(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24A7796A4(void (**a1)(char *), void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v7 = sub_24A82DD44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *a1;
  *(&v14 - v9) = a2;
  swift_storeEnumTagMultiPayload();
  v12 = a2;
  v11(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24A7797CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v77 = a3;
  v86[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v84 = sub_24A82C8B4();
  v6 = *(v84 - 8);
  v7 = MEMORY[0x28223BE20](v84);
  v74 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v72 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v81 = &v72 - v13;
  v14 = *(v5 + 160);
  (v14)(v12);
  v15 = *(v5 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v15, AssociatedConformanceWitness);
  sub_24A82C864();

  v73 = v6;
  v17 = v6 + 8;
  v18 = *(v6 + 8);
  v19 = v84;
  v18(v11, v84);
  v85 = 0;
  v80 = objc_opt_self();
  v20 = [v80 defaultManager];
  v76 = a1;
  v21 = v81;
  v75 = v14;
  v14();
  sub_24A82C894();
  v82 = v18;
  v83 = v17;
  v18(v11, v19);
  v22 = sub_24A82CF94();

  v23 = [v20 fileExistsAtPath:v22 isDirectory:&v85];

  if ((v23 & 1) == 0)
  {
    v24 = [v80 defaultManager];
    v75();
    v25 = sub_24A82C844();
    v26 = v84;
    v82(v11, v84);
    v86[0] = 0;
    v27 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v86];

    if (!v27)
    {
      v43 = v86[0];
      v44 = sub_24A82C7F4();

      swift_willThrow();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v45 = sub_24A82CDC4();
      sub_24A6797D0(v45, qword_281518F88);
      v46 = v74;
      (*(v73 + 16))(v74, v21, v26);
      v47 = sub_24A82CD94();
      v48 = sub_24A82D504();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v80 = v44;
        v50 = v49;
        v51 = swift_slowAlloc();
        v86[0] = v51;
        *v50 = 136315138;
        sub_24A6794FC(&qword_27EF5E508, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v52 = sub_24A82DB84();
        v54 = v53;
        v55 = v46;
        v56 = v82;
        v82(v55, v26);
        v57 = sub_24A68761C(v52, v54, v86);

        *(v50 + 4) = v57;
        _os_log_impl(&dword_24A675000, v47, v48, "FMImageCache: Could not create directory for content: %s", v50, 0xCu);
        sub_24A6876E8(v51);
        MEMORY[0x24C21E1D0](v51, -1, -1);
        MEMORY[0x24C21E1D0](v50, -1, -1);

        return v56(v81, v26);
      }

      else
      {

        v70 = v46;
        v71 = v82;
        v82(v70, v26);
        return v71(v21, v26);
      }
    }

    v28 = v86[0];
  }

  v29 = v79;
  sub_24A82C914();
  v30 = v29;
  v31 = v21;
  if (!v29)
  {
    v32 = [v80 defaultManager];
    sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8327A0;
    v34 = *MEMORY[0x277CCA1B0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    v35 = *MEMORY[0x277CCA1A0];
    type metadata accessor for FileProtectionType(0);
    *(inited + 64) = v36;
    *(inited + 40) = v35;
    v37 = v34;
    v38 = v35;
    v31 = v21;
    sub_24A78AD70(inited);
    swift_setDeallocating();
    sub_24A77A764(inited + 32);
    type metadata accessor for FileAttributeKey(0);
    sub_24A6794FC(&qword_281512B90, type metadata accessor for FileAttributeKey, &unk_24A83185C);
    v39 = sub_24A82CED4();

    sub_24A82C894();
    v40 = sub_24A82CF94();

    v86[0] = 0;
    LODWORD(v34) = [v32 setAttributes:v39 ofItemAtPath:v40 error:v86];

    if (v34)
    {
      v41 = v86[0];
      return (v82)(v21, v84);
    }

    v58 = v86[0];
    v30 = sub_24A82C7F4();

    swift_willThrow();
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v59 = sub_24A82CDC4();
  sub_24A6797D0(v59, qword_281518F88);
  v60 = v30;
  v61 = sub_24A82CD94();
  v62 = sub_24A82D4E4();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v84;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v86[0] = v66;
    *v65 = 136315138;
    swift_getErrorValue();
    v67 = sub_24A82DC74();
    v69 = sub_24A68761C(v67, v68, v86);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_24A675000, v61, v62, "FMImageCache: Could not save objects to disk %s", v65, 0xCu);
    sub_24A6876E8(v66);
    MEMORY[0x24C21E1D0](v66, -1, -1);
    MEMORY[0x24C21E1D0](v65, -1, -1);
  }

  else
  {
  }

  return (v82)(v31, v64);
}