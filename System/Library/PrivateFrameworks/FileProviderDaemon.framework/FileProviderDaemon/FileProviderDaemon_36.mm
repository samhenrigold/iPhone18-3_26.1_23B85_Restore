double sub_1CF3FE3E4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

uint64_t sub_1CF3FE444(uint64_t a1)
{
  swift_getObjectType();
  sub_1CF9E7448();
  sub_1CF9E7418();
  if ((*(a1 + 88) & 1) == 0)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7428();
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1CF9E7448();
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1CF9E7418();
  return swift_unknownObjectRelease();
}

uint64_t sub_1CF3FE51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340, &unk_1CFA00D38);
  v8 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF3FE5EC, v8, v7);
}

uint64_t sub_1CF3FE5EC()
{
  *(v0 + 88) = sub_1CF39BA14();

  return MEMORY[0x1EEE6DFA0](sub_1CF3FE65C, 0, 0);
}

void sub_1CF3FE65C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(*(v8 + 72) + 16);
  *(v8 + 96) = v9;
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v11 = *(v8 + 72) + 32 * v10;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      *(v8 + 104) = v12;
      v14 = *(v11 + 48);
      v33 = *(v11 + 56);
      v31 = *(v11 + 57);
      v32 = *(v11 + 58);
      v15 = __OFADD__(v10++, 1);
      *(v8 + 112) = v10;
      if (v15)
      {
        goto LABEL_35;
      }

      v16 = *(*(v8 + 88) + 16);
      if (v16)
      {
        break;
      }

LABEL_4:
      if (v10 == v9)
      {
        goto LABEL_28;
      }
    }

    v30 = v10;
    v17 = 0;
    while (1)
    {
      v18 = *(v8 + 88) + v17;
      a2 = *(v18 + 40);
      v19 = *(v18 + 48);
      v20 = *(v18 + 56);
      v21 = *(v18 + 57);
      v22 = *(v18 + 58);
      v23 = *(v18 + 32) == v13 && a2 == v12;
      if (v23 || (sub_1CF9E8048()) && v19 == v14)
      {
        v24 = v20 == 6 || v20 == v33;
        if (v24 && (v21 == 89 || v31 != 89 && qword_1CFA05BE8[v21] == qword_1CFA05BE8[v31]) && (v22 == 2 || !((v32 == 2) | (v22 ^ v32) & 1)))
        {
          break;
        }
      }

      v17 += 32;
      if (!--v16)
      {
        v9 = *(v8 + 96);
        v10 = v30;
        goto LABEL_4;
      }
    }

    v26 = *(v8 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
    inited = swift_initStackObject();
    *(v8 + 120) = inited;
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = v26;
    *(inited + 40) = 256;

    v28 = v26;
    v29 = swift_task_alloc();
    *(v8 + 128) = v29;
    *v29 = v8;
    v29[1] = sub_1CF3FE934;

    sub_1CF7F8760(inited, v13, v12, v14, v33 | (v31 << 8) | (v32 << 16) | 0x1000000);
  }

  else
  {
LABEL_28:
    *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
    v25 = *(v8 + 8);

    v25();
  }
}

uint64_t sub_1CF3FE934()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v12 = *(v2 + 120);
  v13 = *(v2 + 104);
  if (v0)
  {
    v14 = *(v3 + 88);
    v13, v5, v6, v7, v8, v9, v10, v11;
    v14, v15, v16, v17, v18, v19, v20, v21;
    swift_setDeallocating();
    sub_1CEFCCC44(v12 + 32, &unk_1EC4BFC10, &qword_1CF9FE510);
    v22 = *(v4 + 8);

    return v22();
  }

  else
  {
    v13, v5, v6, v7, v8, v9, v10, v11;
    swift_setDeallocating();
    sub_1CEFCCC44(v12 + 32, &unk_1EC4BFC10, &qword_1CF9FE510);

    return MEMORY[0x1EEE6DFA0](sub_1CF3FEAFC, 0, 0);
  }
}

uint64_t sub_1CF3FEAFC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(v8 + 112);
  v10 = *(v8 + 96);
  if (v9 == v10)
  {
LABEL_6:
    *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
    v13 = *(v8 + 8);

    return v13();
  }

  else
  {
    v11 = 32 * v9 + 40;
    while (v9 < v10)
    {
      v12 = v9 + 1;
      *(v8 + 104) = *(*(v8 + 72) + v11);
      *(v8 + 112) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_10;
      }

      ++v9;
      v11 += 32;
      if (v12 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_1CF3FEBAC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v417 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1CF9E6118();
  v398 = *(v10 - 8);
  v399 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v400 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v396 = &v396 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v397 = &v396 - v15;
  v403 = sub_1CF9E5CF8();
  v401 = *(v403 - 8);
  MEMORY[0x1EEE9AC00](v403);
  v402 = &v396 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v408 = *(v17 - 8);
  v409 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v405 = &v396 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v406 = *(v19 - 8);
  v407 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v404 = &v396 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v396 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v412 = &v396 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v411 = &v396 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v396 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v410 = &v396 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v396 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v415 = &v396 - v37;
  v413 = v5;
  v426 = v5;
  v414 = v3;
  v427 = v3;
  v38 = objc_sync_enter(v7);
  if (v38)
  {
LABEL_246:
    MEMORY[0x1EEE9AC00](v38);
    v395 = v7;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v396 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v39 = *(v7 + qword_1EDEADAA8);
  v416 = v7;
  v40 = objc_sync_exit(v7);
  if (v40)
  {
    MEMORY[0x1EEE9AC00](v40);
    v395 = v416;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v396 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v39)
  {
    if (*(v416 + qword_1EDEBBCB8))
    {

      v41 = v417;
      sub_1CF4721F4(v9, v413, v414);
      v417 = v41;
      if (v41)
      {

        return;
      }
    }

    v42 = v415;
    sub_1CEFCCBDC(v9, v415, &qword_1EC4BE710, &qword_1CF9FE5A8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 11)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1CEFCCBDC(v42, v35, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
        v53 = *(v52 + 48);
        v54 = *&v35[*(v52 + 64)];
        v55 = v407;
        v56 = *(v406 + 6);
        if (v56(v35, 1, v407) == 1)
        {
          v57 = &qword_1EC4C1B40;
          v58 = &unk_1CF9FCB70;
          sub_1CEFCCC44(&v35[v53], &qword_1EC4C1B40, &unk_1CF9FCB70);
          v59 = v35;
LABEL_27:
          v65 = v57;
          v66 = v58;
LABEL_28:
          sub_1CEFCCC44(v59, v65, v66);
          v42 = v415;
          goto LABEL_72;
        }

        if (v56(&v35[v53], 1, v55) != 1)
        {
          sub_1CEFCCC44(v35, &unk_1EC4BE360, &qword_1CF9FE650);
          v65 = &qword_1EC4C1B40;
          v66 = &unk_1CF9FCB70;
          v59 = &v35[v53];
          goto LABEL_28;
        }

        v75 = v404;
        v76 = sub_1CEFE55D0(v35, v404, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((v54 & 2) == 0)
        {
          v65 = &unk_1EC4BE360;
          v66 = &qword_1CF9FE650;
          v59 = v75;
          goto LABEL_28;
        }

        MEMORY[0x1EEE9AC00](v76);
        v125 = v416;
        *(&v396 - 4) = v416;
        *(&v396 - 3) = v75;
        v395 = &v426;
        sub_1CF4739B0(v125, 0, v413, v414, sub_1CF482C50);
        v114 = &unk_1EC4BE360;
        v115 = &qword_1CF9FE650;
        v116 = v75;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          if (EnumCaseMultiPayload == 11)
          {
            v44 = v411;
            v45 = sub_1CEFCCBDC(v42, v411, &qword_1EC4BE710, &qword_1CF9FE5A8);
            v46 = *(v44 + 27);
            if (*(v44 + 9))
            {
              if (v46 == 3)
              {
                v48 = *(v44 + 8);
                *&v425[0] = *v44;
                v47 = *&v425[0];
                MEMORY[0x1EEE9AC00](v45);
                v49 = v416;
                *(&v396 - 4) = v416;
                *(&v396 - 3) = v425;
                v395 = &v426;
                sub_1CF4739B0(v49, 0, v413, v414, sub_1CF482BCC);
                sub_1CEFD0994(v47, v48, 1);
                sub_1CF47FDFC(*(v44 + 16), *(v44 + 24));
LABEL_167:
                sub_1CEFCCC44(v415, &qword_1EC4BE710, &qword_1CF9FE5A8);
                return;
              }

              sub_1CEFD0994(*v44, *(v44 + 8), 1);
            }

            else if (v46 == 2)
            {
              v101 = *(v44 + 8);
              *&v425[0] = *v44;
              BYTE8(v425[0]) = v101;
              MEMORY[0x1EEE9AC00](v45);
              v102 = v416;
              *(&v396 - 4) = v416;
              *(&v396 - 3) = v425;
              v395 = &v426;
              sub_1CF4739B0(v102, 0, v413, v414, sub_1CF482B78);
              sub_1CF47FDFC(*(v44 + 16), *(v44 + 24));
              goto LABEL_167;
            }

            sub_1CF47FDFC(*(v44 + 16), *(v44 + 24));
          }

          goto LABEL_72;
        }

        v62 = v410;
        sub_1CEFCCBDC(v42, v410, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
        v64 = *(v63 + 48);
        if ((*(v408 + 48))(v62, 1, v409) == 1)
        {
          v57 = &unk_1EC4BFBB0;
          v58 = &qword_1CF9FCB90;
          sub_1CEFCCC44(&v62[v64], &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v59 = v62;
          goto LABEL_27;
        }

        v106 = *&v62[*(v63 + 64)];
        v107 = v405;
        v108 = sub_1CEFE55D0(v62, v405, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if ((v106 & 2) == 0)
        {
          sub_1CEFCCC44(v107, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v65 = &unk_1EC4BFBB0;
          v66 = &qword_1CF9FCB90;
          v59 = &v62[v64];
          goto LABEL_28;
        }

        MEMORY[0x1EEE9AC00](v108);
        v113 = v416;
        *(&v396 - 4) = v416;
        *(&v396 - 3) = v107;
        v395 = &v426;
        sub_1CF4739B0(v113, 0, v413, v414, sub_1CF482C28);
        sub_1CEFCCC44(v107, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v114 = &unk_1EC4BFBB0;
        v115 = &qword_1CF9FCB90;
        v116 = &v62[v64];
      }

      sub_1CEFCCC44(v116, v114, v115);
      goto LABEL_167;
    }

    if (EnumCaseMultiPayload != 12)
    {
      if (EnumCaseMultiPayload != 13)
      {
        if (EnumCaseMultiPayload == 18)
        {
          sub_1CEFCCBDC(v42, v30, &qword_1EC4BE710, &qword_1CF9FE5A8);
          v50 = *v30;
          v51 = v30[8];
          if ((v30[9] & 1) == 0)
          {
            *&v425[0] = *v30;
            BYTE8(v425[0]) = v51;
            *&v424[0] = v413;
            BYTE8(v424[0]) = v414;
            MEMORY[0x1EEE9AC00](v50);
            v103 = v416;
            *(&v396 - 4) = v416;
            *(&v396 - 3) = v425;
            v395 = v424;
            sub_1CF4739B0(v103, 0, v104, v105, sub_1CF485ADC);
            goto LABEL_167;
          }

          sub_1CEFD0994(v50, v51, 1);
        }

        goto LABEL_72;
      }

      sub_1CEFCCBDC(v42, v23, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v67 = *(v23 + 2);
      v68 = v23[10];
      if (v23[9])
      {
        v69 = *v23;
        v70 = v23[8];
        if (v68 != 2)
        {
          v71 = v417;
          if (v68 == 6)
          {
            *&v424[0] = v67;
            v72 = v67;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            if (swift_dynamicCast())
            {
              v73 = LOBYTE(v425[1]);
              sub_1CF3386E4(*&v425[0], *(&v425[0] + 1), v425[1]);
              if (v73 <= 0xFB)
              {

                sub_1CEFD0994(v69, v70, 1);
                goto LABEL_97;
              }
            }

            *v422 = v67;
            v74 = v67;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            if (swift_dynamicCast())
            {
              nullsub_1();
              v424[6] = v425[6];
              v424[7] = v425[7];
              LOBYTE(v424[8]) = v425[8];
              v424[2] = v425[2];
              v424[3] = v425[3];
              v424[5] = v425[5];
              v424[4] = v425[4];
              v424[1] = v425[1];
              v424[0] = v425[0];
              if (sub_1CF2B971C(v424) == 14)
              {
                sub_1CEFD0994(v69, v70, 1);

                v423[6] = v425[6];
                v423[7] = v425[7];
                LOBYTE(v423[8]) = v425[8];
                v423[2] = v425[2];
                v423[3] = v425[3];
                v423[5] = v425[5];
                v423[4] = v425[4];
                v423[1] = v425[1];
                v423[0] = v425[0];
                sub_1CEFCCC44(v423, &unk_1EC4BFE40, &unk_1CFA05530);
LABEL_97:
                v124 = v415;
                goto LABEL_73;
              }

              v423[6] = v425[6];
              v423[7] = v425[7];
              LOBYTE(v423[8]) = v425[8];
              v423[2] = v425[2];
              v423[3] = v425[3];
              v423[5] = v425[5];
              v423[4] = v425[4];
              v423[1] = v425[1];
              v423[0] = v425[0];
              v131 = v423;
            }

            else
            {
              sub_1CF480600(v423);
              v425[6] = v423[6];
              v425[7] = v423[7];
              v425[2] = v423[2];
              v425[3] = v423[3];
              v425[5] = v423[5];
              v425[4] = v423[4];
              v425[1] = v423[1];
              v425[0] = v423[0];
              v424[6] = v423[6];
              v424[7] = v423[7];
              v424[2] = v423[2];
              v424[3] = v423[3];
              v424[5] = v423[5];
              v424[4] = v423[4];
              LOBYTE(v425[8]) = v423[8];
              LOBYTE(v424[8]) = v423[8];
              v424[1] = v423[1];
              v424[0] = v423[0];
              v131 = v424;
            }

            sub_1CEFCCC44(v131, &unk_1EC4BFE40, &unk_1CFA05530);
            sub_1CF7F5EA8(v69, v413, v414, v425);
            if (v71)
            {
              sub_1CEFD0994(v69, v70, 1);
              v149 = v67;
LABEL_110:

              goto LABEL_111;
            }

            memcpy(v424, v425, 0x208uLL);
            if (sub_1CF08B99C(v424) == 1)
            {
              sub_1CEFD0994(v69, v70, 1);

              memcpy(v423, v425, 0x208uLL);
              sub_1CEFCCC44(v423, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_141:
              v124 = v415;
              goto LABEL_73;
            }

            LODWORD(v411) = v70;
            memcpy(v423, v425, 0x208uLL);
            v467 = v425[10];
            v468 = v425[11];
            v469 = v425[12];
            v463 = v425[6];
            v464 = v425[7];
            v466 = v425[9];
            v465 = v425[8];
            v459 = v425[2];
            v460 = v425[3];
            v462 = v425[5];
            v461 = v425[4];
            v458 = v425[1];
            v457 = v425[0];
            v150 = *&v423[13];
            v151 = BYTE8(v423[13]);
            v477 = *(&v425[18] + 9);
            v478 = *(&v425[19] + 9);
            v479 = *(&v425[20] + 9);
            v475 = *(&v425[16] + 9);
            v476 = *(&v425[17] + 9);
            v472 = *(&v425[13] + 9);
            v473 = *(&v425[14] + 9);
            v474 = *(&v425[15] + 9);
            v481 = *(&v425[21] + 10);
            v482 = *(&v425[22] + 10);
            v485 = *(&v425[25] + 10);
            v486 = *(&v425[26] + 10);
            v483 = *(&v425[23] + 10);
            v484 = *(&v425[24] + 10);
            *(v490 + 14) = *(&v425[31] + 8);
            v489 = *(&v425[29] + 10);
            v490[0] = *(&v425[30] + 10);
            v487 = *(&v425[27] + 10);
            v488 = *(&v425[28] + 10);
            v470 = *&v423[13];
            v471 = BYTE8(v423[13]);
            v480 = BYTE9(v423[21]);
            if (BYTE8(v423[13]) == 255)
            {

              sub_1CEFCCC44(v423, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFD0994(v69, v411, 1);
              goto LABEL_141;
            }

            if (BYTE9(v423[21]) == 4)
            {
              v412 = v67;
              v417 = 0;
              v152 = fpfs_current_or_default_log();
              v153 = v400;
              sub_1CF9E6128();
              v154 = v69;
              v155 = sub_1CF9E6108();
              v156 = v69;
              v157 = sub_1CF9E72A8();
              if (os_log_type_enabled(v155, v157))
              {
                v158 = swift_slowAlloc();
                v410 = swift_slowAlloc();
                *v422 = v410;
                *v158 = 136446210;
                v159 = NSFileProviderItemIdentifier.description.getter(v154);
                v161 = v160;
                sub_1CEFD0994(v156, v411, 1);
                v162 = sub_1CEFD0DF0(v159, v161, v422);
                v161, v163, v164, v165, v166, v167, v168, v169;
                *(v158 + 4) = v162;
                _os_log_impl(&dword_1CEFC7000, v155, v157, "👽  enumerating %{public}s is throttled, unfaulting folder to allow user access", v158, 0xCu);
                v170 = v410;
                __swift_destroy_boxed_opaque_existential_1(v410);
                MEMORY[0x1D386CDC0](v170, -1, -1);
                MEMORY[0x1D386CDC0](v158, -1, -1);

                (*(v398 + 8))(v400, v399);
              }

              else
              {
                sub_1CEFD0994(v156, v411, 1);

                (*(v398 + 8))(v153, v399);
              }

              sub_1CF7F6024(v422);
              memcpy(v456, v422, sizeof(v456));
              sub_1CF475E04(v150, v151, v456, v416, v413, v414);

              memcpy(v421, v422, sizeof(v421));
              sub_1CEFCCC44(v421, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
              sub_1CEFCCC44(v423, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              sub_1CEFD0994(v156, v411, 1);
              goto LABEL_167;
            }

            sub_1CEFCCC44(v423, &unk_1EC4BFD80, &unk_1CFA0A2A0);
            v122 = v69;
            v123 = v411;
LABEL_84:
            sub_1CEFD0994(v122, v123, 1);
LABEL_111:
            v124 = v415;
            goto LABEL_73;
          }

          sub_1CEFD0994(v69, v70, 1);
LABEL_71:

          goto LABEL_72;
        }

        *&v424[0] = *(v23 + 2);
        v412 = v67;
        v117 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v118 = swift_dynamicCast();
        v119 = v417;
        if (v118)
        {
          v120 = LOBYTE(v425[1]);
          sub_1CF3386E4(*&v425[0], *(&v425[0] + 1), v425[1]);
          v121 = v416;
          if (v120 <= 0xFB)
          {

            v122 = v69;
            v123 = v70;
            goto LABEL_84;
          }
        }

        else
        {
          v121 = v416;
        }

        LOBYTE(v425[0]) = 1;
        v126 = v70;
        v127 = v70 | 0x100;
        v128 = v69;
        v129 = v412;
        v130 = sub_1CF43CBE4(v412, v69, v127 | 0x20000u, v121);
        if (v119)
        {

          sub_1CF480E54(v69, v127 | 0x20000u);
          v122 = v69;
          v123 = v126;
          goto LABEL_84;
        }

        v144 = v130;
        sub_1CF480E54(v69, v127 | 0x20000u);
        if ((v144 & 1) == 0)
        {
          sub_1CEFD0994(v69, v126, 1);
          v149 = v412;
          goto LABEL_110;
        }

        sub_1CF7F5EA8(v128, v413, v414, v425);
        memcpy(v424, v425, 0x208uLL);
        v171 = sub_1CF08B99C(v424);
        v172 = v412;
        if (v171 == 1)
        {
          sub_1CEFD0994(v69, v126, 1);

          memcpy(v423, v425, 0x208uLL);
          sub_1CEFCCC44(v423, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_111;
        }

        memcpy(v493, v425, sizeof(v493));
        sub_1CF7F6024(v422);
        memcpy(v423, v425, 0x208uLL);
        sub_1CEFCCC44(v423, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        if (v422[137] != 3)
        {

          sub_1CEFCCC44(v422, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v122 = v69;
          v123 = v126;
          goto LABEL_84;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
        v7 = swift_allocObject();
        v206 = MEMORY[0x1E69E7CC0];
        *(v7 + 32) = MEMORY[0x1E69E7CC0];
        *(v7 + 16) = v206;
        *(v7 + 24) = v206;
        *(v7 + 40) = v206;
        *(v7 + 48) = 0;
        v418[0] = 1;
        *&v491 = v69;
        BYTE8(v491) = v126;
        BYTE9(v491) = 1;
        WORD5(v491) = 262;
        v492 = 15;
        swift_beginAccess();
        v207 = v128;
        sub_1CF7E2EB0(&v491);
        swift_endAccess();
        v208 = v402;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v210 = v209;
        v38 = (*(v401 + 8))(v208, v403);
        v211 = v210 * 1000000000.0;
        if (COERCE__INT64(fabs(v210 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v211 > -9.22337204e18)
        {
          if (v211 < 9.22337204e18)
          {
            sub_1CF7F6588(v7, v211, v413, v414);
            swift_setDeallocating();
            *(v7 + 32), v212, v213, v214, v215, v216, v217, v218;
            swift_deallocClassInstance();

            sub_1CEFCCC44(v422, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v122 = v69;
            v123 = v126;
            goto LABEL_84;
          }

          goto LABEL_239;
        }

        __break(1u);
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

      v109 = *v23;
      v110 = v23[8];
      v419 = *v23;
      v420 = v110;
      if ((v68 - 24) < 0x41)
      {
        goto LABEL_71;
      }

      v111 = 0;
      v7 = 1;
      if (v68 > 6)
      {
        if (((1 << v68) & 0x7FEF80) != 0)
        {
          goto LABEL_71;
        }

        v112 = 0;
        if (v68 != 12)
        {
LABEL_101:
          LODWORD(v411) = v112;
          v145 = v110;
          *&v424[0] = v67;
          v146 = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          if (swift_dynamicCast())
          {
            v147 = LOBYTE(v425[1]);
            sub_1CF3386E4(*&v425[0], *(&v425[0] + 1), v425[1]);
            v148 = v145;
            if (v147 <= 0xFB)
            {
LABEL_147:

LABEL_221:
              sub_1CEFCCC44(v415, &qword_1EC4BE710, &qword_1CF9FE5A8);
              return;
            }
          }

          else
          {
            v148 = v145;
          }

          LOBYTE(v425[0]) = 0;
          v189 = v148 | (v68 << 16);
          v190 = v417;
          v191 = sub_1CF43CBE4(v67, v109, v189, v416);
          v192 = v67;
          v175 = v190;
          if (v190)
          {

            sub_1CF480E54(v109, v189);
            goto LABEL_167;
          }

          v412 = v192;
          sub_1CF480E54(v109, v189);
          if (v191)
          {
            if (v7)
            {
              sub_1CF7EB934(v109, v145, v413, v414, v425);
              memcpy(v424, v425, 0x208uLL);
              if (sub_1CF08B99C(v424) != 1)
              {
                memcpy(v430, v425, sizeof(v430));
                v233 = *(&v425[29] + 1);
                v234 = *&v425[30];
                v417 = (&v425[30] + 8);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
                v235 = swift_allocObject();
                v236 = MEMORY[0x1E69E7CC0];
                *(v235 + 16) = MEMORY[0x1E69E7CC0];
                *(v235 + 24) = v236;
                *(v235 + 32) = v236;
                *(v235 + 40) = v236;
                *(v235 + 48) = 0;
                LOBYTE(v421[0]) = 0;
                *&v431 = v109;
                WORD4(v431) = v145;
                v432 = 0x80000000000;
                v433 = v233;
                v434 = v234;
                v435 = 2560;
                swift_beginAccess();
                sub_1CF7E2EB0(&v431);
                swift_endAccess();
                memcpy(v423, v425, 0x1D8uLL);
                *(&v423[29] + 1) = v233;
                *&v423[30] = v234;
                v237 = v417[1];
                *(&v423[30] + 8) = *v417;
                *(&v423[31] + 8) = v237;
                sub_1CEFCCBDC(v423, v422, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                sub_1CF436B64(v109, v145, v430, v233, v234, 0x10000, v416, v235, v413, v414);
                v7 = 0;
                sub_1CEFCCC44(v430, &unk_1EC4BFC20, &unk_1CFA0A290);
                v275 = v402;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v277 = v276;
                v38 = (*(v401 + 8))(v275, v403);
                v278 = v277 * 1000000000.0;
                if (COERCE__INT64(fabs(v277 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_243;
                }

                if (v278 <= -9.22337204e18)
                {
LABEL_244:
                  __break(1u);
                  goto LABEL_245;
                }

                if (v278 >= 9.22337204e18)
                {
LABEL_245:
                  __break(1u);
                  goto LABEL_246;
                }

                sub_1CF7F6588(v235, v278, v413, v414);
                sub_1CEFCCC44(v430, &unk_1EC4BFC20, &unk_1CFA0A290);
                swift_setDeallocating();
                *(v235 + 16), v326, v327, v328, v329, v330, v331, v332;
                *(v235 + 24), v333, v334, v335, v336, v337, v338, v339;
                *(v235 + 32), v340, v341, v342, v343, v344, v345, v346;
                *(v235 + 40), v347, v348, v349, v350, v351, v352, v353;

                v199 = swift_deallocClassInstance();
                if (!v111)
                {
                  goto LABEL_181;
                }

                goto LABEL_154;
              }

              memcpy(v423, v425, 0x208uLL);
              v199 = sub_1CEFCCC44(v423, &unk_1EC4BFC20, &unk_1CFA0A290);
            }

            if (!v111)
            {
              goto LABEL_181;
            }

LABEL_154:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
            v200 = swift_allocObject();
            v201 = MEMORY[0x1E69E7CC0];
            *(v200 + 16) = MEMORY[0x1E69E7CC0];
            *(v200 + 24) = v201;
            *(v200 + 32) = v201;
            *(v200 + 40) = v201;
            *(v200 + 48) = 0;
            LOBYTE(v424[0]) = 0;
            *&v428 = v419;
            WORD4(v428) = v420;
            WORD5(v428) = 262;
            v429 = 15;
            swift_beginAccess();
            sub_1CF7E2EB0(&v428);
            swift_endAccess();
            v202 = v402;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v204 = v203;
            v38 = (*(v401 + 8))(v202, v403);
            v205 = v204 * 1000000000.0;
            if (COERCE__INT64(fabs(v204 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_240:
              __break(1u);
              goto LABEL_241;
            }

            if (v205 <= -9.22337204e18)
            {
LABEL_241:
              __break(1u);
              goto LABEL_242;
            }

            if (v205 >= 9.22337204e18)
            {
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }

            sub_1CF7F6588(v200, v205, v413, v414);
            swift_setDeallocating();
            *(v200 + 32), v223, v224, v225, v226, v227, v228, v229;
            v199 = swift_deallocClassInstance();
LABEL_181:
            *&v425[0] = v419;
            BYTE8(v425[0]) = v420;
            *&v424[0] = v413;
            BYTE8(v424[0]) = v414;
            MEMORY[0x1EEE9AC00](v199);
            v230 = v416;
            *(&v396 - 4) = v416;
            *(&v396 - 3) = v425;
            v395 = v424;
            sub_1CF4739B0(v230, 0, v231, v232, sub_1CF482B60);

            goto LABEL_167;
          }

          (*(*v416[4] + 288))(v425, &v419, &v426, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          LOBYTE(v179) = BYTE8(v425[0]);
          if (BYTE8(v425[0]) == 255)
          {

            goto LABEL_167;
          }

          v79 = *&v425[0];
          sub_1CF7EB934(*&v425[0], BYTE8(v425[0]), v413, v414, v425);
          memcpy(v424, v425, 0x208uLL);
          if (sub_1CF08B99C(v424) == 1)
          {

            memcpy(v423, v425, 0x208uLL);
LABEL_208:
            v325 = v423;
LABEL_209:
            sub_1CEFCCC44(v325, &unk_1EC4BFC20, &unk_1CFA0A290);
            goto LABEL_167;
          }

          memcpy(v423, v425, 0x208uLL);
          v437[6] = v425[6];
          *v438 = v425[7];
          *&v438[9] = *(&v425[7] + 9);
          v437[2] = v425[2];
          v437[3] = v425[3];
          v437[5] = v425[5];
          v437[4] = v425[4];
          v437[1] = v425[1];
          v437[0] = v425[0];
          memcpy(v440, &v425[8] + 10, sizeof(v440));
          v439 = BYTE9(v423[8]);
          if (BYTE9(v423[8]) != 3)
          {
LABEL_207:

            goto LABEL_208;
          }

          goto LABEL_202;
        }

        LODWORD(v7) = 0;
        v111 = 1;
LABEL_100:
        v112 = v7;
        v7 = 0;
        goto LABEL_101;
      }

      if ((v68 - 1) < 5)
      {
        goto LABEL_71;
      }

      if (!v68)
      {
        goto LABEL_100;
      }

      LODWORD(v411) = v110;
      *&v424[0] = v67;
      v193 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {
        v194 = LOBYTE(v425[1]);
        sub_1CF3386E4(*&v425[0], *(&v425[0] + 1), v425[1]);
        if (v194 <= 0xFB)
        {
          goto LABEL_147;
        }
      }

      *v422 = v67;
      v195 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      if (swift_dynamicCast())
      {
        nullsub_1();
        v424[6] = v425[6];
        v424[7] = v425[7];
        LOBYTE(v424[8]) = v425[8];
        v424[2] = v425[2];
        v424[3] = v425[3];
        v424[5] = v425[5];
        v424[4] = v425[4];
        v424[1] = v425[1];
        v424[0] = v425[0];
        if (sub_1CF2B971C(v424) == 14)
        {

          v423[6] = v425[6];
          v423[7] = v425[7];
          LOBYTE(v423[8]) = v425[8];
          v423[2] = v425[2];
          v423[3] = v425[3];
          v423[5] = v425[5];
          v423[4] = v425[4];
          v423[1] = v425[1];
          v423[0] = v425[0];
          v196 = &unk_1EC4BFE40;
          v197 = &unk_1CFA05530;
          v198 = v423;
LABEL_220:
          sub_1CEFCCC44(v198, v196, v197);
          goto LABEL_221;
        }

        v423[6] = v425[6];
        v423[7] = v425[7];
        LOBYTE(v423[8]) = v425[8];
        v423[2] = v425[2];
        v423[3] = v425[3];
        v423[5] = v425[5];
        v423[4] = v425[4];
        v423[1] = v425[1];
        v423[0] = v425[0];
        v219 = v423;
      }

      else
      {
        sub_1CF480600(v423);
        v425[6] = v423[6];
        v425[7] = v423[7];
        v425[2] = v423[2];
        v425[3] = v423[3];
        v425[5] = v423[5];
        v425[4] = v423[4];
        v425[1] = v423[1];
        v425[0] = v423[0];
        v424[6] = v423[6];
        v424[7] = v423[7];
        v424[2] = v423[2];
        v424[3] = v423[3];
        v424[5] = v423[5];
        v424[4] = v423[4];
        LOBYTE(v425[8]) = v423[8];
        LOBYTE(v424[8]) = v423[8];
        v424[1] = v423[1];
        v424[0] = v423[0];
        v219 = v424;
      }

      sub_1CEFCCC44(v219, &unk_1EC4BFE40, &unk_1CFA05530);
      v220 = v417;
      v410 = v109;
      sub_1CF7EB934(v109, v411, v413, v414, v425);
      if (v220)
      {

        goto LABEL_167;
      }

      v412 = v67;
      v417 = 0;
      memcpy(v424, v425, 0x208uLL);
      if (sub_1CF08B99C(v424) == 1)
      {

        memcpy(v423, v425, 0x208uLL);
        v196 = &unk_1EC4BFC20;
        v197 = &unk_1CFA0A290;
        v198 = v423;
        goto LABEL_220;
      }

      memcpy(v444, v425, sizeof(v444));
      v448[6] = v425[6];
      *v449 = v425[7];
      *&v449[9] = *(&v425[7] + 9);
      v448[2] = v425[2];
      v448[3] = v425[3];
      v448[5] = v425[5];
      v448[4] = v425[4];
      v448[1] = v425[1];
      v448[0] = v425[0];
      memcpy(v451, &v425[8] + 11, sizeof(v451));
      v406 = &v425[30] + 8;
      v407 = *&v425[30];
      v454 = *(&v425[30] + 8);
      v455 = *(&v425[31] + 8);
      v450 = *(&v425[8] + 9);
      LODWORD(v409) = BYTE10(v425[8]);
      v408 = *(&v425[29] + 1);
      v452 = *(&v425[29] + 1);
      v453 = *&v425[30];
      if (BYTE9(v425[8]) != 3)
      {
        goto LABEL_218;
      }

      LOBYTE(v423[0]) = 0;
      v221 = v417;
      v222 = sub_1CF43CBE4(v412, v410, v411 | 0x60000, v416);
      v417 = v221;
      if (v221)
      {

        sub_1CF480E54(v410, v411 | 0x60000);
LABEL_219:
        v196 = &unk_1EC4BFC20;
        v197 = &unk_1CFA0A290;
        v198 = v444;
        goto LABEL_220;
      }

      v238 = v222;
      sub_1CF480E54(v410, v411 | 0x60000);
      if ((v238 & 1) == 0)
      {
        if ((v409 & 1) == 0)
        {
          v279 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v280 = sub_1CF9E6108();
          v281 = sub_1CF9E72A8();
          if (os_log_type_enabled(v280, v281))
          {
            v282 = swift_slowAlloc();
            v283 = swift_slowAlloc();
            *v422 = v283;
            *v282 = 136446210;
            *&v423[0] = v410;
            BYTE8(v423[0]) = v411;
            v284 = VFSItemID.description.getter(v283);
            v286 = v285;
            v287 = sub_1CEFD0DF0(v284, v285, v422);
            v286, v288, v289, v290, v291, v292, v293, v294;
            *(v282 + 4) = v287;
            _os_log_impl(&dword_1CEFC7000, v280, v281, "👽  enumerating %{public}s is throttled, unfaulting folder to allow user access", v282, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v283);
            MEMORY[0x1D386CDC0](v283, -1, -1);
            MEMORY[0x1D386CDC0](v282, -1, -1);
          }

          (*(v398 + 8))(v396, v399);
          v295 = v417;
          sub_1CF475E04(v410, v411, v448, v416, v413, v414);
          v417 = v295;
        }

        goto LABEL_218;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
      v239 = swift_allocObject();
      v240 = MEMORY[0x1E69E7CC0];
      *(v239 + 16) = MEMORY[0x1E69E7CC0];
      *(v239 + 24) = v240;
      *(v239 + 32) = v240;
      *(v239 + 40) = v240;
      v405 = v239 + 40;
      *(v239 + 48) = 0;
      v241 = v410;
      *v418 = v410;
      v242 = v411;
      *&v418[8] = v411;
      v418[16] = 0;
      v418[82] = 10;
      v445[2] = *&v418[32];
      v445[3] = *&v418[48];
      v446[0] = *&v418[64];
      *(v446 + 15) = *&v418[79];
      v445[0] = *v418;
      v445[1] = *&v418[16];
      v447 = 9;
      swift_beginAccess();
      sub_1CEFCCBDC(v418, v422, &unk_1EC4BFCF0, &unk_1CFA05410);
      sub_1CF7E2EB0(v445);
      swift_endAccess();
      sub_1CEFCCC44(v418, &unk_1EC4BFCF0, &unk_1CFA05410);
      v423[6] = v425[6];
      v423[7] = v425[7];
      *(&v423[7] + 9) = *(&v425[7] + 9);
      v423[2] = v425[2];
      v423[3] = v425[3];
      v423[5] = v425[5];
      v423[4] = v425[4];
      v423[1] = v425[1];
      v423[0] = v425[0];
      BYTE9(v423[8]) = 3;
      BYTE10(v423[8]) = v409;
      memcpy(&v423[8] + 11, &v425[8] + 11, 0x14DuLL);
      v243 = v407;
      v244 = v408;
      *(&v423[29] + 1) = v408;
      *&v423[30] = v407;
      v245 = *(v406 + 1);
      *(&v423[30] + 8) = *v406;
      *(&v423[31] + 8) = v245;
      sub_1CEFCCBDC(v423, v422, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v246 = v417;
      sub_1CF436B64(v241, v242, v444, v244, v243, 0x10000, v416, v239, v413, v414);
      if (v246)
      {
        swift_setDeallocating();
        *(v239 + 16), v247, v248, v249, v250, v251, v252, v253;
        *(v239 + 24), v254, v255, v256, v257, v258, v259, v260;
        *(v239 + 32), v261, v262, v263, v264, v265, v266, v267;
        *(v239 + 40), v268, v269, v270, v271, v272, v273, v274;

        swift_deallocClassInstance();
        sub_1CEFCCC44(v444, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v444, &unk_1EC4BFC20, &unk_1CFA0A290);
        goto LABEL_167;
      }

      sub_1CEFCCC44(v444, &unk_1EC4BFC20, &unk_1CFA0A290);
      if ((v409 & 1) == 0)
      {
        v354 = v410;
        *v422 = v410;
        v355 = v411;
        *&v422[8] = v411;
        *&v422[16] = 5;
        v356 = v407;
        *&v422[24] = v408;
        *&v422[32] = v407;
        v422[114] = 12;
        v441[4] = *&v422[64];
        v441[5] = *&v422[80];
        *v442 = *&v422[96];
        *&v442[15] = *&v422[111];
        v441[0] = *v422;
        v441[1] = *&v422[16];
        v441[3] = *&v422[48];
        v441[2] = *&v422[32];
        v443 = 10;
        swift_beginAccess();
        sub_1CEFCCBDC(v422, v421, &unk_1EC4BFD00, &unk_1CFA05420);
        sub_1CF7E2EB0(v441);
        swift_endAccess();
        sub_1CEFCCC44(v422, &unk_1EC4BFD00, &unk_1CFA05420);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
        v357 = swift_allocObject();
        *(v357 + 152) = v355;
        *(v357 + 16) = 0u;
        *(v357 + 32) = 0u;
        *(v357 + 48) = 1;
        *(v357 + 56) = 0u;
        *(v357 + 72) = 0u;
        *(v357 + 88) = 0;
        *(v357 + 120) = v408;
        *(v357 + 128) = v356;
        *(v357 + 136) = 1;
        *(v357 + 144) = v354;
        *(v357 + 96) = xmmword_1CFA04EA0;
        *(v357 + 112) = 0;
        swift_beginAccess();

        sub_1CF7E3218(v358);
        swift_endAccess();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
      v359 = swift_allocObject();
      *(v359 + 152) = v411;
      *(v359 + 16) = 0u;
      *(v359 + 32) = 0u;
      *(v359 + 48) = 1;
      *(v359 + 56) = 0u;
      *(v359 + 72) = 0u;
      *(v359 + 88) = 0;
      v360 = v407;
      *(v359 + 120) = v408;
      *(v359 + 128) = v360;
      v361 = v410;
      *(v359 + 136) = 0x400000;
      *(v359 + 144) = v361;
      *(v359 + 96) = xmmword_1CFA04E20;
      *(v359 + 112) = 0;
      swift_beginAccess();

      sub_1CF7E3218(v362);
      swift_endAccess();

      v363 = v402;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v365 = v364;
      (*(v401 + 8))(v363, v403);
      v366 = v365 * 1000000000.0;
      if (COERCE__INT64(fabs(v365 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v366 > -9.22337204e18)
      {
        if (v366 < 9.22337204e18)
        {
          sub_1CF7F6588(v239, v366, v413, v414);
          v417 = 0;
          swift_setDeallocating();
          *(v239 + 16), v367, v368, v369, v370, v371, v372, v373;
          *(v239 + 24), v374, v375, v376, v377, v378, v379, v380;
          *(v239 + 32), v381, v382, v383, v384, v385, v386, v387;
          *(v239 + 40), v388, v389, v390, v391, v392, v393, v394;

          swift_deallocClassInstance();
LABEL_218:

          goto LABEL_219;
        }

LABEL_250:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_250;
    }

    v60 = v412;
    v61 = sub_1CEFCCBDC(v42, v412, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if (*(v60 + 9))
    {
      sub_1CF47FDFC(v60[2], *(v60 + 12));
      sub_1CEFD0994(*v60, *(v60 + 8), *(v60 + 9));
LABEL_72:
      v124 = v42;
LABEL_73:
      sub_1CEFCCC44(v124, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return;
    }

    v77 = *(v60 + 26);
    v78 = *(v60 + 27);
    v79 = *v60;
    v80 = *(v60 + 8);
    *&v425[0] = *v60;
    BYTE8(v425[0]) = v80;
    v81 = v417;
    if (v78 != 2)
    {
      v82 = v416;
      if (v78 == 3)
      {
        MEMORY[0x1EEE9AC00](v61);
        *(&v396 - 4) = v82;
        *(&v396 - 3) = v425;
        v395 = &v426;
        v99 = sub_1CF485AF4;
        v100 = v82;
        v97 = v413;
        v98 = v414;
LABEL_75:
        v61 = sub_1CF4739B0(v100, 0, v97, v98, v99);
        if (!v81)
        {
          goto LABEL_118;
        }

LABEL_80:
        sub_1CF47FDFC(v60[2], *(v60 + 12));
        goto LABEL_167;
      }

      if (v78 != 6)
      {
        goto LABEL_119;
      }

      v83 = (*(*v416[2] + 232))(&v426, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v81)
      {
        goto LABEL_80;
      }

      if (v83)
      {
LABEL_52:
        *&v424[0] = v79;
        BYTE8(v424[0]) = v80;
        *&v423[0] = v413;
        BYTE8(v423[0]) = v414;
        MEMORY[0x1EEE9AC00](v83);
        *(&v396 - 4) = v82;
        *(&v396 - 3) = v424;
        v395 = v423;
        v99 = sub_1CF485ADC;
        v100 = v82;
        goto LABEL_75;
      }

      (*(**(*(v82 + 4) + 16) + 96))(v424);
      v84 = v402;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v86 = v85;
      v87 = *(v401 + 8);
      v87(v84, v403);
      v88 = v86 * 1000000000.0;
      if (COERCE__INT64(fabs(v86 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v88 > -9.22337204e18)
        {
          if (v88 < 9.22337204e18)
          {
            v89 = v88;
            v90 = *&v424[0];
            v91 = BYTE8(v424[0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
            v92 = swift_allocObject();
            *(v92 + 152) = v91;
            *(v92 + 16) = 0u;
            *(v92 + 32) = 0u;
            *(v92 + 48) = 1;
            *(v92 + 56) = 0u;
            *(v92 + 72) = 0u;
            *(v92 + 88) = 0;
            *(v92 + 96) = xmmword_1CF9FEC30;
            *(v92 + 112) = 0;
            *(v92 + 120) = 0x2000000000000000;
            *(v92 + 128) = v89;
            *(v92 + 136) = 0x20000;
            *(v92 + 144) = v90;
            v93 = v402;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v95 = v94;
            v87(v93, v403);
            v96 = v95 * 1000000000.0;
            if (COERCE__INT64(fabs(v95 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v82 = v416;
              v60 = v412;
              if (v96 > -9.22337204e18)
              {
                if (v96 < 9.22337204e18)
                {
                  sub_1CF902E70(v92, v96, v413, v414);

                  v79 = *&v425[0];
                  v80 = BYTE8(v425[0]);
                  goto LABEL_52;
                }

LABEL_233:
                __break(1u);
                goto LABEL_234;
              }

              goto LABEL_231;
            }

            goto LABEL_229;
          }

          goto LABEL_227;
        }

        goto LABEL_225;
      }

      goto LABEL_223;
    }

    v82 = v416;
    v61 = (*(*v416[2] + 240))(&v426, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v81)
    {
      goto LABEL_80;
    }

    if ((v61 & 1) == 0)
    {
      (*(**(*(v82 + 4) + 16) + 96))(v424);
      v132 = v402;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v134 = v133;
      v135 = *(v401 + 8);
      v135(v132, v403);
      v136 = v134 * 1000000000.0;
      if (COERCE__INT64(fabs(v134 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

      if (v136 <= -9.22337204e18)
      {
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      if (v136 >= 9.22337204e18)
      {
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
        goto LABEL_228;
      }

      v137 = v136;
      v138 = *&v424[0];
      v139 = BYTE8(v424[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
      v79 = swift_allocObject();
      *(v79 + 152) = v139;
      *(v79 + 16) = 0u;
      *(v79 + 32) = 0u;
      *(v79 + 48) = 1;
      *(v79 + 56) = 0u;
      *(v79 + 72) = 0u;
      *(v79 + 88) = 0;
      *(v79 + 96) = xmmword_1CF9FEC30;
      *(v79 + 112) = 0;
      *(v79 + 120) = 0x2000000000000000;
      *(v79 + 128) = v137;
      *(v79 + 136) = 0x20000;
      *(v79 + 144) = v138;
      v140 = v402;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v142 = v141;
      v135(v140, v403);
      v143 = v142 * 1000000000.0;
      if (COERCE__INT64(fabs(v142 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      v82 = v416;
      v60 = v412;
      if (v143 <= -9.22337204e18)
      {
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
        goto LABEL_232;
      }

      if (v143 >= 9.22337204e18)
      {
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      sub_1CF902E70(v79, v143, v413, v414);
    }

LABEL_118:
    v42 = v415;
LABEL_119:
    if (v77 != 3)
    {
      if (v77)
      {
        goto LABEL_135;
      }

      *&v424[0] = *&v425[0];
      BYTE8(v424[0]) = BYTE8(v425[0]);
      *&v423[0] = v413;
      BYTE8(v423[0]) = v414;
      MEMORY[0x1EEE9AC00](v61);
      *(&v396 - 4) = v82;
      *(&v396 - 3) = v424;
      v395 = v423;
      sub_1CF4739B0(v82, 1, v173, v174, sub_1CF485ADC);
      if (!v81)
      {
LABEL_134:
        v42 = v415;
LABEL_135:
        sub_1CF47FDFC(v60[2], *(v60 + 12));
        v188 = v42;
        goto LABEL_136;
      }

      goto LABEL_131;
    }

    v175 = v81;
    (*(**(*(v82 + 4) + 16) + 96))(v424, v61);
    v176 = v402;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v178 = v177;
    v179 = *(v401 + 8);
    v179(v176, v403);
    v180 = v178 * 1000000000.0;
    if (COERCE__INT64(fabs(v178 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v180 > -9.22337204e18)
    {
      if (v180 < 9.22337204e18)
      {
        v181 = v180;
        v182 = *&v424[0];
        v183 = BYTE8(v424[0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
        v79 = swift_allocObject();
        *(v79 + 152) = v183;
        *(v79 + 16) = 0u;
        *(v79 + 32) = 0u;
        *(v79 + 48) = 1;
        *(v79 + 56) = 0u;
        *(v79 + 72) = 0u;
        *(v79 + 88) = 0;
        *(v79 + 96) = xmmword_1CF9FEC30;
        *(v79 + 112) = 0;
        *(v79 + 120) = 0x2000000000000000;
        *(v79 + 128) = v181;
        *(v79 + 136) = 0x20000;
        *(v79 + 144) = v182;
        v184 = v402;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v186 = v185;
        v179(v184, v403);
        v187 = v186 * 1000000000.0;
        if (COERCE__INT64(fabs(v186 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v60 = v412;
          if (v187 > -9.22337204e18)
          {
            if (v187 < 9.22337204e18)
            {
              sub_1CF902E70(v79, v187, v413, v414);
              if (!v81)
              {

                goto LABEL_134;
              }

LABEL_131:
              sub_1CF47FDFC(v60[2], *(v60 + 12));
              v188 = v415;
LABEL_136:
              sub_1CEFCCC44(v188, &qword_1EC4BE710, &qword_1CF9FE5A8);
              return;
            }

LABEL_201:
            __break(1u);
LABEL_202:
            v296 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v297 = v419;
            LODWORD(v410) = v420;
            v298 = sub_1CF9E6108();
            LODWORD(v417) = sub_1CF9E72A8();
            if (os_log_type_enabled(v298, v417))
            {
              v299 = swift_slowAlloc();
              v300 = swift_slowAlloc();
              v409 = v300;
              v421[0] = v300;
              *v299 = 136446466;
              *v422 = v297;
              v422[8] = v410;
              v301 = VFSItemID.description.getter(v300);
              v303 = v302;
              v304 = sub_1CEFD0DF0(v301, v302, v421);
              v303, v305, v306, v307, v308, v309, v310, v311;
              *(v299 + 4) = v304;
              *(v299 + 12) = 2082;
              *v422 = v79;
              v422[8] = v179;
              v313 = VFSItemID.description.getter(v312);
              v315 = v314;
              v316 = sub_1CEFD0DF0(v313, v314, v421);
              v315, v317, v318, v319, v320, v321, v322, v323;
              *(v299 + 14) = v316;
              _os_log_impl(&dword_1CEFC7000, v298, v417, "👽  import of %{public}s within %{public}s is throttled, unfaulting folder to allow user access", v299, 0x16u);
              v324 = v409;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v324, -1, -1);
              MEMORY[0x1D386CDC0](v299, -1, -1);
            }

            (*(v398 + 8))(v397, v399);
            sub_1CF475E04(v79, v179, v437, v416, v413, v414);
            if (v175 || (v411 & 1) == 0)
            {
              goto LABEL_207;
            }

            sub_1CF7EB934(v419, v420, v413, v414, v422);
LABEL_234:
            memcpy(v421, v422, sizeof(v421));
            if (sub_1CF08B99C(v421) == 1)
            {

              sub_1CEFCCC44(v423, &unk_1EC4BFC20, &unk_1CFA0A290);
              memcpy(v418, v422, sizeof(v418));
              v325 = v418;
            }

            else
            {
              memcpy(v418, v422, sizeof(v418));
              memcpy(v436, v422, sizeof(v436));
              sub_1CF475E04(v419, v420, v436, v416, v413, v414);

              sub_1CEFCCC44(v418, &unk_1EC4BFC20, &unk_1CFA0A290);
              v325 = v423;
            }

            goto LABEL_209;
          }

LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    __break(1u);
    goto LABEL_198;
  }
}

void sub_1CF40212C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), int a6)
{
  LODWORD(v323) = a6;
  v322 = a5;
  v295 = a4;
  LODWORD(v296) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v292 = v288 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v325 = *(v11 - 8);
  v12 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v304 = v288 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v309 = v288 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v317 = (v288 - v16);
  MEMORY[0x1EEE9AC00](v17);
  *&v318 = v288 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v293 = v288 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v299 = v288 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v320 = (v288 - v24);
  MEMORY[0x1EEE9AC00](v25);
  *&v313 = v288 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v314 = v288 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v319 = (v288 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v303 = v288 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v312 = v288 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v306 = v288 - v36;
  MEMORY[0x1EEE9AC00](v37);
  *&v324 = v288 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v302 = (v288 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v297 = v288 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v316 = v288 - v44;
  MEMORY[0x1EEE9AC00](v45);
  *&v311 = v288 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v305 = v288 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v300 = (v288 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v321 = v288 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v308 = v288 - v54;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v301 = *(v298 - 8);
  v55 = *(v301 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v289 = v288 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v294 = v288 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v290 = v288 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v288 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v307 = (v288 - v64);
  v65 = a1;
  v348 = a1;
  v66 = a2;
  v349 = a2;
  v346 = v322;
  v347 = v323;
  v67 = qword_1EDEBBC70;
  swift_beginAccess();
  v310 = v6;
  v291 = v67;
  v68 = *&v6[v67];
  if (!*(v68 + 16))
  {
    return;
  }

  v69 = sub_1CF7BF2C0(v65, v66);
  if ((v70 & 1) == 0)
  {
    return;
  }

  v288[1] = v12;
  v71 = v296;
  v72 = &qword_1CFA07B10;
  sub_1CEFCCBDC(*(v68 + 56) + *(v301 + 72) * v69, v62, &unk_1EC4C04C0, &qword_1CFA07B10);
  v73 = v307;
  sub_1CEFE55D0(v62, v307, &unk_1EC4C04C0, &qword_1CFA07B10);
  v326 = v11;
  if (v71 != 5)
  {
    if (v71 == 4)
    {
      if (v295)
      {
        v74 = v73;
        goto LABEL_37;
      }

      v136 = *(v73 + *(v298 + 56));
      v137 = *(v136 + 8);
      v302 = v136 + 64;
      v138 = 1 << v136[32];
      v139 = -1;
      if (v138 < 64)
      {
        v139 = ~(-1 << v138);
      }

      v140 = v139 & v137;
      v312 = v313 + 8;
      v297 = (v138 + 63) >> 6;
      v322 = (v325 + 48);
      v323 = (v325 + 56);

      v316 = v136;

      v141 = 0;
      v142 = v314;
LABEL_42:
      v143 = v324;
      while (v140)
      {
        v144 = v141;
LABEL_54:
        v147 = __clz(__rbit64(v140));
        v140 &= v140 - 1;
        sub_1CEFCCBDC(*(v316 + 7) + *(v325 + 72) * (v147 | (v144 << 6)), v143, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v148 = 0;
LABEL_55:
        v149 = *v323;
        v150 = 1;
        (*v323)(v143, v148, 1, v11);
        v151 = *v322;
        if ((*v322)(v143, 1, v11) != 1)
        {
          *&v318 = v149;
          v152 = *(v11 + 80);
          v304 = *(v11 + 96);
          v311 = *v143;
          v309 = *(v143 + 16);
          v153 = sub_1CF9E6448();
          v303 = *(*(v153 - 8) + 32);
          v154 = v319;
          (v303)(v319 + v152, v324 + v152, v153);
          v155 = swift_allocObject();
          v317 = v151;
          v156 = v155;
          *(v155 + 16) = *(v324 + v304);
          v157 = *(v326 + 80);
          v158 = v321;
          v159 = &v321[*(v326 + 96)];
          *v321 = v311;
          *(v158 + 2) = v309;
          v160 = v154 + v152;
          v149 = v318;
          (v303)(&v158[v157], v160, v153);
          v11 = v326;
          v150 = 0;
          *v159 = sub_1CF485B60;
          v159[1] = v156;
          v142 = v314;
          v151 = v317;
        }

        v161 = v321;
        v149(v321, v150, 1, v11);
        v162 = v308;
        sub_1CEFE55D0(v161, v308, &qword_1EC4BE1C0, &unk_1CFA058B0);
        if (v151(v162, 1, v11) == 1)
        {
          v317 = v151;
          *&v318 = v149;
          v178 = v316;

          v179 = v348;
          v180 = v349;
          v181 = v292;
          (*(v301 + 56))(v292, 1, 1, v298);
          swift_beginAccess();
          sub_1CF1CA348(v181, v179, v180);
          swift_endAccess();
          v182 = 1 << v178[32];
          v183 = -1;
          if (v182 < 64)
          {
            v183 = ~(-1 << v182);
          }

          v184 = v183 & *(v178 + 8);
          v308 = v299 + 8;
          v303 = ((v182 + 63) >> 6);
          v304 = (v319 + 1);

          v185 = 0;
          v186 = v306;
          while (v184)
          {
            v188 = v185;
            v190 = v317;
            v189 = v318;
LABEL_78:
            v193 = __clz(__rbit64(v184));
            v184 &= v184 - 1;
            sub_1CEFCCBDC(*(v316 + 7) + *(v325 + 72) * (v193 | (v188 << 6)), v186, &unk_1EC4C04B0, &unk_1CF9FCB20);
            v194 = 0;
LABEL_79:
            v195 = 1;
            v189(v186, v194, 1, v11);
            if (v190(v186, 1, v11) != 1)
            {
              v196 = *(v11 + 80);
              v314 = *(v326 + 96);
              v197 = v306;
              v324 = *v306;
              v321 = *(v306 + 2);
              v198 = sub_1CF9E6448();
              *&v313 = *(*(v198 - 8) + 32);
              v199 = v319;
              (v313)(v319 + v196, &v197[v196], v198);
              v200 = swift_allocObject();
              *(v200 + 16) = *&v197[v314];
              v201 = *(v326 + 80);
              v202 = v305;
              v203 = &v305[*(v326 + 96)];
              *v305 = v324;
              *(v202 + 2) = v321;
              (v313)(&v202[v201], v199 + v196, v198);
              v195 = 0;
              *v203 = sub_1CF485B60;
              v203[1] = v200;
              v190 = v317;
              v189 = v318;
              v11 = v326;
            }

            v204 = v305;
            v189(v305, v195, 1, v11);
            v205 = v300;
            sub_1CEFE55D0(v204, v300, &qword_1EC4BE1C0, &unk_1CFA058B0);
            if (v190(v205, 1, v11) == 1)
            {

              v73 = v307;
              goto LABEL_91;
            }

            v206 = *v205;
            v207 = v205[1];
            v208 = v205[2];
            v209 = *(v11 + 80);
            v210 = *(v11 + 96);
            v211 = *(v205 + v210 + 8);
            *&v324 = *(v205 + v210);
            v212 = v320;
            v213 = (v320 + v210);
            *v320 = v206;
            *(v212 + 1) = v207;
            *(v212 + 2) = v208;
            v214 = sub_1CF9E6448();
            v314 = *(v214 - 8);
            v215 = *(v314 + 32);
            v216 = v212 + v209;
            v217 = v205 + v209;
            v218 = v211;
            v219 = v324;
            v321 = v214;
            v215(v216, v217);
            *v213 = v219;
            v213[1] = v218;
            if (v207)
            {
              v220 = v315;
              (*(**(v310 + 2) + 160))(&v340, &v348, &v346, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v315 = v220;
              if (v220)
              {

                sub_1CEFCCC44(v320, &unk_1EC4C04B0, &unk_1CF9FCB20);
                goto LABEL_128;
              }

              v221 = v340;
              v222 = v320;
              if (!v340)
              {
                sub_1CF40B8D0(v219, v218, 0, v310);

                sub_1CEFCCC44(v222, &unk_1EC4C04B0, &unk_1CF9FCB20);
                v74 = v307;
                goto LABEL_37;
              }

              v223 = v299;
              sub_1CEFCCBDC(v320, v299, &unk_1EC4C04B0, &unk_1CF9FCB20);
              v224 = *v223;

              v225 = v326;

              *&v313 = v221;
              if (((v224 >> 58) & 0x3C | (v224 >> 1) & 3) == 0x1E)
              {
                *&v324 = *((v224 & 0xFFFFFFFFFFFFFF9) + 0x10);
                sub_1CEFD09A0(v324);
                sub_1CEFD0A98(v224);
              }

              else
              {
                v226 = swift_allocObject();
                *(v226 + 16) = v224;
                *&v324 = v226 | 0x7000000000000004;
              }

              v227 = v293;
              v312 = *(v225 + 80);
              v228 = v319;
              sub_1CEFCCBDC(v222, v319, &unk_1EC4C04B0, &unk_1CF9FCB20);
              v229 = v228;
              v230 = *v228;

              *&v311 = *(v225 + 80);

              sub_1CF9042A4(v230);
              v309 = v231;
              sub_1CEFD0A98(v230);
              sub_1CEFCCBDC(v222, v227, &unk_1EC4C04B0, &unk_1CF9FCB20);
              v232 = (*(v325 + 80) + 32) & ~*(v325 + 80);
              v233 = swift_allocObject();
              v234 = v310;
              *(v233 + 16) = sub_1CF481110;
              *(v233 + 24) = v234;
              sub_1CEFE55D0(v227, v233 + v232, &unk_1EC4C04B0, &unk_1CF9FCB20);

              v235 = v313;
              v236 = v324;
              sub_1CF907AAC(v313, v324, v309, sub_1CF4812B0, v233);

              sub_1CEFD0A98(v236);

              v237 = *(v314 + 8);
              v238 = v321;
              v237(v319 + v311, v321);
              v237((v299 + v312), v238);
              v187 = v320;
              v186 = v306;
            }

            else
            {
              sub_1CF40B8D0(v219, v218, 0, v310);
              v187 = v320;
              v186 = v306;
            }

            sub_1CEFCCC44(v187, &unk_1EC4C04B0, &unk_1CF9FCB20);
            v11 = v326;
          }

          if (v303 <= v185 + 1)
          {
            v191 = (v185 + 1);
          }

          else
          {
            v191 = v303;
          }

          v192 = v191 - 1;
          v190 = v317;
          v189 = v318;
          while (1)
          {
            v188 = v185 + 1;
            if (__OFADD__(v185, 1))
            {
              break;
            }

            if (v188 >= v303)
            {
              v184 = 0;
              v194 = 1;
              v185 = v192;
              goto LABEL_79;
            }

            v184 = *(v302 + v188);
            ++v185;
            if (v184)
            {
              v185 = v188;
              goto LABEL_78;
            }
          }

          __break(1u);
          goto LABEL_137;
        }

        v163 = *(v162 + 16);
        v164 = *(v11 + 80);
        v165 = *(v326 + 96);
        *v142 = *v162;
        *(v142 + 16) = v163;
        v166 = sub_1CF9E6448();
        v167 = *(v166 - 8);
        v168 = *(v167 + 32);
        v169 = v162;
        v170 = v167 + 32;
        v318 = *(v169 + v165);
        v168(v142 + v164, v169 + v164, v166);
        *(v142 + v165) = v318;
        v171 = v326;
        v172 = v313;
        sub_1CEFCCBDC(v142, v313, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v173 = *v172;

        *&v318 = *(v171 + 80);

        v174 = sub_1CF90C94C(v173);
        sub_1CEFD0A98(v173);
        v175 = (v170 - 24);
        if (v174)
        {
          (*v175)(v172 + v318, v166);
          if (([v174 selectedForMaterialization] & 1) == 0)
          {
            v142 = v314;
            v72 = &unk_1EC4C04B0;
            sub_1CEFCCC44(v314, &unk_1EC4C04B0, &unk_1CF9FCB20);

            v11 = v326;
            goto LABEL_42;
          }

          v176 = [v174 requestedExtent];

          v142 = v314;
          v96 = sub_1CEFCCC44(v314, &unk_1EC4C04B0, &unk_1CF9FCB20);
          v177 = v176 + 1 == 0;
          v72 = v307;
          v11 = v326;
          v143 = v324;
          if (!v177)
          {

            v74 = v72;
            goto LABEL_37;
          }
        }

        else
        {
          v72 = &unk_1EC4C04B0;
          sub_1CEFCCC44(v142, &unk_1EC4C04B0, &unk_1CF9FCB20);
          v96 = (*v175)(v172 + v318, v166);
          v11 = v326;
          v143 = v324;
        }
      }

      if (v297 <= v141 + 1)
      {
        v145 = v141 + 1;
      }

      else
      {
        v145 = v297;
      }

      v146 = v145 - 1;
      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          goto LABEL_134;
        }

        if (v144 >= v297)
        {
          v140 = 0;
          v148 = 1;
          v141 = v146;
          goto LABEL_55;
        }

        v140 = *(v302 + v144);
        ++v141;
        if (v140)
        {
          v141 = v144;
          goto LABEL_54;
        }
      }
    }

    if (*v73 != v71)
    {
LABEL_91:
      v74 = v73;
      goto LABEL_37;
    }
  }

  v75 = v348;
  v76 = v301 + 56;
  v77 = v349;
  v78 = v292;
  (*(v301 + 56))(v292, 1, 1, v298);
  v79 = v310;
  swift_beginAccess();

  sub_1CF1CA348(v78, v75, v77);
  swift_endAccess();
  v80 = v290;
  sub_1CEFCCBDC(v73, v290, &unk_1EC4C04C0, &qword_1CFA07B10);
  v81 = v294;
  sub_1CEFCCBDC(v80, v294, &unk_1EC4C04C0, &qword_1CFA07B10);
  v82 = *(v76 + 24);
  v83 = (v82 + 16) & ~v82;
  v84 = v55 + 7;
  v85 = (v55 + 7 + v83) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v87 = v86 + v83;
  v88 = v86;
  sub_1CEFE55D0(v80, v87, &unk_1EC4C04C0, &qword_1CFA07B10);
  *(v88 + v85) = v79;
  v89 = v295;
  if (v295)
  {

    sub_1CF40BD4C(v89, v81, v79);

    sub_1CEFCCC44(v81, &unk_1EC4C04C0, &qword_1CFA07B10);
    v74 = v73;
    goto LABEL_37;
  }

  v295 = v84;
  v296 = v88;
  v293 = ~v82;
  v90 = *(v73 + *(v298 + 56));
  v91 = *(v90 + 64);
  v301 = v90 + 64;
  v92 = 1 << *(v90 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & v91;
  v95 = v317;
  v306 = v317 + 8;
  v299 = (v92 + 63) >> 6;
  v322 = (v325 + 48);
  v323 = (v325 + 56);

  v308 = v90;

  v97 = 0;
  v98 = v326;
  v298 = v82;
  v72 = v95;
  v99 = v312;
  do
  {
    while (1)
    {
      while (1)
      {
        if (v94)
        {
          v101 = v97;
          goto LABEL_25;
        }

        v102 = v299 <= v97 + 1 ? v97 + 1 : v299;
        v103 = v102 - 1;
        do
        {
          v101 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            v330 = v336;
            v331 = v337;
            v332 = v338;
            v333 = v339;
            v328 = v334;
            v329 = v335;
            v286 = v96;
            sub_1CEFCCC44(&v328, &unk_1EC4BECD0, &unk_1CF9FEF80);
            type metadata accessor for NSFileProviderError(0);
            v327 = -1005;
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF042F54(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
            sub_1CF9E57D8();
            v287 = v350;
            sub_1CF40BD4C(v350, v286, v310);

            sub_1CEFCCC44(v286, &unk_1EC4C04C0, &qword_1CFA07B10);
            sub_1CEFCCC44(v72, &unk_1EC4C04C0, &qword_1CFA07B10);
            return;
          }

          if (v101 >= v299)
          {
            v94 = 0;
            v105 = 1;
            v97 = v103;
            goto LABEL_26;
          }

          v94 = *(v301 + 8 * v101);
          ++v97;
        }

        while (!v94);
        v97 = v101;
LABEL_25:
        v104 = __clz(__rbit64(v94));
        v94 &= v94 - 1;
        sub_1CEFCCBDC(*(v308 + 56) + *(v325 + 72) * (v104 | (v101 << 6)), v99, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v105 = 0;
LABEL_26:
        v106 = 1;
        v321 = *v323;
        (v321)(v99, v105, 1, v98);
        v320 = *v322;
        if (v320(v99, 1, v98) != 1)
        {
          v107 = *(v326 + 80);
          *&v313 = *(v326 + 96);
          v324 = *v99;
          v314 = *(v99 + 16);
          v108 = sub_1CF9E6448();
          v305 = *(*(v108 - 8) + 32);
          v109 = v319;
          (v305)(v319 + v107, v99 + v107, v108);
          v110 = swift_allocObject();
          *(v110 + 16) = *(v99 + v313);
          v111 = *(v326 + 80);
          v112 = v316;
          v113 = &v316[*(v326 + 96)];
          *v316 = v324;
          *(v112 + 2) = v314;
          v114 = v109 + v107;
          v115 = v317;
          v98 = v326;
          (v305)(&v112[v111], v114, v108);
          v106 = 0;
          *v113 = sub_1CF485B60;
          v113[1] = v110;
          v72 = v115;
        }

        v116 = v316;
        (v321)(v316, v106, 1, v98);
        v117 = v311;
        sub_1CEFE55D0(v116, v311, &qword_1EC4BE1C0, &unk_1CFA058B0);
        if (v320(v117, 1, v98) == 1)
        {

          v135 = v294;
          sub_1CF40BD4C(0, v294, v310);

          sub_1CEFCCC44(v135, &unk_1EC4C04C0, &qword_1CFA07B10);
          v74 = v307;
          goto LABEL_37;
        }

        v118 = *(v117 + 16);
        v119 = v72;
        v314 = *(v98 + 80);
        v120 = v318;
        v121 = *(v98 + 96);
        *v318 = *v117;
        *(v120 + 16) = v118;
        v122 = sub_1CF9E6448();
        v123 = *(v122 - 8);
        v124 = *(v123 + 32);
        v125 = v123 + 32;
        v313 = *(v117 + v121);
        v126 = v120 + v314;
        v127 = v117 + v314;
        *&v324 = v122;
        v314 = v124;
        v124(v126, v127);
        *(v120 + v121) = v313;
        sub_1CEFCCBDC(v120, v119, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v128 = *v119;

        v129 = *(v98 + 80);

        v130 = sub_1CF90C94C(v128);
        sub_1CEFD0A98(v128);
        *&v313 = v125;
        v131 = (v125 - 24);
        if (v130)
        {
          break;
        }

        sub_1CEFCCC44(v120, &unk_1EC4C04B0, &unk_1CF9FCB20);
        v100 = v317;
        v96 = (*v131)(v317 + v129, v324);
        v99 = v312;
        v98 = v326;
        v72 = v100;
      }

      v132 = *v131;
      v133 = v317;
      (*v131)(v317 + v129, v324);
      v72 = v133;
      if ([v130 selectedForMaterialization])
      {
        break;
      }

      sub_1CEFCCC44(v318, &unk_1EC4C04B0, &unk_1CF9FCB20);

      v99 = v312;
      v98 = v326;
    }

    v300 = v132;
    v305 = v131;
    v134 = [v130 requestedExtent];

    v96 = sub_1CEFCCC44(v318, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v99 = v312;
    v98 = v326;
  }

  while (v134 == -1);
  v239 = v308;

  v240 = 1 << *(v239 + 32);
  v241 = -1;
  if (v240 < 64)
  {
    v242 = ~(-1 << v240);
  }

  else
  {
    v242 = -1;
  }

  v243 = v242 & *(v239 + 64);
  v317 = (v304 + 8);
  v299 = (v240 + 63) >> 6;

  v244 = 0;
  v245 = -1;
  v246 = v301;
LABEL_96:
  v306 = v245;
  *&v311 = v241;
  while (1)
  {
    if (!v243)
    {
      if (v299 <= v244 + 1)
      {
        v251 = v244 + 1;
      }

      else
      {
        v251 = v299;
      }

      v252 = v251 - 1;
      v248 = v303;
      v249 = v304;
      v250 = v309;
      while (1)
      {
        v247 = v244 + 1;
        if (__OFADD__(v244, 1))
        {
          break;
        }

        if (v247 >= v299)
        {
          v243 = 0;
          v254 = 1;
          v244 = v252;
          goto LABEL_109;
        }

        v243 = *(v246 + 8 * v247);
        ++v244;
        if (v243)
        {
          v244 = v247;
          goto LABEL_108;
        }
      }

LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return;
    }

    v247 = v244;
    v248 = v303;
    v249 = v304;
    v250 = v309;
LABEL_108:
    v253 = __clz(__rbit64(v243));
    v243 &= v243 - 1;
    sub_1CEFCCBDC(*(v308 + 56) + *(v325 + 72) * (v253 | (v247 << 6)), v248, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v254 = 0;
LABEL_109:
    v255 = 1;
    (v321)(v248, v254, 1, v98);
    if (v320(v248, 1, v98) != 1)
    {
      v256 = *(v98 + 80);
      v312 = *(v98 + 96);
      v257 = v303;
      v318 = *v303;
      v316 = *(v303 + 2);
      v258 = v314;
      (v314)(v319 + v256, &v303[v256], v324);
      v259 = swift_allocObject();
      *(v259 + 16) = *&v257[v312];
      v260 = *(v98 + 80);
      v261 = v302;
      v262 = (v302 + *(v98 + 96));
      *v302 = v318;
      *(v261 + 2) = v316;
      v258(v261 + v260, v319 + v256, v324);
      v255 = 0;
      *v262 = sub_1CF4812A8;
      v262[1] = v259;
      v250 = v309;
      v249 = v304;
      v98 = v326;
    }

    v263 = v302;
    (v321)(v302, v255, 1, v98);
    v264 = v297;
    sub_1CEFE55D0(v263, v297, &qword_1EC4BE1C0, &unk_1CFA058B0);
    if (v320(v264, 1, v98) == 1)
    {
      break;
    }

    v265 = *(v264 + 16);
    v266 = *(v98 + 80);
    v267 = *(v98 + 96);
    *v250 = *v264;
    *(v250 + 16) = v265;
    v318 = *(v264 + v267);
    (v314)(v250 + v266, v264 + v266, v324);
    *(v250 + v267) = v318;
    sub_1CEFCCBDC(v250, v249, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v268 = *v249;

    *&v318 = *(v98 + 80);

    v269 = sub_1CF90C94C(v268);
    sub_1CEFD0A98(v268);
    if (v269)
    {
      v270 = [v269 requestedExtent];
      v272 = v271;

      sub_1CEFCCC44(v309, &unk_1EC4C04B0, &unk_1CF9FCB20);
      (v300)(v249 + v318, v324);
      v246 = v301;
      v241 = v311;
      if (v272 != -1)
      {
        if (__OFADD__(v270, v272))
        {
          goto LABEL_138;
        }

        if (v270 >= v306)
        {
          v245 = v306;
        }

        else
        {
          v245 = v270;
        }

        if (v306 == -1)
        {
          v245 = v270;
        }

        if (&v270[v272] > v311)
        {
          v241 = &v270[v272];
        }

        goto LABEL_96;
      }
    }

    else
    {
      sub_1CEFCCC44(v309, &unk_1EC4C04B0, &unk_1CF9FCB20);
      (v300)(v249 + v318, v324);
      v246 = v301;
    }
  }

  v273 = *(v310 + 4);
  v274 = v315;
  (*(*v273 + 656))(&v334, &v348, &v346, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v274)
  {
    v72 = v307;
    v96 = v294;
    if (!v338)
    {
      goto LABEL_135;
    }

    v315 = 0;
    sub_1CEFCCC44(v294, &unk_1EC4C04C0, &qword_1CFA07B10);
    v342 = v336;
    v343 = v337;
    v344 = v338;
    v345 = v339;
    v340 = v334;
    v341 = v335;
    if (v311 >= v306)
    {
      v275 = v273[2];
      v276 = v289;
      sub_1CEFCCBDC(v72, v289, &unk_1EC4C04C0, &qword_1CFA07B10);
      v326 = v348;
      LODWORD(v325) = v349;
      v277 = (v298 + 40) & v293;
      v278 = (v295 + v277) & 0xFFFFFFFFFFFFFFF8;
      v279 = (v278 + 23) & 0xFFFFFFFFFFFFFFF8;
      v280 = swift_allocObject();
      v281 = v310;
      v280[2] = v310;
      v280[3] = sub_1CF481118;
      v280[4] = v296;
      sub_1CEFE55D0(v276, v280 + v277, &unk_1EC4C04C0, &qword_1CFA07B10);
      v282 = (v280 + v278);
      v73 = v307;
      *v282 = sub_1CF481110;
      v282[1] = v281;
      *(v280 + v279) = 0;
      v283 = v280 + ((v279 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v283 = v326;
      v283[8] = v325;
      v284 = *(*v275 + 800);
      swift_retain_n();

      v285 = 0;
      v284(&v348, &v340, v306, v311, sub_1CF4811C0, v280);

      v330 = v342;
      v331 = v343;
      v332 = v344;
      v333 = v345;
      v328 = v340;
      v329 = v341;
      sub_1CEFCCC44(&v328, &unk_1EC4BE330, &unk_1CF9FF010);
      goto LABEL_91;
    }

    goto LABEL_139;
  }

  sub_1CEFCCC44(v294, &unk_1EC4C04C0, &qword_1CFA07B10);

LABEL_128:
  v74 = v307;
LABEL_37:
  sub_1CEFCCC44(v74, &unk_1EC4C04C0, &qword_1CFA07B10);
}

void sub_1CF40423C(void *a1, unsigned int a2, uint64_t a3, void *a4, int a5)
{
  v6 = v5;
  LODWORD(v357) = a5;
  v356 = a4;
  v350 = a2;
  v346 = a1;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v347 = *(v372 - 8);
  v8 = *(v347 + 64);
  MEMORY[0x1EEE9AC00](v372);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v348 = (&v322 - v9);
  MEMORY[0x1EEE9AC00](v10);
  *&v366 = &v322 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v359 = &v322 - v9;
  v358 = sub_1CF9E6118();
  v349 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358);
  v360 = (&v322 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v362 = &v322 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v368 = (&v322 - v9);
  MEMORY[0x1EEE9AC00](v16);
  v367 = &v322 - v9;
  MEMORY[0x1EEE9AC00](v17);
  v369 = (&v322 - v9);
  MEMORY[0x1EEE9AC00](v18);
  v352 = (&v322 - v9);
  MEMORY[0x1EEE9AC00](v19);
  v361 = (&v322 - v9);
  MEMORY[0x1EEE9AC00](v20);
  v355 = &v322 - v9;
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v322 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v371 = (&v322 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  *&v364 = &v322 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v370 = (&v322 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v363 = (&v322 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v354 = &v322 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v322 - v34);
  v36 = sub_1CF9E64A8();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v322 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *(v6 + 64);
  *v40 = v41;
  (*(v37 + 104))(v40, *MEMORY[0x1E69E8020], v36, v38);
  v42 = v41;
  v43 = sub_1CF9E64D8();
  v45 = *(v37 + 8);
  v44 = (v37 + 8);
  v45(v40, v36);
  if ((v43 & 1) == 0)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v328 = sub_1CF772388(v328);
LABEL_51:
    v35 = *v328->tree;
    v163 = (*(v347 + 80) + 32) & ~*(v347 + 80);
    v324 = v163;
    if (!v35)
    {
      v285 = v340;
      *(v340 + 16) = v328;
      v175 = 0;
      v286 = *(v285 + 16);
      v287 = *v286->tree;
      v35 = v351;
      goto LABEL_113;
    }

    v164 = 0;
    v165 = (v328 + v163);
    v166 = *(v347 + 72);
    v325 = -v166;
    v326 = a3;
    v329 = v43;
    v341 = v165;
    v339 = v166;
LABEL_53:
    v167 = v166 * v164;
    v168 = v166 + v166 * (v164 - v35);
    *&v344 = v35;
    while (1)
    {
      v342 = v164;
      v335 = v167;
      v169 = v359;
      sub_1CEFCCBDC(v165 + v167, v359, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v170 = v372;
      v171 = *(v372 + 64);
      v172 = *(v372 + 80);
      v174 = *v169;
      v173 = v169[1];
      v175 = v367;
      *v367 = *v169;
      *(v175 + 1) = v173;
      a3 = v173;
      v176 = sub_1CF9E6448();
      v177 = *(v176 - 8);
      v337 = *(v177 + 32);
      v338 = v176;
      v336 = v177 + 32;
      v337(&v175[v171], v169 + v171);
      v178 = &v175[*(v170 + 80)];
      v179 = swift_allocObject();
      *(v179 + 16) = *(v169 + v172);
      *v178 = sub_1CF485B44;
      v178[1] = v179;
      if (((v174 >> 58) & 0x3C | (v174 >> 1) & 3) == 0x2A)
      {
        v180 = v331;
        if (v330)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v180 = v333;
        if (v332)
        {
LABEL_61:
          sub_1CEFCCC44(v367, &unk_1EC4C5230, &unk_1CF9FE4C0);
          v22 = v365;
          v6 = v345;
          v43 = v329;
          v44 = v353;
          v35 = v344;
          v182 = v335;
LABEL_62:
          v183 = &v35[-1].isa + 7;
          v184 = v341;
          v164 = v342;
          if (v342 >= (&v35[-1].isa + 7))
          {
            goto LABEL_110;
          }

          v323 = v341 + v182;
          v175 = (v325 * v35);
          v35 = (v35 - 1);
          v185 = v339 * v183;
          while (2)
          {
            *&v344 = v35;
            v186 = v366;
            sub_1CEFCCBDC(v184 + v185, v366, &unk_1EC4C5230, &unk_1CF9FE4C0);
            v187 = v372;
            v188 = *(v372 + 64);
            v189 = *(v372 + 80);
            a3 = *v186;
            v190 = v186[1];
            v191 = v368;
            v368->super.isa = *v186;
            *v191->_anon_8 = v190;
            v334 = v190;
            (v337)(v191 + v188, v186 + v188, v338);
            v192 = (v191 + *(v187 + 80));
            v193 = swift_allocObject();
            *(v193 + 16) = *(v186 + v189);
            *v192 = sub_1CF485B44;
            v192[1] = v193;
            if (((a3 >> 58) & 0x3C | (a3 >> 1) & 3) == 0x2A)
            {
              v194 = v331;
              if ((v330 & 1) == 0)
              {
                goto LABEL_70;
              }

LABEL_64:
              sub_1CEFCCC44(v368, &unk_1EC4C5230, &unk_1CF9FE4C0);
              v44 = v353;
              v6 = v345;
              v35 = v344;
            }

            else
            {
              v194 = v333;
              if (v332)
              {
                goto LABEL_64;
              }

LABEL_70:
              sub_1CEFCCC44(v368, &unk_1EC4C5230, &unk_1CF9FE4C0);
              v181 = v334 < v194;
              v44 = v353;
              v6 = v345;
              v35 = v344;
              if (!v181)
              {
                v195 = v342;
                v22 = v365;
                if (v342 != v344)
                {
                  a3 = v323;
                  sub_1CEFE55D0(v323, v348, &unk_1EC4C5230, &unk_1CF9FE4C0);
                  v196 = v341;
                  if (v335 < v185 || a3 >= (v341 - v175))
                  {
                    swift_arrayInitWithTakeFrontToBack();
LABEL_77:
                    v196 = v341;
                  }

                  else if (v168)
                  {
                    swift_arrayInitWithTakeBackToFront();
                    goto LABEL_77;
                  }

                  sub_1CEFE55D0(v348, v196 + v185, &unk_1EC4C5230, &unk_1CF9FE4C0);
                  v195 = v342;
                }

                v164 = v195 + 1;
                v43 = v329;
                v165 = v341;
                v166 = v339;
                if (v164 < v35)
                {
                  goto LABEL_53;
                }

LABEL_110:
                v288 = v340;
                *(v340 + 16) = v328;
                if (v164 < 0)
                {
                  __break(1u);
                }

                else
                {
                  v286 = *(v288 + 16);
                  v287 = *v286->tree;
                  v35 = v351;
                  a3 = v326;
                  if (v287 >= v164)
                  {
                    v175 = v164;
LABEL_113:
                    v368 = v286;
                    swift_unknownObjectRetain();
                    v342 = v175;
                    if (v287 == v175)
                    {
LABEL_114:
                      swift_beginAccess();
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v373[0] = *(v6 + v43);
                      *(v6 + v43) = 0x8000000000000000;
                      sub_1CF1D35F8(v368, v346, v350, isUniquelyReferenced_nonNull_native);
                      *(v6 + v43) = v373[0];
                      swift_endAccess();
                      v290 = *(v340 + 16);
                      v291 = *v290->tree;
                      v292 = v342;
                      if (v291 < v342)
                      {
                        __break(1u);
                      }

                      else
                      {
                        swift_unknownObjectRetain();
                        if (!v292)
                        {
                          goto LABEL_116;
                        }
                      }

                      sub_1CF4773B0(v290, v290 + v324, v292, (2 * v291) | 1);
                      v314 = v313;
                      v290, v315, v316, v317, v318, v319, v320, v321;
                      v290 = v314;
LABEL_116:
                      v300 = v340;
                      v301 = *(v340 + 16);
                      *(v340 + 16) = v290;
                      v301, v293, v294, v295, v296, v297, v298, v299;
                      v62 = *(v300 + 16);
LABEL_13:
                      v63 = *(v62 + 16);
                      v64 = *(a3 + 16);
                      a3, v55, v56, v57, v58, v59, v60, v61;
                      if (v63 == v64)
                      {
                        swift_beginAccess();
                        sub_1CF1C9948(0, v346, v350);
                        swift_endAccess();
                      }

                      if (v44)
                      {
                        swift_getErrorValue();
                        v359 = Error.prettyDescription.getter(v375[66], v375[67]);
                        goto LABEL_21;
                      }

                      sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
                      v359 = sub_1CF9E7598();
                      if ((*(v6 + 82) & 0x20) == 0)
                      {
LABEL_21:
                        v43 = v372;
                        v73 = *(v340 + 16);
                        v345 = v22 + 8;
                        v368 = (v347 + 48);
                        v369 = (v347 + 56);
                        v352 = (v349 + 1);
                        if (v346)
                        {
                          v74 = 0x6873617274;
                        }

                        else
                        {
                          v74 = 1953460082;
                        }

                        v75 = 0xE500000000000000;
                        if (!v346)
                        {
                          v75 = 0xE400000000000000;
                        }

                        v341 = v75;
                        v342 = v74;
                        v360 = v73;

                        v76 = 0;
                        *&v77 = 136315650;
                        v344 = v77;
                        v78 = v355;
                        while (2)
                        {
                          v81 = *v360->tree;
                          v82 = v364;
                          if (v76 == v81)
                          {
                            v367 = v76;
                            v83 = 1;
                          }

                          else
                          {
                            if (v76 >= v81)
                            {
                              __break(1u);
                              goto LABEL_118;
                            }

                            sub_1CEFCCBDC(v360 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v76, v364, &unk_1EC4C5230, &unk_1CF9FE4C0);
                            v83 = 0;
                            v367 = (v76 + 1);
                          }

                          v84 = *v369;
                          v85 = 1;
                          (*v369)(v82, v83, 1, v43);
                          isa = v368->super.isa;
                          if ((v368->super.isa)(v82, 1, v43) != 1)
                          {
                            v87 = *(v372 + 64);
                            v351 = *(v372 + 80);
                            v371 = isa;
                            v88 = v364;
                            v89 = *(v364 + 8);
                            v370 = *v364;
                            *&v366 = v89;
                            v90 = sub_1CF9E6448();
                            v91 = *(*(v90 - 8) + 32);
                            v92 = v365;
                            v91(v365 + v87, v88 + v87, v90);
                            v93 = swift_allocObject();
                            *(v93 + 16) = *(&v351->isa + v88);
                            v94 = *(v372 + 64);
                            v95 = v363;
                            v96 = (v363 + *(v372 + 80));
                            v97 = v366;
                            v363->super.isa = v370;
                            *v95->_anon_8 = v97;
                            v98 = v92 + v87;
                            v78 = v355;
                            v43 = v372;
                            v91(v95 + v94, v98, v90);
                            v85 = 0;
                            *v96 = sub_1CF481788;
                            v96[1] = v93;
                            isa = v371;
                          }

                          v99 = v363;
                          v84(v363, v85, 1, v43);
                          v100 = v99;
                          v101 = v354;
                          sub_1CEFE55D0(v100, v354, &unk_1EC4C04D0, &unk_1CFA12B00);
                          if ((isa)(v101, 1, v43) == 1)
                          {

                            v360, v154, v155, v156, v157, v158, v159, v160;
                            goto LABEL_44;
                          }

                          v102 = *(v43 + 64);
                          v103 = *(v43 + 80);
                          *v78 = *v101;
                          v104 = sub_1CF9E6448();
                          v370 = *(v104 - 8);
                          v105 = *(v370 + 4);
                          v366 = *&v101[v103];
                          v105(&v78[v102], &v101[v102], v104);
                          *&v78[v103] = v366;
                          v106 = fpfs_current_or_default_log();
                          v107 = v362;
                          sub_1CF9E6128();
                          v108 = v361;
                          sub_1CEFCCBDC(v78, v361, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          v109 = v359;
                          v110 = sub_1CF9E6108();
                          v111 = sub_1CF9E7288();

                          LODWORD(v366) = v111;
                          v112 = os_log_type_enabled(v110, v111);
                          v371 = v104;
                          if (v112)
                          {
                            v351 = v110;
                            v113 = swift_slowAlloc();
                            v114 = swift_slowAlloc();
                            v115 = swift_slowAlloc();
                            v373[0] = v115;
                            *v113 = v344;
                            v348 = v114;
                            v349 = v115;
                            if (v350)
                            {
                              v117 = v341;
                              v116 = v342;
                              if (v350 == 1)
                              {
                                v375[0] = 0x284449656C6966;
                                v375[1] = 0xE700000000000000;
                                v376 = v346;
                                goto LABEL_41;
                              }
                            }

                            else
                            {
                              v375[0] = 0x284449636F64;
                              v375[1] = 0xE600000000000000;
                              LODWORD(v376) = v346;
LABEL_41:
                              v118 = sub_1CF9E7F98();
                              v120 = v119;
                              MEMORY[0x1D3868CC0](v118);
                              v120, v121, v122, v123, v124, v125, v126, v127;
                              MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                              v116 = v375[0];
                              v117 = v375[1];
                            }

                            v128 = sub_1CEFD0DF0(v116, v117, v373);
                            v117, v129, v130, v131, v132, v133, v134, v135;
                            *(v113 + 4) = v128;
                            *(v113 + 12) = 2080;
                            v136 = v361;
                            v79 = v365;
                            sub_1CEFCCBDC(v361, v365, &unk_1EC4C5230, &unk_1CF9FE4C0);
                            v137 = *v79;
                            v138 = *(v372 + 64);

                            (*(v370 + 1))(v79 + v138, v371);
                            sub_1CEFCCC44(v136, &unk_1EC4C5230, &unk_1CF9FE4C0);
                            v139 = sub_1CEFD11AC(v137);
                            v141 = v140;
                            sub_1CEFD0A98(v137);
                            v142 = sub_1CEFD0DF0(v139, v141, v373);
                            v141, v143, v144, v145, v146, v147, v148, v149;
                            *(v113 + 14) = v142;
                            *(v113 + 22) = 2112;
                            *(v113 + 24) = v109;
                            v150 = v348;
                            v348->super.isa = v359;
                            v151 = v109;
                            v152 = v351;
                            _os_log_impl(&dword_1CEFC7000, v351, v366, "propagation <fs:%s reason:%s> completed: %@", v113, 0x20u);
                            sub_1CEFCCC44(v150, &qword_1EC4BE350, &unk_1CF9FC3B0);
                            MEMORY[0x1D386CDC0](v150, -1, -1);
                            v153 = v349;
                            swift_arrayDestroy();
                            MEMORY[0x1D386CDC0](v153, -1, -1);
                            MEMORY[0x1D386CDC0](v113, -1, -1);

                            (*v352)(v362, v358);
                            v22 = v353;
                            v6 = v355;
                          }

                          else
                          {
                            sub_1CEFCCC44(v108, &unk_1EC4C5230, &unk_1CF9FE4C0);

                            (*v352)(v107, v358);
                            v79 = v365;
                            v6 = v78;
                            v22 = v353;
                          }

                          sub_1CEFCCBDC(v6, v79, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          sub_1CEFD0A98(*v79);
                          a3 = &unk_1EC4C5230;
                          v43 = v372;
                          *&v366 = *(v372 + 64);
                          v44 = *(v79 + *(v372 + 80));
                          v375[3] = &type metadata for SQLDatabaseReadWriteAccessor;
                          v375[4] = &off_1F4C17938;
                          v375[0] = v356;
                          LOBYTE(v375[1]) = v357;
                          v80 = v356;
                          v44(v375, v22);

                          sub_1CEFCCC44(v6, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          sub_1CEFCCC44(v375, &unk_1EC4C1B30, &qword_1CFA05300);
                          (*(v370 + 1))(v79 + v366, v371);
                          v78 = v6;
                          v76 = v367;
                          continue;
                        }
                      }

                      v351 = v35;
                      v197 = *(v340 + 16);
                      v354 = v22 + 8;
                      v367 = (v347 + 48);
                      v368 = (v347 + 56);
                      v361 = (v349 + 1);
                      if (v346)
                      {
                        v198 = 0x6873617274;
                      }

                      else
                      {
                        v198 = 1953460082;
                      }

                      v199 = 0xE500000000000000;
                      if (!v346)
                      {
                        v199 = 0xE400000000000000;
                      }

                      v348 = v199;
                      v349 = v198;
                      v363 = v197;

                      v200 = 0;
                      v44 = &unk_1EC4C5230;
                      *&v201 = 136315394;
                      v353 = v201;
                      v202 = v360;
                      v43 = v352;
                      v22 = v371;
                      v6 = v372;
                      while (1)
                      {
LABEL_88:
                        v203 = *v363->tree;
                        if (v200 == v203)
                        {
                          *&v366 = v200;
                          v204 = 1;
                        }

                        else
                        {
                          if (v200 >= v203)
                          {
                            goto LABEL_119;
                          }

                          sub_1CEFCCBDC(v363 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v200, v22, &unk_1EC4C5230, &unk_1CF9FE4C0);
                          v204 = 0;
                          *&v366 = v200 + 1;
                        }

                        v205 = v368->super.isa;
                        v206 = 1;
                        (v368->super.isa)(v22, v204, 1, v6);
                        v207 = *v367;
                        if ((*v367)(v22, 1, v6) != 1)
                        {
                          v208 = *(v372 + 64);
                          v209 = *(v372 + 80);
                          v362 = *v371;
                          v357 = v371[1];
                          v210 = sub_1CF9E6448();
                          v211 = *(*(v210 - 8) + 32);
                          *&v364 = v207;
                          v212 = v365;
                          v211(v365 + v208, v371 + v208, v210);
                          v213 = swift_allocObject();
                          v214 = v372;
                          *(v213 + 16) = *(v371 + v209);
                          v215 = *(v214 + 64);
                          v216 = v370;
                          v217 = (v370 + *(v372 + 80));
                          v218 = v357;
                          *v370 = v362;
                          *(v216 + 1) = v218;
                          v219 = (v212 + v208);
                          v202 = v360;
                          v220 = v372;
                          v211(v216 + v215, v219, v210);
                          v207 = v364;
                          v6 = v220;
                          v206 = 0;
                          *v217 = sub_1CF485B44;
                          v217[1] = v213;
                          v22 = v371;
                          v43 = v352;
                        }

                        v221 = v370;
                        v205(v370, v206, 1, v6);
                        v222 = v351;
                        sub_1CEFE55D0(v221, v351, &unk_1EC4C04D0, &unk_1CFA12B00);
                        if (v207(v222, 1, v6) == 1)
                        {
                          v363, v223, v224, v225, v226, v227, v228, v229;
                          v278 = swift_allocObject();
                          v280 = v345;
                          v279 = v346;
                          v281 = v340;
                          *(v278 + 16) = v340;
                          *(v278 + 24) = v279;
                          *(v278 + 32) = v350;
                          *(v278 + 40) = 0;
                          v282 = *(*v280 + 456);

                          v283 = 0;

                          v282("itemDidPropagate(id:error:with:)", 32, 2, 0, 0, 0, sub_1CF4817C0, v281, sub_1CF481818, v278);

LABEL_44:

                          return;
                        }

                        v230 = *(v6 + 64);
                        v231 = *(v6 + 80);
                        *v43 = *&v222->isa;
                        v232 = sub_1CF9E6448();
                        v233 = *(v232 - 8);
                        v234 = *(v233 + 4);
                        v364 = *(&v222->isa + v231);
                        v362 = v232;
                        v234(v43 + v230, v222 + v230);
                        *(v43 + v231) = v364;
                        v235 = fpfs_current_or_default_log();
                        sub_1CF9E6128();
                        v236 = v369;
                        v44 = &unk_1EC4C5230;
                        a3 = &unk_1CF9FE4C0;
                        sub_1CEFCCBDC(v43, v369, &unk_1EC4C5230, &unk_1CF9FE4C0);
                        v237 = sub_1CF9E6108();
                        LODWORD(v364) = sub_1CF9E7288();
                        if (os_log_type_enabled(v237, v364))
                        {
                          break;
                        }

                        sub_1CEFCCC44(v236, &unk_1EC4C5230, &unk_1CF9FE4C0);

                        (*v361)(v202, v358);
                        sub_1CEFCCC44(v43, &unk_1EC4C5230, &unk_1CF9FE4C0);
                        v6 = v372;
                        v200 = v366;
                      }

                      v357 = v237;
                      v238 = swift_slowAlloc();
                      v239 = swift_slowAlloc();
                      v355 = v233;
                      v356 = v239;
                      v373[0] = v239;
                      *v238 = v353;
                      if (v350)
                      {
                        v241 = v348;
                        v240 = v349;
                        if (v350 == 1)
                        {
                          v375[0] = 0x284449656C6966;
                          v375[1] = 0xE700000000000000;
                          v376 = v346;
                          goto LABEL_100;
                        }
                      }

                      else
                      {
                        v375[0] = 0x284449636F64;
                        v375[1] = 0xE600000000000000;
                        LODWORD(v376) = v346;
LABEL_100:
                        v242 = sub_1CF9E7F98();
                        v244 = v243;
                        MEMORY[0x1D3868CC0](v242);
                        v244, v245, v246, v247, v248, v249, v250, v251;
                        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                        v240 = v375[0];
                        v241 = v375[1];
                      }

                      v252 = sub_1CEFD0DF0(v240, v241, v373);
                      v241, v253, v254, v255, v256, v257, v258, v259;
                      *(v238 + 4) = v252;
                      *(v238 + 12) = 2080;
                      v260 = v369;
                      v261 = v365;
                      sub_1CEFCCBDC(v369, v365, &unk_1EC4C5230, &unk_1CF9FE4C0);
                      v262 = *v261;
                      v263 = v372;
                      v264 = *(v372 + 64);

                      (*(v355 + 1))(v261 + v264, v362);
                      sub_1CEFCCC44(v260, &unk_1EC4C5230, &unk_1CF9FE4C0);
                      v265 = sub_1CEFD11AC(v262);
                      a3 = v266;
                      sub_1CEFD0A98(v262);
                      v267 = sub_1CEFD0DF0(v265, a3, v373);
                      a3, v268, v269, v270, v271, v272, v273, v274;
                      *(v238 + 14) = v267;
                      v6 = v263;
                      v275 = v357;
                      _os_log_impl(&dword_1CEFC7000, v357, v364, "propagation <fs:%s reason:%s> completed, waiting for flush", v238, 0x16u);
                      v276 = v356;
                      swift_arrayDestroy();
                      MEMORY[0x1D386CDC0](v276, -1, -1);
                      v277 = v238;
                      v44 = &unk_1EC4C5230;
                      MEMORY[0x1D386CDC0](v277, -1, -1);

                      v202 = v360;
                      (*v361)(v360, v358);
                      v43 = v352;
                      sub_1CEFCCC44(v352, &unk_1EC4C5230, &unk_1CF9FE4C0);
                      v22 = v371;
                      v200 = v366;
                      goto LABEL_88;
                    }

LABEL_123:
                    v302 = (2 * v175) | 1;
                    v303 = v368;
                    sub_1CF4773B0(v368, v368 + v324, 0, v302);
                    v305 = v304;
                    v303, v306, v307, v308, v309, v310, v311, v312;
                    v368 = v305;
                    goto LABEL_114;
                  }
                }

                __break(1u);
                goto LABEL_123;
              }
            }

            v35 = (v35 - 1);
            v168 += v339;
            v185 -= v339;
            v175 += v339;
            v184 = v341;
            v164 = v342;
            if (v342 >= v35)
            {
              v22 = v365;
              v43 = v329;
              goto LABEL_110;
            }

            continue;
          }
        }
      }

      sub_1CEFCCC44(v367, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v181 = a3 < v180;
      v22 = v365;
      v6 = v345;
      v43 = v329;
      v44 = v353;
      v35 = v344;
      v182 = v335;
      if (v181)
      {
        goto LABEL_62;
      }

      v165 = v341;
      v164 = v342 + 1;
      v167 = v335 + v339;
      v168 += v339;
      if (v342 + 1 >= v344)
      {
        goto LABEL_110;
      }
    }
  }

  v44 = a3;
  if (!a3)
  {
    goto LABEL_9;
  }

  v374[0] = a3;
  v46 = a3;
  v47 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    goto LABEL_9;
  }

  if ((v375[4] & 1) == 0)
  {
    sub_1CF48183C(v375[0], v375[1], v375[2], v375[3], 0, v48, v49, v50);
    goto LABEL_8;
  }

  sub_1CF48183C(v375[0], v375[1], v375[2], v375[3], 1, v48, v49, v50);
  v51 = v343;
  sub_1CF7EB934(v346, v350, v356, v357, v375);
  if (v51)
  {

    return;
  }

  memcpy(v374, v375, sizeof(v374));
  v161 = sub_1CF08B99C(v374) == 1;
  v343 = 0;
  if (v161)
  {
    memcpy(v373, v375, sizeof(v373));
    sub_1CEFCCC44(v373, &unk_1EC4BFC20, &unk_1CFA0A290);
    goto LABEL_9;
  }

  memcpy(v373, v375, sizeof(v373));
  if (LOBYTE(v373[20]))
  {
    sub_1CEFCCC44(v373, &unk_1EC4BFC20, &unk_1CFA0A290);
    return;
  }

  v284 = v373[18];
  sub_1CEFCCC44(v373, &unk_1EC4BFC20, &unk_1CFA0A290);
  if ((v284 & 0x100) != 0)
  {
LABEL_9:
    v43 = qword_1EC4EBD78;
    swift_beginAccess();
    v52 = *(v6 + v43);
    if (!*(v52 + 16))
    {
      return;
    }

    v53 = sub_1CF7BF2C0(v346, v350);
    if ((v54 & 1) == 0)
    {
      return;
    }

    a3 = *(*(v52 + 56) + 8 * v53);
    v340 = swift_allocObject();
    *(v340 + 16) = a3;
    swift_bridgeObjectRetain_n();
    v365 = v22;
    *&v353 = v44;
    v345 = v6;
    if (v44)
    {
      v62 = a3;
      goto LABEL_13;
    }

    v65 = v343;
    sub_1CF408EF0(v346, v350, v6, v356, v357, v375);
    if (v65)
    {
      a3, v66, v67, v68, v69, v70, v71, v72;

      return;
    }

    v343 = 0;
    if ((v375[0] & 1) == 0)
    {
      a3, v66, v67, v68, v69, v70, v71, v72;

      return;
    }

    v327 = &v322;
    v333 = v375[1];
    v332 = LOBYTE(v375[2]);
    v331 = v375[3];
    v330 = LOBYTE(v375[4]);
    v328 = *(v340 + 16);
    v162 = swift_isUniquelyReferenced_nonNull_native();
    v351 = v35;
    if (v162)
    {
      goto LABEL_51;
    }

    goto LABEL_120;
  }
}

void sub_1CF405DEC(uint64_t *a1, void *a2, char *a3, int a4)
{
  v5 = v4;
  LODWORD(v336) = a4;
  v335 = a3;
  v348 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v338 = &v308 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v343 = (&v308 - v10);
  v337 = sub_1CF9E6118();
  *&v342 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v344 = &v308 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v340 = &v308 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v331 = (&v308 - v10);
  MEMORY[0x1EEE9AC00](v16);
  v350 = &v308 - v10;
  MEMORY[0x1EEE9AC00](v17);
  *&v333 = &v308 - v10;
  MEMORY[0x1EEE9AC00](v18);
  v347 = (&v308 - v10);
  MEMORY[0x1EEE9AC00](v19);
  v346 = (&v308 - v10);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v351 = &v308 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v349 = (&v308 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v345 = (&v308 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v341 = (&v308 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v334 = (&v308 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v339 = (&v308 - v31);
  v32 = sub_1CF9E64A8();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = (&v308 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v5[8];
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x1E69E8020], v32, v34);
  v38 = v37;
  v39 = sub_1CF9E64D8();
  (*(v33 + 8))(v36, v32);
  if ((v39 & 1) == 0)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v40 = a2;
  if (!a2)
  {
    goto LABEL_9;
  }

  v354[0] = a2;
  v41 = a2;
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    goto LABEL_9;
  }

  v43 = v355[2];
  if (LOBYTE(v355[3]) != 1)
  {
    sub_1CF481874(v355[0], v355[1], v355[2], 0);
    goto LABEL_8;
  }

  v43, v44, v45, v46, v47, v48, v49, v50;
  v51 = v325;
  sub_1CF7F5EA8(v348, v335, v336, v355);
  if (v51)
  {

    return;
  }

  memcpy(v354, v355, sizeof(v354));
  v173 = sub_1CF08B99C(v354) == 1;
  v325 = 0;
  if (v173)
  {
    memcpy(v353, v355, sizeof(v353));
    sub_1CEFCCC44(v353, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    goto LABEL_9;
  }

  memcpy(v353, v355, sizeof(v353));
  if (LOBYTE(v353[15]))
  {
    sub_1CEFCCC44(v353, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    return;
  }

  v251 = v353[13];
  sub_1CEFCCC44(v353, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  if ((v251 & 0x100) != 0)
  {
LABEL_9:
    v328 = v8;
    v352 = v7;
    v7 = qword_1EC4EBD70;
    swift_beginAccess();
    v52 = *(v5 + v7);
    if (!*v52->tree)
    {
      return;
    }

    v39 = v348;
    v53 = sub_1CEFE863C(v348);
    if ((v54 & 1) == 0)
    {
      v52, v54, v55, v56, v57, v58, v59, v60;
      return;
    }

    v61 = *(*v52[1].tester + 8 * v53);

    v52, v62, v63, v64, v65, v66, v67, v68;
    v69 = swift_allocObject();
    v324 = v69;
    *(v69 + 16) = v61;
    v70 = (v69 + 16);

    v332 = v40;
    v329 = v5;
    if (v40)
    {
LABEL_12:
      v78 = *(*v70)->tree;
      v79 = v61;
      v80 = *v61->tree;
      v79, v71, v72, v73, v74, v75, v76, v77;
      if (v78 == v80)
      {
        swift_beginAccess();
        sub_1CF1C9844(0, v39);
        swift_endAccess();
      }

      v81 = v331;
      if (v40)
      {
        swift_getErrorValue();
        v338 = Error.prettyDescription.getter(v355[66], v355[67]);
        v7 = v352;
      }

      else
      {
        sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
        v91 = sub_1CF9E7598();
        v92 = *(v5 + 82);
        v7 = v352;
        v338 = v91;
        if ((v92 & 0x20) != 0)
        {
          swift_beginAccess();
          v176 = *(v324 + 16);
          v334 = v346 + 1;
          v349 = (v328 + 56);
          v347 = (v328 + 48);
          v336 = (v342 + 8);

          v341 = v176;

          v32 = 0;
          *&v177 = 136315394;
          v333 = v177;
          while (1)
          {
            v178 = *v341->tree;
            v39 = v351;
            if (v32 == v178)
            {
              v343 = v32;
              v179 = 1;
              v5 = v348;
            }

            else
            {
              v5 = v348;
              if (v32 >= v178)
              {
                goto LABEL_86;
              }

              sub_1CEFCCBDC(v341 + ((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v32, v351, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v179 = 0;
              v343 = (v32 + 1);
            }

            v180 = *v349;
            v181 = 1;
            (*v349)(v39, v179, 1, v7);
            v182 = *v347;
            if ((*v347)(v39, 1, v7) != 1)
            {
              v183 = *(v7 + 64);
              *&v342 = v182;
              v184 = *(v352 + 80);
              v185 = *(v39 + 8);
              v340 = *v39;
              v335 = v185;
              v186 = sub_1CF9E6448();
              v187 = *(*(v186 - 8) + 32);
              v188 = v346;
              v187(v346 + v183, &v351[v183], v186);
              v189 = swift_allocObject();
              v190 = v352;
              *(v189 + 16) = *&v351[v184];
              v191 = *(v190 + 64);
              v192 = v345;
              v193 = (v345 + *(v352 + 80));
              v194 = v335;
              *v345 = v340;
              v192[1] = v194;
              v187(v192 + v191, v188 + v183, v186);
              v5 = v348;
              v181 = 0;
              *v193 = sub_1CF485B44;
              v193[1] = v189;
              v182 = v342;
              v81 = v331;
              v7 = v352;
            }

            v195 = v345;
            v180(v345, v181, 1, v7);
            v196 = v339;
            sub_1CEFE55D0(v195, v339, &unk_1EC4C04F0, &qword_1CFA12B10);
            if (v182(v196, 1, v7) == 1)
            {
              break;
            }

            v204 = *(v7 + 64);
            v205 = *(v7 + 80);
            v206 = v350;
            *v350 = *&v196->super.isa;
            v207 = sub_1CF9E6448();
            v208 = v81;
            v209 = *(v207 - 8);
            v210 = *(v209 + 32);
            v342 = *(&v196->super.isa + v205);
            v340 = v207;
            v210(v206 + v204, v196 + v204);
            *(v206 + v205) = v342;
            v211 = v344;
            v212 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            sub_1CEFCCBDC(v206, v208, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v213 = v5;
            v214 = sub_1CF9E6108();
            v215 = sub_1CF9E7288();
            if (os_log_type_enabled(v214, v215))
            {
              v216 = swift_slowAlloc();
              *&v342 = swift_slowAlloc();
              v353[0] = v342;
              *v216 = v333;
              v217 = v208;
              v218 = NSFileProviderItemIdentifier.description.getter(v213);
              LODWORD(v335) = v215;
              v220 = v219;

              v221 = sub_1CEFD0DF0(v218, v220, v353);
              v220, v222, v223, v224, v225, v226, v227, v228;
              *(v216 + 4) = v221;
              *(v216 + 12) = 2080;
              v229 = v346;
              sub_1CEFCCBDC(v217, v346, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v230 = *v229;
              v231 = *(v352 + 64);

              (*(v209 + 8))(v229 + v231, v340);
              v232 = v217;
              sub_1CEFCCC44(v217, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v233 = sub_1CF913458(v230);
              v235 = v234;
              sub_1CEFD0A98(v230);
              v7 = v352;
              v236 = sub_1CEFD0DF0(v233, v235, v353);
              v235, v237, v238, v239, v240, v241, v242, v243;
              *(v216 + 14) = v236;
              _os_log_impl(&dword_1CEFC7000, v214, v335, "propagation <fp:%s reason:%s> completed, waiting for flush", v216, 0x16u);
              v244 = v342;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v244, -1, -1);
              MEMORY[0x1D386CDC0](v216, -1, -1);

              (*v336)(v344, v337);
              sub_1CEFCCC44(v350, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v81 = v232;
            }

            else
            {
              sub_1CEFCCC44(v208, &qword_1EC4BE670, &qword_1CF9FE4D0);

              (*v336)(v211, v337);
              sub_1CEFCCC44(v350, &qword_1EC4BE670, &qword_1CF9FE4D0);
              v81 = v208;
            }

            v32 = v343;
          }

          v341, v197, v198, v199, v200, v201, v202, v203;
          v245 = swift_allocObject();
          v246 = v329;
          v247 = v324;
          v245[2] = v324;
          v245[3] = v5;
          v245[4] = 0;
          v248 = *(*v246 + 456);
          v249 = 0;
          v250 = v5;

          v248("itemDidPropagate(id:error:with:)", 32, 2, 1, 0, 0, sub_1CF48184C, v247, sub_1CF481854, v245);

LABEL_33:

          return;
        }
      }

      v93 = *v70;
      v327 = (v346 + 1);
      v344 = (v328 + 48);
      v345 = (v328 + 56);
      v331 = (v342 + 8);
      v339 = v93;

      v32 = 0;
      v5 = &qword_1EC4BE670;
      *&v94 = 136315650;
      v326 = v94;
      v95 = v349;
      while (1)
      {
        v134 = *v339->tree;
        if (v32 == v134)
        {
          v343 = v32;
          v135 = 1;
        }

        else
        {
          if (v32 >= v134)
          {
            __break(1u);
            goto LABEL_85;
          }

          sub_1CEFCCBDC(v339 + ((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v32, v95, v5, &qword_1CF9FE4D0);
          v135 = 0;
          v343 = (v32 + 1);
        }

        v136 = *v345;
        v137 = 1;
        (*v345)(v95, v135, 1, v7);
        v138 = *v344;
        if ((*v344)(v95, 1, v7) != 1)
        {
          v139 = *(v7 + 64);
          v351 = v138;
          v140 = *(v352 + 80);
          v141 = v95[1];
          v350 = *v95;
          *&v342 = v141;
          v142 = sub_1CF9E6448();
          v143 = *(*(v142 - 8) + 32);
          v144 = v346;
          v143(v346 + v139, v349 + v139, v142);
          v145 = swift_allocObject();
          *(v145 + 16) = *(v349 + v140);
          v146 = *(v352 + 64);
          v147 = v341;
          v148 = (v341 + *(v352 + 80));
          v149 = v342;
          v341->super.isa = v350;
          *v147->_anon_8 = v149;
          v143(v147 + v146, v144 + v139, v142);
          v5 = &qword_1EC4BE670;
          v39 = v348;
          v137 = 0;
          *v148 = sub_1CF485B44;
          v148[1] = v145;
          v138 = v351;
          v7 = v352;
        }

        v150 = v341;
        v136(v341, v137, 1, v7);
        v151 = v334;
        sub_1CEFE55D0(v150, v334, &unk_1EC4C04F0, &qword_1CFA12B10);
        if ((v138)(v151, 1, v7) == 1)
        {

          v339, v166, v167, v168, v169, v170, v171, v172;
          goto LABEL_33;
        }

        v152 = *(v7 + 64);
        v153 = *(v7 + 80);
        v154 = *v151;
        v155 = v151;
        v156 = v347;
        *v347 = v154;
        v157 = sub_1CF9E6448();
        v350 = *(v157 - 8);
        v351 = v157;
        v158 = *(v350 + 32);
        v342 = *(v155 + v153);
        v158(v156 + v152, v155 + v152);
        *(v156 + v153) = v342;
        v159 = fpfs_current_or_default_log();
        v160 = v340;
        sub_1CF9E6128();
        v161 = v333;
        sub_1CEFCCBDC(v156, v333, v5, &qword_1CF9FE4D0);
        v162 = v39;
        v163 = v338;
        v164 = sub_1CF9E6108();
        v165 = sub_1CF9E7288();

        if (os_log_type_enabled(v164, v165))
        {
          v96 = swift_slowAlloc();
          v330 = swift_slowAlloc();
          *&v342 = swift_slowAlloc();
          v355[0] = v342;
          *v96 = v326;
          v97 = NSFileProviderItemIdentifier.description.getter(v162);
          LODWORD(v329) = v165;
          v98 = v5;
          v99 = v97;
          v101 = v100;

          v102 = sub_1CEFD0DF0(v99, v101, v355);
          v101, v103, v104, v105, v106, v107, v108, v109;
          *(v96 + 4) = v102;
          *(v96 + 12) = 2080;
          v110 = v161;
          v111 = v161;
          v112 = v163;
          v113 = v346;
          sub_1CEFCCBDC(v110, v346, v98, &qword_1CF9FE4D0);
          v114 = *v113;
          v115 = *(v352 + 64);

          (*(v350 + 8))(v113 + v115, v351);
          sub_1CEFCCC44(v111, v98, &qword_1CF9FE4D0);
          v116 = sub_1CF913458(v114);
          v118 = v117;
          sub_1CEFD0A98(v114);
          v119 = sub_1CEFD0DF0(v116, v118, v355);
          v118, v120, v121, v122, v123, v124, v125, v126;
          *(v96 + 14) = v119;
          *(v96 + 22) = 2112;
          *(v96 + 24) = v112;
          v127 = v330;
          *v330 = v338;
          v128 = v112;
          _os_log_impl(&dword_1CEFC7000, v164, v329, "propagation <fp:%s reason:%s> completed: %@", v96, 0x20u);
          sub_1CEFCCC44(v127, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v127, -1, -1);
          v129 = v342;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v129, -1, -1);
          MEMORY[0x1D386CDC0](v96, -1, -1);

          (*v331)(v340, v337);
        }

        else
        {
          sub_1CEFCCC44(v161, v5, &qword_1CF9FE4D0);

          (*v331)(v160, v337);
          v113 = v346;
          v98 = v5;
        }

        v130 = v347;
        sub_1CEFCCBDC(v347, v113, v98, &qword_1CF9FE4D0);
        sub_1CEFD0A98(*v113);
        v5 = v98;
        v7 = v352;
        v131 = *(v352 + 64);
        v132 = *(v113 + *(v352 + 80));
        v355[3] = &type metadata for SQLDatabaseReadWriteAccessor;
        v355[4] = &off_1F4C17938;
        v355[0] = v335;
        LOBYTE(v355[1]) = v336;
        v133 = v335;
        v132(v355, v332);

        sub_1CEFCCC44(v130, v5, &qword_1CF9FE4D0);
        sub_1CEFCCC44(v355, &unk_1EC4C1B30, &qword_1CFA05300);
        (*(v350 + 8))(v113 + v131, v351);
        v39 = v348;
        v95 = v349;
        v32 = v343;
      }
    }

    v82 = sub_1CF033A74();
    v83 = v325;
    sub_1CF408200(v39, v82, v335, v336, v355);
    v325 = v83;
    if (v83)
    {
      v61, v84, v85, v86, v87, v88, v89, v90;

LABEL_56:

      return;
    }

    v318 = v61;
    v315 = v70;
    v174 = v355[0];
    v322 = v355[1];
    v175 = v355[2];

    if ((v174 & 1) == 0)
    {
      v318, v71, v72, v73, v74, v75, v76, v77;
      goto LABEL_56;
    }

    if (v175)
    {
      v40 = v332;
      v70 = v315;
LABEL_83:
      v61 = v318;
      goto LABEL_12;
    }

    v32 = &v308;
    v314 = *v315;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_61:
      v252 = *v314->tree;
      v253 = (*(v328 + 80) + 32) & ~*(v328 + 80);
      v313 = v253;
      if (v252)
      {
        v311 = v7;
        v312 = v32;
        v254 = 0;
        v255 = v314 + v253;
        v256 = *(v328 + 72);
        v310 = v314 + v253 + v256;
        v319 = v314 + v253;
        v321 = v256;
        do
        {
          v257 = v252;
          v258 = v256 * v254;
          v320 = v257;
          v259 = v256 * (v254 - v257);
          while (1)
          {
            v327 = v259;
            v330 = v254;
            v260 = &v255[v258];
            v261 = &v255[v258];
            v262 = v343;
            sub_1CEFCCBDC(v261, v343, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v263 = v352;
            v264 = *(v352 + 64);
            v323 = *(v352 + 80);
            v265 = *v262;
            *&v326 = v262[1];
            v266 = v326;
            *v346 = v265;
            v346[1] = v266;
            v267 = sub_1CF9E6448();
            v268 = *(v267 - 8);
            v269 = *(v268 + 32);
            v270 = v268 + 32;
            v269(v346 + v264, v262 + v264, v267);
            v271 = *(v263 + 80);
            v272 = v346;
            v273 = (v346 + v271);
            v274 = swift_allocObject();
            *(v274 + 16) = *(v262 + v323);
            *v273 = sub_1CF485B44;
            v273[1] = v274;
            sub_1CEFCCC44(v272, &qword_1EC4BE670, &qword_1CF9FE4D0);
            if (v326 < v322)
            {
              break;
            }

            v254 = v330 + 1;
            v258 += v321;
            v259 = v327 + v321;
            v255 = v319;
            if (v330 + 1 >= v320)
            {
              goto LABEL_79;
            }
          }

          v323 = v270;
          *&v326 = v269;
          v308 = v260;
          v309 = v258;
          v275 = 0;
          v252 = v320;
          v316 = v267;
          v317 = &v319[v321 * (v320 - 1)];
          v276 = v327;
          do
          {
            if (v330 >= --v252)
            {
              v254 = v330;
              goto LABEL_79;
            }

            v277 = v343;
            sub_1CEFCCBDC(&v317[v275], v343, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v278 = v352;
            v279 = *(v352 + 64);
            v327 = *(v352 + 80);
            v280 = v277[1];
            v281 = v346;
            *v346 = *v277;
            v281[1] = v280;
            (v326)(v281 + v279, v277 + v279, v316);
            v282 = (v281 + *(v278 + 80));
            v283 = swift_allocObject();
            *(v283 + 16) = *(v277 + v327);
            *v282 = sub_1CF485B44;
            v282[1] = v283;
            v256 = v321;
            sub_1CEFCCC44(v281, &qword_1EC4BE670, &qword_1CF9FE4D0);
            v276 = (v276 + v256);
            v275 -= v256;
          }

          while (v280 < v322);
          v284 = v308;
          sub_1CEFE55D0(v308, v338, &qword_1EC4BE670, &qword_1CF9FE4D0);
          v285 = v256 * v320 + v275;
          if (v309 < v285 || v284 >= &v310[v275 + v256 * v320])
          {
            v255 = v319;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v255 = v319;
            if (v276)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          sub_1CEFE55D0(v338, &v255[v285], &qword_1EC4BE670, &qword_1CF9FE4D0);
          v254 = v330 + 1;
        }

        while (v330 + 1 < v252);
LABEL_79:
        v70 = v315;
        *v315 = v314;
        if ((v254 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v287 = *v70;
          v39 = v348;
          v5 = v329;
          v7 = v311;
          if (*(*v70)->tree >= v254)
          {
LABEL_81:
            v330 = v254;
            v288 = (2 * v254) | 1;
            v289 = v39;

            v291 = v313;
            v292 = sub_1CF477AC4(v290, v287 + v313, 0, v288);
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v353[0] = *(v5 + v7);
            *(v5 + v7) = 0x8000000000000000;
            v294 = v292;
            v295 = v330;
            sub_1CF1D348C(v294, v289, isUniquelyReferenced_nonNull_native);

            *(v5 + v7) = v353[0];
            swift_endAccess();
            v296 = *(*v70)->tree;
            if (v296 >= v295)
            {
              v297 = (2 * v296) | 1;

              v299 = sub_1CF477AC4(v298, v298 + v291, v295, v297);
              v300 = *v70;
              *v70 = v299;
              v300, v301, v302, v303, v304, v305, v306, v307;
              v40 = v332;
              goto LABEL_83;
            }

LABEL_90:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_90;
      }

      v286 = v314;
      v70 = v315;
      *v315 = v314;
      v254 = 0;
      v287 = v286;
      goto LABEL_81;
    }

LABEL_87:
    v314 = sub_1CF772374(v314);
    goto LABEL_61;
  }
}

void sub_1CF4076E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7)
{
  v9 = v7;
  v177 = a6;
  v178 = a5;
  LOBYTE(v12) = a3;
  v176 = sub_1CF9E6118();
  v181 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v170 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_1EC4EBD80;
  swift_beginAccess();
  v17 = *(&v16->isa + v7);
  if (*(v17 + 16))
  {
    v18 = sub_1CF7BF2C0(a1, a2);
    if (v19)
    {
      v165 = a1;
      v169 = a2;
      v168 = a7;
      v162 = v8;
      v20 = *(*(v17 + 56) + 8 * v18);
      swift_bridgeObjectRetain_n();
      isa = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_30;
      }

      for (i = *v20->tree; i; i = *isa->tree)
      {
        v30 = 0;
        v31 = qword_1CFA05BE8[v12];
        tester = isa[1].tester;
        while (1)
        {
          v33 = &tester[40 * v30];
          v34 = v30;
LABEL_7:
          v35 = *(v33 - 1);
          v36 = qword_1CFA05BE8[*(v33 - 16)];
          if (v36 != v31 || v35 <= a4)
          {
            break;
          }

          v38 = *(v33 - 16);
          v39 = &tester[40 * i];
          do
          {
            if (v34 >= --i)
            {
              goto LABEL_27;
            }

            v21 = *(v39 - 6);
            v40 = qword_1CFA05BE8[*(v39 - 56)];
            v39 -= 40;
          }

          while (v40 == v36 && v21 > a4);
          if (v34 != i)
          {
            v42 = *(v33 - 3);
            v43 = *v33;
            v45 = *(v39 - 24);
            v44 = *(v39 - 8);
            *(v33 + 1) = *(v39 + 1);
            *(v33 - 24) = v45;
            *(v33 - 8) = v44;
            *(v39 - 3) = v42;
            *(v39 - 16) = v38;
            *(v39 - 1) = v35;
            *v39 = v43;
          }

          v30 = v34 + 1;
          if (v34 + 1 >= i)
          {
            ++v34;
            goto LABEL_27;
          }
        }

        ++v34;
        v33 += 40;
        if (v34 < i)
        {
          goto LABEL_7;
        }

        if (i <= v30 + 1)
        {
          v34 = v30 + 1;
        }

        else
        {
          v34 = i;
        }

LABEL_27:
        if (v34 < 0)
        {
          goto LABEL_64;
        }

        v46 = *isa->tree;
        if (v46 >= v34)
        {
          goto LABEL_32;
        }

        __break(1u);
LABEL_30:
        isa = sub_1CF772360(v20, v21, v22, v23, v24, v25, v26, v27);
      }

      v34 = 0;
      v46 = *isa->tree;
LABEL_32:
      swift_unknownObjectRetain();
      v47 = isa;
      if (v46 != v34)
      {
        goto LABEL_65;
      }

LABEL_33:
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v189 = *(&v16->isa + v9);
      *(&v16->isa + v9) = 0x8000000000000000;
      sub_1CF1D4984(v47, v165, v169, isUniquelyReferenced_nonNull_native);
      *(&v16->isa + v9) = v189;
      swift_endAccess();
      v49 = *isa->tree;
      v50 = v168;
      if (v49 < v34)
      {
        __break(1u);
      }

      else
      {
        swift_unknownObjectRetain();
        v51 = isa;
        if (!v34)
        {
LABEL_35:

          isa, v52, v53, v54, v55, v56, v57, v58;
          v59 = *v51->tree;
          v60 = *v20->tree;
          v20, v61, v62, v63, v64, v65, v66, v67;
          v68 = v59 == v60;
          v34 = v178;
          if (v68)
          {
            swift_beginAccess();
            v69 = sub_1CF7BF2C0(v165, v169);
            if (v70)
            {
              v71 = v69;
              v72 = swift_isUniquelyReferenced_nonNull_native();
              v73 = *(&v16->isa + v9);
              v189 = v73;
              if ((v72 & 1) == 0)
              {
                sub_1CF7D4C40();
                v73 = v189;
              }

              v74 = *(*(v73 + 56) + 8 * v71);
              sub_1CF1D5A10();
              v74, v75, v76, v77, v78, v79, v80, v81;
              *(&v16->isa + v9) = v73;
              v34 = v178;
            }

            swift_endAccess();
          }

          v82 = sub_1CF19F384(v12);
          v167 = (*(v82 + 176))();
          v175 = v83;
          if (v34)
          {
            swift_getErrorValue();
            v84 = Error.prettyDescription.getter(v182, v183);
          }

          else
          {
            sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
            v84 = sub_1CF9E7598();
          }

          v179 = v84;
          v12 = v170;
          v86 = *v51->tree;
          if (!v86)
          {
LABEL_61:

            v175, v139, v140, v141, v142, v143, v144, v145;
            return;
          }

          v9 = 0;
          v173 = (v181 + 8);
          v87 = 1953460082;
          if (v165)
          {
            v87 = 0x6873617274;
          }

          v164 = v87;
          v88 = 0xE500000000000000;
          if (!v165)
          {
            v88 = 0xE400000000000000;
          }

          v163 = v88;
          v20 = v51 + 2;
          *&v85 = 136315906;
          v166 = v85;
          v174 = v51;
          while (1)
          {
            if (v9 >= v86)
            {
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              sub_1CF4772B4(isa, &isa[1], 0, (2 * v34) | 1);
              v47 = v146;
              isa, v147, v148, v149, v150, v151, v152, v153;
              goto LABEL_33;
            }

            v90 = v50;
            isa = v20[-1].super.isa;
            v91 = v20->super.isa;
            v180 = *v20[-1].tester;
            v181 = v91;
            swift_retain_n();
            sub_1CEFD09A0(isa);
            v92 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            sub_1CEFD09A0(isa);
            sub_1CEFD09A0(isa);
            v93 = v175;

            v94 = v179;
            v95 = v12;
            v16 = sub_1CF9E6108();
            v96 = sub_1CF9E7298();

            v93, v97, v98, v99, v100, v101, v102, v103;
            if (os_log_type_enabled(v16, v96))
            {
              break;
            }

            sub_1CEFD0A98(isa);
            sub_1CEFD0A98(isa);

            (*v173)(v95, v176);
            v12 = v95;
            v50 = v90;
LABEL_52:
            ++v9;
            v187 = &type metadata for SQLDatabaseReadWriteAccessor;
            v188 = &off_1F4C17938;
            v34 = v178;
            v185 = v177;
            LOBYTE(v186) = v50;
            v189 = v178;
            v89 = v177;
            v180(&v185, &v189);
            sub_1CEFD0A98(isa);

            sub_1CEFCCC44(&v185, &unk_1EC4C1B30, &qword_1CFA05300);
            v86 = *v174->tree;
            v20 = (v20 + 40);
            if (v9 == v86)
            {
              goto LABEL_61;
            }
          }

          v104 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v189 = v172;
          *v104 = v166;
          *(v104 + 4) = sub_1CEFD0DF0(v167, v93, &v189);
          *(v104 + 12) = 2080;
          if (v169)
          {
            v105 = v164;
            v106 = v163;
            if (v169 != 1)
            {
LABEL_60:
              v117 = sub_1CEFD0DF0(v105, v106, &v189);
              v106, v118, v119, v120, v121, v122, v123, v124;
              *(v104 + 14) = v117;
              *(v104 + 22) = 2080;
              v125 = sub_1CEFD11AC(isa);
              v127 = v126;
              sub_1CEFD0A98(isa);
              sub_1CEFD0A98(isa);
              v128 = sub_1CEFD0DF0(v125, v127, &v189);
              v127, v129, v130, v131, v132, v133, v134, v135;
              *(v104 + 24) = v128;
              *(v104 + 32) = 2112;
              *(v104 + 34) = v94;
              v136 = v171;
              *v171 = v179;
              v137 = v94;
              _os_log_impl(&dword_1CEFC7000, v16, v96, "%s <fs:%s reason:%s> completed: %@", v104, 0x2Au);
              sub_1CEFCCC44(v136, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v136, -1, -1);
              v138 = v172;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v138, -1, -1);
              MEMORY[0x1D386CDC0](v104, -1, -1);

              v12 = v170;
              (*v173)(v170, v176);
              v50 = v168;
              goto LABEL_52;
            }

            v185 = 0x284449656C6966;
            v186 = 0xE700000000000000;
            v184 = v165;
          }

          else
          {
            v185 = 0x284449636F64;
            v186 = 0xE600000000000000;
            LODWORD(v184) = v165;
          }

          v107 = sub_1CF9E7F98();
          v109 = v108;
          MEMORY[0x1D3868CC0](v107);
          v109, v110, v111, v112, v113, v114, v115, v116;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v105 = v185;
          v106 = v186;
          goto LABEL_60;
        }
      }

      sub_1CF4772B4(isa, &isa[1], v34, (2 * v49) | 1);
      v51 = v154;
      isa, v155, v156, v157, v158, v159, v160, v161;
      goto LABEL_35;
    }
  }
}

uint64_t sub_1CF407FF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1CEFCCBDC(v3, &v16 - v13, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFE55D0(v14, v8, &unk_1EC4BFD70, &qword_1CFA12AC0);
    sub_1CF46AEEC(a1 & 1, a2);
    sub_1CEFCCC44(v8, &unk_1EC4BFD70, &qword_1CFA12AC0);
  }

  else
  {
    sub_1CEFE55D0(v14, v11, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    sub_1CF46A9E4(a1 & 1, a2);
    sub_1CEFCCC44(v11, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1CF408200(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v176 = a5;
  v9 = sub_1CF9E6118();
  *&v175 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v171 - v13;
  v184[0] = a1;
  v182 = a3;
  v183 = v5;
  v15 = v216;
  sub_1CF7EBA74(a1, a3, v5, v181);
  if (v15)
  {
    return;
  }

  v174 = v9;
  v216 = 0;
  memcpy(v180, v181, sizeof(v180));
  if (sub_1CF08B99C(v180) != 1)
  {
    memcpy(v179, v181, sizeof(v179));
    LOBYTE(v20) = v179[1];
    v187 = *&v181[7];
    v188 = *&v181[9];
    v189 = *&v181[11];
    v190 = *&v181[13];
    v185 = *&v181[3];
    v186 = *&v181[5];
    v193 = *(&v181[17] + 1);
    v194 = *(&v181[19] + 1);
    *v195 = *(&v181[21] + 1);
    *&v195[15] = *&v181[23];
    v192 = *(&v181[15] + 1);
    v208 = *(&v181[51] + 1);
    *v209 = *(&v181[53] + 1);
    v206 = *(&v181[47] + 1);
    v207 = *(&v181[49] + 1);
    v204 = *(&v181[43] + 1);
    v205 = *(&v181[45] + 1);
    v202 = *(&v181[39] + 1);
    v203 = *(&v181[41] + 1);
    v200 = *(&v181[35] + 1);
    v201 = *(&v181[37] + 1);
    v199 = *(&v181[33] + 1);
    v196 = *(&v181[27] + 1);
    v197 = *(&v181[29] + 1);
    v198 = *(&v181[31] + 1);
    v211 = *&v181[57];
    v34 = v179[56];
    v23 = v179[60];
    v214 = *&v181[61];
    v215 = *&v181[63];
    v184[1] = v179[0];
    v184[2] = v179[1];
    v184[3] = v179[2];
    v191 = v179[15];
    v35 = *&v179[25];
    *&v195[31] = *&v179[25];
    v195[47] = v179[27];
    *&v209[15] = v181[55];
    v210 = v179[56];
    v212 = v181[59];
    v213 = v179[60];
    if (LOBYTE(v179[15]) == 2)
    {
      v36 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v37 = a1;
      v38 = sub_1CF9E6108();
      v39 = sub_1CF9E7298();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v14;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v178[0] = v42;
        *v41 = 136315138;
        v43 = NSFileProviderItemIdentifier.description.getter(v37);
        v45 = v44;

        v46 = sub_1CEFD0DF0(v43, v45, v178);
        v45, v47, v48, v49, v50, v51, v52, v53;
        *(v41 + 4) = v46;
        _os_log_impl(&dword_1CEFC7000, v38, v39, "%s did not propagate: propagating is still in progress", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1D386CDC0](v42, -1, -1);
        MEMORY[0x1D386CDC0](v41, -1, -1);

        (*(v175 + 8))(v40, v174);
      }

      else
      {

        (*(v175 + 8))(v14, v174);
      }
    }

    else
    {
      if (v179[1] && (!v179[0] || LOBYTE(v179[27]) == 255))
      {
        sub_1CEFCCC44(v179, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        isa = 0;
        v103 = 0;
        v104 = 1;
        v105 = 1;
        v106 = 1;
        v107 = v176;
        goto LABEL_40;
      }

      if (v179[0] && LOBYTE(v179[27]) != 255)
      {
        v54 = v179[2];
        if (qword_1EDEABDE0 != -1)
        {
          goto LABEL_83;
        }

        goto LABEL_15;
      }

      v58 = fpfs_current_or_default_log();
      v59 = v11;
      sub_1CF9E6128();
      v60 = a1;
      v61 = sub_1CF9E6108();
      v62 = sub_1CF9E7298();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v178[0] = v64;
        *v63 = 136315138;
        v65 = NSFileProviderItemIdentifier.description.getter(v60);
        v67 = v66;

        v68 = sub_1CEFD0DF0(v65, v67, v178);
        v67, v69, v70, v71, v72, v73, v74, v75;
        *(v63 + 4) = v68;
        _os_log_impl(&dword_1CEFC7000, v61, v62, "%s did not propagate: item is not bound", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x1D386CDC0](v64, -1, -1);
        MEMORY[0x1D386CDC0](v63, -1, -1);
      }

      else
      {
      }

      (*(v175 + 8))(v59, v174);
    }

    sub_1CEFCCC44(v179, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v107 = v176;
    v104 = 0;
    isa = 0;
    v103 = 0;
    v105 = 1;
    v106 = 1;
    goto LABEL_40;
  }

  memcpy(v179, v181, sizeof(v179));
  sub_1CEFCCC44(v179, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v17 = 0;
  LODWORD(v174) = 1;
  while (1)
  {
    v18 = *(a2 + 24);
    sub_1CF8DCAC4(v16);
    v19 = swift_allocObject();
    v175 = xmmword_1CF9FA450;
    *(v19 + 16) = xmmword_1CF9FA450;
    *(v19 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
    v20 = *v18 + 312;
    v21 = *v20;
    v22 = v216;
    v23 = (*v20)(v184, v19, &v182, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v19, v24, v25, v26, v27, v28, v29, v30;
    if (v22)
    {
      return;
    }

    v172 = v17;
    sub_1CF8DCAC4(v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v175;
    *(v32 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
    v33 = v21(v184, v32, &v182, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v216 = 0;
    v76 = v33;
    v32, v77, v78, v79, v80, v81, v82, v83;
    if (v23 >> 62)
    {
      v54 = sub_1CF9E7818();
    }

    else
    {
      v54 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v175 = v76;
    v91 = MEMORY[0x1E69E7CC0];
    if (!v54)
    {
      v23, v84, v85, v86, v87, v88, v89, v90;
      v115 = v76;
      v34 = MEMORY[0x1E69E7CC0];
LABEL_45:
      v116 = *v34->tree;
      if (!v116)
      {
        isa = 0;
        goto LABEL_69;
      }

      isa = v34[1].super.isa;
      v117 = v116 - 1;
      if (v116 == 1)
      {
        goto LABEL_69;
      }

      if (v116 >= 5)
      {
        v118 = v117 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v120 = vdupq_n_s64(isa);
        tester = v34[1].tester;
        v122 = v117 & 0xFFFFFFFFFFFFFFFCLL;
        v123 = v120;
        do
        {
          v120 = vbslq_s8(vcgtq_s64(v120, tester[-1]), tester[-1], v120);
          v123 = vbslq_s8(vcgtq_s64(v123, *tester), *tester, v123);
          tester += 2;
          v122 -= 4;
        }

        while (v122);
        v124 = vbslq_s8(vcgtq_s64(v123, v120), v120, v123);
        v125 = vextq_s8(v124, v124, 8uLL).u64[0];
        isa = vbsl_s8(vcgtd_s64(v125, v124.i64[0]), *v124.i8, v125);
        if (v117 == (v117 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v118 = 1;
      }

      v126 = v116 - v118;
      v127 = &v34[1].super.isa + v118;
      do
      {
        v129 = *v127++;
        v128 = v129;
        if (v129 < isa)
        {
          isa = v128;
        }

        --v126;
      }

      while (v126);
LABEL_69:
      v171 = *v34->tree;
      v34, v108, v109, v110, v111, v112, v113, v114;
      v137 = v115;
      if (v115 >> 62)
      {
        v23 = sub_1CF9E7818();
        v137 = v115;
        if (v23)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v23 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_71:
          v179[0] = v91;
          sub_1CF681008(0, v23 & ~(v23 >> 63), 0);
          if (v23 < 0)
          {
            goto LABEL_121;
          }

          v54 = 0;
          v34 = v179[0];
          v138 = v115;
          v139 = v115 & 0xC000000000000001;
          v173 = v138 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v139)
            {
              v140 = MEMORY[0x1D3869C30](v54);
            }

            else
            {
              if (v54 >= *(v173 + 16))
              {
                goto LABEL_82;
              }
            }

            v141 = *(v140 + 128);

            v179[0] = v34;
            a2 = *v34->tree;
            v148 = *v34->tester;
            v20 = a2 + 1;
            if (a2 >= v148 >> 1)
            {
              sub_1CF681008((v148 > 1), a2 + 1, 1);
              v34 = v179[0];
            }

            ++v54;
            *v34->tree = v20;
            *(&v34[1].super.isa + a2) = v141;
          }

          while (v23 != v54);
          v175, v175, v142, v143, v144, v145, v146, v147;
LABEL_87:
          v156 = *v34->tree;
          v106 = v156 == 0;
          if (!v156)
          {
            v103 = 0;
            goto LABEL_99;
          }

          v103 = v34[1].super.isa;
          v157 = v156 - 1;
          if (v156 == 1)
          {
            goto LABEL_99;
          }

          if (v156 >= 5)
          {
            v158 = v157 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v159 = vdupq_n_s64(v103);
            v160 = v34[1].tester;
            v161 = v157 & 0xFFFFFFFFFFFFFFFCLL;
            v162 = v159;
            do
            {
              v159 = vbslq_s8(vcgtq_s64(v159, v160[-1]), v160[-1], v159);
              v162 = vbslq_s8(vcgtq_s64(v162, *v160), *v160, v162);
              v160 += 2;
              v161 -= 4;
            }

            while (v161);
            v163 = vbslq_s8(vcgtq_s64(v162, v159), v159, v162);
            v164 = vextq_s8(v163, v163, 8uLL).u64[0];
            v103 = vbsl_s8(vcgtd_s64(v164, v163.i64[0]), *v163.i8, v164);
            if (v157 == (v157 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_99;
            }
          }

          else
          {
            v158 = 1;
          }

          v165 = v156 - v158;
          v166 = &v34[1].super.isa + v158;
          do
          {
            v168 = *v166++;
            v167 = v168;
            if (v168 < v103)
            {
              v103 = v167;
            }

            --v165;
          }

          while (v165);
LABEL_99:
          v34, v149, v150, v151, v152, v153, v154, v155;
          if (v174)
          {
            if (!v171)
            {
              isa = 0;
              v104 = 1;
              v105 = 1;
              v107 = v176;
              goto LABEL_40;
            }

            if (v156)
            {
              v169 = isa;
              goto LABEL_115;
            }

            v105 = 0;
            v106 = 0;
            v104 = 1;
            v103 = isa;
            v107 = v176;
          }

          else
          {
            if (v171)
            {
              v105 = 0;
              v106 = 0;
              if (isa >= v172)
              {
                isa = v172;
              }

              if (v103 >= isa)
              {
                v170 = isa;
              }

              else
              {
                v170 = v103;
              }

              if (v156)
              {
                v103 = v170;
              }

              else
              {
                v103 = isa;
              }

              goto LABEL_117;
            }

            if (v156)
            {
              v169 = v172;
              isa = v172;
LABEL_115:
              v105 = 0;
              v106 = 0;
              if (v103 >= v169)
              {
                v103 = v169;
              }

LABEL_117:
              v104 = 1;
              v107 = v176;
              goto LABEL_40;
            }

            v105 = 0;
            v106 = 0;
            v104 = 1;
            v103 = v172;
            isa = v172;
            v107 = v176;
          }

LABEL_40:
          *v107 = v104;
          *(v107 + 8) = isa;
          *(v107 + 16) = v105;
          *(v107 + 24) = v103;
          *(v107 + 32) = v106;
          return;
        }
      }

      v137, v130, v131, v132, v133, v134, v135, v136;
      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_87;
    }

    v179[0] = MEMORY[0x1E69E7CC0];
    sub_1CF681008(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
      break;
    }

    v20 = 0;
    v34 = v179[0];
    v173 = v23 & 0xFFFFFFFFFFFFFF8;
    while ((v23 & 0xC000000000000001) != 0)
    {
      v92 = MEMORY[0x1D3869C30](v20, v23);
LABEL_32:
      v93 = *(v92 + 128);

      v179[0] = v34;
      a2 = *v34->tree;
      v101 = *v34->tester;
      if (a2 >= v101 >> 1)
      {
        sub_1CF681008((v101 > 1), a2 + 1, 1);
        v34 = v179[0];
      }

      ++v20;
      *v34->tree = a2 + 1;
      *(&v34[1].super.isa + a2) = v93;
      if (v54 == v20)
      {
        v23, v94, v95, v96, v97, v98, v99, v100;
        v115 = v175;
        v91 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

    if (v20 < *(v173 + 16))
    {

      goto LABEL_32;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v175 = v35;
    swift_once();
    LOBYTE(v35) = v175;
LABEL_15:
    v55 = qword_1EDEABDE8;
    if (*(*(a2 + 32) + 32))
    {
      v56 = qword_1EDEABDE8 & 0xFFFFFFFFFFFEFFEFLL | 0x10;
    }

    else
    {
      v56 = qword_1EDEABDE8 | 0x10;
    }

    if (*(*(a2 + 32) + 32))
    {
      v57 = (v34 >> 2) & 1;
    }

    else
    {
      LODWORD(v57) = (v35 & 4) != 0 && (v35 & 0x30) == 0;
    }

    sub_1CF7F6024(v178);
    if (LOBYTE(v178[1]) == 255 || !v178[31] || v178[24] >> 60 == 11)
    {
      memcpy(v177, v178, sizeof(v177));
      sub_1CEFCCC44(v177, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCC44(v179, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      goto LABEL_55;
    }

    v119 = LOBYTE(v178[43]);
    memcpy(v177, v178, sizeof(v177));
    sub_1CEFCCC44(v177, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCC44(v179, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    if (v119)
    {
LABEL_55:
      if (v57)
      {
        goto LABEL_56;
      }
    }

    else
    {
LABEL_56:
      v56 &= v55 & 0xFF9BD6FFFFFE36E7 | 0x6409000000C000;
    }

    LODWORD(v174) = (v56 & v54 | v20 & 0x51) == 0;
    if (v56 & v54 | v20 & 0x51)
    {
      v17 = v23;
    }

    else
    {
      v17 = 0;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
}

void sub_1CF408EF0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v9 = a2;
  v181 = a6;
  v11 = sub_1CF9E6118();
  *&v183 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v177 - v15;
  v191 = a1;
  v192 = v9;
  v189 = a4;
  v190 = v6;
  v182 = a3;
  v17 = v231;
  sub_1CF7EB934(a1, v9, a4, v6, v188);
  if (v17)
  {
    return;
  }

  v18 = v16;
  v179 = v13;
  v180 = v11;
  v20 = v182;
  v19 = v183;
  v231 = 0;
  memcpy(v187, v188, sizeof(v187));
  if (sub_1CF08B99C(v187) != 1)
  {
    memcpy(v186, v188, sizeof(v186));
    v202 = *&v188[96];
    v203 = *&v188[112];
    v204 = *&v188[128];
    v205 = *&v188[144];
    v198 = *&v188[32];
    v199 = *&v188[48];
    v200 = *&v188[64];
    v201 = *&v188[80];
    v208 = *&v188[177];
    v209 = *&v188[193];
    *v210 = *&v188[209];
    *&v210[15] = *&v188[224];
    v207 = *&v188[161];
    v215 = *&v188[288];
    v216 = *&v188[304];
    v213 = *&v188[256];
    v214 = *&v188[272];
    v219 = *&v188[352];
    v220 = *&v188[368];
    v217 = *&v188[320];
    v218 = *&v188[336];
    v223 = *&v188[416];
    v224 = *&v188[432];
    *v195 = *&v188[9];
    *&v195[3] = *&v188[12];
    LOBYTE(v38) = v186[2];
    LOBYTE(a4) = v186[30];
    v221 = *&v188[384];
    v222 = *&v188[400];
    v226 = *&v188[456];
    v39 = v186[56];
    v22 = v186[60];
    v229 = *&v188[488];
    v230 = *&v188[504];
    v193 = v186[0];
    v194 = v186[1];
    v196 = v186[2];
    v197 = v186[3];
    v206 = v186[20];
    v211 = v186[30];
    v212 = v186[31];
    v227 = *&v188[472];
    v225 = v186[56];
    v228 = v186[60];
    if (LOBYTE(v186[20]) == 2)
    {
      v40 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v41 = v191;
      v42 = v192;
      v43 = sub_1CF9E6108();
      v44 = sub_1CF9E7298();
      v45 = v19;
      if (os_log_type_enabled(v43, v44))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v182 = v18;
        v48 = v42;
        v49 = v47;
        v184[0] = v47;
        *v46 = 136315138;
        v185[0] = v41;
        LOBYTE(v185[1]) = v48;
        v50 = VFSItemID.description.getter(v47);
        v52 = v51;
        v53 = sub_1CEFD0DF0(v50, v51, v184);
        v52, v54, v55, v56, v57, v58, v59, v60;
        *(v46 + 4) = v53;
        _os_log_impl(&dword_1CEFC7000, v43, v44, "%s did not propagate: propagating is still in progress", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1D386CDC0](v49, -1, -1);
        MEMORY[0x1D386CDC0](v46, -1, -1);

        (*(v45 + 8))(v182, v180);
      }

      else
      {

        (*(v19 + 8))(v18, v180);
      }
    }

    else
    {
      v61 = v180;
      if (v186[2] && (LOBYTE(v186[1]) == 255 || !v186[31]))
      {
        sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
        isa = 0;
        v65 = 0;
        v64 = 1;
        v66 = 1;
        v67 = 1;
        v63 = v181;
        goto LABEL_22;
      }

      if (LOBYTE(v186[1]) != 255 && v186[31])
      {
        isa = v186[3];
        if (qword_1EDEABDE0 != -1)
        {
          goto LABEL_82;
        }

        goto LABEL_15;
      }

      v68 = fpfs_current_or_default_log();
      v69 = v179;
      sub_1CF9E6128();
      v70 = v191;
      v71 = v192;
      v72 = sub_1CF9E6108();
      v73 = sub_1CF9E7298();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v76 = v71;
        v77 = v75;
        v184[0] = v75;
        *v74 = 136315138;
        v185[0] = v70;
        LOBYTE(v185[1]) = v76;
        v78 = VFSItemID.description.getter(v75);
        v80 = v79;
        v81 = sub_1CEFD0DF0(v78, v79, v184);
        v80, v82, v83, v84, v85, v86, v87, v88;
        *(v74 + 4) = v81;
        _os_log_impl(&dword_1CEFC7000, v72, v73, "%s did not propagate: item is not bound", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x1D386CDC0](v77, -1, -1);
        MEMORY[0x1D386CDC0](v74, -1, -1);

        (*(v183 + 8))(v69, v180);
      }

      else
      {

        (*(v19 + 8))(v69, v61);
      }
    }

    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
    v63 = v181;
    v64 = 0;
    isa = 0;
    v65 = 0;
    v66 = 1;
    v67 = 1;
LABEL_22:
    *v63 = v64;
    *(v63 + 8) = isa;
    *(v63 + 16) = v66;
    *(v63 + 24) = v65;
    *(v63 + 32) = v67;
    return;
  }

  memcpy(v186, v188, sizeof(v186));
  sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
  v22 = 0;
  LODWORD(v180) = 1;
  while (1)
  {
    v23 = v20[3];
    sub_1CF8DCAA0(v21);
    v24 = swift_allocObject();
    v183 = xmmword_1CF9FA450;
    *(v24 + 16) = xmmword_1CF9FA450;
    *(v24 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v20 = (*v23 + 312);
    isa = *v20;
    v26 = v231;
    v27 = (*v20)(&v191, v24, &v189, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v24, v28, v29, v30, v31, v32, v33, v34;
    if (v26)
    {
      return;
    }

    v179 = v22;
    sub_1CF8DCAA0(v35);
    v36 = swift_allocObject();
    *(v36 + 16) = v183;
    *(v36 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
    v37 = (isa)(&v191, v36, &v189, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v231 = 0;
    v89 = v37;
    v36, v90, v91, v92, v93, v94, v95, v96;
    if (v27 >> 62)
    {
      v22 = sub_1CF9E7818();
    }

    else
    {
      v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v183 = v89;
    v39 = MEMORY[0x1E69E7CC0];
    if (!v22)
    {
      v27, v97, v98, v99, v100, v101, v102, v103;
      v121 = v89;
      v104 = MEMORY[0x1E69E7CC0];
LABEL_44:
      v122 = *v104->tree;
      if (!v122)
      {
        isa = 0;
        goto LABEL_68;
      }

      isa = v104[1].super.isa;
      v123 = v122 - 1;
      if (v122 == 1)
      {
        goto LABEL_68;
      }

      if (v122 >= 5)
      {
        v124 = v123 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v126 = vdupq_n_s64(isa);
        tester = v104[1].tester;
        v128 = v123 & 0xFFFFFFFFFFFFFFFCLL;
        v129 = v126;
        do
        {
          v126 = vbslq_s8(vcgtq_s64(v126, tester[-1]), tester[-1], v126);
          v129 = vbslq_s8(vcgtq_s64(v129, *tester), *tester, v129);
          tester += 2;
          v128 -= 4;
        }

        while (v128);
        v130 = vbslq_s8(vcgtq_s64(v129, v126), v126, v129);
        v131 = vextq_s8(v130, v130, 8uLL).u64[0];
        isa = vbsl_s8(vcgtd_s64(v131, v130.i64[0]), *v130.i8, v131);
        if (v123 == (v123 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_68;
        }
      }

      else
      {
        v124 = 1;
      }

      v132 = v122 - v124;
      v133 = &v104[1].super.isa + v124;
      do
      {
        v135 = *v133++;
        v134 = v135;
        if (v135 < isa)
        {
          isa = v134;
        }

        --v132;
      }

      while (v132);
LABEL_68:
      v178 = *v104->tree;
      v104, v114, v115, v116, v117, v118, v119, v120;
      v143 = v121;
      if (v121 >> 62)
      {
        v144 = sub_1CF9E7818();
        v143 = v121;
        if (v144)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v144 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v144)
        {
LABEL_70:
          v186[0] = v39;
          sub_1CF681008(0, v144 & ~(v144 >> 63), 0);
          if (v144 < 0)
          {
            goto LABEL_120;
          }

          v22 = 0;
          v145 = v186[0];
          v146 = v121;
          v38 = v121 & 0xC000000000000001;
          v182 = v146 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v38)
            {
              v147 = MEMORY[0x1D3869C30](v22);
            }

            else
            {
              if (v22 >= *(v182 + 16))
              {
                goto LABEL_81;
              }
            }

            v39 = *(v147 + 128);

            v186[0] = v145;
            a4 = *v145->tree;
            v154 = *v145->tester;
            v20 = (a4 + 1);
            if (a4 >= v154 >> 1)
            {
              sub_1CF681008((v154 > 1), a4 + 1, 1);
              v145 = v186[0];
            }

            ++v22;
            *v145->tree = v20;
            *(&v145[1].super.isa + a4) = v39;
          }

          while (v144 != v22);
          v183, v183, v148, v149, v150, v151, v152, v153;
LABEL_86:
          v162 = *v145->tree;
          v67 = v162 == 0;
          if (!v162)
          {
            v65 = 0;
            goto LABEL_98;
          }

          v65 = v145[1].super.isa;
          v163 = v162 - 1;
          if (v162 == 1)
          {
            goto LABEL_98;
          }

          if (v162 >= 5)
          {
            v164 = v163 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v165 = vdupq_n_s64(v65);
            v166 = v145[1].tester;
            v167 = v163 & 0xFFFFFFFFFFFFFFFCLL;
            v168 = v165;
            do
            {
              v165 = vbslq_s8(vcgtq_s64(v165, v166[-1]), v166[-1], v165);
              v168 = vbslq_s8(vcgtq_s64(v168, *v166), *v166, v168);
              v166 += 2;
              v167 -= 4;
            }

            while (v167);
            v169 = vbslq_s8(vcgtq_s64(v168, v165), v165, v168);
            v170 = vextq_s8(v169, v169, 8uLL).u64[0];
            v65 = vbsl_s8(vcgtd_s64(v170, v169.i64[0]), *v169.i8, v170);
            if (v163 == (v163 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_98;
            }
          }

          else
          {
            v164 = 1;
          }

          v171 = v162 - v164;
          v172 = &v145[1].super.isa + v164;
          do
          {
            v174 = *v172++;
            v173 = v174;
            if (v174 < v65)
            {
              v65 = v173;
            }

            --v171;
          }

          while (v171);
LABEL_98:
          v145, v155, v156, v157, v158, v159, v160, v161;
          if (v180)
          {
            if (!v178)
            {
              isa = 0;
              v64 = 1;
              v66 = 1;
              v63 = v181;
              goto LABEL_22;
            }

            if (v162)
            {
              v175 = isa;
              goto LABEL_114;
            }

            v66 = 0;
            v67 = 0;
            v64 = 1;
            v65 = isa;
            v63 = v181;
          }

          else
          {
            if (v178)
            {
              v66 = 0;
              v67 = 0;
              if (isa >= v179)
              {
                isa = v179;
              }

              if (v65 >= isa)
              {
                v176 = isa;
              }

              else
              {
                v176 = v65;
              }

              if (v162)
              {
                v65 = v176;
              }

              else
              {
                v65 = isa;
              }

              goto LABEL_116;
            }

            if (v162)
            {
              v175 = v179;
              isa = v179;
LABEL_114:
              v66 = 0;
              v67 = 0;
              if (v65 >= v175)
              {
                v65 = v175;
              }

LABEL_116:
              v64 = 1;
              v63 = v181;
              goto LABEL_22;
            }

            v66 = 0;
            v67 = 0;
            v64 = 1;
            v65 = v179;
            isa = v179;
            v63 = v181;
          }

          goto LABEL_22;
        }
      }

      v143, v136, v137, v138, v139, v140, v141, v142;
      v145 = MEMORY[0x1E69E7CC0];
      goto LABEL_86;
    }

    v186[0] = MEMORY[0x1E69E7CC0];
    sub_1CF681008(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      break;
    }

    v20 = 0;
    v104 = v186[0];
    v38 = v27 & 0xC000000000000001;
    v182 = v27 & 0xFFFFFFFFFFFFFF8;
    while (v38)
    {
      v105 = MEMORY[0x1D3869C30](v20, v27);
LABEL_35:
      v39 = *(v105 + 128);

      v186[0] = v104;
      a4 = *v104->tree;
      v113 = *v104->tester;
      isa = a4 + 1;
      if (a4 >= v113 >> 1)
      {
        sub_1CF681008((v113 > 1), a4 + 1, 1);
        v104 = v186[0];
      }

      v20 = (v20 + 1);
      *v104->tree = isa;
      *(&v104[1].super.isa + a4) = v39;
      if (v22 == v20)
      {
        v27, v106, v107, v108, v109, v110, v111, v112;
        v121 = v183;
        v39 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }
    }

    if (v20 < *(v182 + 16))
    {

      goto LABEL_35;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_once();
LABEL_15:
    *&v183 = qword_1EDEABDE8;
    if (*(v20[4] + 32))
    {
      v62 = qword_1EDEABDE8 & 0xFFFFFFFFFFFEFFEFLL | 0x10;
    }

    else
    {
      v62 = qword_1EDEABDE8 | 0x10;
    }

    if (*(v20[4] + 32))
    {
      a4 = (v39 >> 2) & 1;
    }

    else
    {
      LODWORD(a4) = (a4 & 4) != 0 && (a4 & 0x30) == 0;
    }

    sub_1CF7F62D0(v185);
    if (!v185[0] || LOBYTE(v185[27]) == 255 || v185[19] >> 60 == 11)
    {
      memcpy(v184, v185, sizeof(v184));
      sub_1CEFCCC44(v184, &unk_1EC4BFC90, &unk_1CFA053E0);
      sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
      goto LABEL_54;
    }

    v125 = LOBYTE(v185[43]);
    memcpy(v184, v185, sizeof(v184));
    sub_1CEFCCC44(v184, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v186, &unk_1EC4BFC20, &unk_1CFA0A290);
    if (v125)
    {
LABEL_54:
      if (a4)
      {
        goto LABEL_55;
      }
    }

    else
    {
LABEL_55:
      v62 &= v183 & 0xFF9BD6FFFFFE36E7 | 0x6409000000C000;
    }

    LODWORD(v180) = (v62 & isa | v38 & 0x51) == 0;
    if (!(v62 & isa | v38 & 0x51))
    {
      v22 = 0;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
}

int64_t sub_1CF409C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

void sub_1CF409D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v52 - v17;
  swift_beginAccess();
  v18 = *(a3 + 16);
  v52 = v6;
  v64 = (v6 + 48);
  v65 = (v6 + 56);
  v61 = v18;

  v19 = 0;
  v56 = v13;
  v53 = a2;
  while (1)
  {
    v20 = *v61->tree;
    if (v19 == v20)
    {
      v63 = v19;
      v21 = 1;
      goto LABEL_6;
    }

    if (v19 >= v20)
    {
      break;
    }

    sub_1CEFCCBDC(v61 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v19, v13, &qword_1EC4BE670, &qword_1CF9FE4D0);
    v21 = 0;
    v63 = v19 + 1;
LABEL_6:
    v22 = *v65;
    v23 = 1;
    (*v65)(v13, v21, 1, v5);
    v24 = *v64;
    if ((*v64)(v13, 1, v5) != 1)
    {
      v25 = *(v5 + 64);
      v26 = *(v5 + 80);
      v27 = v13[1];
      *&v62 = *v13;
      v54 = v26;
      v55 = v27;
      v28 = sub_1CF9E6448();
      v29 = *(*(v28 - 8) + 32);
      v29(&v10[v25], v13 + v25, v28);
      v30 = swift_allocObject();
      *(v30 + 16) = *(v13 + v54);
      v31 = *(v5 + 64);
      v32 = v60;
      v33 = &v60[*(v5 + 80)];
      v34 = v55;
      *v60 = v62;
      *(v32 + 1) = v34;
      v35 = &v10[v25];
      a2 = v53;
      v29(&v32[v31], v35, v28);
      v23 = 0;
      *v33 = sub_1CF485B44;
      v33[1] = v30;
    }

    v36 = v60;
    v22(v60, v23, 1, v5);
    v37 = v59;
    sub_1CEFE55D0(v36, v59, &unk_1EC4C04F0, &qword_1CFA12B10);
    if (v24(v37, 1, v5) == 1)
    {
      v61, v38, v39, v40, v41, v42, v43, v44;
      return;
    }

    v45 = *(v5 + 64);
    v46 = *(v5 + 80);
    *v10 = *v37;
    v47 = sub_1CF9E6448();
    v48 = *(v47 - 8);
    v49 = *(v48 + 32);
    v62 = *&v37[v46];
    v49(&v10[v45], &v37[v45], v47);
    *&v10[v46] = v62;
    v50 = v57;
    sub_1CEFCCBDC(v10, v57, &qword_1EC4BE670, &qword_1CF9FE4D0);
    sub_1CEFD0A98(*v50);
    v51 = *(v5 + 64);
    (*(v50 + *(v5 + 80)))(v58, a2);

    sub_1CEFCCC44(v10, &qword_1EC4BE670, &qword_1CF9FE4D0);
    (*(v48 + 8))(v50 + v51, v47);
    v13 = v56;
    v19 = v63;
  }

  __break(1u);
}

void sub_1CF40A1C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v104 = a4;
  v103 = a3;
  v102 = a1;
  v106 = sub_1CF9E6118();
  v5 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v7 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = &qword_1CF9FE4D0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v96[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v96[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96[-v16];
  v109 = &v96[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04F0, &qword_1CFA12B10);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v112 = &v96[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v96[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v96[-v23];
  swift_beginAccess();
  v24 = *(a2 + 16);
  v25 = *v24->tree;
  v98 = v17 + 8;
  v117 = (v10 + 56);
  v99 = v10;
  v116 = (v10 + 48);
  v105 = (v5 + 8);
  v100 = v24;

  v26 = 0;
  *&v27 = 136315394;
  v97 = v27;
  v107 = v7;
  v110 = v12;
  v101 = v25;
  while (1)
  {
    v60 = v112;
    if (v26 == v25)
    {
      v61 = 1;
      v114 = v25;
      goto LABEL_9;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 >= *v100->tree)
    {
      goto LABEL_16;
    }

    sub_1CEFCCBDC(v100 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v26, v112, &qword_1EC4BE670, v8);
    v61 = 0;
    v114 = v26 + 1;
LABEL_9:
    v62 = *v117;
    v63 = 1;
    (*v117)(v60, v61, 1, v9);
    v120 = *v116;
    if (v120(v60, 1, v9) != 1)
    {
      v64 = *(v9 + 64);
      v65 = *(v9 + 80);
      v66 = *(v60 + 1);
      v118 = *v60;
      *&v113 = v66;
      v67 = sub_1CF9E6448();
      v68 = *(*(v67 - 8) + 32);
      v69 = v109;
      v68(&v109[v64], &v60[v64], v67);
      v70 = swift_allocObject();
      v71 = v111;
      *(v70 + 16) = *&v112[v65];
      v72 = *(v9 + 64);
      v73 = (v71 + *(v9 + 80));
      v74 = v113;
      *v71 = v118;
      v71[1] = v74;
      v75 = &v69[v64];
      v7 = v107;
      v68(v71 + v72, v75, v67);
      v12 = v110;
      v8 = &qword_1CF9FE4D0;
      v63 = 0;
      *v73 = sub_1CF485B44;
      v73[1] = v70;
    }

    v76 = v111;
    v62(v111, v63, 1, v9);
    v77 = v108;
    sub_1CEFE55D0(v76, v108, &unk_1EC4C04F0, &qword_1CFA12B10);
    if (v120(v77, 1, v9) == 1)
    {
      v100, v78, v79, v80, v81, v82, v83, v84;
      return;
    }

    v85 = *(v9 + 64);
    v86 = *(v9 + 80);
    v87 = v115;
    *v115 = *v77;
    v88 = sub_1CF9E6448();
    v118 = *(v88 - 8);
    v89 = *(v118 + 32);
    v113 = *&v77[v86];
    v120 = v88;
    v89(&v87[v85], &v77[v85]);
    *&v87[v86] = v113;
    v90 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(v87, v12, &qword_1EC4BE670, v8);
    v91 = v12;
    v92 = v103;
    v93 = sub_1CF9E6108();
    v94 = v8;
    v95 = sub_1CF9E7288();
    if (os_log_type_enabled(v93, v95))
    {
      v28 = swift_slowAlloc();
      *&v113 = swift_slowAlloc();
      v119[0] = v113;
      *v28 = v97;
      v29 = NSFileProviderItemIdentifier.description.getter(v92);
      v31 = v30;

      v32 = sub_1CEFD0DF0(v29, v31, v119);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v40 = v94;
      v41 = v109;
      sub_1CEFCCBDC(v91, v109, &qword_1EC4BE670, v40);
      v42 = *v41;
      v43 = *(v9 + 64);

      (*(v118 + 8))(v41 + v43, v120);
      sub_1CEFCCC44(v91, &qword_1EC4BE670, v40);
      v44 = sub_1CF913458(v42);
      v46 = v45;
      sub_1CEFD0A98(v42);
      v47 = v44;
      v7 = v107;
      v48 = sub_1CEFD0DF0(v47, v46, v119);
      v46, v49, v50, v51, v52, v53, v54, v55;
      *(v28 + 14) = v48;
      _os_log_impl(&dword_1CEFC7000, v93, v95, "propagation <fp:%s reason:%s> completed and flushed", v28, 0x16u);
      v56 = v113;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v56, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);

      (*v105)(v7, v106);
      v8 = &qword_1CF9FE4D0;
    }

    else
    {
      sub_1CEFCCC44(v91, &qword_1EC4BE670, v94);

      (*v105)(v7, v106);
      v8 = v94;
      v41 = v109;
    }

    v57 = v115;
    sub_1CEFCCBDC(v115, v41, &qword_1EC4BE670, v8);
    sub_1CEFD0A98(*v41);
    v58 = *(v9 + 64);
    v59 = *(v41 + *(v9 + 80));
    sub_1CF1A91AC(v102, v119);
    v59(v119, v104);

    sub_1CEFCCC44(v119, &unk_1EC4C1B30, &qword_1CFA05300);
    sub_1CEFCCC44(v57, &qword_1EC4BE670, v8);
    (*(v118 + 8))(v41 + v58, v120);
    v12 = v110;
    v25 = v101;
    v26 = v114;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1CF40AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v59 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v52 - v16;
  swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = *v17->tree;
  v53 = v6;
  v66 = (v6 + 48);
  v67 = (v6 + 56);
  v55 = v17;

  v19 = 0;
  v58 = v18;
  v54 = a1;
  while (1)
  {
    v20 = v63;
    if (v19 == v18)
    {
      v21 = 1;
      v65 = v18;
      goto LABEL_7;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *v55->tree)
    {
      goto LABEL_13;
    }

    sub_1CEFCCBDC(v55 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v19, v63, &unk_1EC4C5230, &unk_1CF9FE4C0);
    v21 = 0;
    v65 = v19 + 1;
LABEL_7:
    v22 = *v67;
    v23 = 1;
    (*v67)(v20, v21, 1, v5);
    v24 = *v66;
    if ((*v66)(v20, 1, v5) != 1)
    {
      v25 = *(v5 + 64);
      v26 = *(v5 + 80);
      v27 = v63;
      v28 = *(v63 + 1);
      *&v64 = *v63;
      v56 = v26;
      v57 = v28;
      v29 = sub_1CF9E6448();
      v30 = *(*(v29 - 8) + 32);
      v30(&v10[v25], &v27[v25], v29);
      v31 = swift_allocObject();
      *(v31 + 16) = *&v27[v56];
      v32 = *(v5 + 64);
      v33 = v62;
      v34 = &v62[*(v5 + 80)];
      v35 = v57;
      *v62 = v64;
      *(v33 + 1) = v35;
      v30(&v33[v32], &v10[v25], v29);
      v23 = 0;
      *v34 = sub_1CF485B44;
      v34[1] = v31;
      a1 = v54;
    }

    v36 = v62;
    v22(v62, v23, 1, v5);
    v37 = v61;
    sub_1CEFE55D0(v36, v61, &unk_1EC4C04D0, &unk_1CFA12B00);
    if (v24(v37, 1, v5) == 1)
    {
      v55, v38, v39, v40, v41, v42, v43, v44;
      return;
    }

    v45 = *(v5 + 64);
    v46 = *(v5 + 80);
    *v10 = *v37;
    v47 = sub_1CF9E6448();
    v48 = *(v47 - 8);
    v49 = *(v48 + 32);
    v64 = *&v37[v46];
    v49(&v10[v45], &v37[v45], v47);
    *&v10[v46] = v64;
    v50 = v59;
    sub_1CEFCCBDC(v10, v59, &unk_1EC4C5230, &unk_1CF9FE4C0);
    sub_1CEFD0A98(*v50);
    v51 = *(v5 + 64);
    (*(v50 + *(v5 + 80)))(a1, v60);

    sub_1CEFCCC44(v10, &unk_1EC4C5230, &unk_1CF9FE4C0);
    (*(v48 + 8))(v50 + v51, v47);
    v18 = v58;
    v19 = v65;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1CF40AF0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v132 = a5;
  v125 = a4;
  v133 = a1;
  v135 = sub_1CF9E6118();
  v7 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04D0, &unk_1CFA12B00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v138 = (&v119 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v119 - v24;
  swift_beginAccess();
  v25 = *(a2 + 16);
  v137 = v17;
  v124 = v17 + 8;
  v145 = (v11 + 56);
  v126 = v11;
  v144 = (v11 + 48);
  v26 = *v25->tree;
  v134 = (v7 + 8);
  v122 = a3;
  v27 = 1953460082;
  if (a3)
  {
    v27 = 0x6873617274;
  }

  v121 = v27;
  v28 = 0xE500000000000000;
  if (!a3)
  {
    v28 = 0xE400000000000000;
  }

  v120 = v28;
  v127 = v25;

  v29 = 0;
  *&v30 = 136315394;
  v123 = v30;
  v142 = v9;
  v143 = v20;
  v147 = v10;
  v130 = v26;
  while (1)
  {
    if (v29 == v26)
    {
      v36 = 1;
      v140 = v26;
      goto LABEL_13;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *v127->tree)
    {
      goto LABEL_24;
    }

    sub_1CEFCCBDC(v127 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v29, v20, &unk_1EC4C5230, &unk_1CF9FE4C0);
    v36 = 0;
    v140 = v29 + 1;
LABEL_13:
    v37 = *v145;
    v38 = 1;
    (*v145)(v20, v36, 1, v10);
    v39 = *v144;
    if ((*v144)(v20, 1, v10) != 1)
    {
      v40 = *(v10 + 64);
      v41 = *(v10 + 80);
      v42 = *(v20 + 1);
      v146 = *v20;
      *&v139 = v42;
      v43 = sub_1CF9E6448();
      v44 = *(*(v43 - 8) + 32);
      v45 = v137;
      v44(v137 + v40, &v143[v40], v43);
      v46 = swift_allocObject();
      *(v46 + 16) = *&v143[v41];
      v47 = *(v147 + 64);
      v48 = v138;
      v49 = (v138 + *(v147 + 80));
      v50 = v139;
      *v138 = v146;
      v48[1] = v50;
      v51 = v45 + v40;
      v9 = v142;
      v44(v48 + v47, v51, v43);
      v10 = v147;
      v38 = 0;
      *v49 = sub_1CF485B44;
      v49[1] = v46;
    }

    v52 = v138;
    v37(v138, v38, 1, v10);
    v53 = v136;
    sub_1CEFE55D0(v52, v136, &unk_1EC4C04D0, &unk_1CFA12B00);
    if (v39(v53, 1, v10) == 1)
    {
      v127, v54, v55, v56, v57, v58, v59, v60;
      return;
    }

    v61 = *(v10 + 64);
    v62 = *(v10 + 80);
    v63 = v141;
    *v141 = *v53;
    v64 = sub_1CF9E6448();
    v65 = *(v64 - 8);
    v66 = *(v65 + 32);
    v139 = *&v53[v62];
    v66(&v63[v61], &v53[v61], v64);
    *&v63[v62] = v139;
    v67 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v68 = v131;
    sub_1CEFCCBDC(v63, v131, &unk_1EC4C5230, &unk_1CF9FE4C0);
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E7288();
    v71 = os_log_type_enabled(v69, v70);
    v146 = v64;
    if (v71)
    {
      LODWORD(v139) = v70;
      v72 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v151 = v129;
      *v72 = v123;
      v128 = v69;
      v31 = v65;
      if (v125)
      {
        v73 = v121;
        v74 = v120;
        v32 = v137;
        if (v125 == 1)
        {
          v149 = 0x284449656C6966;
          v150 = 0xE700000000000000;
          v148 = v122;
          v75 = sub_1CF9E7F98();
          v77 = v76;
          MEMORY[0x1D3868CC0](v75);
          v77, v78, v79, v80, v81, v82, v83, v84;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v73 = v149;
          v74 = v150;
        }
      }

      else
      {
        v149 = 0x284449636F64;
        v150 = 0xE600000000000000;
        LODWORD(v148) = v122;
        v85 = sub_1CF9E7F98();
        v87 = v86;
        MEMORY[0x1D3868CC0](v85);
        v87, v88, v89, v90, v91, v92, v93, v94;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v73 = v149;
        v74 = v150;
        v32 = v137;
      }

      v95 = sub_1CEFD0DF0(v73, v74, &v151);
      v74, v96, v97, v98, v99, v100, v101, v102;
      *(v72 + 4) = v95;
      *(v72 + 12) = 2080;
      sub_1CEFCCBDC(v68, v32, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v103 = *v32;
      v10 = v147;
      v104 = v68;
      v105 = *(v147 + 64);

      (*(v31 + 8))(v32 + v105, v146);
      sub_1CEFCCC44(v104, &unk_1EC4C5230, &unk_1CF9FE4C0);
      v106 = sub_1CEFD11AC(v103);
      v108 = v107;
      sub_1CEFD0A98(v103);
      v109 = sub_1CEFD0DF0(v106, v108, &v151);
      v108, v110, v111, v112, v113, v114, v115, v116;
      *(v72 + 14) = v109;
      v117 = v128;
      _os_log_impl(&dword_1CEFC7000, v128, v139, "propagation <fs:%s reason:%s> completed and flushed", v72, 0x16u);
      v118 = v129;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v118, -1, -1);
      MEMORY[0x1D386CDC0](v72, -1, -1);

      (*v134)(v142, v135);
    }

    else
    {
      sub_1CEFCCC44(v68, &unk_1EC4C5230, &unk_1CF9FE4C0);

      (*v134)(v9, v135);
      v31 = v65;
      v10 = v147;
      v32 = v137;
    }

    v33 = v141;
    sub_1CEFCCBDC(v141, v32, &unk_1EC4C5230, &unk_1CF9FE4C0);
    sub_1CEFD0A98(*v32);
    v34 = *(v10 + 64);
    v35 = *(v32 + *(v10 + 80));
    sub_1CF1A91AC(v133, &v149);
    v35(&v149, v132);

    sub_1CEFCCC44(&v149, &unk_1EC4C1B30, &qword_1CFA05300);
    sub_1CEFCCC44(v33, &unk_1EC4C5230, &unk_1CF9FE4C0);
    (*(v31 + 8))(v32 + v34, v146);
    v26 = v130;
    v29 = v140;
    v9 = v142;
    v20 = v143;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

double sub_1CF40B8D0(void (*a1)(void *, __n128), uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4[82] & 0x20) != 0)
  {
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Materialization or eviction waiting for flush", v17, 2u);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v20 = *(*a4 + 456);
    swift_retain_n();
    v21 = a3;
    v20("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF481760, v18, sub_1CF481768, v19);
  }

  else
  {
    a1(a3, v10);
  }

  return result;
}

uint64_t sub_1CF40BB34(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v13 = a2;
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E7298();

  if (os_log_type_enabled(v14, v15))
  {
    v24 = a3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    if (a2)
    {
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v16 + 4) = v19;
    *v17 = v20;
    _os_log_impl(&dword_1CEFC7000, v14, v15, "materializtion after injection failed with %@ skipping error", v16, 0xCu);
    sub_1CEFCCC44(v17, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v17, -1, -1);
    MEMORY[0x1D386CDC0](v16, -1, -1);
    a3 = v24;
  }

  (*(v9 + 8))(v11, v8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  return a3(*(a5 + *(v21 + 96)), *(a5 + *(v21 + 96) + 8), 0);
}

double sub_1CF40BD4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6118();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  sub_1CEFCCBDC(a2, &v28 - v14, &unk_1EC4C04C0, &qword_1CFA07B10);
  sub_1CEFCCBDC(v15, v12, &unk_1EC4C04C0, &qword_1CFA07B10);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v18 = a3;
  sub_1CEFE55D0(v15, v17 + v16, &unk_1EC4C04C0, &qword_1CFA07B10);
  if ((*(a3 + 82) & 0x20) != 0)
  {
    sub_1CEFCCC44(v12, &unk_1EC4C04C0, &qword_1CFA07B10);
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E7298();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "Materialization or eviction waiting for flush", v23, 2u);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    (*(v28 + 8))(v8, v29);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1CF4816E4;
    *(v24 + 24) = v17;
    v25 = swift_allocObject();
    v25[2] = sub_1CF4816E4;
    v25[3] = v17;
    v25[4] = a1;
    v26 = *(*v18 + 456);
    swift_retain_n();
    v27 = a1;
    v26("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF481760, v24, sub_1CF481768, v25);
  }

  else
  {
    sub_1CF40C108(a1, v12);

    sub_1CEFCCC44(v12, &unk_1EC4C04C0, &qword_1CFA07B10);
  }

  return result;
}

void sub_1CF40C108(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = (&v50 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v14;
  v15 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) + 56));
  v16 = *(v15 + 64);
  v51 = v15 + 64;
  v52 = v4;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v50 = (v17 + 63) >> 6;
  v65 = (v4 + 48);
  v66 = (v4 + 56);
  v53 = v15;

  v20 = 0;
  v57 = v10;
  if (v19)
  {
    while (1)
    {
      v21 = v20;
LABEL_11:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      sub_1CEFCCBDC(*(v53 + 56) + *(v52 + 72) * (v23 | (v21 << 6)), v10, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v24 = 0;
      v64 = v21;
LABEL_12:
      v25 = *v66;
      v26 = 1;
      (*v66)(v10, v24, 1, v3);
      v27 = *v65;
      if ((*v65)(v10, 1, v3) != 1)
      {
        v28 = *(v3 + 80);
        v29 = *(v3 + 96);
        v56 = *v10;
        v30 = *(v10 + 2);
        v54 = v29;
        v55 = v30;
        v31 = sub_1CF9E6448();
        v32 = *(*(v31 - 8) + 32);
        *&v63 = v27;
        v33 = v61;
        v32(&v61[v28], &v10[v28], v31);
        v34 = swift_allocObject();
        *(v34 + 16) = *&v10[v54];
        v35 = *(v3 + 80);
        v36 = v62;
        v37 = (v62 + *(v3 + 96));
        *v62 = v56;
        *(v36 + 2) = v55;
        v32(v36 + v35, &v33[v28], v31);
        v27 = v63;
        v26 = 0;
        *v37 = sub_1CF485B60;
        v37[1] = v34;
      }

      v38 = v62;
      v25(v62, v26, 1, v3);
      v39 = v60;
      sub_1CEFE55D0(v38, v60, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if (v27(v39, 1, v3) == 1)
      {
        break;
      }

      v40 = *(v39 + 16);
      v41 = *(v3 + 80);
      v42 = *(v3 + 96);
      v43 = v61;
      *v61 = *v39;
      *(v43 + 16) = v40;
      v44 = sub_1CF9E6448();
      v45 = *(v44 - 8);
      v46 = *(v45 + 32);
      v63 = *(v39 + v42);
      v46(v43 + v41, v39 + v41, v44);
      *(v43 + v42) = v63;
      v47 = v58;
      sub_1CEFCCBDC(v43, v58, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CEFD0A98(*v47);

      v48 = *(v3 + 80);
      (*(v47 + *(v3 + 96)))(v59);

      v49 = v43;
      v10 = v57;
      sub_1CEFCCC44(v49, &unk_1EC4C04B0, &unk_1CF9FCB20);
      (*(v45 + 8))(v47 + v48, v44);
      v20 = v64;
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v50 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v50;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v50)
      {
        v64 = v22 - 1;
        v19 = 0;
        v24 = 1;
        goto LABEL_12;
      }

      v19 = *(v51 + 8 * v21);
      ++v20;
      if (v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

double sub_1CF40C648(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, unsigned __int8 a11)
{
  v51 = a7;
  v52 = a8;
  v46 = a4;
  v47 = a5;
  v42 = a3;
  v45 = a2;
  v43 = a1;
  v50 = a11;
  v48 = a9;
  v49 = a10;
  v55 = sub_1CF9E63A8();
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v41 - v20;
  v44 = *(a3 + 64);
  sub_1CEFCCBDC(a6, &v41 - v20, &unk_1EC4C04C0, &qword_1CFA07B10);
  v22 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  v27 = v45 & 1;
  *(v26 + 24) = v45 & 1;
  v28 = v47;
  *(v26 + 32) = v46;
  *(v26 + 40) = v28;
  sub_1CEFE55D0(v21, v26 + v22, &unk_1EC4C04C0, &qword_1CFA07B10);
  v29 = (v26 + v23);
  v30 = v52;
  *v29 = v51;
  v29[1] = v30;
  v32 = v48;
  v31 = v49;
  *(v26 + v24) = v48;
  *(v26 + v25) = v42;
  v33 = v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = v31;
  *(v33 + 8) = v50;
  aBlock[4] = sub_1CF48134C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_984;
  v34 = _Block_copy(aBlock);
  v35 = v44;
  sub_1CEFCF530(v43, v27);

  v36 = v32;

  v37 = v53;
  sub_1CF9E63F8();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v39 = v54;
  v38 = v55;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v37, v39, v34);
  _Block_release(v34);

  (*(v58 + 8))(v39, v38);
  (*(v56 + 8))(v37, v57);

  return result;
}

void sub_1CF40CAC4(uint64_t a1, char a2, void (*a3)(uint64_t, __n128), void (**a4)(uint64_t, uint64_t, uint64_t, uint64_t), id *a5, void (*a6)(void, id, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v205 = a8;
  v204 = a7;
  v203 = a6;
  v257 = a3;
  v258 = a5;
  v255 = a4;
  v201 = sub_1CF9E63D8();
  *&v260 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v229 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v252 = &v197 - v17;
  v228 = sub_1CF9E6068();
  v18 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v226 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v244 = &v197 - v23;
  v225 = type metadata accessor for Signpost(0);
  v224 = *(v225 - 8);
  v24 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v197 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v222 = &v197 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v243 = &v197 - v28;
  v262 = sub_1CF9E6448();
  v29 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v221 = v30;
  v220 = &v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v31 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v33 = &v197 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v197 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v261 = (&v197 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v197 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v197 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v249 = (&v197 - v46);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v237 = &v197 - v49;
  if (a2)
  {
    v257(a1, v48);
    return;
  }

  v218 = a11;
  v242 = a10;
  v251 = a9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v51 = *(v258 + *(v50 + 56));
  v52 = *(v51 + 64);
  v236 = v51 + 64;
  v53 = 1 << *(v51 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v257 = (v54 & v52);
  v217 = qword_1EDEBBC38;
  v234 = v36;
  v233 = v36 + 8;
  v230 = v33 + 8;
  v238 = v41;
  v216 = v41 + 8;
  v202 = (v53 + 63) >> 6;
  v254 = (v31 + 48);
  v255 = (v31 + 56);
  v258 = (v29 + 32);
  v55 = (v29 + 8);
  v241 = &v264;
  v215 = v29 + 16;
  v214 = (v18 + 56);
  v213 = (v18 + 48);
  v199 = (v18 + 32);
  v212 = (v18 + 16);
  v211 = (v18 + 8);
  v210 = (v29 + 56);
  v209 = v24 + 7;
  v208 = (v29 + 48);
  v198 = (v260 + 8);
  v231 = v51;

  v56 = 0;
  v206 = a1;
  v197 = (a1 + 40);
  v207 = xmmword_1CF9FA450;
  v219 = v29;
  v57 = v259;
  v232 = v31;
  v235 = v33;
  v256 = v44;
  v245 = (v29 + 8);
  while (1)
  {
    v58 = v257;
    if (!v257)
    {
      break;
    }

    v59 = v56;
LABEL_18:
    v257 = ((v58 - 1) & v58);
    v62 = *(v231 + 56) + *(v31 + 72) * (__clz(__rbit64(v58)) | (v59 << 6));
    v63 = v256;
    sub_1CEFCCBDC(v62, v256, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v64 = 0;
LABEL_19:
    v65 = *v255;
    v66 = 1;
    (*v255)(v63, v64, 1, v57);
    v67 = *v254;
    if ((*v254)(v63, 1, v57) != 1)
    {
      v68 = *(v57 + 80);
      v69 = *(v57 + 96);
      v260 = *v63;
      v70 = *(v63 + 16);
      v253 = *v258;
      v71 = v238;
      v72 = v262;
      v253(v238 + v68, &v256[v68], v262);
      v73 = swift_allocObject();
      *(v73 + 16) = *&v256[v69];
      v74 = *(v259 + 80);
      v75 = v249;
      v76 = (v249 + *(v259 + 96));
      *v249 = v260;
      *(v75 + 2) = v70;
      v253(v75 + v74, v71 + v68, v72);
      v55 = v245;
      v57 = v259;
      v66 = 0;
      *v76 = sub_1CF485B60;
      v76[1] = v73;
    }

    v77 = v249;
    v65(v249, v66, 1, v57);
    v78 = v237;
    sub_1CEFE55D0(v77, v237, &qword_1EC4BE1C0, &unk_1CFA058B0);
    if (v67(v78, 1, v57) == 1)
    {

      return;
    }

    v79 = *(v78 + 8);
    v80 = *(v78 + 16);
    v81 = *(v57 + 80);
    v82 = *(v57 + 96);
    v84 = *(v78 + v82);
    v83 = *(v78 + v82 + 8);
    v85 = v261;
    v86 = (v261 + v82);
    v248 = *v78;
    *v261 = v248;
    v85[1] = v79;
    v250 = v79;
    v85[2] = v80;
    v87 = *v258;
    v246 = v85 + v81;
    v88 = v262;
    v247 = v87;
    v87();
    *&v260 = v84;
    *v86 = v84;
    v86[1] = v83;
    v253 = v83;
    v89 = v234;
    sub_1CEFCCBDC(v85, v234, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v90 = *v89;

    v91 = *(v57 + 80);

    v92 = sub_1CF90C94C(v90);
    sub_1CEFD0A98(v90);
    if (v92)
    {
      v93 = *v55;
      (*v55)(v89 + v91, v88);
      v94 = [v92 selectedForMaterialization];
      v95 = v235;
      if (v94)
      {
        v203(v260, v253, v205);

        goto LABEL_7;
      }
    }

    else
    {
      v93 = *v55;
      (*v55)(v89 + v91, v88);
      v95 = v235;
    }

    sub_1CEFCCBDC(v261, v95, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v96 = *v95;

    v97 = *(v57 + 80);

    v98 = sub_1CF90C94C(v96);
    sub_1CEFD0A98(v96);
    if (v98)
    {
      v99 = [v98 requestedExtent];
      v101 = v100;

      v93(v95 + v97, v88);
      if (v99 != -1 && v101 != -1)
      {
        v102 = &v99[v101];
        if (__OFADD__(v99, v101))
        {
          goto LABEL_58;
        }

        if (v102 < v99)
        {
          goto LABEL_59;
        }

        v103 = *(v206 + 16) + 1;
        v104 = v197;
        while (--v103)
        {
          v105 = *(v104 - 1);
          if (v102 < v105)
          {
            break;
          }

          v107 = *v104;
          v104 += 2;
          v106 = v107;
          if (v99 >= v105 && v99 < v106 && v106 >= v102)
          {
            v203(v260, v253, v205);
            v57 = v259;
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      v93(v95 + v97, v88);
    }

    v110 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    [v110 setCancellable_];
    v111 = swift_allocObject();
    v112 = v251;
    swift_weakInit();
    v113 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v114 = swift_allocObject();
    *(v114 + 16) = v111;
    *(v114 + 24) = v113;
    *(v114 + 32) = v242;
    v115 = v218;
    *(v114 + 40) = v218;
    v266 = sub_1CF481424;
    v267 = v114;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v264 = sub_1CEFCA444;
    v265 = &block_descriptor_1024;
    v116 = _Block_copy(&aBlock);

    sub_1CF03C63C(sub_1CF481424, v114);

    [v110 setCancellationHandler_];
    _Block_release(v116);

    v117 = v262;

    v118 = v219;
    v119 = v220;
    (*(v219 + 16))(v220, v246, v117);
    v120 = (*(v118 + 80) + 80) & ~*(v118 + 80);
    v121 = swift_allocObject();
    v122 = v260;
    v123 = v253;
    *(v121 + 16) = v260;
    *(v121 + 24) = v123;
    v124 = v242;
    *(v121 + 32) = v112;
    *(v121 + 40) = v124;
    *(v121 + 48) = v115;
    v125 = v248;
    v126 = v250;
    *(v121 + 56) = v248;
    *(v121 + 64) = v126;
    *(v121 + 72) = v110;
    v250 = v121;
    (v247)(v121 + v120, v119, v117);
    v127 = swift_allocObject();
    *(v127 + 16) = v122;
    *(v127 + 24) = v123;
    *&v260 = v127;
    swift_retain_n();

    sub_1CEFD09A0(v125);
    v128 = v110;
    v253 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v129 = qword_1EDEBBE40;
    v130 = v244;
    v131 = v228;
    (*v214)(v244, 1, 1, v228);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v132 = sub_1CF9E7988();
    v134 = v133;
    MEMORY[0x1D3868CC0](v132);
    v134, v135, v136, v137, v138, v139, v140, v141;
    v142 = *(&aBlock + 1);
    v248 = aBlock;
    v143 = v226;
    sub_1CEFCCBDC(v130, v226, &unk_1EC4BED20, &unk_1CFA00700);
    v144 = *v213;
    v145 = (*v213)(v143, 1, v131);
    v146 = v227;
    v239 = v128;
    if (v145 == 1)
    {
      v147 = v129;
      sub_1CF9E6048();
      if (v144(v143, 1, v131) != 1)
      {
        sub_1CEFCCC44(v143, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*v199)(v227, v143, v131);
    }

    v148 = v243;
    (*v212)(v243, v146, v131);
    v149 = v225;
    *(v148 + *(v225 + 20)) = v129;
    v150 = v148 + *(v149 + 24);
    *v150 = "DB queue wait";
    *(v150 + 8) = 13;
    *(v150 + 16) = 2;
    v151 = v129;
    v152 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v153 = swift_allocObject();
    *(v153 + 16) = v207;
    *(v153 + 56) = MEMORY[0x1E69E6158];
    *(v153 + 64) = sub_1CEFD51C4();
    *(v153 + 32) = v248;
    *(v153 + 40) = v142;
    sub_1CF9E6028(v152, &dword_1CEFC7000, v151, "DB queue wait", 13, 2, v148, "%s", 2);
    v153, v154, v155, v156, v157, v158, v159, v160;
    (*v211)(v146, v131);
    sub_1CEFCCC44(v244, &unk_1EC4BED20, &unk_1CFA00700);
    v246 = *(v251 + 168);
    v248 = *(v251 + 64);
    (*v210)(v252, 1, 1, v117);
    v161 = v222;
    sub_1CEFDA214(v148, v222, type metadata accessor for Signpost);
    v162 = (*(v224 + 80) + 16) & ~*(v224 + 80);
    v163 = (v209 + v162) & 0xFFFFFFFFFFFFFFF8;
    v164 = swift_allocObject();
    v240 = type metadata accessor for Signpost;
    sub_1CEFD9F8C(v161, v164 + v162, type metadata accessor for Signpost);
    v165 = (v164 + v163);
    v247 = sub_1CF4814BC;
    v166 = v260;
    *v165 = sub_1CF4814BC;
    v165[1] = v166;
    v167 = v223;
    sub_1CEFDA214(v148, v223, type metadata accessor for Signpost);
    v168 = (v163 + 23) & 0xFFFFFFFFFFFFFFF8;
    v169 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
    v170 = (v169 + 25) & 0xFFFFFFFFFFFFFFF8;
    v171 = (v170 + 23) & 0xFFFFFFFFFFFFFFF8;
    v172 = swift_allocObject();
    sub_1CEFD9F8C(v167, v172 + v162, v240);
    v173 = (v172 + v163);
    v174 = v262;
    *v173 = sub_1CF045408;
    v173[1] = 0;
    *(v172 + v168) = v251;
    v175 = v172 + v169;
    *v175 = "materialize(_:request:options:qos:completion:)";
    *(v175 + 8) = 46;
    *(v175 + 16) = 2;
    v176 = (v172 + v170);
    v177 = v260;
    *v176 = v247;
    v176[1] = v177;
    v178 = v172;
    v179 = (v172 + v171);
    v180 = v250;
    *v179 = sub_1CF481430;
    v179[1] = v180;
    v181 = swift_allocObject();
    v181[2] = sub_1CF485AA8;
    v181[3] = v164;
    v182 = v246;
    v181[4] = v246;
    swift_retain_n();

    v247 = v164;

    v183 = fpfs_current_log();
    v246 = *(v182 + 2);
    v184 = v229;
    sub_1CEFCCBDC(v252, v229, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*v208)(v184, 1, v174) == 1)
    {
      sub_1CEFCCC44(v184, &unk_1EC4BE370, qword_1CFA01B30);
      LODWORD(v240) = 0;
    }

    else
    {
      v185 = v200;
      sub_1CF9E6438();
      (*v245)(v184, v174);
      LODWORD(v240) = sub_1CF9E63C8();
      (*v198)(v185, v201);
    }

    v57 = v259;
    v186 = v238;
    v187 = swift_allocObject();
    v187[2] = v183;
    v187[3] = sub_1CF4858EC;
    v187[4] = v178;
    v266 = sub_1CF2BA17C;
    v267 = v187;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v264 = sub_1CEFCA444;
    v265 = &block_descriptor_1018;
    v188 = _Block_copy(&aBlock);
    v189 = v183;

    v266 = sub_1CF2BA180;
    v267 = v181;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v264 = sub_1CEFCA444;
    v265 = &block_descriptor_1021_0;
    v190 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v246, v248, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v240, v188, v190);
    _Block_release(v190);
    _Block_release(v188);

    sub_1CEFCCC44(v252, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5278(v243, type metadata accessor for Signpost);
    v191 = v253;
    v192 = fpfs_adopt_log();

    sub_1CEFCCBDC(v261, v186, &unk_1EC4C04B0, &unk_1CF9FCB20);
    sub_1CEFD0A98(*v186);
    v193 = v186[2];
    v194 = *(v57 + 80);

    v55 = v245;
    (*v245)(v186 + v194, v262);
    v195 = [v193 totalUnitCount];
    if (__OFADD__(v195, 1))
    {
      goto LABEL_57;
    }

    [v193 setTotalUnitCount_];
    v196 = v239;
    [v193 addChild:v239 withPendingUnitCount:1];

LABEL_7:
    sub_1CEFCCC44(v261, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v31 = v232;
  }

  if (v202 <= v56 + 1)
  {
    v60 = v56 + 1;
  }

  else
  {
    v60 = v202;
  }

  v61 = v60 - 1;
  while (1)
  {
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v59 >= v202)
    {
      v257 = 0;
      v64 = 1;
      v56 = v61;
      v63 = v256;
      goto LABEL_19;
    }

    v58 = *(v236 + 8 * v59);
    ++v56;
    if (v58)
    {
      v56 = v59;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1CF40E274(int a1, void *a2, void *a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v605) = a8;
  v602 = a6;
  v603 = a7;
  v600 = a3;
  v601 = a5;
  v606 = a4;
  v597 = a2;
  LODWORD(v604) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v596 = &v574 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v589 = &v574 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v591 = &v574 - v13;
  v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  *&v594 = *(v595 - 8);
  MEMORY[0x1EEE9AC00](v595);
  v590 = &v574 - v14;
  v592 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v592);
  v593 = (&v574 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v574 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v574 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v574 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v574 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v598 = *(v28 - 8);
  v599 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v574 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v574 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v574 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v574 - v38;
  v40 = sub_1CF9E6118();
  v41 = v603;
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v53 = MEMORY[0x1EEE9AC00](v45);
  v55 = &v574 - v54;
  v625 = v41;
  v626 = v605;
  v56 = *v50;
  v57 = *(v50 + 8);
  v58 = *(v50 + 24);
  v59 = *(v50 + 136);
  if (*(v50 + 137) == 6)
  {
    v60 = 4096;
  }

  else
  {
    v60 = 69632;
  }

  v61 = v604;
  if (v604 > 5u)
  {
    if (v604 <= 0x16u)
    {
      v62 = v602;
      if (v604 == 6)
      {
        if (v57 != 255)
        {
          if (*(v601[4] + 32) == 1 && (!*(v50 + 272) || v59 == 3))
          {
            ++v60;
          }

          v64 = v50;
          LOBYTE(v623[0]) = 0;
          *&v624[0] = v56;
          WORD4(v624[0]) = v57;
          LOBYTE(v624[1]) = 1;
          WORD1(v624[7]) = 2570;
          v65 = v56;
          v66 = v57;
          v67 = *(*v602 + 136);
          v68 = v60;
          v67(v624, v53);
          v605 = v68;
          if ((v68 & 0x10000) != 0)
          {
            LOBYTE(v622[0]) = 0;
            *&v624[0] = v65;
            WORD4(v624[0]) = v66;
            LOBYTE(v624[1]) = 3;
            BYTE2(v624[5]) = 10;
            BYTE3(v624[7]) = 9;
            (v67)(v624);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
          v69 = swift_allocObject();
          *(v69 + 152) = v66;
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0u;
          *(v69 + 48) = 1;
          *(v69 + 56) = 0u;
          *(v69 + 72) = 0u;
          *(v69 + 88) = 0;
          *(v69 + 120) = *(v64 + 472);
          *(v69 + 136) = v605;
          *(v69 + 144) = v65;
          *(v69 + 96) = xmmword_1CFA04E20;
          *(v69 + 112) = 0;
          v70 = sub_1CF47AFBC(0x2000);

LABEL_17:
          (*(*v62 + 144))(v70);
LABEL_63:

          return;
        }

        goto LABEL_290;
      }

      if (v604 == 12)
      {
        if (v57 == 255)
        {
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
          goto LABEL_296;
        }

        v196 = 128;
        if (!*(v50 + 248))
        {
          v196 = 32;
        }

        v197 = v196 | v60;
        LOBYTE(v623[0]) = 0;
        *&v624[0] = v56;
        WORD4(v624[0]) = v57;
        v624[1] = 0uLL;
        LOBYTE(v624[2]) = 2;
        WORD1(v624[7]) = 2571;
        v198 = v56;
        v199 = v57;
        v200 = v50;
        (*(*v602 + 136))(v624, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
        v201 = swift_allocObject();
        *(v201 + 160) = 0;
        *(v201 + 168) = -1;
        *(v201 + 152) = v199;
        *(v201 + 16) = 0u;
        *(v201 + 32) = 0u;
        *(v201 + 48) = 1;
        *(v201 + 56) = 0u;
        *(v201 + 72) = 0u;
        *(v201 + 88) = 0;
        *(v201 + 96) = xmmword_1CF9FEC30;
        *(v201 + 112) = 0;
        *(v201 + 120) = *(v200 + 472);
        *(v201 + 136) = v197;
        *(v201 + 144) = v198;
        (*(*v62 + 144))();

        return;
      }

LABEL_301:
      sub_1CF9E7B68();
      __break(1u);
LABEL_302:
      sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v515, 162);
    }

    v62 = v602;
    if (v604 != 23)
    {
      if (v604 == 75)
      {
        v202 = *(v50 + 248);
        if (v202)
        {
          v203 = v60;
          v204 = (v50 + 472);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCA0, &unk_1CFA053F0);
          v205 = swift_allocObject();
          *(v205 + 16) = 0u;
          *(v205 + 32) = 0u;
          *(v205 + 48) = 1;
          *(v205 + 56) = 0u;
          *(v205 + 72) = 0u;
          *(v205 + 88) = 0;
          *(v205 + 96) = xmmword_1CF9FEC30;
          *(v205 + 112) = 0;
          *(v205 + 120) = *v204;
          *(v205 + 136) = v203;
          *(v205 + 144) = v202;
          v206 = *(*v62 + 152);
          v207 = v202;
          v206(v205);

          goto LABEL_63;
        }

        goto LABEL_295;
      }

      goto LABEL_301;
    }

    if (v57 == 255)
    {
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v607 = *v50;
    LOBYTE(v608) = v57;
    v116 = *(v50 + 248);
    v117 = *(v50 + 272);
    if ((~*(v50 + 448) & 0xCLL) != 0)
    {
      v118 = v60;
    }

    else
    {
      v118 = v60 | 0x8000000000;
    }

    v119 = v601;
    v120 = v601[4];
    v121 = v605;
    if (v120[32] == 1)
    {
      v122 = *(v50 + 456);
      v579 = v58;
      v580 = v59;
      if (v122 == 2)
      {
        v221 = v41;
        v222 = v632;
        (*(*v120 + 288))(v624, &v607, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v53);
        if (v222)
        {
          return;
        }

        if (BYTE8(v624[0]) == 255)
        {
          v632 = 0;
        }

        else
        {
          sub_1CF7EB934(*&v624[0], BYTE8(v624[0]), v221, v121, v624);
          v632 = 0;
          memcpy(v623, v624, 0x208uLL);
          if (sub_1CF08B99C(v623) == 1)
          {
            memcpy(v622, v624, sizeof(v622));
            sub_1CEFCCC44(v622, &unk_1EC4BFC20, &unk_1CFA0A290);
          }

          else
          {
            memcpy(v622, v624, sizeof(v622));
            sub_1CEFCCC44(v622, &unk_1EC4BFC20, &unk_1CFA0A290);
            if (!LOBYTE(v622[34]))
            {
              v118 |= 1uLL;
            }
          }
        }
      }

      else
      {
        if (v122 == 4)
        {
LABEL_297:
          __break(1u);
          goto LABEL_298;
        }

        if (!v117)
        {
          ++v118;
        }
      }

      v123 = v119[3];
      v124 = v632;
      v125 = (*(*v123 + 344))(&v607, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v53);
      if (v124)
      {
        return;
      }

      if (v126 & 1 | ((v125 & ~v118) == 0))
      {
        v128 = 0;
      }

      else
      {
        v128 = v125;
      }

      v118 |= v128;
      v632 = 0;
      if (!v116)
      {
LABEL_171:
        LOBYTE(v623[0]) = 0;
        *&v624[0] = v607;
        WORD4(v624[0]) = v608;
        LOBYTE(v624[1]) = 1;
        WORD1(v624[7]) = 2570;
        v387 = *(*v62 + 136);
        v387(v624);
        if ((v118 & 0x10000) != 0)
        {
          LOBYTE(v622[0]) = 0;
          *&v624[0] = v607;
          WORD4(v624[0]) = v608;
          LOBYTE(v624[1]) = 3;
          BYTE2(v624[5]) = 10;
          BYTE3(v624[7]) = 9;
          v387(v624);
        }

        v388 = v607;
        v389 = v608;
        v630 = *(v606 + 472);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
        v70 = swift_allocObject();
        (*(v598 + 56))(v70 + *(*v70 + 632), 1, 1, v599);
        *(v70 + 152) = v389;
        *(v70 + 16) = 0u;
        *(v70 + 32) = 0u;
        *(v70 + 48) = 1;
        *(v70 + 56) = 0u;
        *(v70 + 72) = 0u;
        *(v70 + 88) = 0;
        *(v70 + 96) = xmmword_1CF9FEC30;
        *(v70 + 112) = 0;
        *(v70 + 120) = v630;
        *(v70 + 136) = v118;
        *(v70 + 144) = v388;
        if ((v118 & 0x8000) != 0)
        {
          *(v70 + 96) = 2359552;
          *(v70 + 112) = 0;
        }

        goto LABEL_17;
      }

      *&v624[0] = v116;
      sub_1CF8DCAC4(v127);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_1CF9FA450;
      *(v129 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF68, &qword_1CF9FB458);
      v130 = *(*v123 + 304);
      v131 = v116;
      v132 = v632;
      v133 = v130(v624, v129, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v632 = v132;
      if (v132)
      {

        v129, v141, v142, v143, v144, v145, v146, v147;
        return;
      }

      v311 = v133;
      v129, v134, v135, v136, v137, v138, v139, v140;
      v312 = sub_1CF663828();

      v311, v313, v314, v315, v316, v317, v318, v319;
      if (v312)
      {
        v320 = v312;
        v321 = *(v312 + 112);
        v119 = v601;
        v62 = v602;
        if (v321 == 3 || v321 == 4 && !(v320[12] & 0xFFFFFFFFFFFFFFFELL | v320[13]))
        {
        }

        else
        {
          v322 = v320[17];

          if ((v322 & 0x10000000000) != 0)
          {
            v118 |= 0x10000000000uLL;
          }
        }
      }

      else
      {
        v119 = v601;
        v62 = v602;
      }

      LOBYTE(v58) = v579;
      v59 = v580;
    }

    if (v117 || v59 != 2 || !v116)
    {
      goto LABEL_171;
    }

    v379 = v58;
    *&v623[0] = v116;
    v380 = *(*v119[5] + 240);
    v217 = v116;
    v381 = v596;
    v382 = v632;
    v380(v623, 1, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v632 = v382;
    if (v382)
    {
LABEL_69:

      return;
    }

    v383 = v595;
    if ((*(v594 + 48))(v381, 1, v595) == 1)
    {

      sub_1CEFCCC44(v381, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      goto LABEL_171;
    }

    v384 = v381 + *(v383 + 48);
    LOBYTE(v384) = *(v384 + *(type metadata accessor for ItemMetadata(0) + 80));
    sub_1CEFCCC44(v381, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if ((v384 & 1) != 0 || (LOBYTE(v622[0]) = 0, *&v624[0] = v607, WORD4(v624[0]) = v608, LOWORD(v624[1]) = 1280, *(&v624[1] + 8) = *(v606 + 472), BYTE2(v624[5]) = 12, BYTE3(v624[7]) = 9, (*(*v62 + 136))(v624), (v379 & 8) != 0))
    {

      goto LABEL_171;
    }

    v385 = v608;
    v386 = v593;
    *v593 = v607;
    *(v386 + 8) = v385;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(*v601 + 520))(v386, 0);
    v218 = &unk_1EC4BF650;
    v219 = &unk_1CF9FCB40;
    v220 = v386;
LABEL_68:
    sub_1CEFCCC44(v220, v218, v219);
    goto LABEL_69;
  }

  v586 = v39;
  v587 = v36;
  v604 = v27;
  v584 = v30;
  v585 = v18;
  v596 = v21;
  v588 = v33;
  v71 = *(v50 + 192);
  if (!v61)
  {
    v582 = v46;
    v583 = v51;
    v581 = v71;
    if (v57 == 255)
    {
      goto LABEL_289;
    }

    v148 = v55;
    v149 = v47;
    v150 = v60;
    v151 = v41;
    v152 = v58;
    v618 = v56;
    v619 = v57;
    v153 = v601;
    v154 = v601[4];
    v155 = v632;
    v156 = (*(*v154 + 312))(&v618, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v53);
    if (v155)
    {
      return;
    }

    v632 = 0;
    if (v157)
    {
      v158 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v159 = v618;
      v160 = v619;
      v161 = v606;
      sub_1CEFCCBDC(v606, v624, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v162 = sub_1CF9E6108();
      v163 = sub_1CF9E72A8();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v605 = v159;
        v165 = v164;
        v166 = swift_slowAlloc();
        LODWORD(v604) = v160;
        v167 = v166;
        *&v623[0] = v166;
        *v165 = 136446466;
        v168 = sub_1CF38B634();
        v170 = v169;
        sub_1CEFCCC44(v161, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v171 = sub_1CEFD0DF0(v168, v170, v623);
        v170, v172, v173, v174, v175, v176, v177, v178;
        *(v165 + 4) = v171;
        *(v165 + 12) = 2082;
        *&v624[0] = v605;
        BYTE8(v624[0]) = v604;
        v180 = VFSItemID.description.getter(v179);
        v182 = v181;
        v183 = sub_1CEFD0DF0(v180, v181, v623);
        v182, v184, v185, v186, v187, v188, v189, v190;
        *(v165 + 14) = v183;
        _os_log_impl(&dword_1CEFC7000, v162, v163, "🚔  cannot propagate creation for %{public}s: snapshot version not found for %{public}s", v165, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v167, -1, -1);
        MEMORY[0x1D386CDC0](v165, -1, -1);
      }

      else
      {

        sub_1CEFCCC44(v161, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      }

      (*(v583 + 8))(v148, v582);
      return;
    }

    v596 = v156;
    (*(*v154 + 288))(&v616, &v618, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v632 = 0;
    sub_1CF095754(v624);
    if (v617 == 255)
    {
      v224 = v624;
    }

    else
    {
      v223 = v632;
      sub_1CF7EB934(v616, v617, v151, v605, v622);
      if (v223)
      {
        return;
      }

      v632 = 0;
      v224 = v622;
    }

    memcpy(v623, v224, 0x208uLL);
    v323 = v153[5];
    if (*(v323 + 32))
    {
      memcpy(v622, v623, sizeof(v622));
      v324 = sub_1CF08B99C(v622);
      v325 = v602;
      if (v324 == 1)
      {
        goto LABEL_216;
      }
    }

    else
    {
      memcpy(v622, v623, sizeof(v622));
      if (sub_1CF08B99C(v622) == 1 || !*(&v623[15] + 1))
      {
        v353 = v606;
        v355 = *(v606 + 472);
        v354 = *(v606 + 480);
        v615 = 0;
        v607 = v618;
        v608 = v619;
        v609 = 2;
        v610 = v355;
        v605 = v354;
        v611 = v354;
        v613 = 2560;
        v356 = *(*v602 + 136);
        v603 = *v602 + 136;
        v604 = v356;
        v356(&v607);
        v357 = fpfs_current_or_default_log();
        v358 = v149;
        sub_1CF9E6128();
        sub_1CEFCCBDC(v353, &v607, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v359 = sub_1CF9E6108();
        v360 = sub_1CF9E72A8();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          v597 = swift_slowAlloc();
          v607 = v597;
          *v361 = 136446210;
          v362 = sub_1CF38B634();
          v363 = v355;
          v365 = v364;
          sub_1CEFCCC44(v353, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v366 = sub_1CEFD0DF0(v362, v365, &v607);
          v367 = v365;
          v355 = v363;
          v367, v368, v369, v370, v371, v372, v373, v374;
          *(v361 + 4) = v366;
          _os_log_impl(&dword_1CEFC7000, v359, v360, "🚔  cannot propagate creation for %{public}s: parent folder is not reconciled", v361, 0xCu);
          v375 = v597;
          __swift_destroy_boxed_opaque_existential_1(v597);
          MEMORY[0x1D386CDC0](v375, -1, -1);
          MEMORY[0x1D386CDC0](v361, -1, -1);
        }

        else
        {
          sub_1CEFCCC44(v353, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        }

        (*(v583 + 8))(v358, v582);
        v393 = v601;
        if (*(v353 + 272) == 2)
        {
          v614 = 0;
          v607 = v618;
          v608 = v619;
          LOWORD(v609) = 1282;
          v610 = v355;
          v611 = v605;
          v612 = 12;
          HIBYTE(v613) = 9;
          v604(&v607);
        }

        v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
        v395 = v394[12];
        v396 = v394[16];
        v397 = v394[20];
        v398 = v619;
        v399 = v593;
        *v593 = v618;
        *(v399 + 8) = v398;
        (*(v598 + 56))(v399 + v395, 1, 1, v599);
        *(v399 + v396) = v596;
        v400 = v600;
        *(v399 + v397) = v600;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v401 = *(*v393 + 520);
        v402 = v400;
        v401(v399, 0);
        v403 = &unk_1EC4BF650;
        v404 = &unk_1CF9FCB40;
        v405 = v399;
LABEL_233:
        sub_1CEFCCC44(v405, v403, v404);
        v277 = &unk_1EC4BFC20;
        v278 = &unk_1CFA0A290;
        v279 = v623;
        goto LABEL_281;
      }

      if (!LOBYTE(v623[17]))
      {
        v150 |= 1uLL;
      }

      v325 = v602;
    }

    *&v594 = v323;
    memcpy(v631, v623, 0x208uLL);
    v595 = *(*v154 + 240);
    memcpy(v622, v623, sizeof(v622));
    sub_1CEFCCBDC(v622, &v607, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v420 = v604;
    v421 = v632;
    (v595)(&v618, 1, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v632 = v421;
    if (v421)
    {
LABEL_194:
      sub_1CEFCCC44(v623, &unk_1EC4BFC20, &unk_1CFA0A290);
      v279 = v623;
      v277 = &unk_1EC4BFC20;
      v278 = &unk_1CFA0A290;
      goto LABEL_281;
    }

    if ((*(v598 + 48))(v420, 1, v599) == 1)
    {
      sub_1CEFCCC44(v623, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFCCC44(v420, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v422 = v420;
      v423 = v586;
      sub_1CEFE55D0(v422, v586, &unk_1EC4BE360, &qword_1CF9FE650);
      v424 = v632;
      sub_1CF416BE4(&v607, v606, v423, v631, v601, v151, v605);
      v632 = v424;
      if (v424)
      {
        sub_1CEFCCC44(v423, &unk_1EC4BE360, &qword_1CF9FE650);
        goto LABEL_194;
      }

      v460 = v425;
      v461 = v426;
      sub_1CF47FDFC(v607, v608);
      sub_1CEFCCC44(v423, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v623, &unk_1EC4BFC20, &unk_1CFA0A290);
      v461, v462, v463, v464, v465, v466, v467, v468;
      if (v460)
      {
        v150 |= 0x40000000000uLL;
      }
    }

    v323 = v594;
LABEL_216:
    v469 = (v150 >> 9) & 1;
    if ((v152 & 0x8000) == 0)
    {
      LODWORD(v469) = 1;
    }

    if (v469)
    {
      v470 = v150 | (v152 >> 22) & 0x200000;
    }

    else
    {
      v470 = v150 | (v152 >> 22) & 0x200000 | 0x200;
    }

    v471 = v606;
    v472 = *(v606 + 456);
    if (v472 != 1)
    {
      if (v472 == 4)
      {
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      if (v581 >> 60 != 11)
      {
        v470 |= 0x8000000uLL;
      }
    }

    if (v472 != 2 && (*(v323 + 32) & 1) == 0)
    {
      LOBYTE(v607) = 0;
      v622[0] = v618;
      LOWORD(v622[1]) = v619;
      LOBYTE(v622[2]) = 0;
      WORD1(v622[14]) = 2570;
      (*(*v325 + 136))(v622);
      v471 = v606;
    }

    v473 = v618;
    v474 = v619;
    v627 = *(v471 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v475 = swift_allocObject();
    *(v475 + 176) = 0u;
    *(v475 + 192) = 0u;
    *(v475 + 208) = 0u;
    *(v475 + 224) = 0u;
    *(v475 + 240) = 0u;
    *(v475 + 256) = 0u;
    *(v475 + 272) = 0;
    *(v475 + 280) = -1;
    v476 = *(*v475 + 664);
    v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v477 - 8) + 56))(v475 + v476, 1, 1, v477);
    v478 = v475 + *(*v475 + 672);
    *v478 = 0;
    *(v478 + 8) = 0;
    *(v478 + 16) = 0;
    *(v478 + 24) = 0xB000000000000000;
    *(v478 + 32) = 0u;
    *(v478 + 48) = 0u;
    v479 = v475 + *(*v475 + 680);
    *(v479 + 64) = 0;
    *(v479 + 32) = 0u;
    *(v479 + 48) = 0u;
    *v479 = 0u;
    *(v479 + 16) = 0u;
    *(v475 + *(*v475 + 688)) = 0;
    *(v475 + 152) = v474;
    v480 = v596;
    v481 = v600;
    *(v475 + 160) = v600;
    *(v475 + 168) = v480;
    *(v475 + 16) = 0u;
    *(v475 + 32) = 0u;
    *(v475 + 48) = 1;
    *(v475 + 72) = 0u;
    *(v475 + 56) = 0u;
    *(v475 + 120) = v627;
    *(v475 + 136) = v470;
    *(v475 + 144) = v473;
    *(v475 + 96) = 0;
    *(v475 + 104) = 0;
    *(v475 + 88) = 0;
    *(v475 + 112) = 0;
    if (*(v323 + 32) == 1)
    {
      *(v475 + 96) = 1;
      *(v475 + 112) = 0;
    }

    v482 = v602;
    v483 = *(*v602 + 152);
    v484 = v481;
    v483(v475);
    v615 = 0;
    v622[0] = v618;
    LOWORD(v622[1]) = v619;
    v622[3] = 0;
    v622[2] = 0;
    LOBYTE(v622[4]) = 2;
    WORD1(v622[14]) = 2571;
    v606 = *(*v482 + 136);
    (v606)(v622);
    v485 = v618;
    v486 = v619;
    v614 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
    v487 = swift_allocObject();
    *(v487 + 16) = xmmword_1CF9FA440;
    *(v487 + 32) = v597;
    if (qword_1EDEABDE0 != -1)
    {
      v573 = v487;
      swift_once();
      v487 = v573;
    }

    *(v487 + 40) = qword_1EDEABDE8;
    sub_1CEFF5464(v487, &v607, v488, v489, v490, v491, v492, v493, v494);
    v495 = v607;
    v496 = v614;
    v622[0] = v485;
    LOBYTE(v622[1]) = v486;
    BYTE1(v622[1]) = v614;
    v622[2] = v607;
    WORD1(v622[14]) = 2561;
    (v606)(v622);

    v622[0] = v485;
    LOBYTE(v622[1]) = v486;
    BYTE1(v622[1]) = v496;
    v622[2] = v495;
    WORD1(v622[14]) = 2561;
    v403 = &qword_1EC4BE6D0;
    v404 = &qword_1CF9FE560;
    v405 = v622;
    goto LABEL_233;
  }

  if (v61 != 1)
  {
    v191 = v602;
    if (v61 != 2)
    {
      goto LABEL_301;
    }

    if (v57 == 255)
    {
LABEL_293:
      __break(1u);
      goto LABEL_294;
    }

    v192 = *(v50 + 248);
    if (!v192)
    {
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v193 = *(v50 + 16);
    if ((v193 & 0x10) != 0)
    {
      v194 = *(v50 + 472);
      v195 = *(v50 + 480);
      if ((v193 & 1) == 0)
      {
        v208 = 0x2000000;
LABEL_67:
        v209 = v600;
        v210 = v56;
        v211 = v57;
        v212 = sub_1CF389E84(v56, v57, v600, v194, v195, v208);
        v213 = *(*v191 + 152);
        v214 = v209;
        v215 = v192;
        v213(v212);

        LOBYTE(v622[0]) = 0;
        *&v624[0] = v210;
        WORD4(v624[0]) = v211;
        v624[1] = 0uLL;
        LOBYTE(v624[2]) = 2;
        WORD1(v624[7]) = 2571;
        v216 = *(*v191 + 136);
        v216(v624);
        *&v623[0] = v192;
        WORD4(v623[0]) = 256;
        memset(&v623[1], 0, 98);
        BYTE2(v623[7]) = 15;
        memset(&v624[4], 0, 48);
        *(&v624[6] + 15) = *(&v623[6] + 15);
        v624[0] = v623[0];
        memset(&v624[1], 0, 48);
        BYTE3(v624[7]) = 10;
        v217 = v215;
        v216(v624);
        v218 = &unk_1EC4BFD00;
        v219 = &unk_1CFA05420;
        v220 = v623;
        goto LABEL_68;
      }
    }

    else
    {
      v194 = *(v50 + 472);
      v195 = *(v50 + 480);
    }

    v208 = 4096;
    goto LABEL_67;
  }

  v604 = v52;
  v605 = v49;
  v578 = v48;
  v579 = v58;
  v580 = v59;
  v582 = v46;
  v583 = v51;
  v581 = v71;
  if (v57 == 255)
  {
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  v607 = v56;
  LOBYTE(v608) = v57;
  v73 = *(v50 + 240);
  v72 = *(v50 + 248);
  v74 = *(v50 + 272);
  v75 = *(v50 + 344);
  v76 = *(v50 + 345);
  if ((~*(v50 + 448) & 0xCLL) != 0)
  {
    v77 = v60;
  }

  else
  {
    v77 = v60 | 0x8000000000;
  }

  v78 = v601[4];
  v79 = v632;
  v80 = (*(*v78 + 312))(&v607, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v53);
  if (v79)
  {
    return;
  }

  v603 = v78;
  v577 = v76;
  v576 = v72;
  v575 = v75;
  LODWORD(v586) = v74;
  v632 = 0;
  if (v81)
  {
    v82 = fpfs_current_or_default_log();
    v83 = v605;
    sub_1CF9E6128();
    v85 = v606;
    v84 = v607;
    v86 = v608;
    sub_1CEFCCBDC(v606, v624, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v87 = sub_1CF9E6108();
    v88 = sub_1CF9E72A8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v604 = v84;
      v90 = v89;
      v91 = swift_slowAlloc();
      LODWORD(v603) = v86;
      v92 = v91;
      *&v623[0] = v91;
      *v90 = 136446466;
      v93 = sub_1CF38B634();
      v95 = v94;
      sub_1CEFCCC44(v85, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v96 = sub_1CEFD0DF0(v93, v95, v623);
      v95, v97, v98, v99, v100, v101, v102, v103;
      *(v90 + 4) = v96;
      *(v90 + 12) = 2082;
      *&v624[0] = v604;
      BYTE8(v624[0]) = v603;
      v105 = VFSItemID.description.getter(v104);
      v107 = v106;
      v108 = sub_1CEFD0DF0(v105, v106, v623);
      v107, v109, v110, v111, v112, v113, v114, v115;
      *(v90 + 14) = v108;
      _os_log_impl(&dword_1CEFC7000, v87, v88, "🚔  cannot propagate update for %{public}s: snapshot version not found for %{public}s", v90, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v92, -1, -1);
      MEMORY[0x1D386CDC0](v90, -1, -1);
    }

    else
    {

      sub_1CEFCCC44(v85, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    (*(v583 + 8))(v83, v582);
    return;
  }

  v225 = v597;
  v574 = v80;
  if ((v597 & 0x10) != 0)
  {
    if ((v586 | 2) != 3)
    {
      v285 = v601[3];
      v286 = (*(*v285 + 344))(&v607, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v632 = 0;
      if (v288 & 1 | ((v286 & ~(v77 | 0x8000001)) == 0))
      {
        v289 = 0;
      }

      else
      {
        v289 = v286;
      }

      v251 = v289 | v77 | 0x8000001;
      if (v576)
      {
        *&v624[0] = v576;
        v290 = v576;
        sub_1CF8DCAC4(v287);
        v291 = swift_allocObject();
        *(v291 + 16) = xmmword_1CF9FA450;
        *(v291 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF68, &qword_1CF9FB458);
        v292 = *(*v285 + 304);
        v293 = v290;
        v294 = v632;
        v295 = v292(v624, v291, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v632 = v294;
        if (v294)
        {

          v291, v303, v304, v305, v306, v307, v308, v309;
          return;
        }

        v431 = v295;
        v291, v296, v297, v298, v299, v300, v301, v302;
        v432 = sub_1CF663828();

        v431, v433, v434, v435, v436, v437, v438, v439;
        if (v432)
        {
          v440 = *(v432 + 112);
          if (v440 == 3 || v440 == 4 && !(*(v432 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v432 + 104)))
          {
          }

          else
          {
            v441 = *(v432 + 136);

            if ((v441 & ~v251) != 0)
            {
              v442 = v441;
            }

            else
            {
              v442 = 0;
            }

            v251 |= v442;
          }
        }
      }

      goto LABEL_100;
    }

    if ((v579 & 8) != 0)
    {
      v249 = 134217730;
    }

    else
    {
      v249 = 2;
    }

    v250 = v77 | v249;
    if (v586 == 3)
    {
      v251 = v250 | 0x100000000000;
    }

    else
    {
      v251 = v250;
    }

    if (v580 || !v576)
    {
LABEL_100:
      v252 = v607;
      if (v577 == 6)
      {
        v253 = v251;
      }

      else
      {
        v253 = v251 | 0x20000;
      }

      v254 = v608;
      v628 = *(v606 + 472);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v255 = swift_allocObject();
      *(v255 + 200) = 0u;
      *(v255 + 216) = 0u;
      *(v255 + 232) = 0u;
      *(v255 + 248) = 0u;
      *(v255 + 280) = 0;
      *(v255 + 184) = 0u;
      *(v255 + 264) = 0u;
      v256 = *(*v255 + 672);
      v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      (*(*(v257 - 8) + 56))(v255 + v256, 1, 1, v257);
      v258 = v255 + *(*v255 + 680);
      *v258 = 0;
      *(v258 + 8) = 0;
      *(v258 + 16) = 0;
      *(v258 + 24) = 0xB000000000000000;
      *(v258 + 32) = 0u;
      *(v258 + 48) = 0u;
      v259 = v255 + *(*v255 + 688);
      *v259 = 0;
      *(v259 + 8) = 0;
      *(v259 + 16) = 1;
      *(v259 + 24) = 0u;
      *(v259 + 40) = 0u;
      *(v259 + 56) = 0;
      *(v255 + *(*v255 + 712)) = 0;
      *(v255 + 168) = v574;
      *(v255 + 176) = 16;
      *(v255 + *(*v255 + 696)) = 0;
      *(v255 + *(*v255 + 704)) = 0;
      *(v255 + 152) = v254;
      v261 = v600;
      v260 = v601;
      *(v255 + 160) = v600;
      *(v255 + 16) = 0u;
      *(v255 + 32) = 0u;
      *(v255 + 48) = 1;
      *(v255 + 72) = 0u;
      *(v255 + 56) = 0u;
      *(v255 + 120) = v628;
      *(v255 + 136) = v253;
      *(v255 + 144) = v252;
      *(v255 + 96) = 0;
      *(v255 + 104) = 0;
      *(v255 + 88) = 0;
      *(v255 + 112) = 0;
      if ((*(v260[5] + 32) & 1) != 0 || (v581 & 0xF000000000000000) == 0xB000000000000000)
      {
        *(v255 + 96) = xmmword_1CF9FD920;
        *(v255 + 112) = 0;
      }

      v262 = v602;
      v263 = *(*v602 + 152);
      v264 = v261;
      v263(v255);
      LOBYTE(v622[0]) = 0;
      *&v624[0] = v607;
      WORD4(v624[0]) = v608;
      v624[1] = 0uLL;
      LOBYTE(v624[2]) = 2;
      WORD1(v624[7]) = 2571;
      v265 = *(*v262 + 136);
      v265(v624);
      v266 = v607;
      v267 = v608;
      LOBYTE(v618) = 0;
      sub_1CEFF5464(&stru_1F4BED0D8, v623, v268, v269, v270, v271, v272, v273, v274);
      v275 = *&v623[0];
      v276 = v618;
      *&v624[0] = v266;
      BYTE8(v624[0]) = v267;
      BYTE9(v624[0]) = v618;
      *&v624[1] = *&v623[0];
      WORD1(v624[7]) = 2561;
      v265(v624);

      *&v624[0] = v266;
      BYTE8(v624[0]) = v267;
      BYTE9(v624[0]) = v276;
      *&v624[1] = v275;
      WORD1(v624[7]) = 2561;
      v277 = &qword_1EC4BE6D0;
      v278 = &qword_1CF9FE560;
      v279 = v624;
      goto LABEL_281;
    }

    v622[0] = v576;
    v326 = *(*v601[5] + 240);
    v327 = v576;
    v328 = v591;
    v329 = v632;
    v326(v622, 1, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v632 = v329;
    if (v329)
    {

      return;
    }

    v390 = v595;
    v391 = (*(v594 + 48))(v328, 1, v595);
    v392 = v586;
    if (v391 == 1)
    {

      sub_1CEFCCC44(v328, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      goto LABEL_100;
    }

    v443 = v590;
    sub_1CEFE55D0(v328, v590, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v444 = v443 + *(v390 + 48);
    if ((*(v444 + *(type metadata accessor for ItemMetadata(0) + 80)) & 1) == 0)
    {
      sub_1CEFCCC44(v443, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      goto LABEL_100;
    }

    *&v623[0] = v576;
    WORD4(v623[0]) = 256;
    LOBYTE(v623[1]) = v392;
    BYTE1(v623[1]) = 5;
    *(&v623[1] + 8) = *(v606 + 472);
    BYTE2(v623[5]) = 12;
    v624[2] = v623[2];
    v624[3] = v623[3];
    v624[4] = v623[4];
    *(&v624[4] + 15) = *(&v623[4] + 15);
    v624[0] = v623[0];
    v624[1] = v623[1];
    BYTE3(v624[7]) = 9;
    v445 = *(*v602 + 136);
    v446 = v327;
    v445(v624);
    sub_1CEFCCC44(v623, &unk_1EC4BFCF0, &unk_1CFA05410);
    v447 = v601[3];
    sub_1CF8DCAC4(v448);
    v449 = swift_allocObject();
    *(v449 + 16) = xmmword_1CF9FA450;
    *(v449 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF60, &qword_1CF9FB450);
    v450 = v632;
    v451 = (*(*v447 + 304))(v622, v449, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v632 = v450;
    if (v450)
    {
      v449, v452, v453, v454, v455, v456, v457, v458;
      v459 = v443;
LABEL_259:
      sub_1CEFCCC44(v459, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      return;
    }

    v503 = v451;
    v449, v452, v453, v454, v455, v456, v457, v458;
    if (!sub_1CF55B584())
    {
LABEL_258:
      v503, v504, v505, v506, v507, v508, v509, v510;
      v459 = v590;
      goto LABEL_259;
    }

    v511 = 0;
    if (v503 < 0)
    {
      v512 = v503;
    }

    else
    {
      v512 = v503 & 0xFFFFFFFFFFFFFF8;
    }

    v604 = v512;
    v605 = (v503 >> 62);
    v606 = v503 & 0xC000000000000001;
    while (1)
    {
      if (v606)
      {
        v513 = MEMORY[0x1D3869C30](v511, v503);
      }

      else
      {
        if (v511 >= *((v503 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_288;
        }

        v513 = *(v503 + 8 * v511 + 32);
      }

      v514 = v511 + 1;
      if (__OFADD__(v511, 1))
      {
        break;
      }

      v515 = *(v513 + 112);
      if (v515 == 2)
      {
        goto LABEL_302;
      }

      v516 = *(v513 + 96);
      v517 = *(v513 + 104);
      *(v513 + 96) = 0;
      *(v513 + 104) = 0;
      *(v513 + 112) = 4;
      sub_1CF03D7A8(v516, v517, v515);
      v518 = *(*v602 + 152);

      v518(v519);

      if (v605)
      {
        v520 = sub_1CF9E7818();
      }

      else
      {
        v520 = *((v503 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v511;
      if (v514 == v520)
      {
        goto LABEL_258;
      }
    }

    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  if ((v73 & 0x20) == 0)
  {
    v226 = v603;
    if ((v73 & 0x10) == 0)
    {
      goto LABEL_80;
    }

LABEL_108:
    v77 |= 0x800000000000uLL;
    LOBYTE(v623[0]) = 0;
    LOBYTE(v622[0]) = 1;
    *&v624[0] = v607;
    WORD4(v624[0]) = v608;
    *&v624[1] = 16;
    BYTE8(v624[1]) = 1;
    BYTE3(v624[7]) = 11;
    (*(*v602 + 136))(v624);
    v227 = v601;
    if ((v225 & 0x10000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_109;
  }

  v77 |= 0x1000000000000uLL;
  LOBYTE(v623[0]) = 0;
  LOBYTE(v622[0]) = 1;
  *&v624[0] = v607;
  WORD4(v624[0]) = v608;
  *&v624[1] = 32;
  BYTE8(v624[1]) = 1;
  BYTE3(v624[7]) = 11;
  (*(*v602 + 136))(v624);
  v225 = v597;
  v226 = v603;
  if ((v73 & 0x10) != 0)
  {
    goto LABEL_108;
  }

LABEL_80:
  v227 = v601;
  if ((v225 & 0x10000000000) == 0)
  {
LABEL_81:
    v228 = v225;
    v229 = v606;
LABEL_82:
    v230 = v580;
    goto LABEL_83;
  }

LABEL_109:
  v280 = v632;
  (*(*v226 + 240))(&v607, 1, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v280)
  {
    return;
  }

  v632 = 0;
  v281 = v599;
  if ((*(v598 + 48))(v24, 1, v599) == 1)
  {
    v282 = &qword_1EC4C1B40;
    v283 = &unk_1CF9FCB70;
    v284 = v24;
  }

  else
  {
    v376 = v587;
    sub_1CEFE55D0(v24, v587, &unk_1EC4BE360, &qword_1CF9FE650);
    v377 = *(v376 + *(v281 + 48));
    v378 = *(v606 + 456);
    if (v377 == 4)
    {
      if (v378 != 4)
      {
        goto LABEL_189;
      }
    }

    else if (v378 == 4 || qword_1CFA05EB0[v377] != qword_1CFA05EB0[v378])
    {
      goto LABEL_189;
    }

    v282 = &unk_1EC4BE360;
    v283 = &qword_1CF9FE650;
    v284 = v376;
  }

  sub_1CEFCCC44(v284, v282, v283);
  v406 = v227[5];
  v229 = v606;
  v230 = v580;
  if (v406[32])
  {
LABEL_185:
    v228 = v225;
    goto LABEL_83;
  }

  LODWORD(v377) = *(v606 + 456);
  if (v377 == 2)
  {
    if (!v576)
    {
      goto LABEL_185;
    }

    *&v624[0] = v576;
    v427 = *(*v406 + 240);
    v428 = v576;
    v429 = v589;
    v430 = v632;
    v427(v624, 1, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v632 = v430;
    if (v430)
    {

      return;
    }

    v502 = v595;
    if ((*(v594 + 48))(v429, 1, v595) == 1)
    {

      sub_1CEFCCC44(v429, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    }

    else
    {
      v572 = v429 + *(v502 + 48);
      LOBYTE(v572) = *(v572 + *(type metadata accessor for ItemMetadata(0) + 80));

      sub_1CEFCCC44(v429, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if (v572)
      {
        v225 = v597;
        v228 = v597 | 8;
LABEL_286:
        v229 = v606;
        v227 = v601;
        goto LABEL_82;
      }
    }

    v225 = v597;
    v228 = v597;
    goto LABEL_286;
  }

  v228 = v225;
  if (v377 == 4)
  {
    __break(1u);
LABEL_189:
    LOBYTE(v623[0]) = 0;
    *&v624[0] = v607;
    WORD4(v624[0]) = v608;
    BYTE10(v624[0]) = v377;
    BYTE3(v624[7]) = 3;
    (*(*v602 + 136))(v624);
    v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v408 = v407[12];
    v409 = v407[16];
    v410 = v593;
    v411 = v593 + v407[20];
    v412 = v407[24];
    v413 = v225;
    v414 = v407[28];
    v415 = v407[32];
    v416 = v608;
    *v593 = v607;
    *(v410 + 8) = v416;
    (*(v598 + 56))(v410 + v408, 1, 1, v599);
    *(v410 + v409) = 0;
    *v411 = 0;
    *(v411 + 1) = 0;
    *(v411 + 2) = 1;
    *(v411 + 24) = 0u;
    *(v411 + 40) = 0u;
    *(v411 + 7) = 0;
    *(v410 + v412) = v413;
    *(v410 + v414) = v574;
    v417 = v600;
    *(v410 + v415) = v600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v418 = *(*v227 + 520);
    v419 = v417;
    v418(v410, 0);
    sub_1CEFCCC44(v410, &unk_1EC4BF650, &unk_1CF9FCB40);
    v277 = &unk_1EC4BE360;
    v278 = &qword_1CF9FE650;
    v279 = v587;
LABEL_281:
    sub_1CEFCCC44(v279, v277, v278);
    return;
  }

LABEL_83:
  v231 = v227[5];
  if (*(v231 + 32))
  {
    if ((v225 & 0x16180000D034200) != 0)
    {
      v232 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v233 = sub_1CF9E6108();
      v234 = sub_1CF9E72B8();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        v605 = swift_slowAlloc();
        *&v624[0] = v605;
        *v235 = 136446210;
        v236 = sub_1CF071470(v225 & 0x16180000D034200);
        *&v594 = v233;
        v238 = v237;
        v239 = sub_1CEFD0DF0(v236, v237, v624);
        v238, v240, v241, v242, v243, v244, v245, v246;
        *(v235 + 4) = v239;
        v233 = v594;
        _os_log_impl(&dword_1CEFC7000, v594, v234, "☢️  file providers don't support setting the bit: %{public}s", v235, 0xCu);
        v247 = v605;
        __swift_destroy_boxed_opaque_existential_1(v605);
        MEMORY[0x1D386CDC0](v247, -1, -1);
        v225 = v597;
        MEMORY[0x1D386CDC0](v235, -1, -1);
      }

      (*(v583 + 8))(v578, v582);
      v248 = v588;
      v228 &= 0xFE9E7FFFF2FCBDFFLL;
      v229 = v606;
    }

    else
    {
      v248 = v588;
    }

    if ((v228 & 8) != 0)
    {
      v330 = *(v229 + 456);
      if (v330 != 1)
      {
        if (v330 == 4)
        {
LABEL_300:
          __break(1u);
          goto LABEL_301;
        }

        if (v581 >> 60 == 11 && (v575 | 4) == 4)
        {
          v595 = v231;
          v331 = fpfs_current_or_default_log();
          v332 = v604;
          sub_1CF9E6128();
          v333 = v606;
          sub_1CEFCCBDC(v606, v624, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v334 = sub_1CF9E6108();
          v335 = sub_1CF9E72A8();
          v336 = os_log_type_enabled(v334, v335);
          v591 = v77;
          if (v336)
          {
            v337 = swift_slowAlloc();
            v605 = v228;
            v338 = v337;
            v339 = v332;
            v340 = swift_slowAlloc();
            *&v624[0] = v340;
            *v338 = 136315138;
            v341 = sub_1CF38B634();
            v343 = v342;
            sub_1CEFCCC44(v333, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v344 = sub_1CEFD0DF0(v341, v343, v624);
            v343, v345, v346, v347, v348, v349, v350, v351;
            *(v338 + 4) = v344;
            _os_log_impl(&dword_1CEFC7000, v334, v335, "☢️  trying to propagate content from a dataless item %s", v338, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v340);
            MEMORY[0x1D386CDC0](v340, -1, -1);
            v352 = v338;
            v228 = v605;
            MEMORY[0x1D386CDC0](v352, -1, -1);

            (*(v583 + 8))(v339, v582);
          }

          else
          {
            sub_1CEFCCC44(v333, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

            (*(v583 + 8))(v332, v582);
          }

          v497 = v585;
          v498 = v632;
          (*(*v603 + 240))(&v607, 1, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v498)
          {
            return;
          }

          v632 = 0;
          v228 &= ~8uLL;
          if ((*(v598 + 48))(v497, 1, v599) == 1)
          {
            v499 = &qword_1EC4C1B40;
            v500 = &unk_1CF9FCB70;
            v501 = v497;
          }

          else
          {
            v605 = v228;
            v521 = v584;
            sub_1CEFE55D0(v497, v584, &unk_1EC4BE360, &qword_1CF9FE650);
            v604 = v607;
            v522 = v608;
            LOBYTE(v618) = 0;
            v523 = v521[5];
            v623[2] = v521[4];
            v623[3] = v523;
            v524 = v521[7];
            v623[4] = v521[6];
            v623[5] = v524;
            v525 = v521[3];
            v623[0] = v521[2];
            v623[1] = v525;
            *&v620[6] = v623[0];
            *&v620[22] = v525;
            *&v620[86] = v524;
            *&v620[70] = v623[4];
            *&v620[54] = v523;
            *&v620[38] = v623[2];
            *&v624[0] = v607;
            WORD4(v624[0]) = v608;
            *(&v624[3] + 10) = *&v620[48];
            *(&v624[4] + 10) = *&v620[64];
            *(&v624[5] + 10) = *&v620[80];
            *(&v624[6] + 1) = *(&v524 + 1);
            *(&v526 + 1) = v623[0] >> 16;
            *(v624 + 10) = *v620;
            *(&v624[1] + 10) = *&v620[16];
            *(&v624[2] + 10) = *&v620[32];
            *&v526 = 168296449;
            v594 = v526;
            LODWORD(v624[7]) = 168296449;
            v527 = *(*v602 + 136);
            sub_1CEFCCBDC(v623, v622, &unk_1EC4BE330, &unk_1CF9FF010);
            v527(v624);
            *(&v624[3] + 10) = *&v620[48];
            *(&v624[4] + 10) = *&v620[64];
            *(&v624[5] + 10) = *&v620[80];
            *(v624 + 10) = *v620;
            *(&v624[1] + 10) = *&v620[16];
            *&v624[0] = v604;
            WORD4(v624[0]) = v522;
            *(&v624[6] + 1) = *&v620[94];
            *(&v624[2] + 10) = *&v620[32];
            LODWORD(v624[7]) = v594;
            sub_1CEFCCC44(v624, &qword_1EC4BE6D0, &qword_1CF9FE560);
            v501 = v521;
            v228 = v605;
            v499 = &unk_1EC4BE360;
            v500 = &qword_1CF9FE650;
          }

          sub_1CEFCCC44(v501, v499, v500);
          v225 = v597;
          v248 = v588;
          v77 = v591;
          v231 = v595;
        }
      }
    }
  }

  else
  {
    if (v230)
    {
      v310 = (v228 & 0x4000) == 0;
    }

    else
    {
      v310 = 1;
    }

    if (!v310)
    {
      v228 &= ~0x4000uLL;
    }

    v248 = v588;
  }

  LOBYTE(v618) = 0;
  *&v624[0] = v607;
  WORD4(v624[0]) = v608;
  *&v624[1] = v225;
  WORD1(v624[7]) = 2561;
  v528 = *(*v602 + 136);
  v528(v624);
  if (v228)
  {
    v595 = v231;
    v605 = v528;
    if ((v228 & 8) != 0)
    {
      v531 = v606;
      v537 = *(v606 + 456);
      if (v537 == 1)
      {
        goto LABEL_271;
      }

      if (v537 == 4)
      {
LABEL_298:
        __break(1u);
        goto LABEL_299;
      }

      if (v581 >> 60 == 11)
      {
LABEL_271:
        v529 = v228;
        v530 = v77;
      }

      else
      {
        v529 = v228;
        if (v586 == 3)
        {
          v538 = v607;
          v539 = v608;
          LOBYTE(v623[0]) = 0;
          v540 = sub_1CF93D7F4();
          v542 = v541;
          v591 = v77;
          v543 = v623[0];
          *&v624[0] = v538;
          BYTE8(v624[0]) = v539;
          BYTE9(v624[0]) = v623[0];
          LOWORD(v624[1]) = 1283;
          *(&v624[1] + 1) = v540;
          *&v624[2] = v541;
          BYTE2(v624[5]) = 12;
          BYTE3(v624[7]) = 9;
          (v605)(v624);
          *&v624[0] = v538;
          BYTE8(v624[0]) = v539;
          BYTE9(v624[0]) = v543;
          v77 = v591;
          LOWORD(v624[1]) = 1283;
          *(&v624[1] + 1) = v540;
          *&v624[2] = v542;
          BYTE2(v624[5]) = 12;
          BYTE3(v624[7]) = 9;
          sub_1CEFCCC44(v624, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v531 = v606;
        }

        v530 = v77 | 0x8000000;
      }
    }

    else
    {
      v529 = v228;
      v530 = v77;
      v531 = v606;
    }

    v544 = v607;
    v545 = v608;
    v629 = *(v531 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
    v546 = swift_allocObject();
    *(v546 + 200) = 0u;
    *(v546 + 216) = 0u;
    *(v546 + 232) = 0u;
    *(v546 + 248) = 0u;
    *(v546 + 280) = 0;
    *(v546 + 184) = 0u;
    *(v546 + 264) = 0u;
    v547 = *(*v546 + 672);
    v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    (*(*(v548 - 8) + 56))(v546 + v547, 1, 1, v548);
    v549 = v546 + *(*v546 + 680);
    *v549 = 0;
    *(v549 + 8) = 0;
    *(v549 + 16) = 0;
    *(v549 + 24) = 0xB000000000000000;
    *(v549 + 32) = 0u;
    *(v549 + 48) = 0u;
    v550 = v546 + *(*v546 + 688);
    *v550 = 0;
    *(v550 + 8) = 0;
    *(v550 + 16) = 1;
    *(v550 + 24) = 0u;
    *(v550 + 40) = 0u;
    *(v550 + 56) = 0;
    *(v546 + *(*v546 + 712)) = 0;
    *(v546 + 168) = v574;
    *(v546 + 176) = v529;
    *(v546 + *(*v546 + 696)) = 0;
    *(v546 + *(*v546 + 704)) = 0;
    *(v546 + 152) = v545;
    v551 = v600;
    *(v546 + 160) = v600;
    *(v546 + 16) = 0u;
    *(v546 + 32) = 0u;
    *(v546 + 48) = 1;
    *(v546 + 72) = 0u;
    *(v546 + 56) = 0u;
    *(v546 + 120) = v629;
    *(v546 + 136) = v530;
    *(v546 + 144) = v544;
    *(v546 + 96) = 0;
    *(v546 + 104) = 0;
    *(v546 + 88) = 0;
    *(v546 + 112) = 0;
    if ((*(v595 + 32) & 1) != 0 || (v581 & 0xF000000000000000) == 0xB000000000000000)
    {
      *(v546 + 96) = 1;
      *(v546 + 112) = 0;
    }

    v552 = *(*v602 + 152);
    v553 = v551;
    v552(v546);
    LOBYTE(v623[0]) = 0;
    *&v624[0] = v607;
    WORD4(v624[0]) = v608;
    v624[1] = 0uLL;
    LOBYTE(v624[2]) = 2;
    WORD1(v624[7]) = 2571;
    (v605)(v624);
    goto LABEL_63;
  }

  v532 = v596;
  v533 = v632;
  (*(*v603 + 240))(&v607, 1, &v625, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v533)
  {
    v632 = 0;
    if ((*(v598 + 48))(v532, 1, v599) == 1)
    {
      v534 = &qword_1EC4C1B40;
      v535 = &unk_1CF9FCB70;
      v536 = v532;
    }

    else
    {
      sub_1CEFE55D0(v532, v248, &unk_1EC4BE360, &qword_1CF9FE650);
      v554 = v608;
      LOBYTE(v616) = 0;
      v555 = v248[5];
      v623[2] = v248[4];
      v623[3] = v555;
      v556 = v248[7];
      v623[4] = v248[6];
      v623[5] = v556;
      v557 = v248[3];
      v623[0] = v248[2];
      v623[1] = v557;
      *&v621[6] = v623[0];
      *&v621[22] = v557;
      *&v621[86] = v556;
      *&v621[70] = v623[4];
      *&v621[54] = v555;
      *&v621[38] = v623[2];
      v605 = v528;
      v558 = (v579 & ~v597 & 8) == 0;
      *&v624[0] = v607;
      v559 = v607;
      WORD4(v624[0]) = v608;
      *(&v624[3] + 10) = *&v621[48];
      *(&v624[4] + 10) = *&v621[64];
      *(&v624[5] + 10) = *&v621[80];
      *(&v624[6] + 1) = *(&v556 + 1);
      *(v624 + 10) = *v621;
      *(&v624[1] + 10) = *&v621[16];
      *(&v624[2] + 10) = *&v621[32];
      LOBYTE(v624[7]) = v558;
      *(&v624[7] + 1) = 2049;
      BYTE3(v624[7]) = 10;
      sub_1CEFCCBDC(v623, v622, &unk_1EC4BE330, &unk_1CF9FF010);
      (v605)(v624);
      *&v624[0] = v559;
      WORD4(v624[0]) = v554;
      *(&v624[3] + 10) = *&v621[48];
      *(&v624[4] + 10) = *&v621[64];
      *(&v624[5] + 10) = *&v621[80];
      *(&v624[6] + 1) = *&v621[94];
      *(v624 + 10) = *v621;
      *(&v624[1] + 10) = *&v621[16];
      *(&v624[2] + 10) = *&v621[32];
      LOBYTE(v624[7]) = v558;
      *(&v624[7] + 1) = 2049;
      BYTE3(v624[7]) = 10;
      sub_1CEFCCC44(v624, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v536 = v588;
      v534 = &unk_1EC4BE360;
      v535 = &qword_1CF9FE650;
    }

    sub_1CEFCCC44(v536, v534, v535);
    v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v561 = v560[12];
    v562 = v560[16];
    v563 = v593;
    v564 = v593 + v560[20];
    v565 = v560[24];
    v566 = v560[28];
    v567 = v560[32];
    v568 = v608;
    *v593 = v607;
    *(v563 + 8) = v568;
    (*(v598 + 56))(v563 + v561, 1, 1, v599);
    *(v563 + v562) = 0;
    *v564 = 0;
    *(v564 + 1) = 0;
    *(v564 + 2) = 1;
    *(v564 + 24) = 0u;
    *(v564 + 40) = 0u;
    *(v564 + 7) = 0;
    *(v563 + v565) = v597;
    *(v563 + v566) = v574;
    v569 = v600;
    *(v563 + v567) = v600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v570 = *(*v601 + 520);
    v571 = v569;
    v570(v563, 0);
    v277 = &unk_1EC4BF650;
    v278 = &unk_1CF9FCB40;
    v279 = v563;
    goto LABEL_281;
  }
}