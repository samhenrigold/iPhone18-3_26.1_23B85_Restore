uint64_t sub_24A74734C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A82CDF4();
  v115 = *(v4 - 8);
  v116 = v4;
  MEMORY[0x28223BE20](v4);
  v113 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_24A82CE54();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItem(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v12 = &v91 - v11;
  v117 = a2;
  v118 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v13 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v14 = *(v13 + 192);
  v15 = *(a2 + 16);
  if (v15)
  {
    v99 = v10;
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v13 + 184);
    v107 = 0x800000024A843B00;
    v106 = 0x800000024A843AE0;
    v105 = 0x800000024A843AB0;
    v104 = 0x800000024A843A70;
    v103 = 0x800000024A843A50;
    v102 = 0x800000024A843A30;
    v101 = 0x800000024A8439F0;

    v110 = v17;

    LODWORD(v108) = 0;
    v18 = 0;
    *&v19 = 136315138;
    v98 = v19;
    v100 = 0xD000000000000012;
    v109 = a1;
LABEL_3:
    v20 = v18;
    do
    {
      if (v20 >= v15)
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_57;
      }

      sub_24A69F134(v16 + *(v8 + 72) * v20, v12, type metadata accessor for FMIPItem);
      if ((v12[*(v7 + 76)] & 0x40) == 0)
      {
        if (v14[1].n128_u64[0])
        {
          v22 = *(v12 + 44);
          v119 = *(v12 + 45);
          v120 = v22;
          v23 = v14;
          v24 = sub_24A6A2D48(v22, v119);
          if (v25)
          {
            v26 = v14[3].n128_u64[1] + 24 * v24;
            if (*(v26 + 8) && *(v26 + 3) != 20)
            {
              switch(*(v26 + 3))
              {
                case 6:
                  swift_bridgeObjectRelease_n();
                  break;
                default:
                  v21 = sub_24A82DC04();

                  if ((v21 & 1) == 0)
                  {
                    goto LABEL_5;
                  }

                  break;
              }

              if (qword_281515DC8 != -1)
              {
                swift_once();
              }

              v28 = sub_24A82CDC4();
              sub_24A6797D0(v28, qword_281518F88);
              v29 = v99;
              sub_24A69F134(v12, v99, type metadata accessor for FMIPItem);
              v30 = sub_24A82CD94();
              v31 = sub_24A82D504();
              v108 = v30;
              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                v95 = v32;
                v97 = swift_slowAlloc();
                aBlock = v97;
                *v32 = v98;
                v33 = (v29 + *(v7 + 56));
                v96 = v31;
                v34 = *v33;
                v35 = v33[1];

                sub_24A69F2C4(v29, type metadata accessor for FMIPItem);
                v36 = sub_24A68761C(v34, v35, &aBlock);
                v37 = v108;
                v38 = v36;

                v39 = v95;
                *(v95 + 1) = v38;
                v40 = v39;
                _os_log_impl(&dword_24A675000, v37, v96, "FMIPManager: overriding location for %s with cached BA location because it's no longer connected", v39, 0xCu);
                v41 = v97;
                sub_24A6876E8(v97);
                MEMORY[0x24C21E1D0](v41, -1, -1);
                MEMORY[0x24C21E1D0](v40, -1, -1);
              }

              else
              {

                sub_24A69F2C4(v29, type metadata accessor for FMIPItem);
              }

              v42 = v23;
              v43 = v110;
              v44 = v119;
              v45 = v120;
              if (!*(v110 + 16) || (v46 = v119, v47 = sub_24A6A2D48(v120, v119), v44 = v46, v42 = v23, (v48 & 1) == 0))
              {
                v14 = v42;
                v67 = sub_24A6A2D48(v45, v44);
                if (v68)
                {
                  v69 = v67;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  aBlock = v14;
                  if (!isUniquelyReferenced_nonNull_native)
                  {
                    sub_24A78629C();
                    v14 = aBlock;
                  }

                  sub_24A7C46D4(v69, v14);
                }

                sub_24A69F2C4(v12, type metadata accessor for FMIPItem);
                a1 = v109;
                goto LABEL_39;
              }

              v49 = *(v43 + 56);
              v50 = v44;
              v51 = (v49 + 24 * v47);
              LODWORD(v95) = *v51;
              v96 = v51[1];
              LODWORD(v97) = v51[2];
              LODWORD(v108) = v51[3];
              v52 = *(v51 + 2);
              v94 = *(v51 + 1);
              v93 = swift_isUniquelyReferenced_nonNull_native();
              aBlock = v23;
              v53 = v50;
              v55 = sub_24A6A2D48(v45, v50);
              v56 = *(v23 + 16);
              v57 = (v54 & 1) == 0;
              v58 = v56 + v57;
              if (!__OFADD__(v56, v57))
              {
                if (*(v23 + 24) < v58)
                {
                  v92 = v54;
                  sub_24A781610(v58, v93);
                  v59 = v120;
                  v60 = sub_24A6A2D48(v120, v50);
                  if ((v92 & 1) == (v61 & 1))
                  {
                    v55 = v60;
                    v14 = aBlock;
                    if ((v92 & 1) == 0)
                    {
                      goto LABEL_28;
                    }

LABEL_37:
                    v71 = v14[3].n128_u64[1] + 24 * v55;
                    v72 = *(v71 + 8);
                    *v71 = v95;
                    *(v71 + 1) = v96;
                    *(v71 + 2) = v97;
                    *(v71 + 3) = v108;
                    *(v71 + 8) = v94;
                    *(v71 + 16) = v52;

LABEL_38:
                    a1 = v109;
                    sub_24A69F2C4(v12, type metadata accessor for FMIPItem);
LABEL_39:
                    LODWORD(v108) = 1;
                    if (v18 != v15)
                    {
                      goto LABEL_3;
                    }

LABEL_45:
                    v73 = v118;

                    v120 = v14;
                    sub_24A7556C0(v14, v110);

                    a2 = v117;
                    goto LABEL_48;
                  }

                  goto LABEL_60;
                }

                v59 = v120;
                if (v93)
                {
                  v14 = aBlock;
                  if (v54)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  v92 = v54;
                  sub_24A78629C();
                  v14 = aBlock;
                  if (v92)
                  {
                    goto LABEL_37;
                  }
                }

LABEL_28:
                v14[4].n128_u64[v55 >> 6] |= 1 << v55;
                v62 = (v14[3].n128_u64[0] + 16 * v55);
                *v62 = v59;
                v62[1] = v53;
                v63 = v14[3].n128_u64[1] + 24 * v55;
                *v63 = v95;
                *(v63 + 1) = v96;
                *(v63 + 2) = v97;
                *(v63 + 3) = v108;
                *(v63 + 8) = v94;
                *(v63 + 16) = v52;
                v64 = v14[1].n128_u64[0];
                v65 = __OFADD__(v64, 1);
                v66 = v64 + 1;
                if (!v65)
                {
                  v14[1].n128_u64[0] = v66;

                  goto LABEL_38;
                }

LABEL_59:
                __break(1u);
LABEL_60:
                result = sub_24A82DC44();
                __break(1u);
                return result;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }
        }
      }

LABEL_5:
      sub_24A69F2C4(v12, type metadata accessor for FMIPItem);
      ++v20;
    }

    while (v18 != v15);
    if (v108)
    {
      a1 = v109;
      goto LABEL_45;
    }

    v120 = v14;

    a1 = v109;
    a2 = v117;
    v73 = v118;
  }

  else
  {
    v120 = *(v13 + 192);

    v73 = v118;
  }

LABEL_48:

  v74 = sub_24A75633C(a2, 4, 0);

  if (v74)
  {
    v75 = *(a1 + v73);
    swift_beginAccess();
    v76 = *(v75 + 280);
    v126 = sub_24A6A04A0;
    v127 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v123 = 1107296256;
    v124 = sub_24A699BA0;
    v125 = &unk_285DC6150;
    v77 = _Block_copy(&aBlock);

    v78 = v111;
    sub_24A82CE24();
    v121 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v79 = v113;
    v80 = v116;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v78, v79, v77);
    _Block_release(v77);
    (*(v115 + 8))(v79, v80);
    (*(v112 + 8))(v78, v114);

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_useRealtimeForItems) == 1)
    {
      v81 = (*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation);
      v82 = v81[1];
      if (v82)
      {
        v83 = v81[2];
        v84 = *v81;
        LOWORD(aBlock) = v84 & 0x101;
        BYTE2(aBlock) = BYTE2(v84) & 1;
        BYTE3(aBlock) = BYTE3(v84);
        v123 = v82;
        v124 = v83;
        v85 = v82;
        sub_24A74ACCC(&aBlock, v76, "FMIPManager: appending realtime location %{private}s", &unk_285DC6188, sub_24A7525C8, &unk_285DC61A0);
      }
    }

    v86 = *(a1 + v118);
    swift_beginAccess();
    v87 = v86[10];
    swift_beginAccess();
    v88 = v86[35];
    v89 = v86[36];

    sub_24A69D570(v87, v88, v89);

    a2 = v117;
  }

  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsResponseReceived) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsResponseReceived) = 1;
    sub_24A73C60C(a2, 0);
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = a2;

  sub_24A69CA60();
}

uint64_t sub_24A748270(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a2;
  v100 = type metadata accessor for FMIPUnknownItem(0);
  isUniquelyReferenced_nonNull_native = *(v100 - 8);
  v8 = *(isUniquelyReferenced_nonNull_native + 64);
  v9 = MEMORY[0x28223BE20](v100);
  v99 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v98 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v103 = &v78 - v12;
  v13 = sub_24A82CE54();
  isa = v13[-1].isa;
  MEMORY[0x28223BE20](v13);
  v80 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24A82CDF4();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v17 = sub_24A82CDC4();
    v18 = sub_24A6797D0(v17, qword_281518F88);

    v97 = v18;
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();
    v21 = os_log_type_enabled(v19, v20);
    v85 = a4;
    v84 = a3;
    v83 = v13;
    v82 = isa;
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *(a1 + 2);

      _os_log_impl(&dword_24A675000, v19, v20, "FMIPManager: unknownItems processing %ld", v22, 0xCu);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    else
    {
    }

    v101 = swift_allocObject();
    *(v101 + 16) = MEMORY[0x277D84F90];
    a4 = v103;
    v96 = *(a1 + 2);
    if (!v96)
    {
      break;
    }

    a3 = 0;
    v92 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationShifter;
    v24 = *(isUniquelyReferenced_nonNull_native + 80);
    v95 = &a1[(v24 + 32) & ~v24];
    v94 = "initializedSubsystems";
    v91 = v24;
    v90 = (v24 + 16) & ~v24;
    v89 = (v8 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = *(isUniquelyReferenced_nonNull_native + 72);
    *&v23 = 136315394;
    v86 = v23;
    while (1)
    {
      v105 = a3;
      sub_24A69F134(&v95[v93 * a3], a4, type metadata accessor for FMIPUnknownItem);
      v32 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v33 = sub_24A82CF94();
      v104 = [v32 initWithDescription:v33 andTimeout:60.0];

      v34 = *(a4 + *(v100 + 32));
      v107 = *(v34 + 16);
      if (v107)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_25:
      v60 = v103;
      v61 = v98;
      sub_24A69F134(v103, v98, type metadata accessor for FMIPUnknownItem);
      swift_bridgeObjectRetain_n();
      v13 = sub_24A82CD94();
      v62 = sub_24A82D504();
      if (os_log_type_enabled(v13, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock[0] = v64;
        *v63 = v86;
        sub_24A82CAA4();
        v26 = isUniquelyReferenced_nonNull_native;
        sub_24A679FDC(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v65 = sub_24A82DB84();
        v67 = v66;
        sub_24A69F2C4(v61, type metadata accessor for FMIPUnknownItem);
        v68 = sub_24A68761C(v65, v67, aBlock);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2048;
        v69 = *(v26 + 16);

        *(v63 + 14) = v69;

        _os_log_impl(&dword_24A675000, v13, v62, "FMIPManager: unknownItems shifting location for item %s, locations: %ld", v63, 0x16u);
        sub_24A6876E8(v64);
        MEMORY[0x24C21E1D0](v64, -1, -1);
        MEMORY[0x24C21E1D0](v63, -1, -1);

        v25 = v105;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        sub_24A69F2C4(v61, type metadata accessor for FMIPUnknownItem);
        v25 = v105;
        v26 = isUniquelyReferenced_nonNull_native;
      }

      a3 = v25 + 1;
      v27 = v99;
      sub_24A69F134(v60, v99, type metadata accessor for FMIPUnknownItem);
      v28 = v87;
      v29 = swift_allocObject();
      sub_24A6A2390(v27, v29 + v90, type metadata accessor for FMIPUnknownItem);
      *(v29 + v89) = v26;
      *(v29 + v88) = v101;
      v30 = v104;
      *(v29 + v28) = v104;

      v31 = v30;
      sub_24A6B0DD8(v26, sub_24A753A2C, v29);

      [v31 wait];

      sub_24A69F2C4(v60, type metadata accessor for FMIPUnknownItem);
      a4 = v60;
      if (a3 == v96)
      {
        goto LABEL_27;
      }
    }

    v8 = 0;
    a1 = (v34 + 32);
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
    v106 = v34;
    while (v8 < *(v34 + 16))
    {
      a4 = a1[3];
      v39 = *(a1 + 1);
      v40 = *(a1 + 2);
      isa = a1[2];
      v41 = a1[1];
      v108 = *a1;
      v109 = v41;
      aBlock[0] = v8;
      v42 = v39;
      a3 = sub_24A82DB84();
      v44 = v43;
      v13 = v42;
      v45 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v45;
      v46 = sub_24A6A2D48(a3, v44);
      v48 = *(v45 + 16);
      v49 = (v47 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        goto LABEL_29;
      }

      v52 = v47;
      if (*(v45 + 24) < v51)
      {
        sub_24A781610(v51, isUniquelyReferenced_nonNull_native);
        v46 = sub_24A6A2D48(a3, v44);
        if ((v52 & 1) != (v53 & 1))
        {
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

LABEL_19:
        if (v52)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v59 = v46;
      sub_24A78629C();
      v46 = v59;
      if (v52)
      {
LABEL_11:
        v35 = v46;

        isUniquelyReferenced_nonNull_native = aBlock[0];
        v36 = *(aBlock[0] + 56) + 24 * v35;
        v37 = *(v36 + 8);
        v38 = v109;
        *v36 = v108;
        *(v36 + 1) = v38;
        *(v36 + 2) = isa;
        *(v36 + 3) = a4;
        *(v36 + 8) = v13;
        *(v36 + 16) = v40;

        goto LABEL_12;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_native = aBlock[0];
      *(aBlock[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v54 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v46);
      *v54 = a3;
      v54[1] = v44;
      v55 = *(isUniquelyReferenced_nonNull_native + 56) + 24 * v46;
      v56 = v109;
      *v55 = v108;
      *(v55 + 1) = v56;
      *(v55 + 2) = isa;
      *(v55 + 3) = a4;
      *(v55 + 8) = v13;
      *(v55 + 16) = v40;

      v57 = *(isUniquelyReferenced_nonNull_native + 16);
      v50 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v50)
      {
        goto LABEL_30;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v58;
LABEL_12:
      ++v8;
      a1 += 24;
      v34 = v106;
      if (v107 == v8)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_27:
  v70 = v102;
  v71 = v78;
  sub_24A82CDE4();
  v72 = swift_allocObject();
  v72[2] = v101;
  v72[3] = v70;
  v73 = v84;
  v74 = v85;
  v72[4] = v84;
  v72[5] = v74;
  aBlock[4] = sub_24A753AE0;
  aBlock[5] = v72;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6B00;
  v75 = _Block_copy(aBlock);

  sub_24A6A7314(v73, v74);
  v76 = v80;
  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v76, v71, v75);
  _Block_release(v75);
  (*(v82 + 1))(v76, v83);
  (*(v79 + 8))(v71, v81);
}

uint64_t sub_24A748D68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v59 = a4;
  v60 = a5;
  v61 = a1;
  v7 = type metadata accessor for FMIPUnknownItem(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v53 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  if (qword_281515DC8 == -1)
  {
    goto LABEL_2;
  }

LABEL_24:
  swift_once();
LABEL_2:
  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v55 = a2;
  sub_24A69F134(a2, v16, type metadata accessor for FMIPUnknownItem);
  swift_bridgeObjectRetain_n();
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  v20 = os_log_type_enabled(v18, v19);
  v57 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v64[0] = v8;
    *v21 = 136315394;
    sub_24A82CAA4();
    sub_24A679FDC(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_24A82DB84();
    v24 = v23;
    sub_24A69F2C4(v16, type metadata accessor for FMIPUnknownItem);
    v25 = sub_24A68761C(v22, v24, v64);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    v16 = *(a3 + 16);

    *(v21 + 14) = v16;

    _os_log_impl(&dword_24A675000, v18, v19, "FMIPManager: unknownItems shifting completed for item %s, locations: %ld", v21, 0x16u);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_24A69F2C4(v16, type metadata accessor for FMIPUnknownItem);
  }

  v26 = v61 + 64;
  v27 = 1 << *(v61 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  a3 = v28 & *(v61 + 64);
  v29 = (v27 + 63) >> 6;

  v30 = 0;
  for (i = MEMORY[0x277D84F90]; a3; *(v41 + 6) = v36)
  {
LABEL_12:
    v33 = (*(v61 + 56) + 24 * (__clz(__rbit64(a3)) | (v30 << 6)));
    v34 = *v33;
    v35 = v33[1];
    a2 = v33[2];
    v16 = v33[3];
    v36 = *(v33 + 2);
    v37 = *(v33 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v34;
    v62 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      i = sub_24A77FE20(0, *(i + 2) + 1, 1, i);
    }

    v40 = *(i + 2);
    v39 = *(i + 3);
    v8 = (v40 + 1);
    if (v40 >= v39 >> 1)
    {
      i = sub_24A77FE20((v39 > 1), v40 + 1, 1, i);
    }

    *(i + 2) = v8;
    v41 = &i[24 * v40];
    v41[32] = v63;
    a3 &= a3 - 1;
    v41[33] = v35;
    v41[34] = a2;
    v41[35] = v16;
    *(v41 + 5) = v62;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v32 >= v29)
    {
      break;
    }

    a3 = *(v26 + 8 * v32);
    ++v30;
    if (a3)
    {
      v30 = v32;
      goto LABEL_12;
    }
  }

  v42 = v54;
  sub_24A69F134(v55, v54, type metadata accessor for FMIPUnknownItem);
  v43 = v58;
  FMIPUnknownItem.init(unknownItem:locations:)(v42, i, v58);
  v44 = v56;
  sub_24A69F134(v43, v56, type metadata accessor for FMIPUnknownItem);
  v45 = v59;
  swift_beginAccess();
  v46 = *(v45 + 16);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *(v45 + 16) = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_24A780670(0, v46[2] + 1, 1, v46);
    *(v45 + 16) = v46;
  }

  v48 = v60;
  v49 = v57;
  v51 = v46[2];
  v50 = v46[3];
  if (v51 >= v50 >> 1)
  {
    v46 = sub_24A780670((v50 > 1), v51 + 1, 1, v46);
  }

  v46[2] = v51 + 1;
  sub_24A6A2390(v44, v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v49[9] * v51, type metadata accessor for FMIPUnknownItem);
  *(v45 + 16) = v46;
  swift_endAccess();
  [v48 signal];
  return sub_24A69F2C4(v43, type metadata accessor for FMIPUnknownItem);
}

uint64_t sub_24A749334(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v10 = *(a2 + 16);
    v11 = *(v8 + 136);

    v11(a1, v10, ObjectType, v8);

    result = swift_unknownObjectRelease();
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_24A74942C(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = a2;
    (*(v6 + 176))(a1, &v8, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7494CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 152))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A749568(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = sub_24A82C8B4();
    v13 = *(*(v12 - 8) + 56);
    v13(v7, 1, 1, v12);
    v13(v5, 1, 1, v12);
    type metadata accessor for FMIPAlert(0);
    v14 = swift_allocObject();
    v14[1] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    v15 = (v14 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
    *v15 = 0;
    v15[1] = 0;
    sub_24A67E8FC(v7, v14 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    sub_24A67E8FC(v5, v14 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL, &unk_27EF5CCB8, &qword_24A82FDB0);
    *(v14 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = 4;
    (*(v10 + 72))(a1, v14, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A7497B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = sub_24A82CE54();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CDF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CDE4();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v18;
  v16 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v10, v14, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v19);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_24A7499E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;

  LOBYTE(a2) = sub_24A756164(a2);

  if (a2)
  {
    v14 = *(*(a1 + v12) + 240);
    v54 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v14;
    v62 = sub_24A752DA8;
    v63 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v42[1] = &v60;
    v60 = sub_24A699BA0;
    v61 = &unk_285DC6650;
    v53 = _Block_copy(&aBlock);

    sub_24A82CE24();
    v57 = MEMORY[0x277D84F90];
    v16 = sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v43 = v11;
    v17 = v8;
    v18 = v16;
    v44 = v12;
    v19 = v5;
    v20 = a1;
    v21 = sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v22 = sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v48 = v21;
    v23 = v20;
    v47 = v22;
    v49 = v18;
    sub_24A82D6B4();
    v24 = v43;
    v25 = v53;
    MEMORY[0x24C21CE90](0, v43, v7, v53);
    _Block_release(v25);
    v26 = *(v19 + 8);
    v51 = v7;
    v52 = v4;
    v50 = v19 + 8;
    v46 = v26;
    v26(v7, v4);
    v27 = *(v9 + 8);
    v28 = v24;
    v53 = v17;
    v45 = v27;
    v27(v24, v17);

    v29 = v44;
    swift_beginAccess();

    LOBYTE(v18) = sub_24A6A30A8(v30, 1);

    v31 = v28;
    if (v18)
    {
      v62 = sub_24A6A09FC;
      v63 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_24A699BA0;
      v61 = &unk_285DC66A0;
      v32 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v56 = MEMORY[0x277D84F90];
      v34 = v51;
      v33 = v52;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v31, v34, v32);
      _Block_release(v32);
      v46(v34, v33);
      v45(v31, v53);
    }

    v35 = *(v23 + v29);
    swift_beginAccess();
    v36 = *(v35 + 280);

    v37 = sub_24A75633C(v36, 3, 1);

    v38 = v51;
    v40 = v52;
    v39 = v53;
    if (v37)
    {
      v62 = sub_24A6A04A0;
      v63 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_24A699BA0;
      v61 = &unk_285DC6678;
      v41 = _Block_copy(&aBlock);

      sub_24A82CE24();
      v55 = MEMORY[0x277D84F90];
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v31, v38, v41);
      _Block_release(v41);
      v46(v38, v40);
      v45(v31, v39);
    }
  }

  return result;
}

uint64_t sub_24A74A020(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 168))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74A0BC(void *a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[36];
  swift_beginAccess();
  v10 = a1[10];
  v14[1] = a2;
  v15 = v10;
  v14[0] = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  aBlock[4] = sub_24A753BF8;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6E20;
  v11 = _Block_copy(aBlock);

  sub_24A82CE24();
  v19 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v11);
  _Block_release(v11);
  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);

  swift_beginAccess();
  v12 = a1[35];

  sub_24A69D570(v15, v12, v16);
}

uint64_t sub_24A74A3F4(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5E170, &qword_24A836D58);
    sub_24A82D574();
    (*(v3 + 152))(a1, v8, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 8);
    v7 = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v6 + 32))(a1, v8, v7, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74A594(uint64_t a1, double a2)
{
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 256);
  v26 = *(a1 + 264);
  v30 = v26;
  v27 = *(a1 + 280);
  v25 = *(a1 + 288);
  v28 = v25;
  v8 = (*(a1 + 216) >> 5) & 1;
  v9 = *(type metadata accessor for FMIPDevice(0) + 128);
  v10 = v26;
  v11 = v25;
  v12 = v10;
  sub_24A7DC368(&v29, &v27, v8, a1 + v9, &v31);

  v13 = v32;
  if (v32)
  {
    v26 = v32;
    v14 = v31;
    v15 = [v32 timestamp];
    sub_24A82C9F4();

    sub_24A82C9D4();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    if (FMIPDevice.hasLocation.getter() && (v19 = *(a1 + 256), v18 = *(a1 + 264), v20 = *(a1 + 272), v31 = v14 & 0xFF010101, v32 = v26, v18))
    {
      LOWORD(v29) = v19 & 0x101;
      BYTE2(v29) = BYTE2(v19) & 1;
      BYTE3(v29) = BYTE3(v19);
      *&v30 = v18;
      *(&v30 + 1) = v20;
      v21 = v18;
      v22 = v13;
      v23 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&v31, &v29);

      if ((v23 & 1) != 0 && a2 - v17 < 180.0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_24A74A7F0(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A82CE54();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = *a2;
  v12 = a2[1];
  v47 = a2[2];
  v13 = a2[3];
  v14 = *(a2 + 1);
  v15 = *(a2 + 2);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = v14;
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = v17;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = a1;
    v43 = v22;
    v52 = v22;
    *v21 = 136380675;
    LOBYTE(aBlock) = v51;
    BYTE1(aBlock) = v12;
    v44 = v12;
    v23 = v47;
    BYTE2(aBlock) = v47;
    BYTE3(aBlock) = v13;
    v54 = v46;
    v55 = v15;
    v42 = v19;
    v24 = FMIPLocation.debugDescription.getter();
    v26 = v13;
    v27 = v11;
    v28 = v8;
    v29 = v6;
    v30 = v3;
    v31 = sub_24A68761C(v24, v25, &v52);
    v32 = v23;
    LOBYTE(v12) = v44;

    *(v21 + 4) = v31;
    v3 = v30;
    v6 = v29;
    v8 = v28;
    v11 = v27;
    v13 = v26;
    _os_log_impl(&dword_24A675000, v18, v42, "FMIPManager: didReceive locationControler %{private}s", v21, 0xCu);
    v33 = v43;
    sub_24A6876E8(v43);
    v34 = v33;
    a1 = v45;
    MEMORY[0x24C21E1D0](v34, -1, -1);
    v35 = v21;
    v17 = v46;
    MEMORY[0x24C21E1D0](v35, -1, -1);
  }

  else
  {

    v32 = v47;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = v3;
  *(v36 + 32) = v51;
  *(v36 + 33) = v12;
  *(v36 + 34) = v32;
  *(v36 + 35) = v13;
  *(v36 + 40) = v17;
  *(v36 + 48) = v15;
  v57 = sub_24A6AEC74;
  v58 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24A699BA0;
  v56 = &unk_285DC66F0;
  v37 = _Block_copy(&aBlock);
  v38 = v17;
  v39 = a1;

  sub_24A82CE24();
  v52 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v8, v37);
  _Block_release(v37);
  (*(v50 + 8))(v8, v6);
  (*(v48 + 8))(v11, v49);
}

uint64_t sub_24A74ACCC(unsigned __int8 *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  v52 = a6;
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = sub_24A82CE54();
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = sub_24A82CDF4();
  v53 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v51 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = v14;
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v55 = v42;
    *v20 = 136380675;
    v41 = a3;
    v21 = v45;
    LOBYTE(aBlock) = v45;
    BYTE1(aBlock) = v11;
    BYTE2(aBlock) = v12;
    v40 = v11;
    v43 = v12;
    v22 = v13;
    BYTE3(aBlock) = v13;
    v57 = v17;
    v58 = v15;
    v23 = FMIPLocation.debugDescription.getter();
    v25 = v17;
    v26 = sub_24A68761C(v23, v24, &v55);

    *(v20 + 4) = v26;
    v27 = v19;
    v28 = v40;
    _os_log_impl(&dword_24A675000, v18, v27, v41, v20, 0xCu);
    v29 = v42;
    sub_24A6876E8(v42);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    v30 = v20;
    v31 = v43;
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  else
  {

    v28 = v11;
    v31 = v12;
    v22 = v13;
    v21 = v45;
    v25 = v17;
  }

  v32 = v54;
  v33 = v51;
  sub_24A82CDE4();
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = v32;
  *(v34 + 24) = v35;
  *(v34 + 32) = v21;
  *(v34 + 33) = v28;
  *(v34 + 34) = v31;
  *(v34 + 35) = v22;
  *(v34 + 40) = v25;
  *(v34 + 48) = v15;
  v60 = v50;
  v61 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_24A699BA0;
  v59 = v52;
  v36 = _Block_copy(&aBlock);
  v37 = v25;

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v9, v33, v36);
  _Block_release(v36);
  (*(v44 + 8))(v9, v48);
  (*(v53 + 8))(v33, v46);
}

void sub_24A74B0DC(uint64_t a1, void *a2, int a3, void *a4, double a5)
{
  v71 = a4;
  v74 = a3;
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v70 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FMIPItem(0);
  v13 = *(v72 - 8);
  v14 = MEMORY[0x28223BE20](v72);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v59 - v21;
  LOBYTE(a1) = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController) + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision);
  if (qword_27EF5CBD8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    if (a1 & 1 | ((byte_27EF5DEF3 & 1) == 0))
    {
      return;
    }

    v68 = v13;
    v67 = v10;
    v60 = v11;
    v61 = v8;
    v62 = v7;
    v63 = v20;
    v66 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
    v24 = *(v20 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
    a1 = *(v24 + 184);
    v10 = a2[2];
    v64 = *(v24 + 192);

    v65 = a1;

    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      a1 = *(v68 + 72);
      v73 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v7 = a2 + v73;
      v25 = v72;
      do
      {
        sub_24A69F134(v7, v22, type metadata accessor for FMIPItem);
        if ((v22[*(v25 + 76)] & 0x40) != 0)
        {
          sub_24A6A2390(v22, v19, type metadata accessor for FMIPItem);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A6FCB30(0, *(v11 + 16) + 1, 1);
            v25 = v72;
            v11 = aBlock;
          }

          v8 = *(v11 + 16);
          v27 = *(v11 + 24);
          if (v8 >= v27 >> 1)
          {
            sub_24A6FCB30((v27 > 1), v8 + 1, 1);
            v25 = v72;
            v11 = aBlock;
          }

          *(v11 + 16) = v8 + 1;
          sub_24A6A2390(v19, v11 + v73 + v8 * a1, type metadata accessor for FMIPItem);
        }

        else
        {
          sub_24A69F2C4(v22, type metadata accessor for FMIPItem);
        }

        v7 += a1;
        --v10;
      }

      while (v10);
    }

    v13 = *(v11 + 16);
    if (!v13)
    {

      v22 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    v82 = MEMORY[0x277D84F90];
    sub_24A6FCBFC(0, v13, 0);
    a2 = v71;
    if (*(v11 + 16))
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v63 = v20;
    swift_once();
    v20 = v63;
  }

  a1 = 0;
  v7 = 0;
  v22 = v82;
  v19 = (v11 + ((*(v68 + 80) + 32) & ~*(v68 + 80)));
  v73 = *(v68 + 72);
  v8 = v13 - 1;
  while (1)
  {
    sub_24A69F134(v19, v16, type metadata accessor for FMIPItem);
    sub_24A74BC28(v16, v74 & 0xFF010101, a2, &aBlock, a5);
    sub_24A69F2C4(v16, type metadata accessor for FMIPItem);
    v81 = v77;
    v79 = aBlock;
    v80 = v76;
    v82 = v22;
    v10 = *(v22 + 2);
    v28 = *(v22 + 3);
    v13 = v10 + 1;
    if (v10 >= v28 >> 1)
    {
      sub_24A6FCBFC((v28 > 1), v10 + 1, 1);
      a2 = v71;
      v22 = v82;
    }

    *(v22 + 2) = v13;
    v29 = &v22[40 * v10];
    v30 = v79;
    v31 = v80;
    *(v29 + 8) = v81;
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    if (v8 == a1)
    {
      break;
    }

    v19 += v73;
    if (++a1 >= *(v11 + 16))
    {
      goto LABEL_45;
    }
  }

LABEL_23:
  v32 = v67;
  if (*(v22 + 2))
  {
    sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
    v33 = sub_24A82D974();
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  *&aBlock = v33;

  sub_24A74DFC0(v34, 1, &aBlock);

  v35 = aBlock;
  v36 = v64;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v36;
  sub_24A752E10(v35, sub_24A74EB0C, 0, v37, &aBlock);

  v38 = aBlock;
  sub_24A7B5CFC(aBlock, v36);
  v40 = v39;

  if (v40)
  {

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v41 = sub_24A82CDC4();
    sub_24A6797D0(v41, qword_281518F88);
    v42 = sub_24A82CD94();
    v43 = sub_24A82D504();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_41;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "FMIPManager: ignoring location update since no changes were detected.";
LABEL_40:
    _os_log_impl(&dword_24A675000, v42, v43, v45, v44, 2u);
    MEMORY[0x24C21E1D0](v44, -1, -1);
LABEL_41:

    return;
  }

  v46 = sub_24A7556C0(v38, v65);

  if ((v46 & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v54 = sub_24A82CDC4();
    sub_24A6797D0(v54, qword_281518F88);
    v42 = sub_24A82CD94();
    v43 = sub_24A82D504();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_41;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "FMIPManager: ignoring location update since data manager said so.";
    goto LABEL_40;
  }

  swift_beginAccess();
  v47 = qword_281515DC8;

  if (v47 != -1)
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
    *v51 = 138412290;
    v53 = sub_24A82D224();

    *(v51 + 4) = v53;
    *v52 = v53;
    _os_log_impl(&dword_24A675000, v49, v50, "FMIPManager: items changed after realtime location %@", v51, 0xCu);
    sub_24A67F378(v52, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v52, -1, -1);
    MEMORY[0x24C21E1D0](v51, -1, -1);
  }

  else
  {
  }

  v55 = MEMORY[0x277D84F90];

  v77 = sub_24A6A04A0;
  v78 = v63;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v76 = sub_24A699BA0;
  *(&v76 + 1) = &unk_285DC61C8;
  v56 = _Block_copy(&aBlock);

  v57 = v69;
  sub_24A82CE24();
  v82 = v55;
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v58 = v62;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v57, v32, v56);
  _Block_release(v56);
  (*(v61 + 8))(v32, v58);
  (*(v70 + 8))(v57, v60);
}

void sub_24A74BC28(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v53 = a4;
  v9 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for FMIPItem(0) + 96);
  FMIPProductType.productInformation.getter(&v54);
  v13 = v57;
  if (v57)
  {
    v14 = v58;
    sub_24A67DF6C(&v54, v57);
    v15 = (*(v14 + 56))(v13, v14);
    sub_24A6876E8(&v54);
  }

  else
  {
    sub_24A67F378(&v54, &qword_27EF5DF48, &qword_24A839DA0);
    v15 = 10.0;
  }

  v16 = 20.0;
  if (v15 <= 20.0)
  {
    v16 = v15;
  }

  v17 = fmax(v16, 4.0);
  sub_24A69F134(a1 + v12, v11, type metadata accessor for FMIPProductType);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_24A67F378(v11, &qword_27EF5D360, &unk_24A836200);
    v18 = 3;
  }

  else
  {
    sub_24A69F2C4(v11, type metadata accessor for FMIPProductType);
    v18 = 1;
  }

  v50 = a2 & 0x100;
  v51 = a2 & 0x10000;
  v19 = [objc_allocWithZone(MEMORY[0x277CBFC60]) initWithBeaconType:v18 transmitPower:v17];
  v20 = objc_opt_self();
  sub_24A6BBA94(&qword_27EF5DF50, &qword_24A837168);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24A836D30;
  *(v21 + 32) = a3;
  sub_24A679170(0, &qword_27EF5D830, 0x277CE41F8);
  v22 = a3;
  v23 = sub_24A82D224();

  v52 = v19;
  v24 = [v20 applyFilterToLocationObservations:v23 options:v19];

  if (v24)
  {

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v25 = sub_24A82CDC4();
    sub_24A6797D0(v25, qword_281518F88);
    v26 = v22;
    v27 = v24;
    v28 = sub_24A82CD94();
    v29 = sub_24A82D504();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412802;
      *(v30 + 4) = v26;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v31 = v26;
      v31[1] = v24;
      *(v30 + 22) = 2048;
      *(v30 + 24) = v15;
      v32 = v26;
      v33 = v27;
      _os_log_impl(&dword_24A675000, v28, v29, "FMIPManager: Calculated TX adjusted location for %@: %@, txPower: %f.", v30, 0x20u);
      sub_24A6BBA94(&qword_27EF5D010, &qword_24A830E30);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v31, -1, -1);
      MEMORY[0x24C21E1D0](v30, -1, -1);
    }

    v34 = *(a1 + 360);
    v35 = v53;
    *v53 = *(a1 + 352);
    v35[1] = v34;
    LOBYTE(v54) = a2 & 1;
    BYTE1(v54) = BYTE1(v50);
    BYTE2(v54) = BYTE2(v51);
    BYTE3(v54) = HIBYTE(a2);
    v55 = v26;
    v56 = a5;
    v36 = v26;

    v37 = (v35 + 2);
    v38 = v27;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v39 = sub_24A82CDC4();
    sub_24A6797D0(v39, qword_281518F88);
    v40 = v22;
    v41 = sub_24A82CD94();
    v42 = sub_24A82D504();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_24A675000, v41, v42, "FMIPManager: Failed to adjust location for %@ - using default one.", v43, 0xCu);
      sub_24A67F378(v44, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v44, -1, -1);
      MEMORY[0x24C21E1D0](v43, -1, -1);
    }

    v46 = *(a1 + 360);
    v47 = v53;
    *v53 = *(a1 + 352);
    v47[1] = v46;
    LOBYTE(v54) = a2 & 1;
    BYTE1(v54) = BYTE1(v50);
    BYTE2(v54) = BYTE2(v51);
    BYTE3(v54) = HIBYTE(a2);
    v55 = v40;
    v56 = a5;
    v48 = v40;

    v37 = (v47 + 2);
    v38 = v48;
  }

  FMIPLocation.init(location:shiftedLocation:)(&v54, v38, v37);
}

uint64_t sub_24A74C1DC(_BYTE *a1, uint64_t a2, int a3, void *a4, double a5)
{
  LODWORD(v120) = a3;
  v121 = a2;
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v97[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_24A82CE54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v118 = &v97[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for FMIPDevice(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  result = MEMORY[0x28223BE20](v18);
  v23 = &v97[-v22];
  if (qword_27EF5CBD8 != -1)
  {
LABEL_54:
    v106 = v20;
    v96 = v21;
    result = swift_once();
    v21 = v96;
    v20 = v106;
  }

  if (byte_27EF5DEF3 != 1)
  {
    return result;
  }

  v24 = *(v121 + 16);
  if (!v24)
  {
    return result;
  }

  v105 = v21;
  v106 = v20;
  v117 = a4;
  v109 = v13;
  v110 = v11;
  v102 = v12;
  v116 = *(*&a1[OBJC_IVAR____TtC8FMIPCore11FMIPManager_locationController] + OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision);
  v108 = a1;
  v107 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager;
  v13 = *(*&a1[OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager] + 192);
  a4 = (v121 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
  v114 = (v120 >> 8) & 1;
  v115 = v120 & 1;
  v113 = WORD1(v120) & 1;

  v12 = 0;
  a1 = 0;
  v25 = MEMORY[0x277D84F98];
  *&v26 = 136315394;
  v104 = v26;
LABEL_5:
  v119 = v25;
  v11 = a1;
  do
  {
    if (v11 >= v24)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    a1 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_53;
    }

    sub_24A69F134(a4 + *(v16 + 72) * v11, v23, type metadata accessor for FMIPDevice);
    if ((v23[217] & 4) != 0)
    {
      v111 = v13;
      v112 = v9;
      if (v116)
      {
        if (qword_281515DC8 != -1)
        {
          swift_once();
        }

        v27 = sub_24A82CDC4();
        sub_24A6797D0(v27, qword_281518F88);
        v28 = v106;
        sub_24A69F134(v23, v106, type metadata accessor for FMIPDevice);
        v29 = v117;
        v30 = sub_24A82CD94();
        v31 = sub_24A82D504();

        v101 = v31;
        if (os_log_type_enabled(v30, v31))
        {
          v98 = BYTE3(v120);
          v32 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v122 = v100;
          *v32 = v104;
          v99 = v30;
          v103 = v8;
          v33 = *(v28 + 64);
          v34 = *(v28 + 72);

          sub_24A69F2C4(v28, type metadata accessor for FMIPDevice);
          v35 = sub_24A68761C(v33, v34, &v122);
          v8 = v103;

          *(v32 + 4) = v35;
          *(v32 + 12) = 2080;
          LOBYTE(aBlock) = v115;
          BYTE1(aBlock) = v114;
          BYTE2(aBlock) = v113;
          BYTE3(aBlock) = v98;
          v124 = v29;
          v125 = *&a5;
          v36 = FMIPLocation.debugDescription.getter();
          v38 = sub_24A68761C(v36, v37, &v122);

          *(v32 + 14) = v38;
          v39 = v99;
          _os_log_impl(&dword_24A675000, v99, v101, "FMIPManager: trimming realtime location for %s because of coarse location %s", v32, 0x16u);
          v40 = v100;
          swift_arrayDestroy();
          MEMORY[0x24C21E1D0](v40, -1, -1);
          MEMORY[0x24C21E1D0](v32, -1, -1);
        }

        else
        {

          sub_24A69F2C4(v28, type metadata accessor for FMIPDevice);
        }

        v25 = v119;
        if (*(v23 + 3))
        {
          v60 = *(v23 + 2);
          v61 = *(v23 + 3);
        }

        else
        {
          v60 = *v23;
          v61 = *(v23 + 1);
        }

        v76 = sub_24A6A2D48(v60, v61);
        v78 = v77;

        if (v78)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v25;
          v13 = v111;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A78629C();
            v25 = aBlock;
          }

          sub_24A7C46D4(v76, v25);
          sub_24A69F2C4(v23, type metadata accessor for FMIPDevice);
        }

        else
        {
          sub_24A69F2C4(v23, type metadata accessor for FMIPDevice);
          v13 = v111;
        }

        v9 = v112;
LABEL_44:
        v12 = 1;
        if (a1 != v24)
        {
          goto LABEL_5;
        }

        goto LABEL_48;
      }

      v103 = v8;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v41 = sub_24A82CDC4();
      sub_24A6797D0(v41, qword_281518F88);
      v42 = v105;
      sub_24A69F134(v23, v105, type metadata accessor for FMIPDevice);
      v43 = v117;
      v44 = sub_24A82CD94();
      v45 = sub_24A82D504();
      v100 = v43;

      v46 = os_log_type_enabled(v44, v45);
      v101 = BYTE3(v120);
      if (v46)
      {
        v47 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v122 = v99;
        *v47 = v104;
        v98 = v45;
        v48 = *(v42 + 64);
        v49 = *(v42 + 72);

        sub_24A69F2C4(v42, type metadata accessor for FMIPDevice);
        v50 = sub_24A68761C(v48, v49, &v122);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        LOBYTE(aBlock) = v115;
        BYTE1(aBlock) = v114;
        BYTE2(aBlock) = v113;
        BYTE3(aBlock) = v101;
        v51 = v100;
        v124 = v100;
        v125 = *&a5;
        v52 = FMIPLocation.debugDescription.getter();
        v54 = sub_24A68761C(v52, v53, &v122);

        *(v47 + 14) = v54;
        _os_log_impl(&dword_24A675000, v44, v98, "FMIPManager: using realtime location for %s. Location: %s", v47, 0x16u);
        v55 = v99;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v55, -1, -1);
        MEMORY[0x24C21E1D0](v47, -1, -1);

        v56 = v51;
        v57 = *(v23 + 3);
        if (v57)
        {
LABEL_20:
          v58 = *(v23 + 2);
          v59 = v57;
          goto LABEL_26;
        }
      }

      else
      {

        sub_24A69F2C4(v42, type metadata accessor for FMIPDevice);
        v56 = v100;
        v57 = *(v23 + 3);
        if (v57)
        {
          goto LABEL_20;
        }
      }

      v58 = *v23;
      v59 = *(v23 + 1);

LABEL_26:
      v99 = v56;

      v62 = v119;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v62;
      v100 = v58;
      v64 = sub_24A6A2D48(v58, v59);
      v66 = v62[1].n128_i64[0];
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        __break(1u);
        goto LABEL_56;
      }

      v70 = v65;
      if (v62[1].n128_u64[1] >= v69)
      {
        if ((v63 & 1) == 0)
        {
          v80 = v64;
          sub_24A78629C();
          v64 = v80;
          v9 = v112;
          if (v70)
          {
            goto LABEL_32;
          }

LABEL_41:
          v25 = aBlock;
          aBlock[4].n128_u64[v64 >> 6] |= 1 << v64;
          v81 = (v25[3].n128_u64[0] + 16 * v64);
          *v81 = v100;
          v81[1] = v59;
          v82 = v25[3].n128_u64[1] + 24 * v64;
          v83 = v114;
          *v82 = v115;
          *(v82 + 1) = v83;
          *(v82 + 2) = v113;
          *(v82 + 3) = v101;
          *(v82 + 8) = v99;
          *(v82 + 16) = a5;
          sub_24A69F2C4(v23, type metadata accessor for FMIPDevice);
          v84 = v25[1].n128_i64[0];
          v68 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (!v68)
          {
            v25[1].n128_u64[0] = v85;
            goto LABEL_43;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_24A781610(v69, v63);
        v64 = sub_24A6A2D48(v100, v59);
        if ((v70 & 1) != (v71 & 1))
        {
          goto LABEL_57;
        }
      }

      v9 = v112;
      if (v70)
      {
LABEL_32:
        v72 = v64;

        v73 = aBlock[3].n128_u64[1] + 24 * v72;
        v25 = aBlock;
        v74 = *(v73 + 8);
        v75 = v114;
        *v73 = v115;
        *(v73 + 1) = v75;
        *(v73 + 2) = v113;
        *(v73 + 3) = v101;
        *(v73 + 8) = v99;
        *(v73 + 16) = a5;

        sub_24A69F2C4(v23, type metadata accessor for FMIPDevice);
LABEL_43:
        v8 = v103;
        v13 = v111;
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    sub_24A69F2C4(v23, type metadata accessor for FMIPDevice);
    ++v11;
  }

  while (a1 != v24);
  if ((v12 & 1) == 0)
  {
  }

  v25 = v119;
LABEL_48:

  v86 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v13;
  sub_24A752E10(v25, sub_24A74EB0C, 0, v86, &aBlock);
  swift_bridgeObjectRelease_n();
  v87 = aBlock;
  v88 = v108;
  v89 = *(*&v108[v107] + 184);

  v90 = sub_24A7556C0(v87, v89);

  v91 = v109;
  v92 = v110;
  if (v90)
  {
    v120 = *&v88[OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue];
    v93 = swift_allocObject();
    *(v93 + 16) = v121;
    *(v93 + 24) = v88;
    v127 = sub_24A75315C;
    v128 = v93;
    aBlock = MEMORY[0x277D85DD0];
    v124 = 1107296256;
    v125 = sub_24A699BA0;
    v126 = &unk_285DC6790;
    v94 = _Block_copy(&aBlock);

    v95 = v118;
    sub_24A82CE24();
    v122 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v95, v92, v94);
    _Block_release(v94);
    (*(v9 + 8))(v92, v8);
    (v91->n128_u64[1])(v95, v102);
  }

  return result;
}

uint64_t sub_24A74CF68(uint64_t a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);

  v4 = sub_24A82CD94();
  v5 = sub_24A82D504();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    type metadata accessor for FMIPDevice(0);
    v8 = sub_24A82D224();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPManager: devices changed after realtime location %@", v6, 0xCu);
    sub_24A67F378(v7, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v7, -1, -1);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  v9 = a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v11 + 32))(a2, v13, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74D184()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v52 - v3;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: resetDataDependantControllers", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isDevicesSnapshotMode))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode);
  }

  if (qword_27EF5CBB8 != -1)
  {
    swift_once();
  }

  v9 = qword_27EF5DEE8;
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = sub_24A82CFC4();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = sub_24A67A190(v12, v14, v9);

  v16 = v15 & ~v8;
  v17 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v18 = *(v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  v19 = *(v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);
  v20 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
  *&v57[0] = *(v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  v21 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v22 = sub_24A82CAE4();
  v23 = *(v22 - 8);
  v24 = v17 + v21;
  v25 = v53;
  (*(v23 + 16))(v53, v24, v22);
  (*(v23 + 56))(v25, 0, 1, v22);
  v26 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  type metadata accessor for FMIPDataManager(0);
  swift_allocObject();

  v27 = sub_24A67CF18(v18, v19, v57, v25, v16 & 1, v8, v26);
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) = v27;

  v28 = *(v17 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider);

  v28(v57, v29);

  v30 = (v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_interactionController);
  swift_beginAccess();
  sub_24A6876E8(v30);
  sub_24A696E80(v57, v30);
  swift_endAccess();
  v31 = &unk_281514000;
  if (*(v17 + v20))
  {
    sub_24A698230(v30, v57);
    v33 = type metadata accessor for FMAPSConnectionHandler();
    if (qword_27EF5CC20 != -1)
    {
      swift_once();
    }

    v34 = qword_27EF78F30;
    v35 = *algn_27EF78F38;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v37 = sub_24A6987EC(0xD00000000000001ELL, 0x800000024A846B70, v34, 0, 0, v33, ObjectType, v35);
    type metadata accessor for FMIPRefreshingController(0);
    swift_allocObject();
    *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController) = sub_24A6991A4(v57, v37);

    v31 = &unk_281514000;
    v38 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_ownerSession);
    sub_24A698230(v30, v57);
    sub_24A67E964(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_authenticationUIProvider, v56, &qword_27EF5D608, &qword_24A837E90);
    type metadata accessor for FMIPDeviceActionsController();
    memset(v54, 0, sizeof(v54));
    v55 = 0;
    swift_allocObject();
    v32 = sub_24A6983D8(v38, v57, v56, v54);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController) = 0;

    v32 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_actionsController) = v32;

  v39 = *(v1 + v31[184]);
  sub_24A696E98(v57);
  type metadata accessor for FMIPBeaconRefreshingController(0);
  swift_allocObject();
  v40 = v39;
  v41 = sub_24A6972BC(v40, v57);
  v42 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController;
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController) = v41;

  type metadata accessor for FMIPSafeLocationRefreshingController();
  v43 = swift_allocObject();
  v44 = sub_24A697EF4(v40, v43);
  v45 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController;
  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_safeLocationRefreshingController) = v44;

  type metadata accessor for FMIPItemActionsController();
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemActionsController) = sub_24A699828(v40, v27);

  *(v27 + 40) = &off_285DC5E58;
  swift_unknownObjectWeakAssign();
  sub_24A69A398();
  swift_beginAccess();
  v46 = v30[3];
  v47 = v30[4];
  sub_24A69A6C4(v30, v46);
  v48 = *(v47 + 16);
  v49 = swift_unknownObjectRetain();
  v48(v49, &off_285DC5E38, v46, v47);
  swift_endAccess();

  v50 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (v50)
  {
    *(v50 + 40) = &off_285DC5D78;
    swift_unknownObjectWeakAssign();
  }

  *(*(v1 + v42) + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate + 8) = &off_285DC5DB8;
  swift_unknownObjectWeakAssign();
  *(*(v1 + v45) + 24) = &off_285DC5E28;
  return swift_unknownObjectWeakAssign();
}

void sub_24A74D8A0(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A82CE54();
  v6 = *(v5 - 8);
  v17 = v5;
  v18 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v25 = sub_24A6A09FC;
  v26 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v16[3] = &v23;
  v23 = sub_24A699BA0;
  v24 = &unk_285DC6560;
  v9 = _Block_copy(&aBlock);

  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  v16[1] = sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v16[0] = sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v4, v9);
  _Block_release(v9);
  v10 = *(v19 + 8);
  v19 += 8;
  v10(v4, v2);
  v11 = v17;
  v12 = *(v18 + 8);
  v18 += 8;
  v12(v8, v17);

  v25 = sub_24A6A04A0;
  v26 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_24A699BA0;
  v24 = &unk_285DC6588;
  v13 = _Block_copy(&aBlock);

  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v4, v13);
  _Block_release(v13);
  v10(v4, v2);
  v12(v8, v11);

  v14 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
  swift_beginAccess();
  v15 = *(a1 + v14);
  *(a1 + v14) = 0;
  v20 = v15;
  sub_24A6ADCC4(&v20);
  FMIPManager.initialize()();
  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingItems) & 1) != 0 || *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isRefreshingDevices) == 1)
  {
    v20 = *(*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
    FMIPManager.startRefreshing(subsystems:)(&v20);
  }
}

double sub_24A74DD04@<D0>(void *a1@<X8>)
{
  *a1 = *(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) + 176);

  return result;
}

double sub_24A74DD30@<D0>(void *a1@<X8>)
{
  *a1 = *(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) + 288);

  return result;
}

double sub_24A74DD5C@<D0>(void *a1@<X8>)
{
  *a1 = *(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) + 296);

  return result;
}

double sub_24A74DD88@<D0>(void *a1@<X8>)
{
  *a1 = *(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) + 240);

  return result;
}

void *sub_24A74DDDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A6BBA94(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24A74DED8(uint64_t a1, uint64_t a2)
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

  sub_24A6BBA94(&qword_27EF5DF50, &qword_24A837168);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void sub_24A74DF88(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_24A74DFC0(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_24A82DC44();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v3 + v5 + 16);
    v37[0] = *(v3 + v5);
    v37[1] = v6;
    v38 = *(v3 + v5 + 32);
    v7 = v37[0];
    v33 = v6;
    v8 = BYTE1(v6);
    v9 = BYTE2(v6);
    v10 = BYTE3(v6);
    v11 = v38;
    v12 = *(&v6 + 1);
    sub_24A67E964(v37, v36, &qword_27EF5EF70, &unk_24A835290);
    if (!*(&v7 + 1))
    {
      goto LABEL_18;
    }

    v31 = v8;
    v32 = v12;
    v37[0] = v7;
    v13 = *a3;
    v15 = sub_24A6A2D48(v7, *(&v7 + 1));
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_20;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_24A78629C();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v22 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v22[6] + 16 * v15) = v7;
    v23 = v22[7] + 24 * v15;
    *v23 = v33 & 1;
    *(v23 + 1) = v31 & 1;
    *(v23 + 2) = v9 & 1;
    *(v23 + 3) = v10;
    *(v23 + 8) = v32;
    *(v23 + 16) = v11;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    ++v4;
    v22[2] = v26;
    v5 += 40;
    a2 = 1;
    v3 = a1;
    if (v30 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_24A781610(v18, a2 & 1);
  v20 = sub_24A6A2D48(v7, *(&v7 + 1));
  if ((v19 & 1) != (v21 & 1))
  {
    goto LABEL_22;
  }

  v15 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A844730);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](39, 0xE100000000000000);
  sub_24A82D934();
  __break(1u);
}

uint64_t sub_24A74E32C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPBeaconShare(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_24A69F134(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for FMIPBeaconShare);
      v24 = v23;
      v25 = v31;
      sub_24A6A2390(v24, v31, type metadata accessor for FMIPBeaconShare);
      sub_24A6A2390(v25, a2, type metadata accessor for FMIPBeaconShare);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24A74E590(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A74E600(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24A82CAA4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_24A74E8DC(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_24A82D704();
  sub_24A679170(0, a5, a6);
  sub_24A6AB7EC(a7, a5, a6);
  result = sub_24A82D414();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_24A82D784())
      {
        goto LABEL_30;
      }

      sub_24A679170(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

id sub_24A74EB0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 17);
  v5 = *(a1 + 18);
  v6 = *(a1 + 19);
  v9 = a1[3];
  v7 = a1[4];
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = v4;
  *(a2 + 18) = v5;
  *(a2 + 19) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v7;
  *a2 = v3;
  *(a2 + 8) = v2;

  return v9;
}

uint64_t sub_24A74EB80(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPManager: beaconSharingController didUpdateSharingLimits", v8, 2u);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  v9 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v13[0] = v3;
    v13[1] = v4;
    (*(v11 + 192))(v2, v13, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74ECD8(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: beaconSharingController didUpdateShares", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = sub_24A74DDDC(v11, 0, &qword_27EF5DF88, &unk_24A8371B0, type metadata accessor for FMIPBeaconShare);
      v13 = *(type metadata accessor for FMIPBeaconShare(0) - 8);
      v14 = sub_24A74E32C(&v17, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, a1);
      v15 = v17;

      result = sub_24A6BAFBC(v15);
      if (v14 != v11)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    ObjectType = swift_getObjectType();
    (*(v10 + 184))(v2, v12, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A74EF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24A6CADE0;

  return sub_24A73A174();
}

uint64_t sub_24A74F050()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24A6CADE0;

  return sub_24A73AF10();
}

uint64_t sub_24A74F11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A73DBE0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24A74F1E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  v3 = *(v2 + 120);
  v5 = *(v2 + 152);
  v11 = *(v2 + 136);
  v4 = v11;
  v12 = v5;
  v13 = *(v2 + 168);
  v6 = v13;
  v7 = *(v2 + 104);
  v10[0] = *(v2 + 88);
  v10[1] = v7;
  v10[2] = v3;
  *a1 = v10[0];
  *(a1 + 16) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  return sub_24A67E964(v10, v9, &qword_27EF5DEF8, &unk_24A836D40);
}

uint64_t sub_24A74F290(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

unint64_t sub_24A74F318()
{
  result = qword_27EF5DF10;
  if (!qword_27EF5DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF10);
  }

  return result;
}

unint64_t sub_24A74F370()
{
  result = qword_27EF5DF18;
  if (!qword_27EF5DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF18);
  }

  return result;
}

unint64_t sub_24A74F3C8()
{
  result = qword_27EF5DF20;
  if (!qword_27EF5DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF20);
  }

  return result;
}

unint64_t sub_24A74F420()
{
  result = qword_27EF5DF28;
  if (!qword_27EF5DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF28);
  }

  return result;
}

uint64_t sub_24A74F474@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_24A74F510()
{
  v1 = v0;
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: garbageCollectorDidPurgeAccountRelatedFiles", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  sub_24A74D184();
  sub_24A82CDE4();
  aBlock[4] = sub_24A752D90;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6538;
  v14 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v5, v9, v14);
  _Block_release(v14);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void sub_24A74F7E0()
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
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPManager: willTriggerLastLocationPrompt", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedInstance];
  v8[4] = sub_24A753B80;
  v8[5] = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A7FD664;
  v8[3] = &unk_285DC6D08;
  v7 = _Block_copy(v8);

  [v6 lowBatteryLocateEnabledWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_24A74F980(void *a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  v12 = a1;
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v9;
    v16 = v15;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v16 = 136315138;
    aBlock[6] = a1;
    v17 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v18 = sub_24A82D024();
    v38 = v14;
    v20 = a1;
    v21 = v7;
    v22 = v2;
    v23 = v8;
    v24 = v5;
    v25 = v4;
    v26 = sub_24A68761C(v18, v19, aBlock);

    *(v16 + 4) = v26;
    v4 = v25;
    v5 = v24;
    v8 = v23;
    v2 = v22;
    v7 = v21;
    a1 = v20;
    _os_log_impl(&dword_24A675000, v13, v38, "FMIPManager: initializationDidFail %s", v16, 0xCu);
    v27 = v39;
    sub_24A6876E8(v39);
    MEMORY[0x24C21E1D0](v27, -1, -1);
    v28 = v16;
    v9 = v40;
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  v29 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 24))(v2, a1, ObjectType, v31);
    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v33 = v41;
    sub_24A82CDE4();
    v34 = swift_allocObject();
    *(v34 + 16) = v2;
    *(v34 + 24) = a1;
    aBlock[4] = sub_24A753C60;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6F60;
    v35 = _Block_copy(aBlock);
    v36 = a1;

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v7, v33, v35);
    _Block_release(v35);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v33, v8);
  }

  return result;
}

uint64_t sub_24A74FDAC()
{
  v1 = v0;
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: didInitialize", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  sub_24A82CDE4();
  aBlock[4] = sub_24A753C00;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6F10;
  v14 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v5, v9, v14);
  _Block_release(v14);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  v15 = v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_siriDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v17 + 8))(v1, v19[1], ObjectType, v17);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A750128(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = v2;
    v17 = v9;
    v18 = v5;
    v19 = v8;
    v20 = a1;
    v21 = v4;
    v22 = v15;
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: didReceiveDevices", v15, 2u);
    v23 = v22;
    v4 = v21;
    a1 = v20;
    v8 = v19;
    v5 = v18;
    v9 = v17;
    v2 = v16;
    v7 = v30;
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  if (*(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider) + 16))
  {
    v24 = *(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_connectionStateProvider) + 16);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v25 = sub_24A6A1BA4(a1, v24);

  sub_24A82CDE4();
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  *(v26 + 24) = v25;
  aBlock[4] = sub_24A753B88;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6D58;
  v27 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v7, v11, v27);
  _Block_release(v27);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_24A750480(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v27 = sub_24A82CE54();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v32 = a1[2];
  v33 = v12;
  v34 = a1[4];
  v35 = *(a1 + 10);
  v13 = a1[1];
  v30 = *a1;
  v31 = v13;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v3;
    v18 = v17;
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPManager: didReceiveUserInfos", v17, 2u);
    v3 = v25;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v19 = v26;
  sub_24A82CDE4();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a2;
  v21 = v33;
  *(v20 + 64) = v32;
  *(v20 + 80) = v21;
  *(v20 + 96) = v34;
  *(v20 + 112) = v35;
  v22 = v31;
  *(v20 + 32) = v30;
  *(v20 + 48) = v22;
  aBlock[4] = sub_24A753B50;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6BF0;
  v23 = _Block_copy(aBlock);

  sub_24A6EF948(&v30, v28);
  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v19, v23);
  _Block_release(v23);
  (*(v6 + 8))(v8, v27);
  (*(v10 + 8))(v19, v9);
}

uint64_t sub_24A7507F8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didUpdateRangingParameters", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = v3;
    (*(v10 + 160))(v2, &v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A750950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);
  v14 = *(v7 + 16);
  v41 = a1;
  v14(v12, a1, v6);
  v14(v10, a2, v6);
  swift_bridgeObjectRetain_n();
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = a2;
    v18 = v17;
    v38 = swift_slowAlloc();
    v43[0] = v38;
    *v18 = 136315650;
    v19 = sub_24A82C944();
    v40 = a3;
    v21 = v20;
    v22 = *(v7 + 8);
    v22(v12, v6);
    v23 = sub_24A68761C(v19, v21, v43);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = sub_24A82C944();
    v26 = v25;
    v22(v10, v6);
    v27 = sub_24A68761C(v24, v26, v43);
    a3 = v40;

    *(v18 + 14) = v27;
    *(v18 + 22) = 2048;
    v28 = *(a3 + 16);

    *(v18 + 24) = v28;

    _os_log_impl(&dword_24A675000, v15, v16, "FMIPManager: didRefresh startDate: %s, endDate: %s, tapContext: %ld", v18, 0x20u);
    v29 = v38;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v29, -1, -1);
    v30 = v18;
    a2 = v39;
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v31 = *(v7 + 8);
    v31(v10, v6);
    v31(v12, v6);
  }

  v32 = v42;
  v33 = v42 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v35 = v41;
  if (result)
  {
    v36 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    (*(v36 + 80))(v32, v35, a2, a3, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A750CF8(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);

  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_24A82CF14();
    v11 = sub_24A68761C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didReceive beacon locations %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  sub_24A6B0DD8(a1, sub_24A7512D4, v2);
}

uint64_t sub_24A750EB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CDF4();
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v8;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    sub_24A82CAA4();
    type metadata accessor for FMIPDeviceConnectedState(0);
    v29 = v5;
    v18 = v4;
    sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v19 = sub_24A82CF04();
    v21 = sub_24A68761C(v19, v20, aBlock);

    *(v15 + 4) = v21;
    v4 = v18;
    v5 = v29;
    _os_log_impl(&dword_24A675000, v12, v13, "FMIPManager: didReceive deviceConnectedStates: %s", v15, 0xCu);
    sub_24A6876E8(v17);
    v22 = v17;
    v8 = v27;
    MEMORY[0x24C21E1D0](v22, -1, -1);
    v23 = v15;
    v2 = v28;
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  sub_24A82CDE4();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = a1;
  aBlock[4] = sub_24A751288;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC5F70;
  v25 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v7, v10, v25);
  _Block_release(v25);
  (*(v5 + 8))(v7, v4);
  (*(v30 + 8))(v10, v8);
}

void sub_24A75131C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isItemsSnapshotMode) == 1 && (*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsLocatedResponseReceived) & 1) == 0)
  {
    v3 = *(v1 + 24);
    *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_snapshotItemsLocatedResponseReceived) = 1;
    sub_24A73D388(v3, 0);
  }
}

uint64_t sub_24A751378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7513DC(uint64_t a1)
{
  v2 = v1;
  v30 = sub_24A82CE54();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v14;
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v14 = 136315138;
    sub_24A82CAA4();
    v28 = v12;
    sub_24A679FDC(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v15 = sub_24A82CF04();
    v17 = sub_24A68761C(v15, v16, aBlock);
    v26 = v13;
    v18 = v17;

    v19 = v27;
    *(v27 + 1) = v18;
    v20 = v28;
    _os_log_impl(&dword_24A675000, v28, v26, "FMIPManager: didReceive beaconTypes: %s", v19, 0xCu);
    v21 = v29;
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v21, -1, -1);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  else
  {
  }

  sub_24A82CDE4();
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = a1;
  aBlock[4] = sub_24A752D34;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC62E0;
  v23 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v6, v10, v23);
  _Block_release(v23);
  (*(v4 + 8))(v6, v30);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_24A7517CC(uint64_t a1)
{
  v3 = sub_24A82CE54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CDE4();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_24A752CE8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6268;
  v12 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v6, v10, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_24A751A34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v6 = v5;
  v8 = sub_24A82CE54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CDF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);

  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v9;
    v22 = v12;
    v23 = v21;
    *v20 = 138412290;
    type metadata accessor for FMIPItem(0);
    v24 = sub_24A82D224();
    *(v20 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&dword_24A675000, v17, v18, v32, v20, 0xCu);
    sub_24A67F378(v23, &qword_27EF5D010, &qword_24A830E30);
    v25 = v23;
    v12 = v22;
    v9 = v30;
    MEMORY[0x24C21E1D0](v25, -1, -1);
    v26 = v20;
    v8 = v31;
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  sub_24A82CDE4();
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = a1;
  aBlock[4] = v34;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v35;
  v28 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v11, v15, v28);
  _Block_release(v28);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_24A751D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A82CDF4();
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);

  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = a2;
    v19 = a3;
    v20 = v18;
    *v17 = 138412290;
    type metadata accessor for FMIPUnknownItem(0);
    v21 = sub_24A82D224();
    *(v17 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPManager: didReceive unknownItems %@", v17, 0xCu);
    sub_24A67F378(v20, &qword_27EF5D010, &qword_24A830E30);
    v22 = v20;
    a3 = v19;
    a2 = v27;
    MEMORY[0x24C21E1D0](v22, -1, -1);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v4;
  v23[4] = a2;
  v23[5] = a3;
  aBlock[4] = sub_24A753A20;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6A60;
  v24 = _Block_copy(aBlock);

  sub_24A6A7314(a2, a3);
  sub_24A82CE24();
  v31 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v10, v24);
  _Block_release(v24);
  (*(v30 + 8))(v10, v8);
  (*(v28 + 8))(v13, v29);
}

uint64_t sub_24A7521A8(char *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v15 = 136315138;
    LOBYTE(v32) = v11;
    v16 = sub_24A82D024();
    v29 = v5;
    v18 = v10;
    v19 = v7;
    v20 = v4;
    v21 = v2;
    v22 = sub_24A68761C(v16, v17, aBlock);
    v5 = v29;

    *(v15 + 4) = v22;
    v2 = v21;
    v4 = v20;
    v7 = v19;
    v10 = v18;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: didReceive separation monitoring state: %s", v15, 0xCu);
    v23 = v28;
    sub_24A6876E8(v28);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v11;
  aBlock[4] = sub_24A7525B4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC60D8;
  v25 = _Block_copy(aBlock);

  sub_24A82CE24();
  v32 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v7, v25);
  _Block_release(v25);
  (*(v5 + 8))(v7, v4);
  (*(v30 + 8))(v10, v31);
}

void sub_24A7525E0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v24 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
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
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    LOBYTE(v26) = v9;
    v15 = sub_24A82D024();
    v22 = v6;
    v17 = v2;
    v18 = sub_24A68761C(v15, v16, aBlock);
    v6 = v22;

    *(v13 + 4) = v18;
    v2 = v17;
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: didReceive clientConfiguration: %{public}s", v13, 0xCu);
    sub_24A6876E8(v14);
    MEMORY[0x24C21E1D0](v14, -1, -1);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  if (v9)
  {
    aBlock[4] = sub_24A753BE8;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6DA8;
    v19 = _Block_copy(aBlock);

    v20 = v24;
    sub_24A82CE24();
    v26 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v20, v6, v19);
    _Block_release(v19);
    (*(v23 + 8))(v6, v4);
    (*(v25 + 8))(v20, v7);
  }
}

uint64_t sub_24A7529CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = v2;
    v17 = v5;
    v18 = a1;
    v19 = v8;
    v20 = v4;
    v21 = v15;
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPManager: dataManager updated items group", v15, 2u);
    v22 = v21;
    v4 = v20;
    v8 = v19;
    a1 = v18;
    v5 = v17;
    v2 = v16;
    v9 = v27;
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  sub_24A82CDE4();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v2;
  aBlock[4] = sub_24A753BF0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6DF8;
  v24 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v7, v11, v24);
  _Block_release(v24);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_24A752DB0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A752E10(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v48 = v10;
  v49 = v6;
  while (1)
  {
    v14 = v9;
    v15 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(a1 + 56) + 24 * v17;
    LOBYTE(v18) = *v21;
    v22 = *(v21 + 1);
    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = *(v21 + 8);
    v26 = *(v21 + 16);
    *&v58 = v20;
    *(&v58 + 1) = v19;
    LOBYTE(v59) = v18;
    BYTE1(v59) = v22;
    BYTE2(v59) = v23;
    BYTE3(v59) = v24;
    *(&v59 + 1) = v25;
    v60 = v26;

    v27 = v25;
    a2(&v63, &v58);
    v61[0] = v58;
    v61[1] = v59;
    v62 = v60;
    sub_24A67F378(v61, &qword_27EF5DF40, &qword_24A837160);
    v28 = v64;
    if (!v64)
    {
LABEL_22:
      sub_24A6BAFBC(a1);
    }

    v29 = v63;
    v30 = v65;
    v53 = v66;
    v54 = v67;
    v55 = v68;
    v56 = v69;
    v31 = v70;
    v32 = *a5;
    v34 = sub_24A6A2D48(v63, v64);
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
        sub_24A78629C();
      }
    }

    else
    {
      sub_24A781610(v37, a4 & 1);
      v39 = sub_24A6A2D48(v29, v28);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v52 = (v14 - 1) & v14;
    v41 = *a5;
    if (v38)
    {

      v12 = v41[7] + 24 * v34;
      v13 = *(v12 + 8);
      *v12 = v30;
      *(v12 + 1) = v53;
      *(v12 + 2) = v54;
      *(v12 + 3) = v55;
      *(v12 + 8) = v56;
      *(v12 + 16) = v31;
    }

    else
    {
      v41[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v41[6] + 16 * v34);
      *v42 = v29;
      v42[1] = v28;
      v43 = v41[7] + 24 * v34;
      *v43 = v30;
      *(v43 + 1) = v53;
      *(v43 + 2) = v54;
      *(v43 + 3) = v55;
      *(v43 + 8) = v56;
      *(v43 + 16) = v31;
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_25;
      }

      v41[2] = v46;
    }

    a4 = 1;
    v11 = v15;
    v10 = v48;
    v6 = v49;
    v9 = v52;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_22;
    }

    v14 = *(v6 + 8 * v15);
    ++v16;
    if (v14)
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
  result = sub_24A82DC44();
  __break(1u);
  return result;
}

uint64_t sub_24A7531F4()
{
  v1 = type metadata accessor for FMIPDevice(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v35 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  if (*(v0 + v3 + 472))
  {
  }

  v5 = v4 + v1[28];
  v6 = type metadata accessor for FMIPPlaySoundMetadata(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *(v6 + 20);
    v8 = sub_24A82CA34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v4 + v1[29];
  v10 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 48);
    v12 = sub_24A82CA34();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  v13 = v4 + v1[30];
  v14 = type metadata accessor for FMIPLockMetadata(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = *(v14 + 20);
    v16 = sub_24A82CA34();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  v17 = v4 + v1[31];
  v18 = type metadata accessor for FMIPEraseMetadata(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    v20 = sub_24A82CA34();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  v21 = v4 + v1[32];
  v22 = type metadata accessor for FMIPItemGroup(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v23 = v21 + *(v22 + 48);
    v24 = type metadata accessor for FMIPItemLostModeMetadata(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_24A82CA34();
      (*(*(v26 - 8) + 8))(v23 + v25, v26);
    }
  }

  v27 = v1[39];
  v28 = sub_24A82CA34();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (!v30(v4 + v27, 1, v28))
  {
    (*(v29 + 8))(v4 + v27, v28);
  }

  v31 = v1[40];
  if (!v30(v4 + v31, 1, v28))
  {
    (*(v29 + 8))(v4 + v31, v28);
  }

  v32 = v1[41];
  if (!v30(v4 + v32, 1, v28))
  {
    (*(v29 + 8))(v4 + v32, v28);
  }

  v33 = v1[42];
  if (!v30(v4 + v33, 1, v28))
  {
    (*(v29 + 8))(v4 + v33, v28);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v35, v2 | 7);
}

uint64_t sub_24A753910(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_24A753990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDevice(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A753A2C(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPUnknownItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A748D68(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_24A753AEC(void (*a1)(void))
{
  a1(*(v1 + 16));

  if (*(v1 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_24A753C08(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

unint64_t sub_24A753CAC()
{
  result = qword_27EF5DF90;
  if (!qword_27EF5DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DF90);
  }

  return result;
}

unint64_t FMDemoManager.DemoContext.assetFilename.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t FMDemoManager.DemoContext.userDefaultsKey.getter()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t FMDemoManager.DemoContext.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7540E8()
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](0);
  return sub_24A82DD24();
}

uint64_t sub_24A754154(uint64_t a1)
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](0);
  return sub_24A82DD24();
}

void sub_24A7541B0()
{
  type metadata accessor for FMDemoManager();
  v4 = 0;
  v0 = 0;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v1 = objc_opt_self();
    v2 = sub_24A82CF94();
    v3 = sub_24A82CF94();
    v0 = [v1 BOOLForKey:v2 inDomain:v3];
  }

  byte_27EF5DF98 = v0;
}

id static FMDemoManager.hasDemoModeUserDefault(for:)(_BYTE *a1)
{
  v1 = objc_opt_self();
  v2 = sub_24A82CF94();

  v3 = sub_24A82CF94();
  v4 = [v1 BOOLForKey:v2 inDomain:v3];

  return v4;
}

unint64_t sub_24A754394()
{
  result = qword_281515A90;
  if (!qword_281515A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515A90);
  }

  return result;
}

unint64_t sub_24A754404()
{
  result = qword_27EF5DFA0;
  if (!qword_27EF5DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFA0);
  }

  return result;
}

unint64_t sub_24A754494()
{
  result = qword_27EF5DFA8;
  if (!qword_27EF5DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DFA8);
  }

  return result;
}

uint64_t sub_24A754538(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMIPItemGroup(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_24A68FE04(a3 + v15 + v16 * v13, v12, type metadata accessor for FMIPItemGroup);
      v17 = a1(v12);
      if (v3)
      {
        sub_24A69004C(v12, type metadata accessor for FMIPItemGroup);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_24A68D628(v12, v24, type metadata accessor for FMIPItemGroup);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A6FCB74(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24A6FCB74((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_24A68D628(v24, v14 + v15 + v20 * v16, type metadata accessor for FMIPItemGroup);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_24A69004C(v12, type metadata accessor for FMIPItemGroup);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_24A7547C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
  result = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v5;
      v12 = *(type metadata accessor for FMIPItemGroup(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      result = sub_24A68FE04(v13, v7 + v14, type metadata accessor for FMIPItemGroup);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_24A67E8FC(v7, a1, &unk_27EF5E120, &qword_24A837768);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_24A7549B4()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_24A78A97C(MEMORY[0x277D84F90]);
  v2 = sub_24A78AB64(v0);
  v3 = sub_24A78AB88(v0);
  result = sub_24A78AB88(v0);
  *&xmmword_27EF5DFB0 = v0;
  *(&xmmword_27EF5DFB0 + 1) = v1;
  qword_27EF5DFC0 = v2;
  unk_27EF5DFC8 = v3;
  qword_27EF5DFD0 = result;
  return result;
}

uint64_t sub_24A754A20(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5E058, &unk_24A837720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A76E6B4();
  sub_24A82DD84();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  sub_24A76E990(&qword_27EF5E060, sub_24A76EA08, MEMORY[0x277D83948]);
  sub_24A82DB44();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_24A6BBA94(&qword_27EF5E008, &unk_24A837700);
    sub_24A76EA5C();
    sub_24A82DB44();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    sub_24A6BBA94(&qword_27EF5E030, &qword_24A837710);
    sub_24A76EB18();
    sub_24A82DB44();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    sub_24A6BBA94(&qword_27EF5E048, &qword_24A837718);
    sub_24A76EC28();
    sub_24A82DB44();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24A754CF0()
{
  v1 = *v0;
  v2 = 0x61636F4C65666173;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_24A754D9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A76E0D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A754DC4(uint64_t a1)
{
  v2 = sub_24A76E6B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A754E00(uint64_t a1)
{
  v2 = sub_24A76E6B4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A754E3C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A76E290(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_24A754EC0()
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
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 48);
    v8 = *(v1 + 56);

    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v21);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDataManager<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  sub_24A6BAF88(v1 + 32);

  sub_24A76F7D8(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168));

  sub_24A67F378(v1 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale, &qword_27EF5E930, &unk_24A8343F0);

  return v1;
}

uint64_t sub_24A7551A8()
{
  sub_24A754EC0();

  return swift_deallocClassInstance();
}

BOOL sub_24A755208(uint64_t a1)
{
  v3 = *(v1 + 176);

  v4 = sub_24A7D9750(a1, v3);

  if ((v4 & 1) == 0)
  {
    *(v1 + 176) = a1;

    if (*(v1 + 24) == 1)
    {
      if (*(v1 + 336))
      {

        sub_24A761CE4(a1, &unk_285DC75F8, sub_24A76F570, &unk_285DC7610);
      }
    }
  }

  return (v4 & 1) == 0;
}

uint64_t sub_24A7552C8(uint64_t *a1)
{
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 1);
  v65 = *(a1 + 2);
  v66 = v3;
  v67 = v4;
  v68 = a1[10];
  v64[0] = *a1;
  v64[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v73 = v68;
  v71 = v3;
  v72 = v4;
  v69 = v5;
  v70 = v65;
  v75 = *(v1 + 168);
  v8 = *(v1 + 152);
  v9 = *(v1 + 120);
  v74[3] = *(v1 + 136);
  v74[4] = v8;
  v10 = *(v1 + 104);
  v74[0] = *(v1 + 88);
  v74[1] = v10;
  v74[2] = v9;
  v11 = v74[0];
  v12 = *(v1 + 120);
  v13 = *(v1 + 152);
  v61 = *(v1 + 136);
  v62 = v13;
  v63 = *(v1 + 168);
  v59 = *(v1 + 104);
  v60 = v12;
  if (v7)
  {
    *&v47 = v6;
    *(&v47 + 1) = v7;
    v14 = *(a1 + 4);
    v50 = *(a1 + 3);
    v51 = v14;
    v52 = a1[10];
    v15 = *(a1 + 2);
    v48 = *(a1 + 1);
    v49 = v15;
    v43 = v15;
    v44 = v50;
    v45 = v14;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    if (*(&v74[0] + 1))
    {
      v16 = *(v1 + 120);
      v17 = *(v1 + 152);
      v38 = *(v1 + 136);
      v39 = v17;
      v40 = *(v1 + 168);
      v36 = *(v1 + 104);
      v37 = v16;
      v35 = v74[0];
      sub_24A6EF948(v64, v33);
      sub_24A67E964(v74, v33, &qword_27EF5DEF8, &unk_24A836D40);
      sub_24A67E964(&v47, v33, &qword_27EF5DEF8, &unk_24A836D40);
      v18 = _s8FMIPCore10FMIPPersonV2eeoiySbAC_ACtFZ_0(&v41, &v35);
      v31[2] = v37;
      v31[3] = v38;
      v31[4] = v39;
      v32 = v40;
      v31[0] = v35;
      v31[1] = v36;
      sub_24A6EF9B4(v31);
      v33[2] = v43;
      v33[3] = v44;
      v33[4] = v45;
      v34 = v46;
      v33[0] = v41;
      v33[1] = v42;
      sub_24A6EF9B4(v33);
      *&v35 = v6;
      *(&v35 + 1) = v7;
      v19 = *(a1 + 4);
      v38 = *(a1 + 3);
      v39 = v19;
      v40 = a1[10];
      v20 = *(a1 + 2);
      v36 = *(a1 + 1);
      v37 = v20;
      sub_24A67F378(&v35, &qword_27EF5DEF8, &unk_24A836D40);
      if (v18)
      {
        return 0;
      }

      goto LABEL_9;
    }

    v37 = v49;
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v35 = v47;
    v36 = v48;
    sub_24A6EF948(v64, v33);
    sub_24A67E964(v74, v33, &qword_27EF5DEF8, &unk_24A836D40);
    sub_24A67E964(&v47, v33, &qword_27EF5DEF8, &unk_24A836D40);
    sub_24A6EF9B4(&v35);
  }

  else
  {
    if (!*(&v74[0] + 1))
    {
      v47 = v6;
      v29 = *(a1 + 4);
      v50 = *(a1 + 3);
      v51 = v29;
      v52 = a1[10];
      v30 = *(a1 + 2);
      v48 = *(a1 + 1);
      v49 = v30;
      sub_24A6EF948(v64, &v41);
      sub_24A67E964(v74, &v41, &qword_27EF5DEF8, &unk_24A836D40);
      sub_24A67F378(&v47, &qword_27EF5DEF8, &unk_24A836D40);
      return 0;
    }

    sub_24A6EF948(v64, &v47);
    sub_24A67E964(v74, &v47, &qword_27EF5DEF8, &unk_24A836D40);
  }

  *&v47 = v6;
  *(&v47 + 1) = v7;
  v22 = *(a1 + 4);
  v50 = *(a1 + 3);
  v51 = v22;
  v23 = a1[10];
  v24 = *(a1 + 2);
  v48 = *(a1 + 1);
  v49 = v24;
  v52 = v23;
  v53 = v11;
  v54 = v59;
  v58 = v63;
  v57 = v62;
  v56 = v61;
  v55 = v60;
  sub_24A67F378(&v47, &qword_27EF5E230, &qword_24A837828);
LABEL_9:
  v25 = *(v1 + 136);
  v49 = *(v1 + 120);
  v50 = v25;
  v51 = *(v1 + 152);
  v26 = *(v1 + 104);
  v47 = *(v1 + 88);
  v48 = v26;
  v27 = v69;
  *(v1 + 120) = v70;
  v28 = v72;
  *(v1 + 136) = v71;
  *(v1 + 104) = v27;
  v52 = *(v1 + 168);
  *(v1 + 88) = v6;
  *(v1 + 96) = v7;
  *(v1 + 168) = v73;
  *(v1 + 152) = v28;
  sub_24A6EF948(v64, &v41);
  sub_24A67F378(&v47, &qword_27EF5DEF8, &unk_24A836D40);
  if (*(v1 + 24) == 1)
  {
    if (*(v1 + 344))
    {

      sub_24A7620CC(v64);
    }
  }

  return 1;
}

uint64_t sub_24A7556C0(__n128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 192);

  sub_24A7B5CFC(a1, v6);
  v8 = v7;

  if (v8)
  {
    v9 = *(v3 + 184);

    sub_24A7B5CFC(a2, v9);
    v11 = v10;

    if (v11)
    {
      return 0;
    }
  }

  *(v3 + 192) = a1;

  *(v3 + 184) = a2;

  v13 = *(v3 + 288);
  swift_beginAccess();
  v14 = *(v3 + 280);

  v15 = sub_24A76CC38(v13, v14);

  *(v3 + 288) = v15;

  swift_beginAccess();

  sub_24A758EF8(v16);
  v18 = v17;

  *(v3 + 80) = v18;

  sub_24A7690FC(v19, a1);
  v21 = v20;

  *(v3 + 80) = v21;

  sub_24A7580CC(v22);
  v24 = v23;

  *(v3 + 80) = v24;

  v25 = *(v3 + 80);
  v26 = *(v3 + 200);

  sub_24A769874(v25, v26);
  v28 = v27;

  *(v3 + 80) = v28;

  v29 = *(v3 + 80);
  v30 = *(v3 + 216);

  sub_24A76A0B0(v29, v30);
  v32 = v31;

  *(v3 + 80) = v32;

  v33 = *(v3 + 80);
  v34 = *(v3 + 224);

  sub_24A76A8F4(v33, v34);
  v36 = v35;

  *(v3 + 80) = v36;

  v37 = *(v3 + 80);
  v38 = *(v3 + 232);

  sub_24A76B138(v37, v38);
  v40 = v39;

  *(v3 + 80) = v40;

  v41 = *(v3 + 80);
  v42 = *(v3 + 208);

  sub_24A76B96C(v41, v42);
  v44 = v43;

  *(v3 + 80) = v44;

  v45 = *(v3 + 80);
  v46 = *(v3 + 304);

  sub_24A76C298(v45, v46);
  v48 = v47;

  *(v3 + 80) = v48;

  v49 = *(v3 + 16);
  if ((v49 & 1) != 0 && *(v3 + 24) == 1 && *(v3 + 328))
  {

    sub_24A761CE4(v50, &unk_285DC7558, sub_24A76F410, &unk_285DC7570);
  }

  sub_24A76CED0(v51, a1, a2);
  v53 = v52;

  *(v3 + 280) = v53;

  v55 = sub_24A75B108(v54);

  *(v3 + 280) = v55;

  if ((v49 & 2) != 0 && *(v3 + 24) == 1)
  {
    if (*(v3 + 312))
    {

      sub_24A761CE4(v56, &unk_285DC74B8, sub_24A76F33C, &unk_285DC74D0);
    }
  }

  sub_24A75CD68(a1, a2);
  return 1;
}

BOOL sub_24A755B4C(uint64_t a1)
{
  v3 = *(v1 + 304);

  v4 = sub_24A7B7274(a1, v3);

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();

    sub_24A76C298(v5, a1);
    v7 = v6;

    *(v1 + 80) = v7;

    *(v1 + 304) = a1;
  }

  return (v4 & 1) == 0;
}

BOOL sub_24A755C0C(uint64_t a1)
{
  v3 = *(v1 + 232);

  v4 = sub_24A7B7250(a1, v3);

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();

    sub_24A76B138(v5, a1);
    v7 = v6;

    *(v1 + 80) = v7;

    *(v1 + 232) = a1;
  }

  return (v4 & 1) == 0;
}

BOOL sub_24A755CCC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 208);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v4;
  sub_24A76DCB0(a1, sub_24A766CFC, 0, isUniquelyReferenced_nonNull_native, v21);

  v6 = v21[0];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    type metadata accessor for FMIPDeviceConnectedState(0);
    sub_24A67F008(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v12 = sub_24A82CF04();
    v14 = sub_24A68761C(v12, v13, v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPManager: updating merged deviceConnectedStates: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v15 = *(v2 + 208);

  v16 = sub_24A7B64A8(v6, v15);

  if (v16)
  {
  }

  else
  {
    swift_beginAccess();

    sub_24A76B96C(v17, v6);
    v19 = v18;

    *(v2 + 80) = v19;

    *(v2 + 208) = v6;
  }

  return (v16 & 1) == 0;
}

uint64_t sub_24A755F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 256);

  v10 = sub_24A7B7970(a1, v9);

  if (v10)
  {
    v11 = *(v4 + 264);

    v12 = sub_24A7B6DF0(a2, v11);

    if (v12)
    {
      v13 = *(v4 + 272);

      v14 = sub_24A7B6DF0(a3, v13);

      if (v14)
      {
        v15 = *(v4 + 248);

        sub_24A7B7DD4(a4, v15);
        v17 = v16;

        if (v17)
        {
          return 0;
        }
      }
    }
  }

  *(v4 + 256) = a1;

  *(v4 + 264) = a2;

  *(v4 + 248) = a4;

  *(v4 + 272) = a3;

  if (*(v4 + 24) == 1)
  {
    if (*(v4 + 352))
    {
      v19 = *(v4 + 248);
      v20 = *(v4 + 256);
      v21 = *(v4 + 264);
      v22 = *(v4 + 272);
      v23[0] = *(v4 + 240);
      v23[1] = v19;
      v23[2] = v20;
      v23[3] = v21;
      v23[4] = v22;

      sub_24A76187C(v23);
    }
  }

  return 1;
}

BOOL sub_24A756164(uint64_t a1)
{
  v2 = v1;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPDataManager: update safe locations", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = *(v2 + 240);

  v9 = sub_24A6A428C(a1, v8);

  if ((v9 & 1) == 0)
  {
    *(v2 + 240) = sub_24A75C5DC(a1);

    if (*(v2 + 24) == 1)
    {
      if (*(v2 + 352))
      {
        v10 = *(v2 + 240);
        v11 = *(v2 + 248);
        v12 = *(v2 + 256);
        v13 = *(v2 + 264);
        v14 = *(v2 + 272);
        v16[0] = v10;
        v16[1] = v11;
        v16[2] = v12;
        v16[3] = v13;
        v16[4] = v14;

        sub_24A76187C(v16);
      }
    }
  }

  return (v9 & 1) == 0;
}

uint64_t sub_24A75633C(unint64_t a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v57 = a2;
  v7 = type metadata accessor for FMIPItemGroup(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v53[-v12];
  v14 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v53[-v18];
  if (qword_281515DC8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v20 = sub_24A82CDC4();
  sub_24A6797D0(v20, qword_281518F88);
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v56 = v4;
    v24 = v23;
    v55 = swift_slowAlloc();
    v61[0] = v55;
    *v24 = 136315138;
    LOBYTE(v58) = v57;
    v25 = sub_24A82D024();
    v57 = v5;
    v27 = sub_24A68761C(v25, v26, v61);
    v54 = v22;
    v28 = a1;
    v29 = v27;
    LODWORD(v5) = v57;

    *(v24 + 4) = v29;
    a1 = v28;
    _os_log_impl(&dword_24A675000, v21, v54, "FMIPDataManager: Updating items from source: %s", v24, 0xCu);
    v30 = v55;
    sub_24A6876E8(v55);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    v31 = v24;
    v4 = v56;
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  swift_beginAccess();
  v32 = *(v4 + 280);

  v33 = sub_24A7D8ED0(a1, v32);

  v34 = v33 ^ 1 | v5;
  if (v34)
  {
    v57 = v34;
    *(v4 + 280) = a1;

    v35 = *(v4 + 280);
    v36 = *(v4 + 184);
    v37 = *(v4 + 192);

    sub_24A76CED0(v35, v37, v36);
    v38 = v4;
    v40 = v39;

    *(v38 + 280) = v40;

    v42 = sub_24A75A96C(v41);

    *(v38 + 280) = v42;

    v44 = sub_24A75B108(v43);

    *(v38 + 280) = v44;

    v4 = v38;
    v5 = *(v38 + 288);
    v59 = 0;
    v60 = 0;
    v58 = v5;
    swift_bridgeObjectRetain_n();
    while (1)
    {
      sub_24A7547C4(v17);
      sub_24A67E8FC(v17, v19, &qword_27EF5E118, &qword_24A837760);
      v45 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
      if ((*(*(v45 - 8) + 48))(v19, 1, v45) == 1)
      {
        break;
      }

      a1 = *v19;
      sub_24A68D628(v19 + *(v45 + 48), v11, type metadata accessor for FMIPItemGroup);
      v46 = *(v4 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v11, v46, v13);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v5 = sub_24A766CC0(v5);
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      if (a1 >= v5[2])
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_24A76F3A8(v13, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, type metadata accessor for FMIPItemGroup);
    }

    *(v4 + 288) = v5;

    swift_beginAccess();

    sub_24A758EF8(v47);
    v49 = v48;

    *(v4 + 80) = v49;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(v4 + 80);

      sub_24A69C358(v4, v50);

      swift_unknownObjectRelease();
    }

    LOBYTE(v34) = v57;
    if (*(v4 + 24) == 1 && *(v4 + 312))
    {

      sub_24A761CE4(v51, &unk_285DC74B8, sub_24A76F33C, &unk_285DC74D0);
    }
  }

  return v34 & 1;
}

void sub_24A75691C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v127 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v114 - v5;
  v7 = sub_24A6BBA94(&qword_27EF5E0E8, &unk_24A837740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v114 - v8;
  v10 = type metadata accessor for FMReverseGeocodingRequest(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v126 = (v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v123 = v114 - v14;
  v15 = type metadata accessor for FMIPItem(0) - 8;
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = (v114 - v19);
  v21 = *(a1 + 16);
  v115 = v21;
  v116 = a1;
  if (!v21)
  {
    v132 = MEMORY[0x277D84F98];
    v133 = MEMORY[0x277D84F98];
    v128 = MEMORY[0x277D84F98];
LABEL_51:
    v103 = v125;
    *(v125 + 192) = v133;

    *(v103 + 184) = v132;

    if (*(v103 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache))
    {
      sub_24A75D810(v128);
    }

    if (qword_281515DC8 != -1)
    {
LABEL_63:
      swift_once();
    }

    v104 = sub_24A82CDC4();
    sub_24A6797D0(v104, qword_281518F88);
    v105 = v133;

    v106 = v132;

    v107 = v128;

    v108 = sub_24A82CD94();
    v109 = sub_24A82D504();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 134218752;
      *(v110 + 4) = v115;

      *(v110 + 12) = 2048;
      v111 = v105[2];

      *(v110 + 14) = v111;

      *(v110 + 22) = 2048;
      v112 = v106[2];

      *(v110 + 24) = v112;

      *(v110 + 32) = 2048;
      v113 = *(v107 + 16);

      *(v110 + 34) = v113;

      _os_log_impl(&dword_24A675000, v108, v109, "FMIPDataManager: updated ephemerals items: %ld, locations: %ld, original: %ld,  addresses: %ld", v110, 0x2Au);
      MEMORY[0x24C21E1D0](v110, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    return;
  }

  v129 = v18;
  v130 = v6;
  v119 = v10;
  v120 = v9;
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v122 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale;
  v23 = a1 + v22;
  v114[5] = 0x800000024A843AE0;
  v114[6] = 0x800000024A843B00;
  v114[3] = 0x800000024A843A70;
  v114[4] = 0x800000024A843AB0;
  v114[1] = 0x800000024A843A30;
  v114[2] = 0x800000024A843A50;
  v114[0] = 0x800000024A8439F0;
  v117 = v11;
  v118 = (v11 + 56);
  v121 = (v11 + 48);
  v131 = *(v17 + 72);
  v24 = v21;
  v132 = MEMORY[0x277D84F98];
  v133 = MEMORY[0x277D84F98];
  v128 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_24A68FE04(v23, v20, type metadata accessor for FMIPItem);
    v25 = v20[49];
    v135 = v24;
    if (!v25)
    {
      break;
    }

    v26 = v20[48];
    v27 = v20[50];
    v29 = v20[44];
    v28 = v20[45];
    v134 = v25;
    v30 = v133;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v30;
    v33 = sub_24A6A2D48(v29, v28);
    v34 = v30[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v37 = v32;
    if (v30[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A78629C();
      }
    }

    else
    {
      sub_24A781610(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_24A6A2D48(v29, v28);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_64;
      }

      v33 = v38;
    }

    v40 = v134;
    v41 = v140;
    v42 = (v26 & 0x100) >> 8;
    v133 = v140;
    if (v37)
    {
      v43 = v140[7] + 24 * v33;
      v44 = *(v43 + 8);
      *v43 = v26 & 1;
      *(v43 + 1) = v42;
      *(v43 + 2) = (v26 & 0x10000) >> 16;
      *(v43 + 3) = BYTE3(v26);
      *(v43 + 8) = v40;
      *(v43 + 16) = v27;
    }

    else
    {
      v140[(v33 >> 6) + 8] |= 1 << v33;
      v45 = (v41[6] + 16 * v33);
      *v45 = v29;
      v45[1] = v28;
      v46 = v41[7] + 24 * v33;
      *v46 = v26 & 1;
      *(v46 + 1) = v42;
      *(v46 + 2) = (v26 & 0x10000) >> 16;
      *(v46 + 3) = BYTE3(v26);
      *(v46 + 8) = v40;
      *(v46 + 16) = v27;
      v47 = v41[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_59;
      }

      v41[2] = v49;
    }

    memcpy(v138, v20 + 1, sizeof(v138));
    memcpy(v139, v20 + 1, sizeof(v139));
    if (sub_24A6921A8(v139) == 1)
    {
      sub_24A69004C(v20, type metadata accessor for FMIPItem);
    }

    else
    {
      v50 = v129;
      sub_24A68FE04(v20, v129, type metadata accessor for FMIPItem);
      v51 = v130;
      sub_24A67E964(v125 + v122, v130, &qword_27EF5E930, &unk_24A8343F0);
      v52 = *(v50 + 392);
      if (v52)
      {
        v53 = *(v50 + 387);
        v54 = *(v50 + 352);
        v55 = *(v50 + 360);
        v124 = v54;
        sub_24A67E964(v51, v127, &qword_27EF5E930, &unk_24A8343F0);
        v56 = 1;
        switch(v53)
        {
          case 6:
            break;
          default:
            v56 = sub_24A82DC04();
            break;
        }

        sub_24A67E964(v138, v137, &unk_27EF5E0D0, &qword_24A8319E0);
        v59 = v52;

        sub_24A67F378(v130, &qword_27EF5E930, &unk_24A8343F0);
        sub_24A69004C(v129, type metadata accessor for FMIPItem);
        v58 = v120;
        *v120 = v124;
        *(v58 + 8) = v55;
        v57 = v119;
        *(v58 + *(v119 + 32)) = 0;
        *(v58 + *(v57 + 28)) = v56 & 1;
        *(v58 + 16) = v59;
        sub_24A67E8FC(v127, v58 + *(v57 + 24), &qword_27EF5E930, &unk_24A8343F0);
        (*v118)(v58, 0, 1, v57);
        v40 = v134;
      }

      else
      {
        memcpy(v137, v138, sizeof(v137));
        sub_24A76ECE4(v137, v136);
        sub_24A67F378(v51, &qword_27EF5E930, &unk_24A8343F0);
        sub_24A69004C(v50, type metadata accessor for FMIPItem);
        v57 = v119;
        v58 = v120;
        (*v118)(v120, 1, 1, v119);
      }

      if ((*v121)(v58, 1, v57) != 1)
      {
        v60 = v123;
        sub_24A68D628(v58, v123, type metadata accessor for FMReverseGeocodingRequest);
        v61 = v126;
        sub_24A68FE04(v60, v126, type metadata accessor for FMReverseGeocodingRequest);
        v62 = v128;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v136[0] = v62;
        v64 = sub_24A77EE94(v61);
        v66 = *(v62 + 16);
        v67 = (v65 & 1) == 0;
        v48 = __OFADD__(v66, v67);
        v68 = v66 + v67;
        if (v48)
        {
          goto LABEL_61;
        }

        v69 = v65;
        if (*(v62 + 24) >= v68)
        {
          v71 = v117;
          if (v63)
          {
            if ((v65 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v102 = v64;
            sub_24A7867F8();
            v71 = v117;
            v64 = v102;
            if ((v69 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_24A781C58(v68, v63);
          v64 = sub_24A77EE94(v126);
          if ((v69 & 1) != (v70 & 1))
          {
            goto LABEL_65;
          }

          v71 = v117;
          if ((v69 & 1) == 0)
          {
LABEL_29:
            v72 = v136[0];
            *(v136[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v73 = v64;
            v74 = v126;
            sub_24A68FE04(v126, v72[6] + *(v71 + 72) * v64, type metadata accessor for FMReverseGeocodingRequest);
            memcpy((v72[7] + 288 * v73), v139, 0x120uLL);

            sub_24A69004C(v74, type metadata accessor for FMReverseGeocodingRequest);
            sub_24A69004C(v123, type metadata accessor for FMReverseGeocodingRequest);
            v75 = v72[2];
            v48 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v48)
            {
              goto LABEL_62;
            }

            v128 = v72;
            v72[2] = v76;
            goto LABEL_34;
          }
        }

        v128 = v136[0];
        v77 = (*(v136[0] + 56) + 288 * v64);
        memcpy(v137, v77, sizeof(v137));
        memcpy(v77, v139, 0x120uLL);
        sub_24A6CD854(v137);

        sub_24A69004C(v126, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A69004C(v123, type metadata accessor for FMReverseGeocodingRequest);
LABEL_34:
        v24 = v135;
        break;
      }

      sub_24A69004C(v20, type metadata accessor for FMIPItem);

      sub_24A67F378(v138, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v58, &qword_27EF5E0E8, &unk_24A837740);
    }

LABEL_4:
    v24 = v135;
LABEL_5:
    v23 += v131;
    if (!--v24)
    {
      goto LABEL_51;
    }
  }

  v78 = v20[40];
  if (!v78)
  {
    sub_24A69004C(v20, type metadata accessor for FMIPItem);
    goto LABEL_5;
  }

  v79 = v20[39];
  v80 = v20[41];
  v82 = v20[44];
  v81 = v20[45];
  v83 = v78;
  v84 = v132;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v139[0] = v84;
  v86 = sub_24A6A2D48(v82, v81);
  v88 = v84[2];
  v89 = (v87 & 1) == 0;
  v48 = __OFADD__(v88, v89);
  v90 = v88 + v89;
  if (v48)
  {
    goto LABEL_58;
  }

  v91 = v87;
  if (v84[3] >= v90)
  {
    if ((v85 & 1) == 0)
    {
      v101 = v86;
      sub_24A78629C();
      v86 = v101;
    }

    goto LABEL_43;
  }

  sub_24A781610(v90, v85);
  v86 = sub_24A6A2D48(v82, v81);
  if ((v91 & 1) == (v92 & 1))
  {
LABEL_43:
    v93 = BYTE1(v79) & 1;
    v94 = BYTE2(v79) & 1;
    v132 = v139[0];
    if (v91)
    {
      v95 = *(v139[0] + 56) + 24 * v86;
      v96 = *(v95 + 8);
      *v95 = v79 & 1;
      *(v95 + 1) = v93;
      *(v95 + 2) = v94;
      *(v95 + 3) = BYTE3(v79);
      *(v95 + 8) = v83;
      *(v95 + 16) = v80;
    }

    else
    {
      *(v139[0] + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v97 = (v132[6] + 16 * v86);
      *v97 = v82;
      v97[1] = v81;
      v98 = v132[7] + 24 * v86;
      *v98 = v79 & 1;
      *(v98 + 1) = v93;
      *(v98 + 2) = v94;
      *(v98 + 3) = BYTE3(v79);
      *(v98 + 8) = v83;
      *(v98 + 16) = v80;

      v99 = v132[2];
      v48 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v48)
      {
        goto LABEL_60;
      }

      v132[2] = v100;
    }

    sub_24A69004C(v20, type metadata accessor for FMIPItem);
    goto LABEL_4;
  }

LABEL_64:
  sub_24A82DC44();
  __break(1u);
LABEL_65:
  sub_24A82DC44();
  __break(1u);
}

uint64_t sub_24A757884(uint64_t a1)
{
  v32 = type metadata accessor for FMReverseGeocodingRequest(0);
  v30 = *(v32 - 8);
  v2 = MEMORY[0x28223BE20](v32);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = (&v30 - v5);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_19:
    if (*(v33 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache))
    {
      sub_24A75D810(v10);
    }
  }

  v31 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_preferredLocale;
  v8 = v7 - 1;
  v9 = (a1 + 72);
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    memcpy(v36, v9 - 40, sizeof(v36));
    memcpy(v37, v9, 0x120uLL);
    if (sub_24A6921A8(v37) == 1)
    {
      goto LABEL_12;
    }

    v11 = v36[3];
    v13 = v36[0];
    v12 = v36[1];
    v14 = v32;
    sub_24A67E964(v33 + v31, v6 + *(v32 + 24), &qword_27EF5E930, &unk_24A8343F0);
    *v6 = v13;
    v6[1] = v12;
    *(v6 + *(v14 + 32)) = 0;
    *(v6 + *(v14 + 28)) = 0;
    v6[2] = v11;
    sub_24A68FE04(v6, v4, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A6CC988(v36, v35);
    sub_24A67E964(&v36[5], v35, &unk_27EF5E0D0, &qword_24A8319E0);

    v15 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v10;
    v18 = sub_24A77EE94(v4);
    v19 = v10[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v10[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_24A7867F8();
        if (v22)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_24A781C58(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_24A77EE94(v4);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_24;
      }

      v18 = v23;
      if (v22)
      {
LABEL_11:
        v10 = v34;
        v25 = (v34[7] + 288 * v18);
        memcpy(v35, v25, 0x120uLL);
        memmove(v25, &v36[5], 0x120uLL);
        sub_24A6CD854(v35);
        sub_24A6CC294(v36);
        sub_24A69004C(v4, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A69004C(v6, type metadata accessor for FMReverseGeocodingRequest);
LABEL_12:
        if (!v8)
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }
    }

    v10 = v34;
    memcpy(v35, &v36[5], 0x120uLL);
    v34[(v18 >> 6) + 8] |= 1 << v18;
    sub_24A68FE04(v4, v10[6] + *(v30 + 72) * v18, type metadata accessor for FMReverseGeocodingRequest);
    memcpy((v10[7] + 288 * v18), v35, 0x120uLL);
    sub_24A6CC294(v36);
    sub_24A69004C(v4, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A69004C(v6, type metadata accessor for FMReverseGeocodingRequest);
    v26 = v10[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_23;
    }

    v10[2] = v28;
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_13:
    --v8;
    v9 += 352;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_24A82DC44();
  __break(1u);
  return result;
}

uint64_t sub_24A757C70(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for FMIPItemGroup(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v30 - v8);
  v10 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v30 - v14);
  v16 = v1[36];
  v33 = 0;
  v34 = 0;
  v32 = v16;
  swift_bridgeObjectRetain_n();
  swift_beginAccess();
  while (1)
  {
    sub_24A7547C4(v13);
    sub_24A67E8FC(v13, v15, &qword_27EF5E118, &qword_24A837760);
    v17 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
    if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
    {
      goto LABEL_9;
    }

    v18 = *v15;
    sub_24A68D628(v15 + *(v17 + 48), v7, type metadata accessor for FMIPItemGroup);
    v19 = v2[35];

    FMIPItemGroup.init(itemGroup:items:)(v7, v19, v9);
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
      result = sub_24A766CC0(v16);
      v16 = result;
      if ((v18 & 0x8000000000000000) != 0)
      {
LABEL_8:
        __break(1u);
LABEL_9:

        v2[36] = v16;

        sub_24A758EF8(v31);
        sub_24A7685B4(v21, v21);
        v23 = v22;

        v24 = v2[24];

        sub_24A7690FC(v23, v24);
        v26 = v25;

        sub_24A7580CC(v26);
        v28 = v27;

        v29 = sub_24A7597A0(v28);

        return v29;
      }
    }

    if (v18 >= v16[2])
    {
      break;
    }

    sub_24A76F3A8(v9, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, type metadata accessor for FMIPItemGroup);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A757FAC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  v4 = *(a1 + 280);

  sub_24A76F848(v2, v4);
  v6 = v5;

  if ((sub_24A75633C(v6, 0, 0) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_24A69BFF8(a1);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v7 = *(a1 + 288);

  sub_24A7705F0(v2 & 1, v7);
  v9 = v8;

  if ((sub_24A6ACD48(v9) & 1) == 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_24A7529CC(a1);

  return swift_unknownObjectRelease();
}

void sub_24A7580CC(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v2 - 8);
  v84 = v80 - v3;
  v4 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = v80 - v5;
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = v80 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v104 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = v80 - v11;
  v12 = sub_24A6BBA94(&qword_27EF5E0E8, &unk_24A837740);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = (v80 - v13);
  v98 = type metadata accessor for FMReverseGeocodingRequest(0);
  v14 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v87 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FMIPDevice(0);
  v91 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97);
  v81 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v85 = v80 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v80 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v80 - v23;
  v25 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v89 = (v80 - v27);
  v28 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (v80 - v32);
  v34 = *(a1 + 16);
  v109 = (v26 + 48);
  v110 = (v26 + 56);
  v35 = v24;
  v107 = v22;
  v36 = v22 + 264;
  v37 = v88;
  v96 = v36;
  v106 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache;
  v80[6] = 0x800000024A843AE0;
  v80[7] = 0x800000024A843B00;
  v80[4] = 0x800000024A843A70;
  v80[5] = 0x800000024A843AB0;
  v80[2] = 0x800000024A843A30;
  v80[3] = 0x800000024A843A50;
  v80[1] = 0x800000024A8439F0;
  v94 = (v14 + 48);
  v95 = (v14 + 56);

  v39 = 0;
  v93 = 0;
  v90 = v38;
  v86 = v38;
  v105 = v31;
  v111 = v33;
  v101 = v25;
  v102 = v24;
  v100 = v34;
  v40 = v34 == 0;
  if (!v34)
  {
    goto LABEL_5;
  }

LABEL_2:
  if (v40)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v39 + 1;
  if (__OFADD__(v39, 1))
  {
    goto LABEL_27;
  }

  v42 = v89;
  v43 = v90 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v39;
  v44 = *(v25 + 48);
  *v89 = v39;
  sub_24A68FE04(v43, v42 + v44, type metadata accessor for FMIPDevice);
  sub_24A67E8FC(v42, v31, &unk_27EF5E0C0, &unk_24A837180);
  v45 = 0;
  v112 = v41;
  v33 = v111;
  while (1)
  {
    (*v110)(v31, v45, 1, v25);
    sub_24A67E8FC(v31, v33, &qword_27EF5DF70, &unk_24A837730);
    if ((*v109)(v33, 1, v25) == 1)
    {
      break;
    }

    v46 = *v33;
    sub_24A68D628(v33 + *(v25 + 48), v35, type metadata accessor for FMIPDevice);
    v47 = *(v37 + v106);
    if (!v47)
    {
      goto LABEL_17;
    }

    v48 = v37;
    v92 = v46;
    v49 = v35;
    v50 = v107;
    sub_24A68FE04(v49, v107, type metadata accessor for FMIPDevice);
    v51 = v108;
    sub_24A67E964(v47 + qword_27EF78F28, v108, &qword_27EF5E930, &unk_24A8343F0);
    v119[0] = *(v50 + 256);
    *&v119[1] = *v96;
    v118[0] = *(v50 + 280);
    *&v118[1] = *(v50 + 288);
    v52 = (*(v50 + 216) >> 5) & 1;
    v53 = *(v97 + 128);
    v54 = v119[1];
    v55 = v118[1];
    v56 = v54;
    sub_24A7DC368(v119, v118, v52, v50 + v53, v120);

    v57 = *(&v120[0] + 1);
    if (*(&v120[0] + 1))
    {
      v58 = BYTE3(v120[0]);
      v59 = *(v50 + 8);
      *&v103 = *v50;
      sub_24A67E964(v51, v104, &qword_27EF5E930, &unk_24A8343F0);
      v60 = 1;
      switch(v58)
      {
        case 6:
          break;
        default:
          v60 = sub_24A82DC04();
          break;
      }

      sub_24A67F378(v108, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v107, type metadata accessor for FMIPDevice);
      v65 = v98;
      v64 = v99;
      *v99 = v103;
      v64[1] = v59;
      v62 = v64;
      *(v64 + v65[8]) = 0;
      v63 = v65;
      *(v64 + v65[7]) = v60 & 1;
      v64[2] = v57;
      sub_24A67E8FC(v104, v64 + v65[6], &qword_27EF5E930, &unk_24A8343F0);
      v61 = 0;
      v37 = v88;
    }

    else
    {
      sub_24A67F378(v51, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v50, type metadata accessor for FMIPDevice);
      v61 = 1;
      v63 = v98;
      v62 = v99;
      v37 = v48;
    }

    v31 = v105;
    (*v95)(v62, v61, 1, v63);
    if ((*v94)(v62, 1, v63) == 1)
    {
      sub_24A67F378(v62, &qword_27EF5E0E8, &unk_24A837740);
      sub_24A68808C(v120);
      memcpy(v121, v120, sizeof(v121));
    }

    else
    {
      v66 = v87;
      v67 = sub_24A68D628(v62, v87, type metadata accessor for FMReverseGeocodingRequest);
      MEMORY[0x28223BE20](v67);
      sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
      v68 = v93;
      sub_24A82D574();
      v93 = v68;
      v31 = v105;
      sub_24A69004C(v66, type metadata accessor for FMReverseGeocodingRequest);
    }

    v25 = v101;
    v35 = v102;
    v34 = v100;
    memcpy(v119, v121, sizeof(v119));
    memcpy(v120, v121, sizeof(v120));
    v69 = sub_24A6921A8(v120);
    v33 = v111;
    if (v69 != 1)
    {
      v70 = v81;
      sub_24A68FE04(v35, v81, type metadata accessor for FMIPDevice);
      v71 = *(v35 + 248);
      memcpy(v118, v119, sizeof(v118));
      v116 = *(v35 + 280);
      v103 = *(v35 + 288);
      v117 = v103;
      memset(v115, 0, sizeof(v115));
      v72 = type metadata accessor for FMIPItemGroup(0);
      memset(v114, 0, sizeof(v114));
      v73 = v82;
      (*(*(v72 - 8) + 56))(v82, 1, 1, v72);
      v113 = 7;
      v74 = type metadata accessor for FMIPDeviceConnectedState(0);
      v75 = v83;
      (*(*(v74 - 8) + 56))(v83, 1, 1, v74);
      v76 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
      v77 = v84;
      (*(*(v76 - 8) + 56))(v84, 1, 1, v76);
      v78 = v103;

      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v70, v71, v118, &v116, v115, v114, 2, v73, v85, 2u, 2, &v113, v75, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_24A766CD4(v86);
      }

      v79 = v92;
      v35 = v102;
      sub_24A69004C(v102, type metadata accessor for FMIPDevice);
      v34 = v100;
      v25 = v101;
      v33 = v111;
      if ((v79 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (v79 >= v86[2])
      {
        goto LABEL_29;
      }

      sub_24A76F3A8(v85, v86 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v79, type metadata accessor for FMIPDevice);
    }

    else
    {
LABEL_17:
      sub_24A69004C(v35, type metadata accessor for FMIPDevice);
    }

    v39 = v112;
    v40 = v112 >= v34;
    if (v112 != v34)
    {
      goto LABEL_2;
    }

LABEL_5:
    v45 = 1;
    v112 = v34;
  }
}

void sub_24A758EF8(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = v55 - v3;
  v4 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = v55 - v5;
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = v55 - v7;
  v57 = type metadata accessor for FMIPItemGroup(0);
  v8 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v56 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = v55 - v11;
  v12 = type metadata accessor for FMIPDevice(0);
  v71 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v62 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = v55 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v55 - v17;
  v19 = sub_24A6BBA94(&unk_27EF5E0C0, &unk_24A837180);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v69 = (v55 - v21);
  v22 = sub_24A6BBA94(&qword_27EF5DF70, &unk_24A837730);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (v55 - v26);
  v72 = *(a1 + 16);
  v28 = (v20 + 56);
  v29 = (v20 + 48);
  v64 = v8;
  v55[1] = v8 + 56;
  v30 = 0;

  v68 = 0;
  v70 = v67;
  v31 = v72;
  while (1)
  {
    if (v30 == v31)
    {
      v33 = 1;
      v30 = v31;
      goto LABEL_9;
    }

    if (v30 >= v31)
    {
      break;
    }

    if (__OFADD__(v30, 1))
    {
      goto LABEL_21;
    }

    v34 = v69;
    v35 = v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v30;
    v36 = *(v19 + 48);
    *v69 = v30;
    sub_24A68FE04(v35, v34 + v36, type metadata accessor for FMIPDevice);
    v37 = v34;
    v31 = v72;
    sub_24A67E8FC(v37, v25, &unk_27EF5E0C0, &unk_24A837180);
    v33 = 0;
    ++v30;
LABEL_9:
    (*v28)(v25, v33, 1, v19);
    sub_24A67E8FC(v25, v27, &qword_27EF5DF70, &unk_24A837730);
    if ((*v29)(v27, 1, v19) == 1)
    {
      return;
    }

    v73 = *v27;
    sub_24A68D628(v27 + *(v19 + 48), v18, type metadata accessor for FMIPDevice);
    v32 = *(v18 + 4);
    if (v32 == 0x72656E776FLL && *(v18 + 5) == 0xE500000000000000 || (v32 = sub_24A82DC04(), (v32 & 1) != 0))
    {
      v66 = v55;
      v38 = *(v60 + 288);
      MEMORY[0x28223BE20](v32);
      v54 = v18;

      v39 = v38;
      v40 = v68;
      v41 = sub_24A754538(sub_24A76EE14, &v53, v39);
      v68 = v40;
      if (*(v41 + 16))
      {
        v42 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v66 = type metadata accessor for FMIPItemGroup;
        v43 = v56;
        sub_24A68FE04(v41 + v42, v56, type metadata accessor for FMIPItemGroup);

        v44 = v43;
        v45 = v63;
        sub_24A68D628(v44, v63, type metadata accessor for FMIPItemGroup);
        sub_24A68FE04(v18, v62, type metadata accessor for FMIPDevice);
        sub_24A68808C(v79);
        memcpy(v78, v79, sizeof(v78));
        memset(v77, 0, sizeof(v77));
        memset(v76, 0, sizeof(v76));
        memset(v75, 0, sizeof(v75));
        v46 = v45;
        v47 = v65;
        sub_24A68FE04(v46, v65, v66);
        (*(v64 + 56))(v47, 0, 1, v57);
        v74 = 7;
        v48 = type metadata accessor for FMIPDeviceConnectedState(0);
        v49 = v58;
        (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
        v50 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
        v51 = v59;
        (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
        FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v62, 0, v78, v77, v76, v75, 2, v65, v61, 2u, 2, &v74, v49, v51);
        v52 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_24A766CD4(v52);
        }

        v31 = v72;
        sub_24A69004C(v63, type metadata accessor for FMIPItemGroup);
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v73 >= *(v67 + 16))
        {
          goto LABEL_23;
        }

        sub_24A76F3A8(v61, v67 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v73, type metadata accessor for FMIPDevice);
      }

      else
      {

        v31 = v72;
      }
    }

    sub_24A69004C(v18, type metadata accessor for FMIPDevice);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_24A759738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (!v2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 16) && v2 == *(a1 + 16))
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

void sub_24A7597F4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a3;
  v167 = a2;
  v4 = type metadata accessor for FMIPDevice(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v156 = (&v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v170 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v168 = &v154 - v10;
  v172 = sub_24A82CAA4();
  v11 = *(v172 - 8);
  v12 = MEMORY[0x28223BE20](v172);
  v165 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v159 = &v154 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v157 = &v154 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v160 = &v154 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v162 = &v154 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v163 = (&v154 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v171 = &v154 - v25;
  MEMORY[0x28223BE20](v24);
  v164 = &v154 - v26;
  v27 = type metadata accessor for FMIPItem(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v154 - v32;
  sub_24A67E964(a1 + *(v5 + 136), &v154 - v32, &unk_27EF5E0B0, &qword_24A8338B0);
  v34 = type metadata accessor for FMIPItemGroup(0);
  v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
  v166 = v11;
  if (v35 == 1)
  {
    sub_24A67F378(v33, &unk_27EF5E0B0, &qword_24A8338B0);
    if (!*(a1 + 24))
    {
LABEL_27:
      sub_24A68FE04(a1, v158, type metadata accessor for FMIPDevice);
      return;
    }

    v36 = v170;
    sub_24A82CA44();
    v37 = v172;
    if ((*(v11 + 48))(v36, 1, v172) == 1)
    {
      sub_24A67F378(v36, &qword_27EF5D020, &qword_24A830E40);
      goto LABEL_27;
    }

    v155 = a1;
    v62 = *(v11 + 32);
    v63 = v163;
    v62(v163, v36, v37);
    sub_24A6BBA94(&qword_27EF5E110, &unk_24A835280);
    v64 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_24A8327A0;
    v66 = (v65 + 16);
    v169 = v65;
    v62((v65 + v64), v63, v37);
    v67 = *v66;
    v163 = v66;
    v164 = v67;
    if (!v67)
    {
      v164 = 0;
      v70 = MEMORY[0x277D84F90];
      LODWORD(v168) = 1;
      v61 = v167;
      goto LABEL_43;
    }

    v61 = v167;
  }

  else
  {
    v155 = a1;
    v38 = *(v33 + 5);

    sub_24A69004C(v33, type metadata accessor for FMIPItemGroup);
    v39 = v38[2];
    if (v39)
    {
      v174[0] = MEMORY[0x277D84F90];
      sub_24A6FC900(0, v39, 0);
      v40 = v174[0];
      v41 = v38 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v42 = *(v28 + 72);
      v169 = v38;
      v170 = v42;
      do
      {
        sub_24A68FE04(v41, v30, type metadata accessor for FMIPItem);
        v44 = *(v30 + 44);
        v43 = *(v30 + 45);

        sub_24A69004C(v30, type metadata accessor for FMIPItem);
        v174[0] = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_24A6FC900((v45 > 1), v46 + 1, 1);
          v40 = v174[0];
        }

        *(v40 + 16) = v46 + 1;
        v47 = v40 + 16 * v46;
        *(v47 + 32) = v44;
        *(v47 + 40) = v43;
        v41 += v170;
        --v39;
      }

      while (v39);

      v11 = v166;
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v48 = *(v40 + 16);
    v49 = v168;
    if (v48)
    {
      v50 = 0;
      v51 = v11;
      v52 = (v11 + 48);
      v170 = v51 + 32;
      v53 = v40 + 40;
      v169 = MEMORY[0x277D84F90];
      v163 = v48;
      v161 = v52;
      while (v50 < *(v40 + 16))
      {

        sub_24A82CA44();

        v54 = v172;
        if ((*v52)(v49, 1, v172) == 1)
        {
          sub_24A67F378(v49, &qword_27EF5D020, &qword_24A830E40);
        }

        else
        {
          v55 = *v170;
          v56 = v164;
          (*v170)(v164, v49, v54);
          (v55)(v171, v56, v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v169 = sub_24A78029C(0, *(v169 + 16) + 1, 1, v169);
          }

          v58 = *(v169 + 16);
          v57 = *(v169 + 24);
          v52 = v161;
          if (v58 >= v57 >> 1)
          {
            v169 = sub_24A78029C((v57 > 1), v58 + 1, 1, v169);
          }

          v59 = v169;
          *(v169 + 16) = v58 + 1;
          (v55)(&v59[((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v58], v171, v172);
          v49 = v168;
          v48 = v163;
        }

        v50 = (v50 + 1);
        v53 += 16;
        if (v48 == v50)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
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
LABEL_135:
      __break(1u);
      return;
    }

    v169 = MEMORY[0x277D84F90];
LABEL_24:

    v60 = *(v169 + 16);
    v163 = (v169 + 16);
    v164 = v60;
    if (!v60)
    {

      a1 = v155;
      goto LABEL_27;
    }

    v11 = v166;
    v61 = v167;
    v37 = v172;
  }

  v170 = *(v11 + 16);
  v171 = (v11 + 16);
  v68 = v169 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v168 = *(v11 + 72);
  v69 = (v11 + 8);
  v70 = MEMORY[0x277D84F90];
  v71 = v164;
  v72 = v162;
  (v170)(v162, v68, v37);
  while (1)
  {
    v73 = v61[32];
    if (!*(v73 + 16))
    {
      goto LABEL_32;
    }

    v74 = sub_24A77EDF8(v72);
    if ((v75 & 1) == 0)
    {

LABEL_32:
      (*v69)(v72, v37);
      goto LABEL_33;
    }

    v76 = *(*(v73 + 56) + v74);
    (*v69)(v72, v37);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_24A7806BC(0, *(v70 + 2) + 1, 1, v70);
    }

    v78 = *(v70 + 2);
    v77 = *(v70 + 3);
    if (v78 >= v77 >> 1)
    {
      v70 = sub_24A7806BC((v77 > 1), v78 + 1, 1, v70);
    }

    *(v70 + 2) = v78 + 1;
    v70[v78 + 32] = v76;
    v61 = v167;
    v37 = v172;
    v72 = v162;
LABEL_33:
    v68 += v168;
    if (!--v71)
    {
      break;
    }

    (v170)(v72, v68, v37);
  }

  LODWORD(v168) = 0;
  v11 = v166;
LABEL_43:
  v79 = v169;
  if (*(v70 + 2))
  {
    LODWORD(v161) = v70[32];
  }

  else
  {
    LODWORD(v161) = 0;
  }

  v80 = 0;
  v170 = v11 + 8;
  v171 = (v11 + 16);
  v81 = v157;
  do
  {
    v82 = v80;
    if (v164 == v80)
    {
      break;
    }

    if (v80 >= *v163)
    {
      goto LABEL_133;
    }

    v83 = v160;
    (*(v11 + 16))(v160, v79 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v80, v37);
    v84 = v61[33];
    if (!*(v84 + 16))
    {
      goto LABEL_54;
    }

    v85 = sub_24A77EDF8(v83);
    if ((v86 & 1) == 0)
    {

LABEL_54:
      (*v170)(v83, v37);
      break;
    }

    v87 = v83;
    v88 = *(*(v84 + 56) + v85);
    (*v170)(v87, v37);

    v80 = v82 + 1;
  }

  while ((v88 & 1) != 0);
  v89 = 0;
  do
  {
    v90 = v89;
    if (v164 == v89)
    {
      break;
    }

    if (v89 >= *v163)
    {
      goto LABEL_134;
    }

    (*(v11 + 16))(v81, v169 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v89, v37);
    v91 = v61[34];
    if (!*(v91 + 16))
    {
      goto LABEL_63;
    }

    v92 = sub_24A77EDF8(v81);
    if ((v93 & 1) == 0)
    {

LABEL_63:
      (*v170)(v81, v37);
      break;
    }

    v94 = *(*(v91 + 56) + v92);
    (*v170)(v81, v37);

    v89 = v90 + 1;
  }

  while ((v94 & 1) != 0);
  v160 = v90;
  v163 = v82;
  if ((v168 & 1) == 0)
  {
    v121 = (v169 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    v122 = *(v11 + 72);
    v123 = *(v11 + 16);
    v95 = MEMORY[0x277D84F90];
    v124 = v164;
    v125 = v159;
    v168 = v123;
    v123(v159, v121, v172);
    while (1)
    {
      v126 = v167[31];
      if (!*(v126 + 16))
      {
        goto LABEL_92;
      }

      v127 = sub_24A77EDF8(v125);
      if ((v128 & 1) == 0)
      {
        break;
      }

      v129 = *(*(v126 + 56) + 8 * v127);
      v130 = *v170;

      v130(v125, v172);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_24A780698(0, v95[2] + 1, 1, v95);
      }

      v132 = v95[2];
      v131 = v95[3];
      if (v132 >= v131 >> 1)
      {
        v95 = sub_24A780698((v131 > 1), v132 + 1, 1, v95);
      }

      v123 = v168;
      v95[2] = v132 + 1;
      v95[v132 + 4] = v129;
      v125 = v159;
LABEL_93:
      v121 += v122;
      if (!--v124)
      {
        goto LABEL_66;
      }

      v123(v125, v121, v172);
    }

LABEL_92:
    (*v170)(v125, v172);
    goto LABEL_93;
  }

  v95 = MEMORY[0x277D84F90];
LABEL_66:

  v96 = v95[2];
  v97 = MEMORY[0x277D84F90];
  if (v96)
  {
    v98 = 0;
    v169 = (v95 + 4);
    do
    {
      if (v98 >= v95[2])
      {
        goto LABEL_129;
      }

      v99 = *(v169 + 8 * v98);
      v100 = *(v99 + 16);
      v101 = *(v97 + 2);
      v102 = v101 + v100;
      if (__OFADD__(v101, v100))
      {
        goto LABEL_130;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v102 <= *(v97 + 3) >> 1)
      {
        if (!*(v99 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v101 <= v102)
        {
          v104 = v101 + v100;
        }

        else
        {
          v104 = v101;
        }

        v97 = sub_24A78029C(isUniquelyReferenced_nonNull_native, v104, 1, v97);
        if (!*(v99 + 16))
        {
LABEL_68:

          if (v100)
          {
            goto LABEL_131;
          }

          goto LABEL_69;
        }
      }

      if ((*(v97 + 3) >> 1) - *(v97 + 2) < v100)
      {
        goto LABEL_132;
      }

      swift_arrayInitWithCopy();

      if (v100)
      {
        v105 = *(v97 + 2);
        v106 = __OFADD__(v105, v100);
        v107 = v105 + v100;
        if (v106)
        {
          goto LABEL_135;
        }

        *(v97 + 2) = v107;
      }

LABEL_69:
      ++v98;
    }

    while (v96 != v98);
  }

  v162 = v97;

  v108 = *(v162 + 2);
  if (v108)
  {
    v174[0] = MEMORY[0x277D84F90];
    v109 = v162;
    sub_24A6FC900(0, v108, 0);
    v110 = v174[0];
    v111 = &v109[(*(v166 + 80) + 32) & ~*(v166 + 80)];
    v112 = *(v166 + 72);
    v168 = *(v166 + 16);
    v169 = v112;
    do
    {
      v113 = v165;
      v114 = v172;
      (v168)(v165, v111, v172);
      v115 = sub_24A82CA54();
      v117 = v116;
      (*v170)(v113, v114);
      v174[0] = v110;
      v119 = *(v110 + 16);
      v118 = *(v110 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_24A6FC900((v118 > 1), v119 + 1, 1);
        v110 = v174[0];
      }

      *(v110 + 16) = v119 + 1;
      v120 = v110 + 16 * v119;
      *(v120 + 32) = v115;
      *(v120 + 40) = v117;
      v111 += v169;
      --v108;
    }

    while (v108);
  }

  else
  {

    v110 = MEMORY[0x277D84F90];
  }

  v133 = sub_24A714404(v110);

  v134 = v167[30];
  v135 = *(v134 + 16);

  v136 = v163;
  v172 = v135;
  if (v135)
  {
    v137 = 0;
    v171 = (v134 + 32);
    v138 = v133 + 56;
    v139 = MEMORY[0x277D84F90];
    v170 = v134;
    while (1)
    {
      while (1)
      {
        if (v137 >= *(v134 + 16))
        {
          goto LABEL_128;
        }

        memcpy(v174, &v171[352 * v137++], 0x160uLL);
        if (*(v133 + 16))
        {
          break;
        }

LABEL_106:
        if (v137 == v172)
        {
          goto LABEL_125;
        }
      }

      v140 = v174[0];
      v141 = v174[1];
      sub_24A82DCC4();
      sub_24A6CC988(v174, &v173);

      sub_24A82D094();
      v142 = sub_24A82DD24();
      v143 = -1 << *(v133 + 32);
      v144 = v142 & ~v143;
      if (((*(v138 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) == 0)
      {
LABEL_105:
        sub_24A6CC294(v174);

        v136 = v163;
        v134 = v170;
        goto LABEL_106;
      }

      v145 = ~v143;
      while (1)
      {
        v146 = (*(v133 + 48) + 16 * v144);
        v147 = *v146 == v140 && v146[1] == v141;
        if (v147 || (sub_24A82DC04() & 1) != 0)
        {
          break;
        }

        v144 = (v144 + 1) & v145;
        if (((*(v138 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      v148 = swift_isUniquelyReferenced_nonNull_native();
      v175 = v139;
      v136 = v163;
      if ((v148 & 1) == 0)
      {
        sub_24A6FCA0C(0, *(v139 + 16) + 1, 1);
        v139 = v175;
      }

      v150 = *(v139 + 16);
      v149 = *(v139 + 24);
      if (v150 >= v149 >> 1)
      {
        sub_24A6FCA0C((v149 > 1), v150 + 1, 1);
        v139 = v175;
      }

      *(v139 + 16) = v150 + 1;
      memcpy((v139 + 352 * v150 + 32), v174, 0x160uLL);
      v134 = v170;
      if (v137 == v172)
      {
        goto LABEL_125;
      }
    }
  }

  v139 = MEMORY[0x277D84F90];
LABEL_125:
  v151 = v164 == v160;
  v152 = v164 == v136;

  v153 = v156;
  sub_24A68FE04(v155, v156, type metadata accessor for FMIPDevice);
  LOBYTE(v174[0]) = v161;
  FMIPDevice.init(device:separationMonitoringState:separationSupported:canBeLeashedByHost:safeLocations:)(v153, v174, v152, v151, v139, v158);
}

uint64_t sub_24A75A9C0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v23 = a4;
  v24 = a5;
  v7 = v5;
  v9 = a2(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v25 = MEMORY[0x277D84F90];
    v22 = a3;
    a3(0, v13, 0);
    v14 = v25;
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = a1 + v15;
    v17 = *(v10 + 72);
    do
    {
      v23(v16, v7);
      v25 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        v22(v18 > 1, v19 + 1, 1);
        v14 = v25;
      }

      *(v14 + 16) = v19 + 1;
      sub_24A68D628(v12, v14 + v15 + v19 * v17, v24);
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_24A75AB50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v6 = type metadata accessor for FMIPItem(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v51 - v10;
  v12 = sub_24A82CAA4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v51 - v16;
  sub_24A82CA44();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24A67F378(v11, &qword_27EF5D020, &qword_24A830E40);
LABEL_13:
    sub_24A68FE04(a1, v57, type metadata accessor for FMIPItem);
    return;
  }

  (*(v13 + 32))(v17, v11, v12);
  v18 = *(a2 + 248);
  if (!*(v18 + 16))
  {
LABEL_12:
    (*(v13 + 8))(v17, v12);
    goto LABEL_13;
  }

  v55 = a2;

  v56 = v17;
  v19 = sub_24A77EDF8(v17);
  if ((v20 & 1) == 0)
  {

    v17 = v56;
    goto LABEL_12;
  }

  v62 = v12;
  v53 = v8;
  v54 = a1;
  v64 = v3;
  v21 = *(*(v18 + 56) + 8 * v19);

  v22 = *(v21 + 16);
  v52 = v13;
  if (v22)
  {
    v67[0] = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v22, 0);
    v23 = v67[0];
    v24 = v13 + 16;
    v25 = *(v13 + 16);
    v26 = *(v13 + 80);
    v51[1] = v21;
    v27 = v21 + ((v26 + 32) & ~v26);
    v59 = *(v24 + 56);
    v60 = v25;
    v61 = v24;
    v58 = (v24 - 8);
    do
    {
      v29 = v62;
      v28 = v63;
      (v60)(v63, v27, v62);
      v30 = sub_24A82CA54();
      v32 = v31;
      (*v58)(v28, v29);
      v67[0] = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24A6FC900((v33 > 1), v34 + 1, 1);
        v23 = v67[0];
      }

      *(v23 + 16) = v34 + 1;
      v35 = v23 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v27 += v59;
      --v22;
    }

    while (v22);
    v63 = v23;
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
  }

  v36 = *(v55 + 240);
  v37 = *(v36 + 16);

  v38 = v56;
  if (v37)
  {
    v39 = 0;
    v40 = (v36 + 32);
    v61 = v37;
    v59 = v37 - 1;
    v41 = MEMORY[0x277D84F90];
    v60 = (v36 + 32);
    do
    {
      v42 = &v40[352 * v39];
      v43 = v39;
      while (1)
      {
        if (v43 >= *(v36 + 16))
        {
          __break(1u);
          return;
        }

        v44 = memcpy(v67, v42, 0x160uLL);
        v39 = v43 + 1;
        v66[0] = v67[0];
        v66[1] = v67[1];
        MEMORY[0x28223BE20](v44);
        v51[-2] = v66;
        sub_24A6CC988(v67, &v65);

        v45 = v64;
        v46 = sub_24A7FD8A8(sub_24A770FC4, &v51[-4], v63);
        v64 = v45;

        if (v46)
        {
          break;
        }

        sub_24A6CC294(v67);
        v42 += 352;
        ++v43;
        if (v61 == v39)
        {
          v38 = v56;
          goto LABEL_29;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A6FCA0C(0, *(v41 + 16) + 1, 1);
        v41 = v68;
      }

      v38 = v56;
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_24A6FCA0C((v48 > 1), v49 + 1, 1);
        v41 = v68;
      }

      *(v41 + 16) = v49 + 1;
      memcpy((v41 + 352 * v49 + 32), v67, 0x160uLL);
      v40 = v60;
    }

    while (v59 != v43);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

LABEL_29:

  v50 = v53;
  sub_24A68FE04(v54, v53, type metadata accessor for FMIPItem);
  FMIPItem.init(item:safeLocations:)(v50, v41, v57);
  (*(v52 + 8))(v38, v62);
}

void *sub_24A75B108(unint64_t a1)
{
  v2 = sub_24A82CA34();
  v229 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v192 = &v167 - v9;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated);
  v199 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v215 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v167 - v14;
  v16 = sub_24A6BBA94(&qword_27EF5E0E8, &unk_24A837740);
  MEMORY[0x28223BE20](v16 - 8);
  v214 = (&v167 - v17);
  v18 = type metadata accessor for FMReverseGeocodingRequest(0);
  v217 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v205 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMIPItem(0);
  v209 = *(v20 - 1);
  v21 = MEMORY[0x28223BE20](v20);
  v216 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v202 = (&v167 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v204 = &v167 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v198 = &v167 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v167 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v228 = (&v167 - v33);
  MEMORY[0x28223BE20](v32);
  v226 = &v167 - v34;
  v225 = sub_24A6BBA94(&unk_27EF5E0F0, &unk_24A837170);
  v221 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v207 = (&v167 - v35);
  v36 = sub_24A6BBA94(&qword_27EF5DF68, &unk_24A837750);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v224 = &v167 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v223 = (&v167 - v39);
  v40 = qword_281515DC8;

  if (v40 == -1)
  {
    goto LABEL_2;
  }

LABEL_53:
  swift_once();
LABEL_2:
  v190 = v31;
  v213 = v18;
  v196 = v8;
  v193 = v4;
  v194 = v2;
  v41 = sub_24A82CDC4();
  v42 = sub_24A6797D0(v41, qword_281518F88);

  v219 = v42;
  v43 = sub_24A82CD94();
  v44 = sub_24A82D504();

  v45 = os_log_type_enabled(v43, v44);
  v227 = v15;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    v48 = sub_24A82D224();
    *(v46 + 4) = v48;
    *v47 = v48;
    _os_log_impl(&dword_24A675000, v43, v44, "FMIPDataManager: Appending address to items %@", v46, 0xCu);
    sub_24A67F378(v47, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v47, -1, -1);
    v49 = v46;
    v15 = v227;
    MEMORY[0x24C21E1D0](v49, -1, -1);
  }

  v203 = v20;

  v50 = 0;
  v51 = *(a1 + 16);
  v52 = v221;
  v218 = OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache;
  v221 += 6;
  v222 = (v52 + 7);
  v211 = (v217 + 56);
  v212 = 0;
  v210 = (v217 + 48);
  v18 = v226;
  v184 = (v204 + 392);
  v188 = v202 + 49;
  v189 = (v226 + 392);
  v187 = (v229 + 16);
  v186 = (v229 + 56);
  v185 = (v229 + 48);
  v197 = (v229 + 32);
  *&v53 = 136315138;
  v206 = v53;
  v31 = &unk_24A8343F0;
  *&v53 = 136315394;
  v183 = v53;
  v208 = a1;
  v201 = a1;
  v20 = v228;
  v4 = v224;
  v2 = v225;
  v217 = v51;
  v54 = v51 == 0;
  if (!v51)
  {
LABEL_5:
    v55 = 1;
    v229 = v51;
    goto LABEL_9;
  }

  while (1)
  {
    if (v54)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v56 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_52;
    }

    v57 = v207;
    v58 = v208 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v50;
    v59 = *(v2 + 48);
    *v207 = v50;
    sub_24A68FE04(v58, v57 + v59, type metadata accessor for FMIPItem);
    sub_24A67E8FC(v57, v4, &unk_27EF5E0F0, &unk_24A837170);
    v55 = 0;
    v229 = v56;
LABEL_9:
    (*v222)(v4, v55, 1, v2);
    v60 = v223;
    sub_24A67E8FC(v4, v223, &qword_27EF5DF68, &unk_24A837750);
    if ((*v221)(v60, 1, v2) == 1)
    {
      return v201;
    }

    v61 = *v60;
    sub_24A68D628(v60 + *(v2 + 48), v18, type metadata accessor for FMIPItem);
    v62 = *(v220 + v218);
    if (!v62)
    {
      goto LABEL_22;
    }

    sub_24A68FE04(v18, v20, type metadata accessor for FMIPItem);
    sub_24A67E964(v62 + qword_27EF78F28, v15, &qword_27EF5E930, &unk_24A8343F0);
    v63 = *(v20 + 49);
    if (v63)
    {
      v64 = *(v20 + 48) >> 24;
      v8 = *(v20 + 44);
      v65 = *(v20 + 45);
      sub_24A67E964(v15, v215, &qword_27EF5E930, &unk_24A8343F0);
      LOBYTE(v234[0]) = v64;
      if (FMIPLocationType.rawValue.getter() == 0x656D69746C616572 && v66 == 0xE800000000000000)
      {
        v67 = v61;
        v68 = 1;
      }

      else
      {
        v67 = v61;
        v68 = sub_24A82DC04();
      }

      v72 = v63;

      v31 = &unk_24A8343F0;
      sub_24A67F378(v227, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v228, type metadata accessor for FMIPItem);
      v71 = v214;
      v73 = v215;
      *v214 = v8;
      *(v71 + 8) = v65;
      v70 = v213;
      *(v71 + *(v213 + 32)) = 0;
      *(v71 + *(v70 + 28)) = v68 & 1;
      *(v71 + 16) = v72;
      sub_24A67E8FC(v73, v71 + *(v70 + 24), &qword_27EF5E930, &unk_24A8343F0);
      v69 = 0;
      v61 = v67;
    }

    else
    {
      sub_24A67F378(v15, &qword_27EF5E930, &unk_24A8343F0);
      sub_24A69004C(v20, type metadata accessor for FMIPItem);
      v69 = 1;
      v70 = v213;
      v71 = v214;
    }

    (*v211)(v71, v69, 1, v70);
    if ((*v210)(v71, 1, v70) == 1)
    {
      sub_24A67F378(v71, &qword_27EF5E0E8, &unk_24A837740);
      sub_24A68808C(v234);
      memcpy(v235, v234, 0x120uLL);
    }

    else
    {
      v74 = v205;
      v75 = sub_24A68D628(v71, v205, type metadata accessor for FMReverseGeocodingRequest);
      v8 = &v167;
      MEMORY[0x28223BE20](v75);
      *(&v167 - 2) = v62;
      *(&v167 - 1) = v74;
      sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
      v76 = v212;
      sub_24A82D574();
      v212 = v76;
      sub_24A69004C(v74, type metadata accessor for FMReverseGeocodingRequest);
    }

    v18 = v226;
    v20 = v228;
    memcpy(v233, v235, sizeof(v233));
    memcpy(v234, v235, sizeof(v234));
    if (sub_24A6921A8(v234) == 1)
    {
LABEL_22:
      a1 = v216;
      sub_24A68FE04(v18, v216, type metadata accessor for FMIPItem);
      v77 = sub_24A82CD94();
      v78 = sub_24A82D504();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v235[0] = v80;
        *v79 = v206;
        v82 = *(a1 + 352);
        v81 = *(a1 + 360);

        v8 = type metadata accessor for FMIPItem;
        sub_24A69004C(a1, type metadata accessor for FMIPItem);
        v83 = v82;
        v31 = &unk_24A8343F0;
        v20 = v228;
        a1 = sub_24A68761C(v83, v81, v235);

        *(v79 + 4) = a1;
        _os_log_impl(&dword_24A675000, v77, v78, "FMIPDataManager: Item %s has no address", v79, 0xCu);
        sub_24A6876E8(v80);
        v84 = v80;
        v18 = v226;
        MEMORY[0x24C21E1D0](v84, -1, -1);
        MEMORY[0x24C21E1D0](v79, -1, -1);
      }

      else
      {

        sub_24A69004C(a1, type metadata accessor for FMIPItem);
      }

      sub_24A69004C(v18, type metadata accessor for FMIPItem);
      v15 = v227;
      v4 = v224;
      v2 = v225;
      goto LABEL_26;
    }

    v85 = v61;
    v86 = v190;
    sub_24A68FE04(v18, v190, type metadata accessor for FMIPItem);
    memcpy(v232, v233, sizeof(v232));
    sub_24A76ECE4(v232, v231);
    v87 = sub_24A82CD94();
    v88 = sub_24A82D504();
    sub_24A67F378(v233, &unk_27EF5E0D0, &qword_24A8319E0);
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v230 = v90;
      *v89 = v183;
      v91 = *(v86 + 352);
      v92 = *(v86 + 360);

      sub_24A69004C(v86, type metadata accessor for FMIPItem);
      v93 = sub_24A68761C(v91, v92, &v230);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      memcpy(v231, v234, sizeof(v231));
      v94 = FMIPAddress.debugDescription.getter();
      v96 = sub_24A68761C(v94, v95, &v230);

      *(v89 + 14) = v96;
      v18 = v226;
      _os_log_impl(&dword_24A675000, v87, v88, "FMIPDataManager: Item %s, Address %s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v90, -1, -1);
      MEMORY[0x24C21E1D0](v89, -1, -1);
    }

    else
    {

      sub_24A69004C(v86, type metadata accessor for FMIPItem);
    }

    v97 = v204;
    sub_24A68FE04(v18, v204, type metadata accessor for FMIPItem);
    swift_storeEnumTagMultiPayload();
    memcpy(v231, v234, sizeof(v231));
    nullsub_1();
    v98 = *v189;
    v99 = *(v18 + 312);
    v100 = *(v18 + 320);
    v101 = *(v97 + v203[19]);
    v102 = v97;
    v103 = *v189;
    v182 = v85;
    v195 = v100;
    if (v103)
    {
      v200 = v98;
      v104 = *(v18 + 384);
    }

    else
    {
      v104 = *(v97 + 384);
      v200 = *v184;
      v105 = v200;
      *&v100 = v195;
    }

    v106 = *(v102 + v203[25]);
    v107 = v100;
    if (v106 == 1)
    {
      v108 = v200;
      v109 = v100;
      v110 = v103;

      v104 = 0;
      v200 = 0u;
    }

    else
    {
      v111 = v103;
      v112 = v107;
    }

    v113 = v202;
    memcpy(v202 + 1, v231, 0x120uLL);
    v114 = v204;
    *(v113 + 296) = *(v204 + 296);
    v113[38] = *(v114 + 304);
    if (!v107)
    {
      v99 = *(v114 + 312);
      v195 = *(v114 + 320);
      v115 = v195;
    }

    v113[39] = v99;
    *(v113 + 20) = v195;
    v116 = *(v114 + 344);
    v113[42] = *(v114 + 336);
    v113[43] = v116;
    v180 = v116;
    v117 = *(v114 + 360);
    v113[44] = *(v114 + 352);
    v113[45] = v117;
    v181 = v117;
    v118 = *(v114 + 376);
    v113[46] = *(v114 + 368);
    v113[47] = v118;
    *&v195 = v118;
    v119 = v203;
    *(v113 + v203[21]) = *(v114 + v203[21]);
    *(v113 + v119[22]) = *(v114 + v119[22]);
    *(v113 + v119[25]) = v106;
    v120 = v200;
    if (!v200)
    {
      v104 = *(v114 + 384);
      v200 = *v184;
      v121 = v200;
      v120 = v200;
    }

    v113[48] = v104;
    *v188 = v120;
    sub_24A67E964(v114 + v119[13], v113 + v119[13], &unk_27EF5E100, &unk_24A839DB0);
    v122 = v119[14];
    v124 = *(v114 + v122);
    v123 = *(v114 + v122 + 8);
    v125 = (v113 + v122);
    *v125 = v124;
    v125[1] = v123;
    v175 = v123;
    v126 = v119[15];
    v128 = *(v114 + v126);
    v127 = *(v114 + v126 + 8);
    v129 = (v113 + v126);
    *v129 = v128;
    v129[1] = v127;
    v174 = v127;
    v130 = v119[16];
    v131 = *(v114 + v130);
    v132 = *(v114 + v130 + 8);
    v133 = *(v114 + v130 + 16);
    v134 = *(v114 + v130 + 24);
    LODWORD(v127) = *(v114 + v130 + 32);
    v135 = v113 + v130;
    *&v200 = v131;
    *v135 = v131;
    *(v135 + 1) = v132;
    v178 = v133;
    v179 = v132;
    *(v135 + 2) = v133;
    *(v135 + 3) = v134;
    v177 = v134;
    v176 = v127;
    v135[32] = v127;
    sub_24A68FE04(v114 + v119[24], v113 + v119[24], type metadata accessor for FMIPProductType);
    v136 = v119[17];
    v137 = (v114 + v136);
    v139 = *(v114 + v136 + 16);
    v138 = *(v114 + v136 + 24);
    v140 = *(v114 + v136 + 32);
    v141 = v113 + v136;
    *v141 = *v137;
    v170 = v139;
    *(v141 + 2) = v139;
    *(v141 + 3) = v138;
    *(v141 + 4) = v140;
    v142 = v119[18];
    v144 = *(v114 + v142);
    v143 = *(v114 + v142 + 8);
    v145 = (v113 + v142);
    *v145 = v144;
    v145[1] = v143;
    v172 = v143;
    v173 = v140;
    *(v113 + v119[19]) = v101;
    v146 = v119[20];
    v148 = *(v114 + v146);
    v147 = *(v114 + v146 + 8);
    v149 = (v113 + v146);
    *v149 = v148;
    v149[1] = v147;
    v169 = v147;
    v150 = v119[23];
    v171 = *(v114 + v150);
    *(v113 + v150) = v171;
    v151 = *v114;
    v152 = *v187;
    v153 = v192;
    v154 = v194;
    (*v187)(v192, *v114 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v194);
    (*v186)(v153, 0, 1, v154);
    type metadata accessor for FMIPItemUpdateContext(0);
    v155 = swift_allocObject();
    sub_24A68D628(v199, v155 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    v8 = OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    v168 = v155;
    v152((v155 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp), v151 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v154);
    v156 = v153;
    v157 = v196;
    sub_24A67E8FC(v156, v196, &qword_27EF5E0E0, &qword_24A836D90);
    v158 = *v185;
    if ((*v185)(v157, 1, v154) == 1)
    {
      v159 = v8 + v151;
      v160 = v193;
      v152(v193, v159, v154);
      v161 = v158(v157, 1, v154);

      sub_24A76ED78(v200, v179, v178, v177);

      v18 = v226;
      v31 = &unk_24A8343F0;
      a1 = v182;
      if (v161 != 1)
      {
        sub_24A67F378(v196, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      v160 = v193;
      (*v197)(v193, v157, v154);

      sub_24A76ED78(v200, v179, v178, v177);

      v18 = v226;
      v31 = &unk_24A8343F0;
      a1 = v182;
    }

    v162 = v168;
    (*v197)((v168 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp), v160, v154);
    v163 = v202;
    v164 = v203;
    *v202 = v162;
    v165 = v204;
    *(v163 + v164[26]) = *(v204 + v164[26]);
    sub_24A68D628(v163, v198, type metadata accessor for FMIPItem);
    sub_24A69004C(v165, type metadata accessor for FMIPItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v201 = sub_24A766CE8(v201);
    }

    v15 = v227;
    v4 = v224;
    v2 = v225;
    result = sub_24A69004C(v18, type metadata accessor for FMIPItem);
    if ((a1 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (a1 >= v201[2])
    {
      goto LABEL_55;
    }

    sub_24A76F3A8(v198, v201 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * a1, type metadata accessor for FMIPItem);
LABEL_26:
    v51 = v217;
    v50 = v229;
    v54 = v229 >= v217;
    if (v229 == v217)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_24A75C5DC(uint64_t a1)
{
  v2 = v1;
  v26 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v38 = MEMORY[0x277D84F90];
    sub_24A6FCA0C(0, v5, 0);
    v7 = 0;
    v6 = v38;
    v8 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPDataManager_geocodingCache);
    v9 = (a1 + 32);
    v10 = &qword_24A8319E0;
    v24 = v8;
    do
    {
      memcpy(v37, v9, sizeof(v37));
      memcpy(v34, v9, sizeof(v34));
      if (v8)
      {
        v28 = v7;
        v29 = v6;
        v11 = v37[3];
        v12 = v37[0];
        v13 = v37[1];
        v14 = v10;
        v15 = v25;
        v16 = v26;
        v17 = sub_24A67E964(v8 + qword_27EF78F28, &v25[*(v26 + 24)], &qword_27EF5E930, &unk_24A8343F0);
        v27 = &v23;
        *v15 = v12;
        v15[1] = v13;
        *(v15 + *(v16 + 32)) = 0;
        *(v15 + *(v16 + 28)) = 0;
        v15[2] = v11;
        MEMORY[0x28223BE20](v17);
        *(&v23 - 2) = v8;
        *(&v23 - 1) = v15;
        sub_24A6CC988(v37, v32);
        sub_24A6CC988(v37, v32);

        v18 = v11;
        v19 = v14;
        sub_24A6BBA94(&unk_27EF5E0D0, v14);
        v7 = v28;
        sub_24A82D574();
        sub_24A69004C(v15, type metadata accessor for FMReverseGeocodingRequest);
        memcpy(v30, v33, sizeof(v30));
        memcpy(v31, v33, sizeof(v31));
        if (sub_24A6921A8(v31) != 1)
        {
          sub_24A6CC294(v37);
          memcpy(v36, v30, sizeof(v36));
          v8 = v24;
          v6 = v29;
          v10 = v19;
          goto LABEL_9;
        }

        memcpy(v35, v30, sizeof(v35));
        v8 = v24;
        v6 = v29;
        v10 = v19;
      }

      else
      {
        sub_24A68808C(v36);
        sub_24A6CC988(v37, v32);
        sub_24A6CC988(v37, v32);
        memcpy(v35, v36, sizeof(v35));
      }

      sub_24A67E964(&v37[5], v32, &unk_27EF5E0D0, v10);
      sub_24A6CC294(v37);
      sub_24A67F378(v35, &unk_27EF5E0D0, v10);
      memcpy(v36, &v37[5], sizeof(v36));
LABEL_9:
      memcpy(v33, &v34[40], sizeof(v33));
      sub_24A67F378(v33, &unk_27EF5E0D0, v10);
      memcpy(&v34[40], v36, 0x120uLL);
      memcpy(v32, v34, sizeof(v32));
      v38 = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24A6FCA0C((v20 > 1), v21 + 1, 1);
        v6 = v38;
      }

      *(v6 + 16) = v21 + 1;
      memcpy((v6 + 352 * v21 + 32), v32, 0x160uLL);
      v9 += 352;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_24A75C9A0(void *a1, const void *a2)
{

  v5 = sub_24A75C5DC(v4);

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
    __dst[0] = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x24C21CB90](v5, &type metadata for FMIPSafeLocation);
    v13 = sub_24A68761C(v11, v12, __dst);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPDataManager: Geocoding cache callback, appending address to safe locations %s", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v14 = sub_24A756164(v5);

  if (v14)
  {

    sub_24A756164(v15);
  }

  swift_beginAccess();

  sub_24A7580CC(v16);
  v18 = v17;

  v19 = sub_24A6A30A8(v18, 0);

  if ((v19 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v20 = a1[10];

    sub_24A69C358(a1, v20);

    swift_unknownObjectRelease();
  }

  sub_24A76ECE4(a2, __dst);
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  sub_24A6CD854(a2);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    memcpy(__dst, a2, sizeof(__dst));
    v25 = FMIPAddress.debugDescription.getter();
    v27 = sub_24A68761C(v25, v26, &v32);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_24A675000, v21, v22, "FMIPDataManager: Appending address to items %s", v23, 0xCu);
    sub_24A6876E8(v24);
    MEMORY[0x24C21E1D0](v24, -1, -1);
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  swift_beginAccess();

  v29 = sub_24A75B108(v28);

  v30 = sub_24A75633C(v29, 1, 0);

  if (v30)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {

      sub_24A69BFF8(a1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24A75CD68(__n128 *a1, uint64_t a2)
{
  v92 = a2;
  v93 = a1;
  v3 = type metadata accessor for FMIPDevice(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v85 = v2;
  v7 = *(v2 + 80);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);

    v95 = MEMORY[0x277D84F90];
    do
    {
      sub_24A68FE04(v9, v6, type metadata accessor for FMIPDevice);
      v14 = *(v6 + 2);
      v13 = *(v6 + 3);

      sub_24A69004C(v6, type metadata accessor for FMIPDevice);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_24A780414(0, *(v95 + 2) + 1, 1, v95);
        }

        v16 = *(v95 + 2);
        v15 = *(v95 + 3);
        if (v16 >= v15 >> 1)
        {
          v95 = sub_24A780414((v15 > 1), v16 + 1, 1, v95);
        }

        v11 = v95;
        *(v95 + 2) = v16 + 1;
        v12 = &v11[16 * v16];
        *(v12 + 4) = v14;
        *(v12 + 5) = v13;
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
  }

  v94 = sub_24A75D63C(v85);
  v17 = v93 + 4;
  v18 = 1 << v93[2].n128_i8[0];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v93[4].n128_u64[0];
  v21 = (v18 + 63) >> 6;

  v23 = 0;
  v86 = MEMORY[0x277D84F98];
  v24.n128_u64[0] = 136380675;
  v84 = v24;
  v87 = v21;
  v88 = v17;
  while (v20)
  {
    v25 = v23;
LABEL_22:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v25 << 6);
    v28 = (v93[3].n128_u64[0] + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    v31 = (v93[3].n128_u64[1] + 24 * v27);
    v32 = *v31;
    v89 = *(v31 + 1);
    v90 = v32;
    v91 = *(v31 + 2);
    v33 = *(v31 + 3);
    v34 = v31[2];
    v35 = *(v31 + 1);
    v96 = v30;
    v97 = v29;
    MEMORY[0x28223BE20](v22);
    *(&v84 - 2) = v36;

    v37 = v35;
    v38 = sub_24A7FD8A8(sub_24A76ED40, (&v84 - 2), v95);
    if (v38)
    {
      goto LABEL_32;
    }

    v96 = v30;
    v97 = v29;
    MEMORY[0x28223BE20](v38);
    *(&v84 - 2) = &v96;
    if (sub_24A7FD8A8(sub_24A770FC4, (&v84 - 2), v94))
    {
      goto LABEL_32;
    }

    LOBYTE(v96) = v33;
    if (FMIPLocationType.rawValue.getter() == 0x6F4C646572696170 && v39 == 0xEE006E6F69746163)
    {

LABEL_32:
      v50 = v91;
      v51 = v37;
      v52 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v52;
      if (v89)
      {
        v54 = 256;
      }

      else
      {
        v54 = 0;
      }

      v55 = v54 | v90;
      if (v50)
      {
        v56 = 0x10000;
      }

      else
      {
        v56 = 0;
      }

      sub_24A784C04(v55 | v56 | (v33 << 24), v51, v30, v29, isUniquelyReferenced_nonNull_native, v34);

      v86 = v96;
      goto LABEL_16;
    }

    v40 = sub_24A82DC04();

    if (v40)
    {
      goto LABEL_32;
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v41 = sub_24A82CDC4();
    sub_24A6797D0(v41, qword_281518F88);
    v42 = v37;
    v43 = sub_24A82CD94();
    v44 = sub_24A82D504();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v99 = v46;
      *v45 = v84.n128_u32[0];
      LOBYTE(v96) = v90;
      BYTE1(v96) = v89;
      BYTE2(v96) = v91;
      BYTE3(v96) = v33;
      v97 = v42;
      v98 = v34;
      v47 = FMIPLocation.debugDescription.getter();
      v49 = sub_24A68761C(v47, v48, &v99);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_24A675000, v43, v44, "FMIPDataManager: Trimed location because it doesn't belong to anyone %{private}s", v45, 0xCu);
      sub_24A6876E8(v46);
      MEMORY[0x24C21E1D0](v46, -1, -1);
      MEMORY[0x24C21E1D0](v45, -1, -1);
    }

    else
    {
    }

LABEL_16:
    v23 = v25;
    v21 = v87;
    v17 = v88;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v25 >= v21)
    {
      break;
    }

    v20 = v17->n128_u64[v25];
    ++v23;
    if (v20)
    {
      goto LABEL_22;
    }
  }

  v57 = v92 + 64;
  v58 = 1 << *(v92 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v92 + 64);
  v61 = (v58 + 63) >> 6;

  v63 = 0;
  v64 = MEMORY[0x277D84F98];
LABEL_42:
  v87 = v64;
  v65 = v63;
  if (!v60)
  {
    goto LABEL_44;
  }

  do
  {
    v63 = v65;
LABEL_47:
    v93 = &v84;
    v66 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v67 = v66 | (v63 << 6);
    v68 = (*(v92 + 48) + 16 * v67);
    v70 = *v68;
    v69 = v68[1];
    v71 = (*(v92 + 56) + 24 * v67);
    v72 = *v71;
    LODWORD(v88) = *(v71 + 1);
    v89 = *(v71 + 2);
    v90 = v72;
    v91 = *(v71 + 3);
    v73 = v71[2];
    v74 = *(v71 + 1);
    v96 = v70;
    v97 = v69;
    MEMORY[0x28223BE20](v62);
    *(&v84 - 2) = v75;

    v76 = v74;
    v77 = sub_24A7FD8A8(sub_24A770FC4, (&v84 - 2), v95);
    if (v77 & 1) != 0 || (v96 = v70, v97 = v69, MEMORY[0x28223BE20](v77), *(&v84 - 2) = &v96, (sub_24A7FD8A8(sub_24A770FC4, (&v84 - 2), v94)))
    {
      v78 = v76;
      v79 = v87;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v96 = v79;
      if (v88)
      {
        v81 = 256;
      }

      else
      {
        v81 = 0;
      }

      v82 = v81 | v90;
      if (v89)
      {
        v83 = 0x10000;
      }

      else
      {
        v83 = 0;
      }

      sub_24A784C04(v82 | v83 | (v91 << 24), v78, v70, v69, v80, v73);

      v64 = v96;
      goto LABEL_42;
    }

    v65 = v63;
  }

  while (v60);
LABEL_44:
  while (1)
  {
    v63 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v63 >= v61)
    {

      sub_24A7556C0(v86, v87);

      return;
    }

    v60 = *(v57 + 8 * v63);
    ++v65;
    if (v60)
    {
      goto LABEL_47;
    }
  }

LABEL_60:
  __break(1u);
}

uint64_t sub_24A75D5AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24A75D5F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_24A75D63C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 280);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = *(v3 + 72);

  v10 = MEMORY[0x277D84F90];
  do
  {
    sub_24A68FE04(v8, v5, type metadata accessor for FMIPItem);
    v12 = *(v5 + 44);
    v11 = *(v5 + 45);

    sub_24A69004C(v5, type metadata accessor for FMIPItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24A780414(0, *(v10 + 2) + 1, 1, v10);
    }

    v14 = *(v10 + 2);
    v13 = *(v10 + 3);
    if (v14 >= v13 >> 1)
    {
      v10 = sub_24A780414((v13 > 1), v14 + 1, 1, v10);
    }

    *(v10 + 2) = v14 + 1;
    v15 = &v10[16 * v14];
    *(v15 + 4) = v12;
    *(v15 + 5) = v11;
    v8 += v9;
    --v7;
  }

  while (v7);

  return v10;
}

void sub_24A75D810(uint64_t a1)
{
  v78 = sub_24A82CDF4();
  v2 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24A82CE54();
  v4 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMReverseGeocodingRequest(0);
  v83 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v73 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v8;
  MEMORY[0x28223BE20](v7);
  v93 = &v59 - v9;
  v10 = sub_24A6BBA94(&qword_27EF5E130, &qword_24A837778);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  v82 = sub_24A82CA34();
  v16 = *(v82 - 8);
  v17 = MEMORY[0x28223BE20](v82);
  v71 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v18;
  MEMORY[0x28223BE20](v17);
  v80 = &v59 - v19;
  sub_24A82CA24();
  v20 = *(a1 + 64);
  v60 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v59 = (v21 + 63) >> 6;
  v69 = &v96[2];
  v70 = qword_27EF5EFD0;
  v67 = (v4 + 8);
  v68 = (v2 + 8);
  v81 = v16;
  v65 = v16 + 32;
  v66 = v16 + 16;
  v64 = v95;
  v61 = a1;

  v24 = 0;
  v62 = v15;
  v63 = v13;
  v90 = 0;
  v91 = 0;
  if (v23)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = v28 | (v25 << 6);
      v30 = v61;
      v31 = v93;
      sub_24A68FE04(*(v61 + 48) + *(v83 + 72) * v29, v93, type metadata accessor for FMReverseGeocodingRequest);
      memcpy(v97, (*(v30 + 56) + 288 * v29), 0x120uLL);
      v32 = sub_24A6BBA94(&unk_27EF5E138, &unk_24A837780);
      v33 = *(v32 + 48);
      sub_24A68D628(v31, v13, type metadata accessor for FMReverseGeocodingRequest);
      memcpy(&v13[v33], v97, 0x120uLL);
      (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
      sub_24A76ECE4(v97, v96);
      v27 = v25;
LABEL_13:
      sub_24A67E8FC(v13, v15, &qword_27EF5E130, &qword_24A837778);
      v34 = sub_24A6BBA94(&unk_27EF5E138, &unk_24A837780);
      if ((*(*(v34 - 8) + 48))(v15, 1, v34) == 1)
      {
        break;
      }

      v84 = v27;
      v35 = *(v34 + 48);
      v36 = v93;
      v89 = type metadata accessor for FMReverseGeocodingRequest;
      sub_24A68D628(v15, v93, type metadata accessor for FMReverseGeocodingRequest);
      memcpy(v97, &v15[v35], 0x120uLL);
      v37 = v79;
      v92 = *(v79 + v70);
      v86 = type metadata accessor for FMReverseGeocodingRequest;
      v38 = v73;
      sub_24A68FE04(v36, v73, type metadata accessor for FMReverseGeocodingRequest);
      v39 = *(v83 + 80);
      v40 = (v39 + 24) & ~v39;
      v41 = v40;
      v87 = v39 | 7;
      v88 = v40;
      v42 = (v40 + v74) & 0xFFFFFFFFFFFFFFF8;
      v43 = v40 + v74;
      v85 = v40 + v74;
      v44 = swift_allocObject();
      *(v44 + 16) = v37;
      sub_24A68D628(v38, v44 + v41, type metadata accessor for FMReverseGeocodingRequest);
      *(v44 + v43) = 1;
      v45 = v44 + v42;
      *(v45 + 8) = 0;
      *(v45 + 16) = 0;
      v96[4] = sub_24A76EE34;
      v96[5] = v44;
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 1107296256;
      v96[2] = sub_24A699BA0;
      v96[3] = &unk_285DC72A0;
      v46 = _Block_copy(v96);

      v47 = v75;
      sub_24A82CE24();
      v94[0] = MEMORY[0x277D84F90];
      sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
      v49 = v77;
      v48 = v78;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v47, v49, v46);
      _Block_release(v46);
      (*v68)(v49, v48);
      (*v67)(v47, v76);

      sub_24A68FE04(v93, v38, v86);
      memcpy(v96, v97, sizeof(v96));
      v50 = v81;
      v51 = v71;
      v52 = v82;
      (*(v81 + 16))(v71, v80, v82);
      v53 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + *(v50 + 80) + 288) & ~*(v50 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = v37;
      sub_24A68D628(v38, v55 + v88, v89);
      memcpy((v55 + v53), v96, 0x120uLL);
      (*(v50 + 32))(v55 + v54, v51, v52);

      sub_24A76ECE4(v97, v94);
      sub_24A753E6C(v91, v90);
      v56 = swift_allocObject();
      *(v56 + 16) = sub_24A76EE38;
      *(v56 + 24) = v55;
      v95[2] = sub_24A6806A0;
      v95[3] = v56;
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 1107296256;
      v95[0] = sub_24A6805E4;
      v95[1] = &unk_285DC7318;
      v57 = _Block_copy(v94);

      dispatch_sync(v92, v57);
      _Block_release(v57);
      sub_24A6CD854(v97);
      sub_24A69004C(v93, type metadata accessor for FMReverseGeocodingRequest);
      LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

      if (v52)
      {
        goto LABEL_20;
      }

      v24 = v84;
      v15 = v62;
      v13 = v63;
      v90 = v55;
      v91 = sub_24A76EE38;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    (*(v81 + 8))(v80, v82);

    sub_24A753E6C(v91, v90);
  }

  else
  {
LABEL_5:
    if (v59 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v59;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v59)
      {
        v58 = sub_24A6BBA94(&unk_27EF5E138, &unk_24A837780);
        (*(*(v58 - 8) + 56))(v13, 1, 1, v58);
        v23 = 0;
        goto LABEL_13;
      }

      v23 = *(v60 + 8 * v25);
      ++v24;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_24A75E250(uint64_t *a1, const void *a2, uint64_t a3)
{
  v34 = a3;
  v36 = a2;
  v39 = a1;
  v4 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v35 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v35);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v37 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_24A82CE84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v3;
  v16 = *(v3 + qword_27EF5EFD0);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_24A82CEA4();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    sub_24A68FE04(v39, v8, type metadata accessor for FMReverseGeocodingRequest);
    v19 = v9[11];
    v20 = sub_24A82CA34();
    (*(*(v20 - 8) + 16))(&v11[v19], v34, v20);
    v21 = v8[1];
    *v11 = *v8;
    *(v11 + 1) = v21;
    v22 = v8[2];
    v23 = v36;
    sub_24A76ECE4(v36, &v40);

    *(v11 + 2) = sub_24A6F47C0();
    *(v11 + 3) = v24;
    *(v11 + 4) = v22;
    v25 = *(v8 + *(v35 + 28));
    v26 = v22;
    sub_24A69004C(v8, type metadata accessor for FMReverseGeocodingRequest);
    v11[v9[13]] = v25;
    memcpy(&v11[v9[12]], v23, 0x120uLL);
    v27 = sub_24A6F47C0();
    v29 = v28;
    sub_24A67E964(v11, v6, &unk_27EF5E150, &unk_24A83CCC0);
    v30 = *(v37 + 56);
    v30(v6, 0, 1, v9);
    swift_beginAccess();
    sub_24A7BE388(v6, v27, v29);
    swift_endAccess();
    v32 = *v39;
    v31 = v39[1];
    sub_24A67E964(v11, v6, &unk_27EF5E150, &unk_24A83CCC0);
    v30(v6, 0, 1, v9);
    swift_beginAccess();

    sub_24A7BE388(v6, v32, v31);
    swift_endAccess();
    return sub_24A67F378(v11, &unk_27EF5E150, &unk_24A83CCC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A75E6A0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v159 = a2;
  v5 = sub_24A82CA34();
  v145 = *(v5 - 8);
  v146 = v5;
  MEMORY[0x28223BE20](v5);
  v144 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  MEMORY[0x28223BE20](v7 - 8);
  v153 = &v140 - v8;
  v154 = type metadata accessor for FMReverseGeocodingRequest(0);
  v9 = MEMORY[0x28223BE20](v154);
  v11 = (&v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v152 = (&v140 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v151 = &v140 - v15;
  MEMORY[0x28223BE20](v14);
  v150 = (&v140 - v16);
  v156 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v158 = *(v156 - 8);
  v17 = MEMORY[0x28223BE20](v156);
  v142 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v141 = (&v140 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v143 = (&v140 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v140 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v148 = &v140 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v149 = &v140 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v140 - v31;
  MEMORY[0x28223BE20](v30);
  v157 = &v140 - v33;
  v34 = sub_24A82CE84();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v3 + qword_27EF5EFD0);
  *v37 = v38;
  (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
  v39 = v38;
  LOBYTE(v38) = sub_24A82CEA4();
  (*(v35 + 8))(v37, v34);
  if ((v38 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_19:
    v100 = sub_24A82CDC4();
    sub_24A6797D0(v100, qword_27EF78C00);
    sub_24A68FE04(a1, v11, type metadata accessor for FMReverseGeocodingRequest);

    v101 = sub_24A82CD94();
    v102 = sub_24A82D504();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v162[0] = v104;
      *v103 = 136315394;
      v105 = sub_24A82DDB4();
      v107 = sub_24A68761C(v105, v106, v162);

      *(v103 + 4) = v107;
      *(v103 + 12) = 2080;
      v108 = *v11;
      v109 = v11[1];

      sub_24A69004C(v11, type metadata accessor for FMReverseGeocodingRequest);
      v110 = sub_24A68761C(v108, v109, v162);

      *(v103 + 14) = v110;
      _os_log_impl(&dword_24A675000, v101, v102, "%s: No cached request for %s.", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v104, -1, -1);
      MEMORY[0x24C21E1D0](v103, -1, -1);
    }

    else
    {

      sub_24A69004C(v11, type metadata accessor for FMReverseGeocodingRequest);
    }

    goto LABEL_35;
  }

  v40 = a1[2];
  v41 = sub_24A6F47C0();
  v43 = v42;
  v44 = qword_27EF5EFA8;
  swift_beginAccess();
  v45 = *(v3 + v44);
  if (*(v45 + 16))
  {
    v147 = v40;
    v155 = a1;

    v46 = sub_24A6A2D48(v41, v43);
    v48 = v47;

    if (v48)
    {
      sub_24A67E964(*(v45 + 56) + *(v158 + 72) * v46, v32, &unk_27EF5E150, &unk_24A83CCC0);

      v49 = v32;
      v50 = v157;
      sub_24A67E8FC(v49, v157, &unk_27EF5E150, &unk_24A83CCC0);
      if (qword_27EF5CB88 != -1)
      {
        swift_once();
      }

      v51 = sub_24A82CDC4();
      sub_24A6797D0(v51, qword_27EF78C00);
      v52 = v155;
      v53 = v150;
      sub_24A68FE04(v155, v150, type metadata accessor for FMReverseGeocodingRequest);
      v54 = v52;
      v55 = v151;
      sub_24A68FE04(v54, v151, type metadata accessor for FMReverseGeocodingRequest);
      v56 = v50;
      v57 = v149;
      sub_24A67E964(v56, v149, &unk_27EF5E150, &unk_24A83CCC0);

      v58 = sub_24A82CD94();
      v59 = sub_24A82D504();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *&v162[0] = v148;
        *v60 = 136315906;
        v61 = sub_24A82DDB4();
        v63 = sub_24A68761C(v61, v62, v162);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2080;
        v64 = *v53;
        v65 = v53[1];

        sub_24A69004C(v53, type metadata accessor for FMReverseGeocodingRequest);
        v66 = sub_24A68761C(v64, v65, v162);

        *(v60 + 14) = v66;
        *(v60 + 22) = 2080;
        v67 = sub_24A6F47C0();
        v69 = v68;
        sub_24A69004C(v55, type metadata accessor for FMReverseGeocodingRequest);
        v70 = sub_24A68761C(v67, v69, v162);

        *(v60 + 24) = v70;
        *(v60 + 32) = 2080;
        v71 = v156;
        v72 = FMIPAddress.debugDescription.getter();
        v74 = v73;
        sub_24A67F378(v57, &unk_27EF5E150, &unk_24A83CCC0);
        v75 = sub_24A68761C(v72, v74, v162);

        *(v60 + 34) = v75;
        _os_log_impl(&dword_24A675000, v58, v59, "%s: Using cached request %s based on geoHash %s -> %s.", v60, 0x2Au);
        v76 = v148;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v76, -1, -1);
        MEMORY[0x24C21E1D0](v60, -1, -1);
      }

      else
      {

        sub_24A67F378(v57, &unk_27EF5E150, &unk_24A83CCC0);
        sub_24A69004C(v53, type metadata accessor for FMReverseGeocodingRequest);
        sub_24A69004C(v55, type metadata accessor for FMReverseGeocodingRequest);
        v71 = v156;
      }

      v111 = v155[1];
      v156 = *v155;
      v112 = v152;
      sub_24A68FE04(v155, v152, type metadata accessor for FMReverseGeocodingRequest);
      v113 = *(v71 + 48);
      v114 = v157;
      memcpy(v161, (v157 + v113), sizeof(v161));

      sub_24A76ECE4(v161, v162);
      v115 = [v147 timestamp];
      v116 = v153;
      sub_24A82C9F4();

      v117 = v112[1];
      *v116 = *v112;
      v116[1] = v117;
      v118 = v112[2];

      v116[2] = sub_24A6F47C0();
      v116[3] = v119;
      v116[4] = v118;
      v120 = *(v112 + *(v154 + 28));
      v121 = v118;
      sub_24A69004C(v112, type metadata accessor for FMReverseGeocodingRequest);
      *(v116 + *(v71 + 52)) = v120;
      memcpy(v116 + *(v71 + 48), v161, 0x120uLL);
      (*(v158 + 56))(v116, 0, 1, v71);
      swift_beginAccess();
      sub_24A7BE388(v116, v156, v111);
      swift_endAccess();
      memcpy(v162, (v114 + v113), sizeof(v162));
      sub_24A76ECE4(v162, &v160);
      sub_24A67F378(v114, &unk_27EF5E150, &unk_24A83CCC0);
      memcpy(v159, v162, 0x120uLL);
LABEL_24:
      nullsub_1();
      return;
    }

    a1 = v155;
    v40 = v147;
  }

  else
  {
  }

  v77 = *a1;
  v78 = a1[1];
  v79 = qword_27EF5EFB0;
  swift_beginAccess();
  v80 = *(v3 + v79);
  if (!*(v80 + 16))
  {
LABEL_18:
    if (qword_27EF5CB88 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

  v81 = sub_24A6A2D48(v77, v78);
  if ((v82 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_24A67E964(*(v80 + 56) + *(v158 + 72) * v81, v25, &unk_27EF5E150, &unk_24A83CCC0);

  v83 = v148;
  sub_24A67E8FC(v25, v148, &unk_27EF5E150, &unk_24A83CCC0);
  v84 = v144;
  sub_24A82CA04();
  v85 = v156;
  sub_24A82C974();
  v87 = v86;
  (*(v145 + 8))(v84, v146);
  if (v87 <= 30.0)
  {
    [*(v83 + 32) distanceFromLocation_];
    v123 = v122;
    if (*(a1 + *(v154 + 28)))
    {
      v124 = 50.0;
    }

    else
    {
      v124 = 250.0;
    }

    if (v122 < v124)
    {
      if (qword_27EF5CB88 != -1)
      {
        swift_once();
      }

      v125 = sub_24A82CDC4();
      sub_24A6797D0(v125, qword_27EF78C00);
      v126 = v141;
      sub_24A67E964(v83, v141, &unk_27EF5E150, &unk_24A83CCC0);
      v127 = v142;
      sub_24A67E964(v83, v142, &unk_27EF5E150, &unk_24A83CCC0);
      v128 = sub_24A82CD94();
      v129 = sub_24A82D504();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v162[0] = v131;
        *v130 = 136315906;
        v132 = *v126;
        v133 = v126[1];

        sub_24A67F378(v126, &unk_27EF5E150, &unk_24A83CCC0);
        v134 = sub_24A68761C(v132, v133, v162);

        *(v130 + 4) = v134;
        *(v130 + 12) = 2048;
        *(v130 + 14) = v123;
        *(v130 + 22) = 2048;
        *(v130 + 24) = v124;
        *(v130 + 32) = 2080;
        v135 = FMIPAddress.debugDescription.getter();
        v137 = v136;
        v85 = v156;
        sub_24A67F378(v127, &unk_27EF5E150, &unk_24A83CCC0);
        v138 = sub_24A68761C(v135, v137, v162);
        v83 = v148;

        *(v130 + 34) = v138;
        _os_log_impl(&dword_24A675000, v128, v129, "FMReverseGeocodingCache: Using cached request for %s due to location distance throttling - distance: %f, limit: %f -> %s.", v130, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v131, -1, -1);
        MEMORY[0x24C21E1D0](v130, -1, -1);
      }

      else
      {

        sub_24A67F378(v127, &unk_27EF5E150, &unk_24A83CCC0);
        sub_24A67F378(v126, &unk_27EF5E150, &unk_24A83CCC0);
      }

      v139 = *(v85 + 48);
      memcpy(v162, (v83 + v139), sizeof(v162));
      memcpy(v159, (v83 + v139), 0x120uLL);
      sub_24A76ECE4(v162, v161);
      sub_24A67F378(v83, &unk_27EF5E150, &unk_24A83CCC0);
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v88 = sub_24A82CDC4();
    sub_24A6797D0(v88, qword_27EF78C00);
    v89 = v143;
    sub_24A67E964(v83, v143, &unk_27EF5E150, &unk_24A83CCC0);

    v90 = sub_24A82CD94();
    v91 = sub_24A82D504();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v162[0] = v93;
      *v92 = 136315394;
      v94 = sub_24A82DDB4();
      v96 = sub_24A68761C(v94, v95, v162);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2080;
      v97 = *v89;
      v98 = v89[1];

      sub_24A67F378(v89, &unk_27EF5E150, &unk_24A83CCC0);
      v99 = sub_24A68761C(v97, v98, v162);
      v83 = v148;

      *(v92 + 14) = v99;
      _os_log_impl(&dword_24A675000, v90, v91, "%s: Cached request for %s is older than the 30s.", v92, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v93, -1, -1);
      MEMORY[0x24C21E1D0](v92, -1, -1);
    }

    else
    {

      sub_24A67F378(v89, &unk_27EF5E150, &unk_24A83CCC0);
    }
  }

  sub_24A67F378(v83, &unk_27EF5E150, &unk_24A83CCC0);
LABEL_35:
  sub_24A68808C(v162);
  memcpy(v159, v162, 0x120uLL);
}