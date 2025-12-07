void sub_2288B3B98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_2288B3BF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MEMORY[0x22AAC3860]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22892F228();
  }

  return sub_22892F258();
}

void sub_2288B3C68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2288B3D08(void (**a1)(void, void), void *a2)
{
  v5 = *(sub_22892DEF8() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22892EFA8() - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  sub_2288B3E48(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), v2 + v10, (v2 + ((*(v8 + 64) + v9 + v10) & ~v9)), *(v2 + ((*(v8 + 64) + ((*(v8 + 64) + v9 + v10) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_2288B3E48(void (**a1)(void, void), void *a2, char *a3, void (**a4)(void, void), void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void), uint64_t a12)
{
  v116 = a8;
  v117 = a6;
  v107 = a7;
  v115 = a5;
  v111 = a1;
  v112 = a4;
  v109 = a3;
  sub_2288B4A64(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B4B3C(0);
  v17 = v16;
  v110 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22892DDC8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v101 - v25;
  v27 = sub_22892DF58();
  v114 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v113 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22892EDE8();
  v30 = MEMORY[0x28223BE20](v29);
  v33 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v111 = v31;
    v116 = v30;
    v34 = a2;
    sub_22892EDC8();
    v35 = a2;
    v36 = v112;

    v37 = sub_22892EDD8();
    v38 = sub_22892F398();

    v39 = a2;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v108 = v27;
      v42 = v41;
      v43 = swift_slowAlloc();
      v118[0] = v43;
      *v40 = 136446722;
      v44 = sub_22892F948();
      v46 = sub_2288B748C(v44, v45, v118);
      v47 = v115;

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2288B748C(v109, v36, v118);
      *(v40 + 22) = 2112;
      v48 = v39;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 24) = v49;
      *v42 = v49;
      _os_log_impl(&dword_2288B2000, v37, v38, "[%{public}s:%s] Workout Training Load Query Helper fetch errored with %@", v40, 0x20u);
      sub_2288B5BCC(v42, sub_2288D6D64);
      v50 = v42;
      v27 = v108;
      MEMORY[0x22AAC47E0](v50, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v43, -1, -1);
      MEMORY[0x22AAC47E0](v40, -1, -1);

      (v111)[1](v33, v116);
      v51 = v117;
    }

    else
    {

      (v111)[1](v33, v116);
      v51 = v117;
      v47 = v115;
    }

    v66 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
    v67 = sub_22892DE28();

    v68 = [v51 queryUUID];
    v69 = v113;
    sub_22892DF38();

    v70 = sub_22892DF18();
    (*(v114 + 8))(v69, v27);
    [v47 client:v67 deliverError:v70 forQuery:?];

    return;
  }

  v109 = v26;
  v104 = v15;
  v105 = v19;
  v106 = v17;
  if (!v111)
  {
    v71 = sub_22892F208();
    v72 = [v117 queryUUID];
    v73 = v113;
    sub_22892DF38();

    v74 = sub_22892DF18();
    (*(v114 + 8))(v73, v27);
    [v115 client:v71 deliverTrainingLoadSampleDaySummaries:v74 queryUUID:?];

    return;
  }

  v52 = v20;
  v108 = v27;
  v118[0] = MEMORY[0x277D84F90];
  v112 = v111;
  v53 = [v112 totalTrainingLoadCollection];
  v54 = [v53 trainingLoads];

  v56 = v105;
  v55 = v106;
  v57 = v110;
  if (v54)
  {
    v103 = sub_2288BC0FC(0, &qword_2813DEBF8, 0x277CCDCA0);
    v58 = sub_22892F218();

    if (v58 >> 62)
    {
      if (sub_22892F588())
      {
LABEL_8:
        if ((v58 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x22AAC3CC0](0, v58);
          v55 = v21;
          v61 = v109;
          v59 = v107;
        }

        else
        {
          v59 = v107;
          if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_40;
          }

          v55 = v21;
          v60 = *(v58 + 32);
          v61 = v109;
        }

        v111 = a11;
        v107 = a10;

        v62 = [v60 dateInterval];

        sub_22892DD68();
        (*(v55 + 32))(v61, v24, v52);
        if ((v59 & 1) == 0)
        {
          v63 = [v112 totalTrainingLoadCollection];
          v64 = [v63 trainingLoads];

          if (v64)
          {
            v65 = sub_22892F218();
          }

          else
          {
            v65 = MEMORY[0x277D84F90];
          }

          v87 = sub_22890FF10(v65, a9, v107, v111, v61, 0, 1);

          (*(v55 + 8))(v61, v52);
          v118[0] = v87;
          v55 = v106;
          v57 = v110;
          goto LABEL_42;
        }

        v102 = v52;
        v75 = [v112 activityTypes];
        sub_2288BC0FC(0, &qword_2813DEB50, 0x277CCABB0);
        v54 = sub_22892F218();

        if (!(v54 >> 62))
        {
          v76 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v77 = v116;
          if (v76)
          {
LABEL_19:
            if (v76 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v76; ++i)
            {
              if ((v54 & 0xC000000000000001) != 0)
              {
                v79 = MEMORY[0x22AAC3CC0](i, v54);
              }

              else
              {
                v79 = *(v54 + 8 * i + 32);
              }

              v80 = v79;
              v81 = sub_22892F4C8();
              v82 = [v112 trainingLoadCollectionForActivityType_];
              if (v82)
              {
                v83 = v82;
                v84 = [v82 trainingLoads];

                if (v84)
                {
                  v85 = sub_22892F218();
                }

                else
                {
                  v85 = MEMORY[0x277D84F90];
                }

                v77 = v116;
              }

              else
              {
                v85 = MEMORY[0x277D84F90];
              }

              if (sub_22890F810(v85, v77))
              {
                v86 = sub_22890FF10(v85, a9, v107, v111, v109, v81, 0);

                sub_2289049A4(v86);
              }

              else
              {
              }

              v77 = v116;
            }
          }

LABEL_41:

          (*(v55 + 8))(v109, v102);
          v56 = v105;
          v55 = v106;
          v57 = v110;
          goto LABEL_42;
        }

LABEL_40:
        v76 = sub_22892F588();
        v77 = v116;
        if (v76)
        {
          goto LABEL_19;
        }

        goto LABEL_41;
      }
    }

    else if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }
  }

LABEL_42:
  v88 = v104;
  sub_22892EBD8();
  if ((*(v57 + 48))(v88, 1, v55) == 1)
  {
    sub_2288B5BCC(v88, sub_2288B4A64);
    v89 = v118[0];
  }

  else
  {
    v90 = sub_2288C34B4(v88, v56, sub_2288B4B3C);
    MEMORY[0x28223BE20](v90);
    *(&v101 - 2) = v56;
    v89 = sub_2288D5E2C(sub_228911B60, (&v101 - 4), v91);
    sub_2288B5BCC(v56, sub_2288B4B3C);
  }

  v92 = v108;
  if (v89 >> 62)
  {

    sub_22892F748();
    swift_bridgeObjectRelease_n();
    v94 = v117;
  }

  else
  {

    sub_22892F828();
    v93 = swift_dynamicCastMetatype();
    v94 = v117;
    if (!v93)
    {
      v99 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v99)
      {
        v100 = ((v89 & 0xFFFFFFFFFFFFFF8) + 32);
        do
        {
          if (!*v100)
          {
            break;
          }

          ++v100;
          --v99;
        }

        while (v99);
      }
    }
  }

  v95 = sub_22892F208();

  v96 = [v94 queryUUID];
  v97 = v113;
  sub_22892DF38();

  v98 = sub_22892DF18();
  (*(v114 + 8))(v97, v92);
  [v115 client:v95 deliverTrainingLoadSampleDaySummaries:v98 queryUUID:?];
}

void sub_2288B4A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288B4AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2288B4B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22892EFA8();
    v7 = sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288B4C68(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v119 = a6;
  v106 = a4;
  v120 = a3;
  v122 = a2;
  ObjectType = swift_getObjectType();
  v11 = MEMORY[0x277D83D88];
  sub_2288B6D08(0, &qword_2813DFEA8, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v101 = &v100 - v13;
  v112 = sub_22892DE18();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v125 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], v11);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v100 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v113 = &v100 - v19;
  MEMORY[0x28223BE20](v18);
  v114 = &v100 - v20;
  v124 = sub_22892DEF8();
  v110 = *(v124 - 8);
  v21 = MEMORY[0x28223BE20](v124);
  v105 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v123 = &v100 - v24;
  v103 = v25;
  MEMORY[0x28223BE20](v23);
  v126 = &v100 - v26;
  v117 = sub_22892EFA8();
  v108 = *(v117 - 8);
  v27 = MEMORY[0x28223BE20](v117);
  v104 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v116 = &v100 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v127 = &v100 - v32;
  v102 = v33;
  MEMORY[0x28223BE20](v31);
  v35 = &v100 - v34;
  v118 = sub_22892EDE8();
  v36 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();

  v39 = sub_22892EDD8();
  v40 = sub_22892F398();

  v41 = os_log_type_enabled(v39, v40);
  v115 = a5;
  v109 = ObjectType;
  v107 = a1;
  v121 = v35;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136446466;
    v44 = sub_22892F948();
    v46 = sub_2288B748C(v44, v45, aBlock);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2288B748C(a1, v122, aBlock);
    _os_log_impl(&dword_2288B2000, v39, v40, "[%{public}s:%s] Query Type is Workout", v42, 0x16u);
    swift_arrayDestroy();
    v47 = v43;
    v35 = v121;
    MEMORY[0x22AAC47E0](v47, -1, -1);
    MEMORY[0x22AAC47E0](v42, -1, -1);
  }

  (*(v36 + 8))(v38, v118);
  v118 = v7;
  sub_22890F20C(v35, v127);
  v48 = v114;
  sub_22892EBC8();
  v49 = sub_22892E048();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  result = v51(v48, 1, v49);
  if (result == 1)
  {
    goto LABEL_11;
  }

  sub_22892EF98();
  v53 = *(v50 + 8);
  v53(v48, v49);
  v54 = v113;
  sub_22892EBC8();
  result = v51(v54, 1, v49);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_22892EF98();
  v53(v54, v49);
  sub_22892EBC8();
  v55 = sub_22892E058();
  (*(*(v55 - 8) + 56))(v101, 1, 1, v55);
  sub_22892DE08();
  sub_2288BC0FC(0, &qword_2813DEC80, 0x277CCAC30);
  sub_2288B6D08(0, &unk_2813DE968, sub_228911AB8, MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2289315C0;
  v57 = sub_22892DE58();
  v58 = sub_2288BC0FC(0, &qword_2813DEB68, 0x277CBEAA8);
  *(v56 + 56) = v58;
  v59 = sub_228911B1C(&qword_2813DEB60, &qword_2813DEB68, 0x277CBEAA8, MEMORY[0x277D85388]);
  *(v56 + 64) = v59;
  *(v56 + 32) = v57;
  v60 = sub_22892DE58();
  *(v56 + 96) = v58;
  *(v56 + 104) = v59;
  *(v56 + 72) = v60;
  v61 = sub_22892F358();
  aBlock[6] = MEMORY[0x277D84FA0];
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  if (v63)
  {
    sub_2288F3FAC(aBlock, v63);
  }

  v64 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  if (v64)
  {
    sub_2288F3FAC(aBlock, v64);
  }

  sub_2288BC0FC(0, &unk_2813DEC70, 0x277CCD720);
  sub_228911B1C(&unk_2813DEC60, &unk_2813DEC70, 0x277CCD720, MEMORY[0x277D85378]);
  v65 = sub_22892F298();

  v66 = [v61 hk:v65 filterRepresentationForDataTypes:0 isSubpredicate:?];

  v67 = objc_allocWithZone(MEMORY[0x277D10988]);
  v68 = v66;
  v69 = sub_22892DE58();
  v70 = sub_22892DDD8();
  v114 = v68;
  v113 = [v67 initWithFilter:v68 options:v119 anchorDate:v69 intervalComponents:v70 profile:v106];

  v71 = v110;
  v72 = v105;
  (*(v110 + 16))(v105, v123, v124);
  v73 = v108;
  v74 = *(v108 + 16);
  v75 = v117;
  v74(v116, v121, v117);
  v106 = v61;
  v76 = v104;
  v74(v104, v127, v75);
  v77 = (*(v71 + 80) + 56) & ~*(v71 + 80);
  v78 = (v103 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = *(v73 + 80);
  v80 = (v79 + v78 + 8) & ~v79;
  v81 = (v102 + v79 + v80) & ~v79;
  v82 = (v102 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v122;
  *(v83 + 2) = v107;
  *(v83 + 3) = v84;
  v86 = v118;
  v85 = v119;
  *(v83 + 4) = v120;
  *(v83 + 5) = v86;
  *(v83 + 6) = v85;
  (*(v71 + 32))(&v83[v77], v72, v124);
  v88 = v115;
  v87 = v116;
  *&v83[v78] = v115;
  v89 = *(v73 + 32);
  v90 = &v83[v80];
  v91 = v117;
  v89(v90, v87, v117);
  v89(&v83[v81], v76, v91);
  *&v83[v82] = v109;
  v92 = swift_allocObject();
  v92[2] = sub_2288B3D08;
  v92[3] = v83;
  aBlock[4] = sub_2288B3CE0;
  aBlock[5] = v92;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3C68;
  aBlock[3] = &block_descriptor_9_0;
  v93 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v94 = v118;
  v95 = v88;

  v96 = v113;
  [v113 fetchTrainingLoadCollectionWithCompletion_];
  _Block_release(v93);

  (*(v111 + 8))(v125, v112);
  v97 = *(v71 + 8);
  v98 = v124;
  v97(v123, v124);
  v97(v126, v98);
  v99 = *(v73 + 8);
  v99(v127, v91);
  v99(v121, v91);
  LOBYTE(v93) = swift_isEscapingClosureAtFileLocation();

  if (v93)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2288B5A08()
{
  v1 = sub_22892DEF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v15 = v3 | v8;
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v7 + 8);
  v13(v0 + v9, v6);
  v13(v0 + v11, v6);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v15 | 7);
}

uint64_t sub_2288B5BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288B5C2C()
{
  v1 = [v0 configuration];
  sub_22892EC68();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_2288B5CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2288B5D1C(uint64_t a1)
{
  if (!qword_2813DED90)
  {
    sub_22892EFA8();
    sub_2288D3E28(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v1 = sub_22892F068();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DED90);
    }
  }
}

uint64_t sub_2288B5DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = sub_22892DEF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892E478();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22892E778();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9);
  sub_22892E738();
  sub_22892E6F8();
  sub_22892DED8();
  v16 = sub_2288B7B40(a1, v15, v8);
  result = (*(v10 + 8))(a2, v9);
  *a3 = v16;
  return result;
}

void sub_2288B5F94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_22892EDE8();
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v98 - v6;
  v8 = sub_22892DF58();
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5F60(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v98 - v15;
  v17 = sub_22892EE28();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = [v1 queryQueue];
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v21 = sub_22892EE38();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v22 = [v1 clientProxy];
  if (!v22)
  {
    goto LABEL_40;
  }

  v17 = v22;
  v23 = [v22 remoteObjectProxy];
  swift_unknownObjectRelease();
  sub_22892F4F8();
  swift_unknownObjectRelease();
  sub_228911A54();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v24 = v107;
  v25 = [v1 profile];
  if (!v25)
  {
    sub_22892EDC8();
    v36 = v1;
    v37 = sub_22892EDD8();
    v38 = sub_22892F398();

    if (os_log_type_enabled(v37, v38))
    {
      v104 = v24;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v108[0] = v40;
      *v39 = 136446466;
      v41 = sub_22892F948();
      v43 = sub_2288B748C(v41, v42, v108);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = [v36 configuration];
      v45 = [v44 debugIdentifier];

      if (v45)
      {
        v46 = sub_22892F0C8();
        v48 = v47;
      }

      else
      {
        v80 = [v36 queryUUID];
        sub_22892DF38();

        v46 = sub_22892DF08();
        v48 = v81;
        (*(v105 + 8))(v10, v106);
      }

      v82 = sub_2288B748C(v46, v48, v108);

      *(v39 + 14) = v82;
      _os_log_impl(&dword_2288B2000, v37, v38, "[%{public}s:%s] Training Load Query, no profile", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v40, -1, -1);
      MEMORY[0x22AAC47E0](v39, -1, -1);

      (*(v102 + 8))(v5, v103);
      v24 = v104;
    }

    else
    {

      (*(v102 + 8))(v5, v103);
    }

    v83 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:127 userInfo:0];
    v84 = sub_22892DE28();

    v85 = [v36 queryUUID];
    sub_22892DF38();

    v86 = sub_22892DF18();
    (*(v105 + 8))(v10, v106);
    [v24 client:v84 deliverError:v86 forQuery:?];
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v26 = v25;
  v104 = v24;
  v27 = [v1 configuration];
  sub_22892EBF8();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    sub_22892EDC8();
    v49 = v1;
    v50 = sub_22892EDD8();
    v51 = sub_22892F398();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v108[0] = v99;
      *v52 = 136446466;
      v53 = sub_22892F948();
      v55 = sub_2288B748C(v53, v54, v108);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2080;
      v56 = [v49 configuration];
      v57 = [v56 debugIdentifier];

      v100 = v49;
      if (v57)
      {
        v58 = sub_22892F0C8();
        v60 = v59;
      }

      else
      {
        v87 = [v49 queryUUID];
        sub_22892DF38();

        v58 = sub_22892DF08();
        v60 = v88;
        (*(v105 + 8))(v10, v106);
      }

      v66 = v104;
      v89 = sub_2288B748C(v58, v60, v108);

      *(v52 + 14) = v89;
      _os_log_impl(&dword_2288B2000, v50, v51, "[%{public}s:%s] Training Load Query, no configuration", v52, 0x16u);
      v90 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v90, -1, -1);
      MEMORY[0x22AAC47E0](v52, -1, -1);

      (*(v102 + 8))(v7, v103);
      v49 = v100;
    }

    else
    {

      (*(v102 + 8))(v7, v103);
      v66 = v104;
    }

    v91 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
    v84 = sub_22892DE28();

    v92 = [v49 queryUUID];
    sub_22892DF38();

    v86 = sub_22892DF18();
    (*(v105 + 8))(v10, v106);
    [v66 client:v84 deliverError:v86 forQuery:?];
    swift_unknownObjectRelease();

LABEL_32:
    return;
  }

  v29 = v28;
  sub_22892EBE8();
  v17 = sub_22892E488();
  v7 = *(v17 - 8);
  if ((*(v7 + 6))(v16, 1, v17) == 1)
  {
    goto LABEL_40;
  }

  sub_2289127F4(v16, v14, sub_2288B5F60);
  v30 = (*(v7 + 11))(v14, v17);
  if (v30 == *MEMORY[0x277D0FF18])
  {
    v31 = [v1 configuration];
    v32 = [v31 debugIdentifier];

    if (v32)
    {
      v33 = sub_22892F0C8();
      v35 = v34;
    }

    else
    {
      v72 = [v1 queryUUID];
      sub_22892DF38();

      v33 = sub_22892DF08();
      v35 = v73;
      (*(v105 + 8))(v10, v106);
    }

    v74 = v33;
    v75 = v35;
    v76 = v104;
    v77 = v26;
    v78 = v29;
    v79 = 0;
  }

  else
  {
    if (v30 != *MEMORY[0x277D0FF08])
    {
      if (v30 != *MEMORY[0x277D0FF10])
      {
        while (1)
        {
          v97 = *(v7 + 1);
          v7 += 8;
          v97(v14, v17);
LABEL_40:
          sub_22892F738();
          __break(1u);
        }
      }

      v67 = [v1 configuration];
      v68 = [v67 debugIdentifier];

      if (v68)
      {
        v69 = sub_22892F0C8();
        v71 = v70;
      }

      else
      {
        v95 = [v1 queryUUID];
        sub_22892DF38();

        v69 = sub_22892DF08();
        v71 = v96;
        (*(v105 + 8))(v10, v106);
      }

      sub_2288C434C(v69, v71, v104, v26, v29);

      swift_unknownObjectRelease();

      goto LABEL_38;
    }

    v61 = [v1 configuration];
    v62 = [v61 debugIdentifier];

    if (v62)
    {
      v63 = sub_22892F0C8();
      v65 = v64;
    }

    else
    {
      v93 = [v1 queryUUID];
      sub_22892DF38();

      v63 = sub_22892DF08();
      v65 = v94;
      (*(v105 + 8))(v10, v106);
    }

    v74 = v63;
    v75 = v65;
    v76 = v104;
    v77 = v26;
    v78 = v29;
    v79 = 1;
  }

  sub_2288B4C68(v74, v75, v76, v77, v78, v79);
  swift_unknownObjectRelease();

LABEL_38:
  sub_2288B5BCC(v16, sub_2288B5F60);
}

void sub_2288B6CB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288B6D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288B6D6C(void *a1)
{
  v1 = a1;
  v2 = sub_2288B6DA0();

  return v2 & 1;
}

uint64_t sub_2288B6DA0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v4, sel__shouldExecuteWhenProtectedDataIsUnavailable))
  {
    return 1;
  }

  v2 = [v0 configuration];
  v3 = [v2 shouldDeactivateAfterInitialResults];

  return v3 ^ 1;
}

void sub_2288B6E20(void *a1)
{
  v1 = a1;
  sub_2288B6E68();
}

void sub_2288B6E68()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892DF58();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v8 = v0;
  v9 = sub_22892EDD8();
  v10 = sub_22892F398();

  v11 = os_log_type_enabled(v9, v10);
  v45 = ObjectType;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v4;
    v14 = v13;
    v48 = v13;
    *v12 = 136446466;
    v15 = sub_22892F948();
    v17 = v2;
    v18 = sub_2288B748C(v15, v16, &v48);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    v19 = sub_2288B770C();
    v21 = sub_2288B748C(v19, v20, &v48);

    *(v12 + 14) = v21;
    v2 = v17;
    ObjectType = v45;
    _os_log_impl(&dword_2288B2000, v9, v10, "[%{public}s:%{public}s] Query started", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v14, -1, -1);
    MEMORY[0x22AAC47E0](v12, -1, -1);

    (*(v5 + 8))(v7, v44);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v49.receiver = v8;
  v49.super_class = ObjectType;
  objc_msgSendSuper2(&v49, sel__queue_start);
  v22 = sub_2288B7894();
  if (v22)
  {
    v23 = v22;
    v24 = [v8 profile];
    if (v24)
    {
      v25 = v24;
      if (!sub_2288B79A4())
      {
        v37 = sub_22891DD38(127, 0xD000000000000021, 0x8000000228933840);
        v34 = sub_22892DE28();

        v38 = [v8 queryUUID];
        v39 = v46;
        sub_22892DF38();

        v29 = sub_22892DF18();
        (*(v47 + 8))(v39, v2);
        [v23 client:v34 deliverError:v29 forQuery:?];
        swift_unknownObjectRelease();

LABEL_15:
LABEL_16:

        return;
      }

      v27 = v26;
      v28 = sub_2288B5C2C();
      if (v28)
      {
        v29 = v28;
        if (([v28 shouldDeactivateAfterInitialResults] & 1) == 0)
        {
          v30 = swift_getObjectType();
          v31 = (*(v27 + 8))(v30, v27);
          v32 = [v8 queryQueue];
          sub_2288BBECC(v8, v32, v31);
        }

        sub_2288B8230(v25, v23);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v40 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
      v34 = sub_22892DE28();

      v41 = [v8 queryUUID];
      v42 = v46;
      sub_22892DF38();

      v29 = sub_22892DF18();
      (*(v47 + 8))(v42, v2);
      [v23 client:v34 deliverError:v29 forQuery:?];
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = sub_22891DD38(127, 0x20656C69666F7250, 0xEF676E697373696DLL);
      v34 = sub_22892DE28();

      v35 = [v8 queryUUID];
      v36 = v46;
      sub_22892DF38();

      v29 = sub_22892DF18();
      (*(v47 + 8))(v36, v2);
      [v23 client:v34 deliverError:v29 forQuery:?];
    }

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  sub_22892F738();
  __break(1u);
}

unint64_t sub_2288B748C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2288B7558(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2288B7664(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2288B7558(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2288C00E0(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_22892F698();
    a6 = v11;
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

uint64_t sub_2288B7664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_2288B770C()
{
  v1 = sub_22892DF58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 configuration];
  v6 = [v5 debugIdentifier];

  if (v6)
  {
    v7 = sub_22892F0C8();
    v9 = v8;

    v15[0] = v7;
    v15[1] = v9;

    sub_2288D43C4(v15, v0, &v14);
    swift_bridgeObjectRelease_n();
    return v14;
  }

  else
  {
    v11 = [v0 queryUUID];
    sub_22892DF38();

    v12 = sub_22892DF08();
    (*(v2 + 8))(v4, v1);
    return v12;
  }
}

id sub_2288B7894()
{
  result = [v0 clientProxy];
  if (result)
  {
    v2 = [result remoteObjectProxy];
    swift_unknownObjectRelease();
    sub_22892F4F8();
    swift_unknownObjectRelease();
    sub_2288B7940();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2288B7940()
{
  result = qword_2813DFDF0;
  if (!qword_2813DFDF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DFDF0);
  }

  return result;
}

uint64_t sub_2288B79A4()
{
  sub_22892E3C8();
  v1 = sub_22892F098();

  v2 = [v0 profileExtensionWithIdentifier_];

  if (v2)
  {
    sub_22892F4F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_2288B7A8C();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2288DB2A4(v7);
    return 0;
  }
}

unint64_t sub_2288B7A8C()
{
  result = qword_2813DFDC8;
  if (!qword_2813DFDC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DFDC8);
  }

  return result;
}

unint64_t sub_2288B7AEC()
{
  result = qword_2813DF430;
  if (!qword_2813DF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DF430);
  }

  return result;
}

char *sub_2288B7B40(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v5 = sub_22892E778();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C(0);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892E048();
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892DEF8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22892EFA8();
  v59 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v53 - v18;
  v19 = sub_22892E478();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = a1;
  sub_22892E708();
  type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(0);
  v27 = swift_allocObject();
  v57 = v26;
  *(v27 + 16) = v26;
  v28 = *(v20 + 32);
  v56 = v27;
  v28(v27 + OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange, v25, v19);
  v60 = v12;
  v61 = v11;
  (*(v12 + 16))(v14, v67, v11);
  sub_22892E708();
  sub_22892E468();
  v29 = *(v20 + 8);
  v29(v25, v19);
  v30 = v64;
  v31 = v55;
  sub_22892EF48();
  v65 = a2;
  sub_22892E708();
  sub_22892E438();
  v32 = v19;
  v33 = v30;
  v29(v23, v32);
  sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  v66 = v15;
  if (sub_22892F038())
  {
    v34 = sub_22892F048();
  }

  else
  {
    v34 = 0;
  }

  sub_2288BA88C(v31, sub_2288B5D1C);
  v36 = v62;
  v35 = v63;
  v37 = v58;
  (*(v62 + 16))(v58, v65, v63);
  type metadata accessor for SleepingWristTemperatureMostRecentSampleWarmupProgressProvider();
  v38 = swift_allocObject();
  v39 = 0;
  *(v38 + 24) = xmmword_2289321C0;
  v40 = v57;
  *(v38 + 16) = v57;
  v41 = v59;
  if (v34)
  {
    v42 = v54;
    v43 = v66;
    (*(v59 + 16))(v54, v33, v66);
    type metadata accessor for OutlierContextProvider(0);
    v39 = swift_allocObject();
    *(v39 + 16) = v40;
    (*(v41 + 32))(v39 + OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay, v42, v43);
    v44 = v40;
  }

  sub_2288BABAC(0);
  v45 = swift_allocObject();
  *(v45 + 2) = v56;
  (*(v36 + 32))(&v45[*(*v45 + 104)], v37, v35);
  v46 = &v45[*(*v45 + 112)];
  *v46 = v38;
  v46[1] = &off_283BD5190;
  *&v45[*(*v45 + 120)] = v39;
  v47 = *(*v45 + 104);
  swift_beginAccess();
  v48 = *(v36 + 24);
  v49 = v40;

  v50 = v65;
  v48(&v45[v47], v65, v35);
  swift_endAccess();
  v51 = v67;
  sub_2288BAC68(v50, v67);

  (*(v60 + 8))(v51, v61);
  (*(v36 + 8))(v50, v35);
  (*(v41 + 8))(v64, v66);

  return v45;
}

uint64_t sub_2288B8230(int *a1, void *a2)
{
  v286 = a2;
  v305 = a1;
  ObjectType = swift_getObjectType();
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v282 = sub_22892DEF8();
  v279 = *(v282 - 8);
  v5 = MEMORY[0x28223BE20](v282);
  v263 = &v255 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v287 = &v255 - v7;
  sub_2288B5C84(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v262 = &v255 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v271 = &v255 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v276 = &v255 - v14;
  MEMORY[0x28223BE20](v13);
  v288 = &v255 - v15;
  v16 = *((v4 & v3) + 0x50);
  v302 = *((v4 & v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v300 = *(AssociatedTypeWitness - 1);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v295 = &v255 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v304 = &v255 - v20;
  v285 = sub_22892DF58();
  v301 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v284 = &v255 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_22892EDE8();
  v298 = *(v290 - 8);
  v22 = MEMORY[0x28223BE20](v290);
  v268 = &v255 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v260 = &v255 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v258 = &v255 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v281 = &v255 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v255 = &v255 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v256 = &v255 - v33;
  MEMORY[0x28223BE20](v32);
  v257 = &v255 - v34;
  v259 = sub_2288B7AEC();
  v35 = sub_22892F8D8();
  *&v277 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35);
  v297 = &v255 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v309 = &v255 - v38;
  v280 = v39;
  v40 = sub_22892F498();
  MEMORY[0x28223BE20](v40 - 8);
  v303 = &v255 - v41;
  sub_2288BC0C8(0);
  MEMORY[0x28223BE20](v42 - 8);
  v272 = &v255 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D83D88];
  sub_2288B5CB8(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v255 - v46;
  sub_2288B5CB8(0, &qword_2813DED78, sub_2288B5D1C, v44);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v255 - v49;
  v51 = sub_22892E478();
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v267 = *(v16 - 8);
  MEMORY[0x28223BE20](v52);
  v273 = &v255 - v53;
  v54 = sub_22892EE28();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = (&v255 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v308 = v2;
  *v57 = [v2 queryQueue];
  (*(v55 + 104))(v57, *MEMORY[0x277D85200], v54);
  v58 = sub_22892EE38();
  result = (*(v55 + 8))(v57, v54);
  if ((v58 & 1) == 0)
  {
    __break(1u);
    goto LABEL_69;
  }

  v60 = v302;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = *(AssociatedConformanceWitness + 24);
  v275 = AssociatedConformanceWitness;
  v63 = *(AssociatedConformanceWitness + 8);
  v307 = AssociatedTypeWitness;
  v311 = AssociatedTypeWitness;
  v312 = v63;
  v313 = v62;
  v64 = sub_22892EE78();
  v315 = sub_22892F238();
  sub_22892EC58();
  sub_2288B5D1C(0);
  result = (*(*(v65 - 8) + 48))(v50, 1, v65);
  if (result == 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v306 = v64;
  sub_22892EC48();
  v66 = sub_22892E048();
  result = (*(*(v66 - 8) + 48))(v47, 1, v66);
  if (result == 1)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  sub_22892E428();
  v67 = v60[4];
  v68 = v305;
  v67();
  v69 = v272;
  (v60[6])(v16, v60);
  v70 = type metadata accessor for SleepingSampleCacheRange(0);
  v71 = v279 + 56;
  v72 = v69 + v70[5];
  v270 = *(v279 + 56);
  v270(v72, 1, 1, v282);
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v73 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v74 = HKRollingBaselineConfigurationForQuantityType();

  [v74 maximumWindowDuration];
  v76 = v75;

  *(v69 + v70[6]) = v76;
  v77 = *(v70 - 1);
  v78 = *(v77 + 56);
  v79 = v77 + 56;
  v305 = v70;
  v264 = v78;
  v78(v69, 0, 1, v70);
  v80 = &v308[qword_2813DF4E0];
  swift_beginAccess();
  sub_2288BBBE8(v69, v80, sub_2288BC0C8);
  swift_endAccess();
  v81 = v60[5];
  v82 = v68;
  v83 = v80;
  v266 = v16;
  (v81)(v310, v82, v16, v60);
  v84 = __swift_project_boxed_opaque_existential_1(v310, v310[3]);
  MEMORY[0x28223BE20](v84);
  (*(v86 + 16))(&v255 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  v313 = swift_getAssociatedTypeWitness();
  v314 = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v311);
  sub_22892F1A8();
  __swift_destroy_boxed_opaque_existential_0(v310);
  v302 = (v277 + 48);
  v299 = (v277 + 32);
  v289 = (v298 + 8);
  v283 = (v301 + 8);
  v296 = (v277 + 16);
  v294 = (v300 + 4);
  v265 = v79;
  v293 = (v79 - 8);
  v274 = (v71 - 8);
  v269 = (v71 - 24);
  v279 = v71;
  v261 = (v71 - 48);
  LODWORD(v301) = 1;
  v292 = (v300 + 2);
  v291 = (v300 + 1);
  v300 = (v277 + 8);
  *&v87 = 136446466;
  v277 = v87;
  v88 = v280;
  v298 = v80;
  v89 = v287;
  v90 = v271;
  v91 = v281;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v311, v313);
    v93 = v303;
    sub_22892F4B8();
    if ((*v302)(v93, 1, v88) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v311);
      v130 = v268;
      v131 = v260;
      v94 = v308;
      v132 = v301;
      goto LABEL_30;
    }

    (*v299)(v309, v93, v88);
    v94 = v308;
    if ([v308 _shouldStopProcessingQuery])
    {
      v152 = v257;
      sub_22892EDC8();
      v153 = v94;
      v154 = sub_22892EDD8();
      v155 = sub_22892F398();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v310[0] = v157;
        *v156 = v277;
        v158 = sub_22892F948();
        v160 = sub_2288B748C(v158, v159, v310);

        *(v156 + 4) = v160;
        v83 = v298;
        *(v156 + 12) = 2082;
        v161 = sub_2288B770C();
        v163 = sub_2288B748C(v161, v162, v310);

        *(v156 + 14) = v163;
        _os_log_impl(&dword_2288B2000, v154, v155, "[%{public}s:%{public}s] Query aborted", v156, 0x16u);
        swift_arrayDestroy();
        v164 = v157;
        v88 = v280;
        MEMORY[0x22AAC47E0](v164, -1, -1);
        MEMORY[0x22AAC47E0](v156, -1, -1);
      }

      v145 = *v289;
      (*v289)(v152, v290);
      v130 = v268;
      v165 = v264;
      v150 = sub_22891DD38(128, 0x6261207972657551, 0xED0000646574726FLL);
      (*v300)(v309, v88);
      v151 = 0;
      v94 = v308;
      goto LABEL_48;
    }

    if ([v94 _shouldSuspendQuery])
    {
      v166 = [v94 configuration];
      v167 = [v166 shouldDeactivateAfterInitialResults];

      v168 = v256;
      if (v167)
      {
        sub_22892EDC8();
        v169 = v94;
        v170 = sub_22892EDD8();
        v171 = sub_22892F398();

        v172 = os_log_type_enabled(v170, v171);
        v130 = v268;
        if (v172)
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v310[0] = v174;
          *v173 = v277;
          v175 = sub_22892F948();
          v177 = sub_2288B748C(v175, v176, v310);

          *(v173 + 4) = v177;
          v83 = v298;
          *(v173 + 12) = 2082;
          v178 = sub_2288B770C();
          v180 = sub_2288B748C(v178, v179, v310);

          *(v173 + 14) = v180;
          _os_log_impl(&dword_2288B2000, v170, v171, "[%{public}s:%{public}s] Query suspended and is deactivating", v173, 0x16u);
          swift_arrayDestroy();
          v181 = v174;
          v88 = v280;
          MEMORY[0x22AAC47E0](v181, -1, -1);
          MEMORY[0x22AAC47E0](v173, -1, -1);
        }

        v145 = *v289;
        (*v289)(v168, v290);
        v165 = v264;
        v150 = sub_22891DD38(128, 0xD000000000000023, 0x8000000228933790);
        v151 = 0;
      }

      else
      {
        v186 = v94;
        v187 = v255;
        sub_22892EDC8();
        v188 = v186;
        v189 = sub_22892EDD8();
        v190 = sub_22892F398();

        v191 = os_log_type_enabled(v189, v190);
        v130 = v268;
        if (v191)
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v310[0] = v193;
          *v192 = v277;
          v194 = sub_22892F948();
          v196 = sub_2288B748C(v194, v195, v310);

          *(v192 + 4) = v196;
          v83 = v298;
          *(v192 + 12) = 2082;
          v197 = sub_2288B770C();
          v199 = sub_2288B748C(v197, v198, v310);

          *(v192 + 14) = v199;
          _os_log_impl(&dword_2288B2000, v189, v190, "[%{public}s:%{public}s] Query suspended and can be resumed", v192, 0x16u);
          swift_arrayDestroy();
          v200 = v193;
          v88 = v280;
          MEMORY[0x22AAC47E0](v200, -1, -1);
          MEMORY[0x22AAC47E0](v192, -1, -1);
        }

        v145 = *v289;
        (*v289)(v187, v290);
        v165 = v264;
        v151 = sub_22891DD38(128, 0xD000000000000022, 0x8000000228933760);
        v150 = 0;
      }

      v94 = v308;
      (*v300)(v309, v88);
LABEL_48:
      __swift_destroy_boxed_opaque_existential_0(&v311);

      v201 = v272;
      v165(v272, 1, 1, v305);
      swift_beginAccess();
      sub_2288BBBE8(v201, v83, sub_2288BC0C8);
      swift_endAccess();
      goto LABEL_64;
    }

    if (sub_22892F268() >= 200)
    {
      sub_22892EDC8();
      v95 = v94;
      v96 = sub_22892EDD8();
      v97 = sub_22892F398();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v310[0] = v99;
        *v98 = v277;
        v100 = sub_22892F948();
        v102 = sub_2288B748C(v100, v101, v310);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2082;
        v103 = sub_2288B770C();
        v105 = sub_2288B748C(v103, v104, v310);

        *(v98 + 14) = v105;
        _os_log_impl(&dword_2288B2000, v96, v97, "[%{public}s:%{public}s] Delivering sample batch", v98, 0x16u);
        swift_arrayDestroy();
        v106 = v99;
        v88 = v280;
        MEMORY[0x22AAC47E0](v106, -1, -1);
        v107 = v289;
        v108 = v290;
        MEMORY[0x22AAC47E0](v98, -1, -1);

        (*v107)(v91, v108);
      }

      else
      {

        (*v289)(v91, v290);
      }

      v89 = v287;
      sub_22892F708();

      v109 = sub_22892F208();

      v110 = [v95 queryUUID];
      v111 = v284;
      sub_22892DF38();

      v112 = sub_22892DF18();
      (*v283)(v111, v285);
      [v286 client:v109 deliverSleepingSampleDaySummaries:v301 & 1 clearPending:0 isFinalBatch:v112 queryUUID:?];

      v113 = sub_22892F238();
      LODWORD(v301) = 0;
      v315 = v113;
      v94 = v308;
    }

    v114 = v297;
    (*v296)(v297, v309, v88);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v83 = v298;
    v116 = v307;
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v117 = v304;
    (*v294)(v304, v114, v307);
    swift_beginAccess();
    if ((*v293)(v83, 1, v305))
    {
      swift_endAccess();
      v92 = v117;
    }

    else
    {
      v118 = v288;
      sub_22892EA18();
      v119 = v276;
      sub_2288BFF8C(v118, v276, sub_2288B5C84);
      v120 = *v274;
      v121 = v282;
      if ((*v274)(v119, 1, v282) == 1)
      {
        v92 = v117;
        sub_2288BA76C(v119, sub_2288B5C84);
      }

      else
      {
        v122 = *v269;
        (*v269)(v89, v119, v121);
        v123 = v305[5];
        sub_2288BFF8C(v83 + v123, v90, sub_2288B5C84);
        if (v120(v90, 1, v121) == 1)
        {
          sub_2288BA76C(v90, sub_2288B5C84);
          sub_2288BA76C(v83 + v123, sub_2288B5C84);
          v122((v83 + v123), v89, v121);
          v270(v83 + v123, 0, 1, v121);
        }

        else
        {
          v124 = v263;
          v122(v263, v90, v121);
          sub_2288C1090(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v125 = v121;
          v126 = sub_22892F038();
          v127 = (v126 & 1) == 0;
          if (v126)
          {
            v128 = v124;
          }

          else
          {
            v128 = v89;
          }

          if (!v127)
          {
            v124 = v89;
          }

          (*v261)(v128, v121);
          v129 = v262;
          v122(v262, v124, v125);
          v270(v129, 0, 1, v125);
          v90 = v271;
          sub_2288BBBE8(v129, v83 + v123, sub_2288B5C84);
        }

        v92 = v304;
      }

      swift_endAccess();
      sub_2288BA76C(v288, sub_2288B5C84);
      v116 = v307;
      v91 = v281;
    }

    (*v292)(v295, v92, v116);
    v310[0] = sub_22892EE48();
    sub_22892F288();
    sub_22892F278();
    (*v291)(v92, v116);
    (*v300)(v309, v88);
  }

  v182 = *v114;
  v183 = v114[8];
  v184 = v183 >> 6;
  if (v183 >> 6 > 1)
  {
    v185 = v258;
    if (v184 != 2)
    {
      v202 = [v182 hk_isDatabaseAccessibilityError];
      if (v202)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

LABEL_51:
    if (v183)
    {
      goto LABEL_54;
    }

LABEL_55:
    v150 = swift_allocError();
    v307 = 0;
    goto LABEL_57;
  }

  v185 = v258;
  if (v184)
  {
    goto LABEL_51;
  }

  if (v183 != 1)
  {
    goto LABEL_55;
  }

LABEL_54:
  v203 = [v94 configuration];
  v204 = [v203 shouldDeactivateAfterInitialResults];

  if (v204)
  {
    goto LABEL_55;
  }

  v307 = swift_allocError();
  v150 = 0;
LABEL_57:
  *v205 = v182;
  *(v205 + 8) = v183;
  v206 = v182;
  sub_22892EDC8();
  v207 = v94;
  v208 = v182;
  v209 = sub_22892EDD8();
  v210 = v185;
  v211 = sub_22892F378();

  v212 = os_log_type_enabled(v209, v211);
  v304 = v207;
  if (v212)
  {
    v213 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v303 = swift_slowAlloc();
    v310[0] = v303;
    *v213 = 136446722;
    v215 = sub_22892F948();
    v217 = sub_2288B748C(v215, v216, v310);

    *(v213 + 4) = v217;
    *(v213 + 12) = 2082;
    v218 = sub_2288B770C();
    v220 = sub_2288B748C(v218, v219, v310);

    *(v213 + 14) = v220;
    *(v213 + 22) = 2112;
    swift_allocError();
    *v221 = v182;
    *(v221 + 8) = v183;
    v222 = v182;
    v223 = _swift_stdlib_bridgeErrorToNSError();
    *(v213 + 24) = v223;
    *v214 = v223;
    _os_log_impl(&dword_2288B2000, v209, v211, "[%{public}s:%{public}s] Enumeration error: %@", v213, 0x20u);
    sub_2288BA76C(v214, sub_2288D6D64);
    MEMORY[0x22AAC47E0](v214, -1, -1);
    v224 = v303;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v224, -1, -1);
    v132 = v301;
    v94 = v308;
    MEMORY[0x22AAC47E0](v213, -1, -1);

    v145 = *v289;
    (*v289)(v258, v290);
    (*v300)(v309, v280);
  }

  else
  {

    v145 = *v289;
    (*v289)(v210, v290);
    (*v300)(v309, v280);
    v132 = v301;
  }

  __swift_destroy_boxed_opaque_existential_0(&v311);
  v130 = v268;
  v225 = v298;
  v131 = v260;
  if (v150)
  {
    v226 = v150;

    v227 = v272;
    v264(v272, 1, 1, v305);
    swift_beginAccess();
    sub_2288BBBE8(v227, v225, sub_2288BC0C8);
    swift_endAccess();
    v228 = sub_22892DE28();
    v229 = [v304 queryUUID];
    v230 = v94;
    v231 = v284;
    sub_22892DF38();

    v232 = sub_22892DF18();
    v233 = v231;
    v94 = v230;
    (*v283)(v233, v285);
    [v286 client:v228 deliverError:v232 forQuery:?];

    v151 = v307;
    goto LABEL_64;
  }

  v234 = v307;
  v235 = v304;
  if (v307)
  {
    v236 = v307;

    v237 = v272;
    v264(v272, 1, 1, v305);
    swift_beginAccess();
    sub_2288BBBE8(v237, v225, sub_2288BC0C8);
    swift_endAccess();
    v238 = sub_22892DE28();
    v239 = [v235 queryUUID];
    v240 = v284;
    sub_22892DF38();

    v241 = sub_22892DF18();
    (*v283)(v240, v285);
    [v286 client:v238 logErrorAndKeepQueryActivatedWithError:v241 queryUUID:?];

    v150 = 0;
    v151 = v234;
    goto LABEL_64;
  }

LABEL_30:
  v133 = v132;
  sub_22892EDC8();
  v134 = v94;
  v135 = sub_22892EDD8();
  v136 = sub_22892F398();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v311 = v138;
    *v137 = v277;
    v139 = sub_22892F948();
    v141 = sub_2288B748C(v139, v140, &v311);

    *(v137 + 4) = v141;
    *(v137 + 12) = 2082;
    v142 = sub_2288B770C();
    v144 = sub_2288B748C(v142, v143, &v311);

    *(v137 + 14) = v144;
    _os_log_impl(&dword_2288B2000, v135, v136, "[%{public}s:%{public}s] Delivering samples", v137, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v138, -1, -1);
    MEMORY[0x22AAC47E0](v137, -1, -1);
  }

  v145 = *v289;
  (*v289)(v131, v290);
  sub_22892F708();

  v146 = sub_22892F208();

  v147 = [v134 queryUUID];
  v148 = v284;
  sub_22892DF38();

  v149 = sub_22892DF18();
  (*v283)(v148, v285);
  [v286 client:v146 deliverSleepingSampleDaySummaries:v133 & 1 clearPending:1 isFinalBatch:v149 queryUUID:?];

  v150 = 0;
  v151 = 0;
  v94 = v308;
LABEL_64:
  sub_22892EDC8();
  v242 = v94;
  v243 = sub_22892EDD8();
  v244 = sub_22892F398();

  if (os_log_type_enabled(v243, v244))
  {
    v245 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v309 = v145;
    v247 = v246;
    v311 = v246;
    *v245 = v277;
    v248 = sub_22892F948();
    v250 = v130;
    v251 = sub_2288B748C(v248, v249, &v311);

    *(v245 + 4) = v251;
    *(v245 + 12) = 2082;
    v252 = sub_2288B770C();
    v254 = sub_2288B748C(v252, v253, &v311);

    *(v245 + 14) = v254;
    _os_log_impl(&dword_2288B2000, v243, v244, "[%{public}s:%{public}s] Query finished", v245, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v247, -1, -1);
    MEMORY[0x22AAC47E0](v245, -1, -1);

    (v309)(v250, v290);
  }

  else
  {

    v145(v130, v290);
  }

  return (*(v267 + 8))(v273, v266);
}

uint64_t sub_2288BA734(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288BA76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA7CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA82C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288BA8EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2289171F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288BA948(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22892EFA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2288BA98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288BA9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288BAA1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288BAA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288BAAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288BAAF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for OutlierContextProvider(uint64_t a1)
{
  result = qword_2813DFAC8;
  if (!qword_2813DFAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2288BABCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(255);
    v7 = sub_2288C1090(&qword_2813DF0F0, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator, &unk_228931E78);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288BAC68(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  sub_2288BB4E0(0);
  v81 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v74 - v6;
  sub_2288B5D1C(0);
  v91 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v82 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v83 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v89 = (&v74 - v12);
  v13 = sub_22892E048();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22892E478();
  v16 = *(v92 - 8);
  v17 = MEMORY[0x28223BE20](v92);
  v76 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v74 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - v21;
  v23 = sub_22892DEF8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22892EFA8();
  v95 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v88 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v90 = &v74 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v94 = &v74 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v74 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v85 = &v74 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v74 - v39;
  (*(v24 + 16))(v26, v87, v23);
  v93 = a1;
  sub_22892E708();
  sub_22892E468();
  v87 = v16;
  v41 = *(v16 + 8);
  v77 = v22;
  v42 = v22;
  v43 = v92;
  v41(v42, v92);
  v78 = v15;
  sub_22892EF48();
  v44 = v86;
  sub_22892E708();
  v45 = v89;
  sub_22892E438();
  v86 = (v16 + 8);
  v75 = v41;
  v41(v44, v43);
  v46 = v95;
  v47 = v45 + *(v91 + 36);
  v74 = *(v95 + 2);
  v74(v36, v47, v27);
  sub_2288BA82C(v45, sub_2288B5D1C);
  sub_2288BB548(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  v48 = sub_22892F038();
  v49 = v46;
  v50 = *(v46 + 1);
  v51 = (v48 & 1) == 0;
  if (v48)
  {
    v52 = v40;
  }

  else
  {
    v52 = v36;
  }

  if (v51)
  {
    v53 = v40;
  }

  else
  {
    v53 = v36;
  }

  v50(v52, v27);
  v54 = *(v49 + 4);
  v55 = v85;
  v54(v85, v53, v27);
  v95 = v49 + 32;
  v54(v40, v55, v27);
  sub_22892E758();
  v56 = v88;
  sub_22892E748();
  v57 = v56;
  v58 = sub_22892F028();
  v89 = v50;
  if (v58)
  {
    v59 = v90;
    v54(v90, v57, v27);
  }

  else
  {
    v50(v56, v27);
    v59 = v90;
    v74(v90, v40, v27);
  }

  v60 = v94;
  result = sub_22892F048();
  if (result)
  {
    v62 = v79;
    v54(v79, v60, v27);
    v63 = v81;
    v54((v62 + *(v81 + 48)), v59, v27);
    v64 = v80;
    sub_2288BB5F8(v62, v80, sub_2288BB4E0);
    v65 = *(v63 + 48);
    v66 = v83;
    v54(v83, v64, v27);
    v95 = v40;
    v67 = v89;
    v89(v64 + v65, v27);
    sub_2288BB660(v62, v64, sub_2288BB4E0);
    v54((v66 + *(v91 + 36)), (v64 + *(v63 + 48)), v27);
    v67(v64, v27);
    sub_2288BB5F8(v66, v82, sub_2288B5D1C);
    v68 = v76;
    sub_22892E708();
    sub_22892E468();
    v69 = v68;
    v70 = v92;
    v75(v69, v92);
    v71 = v77;
    sub_22892E428();
    sub_2288BA82C(v66, sub_2288B5D1C);
    v67(v95, v27);
    v72 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
    v73 = v84;
    swift_beginAccess();
    (*(v87 + 40))(v73 + v72, v71, v70);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288BB4E0(uint64_t a1)
{
  if (!qword_2813DEE28)
  {
    sub_22892EFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEE28);
    }
  }
}

uint64_t sub_2288BB548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288BB590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BB5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BB660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BB6C8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_22892E048();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22892E478();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22892EFA8();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892DDC8();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892E778();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v1 + 104);
  swift_beginAccess();
  (*(v13 + 16))(v15, v1 + v16, v12);
  sub_22892E758();
  sub_22892E708();
  sub_22892E468();
  (*(v21 + 8))(v6, v23);
  sub_22892EEC8();
  (*(v24 + 8))(v4, v25);
  (*(v20 + 8))(v8, v22);
  sub_22892DD98();
  (*(v9 + 8))(v11, v19);
  return (*(v13 + 8))(v15, v12);
}

uint64_t type metadata accessor for SleepingSampleCacheRange(uint64_t a1)
{
  result = qword_2813DF920;
  if (!qword_2813DF920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288BBAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892DEF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2288B5C84(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2288BBBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BBC50@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_22892DEF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (sub_2288B79A4())
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(ObjectType, v11);
    swift_unknownObjectRelease();
    sub_22892DED8();
    sub_2288BC144(v9, v8, a2);

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    a2[3] = a1;
    a2[4] = sub_2288C1090(&unk_2813DF1A0, sub_2288BABAC, &unk_228932284);
    *a2 = v9;
  }
}

void sub_2288BBEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288BBF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2288BBFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288BC000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2288BC064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2288BC0FC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2288BC144@<X0>(char **a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v306 = a2;
  v305 = a3;
  v359 = v4;
  ObjectType = swift_getObjectType();
  sub_2288BF140(0);
  v290 = v6;
  v289 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v291 = &v283 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_22892DFA8();
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v285 = &v283 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF1E0(0);
  MEMORY[0x28223BE20](v9 - 8);
  v288 = &v283 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v347 = v11;
  v315 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v292 = &v283 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v316 = &v283 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v325 = &v283 - v17;
  MEMORY[0x28223BE20](v16);
  v321 = &v283 - v18;
  v314 = sub_22892EA78();
  v311 = *(v314 - 8);
  MEMORY[0x28223BE20](v314);
  v313 = &v283 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF284(0);
  MEMORY[0x28223BE20](v20 - 8);
  v324 = &v283 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF2B8(0);
  MEMORY[0x28223BE20](v22 - 8);
  v329 = &v283 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  v328 = v24;
  v312 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v323 = &v283 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v322 = &v283 - v27;
  v348 = sub_22892EFA8();
  v309 = *(v348 - 8);
  v28 = MEMORY[0x28223BE20](v348);
  v339 = &v283 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v338 = &v283 - v30;
  sub_2288BF32C(0);
  MEMORY[0x28223BE20](v31 - 8);
  v342 = &v283 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_22892E6D8();
  v356 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v337 = &v283 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF360(0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v318 = &v283 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v341 = &v283 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v340 = &v283 - v40;
  MEMORY[0x28223BE20](v39);
  v349 = &v283 - v41;
  sub_2288BF3F4(0);
  MEMORY[0x28223BE20](v42 - 8);
  v317 = &v283 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = sub_22892E478();
  v332 = *(v344 - 8);
  MEMORY[0x28223BE20](v344);
  v343 = &v283 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C(0);
  v345 = v45;
  MEMORY[0x28223BE20](v45);
  v346 = &v283 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF488(0);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v283 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v351 = *(v50 - 8);
  v51 = MEMORY[0x28223BE20](v50);
  v334 = &v283 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v353 = &v283 - v53;
  v54 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v283 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_22892EDE8();
  v357 = *(v355 - 1);
  v57 = MEMORY[0x28223BE20](v355);
  v300 = &v283 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v327 = &v283 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v297 = &v283 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v350 = &v283 - v64;
  MEMORY[0x28223BE20](v63);
  v302 = &v283 - v65;
  v326 = sub_22892E7B8();
  v320 = *(v326 - 1);
  MEMORY[0x28223BE20](v326);
  v319 = (&v283 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288BF4DC();
  v336 = v67;
  v331 = *(v67 - 8);
  v68 = MEMORY[0x28223BE20](v67);
  v293 = &v283 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v360 = &v283 - v70;
  sub_2288BF53C(0);
  MEMORY[0x28223BE20](v71 - 8);
  v335 = &v283 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22892EB38();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v330 = &v283 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22892E778();
  v77 = *(v76 - 8);
  v78 = MEMORY[0x28223BE20](v76);
  v298 = &v283 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v299 = &v283 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v296 = &v283 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v294 = &v283 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v303 = &v283 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v333 = &v283 - v89;
  MEMORY[0x28223BE20](v88);
  v91 = &v283 - v90;
  v92 = *(*a1 + 13);
  swift_beginAccess();
  v308 = v77;
  v93 = *(v77 + 16);
  v354 = a1;
  v295 = v92;
  v307 = v76;
  v352 = v93;
  v93(v91, a1 + v92, v76);
  sub_22892E268();
  sub_22892E258();
  sub_22892EBB8();
  swift_allocObject();
  v304 = sub_22892EBA8();
  v94 = sub_22892EB88();
  v310 = v91;
  if ((v94 & 1) == 0)
  {
LABEL_7:
    v103 = *(v359 + OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state);
    MEMORY[0x28223BE20](v94);
    *(&v283 - 2) = v91;
    v104 = *(*v103 + *MEMORY[0x277D841D0] + 16);
    v105 = (*(*v103 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock(&v103[v105]);
    v290 = v104;
    sub_2288BF7A8(&v103[v104], v56);
    v292 = v103;
    v291 = v105;
    os_unfair_lock_unlock(&v103[v105]);
    v302 = v56;
    sub_2288BFF8C(v56, v49, sub_2288BF488);
    if ((*(v351 + 48))(v49, 1, v50) == 1)
    {
      v293 = 0;
      sub_2288BA76C(v49, sub_2288BF488);
      v106 = v303;
      sub_2288DEE24(v306, v303);
      v107 = sub_2288BF8FC();
      v108 = v307;
      if (v107)
      {
        v109 = v297;
        sub_22892EDC8();
        v110 = sub_22892EDD8();
        v111 = sub_22892F398();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v361 = v113;
          *v112 = 136446210;
          nullsub_1();
          v114 = sub_22892F948();
          v116 = sub_2288B748C(v114, v115, &v361);

          *(v112 + 4) = v116;
          v106 = v303;
          _os_log_impl(&dword_2288B2000, v110, v111, "[%{public}s] Cache miss", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v113);
          MEMORY[0x22AAC47E0](v113, -1, -1);
          MEMORY[0x22AAC47E0](v112, -1, -1);
        }

        (*(v357 + 8))(v109, v355);
        v117 = v347;
        v118 = v354;
        v119 = v295;
        swift_beginAccess();
        v120 = v308;
        (*(v308 + 24))(v118 + v119, v106, v108);
        swift_endAccess();
        sub_2288BAC68(v106, v306);
        v327 = sub_2288E88F8();
        v121 = v299;
        v122 = v352;
        v352(v299, v118 + v119, v108);
        v123 = *v118;
        v124 = (v118 + *(*v118 + 14));
        v125 = *v124;
        v359 = v124[1];
        v126 = *(v118 + *(v123 + 15));
        v127 = v298;
        v122(v298, v121, v108);
        type metadata accessor for SleepingSampleBaselineAccumulator(0);
        v128 = swift_allocObject();
        v129 = MEMORY[0x277D84F90];
        *(v128 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates) = MEMORY[0x277D84F90];
        *(v128 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries) = v129;
        v319 = v129;
        *(v128 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete) = v129;

        swift_unknownObjectRetain();
        sub_22892EDC8();
        sub_22892ED48();
        (*(v120 + 32))(v128 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v127, v108);
        v130 = (v128 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
        v131 = v359;
        *v130 = v125;
        v130[1] = v131;
        v360 = v128;
        *(v128 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider) = v126;
        v299 = *(v120 + 8);
        v300 = (v120 + 8);
        (v299)(v121, v108);
        LODWORD(v359) = 0;
        v351 = *(v315 + 56);
        v352 = (v315 + 56);
        v354 = (v315 + 48);
        v132 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
        v336 = v356 + 16;
        v335 = v356 + 8;
        v334 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
        v350 = (v356 + 56);
        v333 = (v356 + 32);
        ++v332;
        v331 = v309 + 16;
        v330 = (v309 + 8);
        v326 = (v312 + 6);
        v312 = (v311 + 4);
        ++v311;
        v320 = v309 + 56;
        LODWORD(v309) = 1;
        v133 = v342;
        v134 = v341;
        v135 = v340;
        v136 = v349;
        v357 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
        (v351)(v349, 2, 2, v117);
        while (1)
        {
          swift_beginAccess();
          sub_2288BFF8C(v136, v135, sub_2288BF360);
          v353 = *v354;
          for (i = (v353)(v135, 2, v117); i == 2; i = (v353)(v135, 2, v117))
          {
            sub_2288BA76C(v135, sub_2288BF360);
            v148 = *&v360[v132];
            v149 = *(v148 + 2);
            if (v149)
            {
              swift_beginAccess();
              v150 = (*(v356 + 80) + 32) & ~*(v356 + 80);
              (*(v356 + 16))(v133, &v148[v150], v358);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || (v149 - 1) > *(v148 + 3) >> 1)
              {
                v148 = sub_2288D6310(isUniquelyReferenced_nonNull_native, v149, 1, v148, sub_2288D6C18, MEMORY[0x277D0FFC8]);
              }

              v152 = &v148[v150];
              v153 = v356;
              v154 = v358;
              (*(v356 + 8))(v152, v358);
              v155 = *(v153 + 72);
              if (v155 > 0 || v152 >= v152 + v155 + (*(v148 + 2) - 1) * v155)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v155)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              --*(v148 + 2);
              *&v360[v357] = v148;
              swift_endAccess();
              (*v350)(v133, 0, 1, v154);
              v355 = *v333;
              v138 = v337;
              v355(v337, v133, v154);
              v139 = v338;
              sub_22892E5E8();
              v140 = v343;
              sub_22892E708();
              v141 = v346;
              sub_22892E438();
              (*v332)(v140, v344);
              v142 = v339;
              v143 = v348;
              (*v331)(v339, v141 + *(v345 + 36), v348);
              sub_2288BA76C(v141, sub_2288B5D1C);
              sub_2288C1090(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
              LODWORD(v141) = sub_22892F088();
              v144 = *v330;
              v145 = v142;
              v133 = v342;
              (*v330)(v145, v143);
              v144(v139, v143);
              v136 = v349;
              sub_2288BA76C(v349, sub_2288BF360);
              LODWORD(v359) = v141 | v359;
              v134 = v341;
              v146 = v154;
              v132 = v357;
              v355(v341, v138, v146);
              v117 = v347;
              swift_storeEnumTagMultiPayload();
              v147 = 0;
              v135 = v340;
            }

            else
            {
              (*v350)(v133, 1, 1, v358);
              sub_2288BA76C(v133, sub_2288BF32C);
              if (v359)
              {
                sub_2288BA76C(v136, sub_2288BF360);
                v147 = 1;
                LODWORD(v359) = 1;
              }

              else
              {
                v156 = v329;
                sub_22892F7A8();
                if ((*v326)(v156, 1, v328) == 1)
                {
                  sub_2288BA76C(v156, sub_2288BF2B8);
                  v157 = *v320;
                  LODWORD(v359) = 1;
                  v158 = v324;
                  v157(v324, 1, 1, v348);
                  sub_2288F81BC(v158);
                  sub_2288BA76C(v158, sub_2288BF284);
                  sub_2288BA76C(v136, sub_2288BF360);
                  v147 = 2;
                }

                else
                {
                  v159 = MEMORY[0x277D100B8];
                  v160 = v156;
                  v161 = v322;
                  sub_2288C0D18(v160, v322, &qword_2813DE910, MEMORY[0x277D100B8]);
                  v162 = v159;
                  v163 = v323;
                  sub_2288C06F8(v161, v323, &qword_2813DE910, v162);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    sub_2288C0CBC(v161, &qword_2813DE910, MEMORY[0x277D100B8]);
                    sub_2288BA76C(v136, sub_2288BF360);
                    v164 = *(v163 + 8);
                    *v134 = *v163;
                    *(v134 + 8) = v164;
                    LODWORD(v359) = 1;
                    swift_storeEnumTagMultiPayload();
                    v147 = 0;
                  }

                  else
                  {
                    v165 = v161;
                    v166 = v313;
                    v167 = v163;
                    v168 = v314;
                    (*v312)(v313, v167, v314);
                    sub_2288F78DC(v166);
                    (*v311)(v166, v168);
                    v169 = v165;
                    v136 = v349;
                    sub_2288C0CBC(v169, &qword_2813DE910, MEMORY[0x277D100B8]);
                    sub_2288BA76C(v136, sub_2288BF360);
                    LODWORD(v359) = 0;
                    v147 = 2;
                  }
                }
              }
            }

            (v351)(v134, v147, 2, v117);
            sub_2288C0074(v134, v136, sub_2288BF360);
            sub_2288BFF8C(v136, v135, sub_2288BF360);
          }

          sub_2288BA76C(v135, sub_2288BF360);
          v170 = v318;
          sub_2288C0074(v136, v318, sub_2288BF360);
          if ((v353)(v170, 2, v117))
          {
            v171 = 1;
            v172 = v317;
          }

          else
          {
            v172 = v317;
            sub_2288C0D18(v170, v317, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            v171 = 0;
          }

          (v351)(v172, v171, 1, v117);
          if ((v353)(v172, 1, v117) == 1)
          {
            break;
          }

          v173 = MEMORY[0x277D0FFC8];
          v174 = v321;
          sub_2288C0D18(v172, v321, &qword_2813DE920, MEMORY[0x277D0FFC8]);
          sub_2288C06F8(v174, v325, &qword_2813DE920, v173);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_2288C0CBC(v174, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            LODWORD(v309) = 0;
            v136 = v349;
          }

          else
          {
            sub_2288C06F8(v174, v316, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            v175 = v319;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v175 = sub_2288D64EC(0, v175[2] + 1, 1, v175);
            }

            v136 = v349;
            v177 = v175[2];
            v176 = v175[3];
            if (v177 >= v176 >> 1)
            {
              v319 = sub_2288D64EC((v176 > 1), v177 + 1, 1, v175);
            }

            else
            {
              v319 = v175;
            }

            v178 = MEMORY[0x277D0FFC8];
            sub_2288C0CBC(v321, &qword_2813DE920, MEMORY[0x277D0FFC8]);
            v179 = v319;
            v319[2] = v177 + 1;
            sub_2288C0D18(v316, v179 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v177, &qword_2813DE920, v178);
            v132 = v357;
          }

          sub_2288C0CBC(v325, &qword_2813DE920, MEMORY[0x277D0FFC8]);
          (v351)(v136, 2, 2, v117);
        }

        v226 = v360;
        swift_setDeallocating();
        v108 = v307;
        v199 = v299;
        (v299)(&v226[OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange], v307);

        v227 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
        v228 = sub_22892ED68();
        (*(*(v228 - 8) + 8))(&v226[v227], v228);
        swift_unknownObjectRelease();

        swift_deallocClassInstance();

        if (v309)
        {
          MEMORY[0x28223BE20](v229);
          v230 = v302;
          v231 = v303;
          *(&v283 - 6) = v302;
          *(&v283 - 5) = v231;
          v232 = v319;
          v233 = v306;
          *(&v283 - 4) = v319;
          *(&v283 - 3) = v233;
          *(&v283 - 2) = ObjectType;
          v234 = v292;
          v235 = v291;
          os_unfair_lock_lock(&v291[v292]);
          sub_2288D66F0(v234 + v290);
          os_unfair_lock_unlock(&v235[v234]);
        }

        else
        {
          v230 = v302;
          v231 = v303;
          v232 = v319;
        }

        MEMORY[0x28223BE20](v229);
        *(&v283 - 2) = v310;

        v265 = sub_2288C0428(sub_2288C07AC, (&v283 - 4), v232);

        sub_2288C10D8(0);
        v266 = v305;
        v305[3] = v267;
        v266[4] = sub_2288C1090(&qword_2813DECE8, sub_2288C10D8, MEMORY[0x277D83970]);

        *v266 = v265;
        v199(v231, v108);
        v264 = v230;
        goto LABEL_61;
      }

      v204 = v327;
      sub_22892EDC8();
      v205 = v294;
      v206 = v352;
      v352(v294, v310, v108);
      v207 = v296;
      v206(v296, v106, v108);
      v208 = sub_22892EDD8();
      v209 = sub_22892F398();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        v360 = swift_slowAlloc();
        v361 = v360;
        *v210 = 136446722;
        nullsub_1();
        v211 = sub_22892F948();
        LODWORD(v359) = v209;
        v213 = v207;
        v214 = sub_2288B748C(v211, v212, &v361);

        *(v210 + 4) = v214;
        *(v210 + 12) = 2080;
        sub_2288C1090(&qword_27D85B3E8, MEMORY[0x277D0FFD8], MEMORY[0x277D0FFE0]);
        v215 = sub_22892F7E8();
        v217 = v216;
        v218 = *(v308 + 8);
        v218(v205, v307);
        v219 = sub_2288B748C(v215, v217, &v361);

        *(v210 + 14) = v219;
        *(v210 + 22) = 2080;
        v108 = v307;
        v220 = sub_22892F7E8();
        v222 = v221;
        v218(v213, v108);
        v199 = v218;
        v223 = sub_2288B748C(v220, v222, &v361);

        *(v210 + 24) = v223;
        _os_log_impl(&dword_2288B2000, v208, v359, "[%{public}s] Ignoring cache key: %s ⊈ %s", v210, 0x20u);
        v224 = v360;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v224, -1, -1);
        v225 = v210;
        v106 = v303;
        MEMORY[0x22AAC47E0](v225, -1, -1);

        (*(v357 + 8))(v327, v355);
      }

      else
      {

        v199 = *(v308 + 8);
        v199(v207, v108);
        v199(v205, v108);
        (*(v357 + 8))(v204, v355);
      }

      sub_2288BABAC(0);
      v261 = v305;
      v305[3] = v262;
      v261[4] = sub_2288C1090(&unk_2813DF1A0, sub_2288BABAC, &unk_228932284);
      v263 = v354;

      *v261 = v263;
      v199(v106, v108);
    }

    else
    {
      v180 = v353;
      sub_2288C0074(v49, v353, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      v181 = v350;
      sub_22892EDC8();
      v182 = v334;
      sub_2288BFF8C(v180, v334, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
      v183 = v333;
      v108 = v307;
      v352(v333, v310, v307);
      v184 = sub_22892EDD8();
      v185 = sub_22892F398();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        v293 = 0;
        v187 = v186;
        v359 = swift_slowAlloc();
        v363 = v359;
        *v187 = 136446722;
        nullsub_1();
        v188 = sub_22892F948();
        LODWORD(v358) = v185;
        v190 = sub_2288B748C(v188, v189, &v363);
        v360 = v50;
        v191 = v190;

        *(v187 + 4) = v191;
        *(v187 + 12) = 2048;
        v192 = *(v182 + *(v360 + 6));
        sub_2288BA76C(v182, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
        *(v187 + 14) = v192;
        *(v187 + 22) = 2080;
        v193 = v343;
        sub_22892E708();
        v194 = v346;
        sub_22892E438();
        v332[1](v193, v344);
        v361 = 0;
        v362 = 0xE000000000000000;
        v195 = v108;
        v196 = v183;
        sub_22892F718();
        MEMORY[0x22AAC3770](3026478, 0xE300000000000000);
        sub_22892F718();
        v197 = v361;
        v198 = v362;
        sub_2288BA76C(v194, sub_2288B5D1C);
        v199 = *(v308 + 8);
        v200 = v196;
        v108 = v195;
        v199(v200, v195);
        v201 = sub_2288B748C(v197, v198, &v363);
        v50 = v360;

        *(v187 + 24) = v201;
        _os_log_impl(&dword_2288B2000, v184, v358, "[%{public}s] Cache hit: %ld - %s", v187, 0x20u);
        v202 = v359;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v202, -1, -1);
        MEMORY[0x22AAC47E0](v187, -1, -1);

        v203 = (*(v357 + 8))(v350, v355);
      }

      else
      {
        sub_2288BA76C(v182, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);

        v236 = v183;
        v199 = *(v308 + 8);
        v199(v236, v108);
        v203 = (*(v357 + 8))(v181, v355);
      }

      v237 = v353;
      v238 = *&v353[*(v50 + 20)];
      MEMORY[0x28223BE20](v203);
      *(&v283 - 2) = v310;

      v239 = sub_2288C0428(sub_2288C07AC, (&v283 - 4), v238);
      sub_2288C10D8(0);
      v240 = v305;
      v305[3] = v241;
      v240[4] = sub_2288C1090(&qword_2813DECE8, sub_2288C10D8, MEMORY[0x277D83970]);

      *v240 = v239;
      sub_2288BA76C(v237, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry);
    }

    v264 = v302;
LABEL_61:
    sub_2288BA76C(v264, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
    return (v199)(v310, v108);
  }

  v95 = v335;
  sub_22891B8A4(*(v354[2] + 2), v335);
  if ((*(v74 + 48))(v95, 1, v73) == 1)
  {
    v94 = sub_2288BA76C(v95, sub_2288BF53C);
LABEL_6:
    v91 = v310;
    goto LABEL_7;
  }

  v96 = v74;
  v97 = *(v74 + 32);
  v98 = v330;
  v97(v330, v95, v73);
  v99 = v319;
  sub_22891C1E4(v319);
  v100 = v360;
  sub_22892EB98();
  (*(v320 + 8))(v99, v326);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = v336;
  v335 = OpaqueTypeConformance2;
  if (sub_22892F308())
  {
    (*(v331 + 8))(v100, v102);
    v94 = (*(v96 + 8))(v98, v73);
    goto LABEL_6;
  }

  v242 = v302;
  sub_22892EDC8();
  v243 = v331;
  v244 = v293;
  (*(v331 + 16))(v293, v100, v102);
  v245 = sub_22892EDD8();
  v246 = sub_22892F378();
  v247 = os_log_type_enabled(v245, v246);
  v284 = v73;
  v283 = v96;
  if (v247)
  {
    v248 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v361 = v249;
    *v248 = 136446722;
    nullsub_1();
    v250 = sub_22892F948();
    v251 = v102;
    v253 = sub_2288B748C(v250, v252, &v361);

    *(v248 + 4) = v253;
    *(v248 + 12) = 2050;
    v254 = sub_22892F2F8();
    v354 = *(v243 + 8);
    (v354)(v244, v251);
    *(v248 + 14) = v254;
    *(v248 + 22) = 2080;
    v255 = v285;
    sub_22892DF98();
    v256 = v288;
    sub_22892DF88();
    (*(v286 + 8))(v255, v287);
    v257 = sub_22892DF78();
    v258 = *(v257 - 8);
    if ((*(v258 + 48))(v256, 1, v257) == 1)
    {
      sub_2288BA76C(v256, sub_2288BF1E0);
      v259 = 0xE300000000000000;
      v260 = 7104878;
    }

    else
    {
      v269 = sub_22892DF68();
      v259 = v270;
      (*(v258 + 8))(v256, v257);
      v260 = v269;
    }

    v271 = sub_2288B748C(v260, v259, &v361);

    *(v248 + 24) = v271;
    _os_log_impl(&dword_2288B2000, v245, v246, "[%{public}s] Intercepting query with demo dataset, returning %{public}ld summaries. Locale: %s", v248, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v249, -1, -1);
    MEMORY[0x22AAC47E0](v248, -1, -1);

    (*(v357 + 8))(v302, v355);
    v100 = v360;
  }

  else
  {
    v354 = *(v243 + 8);
    (v354)(v244, v102);

    (*(v357 + 8))(v242, v355);
  }

  v272 = sub_22892F2F8();
  v273 = MEMORY[0x277D84F90];
  if (!v272)
  {
    goto LABEL_72;
  }

  v274 = v272;
  v363 = MEMORY[0x277D84F90];
  sub_2288C0FFC(0, v272 & ~(v272 >> 63), 0);
  v273 = v363;
  v275 = v291;
  result = sub_22892F2E8();
  if ((v274 & 0x8000000000000000) == 0)
  {
    v359 = v356 + 16;
    v276 = v292;
    do
    {
      v277 = sub_22892F338();
      (*v359)(v276);
      v277(&v361, 0);
      swift_storeEnumTagMultiPayload();
      v363 = v273;
      v279 = *(v273 + 16);
      v278 = *(v273 + 24);
      if (v279 >= v278 >> 1)
      {
        sub_2288C0FFC((v278 > 1), v279 + 1, 1);
        v276 = v292;
        v273 = v363;
      }

      *(v273 + 16) = v279 + 1;
      sub_2288C0D18(v276, v273 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v279, &qword_2813DE920, MEMORY[0x277D0FFC8]);
      v280 = v360;
      sub_22892F328();
      --v274;
      v100 = v280;
    }

    while (v274);
    (*(v289 + 8))(v275, v290);
LABEL_72:
    sub_2288C10D8(0);
    v281 = v305;
    v305[3] = v282;
    v281[4] = sub_2288C1090(&qword_2813DECE8, sub_2288C10D8, MEMORY[0x277D83970]);

    *v281 = v273;
    (v354)(v100, v336);
    (*(v283 + 8))(v330, v284);
    return (*(v308 + 8))(v310, v307);
  }

  __break(1u);
  return result;
}

void sub_2288BF140(uint64_t a1)
{
  if (!qword_2813DFE00)
  {
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeMetadata2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (!v2)
    {
      atomic_store(AssociatedTypeWitness, &qword_2813DFE00);
    }
  }
}

void sub_2288BF214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2288B7AEC();
    v4 = sub_22892F8D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288BF2B8(uint64_t a1)
{
  if (!qword_2813DE900)
  {
    sub_2288BF214(255, &qword_2813DE910, MEMORY[0x277D100B8]);
    v1 = sub_22892F498();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DE900);
    }
  }
}

void sub_2288BF360(uint64_t a1)
{
  if (!qword_2813DF240[0])
  {
    v2 = type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(255);
    v3 = sub_2288D3E28(&qword_2813DF0F0, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator, &unk_228931E78);
    v5 = type metadata accessor for SleepingSampleBaselineComparisonEnumerator.Iterator.InnerIteratorResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_2813DF240);
    }
  }
}

void sub_2288BF3F4(uint64_t a1)
{
  if (!qword_2813DE918)
  {
    sub_2288BF214(255, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v1 = sub_22892F498();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DE918);
    }
  }
}

void sub_2288BF4DC()
{
  if (!qword_2813DFDF8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2813DFDF8);
    }
  }
}

uint64_t sub_2288BF570@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v21 = a3;
  v4 = sub_22892E778();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a1, 1, v8) || ((*(v5 + 16))(v7, a1, v4), v11 = sub_2288BF8FC(), (*(v5 + 8))(v7, v4), (v11 & 1) == 0))
  {
    v17 = v21;
    (*(v9 + 56))(v21, 1, 1, v8);
    v18 = *(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0) + 20);
    v19 = sub_22892DF58();
    return (*(*(v19 - 8) + 16))(v17 + v18, a1 + v18, v19);
  }

  else
  {
    result = v10(a1, 1, v8);
    if (result)
    {
      return sub_2288BFD84(a1, v21, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
    }

    v13 = *(v8 + 24);
    v14 = *(a1 + v13);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      *(a1 + v13) = v16;
      return sub_2288BFD84(a1, v21, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2288BF7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892E778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22892DEF8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288BF8FC()
{
  sub_2288B5D1C(0);
  v33[2] = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v37 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = v33 - v4;
  v5 = sub_22892E048();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - v9;
  v40 = sub_22892E478();
  v11 = *(v40 - 8);
  v12 = MEMORY[0x28223BE20](v40);
  v35 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = v33 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v33 - v19;
  v21 = sub_22892E728();
  if (v21 == sub_22892E728() && (v33[1] = v0, sub_22892E708(), sub_22892E468(), v22 = *(v11 + 8), v23 = v40, v22(v20, v40), sub_22892E708(), sub_22892E468(), v22(v18, v23), v24 = MEMORY[0x22AAC2670](v10, v8), v25 = v39, v26 = *(v38 + 8), v26(v8, v39), v26(v10, v25), (v24 & 1) != 0))
  {
    v27 = v34;
    sub_22892E708();
    v28 = v36;
    sub_22892E438();
    v22(v27, v23);
    v29 = v35;
    sub_22892E708();
    v30 = v37;
    sub_22892E438();
    v22(v29, v23);
    sub_22892EFA8();
    sub_2288BFD2C();
    if (sub_22892F048())
    {
      v31 = sub_22892F038();
    }

    else
    {
      v31 = 0;
    }

    sub_2288BFCD0(v30);
    sub_2288BFCD0(v28);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_2288BFCD0(uint64_t a1)
{
  sub_2288B5D1C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2288BFD2C()
{
  result = qword_2813DEE20;
  if (!qword_2813DEE20)
  {
    sub_22892EFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEE20);
  }

  return result;
}

uint64_t sub_2288BFD84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BFDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BFE68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22892E778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22892DEF8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2288BFF8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288BFFF4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2288E22C4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288C0074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_2288C00E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_2288C012C(a1, a2);
  sub_2288C0338(&unk_283BD3668);
  return v3;
}

void *sub_2288C012C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2288C025C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22892F698();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22892F118();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2288C025C(v10, 0);
        result = sub_22892F638();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_2288C025C(uint64_t a1, uint64_t a2)
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

  sub_22892BF48(0, &qword_2813DE980, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_2288C02E8()
{
  if (!qword_2813DE980)
  {
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE980);
    }
  }
}

uint64_t sub_2288C0338(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2288EC240(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2288C0428(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
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
      sub_2288C06F8(a3 + v15 + v16 * v13, v12, &qword_2813DE920, MEMORY[0x277D0FFC8]);
      v17 = a1(v12);
      if (v3)
      {
        sub_2288C0CBC(v12, &qword_2813DE920, MEMORY[0x277D0FFC8]);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_2288C0D18(v12, v24, &qword_2813DE920, MEMORY[0x277D0FFC8]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2288C0FFC(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2288C0FFC((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_2288C0D18(v24, v14 + v15 + v20 * v16, &qword_2813DE920, MEMORY[0x277D0FFC8]);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_2288C0CBC(v12, &qword_2813DE920, MEMORY[0x277D0FFC8]);
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

uint64_t sub_2288C06F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2288BF214(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288C0764(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2288C07CC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v28 = a1;
  v2 = sub_22892EFA8();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C(0);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892E478();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22892E6D8();
  v24 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C0BA8(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BFD84(v28, v18, sub_2288C0BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2288C0C14(v18, sub_2288C0BA8);
    v19 = 0;
  }

  else
  {
    v20 = v24;
    (*(v24 + 32))(v15, v18, v13);
    sub_22892E708();
    sub_22892E438();
    (*(v10 + 8))(v12, v9);
    sub_22892E5E8();
    sub_2288C0C74(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v21 = v26;
    if (sub_22892F038())
    {
      v19 = sub_22892F048();
    }

    else
    {
      v19 = 0;
    }

    (*(v27 + 8))(v5, v21);
    sub_2288C0C14(v8, sub_2288B5D1C);
    (*(v20 + 8))(v15, v13);
  }

  return v19 & 1;
}

void sub_2288C0BA8(uint64_t a1)
{
  if (!qword_2813DE920)
  {
    sub_22892E6D8();
    sub_2288B7AEC();
    v1 = sub_22892F8D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DE920);
    }
  }
}

uint64_t sub_2288C0C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288C0C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288C0CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288BF214(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288C0D18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2288BF214(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288C0D84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void), uint64_t a6)
{
  sub_2288DA96C(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void *sub_2288C0DF8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2288C101C(0);
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2288C0FFC(void *a1, int64_t a2, char a3)
{
  result = sub_2288C0DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2288C101C(uint64_t a1)
{
  if (!qword_2813DE978)
  {
    sub_2288BF214(255, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v1 = sub_22892F7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DE978);
    }
  }
}

uint64_t sub_2288C1090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2288C10D8(uint64_t a1)
{
  if (!qword_2813DECF0)
  {
    sub_2288BF214(255, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v1 = sub_22892F288();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DECF0);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2288C1258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892DEF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2288B5C84(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288C1348(char *a1, char *a2)
{
  v196 = a2;
  v195 = a1;
  v193 = sub_22892EDE8();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v194 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_22892E828();
  v214 = *(v230 - 8);
  v4 = MEMORY[0x28223BE20](v230);
  v229 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v231 = &v190 - v6;
  v228 = sub_22892E858();
  v204 = *(v228 - 8);
  v7 = MEMORY[0x28223BE20](v228);
  v227 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v226 = &v190 - v9;
  v225 = sub_22892E7F8();
  v203 = *(v225 - 8);
  v10 = MEMORY[0x28223BE20](v225);
  v224 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v262 = &v190 - v12;
  v261 = sub_22892E7D8();
  v202 = *(v261 - 8);
  v13 = MEMORY[0x28223BE20](v261);
  v223 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v266 = &v190 - v15;
  sub_2288C3774(0);
  v245 = v16;
  MEMORY[0x28223BE20](v16);
  v246 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C36E0(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v238 = &v190 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v239 = &v190 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v200 = &v190 - v24;
  MEMORY[0x28223BE20](v23);
  v254 = &v190 - v25;
  sub_2288BB4E0(0);
  v244 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v243 = &v190 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v247 = &v190 - v29;
  sub_2288B5D1C(0);
  v211 = v30;
  MEMORY[0x28223BE20](v30);
  v257 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C3FDC(0);
  v255 = v32;
  MEMORY[0x28223BE20](v32);
  v242 = &v190 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B4A64(0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v237 = &v190 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v268 = &v190 - v37;
  sub_2288C3E44(0);
  v249 = v38;
  v250 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v236 = &v190 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v190 - v41;
  sub_2288C4040(0);
  v44 = v43;
  v251 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v240 = &v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = &v190 - v47;
  sub_2288B4B3C(0);
  v248 = v49;
  v252 = *(v49 - 8);
  v50 = MEMORY[0x28223BE20](v49);
  v222 = &v190 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v234 = &v190 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v260 = &v190 - v55;
  MEMORY[0x28223BE20](v54);
  v197 = &v190 - v56;
  sub_2288BF284(0);
  v58 = MEMORY[0x28223BE20](v57 - 8);
  v233 = &v190 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v61 = &v190 - v60;
  v62 = sub_22892EFA8();
  v63 = *(v62 - 8);
  v64 = MEMORY[0x28223BE20](v62);
  v191 = &v190 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v190 = &v190 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v232 = &v190 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v265 = &v190 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v269 = &v190 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v235 = &v190 - v75;
  MEMORY[0x28223BE20](v74);
  v77 = &v190 - v76;
  v78 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex;
  swift_beginAccess();
  v79 = v2;
  sub_2288C337C(v2 + v78, v61, sub_2288BF284);
  v80 = *(v63 + 48);
  v241 = v63 + 48;
  v253 = v80;
  if (v80(v61, 1, v62) == 1)
  {
    sub_2288C3680(v61, sub_2288BF284);
    return MEMORY[0x277D84F90];
  }

  v263 = *(v63 + 32);
  v264 = v63 + 32;
  v263(v77, v61, v62);
  v81 = v63;
  v82 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_validDataDayRanges;
  swift_beginAccess();
  v83 = v251;
  v84 = *(v251 + 16);
  v219 = v82;
  v218 = v251 + 16;
  v217 = v84;
  v84(v48, v2 + v82, v44);
  sub_22892F908();
  v86 = *(v83 + 8);
  v85 = v83 + 8;
  v220 = v86;
  v86(v48, v44);
  v87 = v268;
  sub_2288ED804(v268);
  v88 = v250 + 8;
  v216 = *(v250 + 8);
  v216(v42, v249);
  v89 = v252 + 48;
  v215 = *(v252 + 48);
  if (v215(v87, 1, v248) == 1)
  {
    (*(v81 + 8))(v77, v62);
    sub_2288C3680(v268, sub_2288B4A64);
    return MEMORY[0x277D84F90];
  }

  v90 = v85;
  v91 = v88;
  v259 = v81;
  v252 = v89;
  v92 = v197;
  v221 = v79;
  sub_2288C344C(v268, v197, sub_2288B4B3C);
  v93 = *(v221 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit);
  if (!v93)
  {
LABEL_29:
    sub_2288C3680(v92, sub_2288B4B3C);
    (*(v259 + 8))(v77, v62);
    return MEMORY[0x277D84F90];
  }

  v94 = sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  v95 = v93;
  v96 = v196;
  if ((sub_22892F038() & 1) == 0)
  {

    goto LABEL_29;
  }

  v198 = v95;
  v250 = v91;
  v199 = v77;
  v251 = v90;
  v213 = v44;
  v271 = MEMORY[0x277D84F90];
  v97 = v195;
  v212 = v94;
  result = sub_22892F048();
  if ((result & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  v99 = v259;
  v101 = v259 + 16;
  v100 = *(v259 + 16);
  v258 = v100;
  v102 = v247;
  v100(v247, v97, v62);
  v103 = v244;
  v100(v102 + *(v244 + 48), v96, v62);
  v104 = v243;
  sub_2288C337C(v102, v243, sub_2288BB4E0);
  v210 = *(v103 + 48);
  v105 = v257;
  v106 = v263;
  v263(v257, v104, v62);
  v107 = v99 + 8;
  v108 = *(v99 + 8);
  v108(v104 + v210, v62);
  sub_2288C344C(v102, v104, sub_2288BB4E0);
  v106(v105 + *(v211 + 36), v104 + *(v103 + 48), v62);
  v267 = v108;
  v268 = v107;
  v108(v104, v62);
  v109 = v242;
  sub_2288C337C(v105, v242, sub_2288B5D1C);
  v110 = *(v255 + 36);
  v256 = v101;
  v258(v109 + v110, v105, v62);
  sub_2288C3680(v105, sub_2288B5D1C);
  v111 = *(v259 + 56);
  v259 += 56;
  v257 = v111;
  (v111)(v109 + v110, 0, 1, v62);
  v255 = 0;
  v210 = v221 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_activityType;
  v209 = (v202 + 2);
  v208 = (v203 + 2);
  v207 = (v204 + 2);
  v206 = (v214 + 16);
  v205 = (v214 + 8);
  ++v204;
  ++v203;
  ++v202;
  v214 = MEMORY[0x277D84F90];
  v112 = v265;
  v211 = v110;
  v201 = v62;
  while (1)
  {
    v113 = v254;
    (v257)(v254, 1, 1, v62);
    v114 = *(v245 + 48);
    v115 = v246;
    sub_2288C337C(v109 + v110, v246, sub_2288C36E0);
    sub_2288C337C(v113, v115 + v114, sub_2288C36E0);
    v116 = v253;
    if (v253(v115, 1, v62) == 1)
    {
      sub_2288C3680(v113, sub_2288C36E0);
      if (v116(v115 + v114, 1, v62) == 1)
      {
        sub_2288C3680(v109, sub_2288C3FDC);
        sub_2288C3680(v115, sub_2288C36E0);
        goto LABEL_32;
      }

      goto LABEL_14;
    }

    v117 = v200;
    sub_2288C337C(v115, v200, sub_2288C36E0);
    if (v116(v115 + v114, 1, v62) == 1)
    {
      sub_2288C3680(v113, sub_2288C36E0);
      v267(v117, v62);
LABEL_14:
      sub_2288C3680(v115, sub_2288C3774);
      v118 = v221;
      goto LABEL_16;
    }

    v119 = v269;
    v263(v269, (v115 + v114), v62);
    sub_2288BA98C(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
    v120 = v117;
    v121 = sub_22892F088();
    v122 = v267;
    v267(v119, v62);
    sub_2288C3680(v254, sub_2288C36E0);
    v122(v120, v62);
    v116 = v253;
    v112 = v265;
    sub_2288C3680(v115, sub_2288C36E0);
    v118 = v221;
    if (v121)
    {
      break;
    }

LABEL_16:
    v123 = v239;
    sub_2288C337C(v109 + v110, v239, sub_2288C36E0);
    result = (v116)(v123, 1, v62);
    if (result == 1)
    {
      goto LABEL_40;
    }

    v124 = v110;
    v125 = v235;
    v126 = v263;
    v263(v235, v123, v62);
    v127 = v238;
    sub_2288C344C(v109 + v124, v238, sub_2288C36E0);
    sub_2288C37D8(v127, v109 + v124);
    sub_2288C3680(v127, sub_2288C36E0);
    v126(v112, v125, v62);
    v128 = v240;
    v129 = v213;
    v217(v240, v118 + v219, v213);
    v130 = v236;
    sub_22892F908();
    v131 = v220(v128, v129);
    v132 = v118;
    MEMORY[0x28223BE20](v131);
    *(&v190 - 2) = v112;
    v133 = v237;
    v134 = v255;
    sub_2288C3A54(sub_2288C3EF8, (&v190 - 4), v237);
    v216(v130, v249);
    v135 = v248;
    v136 = v215(v133, 1, v248);
    v255 = v134;
    if (v136 == 1)
    {
      sub_2288C3680(v133, sub_2288B4A64);
      sub_22892E7C8();
      v137 = v258;
      v258(v269, v112, v62);
      (v257)(v233, 1, 1, v62);
      sub_22892E7E8();
      v138 = v232;
      sub_22892EED8();
      sub_22892EEF8();
      v267(v138, v62);
      result = sub_22892F048();
      if ((result & 1) == 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v139 = v247;
      v137(v247, v112, v62);
    }

    else
    {
      sub_2288C344C(v133, v234, sub_2288B4B3C);
      result = sub_22892EF88();
      v140 = *(v132 + 64);
      v141 = 0.0;
      v142 = v258;
      if (result < *(v140 + 16))
      {
        if (result < 0)
        {
          goto LABEL_38;
        }

        v141 = *(v140 + 8 * result + 32);
      }

      v139 = v247;
      v143 = [objc_opt_self() quantityWithUnit:v198 doubleValue:v141];
      sub_22892E7C8();
      v142(v269, v112, v62);
      v144 = v233;
      v145 = v234;
      v142(v233, v234, v62);
      (v257)(v144, 0, 1, v62);
      sub_22892E7E8();
      v146 = v232;
      sub_22892EED8();
      sub_22892EEF8();
      v267(v146, v62);
      result = sub_22892F048();
      if ((result & 1) == 0)
      {
        goto LABEL_37;
      }

      v142(v139, v145, v62);
      sub_2288C3680(v145, sub_2288B4B3C);
    }

    v147 = v244;
    v148 = v263;
    v263(&v139[*(v244 + 48)], v269, v62);
    v149 = v139;
    v150 = v139;
    v151 = v243;
    sub_2288C337C(v149, v243, sub_2288BB4E0);
    v152 = *(v147 + 48);
    v153 = v260;
    v148(v260, v151, v62);
    v154 = v267;
    v267(v151 + v152, v62);
    sub_2288C344C(v150, v151, sub_2288BB4E0);
    v148(v153 + *(v135 + 36), v151 + *(v147 + 48), v62);
    v154(v151, v62);
    (*v209)(v223, v266, v261);
    v155 = v262;
    v156 = v225;
    (*v208)(v224, v262, v225);
    v157 = v226;
    sub_22892E848();
    v258(v269, v265, v62);
    sub_2288C337C(v153, v222, sub_2288B4B3C);
    v158 = v228;
    (*v207)(v227, v157, v228);
    v159 = v231;
    sub_22892E818();
    v160 = v157;
    v161 = v155;
    v162 = v261;
    v163 = v230;
    (*v206)(v229, v159, v230);
    sub_2288C351C(0);
    v165 = objc_allocWithZone(v164);
    sub_22892EE58();
    MEMORY[0x22AAC3860]();
    if (*((v271 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v271 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v214 = *((v271 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22892F228();
      v159 = v231;
    }

    sub_22892F258();
    (*v205)(v159, v163);
    (*v204)(v160, v158);
    sub_2288C3680(v260, sub_2288B4B3C);
    (*v203)(v161, v156);
    (*v202)(v266, v162);
    v214 = v271;
    v112 = v265;
    v62 = v201;
    v267(v265, v201);
    v109 = v242;
    v110 = v211;
  }

  sub_2288C3680(v109, sub_2288C3FDC);
LABEL_32:
  v166 = v194;
  sub_22892EDC8();
  v167 = v190;
  v168 = v258;
  v258(v190, v195, v62);
  v169 = v191;
  v168(v191, v196, v62);

  v170 = sub_22892EDD8();
  v171 = sub_22892F398();

  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v269 = swift_slowAlloc();
    v270 = v269;
    *v172 = 136315650;
    sub_2288BA98C(&qword_2813DEDF0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6D0]);
    v173 = sub_22892F7E8();
    v175 = v174;
    v176 = v267;
    v267(v167, v62);
    v177 = sub_2288B748C(v173, v175, &v270);

    *(v172 + 4) = v177;
    *(v172 + 12) = 2080;
    v178 = sub_22892F7E8();
    v180 = v179;
    v176(v169, v62);
    v181 = sub_2288B748C(v178, v180, &v270);

    *(v172 + 14) = v181;
    *(v172 + 22) = 2080;
    v182 = v240;
    v183 = v213;
    v217(v240, v221 + v219, v213);
    sub_2288BA98C(&qword_2813DE8D0, sub_2288C4040, MEMORY[0x277D84EE8]);
    v184 = sub_22892F7E8();
    v186 = v185;
    v220(v182, v183);
    v187 = sub_2288B748C(v184, v186, &v270);

    *(v172 + 24) = v187;
    _os_log_impl(&dword_2288B2000, v170, v171, "Getting results [%s: %s], valid dates %s", v172, 0x20u);
    v188 = v269;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v188, -1, -1);
    MEMORY[0x22AAC47E0](v172, -1, -1);

    (*(v192 + 8))(v194, v193);
    sub_2288C3680(v197, sub_2288B4B3C);
    v176(v199, v62);
  }

  else
  {

    v189 = v267;
    v267(v169, v62);
    v189(v167, v62);
    (*(v192 + 8))(v166, v193);
    sub_2288C3680(v197, sub_2288B4B3C);
    v189(v199, v62);
  }

  return v214;
}

uint64_t sub_2288C337C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288C33E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288C344C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288C34B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2288C351C(uint64_t a1)
{
  if (!qword_2813DEE30)
  {
    sub_22892E828();
    v1 = MEMORY[0x277D10028];
    sub_2288BA98C(&qword_2813DFE30, MEMORY[0x277D10028], MEMORY[0x277D10048]);
    sub_2288BA98C(&unk_2813DFE40, v1, MEMORY[0x277D10030]);
    sub_2288BA98C(&qword_2813DFE38, v1, MEMORY[0x277D10038]);
    v2 = sub_22892EE78();
    if (!v3)
    {
      atomic_store(v2, &qword_2813DEE30);
    }
  }
}

uint64_t sub_2288C3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2288C3680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2288C36E0(uint64_t a1)
{
  if (!qword_2813DEDA0)
  {
    sub_22892EFA8();
    sub_2288BA948(&unk_2813DEE00, MEMORY[0x277CCB6C8]);
    sub_2288D9DE8();
    v1 = sub_22892F078();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEDA0);
    }
  }
}

void sub_2288C3774(uint64_t a1)
{
  if (!qword_2813DED98)
  {
    sub_2288C36E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED98);
    }
  }
}

uint64_t sub_2288C37D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22892EFA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C36E0(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BB5F8(a1, v10, sub_2288C36E0);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_2288B5D1C(0);
    sub_2288BB548(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
    if (sub_22892F088())
    {
      (*(v5 + 8))(v7, v4);
      v12 = 1;
    }

    else
    {
      v13[1] = 1;
      sub_2288BB548(&unk_2813DEE00, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      sub_22892F4D8();
      (*(v5 + 8))(v7, v4);
      v12 = 0;
    }

    return (*(v5 + 56))(a2, v12, 1, v4);
  }

  return result;
}

uint64_t sub_2288C3A54@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[5] = a2;
  v30 = a3;
  v31 = a1;
  sub_2288B4B3C(0);
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  sub_2288C3E44(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C3E64(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v3, v12);
  sub_2288BA98C(&qword_2813DE8E8, sub_2288C3E44, MEMORY[0x277D84EC8]);
  sub_22892F1A8();
  v20 = *(v17 + 44);
  sub_2288BA98C(&qword_2813DE8E0, sub_2288C3E44, MEMORY[0x277D84ED0]);
  while (1)
  {
    sub_22892F318();
    if (*&v19[v20] == v32[0])
    {
      sub_2288C3680(v19, sub_2288C3E64);
      v24 = 1;
      v25 = v30;
      return (*(v28 + 56))(v25, v24, 1, v29);
    }

    v21 = sub_22892F338();
    sub_2288C337C(v22, v10, sub_2288B4B3C);
    v21(v32, 0);
    sub_22892F328();
    sub_2288C344C(v10, v8, sub_2288B4B3C);
    v23 = v31(v8);
    if (v4)
    {
      sub_2288C3680(v8, sub_2288B4B3C);
      return sub_2288C3680(v19, sub_2288C3E64);
    }

    if (v23)
    {
      break;
    }

    sub_2288C3680(v8, sub_2288B4B3C);
  }

  sub_2288C3680(v19, sub_2288C3E64);
  v27 = v30;
  sub_2288C344C(v8, v30, sub_2288B4B3C);
  v25 = v27;
  v24 = 0;
  return (*(v28 + 56))(v25, v24, 1, v29);
}

void sub_2288C3E64(uint64_t a1)
{
  if (!qword_2813DEA60)
  {
    sub_2288C3E44(255);
    sub_2288BA98C(&qword_2813DE8E0, sub_2288C3E44, MEMORY[0x277D84ED0]);
    v1 = sub_22892F728();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEA60);
    }
  }
}

uint64_t sub_2288C3F18(uint64_t a1, uint64_t a2)
{
  sub_22892EFA8();
  sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  if ((sub_22892F048() & 1) == 0)
  {
    return 0;
  }

  sub_2288B4B3C(0);
  return sub_22892F028() & 1;
}

void sub_2288C3FDC(uint64_t a1)
{
  if (!qword_2813DEA78)
  {
    sub_2288B5D1C(255);
    sub_2288D9D4C();
    v1 = sub_22892F728();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEA78);
    }
  }
}

uint64_t sub_2288C4060()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = sub_22892E778();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2288C415C()
{
  sub_2288C4060();

  return swift_deallocClassInstance();
}

uint64_t sub_2288C41B4()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon43SleepingSampleAggregateDaySummaryEnumerator_gregorianDayRange;
  v2 = sub_22892E478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2288C4258()
{
  sub_2288C4298(*(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2288C4298(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2288C42A8()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2288C434C(NSObject *a1, unint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v334 = a5;
  v340 = a4;
  v291 = a3;
  v343 = a1;
  v350[5] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v289 = sub_22892DF58();
  v288 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v287 = &v270 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_22892E828();
  v273 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v314 = &v270 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B4A64(0);
  MEMORY[0x28223BE20](v8 - 8);
  v274 = &v270 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5C84(0);
  MEMORY[0x28223BE20](v10 - 8);
  v346 = &v270 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_22892DEF8();
  v271 = *(v301 - 8);
  v12 = MEMORY[0x28223BE20](v301);
  v342 = (&v270 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v302 = &v270 - v15;
  MEMORY[0x28223BE20](v14);
  v345 = &v270 - v16;
  sub_2288BB4E0(0);
  v327 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v325 = &v270 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v324 = &v270 - v20;
  sub_2288B4B3C(0);
  v336 = v21;
  v272 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v333 = (&v270 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289126E0(0);
  v278 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v270 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v316 = (&v270 - v27);
  v286 = sub_22892DE18();
  v285 = *(v286 - 8);
  v28 = MEMORY[0x28223BE20](v286);
  v299 = &v270 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v298 = &v270 - v30;
  v31 = sub_22892EFA8();
  v292 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v313 = &v270 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v321 = (&v270 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v318 = &v270 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v290 = &v270 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v277 = &v270 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v312 = (&v270 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v330 = (&v270 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  p_isa = (&v270 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v307 = (&v270 - v49);
  MEMORY[0x28223BE20](v48);
  v306 = &v270 - v50;
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v54 = &v270 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v303 = &v270 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v311 = &v270 - v58;
  MEMORY[0x28223BE20](v57);
  v344 = &v270 - v59;
  v331 = sub_22892E048();
  v60 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v62 = &v270 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_22892EDE8();
  v296 = *(v297 - 8);
  v63 = MEMORY[0x28223BE20](v297);
  v339 = (&v270 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = MEMORY[0x28223BE20](v63);
  v276 = &v270 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = &v270 - v67;
  sub_22892EDC8();

  v69 = a2;
  v70 = sub_22892EDD8();
  v71 = sub_22892F398();

  v72 = v70;
  v73 = os_log_type_enabled(v70, v71);
  v294 = v62;
  v319 = v26;
  v293 = v54;
  v280 = v69;
  if (v73)
  {
    v74 = v60;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v75 = 136446466;
    v77 = sub_22892F948();
    v79 = sub_2288B748C(v77, v78, aBlock);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    *(v75 + 14) = sub_2288B748C(v343, v69, aBlock);
    _os_log_impl(&dword_2288B2000, v72, v71, "[%{public}s:%s] Query Type is All Day", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v76, -1, -1);
    v80 = v75;
    v60 = v74;
    v81 = v294;
    MEMORY[0x22AAC47E0](v80, -1, -1);

    v279 = *(v296 + 8);
    v279(v68, v297);
  }

  else
  {

    v279 = *(v296 + 8);
    v279(v68, v297);
    v81 = v62;
  }

  v82 = v344;
  sub_22892EBC8();
  v83 = *(v60 + 48);
  v84 = v331;
  v329 = v60 + 48;
  v328 = v83;
  if (v83(v82, 1, v331) == 1)
  {
    goto LABEL_160;
  }

  v295 = v60;
  (*(v60 + 32))(v81, v82, v84);
  sub_22890F20C(v306, v307);
  sub_22892EF38();
  sub_22892EF38();
  v85 = sub_22892DDD8();
  v86 = sub_22892DDD8();
  v87 = HDActivityCacheEntityPredicateForCachesInDateComponentsRange();

  v88 = objc_allocWithZone(MEMORY[0x277D10588]);
  v89 = [v88 initWithProfile_];
  v90 = sub_2288E2A3C();
  v92 = v91;
  v93 = *(v91 + 8);
  v350[3] = v90;
  v350[4] = v91;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v350);
  v305 = v90;
  v308 = v92;
  v93(0, 1, v90, v92);
  v347 = MEMORY[0x277D84F90];
  v94 = swift_allocObject();
  *(v94 + 16) = &v347;
  v95 = swift_allocObject();
  v95[2] = sub_2288B3B68;
  v95[3] = v94;
  aBlock[4] = sub_2288B3B70;
  aBlock[5] = v95;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288B3B98;
  aBlock[3] = &block_descriptor_18_0;
  v96 = _Block_copy(aBlock);
  v97 = v87;

  aBlock[0] = 0;
  v284 = v89;
  v98 = [v89 enumerateActivitySummariesWithPredicate:v97 error:aBlock handler:v96];
  _Block_release(v96);
  v283 = v97;

  v99 = aBlock[0];
  LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

  if (v89)
  {
    goto LABEL_142;
  }

  v282 = v94;
  if (!v98)
  {
    v114 = sub_22892DE38();

    swift_willThrow();
    v115 = v339;
    sub_22892EDC8();
    v116 = v280;

    v117 = v114;
    v118 = sub_22892EDD8();
    v119 = sub_22892F398();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      aBlock[0] = v122;
      *v120 = 136446722;
      v123 = sub_22892F948();
      v125 = sub_2288B748C(v123, v124, aBlock);

      *(v120 + 4) = v125;
      *(v120 + 12) = 2080;
      *(v120 + 14) = sub_2288B748C(v343, v116, aBlock);
      *(v120 + 22) = 2112;
      v126 = v114;
      v127 = _swift_stdlib_bridgeErrorToNSError();
      *(v120 + 24) = v127;
      *v121 = v127;
      _os_log_impl(&dword_2288B2000, v118, v119, "[%{public}s:%s] Initial Activity Summary Query errored with %@", v120, 0x20u);
      sub_2288B5BCC(v121, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v121, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v122, -1, -1);
      MEMORY[0x22AAC47E0](v120, -1, -1);

      v128 = v339;
    }

    else
    {

      v128 = v115;
    }

    v279(v128, v297);
    v103 = v295;
    v129 = v283;
    v130 = v294;
    v131 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCBDB0] code:100 userInfo:0];
    v132 = sub_22892DE28();

    v133 = [v300 queryUUID];
    v134 = v287;
    sub_22892DF38();

    v135 = sub_22892DF18();
    (*(v288 + 8))(v134, v289);
    [v291 client:v132 deliverError:v135 forQuery:?];

    v136 = v129;
    v72 = v307;
    v99 = v306;
    v102 = v331;
    goto LABEL_121;
  }

  v98 = v347;
  if (v347 >> 62)
  {
    goto LABEL_145;
  }

  v100 = *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v101 = v300;
  v102 = v331;
  v103 = v295;
  v104 = v343;
  if (!v100)
  {
    v137 = sub_22892F208();
    v138 = [v101 queryUUID];
    v139 = v287;
    sub_22892DF38();

    v140 = sub_22892DF18();
    (*(v288 + 8))(v139, v289);
    [v291 client:v137 deliverTrainingLoadSampleDaySummaries:v140 queryUUID:?];

    v72 = v307;
    v99 = v306;
    v136 = v284;
    v130 = v294;
    goto LABEL_121;
  }

  if ((v98 & 0xC000000000000001) != 0)
  {

    v269 = MEMORY[0x22AAC3CC0](0, v98);

    v105 = v269;
  }

  else
  {
    if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v105 = *(v98 + 32);
  }

  v310 = v105;
  v98 = [v105 activeEnergyBurned];
  v317 = [v98 _unit];

  v106 = v347;
  if (v347 >> 62)
  {
    v107 = sub_22892F588();
  }

  else
  {
    v107 = *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v107)
  {
    v108 = 0;
    v109 = 0.0;
    v72 = &off_278609000;
    do
    {
      if ((v106 & 0xC000000000000001) != 0)
      {
        v110 = MEMORY[0x22AAC3CC0](v108, v106);
      }

      else
      {
        if (v108 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_131;
        }

        v110 = *(v106 + 8 * v108 + 32);
      }

      v99 = v110;
      v98 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        goto LABEL_130;
      }

      v111 = [v110 activeEnergyBurned];
      [v111 doubleValueForUnit_];
      v113 = v112;

      v104 = v343;
      v109 = v109 + v113;
      ++v108;
    }

    while (v98 != v107);
  }

  else
  {
    v109 = 0.0;
  }

  v141 = sub_22891285C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  v142 = v306;
  v98 = v307;
  v339 = v141;
  if ((sub_22892F048() & 1) == 0)
  {
    goto LABEL_149;
  }

  v143 = v292;
  v144 = v292 + 16;
  v145 = *(v292 + 16);
  v323 = v145;
  v146 = v324;
  v145(v324, v142, v31);
  v147 = v327;
  v145(v146 + *(v327 + 48), v98, v31);
  v148 = v325;
  sub_2289127F4(v146, v325, sub_2288BB4E0);
  v344 = *(v147 + 48);
  v149 = *(v143 + 32);
  v150 = v333;
  v149(v333, v148, v31);
  v151 = *(v143 + 8);
  v151(v148 + v344, v31);
  sub_2288C34B4(v146, v148, sub_2288BB4E0);
  v152 = v336;
  v153 = v150 + *(v336 + 36);
  v154 = v148 + *(v327 + 48);
  v332 = v143 + 32;
  v335 = v149;
  v149(v153, v154, v31);
  v338 = (v143 + 8);
  v151(v148, v31);
  v155 = v316;
  sub_2289127F4(v150, v316, sub_2288B4B3C);
  v344 = *(v278 + 36);
  v322 = v144;
  v323(v155 + v344, v150, v31);
  sub_2288B5BCC(v150, sub_2288B4B3C);
  v99 = *(v152 + 36);
  v320 = sub_22891285C(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  v156 = 0;
  v326 = (v295 + 8);
  v157 = v330;
  v340 = v151;
  v72 = v155;
  v309 = v99;
  while ((sub_22892F088() & 1) == 0)
  {
    v158 = v344;
    v98 = v322;
    v159 = v323;
    v323(p_isa, v72 + v344, v31);
    v160 = v157;
    v161 = v335;
    v335(v160, v72 + v158, v31);
    if ((sub_22892F048() & 1) == 0)
    {
      goto LABEL_134;
    }

    v337 = v156;
    v162 = v161;
    v163 = v324;
    v159(v324, v72, v31);
    v164 = v327;
    v159((v163 + *(v327 + 48)), (v72 + v99), v31);
    v165 = v325;
    sub_2289127F4(v163, v325, sub_2288BB4E0);
    v166 = *(v164 + 48);
    v162(v333, v165, v31);
    v340(v165 + v166, v31);
    v167 = v163;
    v150 = v333;
    sub_2288C34B4(v167, v165, sub_2288BB4E0);
    v98 = *(v336 + 36);
    v162((v150 + v98), v165 + *(v164 + 48), v31);
    v168 = v165;
    v157 = v330;
    v340(v168, v31);
    v151 = v340;
    v72 = v339;
    if ((sub_22892F048() & 1) == 0)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v98 = sub_22892F028();
    sub_2288B5BCC(v150, sub_2288B4B3C);
    if ((v98 & 1) == 0)
    {
      goto LABEL_136;
    }

    aBlock[0] = 1;
    sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
    v72 = v316;
    sub_22892F4D8();
    v151(v157, v31);
    v169 = v312;
    v335(v312, p_isa, v31);
    v170 = v311;
    sub_22892EBC8();
    v171 = v331;
    if (v328(v170, 1, v331) == 1)
    {
      goto LABEL_157;
    }

    v172 = sub_228911B80(v310, v169, v170);
    v151(v169, v31);
    (*v326)(v170, v171);
    v104 = v343;
    v156 = v337;
    v99 = v309;
    if (v172)
    {
      break;
    }

    v156 = (v337 + 1);
    if (__OFADD__(v337, 1))
    {
      __break(1u);
      break;
    }
  }

  sub_2288B5BCC(v72, sub_2289126E0);
  v98 = sub_22892EF68();
  v173 = sub_22892EF68();
  v174 = v98 - v173;
  if (__OFSUB__(v98, v173))
  {
    goto LABEL_150;
  }

  v175 = __OFSUB__(v174, v156);
  v176 = v174 - v156;
  if (v175)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    v216 = sub_22892F588();
    goto LABEL_55;
  }

  if (v176 < 1)
  {
    v177 = 0.0;
  }

  else
  {
    v177 = v109 / v176;
  }

  v178 = v280;
  v179 = v290;
  v180 = objc_opt_self();
  v181 = v317;
  v275 = [v180 quantityWithUnit:v317 doubleValue:v177];
  v270 = v180;
  v290 = [v180 quantityWithUnit:v181 doubleValue:0.0];
  v182 = v276;
  sub_22892EDC8();
  v183 = v277;
  v184 = v323;
  v323(v277, v306, v31);
  v184(v179, v307, v31);
  v185 = v182;

  v186 = sub_22892EDD8();
  v99 = sub_22892F398();

  if (os_log_type_enabled(v186, v99))
  {
    LODWORD(v343) = v99;
    v187 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    aBlock[0] = p_isa;
    *v187 = 136447234;
    v188 = sub_22892F948();
    v190 = sub_2288B748C(v188, v189, aBlock);

    *(v187 + 4) = v190;
    *(v187 + 12) = 2080;
    *(v187 + 14) = sub_2288B748C(v104, v178, aBlock);
    *(v187 + 22) = 2048;
    swift_beginAccess();
    v344 = v186;
    if (v347 >> 62)
    {
      v191 = sub_22892F588();
    }

    else
    {
      v191 = *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v192 = v338;
    v193 = v277;
    *(v187 + 24) = v191;
    *(v187 + 32) = 2080;
    sub_22891285C(&qword_2813DEDF0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6D0]);
    v194 = sub_22892F7E8();
    v196 = v195;
    v151(v193, v31);
    v197 = sub_2288B748C(v194, v196, aBlock);

    *(v187 + 34) = v197;
    *(v187 + 42) = 2080;
    v198 = sub_22892F7E8();
    v99 = v199;
    v151(v179, v31);
    v200 = sub_2288B748C(v198, v99, aBlock);

    *(v187 + 44) = v200;
    v201 = v344;
    _os_log_impl(&dword_2288B2000, v344, v343, "[%{public}s:%s] Processing %ld Activity Summaries between %s and %s", v187, 0x34u);
    v202 = p_isa;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v202, -1, -1);
    MEMORY[0x22AAC47E0](v187, -1, -1);

    v279(v276, v297);
    v98 = v307;
    v203 = v306;
    v150 = v333;
    v72 = v192;
  }

  else
  {

    v204 = v179;
    v72 = v338;
    v151(v204, v31);
    v151(v183, v31);
    v279(v185, v297);
    v98 = v307;
    v203 = v306;
  }

  if ((sub_22892F048() & 1) == 0)
  {
    goto LABEL_152;
  }

  v205 = v324;
  v206 = v203;
  v207 = v323;
  v323(v324, v206, v31);
  v208 = v327;
  v207(v205 + *(v327 + 48), v98, v31);
  v209 = v325;
  sub_2289127F4(v205, v325, sub_2288BB4E0);
  v210 = *(v208 + 48);
  v211 = v335;
  v335(v150, v209, v31);
  v151(v209 + v210, v31);
  sub_2288C34B4(v205, v209, sub_2288BB4E0);
  v212 = v336;
  v211(v150 + *(v336 + 36), v209 + *(v208 + 48), v31);
  v151(v209, v31);
  v99 = v319;
  sub_2289127F4(v150, v319, sub_2288B4B3C);
  v213 = *(v278 + 36);
  v323(v99 + v213, v150, v31);
  sub_2288B5BCC(v150, sub_2288B4B3C);
  v214 = *(v212 + 36);
  if ((sub_22892F088() & 1) == 0)
  {
    v98 = 0;
    p_isa = &v271[4].isa;
    v343 = v271 + 7;
    v337 = &v271[6];
    v344 = &v271[1];
    v309 = (v308 + 16);
    v316 = v213;
    v311 = v214;
    do
    {
      v72 = v323;
      v323(v318, v99 + v213, v31);
      v230 = v335;
      v335(v330, v99 + v213, v31);
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_137;
      }

      v231 = v324;
      (v72)(v324, v99, v31);
      v232 = v327;
      (v72)(v231 + *(v327 + 48), &v214[v99], v31);
      v233 = v325;
      sub_2289127F4(v231, v325, sub_2288BB4E0);
      v234 = *(v232 + 48);
      v72 = v333;
      v230(v333, v233, v31);
      v340(v233 + v234, v31);
      v235 = v231;
      v236 = v340;
      sub_2288C34B4(v235, v233, sub_2288BB4E0);
      v237 = *(v232 + 48);
      v238 = v330;
      v230((v72 + *(v336 + 36)), v233 + v237, v31);
      v236(v233, v31);
      v99 = v339;
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_138;
      }

      v239 = sub_22892F028();
      sub_2288B5BCC(v72, sub_2288B4B3C);
      if ((v239 & 1) == 0)
      {
        goto LABEL_139;
      }

      v348 = 1;
      sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      sub_22892F4D8();
      v236(v238, v31);
      v335(v321, v318, v31);
      v240 = v303;
      sub_22892EBC8();
      v99 = v331;
      if (v328(v240, 1, v331) == 1)
      {
        goto LABEL_158;
      }

      sub_22892EF98();
      v312 = *v326;
      v312(v240, v99);
      swift_beginAccess();
      v241 = v302;
      v72 = v301;
      while (1)
      {
        if (v347 >> 62)
        {
          if (v98 >= sub_22892F588())
          {
            break;
          }
        }

        else if (v98 >= *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        swift_beginAccess();
        if ((v347 & 0xC000000000000001) != 0)
        {
          v242 = MEMORY[0x22AAC3CC0](v98);
        }

        else
        {
          if (v98 < 0)
          {
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
            goto LABEL_135;
          }

          if (v98 >= *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v242 = *(v347 + 8 * v98 + 32);
        }

        v243 = v242;
        swift_endAccess();
        v99 = [v243 _endDate];

        if (v99)
        {
          v244 = v342;
          sub_22892DEC8();

          v245 = *p_isa;
          v99 = v346;
          (*p_isa)(v346, v244, v72);
          (v343->isa)(v99, 0, 1, v72);
          v245(v241, v99, v72);
        }

        else
        {
          v246 = v346;
          (v343->isa)(v346, 1, 1, v72);
          sub_22892DEE8();
          if ((*v337)(v246, 1, v72) != 1)
          {
            sub_2288B5BCC(v346, sub_2288B5C84);
          }
        }

        v247 = sub_22892DE78();
        (*v344)(v241, v72);
        if ((v247 & 1) == 0)
        {
          break;
        }

        ++v98;
      }

      if (v347 >> 62)
      {
        if (v98 >= sub_22892F588())
        {
          goto LABEL_70;
        }

LABEL_96:
        swift_beginAccess();
        if ((v347 & 0xC000000000000001) == 0)
        {
          if ((v98 & 0x8000000000000000) == 0)
          {
            if (v98 < *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v248 = *(v347 + 8 * v98 + 32);
              goto LABEL_100;
            }

LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v248 = MEMORY[0x22AAC3CC0](v98);
LABEL_100:
        v99 = v248;
        swift_endAccess();
        v249 = v293;
        sub_22892EBC8();
        v250 = v331;
        if (v328(v249, 1, v331) != 1)
        {
          v251 = sub_228911B80(v99, v321, v249);

          v312(v249, v250);
          if ((v251 & 1) == 0)
          {
            goto LABEL_70;
          }

          swift_beginAccess();
          if ((v347 & 0xC000000000000001) != 0)
          {
            v252 = MEMORY[0x22AAC3CC0](v98);
            goto LABEL_106;
          }

          if (v98 < 0)
          {
            goto LABEL_143;
          }

          if (v98 < *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v252 = *(v347 + 8 * v98 + 32);
LABEL_106:
            v253 = v252;
            swift_endAccess();
            v254 = [v253 activityMoveMode];
            v255 = [v253 activeEnergyBurned];
            v256 = v255;
            if (v254 != 1)
            {
              v257 = [v255 _unit];

              v256 = [v270 quantityWithUnit:v257 doubleValue:0.0];
            }

            ++v98;
            v227 = v321;
            (*(v308 + 16))(v256, v321, 0, v305);

            goto LABEL_73;
          }

LABEL_144:
          __break(1u);
LABEL_145:
          v100 = sub_22892F588();
          goto LABEL_9;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
      }

      if (v98 < *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

LABEL_70:
      if (v98)
      {
        v226 = v290;
        v227 = v321;
        v228 = v321;
        v229 = 0;
      }

      else
      {
        v226 = v275;
        v227 = v321;
        v228 = v321;
        v229 = 1;
      }

      (*v309)(v226, v228, v229, v305, v308);
LABEL_73:
      (*v344)(v345, v72);
      v340(v227, v31);
      v99 = v319;
      v213 = v316;
      v214 = v311;
    }

    while ((sub_22892F088() & 1) == 0);
  }

  sub_2288B5BCC(v99, sub_2289126E0);
  v99 = v306;
  v72 = v307;
  v215 = (*(v308 + 24))(v306, v307, v305);
  v98 = v215;
  v348 = MEMORY[0x277D84F90];
  if (v215 >> 62)
  {
    goto LABEL_153;
  }

  v216 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_55:
  v217 = v291;
  v103 = v295;
  v130 = v294;
  v218 = v274;
  if (!v216)
  {
    v258 = MEMORY[0x277D84F90];
    goto LABEL_116;
  }

  v219 = 0;
  v345 = (v98 & 0xC000000000000001);
  v344 = v98 & 0xFFFFFFFFFFFFFF8;
  v343 = v272 + 6;
  v342 = (v273 + 8);
  do
  {
    if (v345)
    {
      v220 = MEMORY[0x22AAC3CC0](v219, v98);
    }

    else
    {
      if (v219 >= *(v344 + 16))
      {
        goto LABEL_133;
      }

      v220 = *(v98 + 8 * v219 + 32);
    }

    v99 = v220;
    v221 = (v219 + 1);
    if (__OFADD__(v219, 1))
    {
      goto LABEL_132;
    }

    v72 = v216;
    v222 = v98;
    sub_22892EBD8();
    if ((v343->isa)(v218, 1, v336) == 1)
    {
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v223 = v218;
    v224 = v314;
    v346 = v99;
    sub_22892EE68();
    v99 = v313;
    sub_22892E808();
    (*v342)(v224, v315);
    v218 = v223;
    if ((sub_22892F048() & 1) == 0)
    {
      v340(v99, v31);
      sub_2288B5BCC(v223, sub_2288B4B3C);
      v98 = v222;
LABEL_58:

      goto LABEL_59;
    }

    v225 = sub_22892F028();
    v340(v99, v31);
    sub_2288B5BCC(v223, sub_2288B4B3C);
    v98 = v222;
    if ((v225 & 1) == 0)
    {
      goto LABEL_58;
    }

    sub_22892F6A8();
    v99 = *(v348 + 16);
    sub_22892F6D8();
    sub_22892F6E8();
    sub_22892F6B8();
LABEL_59:
    ++v219;
    v216 = v72;
  }

  while (v221 != v72);
  v258 = v348;
  v217 = v291;
  v72 = v307;
  v99 = v306;
  v103 = v295;
  v130 = v294;
LABEL_116:

  if (v258 < 0 || (v258 & 0x4000000000000000) != 0)
  {
    sub_22892F748();
  }

  else
  {
    sub_22892F828();
    if (!swift_dynamicCastMetatype())
    {
      v267 = *(v258 + 16);
      if (v267)
      {
        v268 = 32;
        do
        {
          if (!*(v258 + v268))
          {
            break;
          }

          v268 += 8;
          --v267;
        }

        while (v267);
      }
    }
  }

  v259 = sub_22892F208();

  v260 = [v300 queryUUID];
  v261 = v287;
  sub_22892DF38();

  v262 = sub_22892DF18();
  (*(v288 + 8))(v261, v289);
  [v217 client:v259 deliverTrainingLoadSampleDaySummaries:v262 queryUUID:?];

  v102 = v331;
  v136 = v284;
LABEL_121:

  v263 = *(v285 + 8);
  v264 = v286;
  v263(v299, v286);
  v263(v298, v264);
  v265 = *(v292 + 8);
  v265(v72, v31);
  v265(v99, v31);
  (*(v103 + 8))(v130, v102);

  __swift_destroy_boxed_opaque_existential_0(v350);
}

BOOL sub_2288C72C0(void *a1, uint64_t *a2)
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

uint64_t sub_2288C7354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22892F0C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2288C73C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2288C7408()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7444()
{
  v1 = sub_22892EA08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2288C751C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2288C752C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7570()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2288C75A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C75E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22892DF58();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2288C7700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2288E22C4(0, qword_2813DF3D0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22892DF58();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2288C782C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7864()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C789C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C78D4()
{
  MEMORY[0x22AAC4870](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C790C()
{
  v1 = sub_22892E048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2288C79CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2288C7A1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2288C7A78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2288C7AC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7AFC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2288C7B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892E5A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22892EB18();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 60);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288C7C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22892E5A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22892EB18();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 60);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2288C7D8C()
{
  MEMORY[0x22AAC4870](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7DC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7DFC(uint64_t a1, uint64_t a2)
{
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288C7E84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2288C7F24()
{
  MEMORY[0x22AAC4870](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7F5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C7F94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C7FCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C800C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C8044()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_2288C8088(void *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2288C8098()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2288C80D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_228915874(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2288C81C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892EFA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_228915874(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2288C82CC(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2288C8368(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2288C840C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2288C8444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2288C850C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2288C85C4(uint64_t a1, uint64_t a2)
{
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288C8660(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2288C8710()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2288C8760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22892DEF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2288C8850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892EFA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22892DEF8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2288C894C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22892EFA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2288C89B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22892EFA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2288C8A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892EFA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22892DEF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2288C8B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22892EFA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22892DEF8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

id sub_2288C8C14(uint64_t a1, id a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = [a2 dataCount];
  if (!v10)
  {
    v11 = 0;
    goto LABEL_5;
  }

  if (v10 >= a5)
  {
    if (a4)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v13 = [a2 averageQuantity];
          v11 = v13;
          if (v13)
          {
            v14 = [v13 _unit];
            [v11 _baselineRelativeDoubleValueForUnit_];
            v16 = v15;

            if (v16 == -1.79769313e308)
            {

              v11 = 0;
              v12 = MEMORY[0x277D0FF68];
              goto LABEL_17;
            }

            if (v16 == 1.79769313e308)
            {

              v11 = 0;
              v12 = MEMORY[0x277D0FF60];
              goto LABEL_17;
            }

LABEL_16:
            v12 = MEMORY[0x277D0FF78];
            goto LABEL_17;
          }

LABEL_5:
          v12 = MEMORY[0x277D0FF70];
          goto LABEL_17;
        }

        v17 = [a2 maximumQuantity];
      }

      else
      {
        v17 = [a2 averageQuantity];
      }
    }

    else
    {
      v17 = [a2 percentileQuantity];
    }

    v11 = v17;
    goto LABEL_16;
  }

  v11 = 0;
  v12 = MEMORY[0x277D0FF58];
LABEL_17:
  v18 = *v12;
  v19 = sub_22892E538();
  (*(*(v19 - 8) + 104))(a1, v18, v19);
  return v11;
}

uint64_t sub_2288C8DE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v91 = a4;
  v88 = a2;
  v89 = a3;
  v93 = a7;
  sub_2288BBEF4(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = &v74 - v11;
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v79 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v74 - v16;
  MEMORY[0x28223BE20](v15);
  v80 = &v74 - v17;
  v18 = sub_22892E048();
  v86 = *(v18 - 8);
  v87 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v77 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v82 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v78 = &v74 - v23;
  v84 = sub_22892EFA8();
  v24 = *(v84 - 8);
  v25 = MEMORY[0x28223BE20](v84);
  v75 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v81 = &v74 - v28;
  MEMORY[0x28223BE20](v27);
  v76 = &v74 - v29;
  sub_2288CA7EC(0);
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22892E538();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v74 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v90 = &v74 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v74 - v40;
  v42 = a5 & 1;
  v43 = a1;
  v44 = sub_2288C8C14(&v74 - v40, a1, v91, v42, a6);
  v45 = *(v31 + 56);
  v46 = *(v35 + 32);
  v46(&v33[v45], v41, v34);
  v85 = v35;
  v47 = *(v35 + 88);
  v91 = v34;
  v48 = v47(&v33[v45], v34);
  if (v48 == *MEMORY[0x277D0FF60])
  {
    v49 = v48;

    (*(v24 + 16))(v81, v88, v84);
    (*(v86 + 16))(v82, v89, v87);
    v50 = [v43 mostRecentQuantityDateInterval];
    if (v50)
    {
      v51 = v83;
      v52 = v50;
      sub_22892DD68();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v51 = v83;
    }

    v70 = sub_22892DDC8();
    (*(*(v70 - 8) + 56))(v51, v53, 1, v70);
    v71 = sub_22892DEF8();
    (*(*(v71 - 8) + 56))(v92, 1, 1, v71);
    (*(v85 + 104))(v90, v49, v91);
  }

  else
  {
    v83 = v44;
    v54 = v84;
    v55 = v86;
    v56 = v88;
    if (v48 != *MEMORY[0x277D0FF78])
    {

      v63 = &v33[v45];
      v64 = v90;
      v65 = v91;
      v46(v90, v63, v91);
      (*(v24 + 16))(v75, v56, v54);
      (*(v55 + 16))(v77, v89, v87);
      v66 = sub_22892DDC8();
      (*(*(v66 - 8) + 56))(v79, 1, 1, v66);
      v67 = sub_22892DEF8();
      (*(*(v67 - 8) + 56))(v92, 1, 1, v67);
      v68 = v85;
      (*(v85 + 16))(v74, v64, v65);
      sub_22892E568();
      return (*(v68 + 8))(v64, v65);
    }

    v57 = v43;
    v58 = v48;
    (*(v24 + 16))(v76, v88, v84);
    (*(v55 + 16))(v78, v89, v87);
    v59 = [v57 mostRecentQuantityDateInterval];
    if (v59)
    {
      v60 = v80;
      v61 = v59;
      sub_22892DD68();

      v62 = 0;
    }

    else
    {
      v62 = 1;
      v60 = v80;
    }

    v72 = sub_22892DDC8();
    (*(*(v72 - 8) + 56))(v60, v62, 1, v72);
    v73 = sub_22892DEF8();
    (*(*(v73 - 8) + 56))(v92, 1, 1, v73);
    (*(v85 + 104))(v90, v58, v91);
  }

  return sub_22892E568();
}

uint64_t sub_2288C9660(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
  return sub_22892F468() & 1;
}

id sub_2288C96D0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_22892DDC8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    return sub_2288DADC0(a1, a2, a3);
  }

  else
  {
    sub_2288CACFC(0, &qword_2813DE960, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228930AF0;
    *(inited + 32) = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    sub_2289174BC(v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      sub_2288CA8C4(v10);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_228930B00;
      *(v17 + 32) = HDSampleEntityPredicateForDataType();
      v18 = sub_22892DD58();
      v19 = HDSampleEntityPredicateForDateInterval();

      *(v17 + 40) = v19;
      v23 = v17;
      sub_228904978(inited);
      sub_228901F80(v23);

      v20 = sub_22892F208();

      v21 = [objc_opt_self() predicateMatchingAllPredicates_];

      v22 = [objc_allocWithZone(MEMORY[0x277D108A0]) initForProfile:a3 quantityType:a2 predicate:v21 restrictedSourceEntities:0];
      (*(v12 + 8))(v14, v11);
      return v22;
    }
  }
}

void sub_2288C9A18(uint64_t a1@<X8>)
{
  v41 = a1;
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892E538();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BBEF4(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_22892E048();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892EFA8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator);
  v38 = v19;
  if (v20)
  {
    v36 = v15;
    v37 = v5;
    v43[0] = 0;
    v21 = v20;
    if ([v21 queryForInitialStatisticsWithError_])
    {
      v22 = v43[0];
      v23 = [v21 currentStatistics];
      if (v23)
      {
        v24 = v23;
        sub_2288C8DE0(v23, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder), *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder + 8), *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder + 16), v41);
      }

      else
      {
        (*(v17 + 16))(v38, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v16);
        (*(v13 + 16))(v36, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v12);
        v33 = sub_22892DDC8();
        (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
        v34 = sub_22892DEF8();
        (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
        (*(v40 + 104))(v37, *MEMORY[0x277D0FF70], v39);
        sub_22892E568();
      }
    }

    else
    {
      v27 = v43[0];
      v28 = sub_22892DE38();

      swift_willThrow();
      v43[0] = v28;
      v29 = v28;
      sub_2288CA734();
      sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
      if (swift_dynamicCast())
      {

        v30 = v42;
        v31 = [v42 hk_isDatabaseAccessibilityError];
        sub_2288CA798();
        swift_allocError();
        *v32 = v30;
        *(v32 + 8) = v31;
        swift_willThrow();
      }
    }
  }

  else
  {
    (*(v17 + 16))(v19, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v16);
    (*(v13 + 16))(v15, v1 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v12);
    v25 = sub_22892DDC8();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    v26 = sub_22892DEF8();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    (*(v40 + 104))(v5, *MEMORY[0x277D0FF70], v39);
    sub_22892E568();
  }
}

uint64_t sub_2288CA04C()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar;
  v4 = sub_22892E048();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingSampleAggregator(uint64_t a1)
{
  result = qword_2813DFA08;
  if (!qword_2813DFA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288CA1AC(uint64_t a1)
{
  result = sub_22892EFA8();
  if (v2 <= 0x3F)
  {
    result = sub_22892E048();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleAggregateBuilder(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepingSampleAggregateBuilder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2288CA32C(uint64_t a1, id *a2)
{
  result = sub_22892F0A8();
  *a2 = 0;
  return result;
}

uint64_t sub_2288CA3A4(uint64_t a1, id *a2)
{
  v3 = sub_22892F0B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2288CA424@<X0>(uint64_t *a2@<X8>)
{
  sub_22892F0C8();
  v3 = sub_22892F098();

  *a2 = v3;
  return result;
}

void *sub_2288CA490@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2288CA4BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2288CA558()
{
  v0 = sub_22892F0C8();
  v1 = MEMORY[0x22AAC37E0](v0);

  return v1;
}

uint64_t sub_2288CA594(uint64_t a1)
{
  sub_22892F0C8();
  sub_22892F0F8();
}

uint64_t sub_2288CA5E8(uint64_t a1)
{
  sub_22892F0C8();
  sub_22892F8A8();
  sub_22892F0F8();
  v1 = sub_22892F8C8();

  return v1;
}

uint64_t sub_2288CA65C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2288CB2A0(a1);

  *a2 = v3;
  return result;
}

void *sub_2288CA69C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2288CA6AC(void *a1, uint64_t *a2)
{
  v2 = sub_22892F0C8();
  v4 = v3;
  if (v2 == sub_22892F0C8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22892F818();
  }

  return v7 & 1;
}

unint64_t sub_2288CA734()
{
  result = qword_2813DE940;
  if (!qword_2813DE940)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DE940);
  }

  return result;
}

unint64_t sub_2288CA798()
{
  result = qword_27D85B0A0;
  if (!qword_27D85B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85B0A0);
  }

  return result;
}

void sub_2288CA7EC(uint64_t a1)
{
  if (!qword_2813DEC88)
  {
    sub_2288CA85C(255);
    sub_22892E538();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEC88);
    }
  }
}

void sub_2288CA85C(uint64_t a1)
{
  if (!qword_2813DEC90)
  {
    sub_2288BC0FC(255, &unk_2813DEC98, 0x277CCD7E8);
    v1 = sub_22892F498();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEC90);
    }
  }
}

uint64_t sub_2288CA8C4(uint64_t a1)
{
  sub_2288BBEF4(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288CA93C(uint64_t a1)
{
  v2 = sub_2288CAF40(&qword_27D85B150, type metadata accessor for HKFeatureIdentifier, &unk_228931330);
  v3 = sub_2288CAF40(&qword_27D85B158, type metadata accessor for HKFeatureIdentifier, &unk_228930E1C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2288CA9F8(uint64_t a1)
{
  v2 = sub_2288CAF40(&qword_2813DEBE0, type metadata accessor for HKFeatureAvailabilityContext, &unk_22893126C);
  v3 = sub_2288CAF40(&qword_27D85B138, type metadata accessor for HKFeatureAvailabilityContext, &unk_2289311CC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2288CAAB4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22892F098();

  *a2 = v3;
  return result;
}

uint64_t sub_2288CAAFC(uint64_t a1)
{
  v2 = sub_2288CAF40(&qword_27D85B140, type metadata accessor for NSKeyValueChangeKey, &unk_2289312AC);
  v3 = sub_2288CAF40(&qword_27D85B148, type metadata accessor for NSKeyValueChangeKey, &unk_2289310C0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2288CABEC(uint64_t a1, int a2)
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

uint64_t sub_2288CAC0C(uint64_t result, int a2, int a3)
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

void sub_2288CACFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2288CAD6C(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2288CADB4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleAggregateBuilder.CalculationMethod(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepingSampleAggregateBuilder.CalculationMethod(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2288CAE64(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2288CAE80(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2288CAF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288CB2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_2288CB328(char *a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = sub_22892EA08();
  v72 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v66 = &v62 - v5;
  v6 = sub_22892EDE8();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v62 - v9;
  v10 = sub_22892DEF8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22892E358();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E348();
  sub_22892E328();
  v19 = v18;
  (*(v15 + 8))(v17, v14);
  if (v19)
  {
    v67 = a1;
    v20 = v72;
    v63 = v2;
    sub_22892DEA8();
    v21 = objc_allocWithZone(MEMORY[0x277CCD6C0]);
    v22 = sub_22892F098();

    v23 = sub_22892DE58();
    v24 = [v21 initWithAction:3 categoryIdentifier:v22 expirationDate:v23];

    (*(v11 + 8))(v13, v10);
    v73[0] = 0;
    if ([v69 sendNotificationInstruction:v24 criteria:0 error:v73])
    {
      v25 = v73[0];
    }

    else
    {
      v41 = v73[0];
      v42 = sub_22892DE38();

      swift_willThrow();
      v43 = v68;
      sub_22892EDC8();
      v44 = v63;
      v45 = v64;
      (*(v20 + 16))(v64, v67, v63);
      v46 = v42;
      v47 = sub_22892EDD8();
      v48 = sub_22892F378();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = v20;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v73[0] = v52;
        *v50 = 136446722;
        v53 = sub_22892F948();
        v55 = sub_2288B748C(v53, v54, v73);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        v56 = sub_22892E998();
        v58 = v57;
        (*(v49 + 8))(v45, v63);
        v59 = sub_2288B748C(v56, v58, v73);

        *(v50 + 14) = v59;
        *(v50 + 22) = 2114;
        v60 = v42;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 24) = v61;
        *v51 = v61;
        _os_log_impl(&dword_2288B2000, v47, v48, "[%{public}s] Error issuing send instruction for vitals outliers notification (%s): %{public}@", v50, 0x20u);
        sub_2288CD0A4(v51, &qword_2813DEB20, sub_2288CD058);
        MEMORY[0x22AAC47E0](v51, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v52, -1, -1);
        MEMORY[0x22AAC47E0](v50, -1, -1);

        (*(v70 + 8))(v68, v71);
      }

      else
      {

        (*(v20 + 8))(v45, v44);
        (*(v70 + 8))(v43, v71);
      }
    }
  }

  else
  {
    v26 = v67;
    sub_22892EDC8();
    v27 = v72;
    v28 = v66;
    (*(v72 + 16))(v66, a1, v2);
    v29 = sub_22892EDD8();
    v30 = sub_22892F378();
    v31 = v27;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v73[0] = v33;
      *v32 = 136446466;
      v34 = sub_22892F948();
      v36 = sub_2288B748C(v34, v35, v73);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v37 = sub_22892E998();
      v39 = v38;
      (*(v31 + 8))(v28, v2);
      v40 = sub_2288B748C(v37, v39, v73);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_2288B2000, v29, v30, "[%{public}s] Failed to encode notification: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v33, -1, -1);
      MEMORY[0x22AAC47E0](v32, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v28, v2);
    }

    (*(v70 + 8))(v26, v71);
  }
}

void sub_2288CBAB4(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v46[1] = swift_getObjectType();
  v2 = sub_22892EDE8();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892DEF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EA08();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v46 - v12;
  sub_2288CD190(0, &qword_27D85B340, type metadata accessor for VitalsOutlierNotificationHoldIdentifier);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v46 - v15;
  v49 = v9;
  v50 = v8;
  v17 = *(v9 + 16);
  v47 = a1;
  v17(v13, a1, v8);
  sub_228926A5C(v13, v16);
  v18 = type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0);
  if ((*(*(v18 - 8) + 48))(v16, 1, v18) == 1)
  {
    sub_2288CD0A4(v16, &qword_27D85B340, type metadata accessor for VitalsOutlierNotificationHoldIdentifier);
  }

  else
  {
    v46[0] = v2;
    sub_228926E04();
    sub_2288CD100(v16);
    sub_22892DEA8();
    v19 = objc_allocWithZone(MEMORY[0x277CCD6C0]);
    v20 = sub_22892F098();

    v21 = sub_22892DE58();
    v22 = [v19 initWithAction:2 categoryIdentifier:v20 expirationDate:v21];

    (*(v5 + 8))(v7, v4);
    v54[0] = 0;
    if ([v53 sendNotificationInstruction:v22 criteria:0 error:v54])
    {
      v23 = v54[0];
    }

    else
    {
      v24 = v54[0];
      v25 = sub_22892DE38();

      swift_willThrow();
      v26 = v51;
      sub_22892EDC8();
      v27 = v48;
      v28 = v50;
      v17(v48, v47, v50);
      v29 = v25;
      v30 = sub_22892EDD8();
      v31 = sub_22892F378();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = v27;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54[0] = v53;
        *v33 = 136446722;
        v35 = sub_22892F948();
        v36 = v28;
        v38 = sub_2288B748C(v35, v37, v54);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2080;
        v39 = sub_22892E998();
        v41 = v40;
        (*(v49 + 8))(v32, v36);
        v42 = sub_2288B748C(v39, v41, v54);

        *(v33 + 14) = v42;
        *(v33 + 22) = 2114;
        v43 = v25;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 24) = v44;
        *v34 = v44;
        _os_log_impl(&dword_2288B2000, v30, v31, "[%{public}s] Error issuing hold instruction for vitals outliers notification (%s): %{public}@", v33, 0x20u);
        sub_2288CD0A4(v34, &qword_2813DEB20, sub_2288CD058);
        MEMORY[0x22AAC47E0](v34, -1, -1);
        v45 = v53;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v45, -1, -1);
        MEMORY[0x22AAC47E0](v33, -1, -1);
      }

      else
      {

        (*(v49 + 8))(v27, v28);
      }

      (*(v52 + 8))(v26, v46[0]);
    }
  }
}

void sub_2288CC0E0(uint64_t a1)
{
  v2 = v1;
  v41[2] = *MEMORY[0x277D85DE8];
  v34[1] = swift_getObjectType();
  v4 = sub_22892EFA8();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892EDE8();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892DEF8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[0] = 0x6F63737065656C73;
  v41[1] = 0xEB000000002E6572;
  v40 = sub_22892EF68();
  v13 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v13);

  sub_22892DEA8();
  v14 = objc_allocWithZone(MEMORY[0x277CCD6C0]);
  v15 = sub_22892F098();

  v16 = sub_22892DE58();
  v17 = [v14 initWithAction:2 categoryIdentifier:v15 expirationDate:v16];

  (*(v10 + 8))(v12, v9);
  v41[0] = 0;
  if ([v2 sendNotificationInstruction:v17 criteria:0 error:v41])
  {
    v18 = v41[0];
  }

  else
  {
    v19 = v41[0];
    v20 = sub_22892DE38();

    swift_willThrow();
    v21 = v35;
    sub_22892EDC8();
    (*(v38 + 16))(v6, a1, v39);
    v22 = v20;
    v23 = sub_22892EDD8();
    v24 = sub_22892F378();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v25 = 136446722;
      v28 = sub_22892F948();
      v30 = sub_2288B748C(v28, v29, v41);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = sub_22892EF68();
      (*(v38 + 8))(v6, v39);
      *(v25 + 14) = v31;
      *(v25 + 22) = 2114;
      v32 = v20;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v33;
      *v26 = v33;
      _os_log_impl(&dword_2288B2000, v23, v24, "[%{public}s] Error sending hold instruction for sleep score notification on %ld: %{public}@", v25, 0x20u);
      sub_2288CD0A4(v26, &qword_2813DEB20, sub_2288CD058);
      MEMORY[0x22AAC47E0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAC47E0](v27, -1, -1);
      MEMORY[0x22AAC47E0](v25, -1, -1);
    }

    else
    {
      (*(v38 + 8))(v6, v39);
    }

    (*(v36 + 8))(v21, v37);
  }
}

uint64_t sub_2288CC5E4()
{
  v1 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = 0;
  v6 = [v1 notificationHoldInstructionsWithError_];
  v7 = v22[0];
  if (v6)
  {
    v8 = v6;
    v9 = sub_22892F2A8();
    v10 = v7;
  }

  else
  {
    v11 = v22[0];
    v12 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v13 = sub_22892EDD8();
    v14 = sub_22892F378();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136446210;
      v17 = sub_22892F948();
      v19 = sub_2288B748C(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s] Error reading hold instructions; assuming we have no holds", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AAC47E0](v16, -1, -1);
      MEMORY[0x22AAC47E0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return MEMORY[0x277D84FA0];
  }

  return v9;
}

void *sub_2288CC848(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  sub_2288CD190(0, &unk_27D85B530, MEMORY[0x277D10090]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v40 = sub_22892EA08();
  v9 = MEMORY[0x28223BE20](v40 - 8);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31 = &v31 - v12;
  v32 = v11;
  v13 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 56);
  v17 = (v14 + 63) >> 6;
  v35 = (v11 + 32);
  v36 = (v11 + 48);

  v19 = 0;
  v42 = MEMORY[0x277D84F90];
  v33 = a3;
  if (v16)
  {
LABEL_10:
    while (1)
    {
      v21 = (*(a3 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v16)))));
      v22 = v21[1];
      v41[0] = *v21;
      v41[1] = v22;

      v38(v41);
      if (v4)
      {
        break;
      }

      v16 &= v16 - 1;

      v23 = v40;
      if ((*v36)(v8, 1, v40) == 1)
      {
        result = sub_2288CD0A4(v8, &unk_27D85B530, MEMORY[0x277D10090]);
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v34 = 0;
        v24 = v8;
        v25 = *v35;
        v26 = v31;
        v27 = v24;
        (*v35)(v31);
        (v25)(v37, v26, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2288D62B8(0, v42[2] + 1, 1, v42);
        }

        v29 = v42[2];
        v28 = v42[3];
        v4 = v34;
        if (v29 >= v28 >> 1)
        {
          v42 = sub_2288D62B8((v28 > 1), v29 + 1, 1, v42);
        }

        v30 = v42;
        v42[2] = v29 + 1;
        result = (v25)(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v37, v40);
        a3 = v33;
        v8 = v27;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }

    return v42;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        return v42;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2288CCBE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = sub_22892EFA8();
  v42 = *(v51 - 8);
  v4 = MEMORY[0x28223BE20](v51);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - v6;
  v7 = sub_22892EA08();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = sub_22892E358();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E348();
  v18 = [v2 categoryIdentifiers];
  v19 = sub_22892F2A8();

  v53 = v17;
  v20 = sub_2288CC848(sub_2288CD15C, v52, v19);

  v21 = v17;
  v22 = v20;
  (*(v15 + 8))(v21, v14);
  v23 = v20[2];
  if (v23)
  {
    v24 = *(v8 + 16);
    v46 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v47 = v24;
    v48 = v8 + 16;
    result = (v24)(v13);
    if (v23 == 1)
    {
LABEL_3:

      (*(v8 + 32))(a1, v13, v7);
      return (*(v8 + 56))(a1, 0, 1, v7);
    }

    else
    {
      v26 = (v42 + 8);
      v41 = (v8 + 32);
      v42 = v8 + 8;
      v27 = 1;
      v44 = v22;
      v45 = a1;
      v43 = v23;
      while (v27 < v22[2])
      {
        v47(v11, &v46[*(v8 + 72) * v27], v7);
        v28 = v11;
        v29 = v49;
        v30 = v13;
        sub_22892E9A8();
        v31 = v50;
        sub_22892E9A8();
        v32 = sub_22892EEE8();
        v33 = *v26;
        v34 = v31;
        v35 = v7;
        v36 = v8;
        v37 = v51;
        (*v26)(v34, v51);
        v38 = v37;
        v8 = v36;
        v33(v29, v38);
        v39 = *(v36 + 8);
        if (v32)
        {
          v39(v30, v35);
          result = (*v41)(v30, v28, v35);
        }

        else
        {
          result = (v39)(v28, v35);
        }

        v22 = v44;
        a1 = v45;
        v7 = v35;
        v13 = v30;
        v11 = v28;
        if (v43 == ++v27)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {

    return (*(v8 + 56))(a1, 1, 1, v7);
  }

  return result;
}

unint64_t sub_2288CD058()
{
  result = qword_2813DEB30;
  if (!qword_2813DEB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEB30);
  }

  return result;
}

uint64_t sub_2288CD0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288CD190(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2288CD100(uint64_t a1)
{
  v2 = type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2288CD190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288CD218(uint64_t a1)
{
  sub_22892DEF8();
  if (v1 <= 0x3F)
  {
    sub_2288B5C84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_2288CD2A4(uint64_t a1)
{
  sub_2288CD8F0(0);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892DDC8();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v49 - v7;
  sub_2288B5C84(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = sub_22892DEF8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v50 = &v49 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v53 = &v49 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v49 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v49 - v30;
  v60 = a1;
  sub_2288CD924(a1, MEMORY[0x277D0FF30], v15);
  v32 = *(v17 + 48);
  if (v32(v15, 1, v16) == 1)
  {
    v33 = v59;
    sub_2288CE4B4(v15, sub_2288B5C84);
  }

  else
  {
    (*(v17 + 32))(v31, v15, v16);
    sub_2288CE514();
    v33 = v59;
    v34 = sub_22892F038();
    (*(v17 + 8))(v31, v16);
    if (v34)
    {
      return 1;
    }
  }

  sub_2288CD924(v60, MEMORY[0x277D0FF48], v13);
  if (v32(v13, 1, v16) == 1)
  {
    sub_2288CE4B4(v13, sub_2288B5C84);
  }

  else
  {
    (*(v17 + 32))(v29, v13, v16);
    type metadata accessor for SleepingSampleCacheRange(0);
    sub_22892DE98();
    v35 = sub_22892DE68();
    v36 = *(v17 + 8);
    v36(v26, v16);
    v36(v29, v16);
    if (v35)
    {
      return 1;
    }
  }

  v37 = type metadata accessor for SleepingSampleCacheRange(0);
  v38 = v58;
  sub_2288CE56C(v33 + *(v37 + 20), v58, sub_2288B5C84);
  if (v32(v38, 1, v16) == 1)
  {
    v39 = sub_2288B5C84;
LABEL_11:
    sub_2288CE4B4(v38, v39);
    return 0;
  }

  v40 = v53;
  (*(v17 + 32))(v53, v38, v16);
  v38 = v55;
  sub_2288CDB5C(v60, v55);
  v42 = v56;
  v41 = v57;
  if ((*(v56 + 48))(v38, 1, v57) == 1)
  {
    (*(v17 + 8))(v40, v16);
    v39 = sub_2288CD8F0;
    goto LABEL_11;
  }

  (*(v42 + 32))(v54, v38, v41);
  v44 = *(v17 + 16);
  v44(v50, v33, v16);
  v44(v51, v40, v16);
  v45 = v52;
  sub_22892DD88();
  v46 = v54;
  v47 = sub_22892DD28();
  v48 = *(v42 + 8);
  v48(v45, v41);
  v48(v46, v41);
  (*(v17 + 8))(v40, v16);
  return (v47 & 1) != 0;
}

uint64_t sub_2288CD924@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22892E508();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892DDC8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *a2, v6);
  v14 = sub_22892E4E8();
  (*(v7 + 8))(v9, v6);
  if (*(a1 + 16) && (v15 = sub_22891C6FC(v14), (v16 & 1) != 0))
  {
    (*(v11 + 16))(v13, *(a1 + 56) + *(v11 + 72) * v15, v10);

    sub_22892DD78();
    (*(v11 + 8))(v13, v10);
    v17 = 0;
  }

  else
  {

    v17 = 1;
  }

  v18 = sub_22892DEF8();
  return (*(*(v18 - 8) + 56))(a3, v17, 1, v18);
}

uint64_t sub_2288CDB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_22892DDC8();
  v92 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v84 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v90 = &v76 - v7;
  MEMORY[0x28223BE20](v6);
  v89 = &v76 - v8;
  sub_2288CD8F0(0);
  v80 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v76 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v76 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v82 = &v76 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  v22 = sub_22892E508();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v78 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v76 = &v76 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - v28;
  sub_2288BBF48(0, &qword_2813DEA10, sub_2288CD8F0, MEMORY[0x277D84560]);
  v30 = *(v10 + 72);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v91 = v30;
  v79 = swift_allocObject();
  v83 = v79 + v31;
  v32 = *(v23 + 104);
  v32(v29, *MEMORY[0x277D0FF50], v22);
  v33 = sub_22892E4E8();
  v94 = *(v23 + 8);
  v85 = (v23 + 8);
  (v94)(v29, v22);
  if (*(a1 + 16))
  {
    v34 = sub_22891C6FC(v33);
    if (v35)
    {
      (*(v92 + 16))(v83, *(a1 + 56) + *(v92 + 72) * v34, v3);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v36 = 1;
  }

  v37 = 1;
  v87 = *(v92 + 56);
  v88 = v92 + 56;
  v87(v83, v36, 1, v3);

  v38 = v76;
  v32(v76, *MEMORY[0x277D0FF38], v22);
  v39 = sub_22892E4E8();
  (v94)(v38, v22);
  v40 = *(a1 + 16);
  v77 = a1;
  if (v40)
  {
    v41 = a1;
    v42 = v39;
    v43 = sub_22891C6FC(v39);
    if (v44)
    {
      (*(v92 + 16))(&v91[v83], *(v41 + 56) + *(v92 + 72) * v43, v3);
      v37 = 0;
    }
  }

  else
  {
    v42 = v39;
  }

  v45 = v91;
  v46 = v83;
  v87(&v91[v83], v37, 1, v3);

  v47 = v46 + 2 * v45;
  v48 = v78;
  v32(v78, *MEMORY[0x277D0FF40], v22);
  v49 = sub_22892E4E8();
  (v94)(v48, v22);
  v50 = v77;
  if (!*(v77 + 16))
  {
    v52 = v93;
    goto LABEL_14;
  }

  v51 = sub_22891C6FC(v49);
  v52 = v93;
  if ((v53 & 1) == 0)
  {
LABEL_14:
    v54 = 1;
    goto LABEL_15;
  }

  (*(v92 + 16))(v47, *(v50 + 56) + *(v92 + 72) * v51, v3);
  v54 = 0;
LABEL_15:
  v87(v47, v54, 1, v3);

  v94 = (v92 + 48);
  v55 = (v92 + 32);
  v56 = MEMORY[0x277D84F90];
  v57 = 3;
  v58 = v83;
  v85 = v17;
  do
  {
    sub_2288CE56C(v58, v21, sub_2288CD8F0);
    sub_2288CE5D4(v21, v17);
    v59 = *v94;
    if ((*v94)(v17, 1, v3) == 1)
    {
      sub_2288CE4B4(v17, sub_2288CD8F0);
    }

    else
    {
      v60 = v21;
      v61 = *v55;
      (*v55)(v90, v17, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_2288D62E4(0, *(v56 + 2) + 1, 1, v56);
      }

      v63 = *(v56 + 2);
      v62 = *(v56 + 3);
      if (v63 >= v62 >> 1)
      {
        v56 = sub_2288D62E4((v62 > 1), v63 + 1, 1, v56);
      }

      *(v56 + 2) = v63 + 1;
      v61(&v56[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v63], v90, v3);
      v52 = v93;
      v17 = v85;
      v21 = v60;
    }

    v58 += v91;
    --v57;
  }

  while (v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v64 = v82;
  v87(v82, 1, 1, v3);
  v65 = v81;
  sub_2288CE56C(v64, v81, sub_2288CD8F0);
  v66 = *(v56 + 2);
  if (v66)
  {
    v67 = *(v92 + 16);
    v68 = &v56[(*(v92 + 80) + 32) & ~*(v92 + 80)];
    v90 = *(v92 + 72);
    v91 = v67;
    v92 += 16;
    v85 = (v92 - 8);
    (v67)(v89, v68, v3);
    while (1)
    {
      sub_2288CE56C(v65, v52, sub_2288CD8F0);
      if (v59(v52, 1, v3) == 1)
      {
        sub_2288CE4B4(v65, sub_2288CD8F0);
        v69 = v89;
        sub_2288CE4B4(v52, sub_2288CD8F0);
        v70 = v69;
      }

      else
      {
        v73 = v84;
        sub_22892DDB8();
        sub_2288CE4B4(v65, sub_2288CD8F0);
        v74 = *v85;
        (*v85)(v93, v3);
        v74(v89, v3);
        v69 = v89;
        v70 = v73;
        v52 = v93;
      }

      v71 = v3;
      v72 = v86;
      (*v55)(v86, v70, v71);
      v87(v72, 0, 1, v71);
      sub_2288CE5D4(v72, v65);
      v68 = &v90[v68];
      --v66;
      v3 = v71;
      if (!v66)
      {
        break;
      }

      (v91)(v69, v68, v71);
    }
  }

  return sub_2288CE4B4(v82, sub_2288CD8F0);
}

uint64_t sub_2288CE4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2288CE514()
{
  result = qword_2813DFEE8;
  if (!qword_2813DFEE8)
  {
    sub_22892DEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DFEE8);
  }

  return result;
}

uint64_t sub_2288CE56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288CE5D4(uint64_t a1, uint64_t a2)
{
  sub_2288CD8F0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288CE64C()
{
  v1 = *v0;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v1);
  return sub_22892F8C8();
}

uint64_t sub_2288CE6C0(uint64_t a1)
{
  v2 = *v1;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v2);
  return sub_22892F8C8();
}

void *sub_2288CE74C(void *a1)
{
  v188[55] = *MEMORY[0x277D85DE8];
  v3 = sub_22892E778();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288BB4E0(0);
  v168 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v160 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v157 = &v131 - v9;
  sub_2288B5D1C(0);
  v156 = v10;
  MEMORY[0x28223BE20](v10);
  v167 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892E478();
  v161 = *(v12 - 8);
  v162 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v158 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v159 = &v131 - v15;
  sub_2288BBFAC(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v16 - 8);
  v163 = &v131 - v17;
  v18 = sub_22892DEF8();
  v19 = *(v18 - 8);
  v169 = v18;
  v170 = v19;
  MEMORY[0x28223BE20](v18);
  v175 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22892EFA8();
  v173 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v164 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v166 = &v131 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v165 = &v131 - v27;
  MEMORY[0x28223BE20](v26);
  v174 = &v131 - v28;
  v29 = sub_22892E048();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v172 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v131 - v33;
  v35 = [a1 healthDataSource];
  if (!v35)
  {
    v60 = sub_22892E368();
    sub_2288D3E28(&qword_27D85B3D0, MEMORY[0x277D0FE20], MEMORY[0x277D0FE28]);
    swift_allocError();
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D0FE18], v60);
    swift_willThrow();
    return v5;
  }

  v176 = v35;
  v153 = v30;
  v154 = v34;
  v155 = v29;
  v36 = [a1 healthDataSource];
  if (!v36 || (v37 = [v36 featureStatusProviderForIdentifier_], swift_unknownObjectRelease(), !v37))
  {
    sub_2288D1A9C();
    swift_allocError();
    *v59 = 4;
LABEL_12:
    swift_willThrow();
    swift_unknownObjectRelease();
    return v5;
  }

  v150 = v5;
  v151 = v21;
  v179[0] = 0;
  v5 = [v37 featureStatusWithError_];
  swift_unknownObjectRelease();
  v152 = v5;
  if (!v5)
  {
    v64 = v179[0];
    sub_22892DE38();

    goto LABEL_12;
  }

  v38 = v179[0];
  v39 = [a1 healthDataSource];
  if (!v39 || (v40 = [v39 featureStatusProviderForIdentifier_], swift_unknownObjectRelease(), !v40))
  {
    sub_2288D1A9C();
    swift_allocError();
    *v62 = 3;
LABEL_15:
    swift_willThrow();
    swift_unknownObjectRelease();

    return v5;
  }

  v179[0] = 0;
  v5 = [v40 featureStatusWithError_];
  swift_unknownObjectRelease();
  v41 = v179[0];
  if (!v5)
  {
    v65 = v179[0];
    sub_22892DE38();

    goto LABEL_15;
  }

  v42 = v1[3];
  if (v42)
  {
    v148 = v5;
    v43 = v179[0];
    v149 = v42;
    v44 = [a1 environmentDataSource];
    v45 = [v44 calendarCache];

    v46 = [v45 currentCalendar];
    v47 = v154;
    sub_22892E018();

    v48 = [a1 environmentDataSource];
    v49 = [v48 currentDate];

    v5 = v175;
    sub_22892DEC8();

    v50 = v153;
    v51 = v153 + 16;
    v52 = *(v153 + 16);
    v52(v172, v47, v155);
    v53 = v174;
    sub_22892EF48();
    v147 = v1;
    v54 = v171;
    v55 = sub_2288CF9F4();
    if (v54)
    {
      swift_unknownObjectRelease();

      (*(v173 + 1))(v53, v151);
      (*(v50 + 8))(v154, v155);
    }

    else
    {
      v139 = v52;
      v140 = v51;
      v136 = v55;
      v144 = v56;
      v145 = v58;
      v171 = v57;
      v68 = [a1 environmentDataSource];
      v69 = [v68 activePairedDeviceProductType];

      v70 = v151;
      if (v69)
      {
        v143 = sub_22892F0C8();
        v146 = v71;
      }

      else
      {
        v143 = 0;
        v146 = 0;
      }

      v72 = v175;
      v73 = v169;
      v74 = [a1 environmentDataSource];
      v75 = [v74 currentDate];

      sub_22892DEC8();
      v76 = sub_22892DE58();
      v137 = *(v170 + 1);
      v138 = v170 + 8;
      v137(v72, v73);
      v179[0] = 0;
      v77 = [v176 ageWithCurrentDate:v76 error:v179];

      v142 = v77;
      if (v77)
      {
        v78 = v179[0];
        v141 = [v77 integerValue];
      }

      else
      {
        v79 = v179[0];
        v80 = sub_22892DE38();

        swift_willThrow();
        v141 = 0;
      }

      v5 = v147;
      v179[0] = 0;
      v81 = [v176 biologicalSexWithError_];
      if (v81)
      {
        v82 = v81;
        v83 = v179[0];
        v84 = HKAnalyticsPropertyValueForBiologicalSex();

        v135 = sub_22892F0C8();
        v169 = v85;

        v86 = [a1 environmentDataSource];
        v134 = [v86 isImproveHealthAndActivityEnabled];

        if (v171)
        {
          v133 = [v171 sleepTracking];
        }

        else
        {
          v133 = 2;
        }

        v88 = v5[2];
        v89 = sub_2288CFB2C(v88);
        v90 = [a1 environmentDataSource];
        v91 = v163;
        v132 = v147[6];
        sub_22892E248();
        if ((*(v170 + 6))(v91, 1, v73) == 1)
        {
          v92 = 0;
        }

        else
        {
          v92 = sub_22892DE58();
          v137(v91, v73);
        }

        v93 = v165;
        v94 = [v90 bucketedNumberOfWeeksSinceDate_];

        v95 = v147;
        if (v94)
        {
          v96 = [v94 integerValue];
        }

        else
        {
          v96 = 0;
        }

        *&v180 = v143;
        *(&v180 + 1) = v146;
        *&v181 = v141;
        BYTE8(v181) = v142 == 0;
        *&v182 = v135;
        *(&v182 + 1) = v169;
        LOBYTE(v183[0]) = v134;
        BYTE1(v183[0]) = v133;
        *(&v183[0] + 1) = v89;
        *&v183[1] = v96;
        BYTE8(v183[1]) = v94 == 0;
        v97 = v181;
        v98 = v182;
        v186[2] = v182;
        v187[0] = v183[0];
        v99 = v180;
        v186[0] = v180;
        v186[1] = v181;
        *(v187 + 9) = *(v183 + 9);
        *(v185 + 9) = *(v95 + 121);
        v100 = v95[7];
        v184[2] = v95[6];
        v185[0] = v100;
        v101 = v95[5];
        v184[0] = v95[4];
        v184[1] = v101;
        *(v95 + 121) = *(v183 + 9);
        v102 = v183[0];
        v95[6] = v98;
        v95[7] = v102;
        v95[4] = v99;
        v95[5] = v97;
        sub_2288D1AF0(&v180, v179);
        sub_2288D3FEC(v184, sub_2288D1B4C);
        v165 = v88;
        v103 = v166;
        sub_22892EED8();
        sub_22892EF18();
        v104 = v173 + 8;
        v105 = *(v173 + 1);
        v106 = v151;
        v105(v103, v151);
        v107 = v164;
        sub_22892EED8();
        sub_22892EF18();
        v169 = v105;
        v170 = v104;
        v105(v107, v106);
        sub_2288D3E28(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
        if ((sub_22892F048() & 1) == 0)
        {
          __break(1u);
        }

        v108 = *(v173 + 4);
        v109 = v157;
        v108(v157, v93, v106);
        v110 = v168;
        v108((v109 + *(v168 + 48)), v103, v106);
        v173 = sub_2288BB4E0;
        v111 = v160;
        sub_2288D3F1C(v109, v160, sub_2288BB4E0);
        v112 = *(v110 + 48);
        v108(v167, v111, v106);
        v113 = v169;
        v169(v111 + v112, v106);
        sub_2288D3F84(v109, v111, v173);
        v108(&v167[*(v156 + 36)], (v111 + *(v168 + 48)), v106);
        v113(v111, v106);
        v139(v172, v154, v155);
        v114 = v159;
        sub_22892E428();
        v116 = v161;
        v115 = v162;
        (*(v161 + 16))(v158, v114, v162);
        sub_22892E738();
        v117 = v150;
        sub_22892E6F8();
        v118 = v175;
        sub_22892DED8();
        v119 = sub_2288B7B40(v165, v117, v118);
        (*(v116 + 8))(v114, v115);
        sub_228909BAC(v188);
        v120 = v147;

        sub_2288CFE74(v188, v119, v120, v179);
        memcpy(__src, v179, sizeof(__src));
        memcpy(v178, v179, sizeof(v178));
        nullsub_1();
        memcpy(v120 + 18, v178, 0x1B8uLL);
        v121 = v120[5];
        LODWORD(v112) = HKIsFitnessTrackingEnabled();
        LOBYTE(v118) = [objc_opt_self() isWristDetectEnabled];
        v122 = v120[4];
        v123 = [v149 areHealthNotificationsAuthorized];
        v124 = v148;
        v130 = v118;
        v125 = v121;
        v127 = v144;
        v126 = v145;
        v128 = v171;
        v129 = sub_2288D1D64(v186, v132, v125, v136 & 1, v144, v171, v145, v112, v130, v148, v152, v122, v123, __src);
        sub_2288D3E70(&v180);
        v5 = sub_2288DB7D0(v129);
        swift_unknownObjectRelease();

        v169(v174, v151);
        (*(v153 + 8))(v154, v155);
      }

      else
      {
        v87 = v179[0];

        sub_22892DE38();

        swift_willThrow();
        swift_unknownObjectRelease();

        (*(v173 + 1))(v174, v70);
        (*(v153 + 8))(v154, v155);
      }
    }
  }

  else
  {
    sub_2288D1A9C();
    swift_allocError();
    *v66 = 1;
    swift_willThrow();
    v67 = v41;
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_2288CF9F4()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [v0 sleepScheduleModelWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v5[0];
    LOBYTE(v0) = [v0 hasSleepFocusMode];
    [v2 sleepEventRecord];
    [v2 sleepSettings];
    [v2 sleepSchedule];
  }

  else
  {
    v0 = v5[0];
    sub_22892DE38();

    swift_willThrow();
  }

  return v0 & 1;
}

id sub_2288CFB2C(uint64_t a1)
{
  v26[2] = a1;
  v29 = *MEMORY[0x277D85DE8];
  v27 = sub_22892E048();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892DEF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 environmentDataSource];
  v10 = [v9 currentDate];

  sub_22892DEC8();
  v11 = [v1 environmentDataSource];
  v12 = [v11 calendarCache];

  v13 = [v12 currentCalendar];
  sub_22892E018();

  v14 = sub_22892DE58();
  v15 = sub_22892DFF8();
  v28 = 0;
  v16 = HDAnalyticsCountOfSleepDaysWithStandHoursPriorToDate();

  v17 = v28;
  if (v16)
  {
    v18 = v28;
    v19 = [v16 integerValue];

    (*(v2 + 8))(v4, v27);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v20 = v5;
    v21 = v27;
    if (v28)
    {
      v22 = v28;
    }

    else
    {
      v23 = [objc_opt_self() hk:0 error:0 userInfo:?];
    }

    swift_willThrow();
    v24 = *(v2 + 8);
    v19 = v17;
    v24(v4, v21);
    (*(v6 + 8))(v8, v20);
  }

  return v19;
}

void *sub_2288CFE74@<X0>(const void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v122 = a4;
  v133 = a3;
  v169 = a1;
  v5 = MEMORY[0x277D0FFC8];
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v160 = v6;
  v166 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v131 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v132 = &v122 - v9;
  sub_2288B5D1C(0);
  v156 = v10;
  MEMORY[0x28223BE20](v10);
  v155 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22892E478();
  v167 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_22892EFA8();
  v161 = *(v159 - 8);
  v13 = MEMORY[0x28223BE20](v159);
  v152 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v151 = &v122 - v15;
  v129 = sub_22892EA78();
  v150 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BBFAC(0, &unk_2813DEDE0, MEMORY[0x277CCB6A8]);
  MEMORY[0x28223BE20](v17 - 8);
  v138 = &v122 - v18;
  v19 = MEMORY[0x277D100B8];
  sub_2288D3EC4(0, &qword_2813DE900, &qword_2813DE910, MEMORY[0x277D100B8]);
  MEMORY[0x28223BE20](v20 - 8);
  v141 = &v122 - v21;
  sub_2288BF214(0, &qword_2813DE910, v19);
  v140 = v22;
  v148 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v137 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v122 - v25;
  sub_2288BBFAC(0, &unk_2813DFE50, MEMORY[0x277D0FFC8]);
  MEMORY[0x28223BE20](v27 - 8);
  v171 = &v122 - v28;
  v29 = sub_22892E6D8();
  v170 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v130 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v149 = &v122 - v32;
  sub_2288BF360(0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v135 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v122 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v163 = &v122 - v40;
  MEMORY[0x28223BE20](v39);
  v165 = &v122 - v41;
  sub_2288D3EC4(0, &qword_2813DE918, &qword_2813DE920, v5);
  MEMORY[0x28223BE20](v42 - 8);
  v134 = &v122 - v43;
  v44 = sub_22892EDE8();
  MEMORY[0x28223BE20](v44 - 8);
  v168 = &v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22892E778();
  v124 = *(v46 - 8);
  v47 = v124;
  v125 = v46;
  v48 = MEMORY[0x28223BE20](v46);
  v177 = &v122 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v172 = &v122 - v50;
  memcpy(v176, v169, sizeof(v176));
  v142 = sub_2288E88F8();
  v51 = *(*a2 + 104);
  v158 = a2;
  swift_beginAccess();
  v52 = *(v47 + 16);
  v53 = a2 + v51;
  v54 = v172;
  v55 = v125;
  v52(v172, v53, v125);
  v56 = *v158;
  v57 = (v158 + *(*v158 + 112));
  v59 = *v57;
  v58 = v57[1];
  v162 = v59;
  v164 = v58;
  v169 = *(v158 + *(v56 + 120));
  v52(v177, v54, v55);
  type metadata accessor for SleepingSampleBaselineAccumulator(0);
  v60 = swift_allocObject();
  v61 = MEMORY[0x277D84F90];
  *(v60 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates) = MEMORY[0x277D84F90];
  *(v60 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries) = v61;
  *(v60 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete) = v61;

  v62 = v162;
  swift_unknownObjectRetain();
  sub_22892EDC8();
  sub_22892ED48();
  v63 = v124;
  (*(v124 + 32))(v60 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v177, v125);
  v64 = (v60 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
  v65 = v164;
  *v64 = v62;
  v64[1] = v65;
  *(v60 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider) = v169;
  v123 = *(v63 + 8);
  v124 = v63 + 8;
  v123(v172, v125);
  LODWORD(v177) = 0;
  v172 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
  v164 = *(v166 + 56);
  v168 = (v166 + 48);
  v158 = (v170 + 8);
  v162 = (v170 + 56);
  v146 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
  v147 = v170 + 16;
  v157 = (v170 + 32);
  v144 = (v161 + 16);
  v145 = (v167 + 8);
  v143 = (v161 + 8);
  v139 = (v148 + 48);
  v127 = (v150 + 32);
  v126 = (v150 + 8);
  v136 = (v161 + 56);
  v166 += 56;
  v150 = v26;
  v161 = v60;
  v148 = v38;
  v173 = v29;
  while (1)
  {
    v66 = v165;
    v67 = v160;
    v164(v165, 2, 2, v160);
    swift_beginAccess();
    v68 = v163;
    sub_2288D3F1C(v66, v163, sub_2288BF360);
    v167 = *v168;
    for (i = (v167)(v68, 2, v67); i == 2; i = (v167)(v68, 2, v67))
    {
      sub_2288D3FEC(v68, sub_2288BF360);
      v81 = *&v172[v60];
      v82 = *(v81 + 2);
      if (v82)
      {
        swift_beginAccess();
        v83 = (*(v170 + 80) + 32) & ~*(v170 + 80);
        (*(v170 + 16))(v171, &v81[v83], v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v82 - 1) > *(v81 + 3) >> 1)
        {
          v81 = sub_2288D5FD8(isUniquelyReferenced_nonNull_native, v82, 1, v81);
        }

        v85 = &v81[v83];
        v86 = v170;
        (*(v170 + 8))(v85, v29);
        v87 = *(v86 + 72);
        if (v87 > 0 || v85 >= v85 + v87 + (*(v81 + 2) - 1) * v87)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v87)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        --*(v81 + 2);
        *&v172[v60] = v81;
        swift_endAccess();
        v70 = v171;
        (*v162)(v171, 0, 1, v29);
        v169 = *v157;
        (v169)(v149, v70, v173);
        v71 = v151;
        sub_22892E5E8();
        v72 = v153;
        sub_22892E708();
        v73 = v155;
        sub_22892E438();
        (*v145)(v72, v154);
        v74 = v152;
        v75 = v159;
        (*v144)(v152, v73 + *(v156 + 36), v159);
        sub_2288D3FEC(v73, sub_2288B5D1C);
        sub_2288D3E28(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
        LODWORD(v70) = sub_22892F088();
        v76 = *v143;
        (*v143)(v74, v75);
        v77 = v75;
        v60 = v161;
        v76(v71, v77);
        v78 = v165;
        sub_2288D3FEC(v165, sub_2288BF360);
        LODWORD(v177) = v70 | v177;
        v38 = v148;
        (v169)(v148);
        v29 = v173;
        v67 = v160;
        swift_storeEnumTagMultiPayload();
        v79 = 0;
        v26 = v150;
      }

      else
      {
        v88 = v171;
        (*v162)(v171, 1, 1, v29);
        sub_2288D40CC(v88, &unk_2813DFE50, MEMORY[0x277D0FFC8]);
        if (v177)
        {
          v78 = v165;
          sub_2288D3FEC(v165, sub_2288BF360);
          v79 = 1;
          LODWORD(v177) = 1;
        }

        else
        {
          v89 = v141;
          sub_22892F7A8();
          if ((*v139)(v89, 1, v140) == 1)
          {
            sub_2288D404C(v89);
            v90 = *v136;
            LODWORD(v177) = 1;
            v91 = v138;
            v90(v138, 1, 1, v159);
            v60 = v161;
            sub_2288F81BC(v91);
            sub_2288D40CC(v91, &unk_2813DEDE0, MEMORY[0x277CCB6A8]);
            v78 = v165;
            sub_2288D3FEC(v165, sub_2288BF360);
            v79 = 2;
          }

          else
          {
            v92 = MEMORY[0x277D100B8];
            sub_2288C0D18(v89, v26, &qword_2813DE910, MEMORY[0x277D100B8]);
            v93 = v137;
            sub_2288C06F8(v26, v137, &qword_2813DE910, v92);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_2288C0CBC(v26, &qword_2813DE910, MEMORY[0x277D100B8]);
              v94 = v165;
              sub_2288D3FEC(v165, sub_2288BF360);
              v95 = *v93;
              v96 = *(v93 + 8);
              v78 = v94;
              *v38 = v95;
              v38[8] = v96;
              LODWORD(v177) = 1;
              swift_storeEnumTagMultiPayload();
              v79 = 0;
              v60 = v161;
            }

            else
            {
              v97 = v128;
              v98 = v93;
              v99 = v129;
              (*v127)(v128, v98, v129);
              v100 = v161;
              sub_2288F78DC(v97);
              v101 = v97;
              v60 = v100;
              (*v126)(v101, v99);
              sub_2288C0CBC(v26, &qword_2813DE910, MEMORY[0x277D100B8]);
              v78 = v165;
              sub_2288D3FEC(v165, sub_2288BF360);
              LODWORD(v177) = 0;
              v79 = 2;
            }
          }
        }
      }

      v164(v38, v79, 2, v67);
      sub_2288D3F84(v38, v78, sub_2288BF360);
      v80 = v78;
      v68 = v163;
      sub_2288D3F1C(v80, v163, sub_2288BF360);
    }

    sub_2288D3FEC(v68, sub_2288BF360);
    v102 = v135;
    sub_2288D3F84(v165, v135, sub_2288BF360);
    if ((v167)(v102, 2, v67))
    {
      v103 = 1;
      v104 = v134;
    }

    else
    {
      v104 = v134;
      sub_2288C0D18(v102, v134, &qword_2813DE920, MEMORY[0x277D0FFC8]);
      v103 = 0;
    }

    v105 = v160;
    v164(v104, v103, 1, v160);
    if ((v167)(v104, 1, v105) == 1)
    {
      v112 = v161;
      swift_setDeallocating();
      v123((v112 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange), v125);

      v113 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
      v114 = sub_22892ED68();
      (*(*(v114 - 8) + 8))(v112 + v113, v114);
      swift_unknownObjectRelease();

      swift_deallocClassInstance();

      return memcpy(v122, v176, 0x1B8uLL);
    }

    v106 = MEMORY[0x277D0FFC8];
    v107 = v104;
    v108 = v132;
    sub_2288C0D18(v107, v132, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v109 = v106;
    v110 = v131;
    sub_2288C06F8(v108, v131, &qword_2813DE920, v109);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v111 = v130;
    (*v157)(v130, v110, v29);
    sub_228909C20(v111);
    (*v158)(v111, v29);
    sub_2288C0CBC(v108, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v60 = v161;
  }

  v117 = *(v110 + 8);
  v174 = *v110;
  v116 = v174;
  v175 = v117;
  sub_2288B7AEC();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v118 = v116;
  *(v118 + 8) = v117;
  sub_2288C0CBC(v108, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v119 = v161;
  swift_setDeallocating();
  v123((v119 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange), v125);

  v120 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
  v121 = sub_22892ED68();
  (*(*(v121 - 8) + 8))(v119 + v120, v121);
  swift_unknownObjectRelease();

  swift_deallocClassInstance();
}