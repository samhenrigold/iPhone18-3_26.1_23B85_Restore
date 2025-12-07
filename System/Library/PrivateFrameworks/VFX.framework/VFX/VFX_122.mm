uint64_t sub_1AFA74218(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v82 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B252C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B24F0(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  sub_1AF85B3D4(a2, v76);
  if (!v81)
  {
    goto LABEL_18;
  }

  if (v81 != 1)
  {
    sub_1AFA9DE3C(a1);

    sub_1AF449D40(v76, v75);
    sub_1AF0D5A54(v75, &v69);
    swift_dynamicCast();
    v72 = v11;
    v73 = &off_1F250F310;
    v42 = sub_1AF585714(&v69);
    sub_1AFA9DE0C(a1, v42, v43);
    v74 = 1;
    sub_1AF8259D0(&v69, v66, v67);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
    goto LABEL_18;
  }

  v56 = v19;
  v57 = v13;
  v58 = a2;
  v59 = v7;
  v61 = a1;
  sub_1AFA9DE3C(a1);
  v23 = v77;
  v62 = v78;
  v60 = v79;
  sub_1AF449D40(v76, v75);
  sub_1AF449D40(&v80, v68);
  v24 = MEMORY[0x1E69E7CC0];
  *v22 = MEMORY[0x1E69E7CC0];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0xE000000000000000;
  v22[24] = 3;
  *(v22 + 4) = &unk_1F2503080;
  *(v22 + 20) = 0;
  *(v22 + 6) = 0;
  *(v22 + 7) = 0;
  v25 = *(v14 + 44);
  v26 = type metadata accessor for ScriptIndex(0);
  (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
  v27 = &v22[v11[9]];
  *v27 = 0;
  v27[8] = 1;
  v22[v11[10]] = 0;
  *&v22[v11[11]] = 0;
  v28 = &v22[v11[12]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v22[v11[13]] = v24;
  v29 = v17[9];
  v30 = v17[10];
  v31 = v17[11];
  *&v22[v17[12]] = 0;
  v22[v17[13]] = 0;
  v32 = &v22[v17[14]];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v22[v17[15]];
  *v33 = 0;
  v33[1] = 0;
  sub_1AF0D5A54(v75, &v69);
  sub_1AFA9DE3C(v22);
  swift_dynamicCast();
  *&v22[v29] = v23;
  *&v22[v31] = v60;
  *&v22[v30] = v62;
  v34 = *v33;
  v35 = v33[1];
  v62 = v23;

  sub_1AF919DAC(v34, v35);
  sub_1AF0D5A54(v68, &v69);
  swift_dynamicCast();
  sub_1AFA9DE0C(v22, v61, v36);
  if (v64)
  {
    v37 = v65;
    v38 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v39 = v67;
    v40 = v57;
    if (v38)
    {
      v41 = *(v38 + 80);
      swift_unknownObjectWeakLoadStrong();
      v38 = *(v38 + 56);
    }

    else
    {
      v41 = 0;
    }

    v64 = v41;
    v71 = 0;
    swift_unknownObjectUnownedInit();
    v69 = v37;
    v71 = v38;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v72) = v41;
    v46 = v56;
    sub_1AFA9E3C8(v22, v56, sub_1AF5B24F0);
    v47 = v63;
    sub_1AFA9E3C8(v46, v63, type metadata accessor for GraphScript);
    sub_1AFA9E8FC(v46, sub_1AF5B24F0);
    sub_1AF5AE678(v47, v39);
    sub_1AFA9E8FC(v47, type metadata accessor for GraphScript);
    sub_1AFA9DE0C(v22, v40, v48);
    sub_1AF5AE808(v40, v39);
    sub_1AFA9DE3C(v40);
    sub_1AFA9E3C8(v22, v46, sub_1AF5B24F0);
    sub_1AF5AE998(v46, v39);
    v44 = v65;
    sub_1AFA9E8FC(v46, sub_1AF5B24F0);
    sub_1AF579490(&v69);
    v45 = v66;
    if (v64)
    {
      v49 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v49 ^ 1);
    }
  }

  else
  {
    v39 = v67;
    v44 = v65;
    sub_1AFBFDED4(v22, v67);
    v45 = v66;
  }

  v72 = v17;
  v73 = &off_1F2558F90;
  v50 = sub_1AF585714(&v69);
  sub_1AFA9E3C8(v22, v50, sub_1AF5B24F0);
  v74 = 0;
  sub_1AF8259D0(&v69, v45, v39);
  v51 = sub_1AF3CB520(v39);
  if (v51)
  {
    sub_1AFD08440(v44, v51, v52);
  }

  sub_1AF0D5A54(v68, &v69);
  if (swift_dynamicCast())
  {

    v69 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C();

    sub_1AFBFE174(v69, v70, v39);
LABEL_16:

    goto LABEL_17;
  }

  sub_1AF0D5A54(v68, &v69);
  if (swift_dynamicCast())
  {
    goto LABEL_16;
  }

LABEL_17:
  a2 = v58;
  sub_1AF678B44(v39, v53);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v68);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
  sub_1AFA9E8FC(v22, sub_1AF5B24F0);
LABEL_18:
  result = sub_1AF85B3D4(a2, v76);
  if (v81)
  {
    return sub_1AFA9C0C8(v76);
  }

  return result;
}

uint64_t sub_1AFA74A24(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v41 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v42 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v43);
        if (v44 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for GraphScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B252C(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v43);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v42 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA74218(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF45730);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v43);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for GraphScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA74E78(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v513) = a6;
  v511 = a2;
  v512 = a5;
  v507 = a4;
  v518 = 0;
  v527 = type metadata accessor for GraphScript(0);
  v508 = *(v527 - 8);
  MEMORY[0x1EEE9AC00](v527);
  v504 = v13;
  v520 = &v483 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v487 = &v483 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v500 = &v483 - v17;
  v18 = sub_1AFDFC4F8();
  v503 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v509 = &v483 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v506 = &v483 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v515 = &v483 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v529 = a8;

  v510 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v613[0] = *(a7 + 168);
  v613[1] = v26;
  v614 = *(a7 + 25);
  v514 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v499 = v25;
  sub_1AF6B06C0(v25, v613, 0x200000000, v572);
  v538 = a1;
  v539 = a3;
  v528 = v24;
  v521 = a7;
  v526 = v18;
  if (*&v572[0])
  {
    if (v576 < 1)
    {
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 0;
    }

    else if (*(&v574 + 1))
    {
      v27 = *(&v573 + 1);
      v28 = *(&v575 + 1);
      v29 = *(&v573 + 1) + 48 * *(&v574 + 1);
      sub_1AF5B252C(0);
      v532 = v30;
      v552 = v573;
      v553 = v574;
      v554 = v575;
      v555 = v576;
      v550 = v572[0];
      v551 = v572[1];
      sub_1AF5DD298(&v550, &v619);
      v536 = v28;
      v517 = v29;
      do
      {
        v31 = *(v27 + 40);
        v32 = *(v31 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v32);
        os_unfair_lock_lock(*(v31 + 344));
        v33 = *(v31 + 24);

        v621 = 0;
        v619 = 0u;
        v620 = 0u;
        memset(v595, 0, 40);
        v34 = sub_1AF65A4B4(v33, v532, &off_1F250F310, 0, 0, &v619, v595);

        sub_1AFA9E8FC(v595, sub_1AF5C4448);
        sub_1AFA9E8FC(&v619, sub_1AF5C4448);
        if (sub_1AF649CEC(v34))
        {
          sub_1AF649D40(v34, v28);
        }

        else
        {
          v531 = v27;
          v36 = *(v31 + 232);
          v35 = *(v31 + 240);
          v37 = *(v31 + 120);
          v522 = *(v31 + 28);
          v38 = *(v31 + 32);
          v537 = *(v31 + 16);
          v39 = *(v31 + 40);
          v40 = v39[200];
          v41 = *(v537[11] + 8 * v34 + 32);

          if ((v40 & 1) != 0 || *(v41 + 200) == 1)
          {
            *(v537 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v39 = *(v31 + 40);
          }

          v42 = v39[212];
          LODWORD(v530) = v37;
          LODWORD(v523) = v34;
          if (v42)
          {
            LODWORD(v525) = 0;
          }

          else
          {
            LODWORD(v525) = *(v41 + 212);
          }

          v28 = v536;
          LODWORD(v524) = v39[208];
          v535 = *(v31 + 128);
          v43 = *(v31 + 256);
          v44 = v35;
          v45 = v518;
          sub_1AF5B4FCC(v39, v36, v44, 0, v31);
          v518 = v45;
          v533 = *(v31 + 256);
          v534 = v43;
          v46 = v533 - v43;
          if (v533 == v43)
          {
            v47 = 0;
          }

          else
          {
            v47 = v43;
          }

          v48 = v47;
          *&v595[0] = v47;
          v49 = *(*(v31 + 40) + 24);
          v50 = *(v49 + 16);
          if (v50)
          {
            LODWORD(v519) = v38;
            v51 = v49 + 32;

            v52 = 0;
            v53 = v535;
            v54 = v41;
            do
            {
              v55 = (v51 + 40 * v52);
              if ((v55[4] & 1) == 0)
              {
                v56 = *v55;
                v58 = v55[2];
                v57 = v55[3];
                v59 = *(v54 + 24);
                v60 = *(v59 + 16);
                if (v60)
                {
                  v61 = (v59 + 32);
                  while (*v61 != v56)
                  {
                    v61 += 5;
                    if (!--v60)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  sub_1AF640BC8(v53 + v58 * v48 + v57, v46);
                  v54 = v41;
                  v53 = v535;
                }
              }

              ++v52;
            }

            while (v52 != v50);

            v28 = v536;
            LOBYTE(v38) = v519;
          }

          if (*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v31 + 72) * v46);
          }

          if (*(v31 + 184))
          {
            v62 = 0;
          }

          else
          {
            v62 = *(v31 + 168);
          }

          *&v590[0] = 0;

          DWORD2(v620) = -1;
          v621 = v534;
          v622 = v533;
          v623 = v534;
          v624 = v533;
          *&v619 = v534;
          *(&v619 + 1) = v533;
          *&v620 = v62;
          if (v46 < 1)
          {
          }

          else
          {
            *&v519 = &v483;

            v63 = v41;

            v64 = v530;
            v65 = v525;
            v66 = v522;
            v67 = v523;
            v68 = v524;
            v69 = v535;
            do
            {

              LOBYTE(v582) = v38;
              LOBYTE(v482) = v68;
              sub_1AF626158(v67, v66 | (v38 << 32), v64, v537, &v619, v66 | (v38 << 32), v31, v63, 0, 0, 0, 0, v595, v69, v590, v482, v67, v65, v536);
            }

            while ((*(&v619 + 1) - v619) > 0);

            v28 = v536;
          }

          v70 = *(v31 + 192);
          v24 = v528;
          v27 = v531;
          if (v70)
          {
            v71 = *(v31 + 208);
            v72 = v534;
            v73 = v28;
            v74 = v533;
            sub_1AF75D364(v534, v533, v70);
            v75 = v74;
            v28 = v73;
            sub_1AF75D364(v72, v75, v71);
          }

          v29 = v517;
        }

        v27 += 48;
        os_unfair_lock_unlock(*(v31 + 344));
        os_unfair_lock_unlock(*(v31 + 376));
      }

      while (v27 != v29);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v521;
    }

    else
    {
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  else
  {
    v76 = 0;
  }

  v77 = a7[4];
  v611[0] = a7[3];
  v611[1] = v77;
  v612 = *(a7 + 10);
  sub_1AF6B06C0(v499, v611, 0x200000000, v577);
  if (*&v577[0])
  {
    if (v581 >= 1 && *(&v579 + 1))
    {
      v78 = *(&v578 + 1);
      v79 = *(&v580 + 1);
      v80 = *(&v578 + 1) + 48 * *(&v579 + 1);
      sub_1AF5B24F0(0);
      v532 = v81;
      v552 = v578;
      v553 = v579;
      v554 = v580;
      v555 = v581;
      v550 = v577[0];
      v551 = v577[1];
      sub_1AF5DD298(&v550, &v619);
      v536 = v79;
      v517 = v80;
      do
      {
        v82 = *(v78 + 40);
        v83 = *(v82 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v83);
        os_unfair_lock_lock(*(v82 + 344));
        v84 = *(v82 + 24);

        v621 = 0;
        v619 = 0u;
        v620 = 0u;
        memset(v595, 0, 40);
        v85 = sub_1AF65A4B4(v84, 0, 0, v532, &off_1F2558F90, &v619, v595);

        sub_1AFA9E8FC(v595, sub_1AF5C4448);
        sub_1AFA9E8FC(&v619, sub_1AF5C4448);
        if (sub_1AF649CEC(v85))
        {
          sub_1AF649D40(v85, v79);
        }

        else
        {
          v531 = v78;
          v87 = *(v82 + 232);
          v86 = *(v82 + 240);
          v88 = *(v82 + 120);
          v522 = *(v82 + 28);
          v89 = *(v82 + 32);
          v537 = *(v82 + 16);
          v90 = *(v82 + 40);
          v91 = v90[200];
          v92 = *(v537[11] + 8 * v85 + 32);

          if ((v91 & 1) != 0 || *(v92 + 200) == 1)
          {
            *(v537 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v90 = *(v82 + 40);
          }

          v93 = v90[212];
          LODWORD(v530) = v88;
          LODWORD(v523) = v85;
          if (v93)
          {
            LODWORD(v525) = 0;
          }

          else
          {
            LODWORD(v525) = *(v92 + 212);
          }

          v79 = v536;
          LODWORD(v524) = v90[208];
          v535 = *(v82 + 128);
          v94 = *(v82 + 256);
          v95 = v86;
          v96 = v518;
          sub_1AF5B4FCC(v90, v87, v95, 0, v82);
          v518 = v96;
          v533 = *(v82 + 256);
          v534 = v94;
          v97 = v533 - v94;
          if (v533 == v94)
          {
            v98 = 0;
          }

          else
          {
            v98 = v94;
          }

          v99 = v98;
          *&v595[0] = v98;
          v100 = *(*(v82 + 40) + 24);
          v101 = *(v100 + 16);
          if (v101)
          {
            LODWORD(v519) = v89;
            v102 = v100 + 32;

            v103 = 0;
            v104 = v535;
            v105 = v92;
            do
            {
              v106 = (v102 + 40 * v103);
              if ((v106[4] & 1) == 0)
              {
                v107 = *v106;
                v109 = v106[2];
                v108 = v106[3];
                v110 = *(v105 + 24);
                v111 = *(v110 + 16);
                if (v111)
                {
                  v112 = (v110 + 32);
                  while (*v112 != v107)
                  {
                    v112 += 5;
                    if (!--v111)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                else
                {
LABEL_63:
                  sub_1AF640BC8(v104 + v109 * v99 + v108, v97);
                  v105 = v92;
                  v104 = v535;
                }
              }

              ++v103;
            }

            while (v103 != v101);

            v79 = v536;
            LOBYTE(v89) = v519;
          }

          if (*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v82 + 72) * v97);
          }

          if (*(v82 + 184))
          {
            v113 = 0;
          }

          else
          {
            v113 = *(v82 + 168);
          }

          *&v590[0] = 0;

          DWORD2(v620) = -1;
          v621 = v534;
          v622 = v533;
          v623 = v534;
          v624 = v533;
          *&v619 = v534;
          *(&v619 + 1) = v533;
          *&v620 = v113;
          if (v97 < 1)
          {
          }

          else
          {
            *&v519 = &v483;

            v114 = v92;

            v115 = v530;
            v116 = v525;
            v117 = v522;
            v118 = v523;
            v119 = v524;
            v120 = v535;
            do
            {

              LOBYTE(v582) = v89;
              LOBYTE(v482) = v119;
              sub_1AF626158(v118, v117 | (v89 << 32), v115, v537, &v619, v117 | (v89 << 32), v82, v114, 0, 0, 0, 0, v595, v120, v590, v482, v118, v116, v536);
            }

            while ((*(&v619 + 1) - v619) > 0);

            v79 = v536;
          }

          v121 = *(v82 + 192);
          v24 = v528;
          v78 = v531;
          if (v121)
          {
            v122 = *(v82 + 208);
            v123 = v534;
            v124 = v79;
            v125 = v533;
            sub_1AF75D364(v534, v533, v121);
            v126 = v125;
            v79 = v124;
            sub_1AF75D364(v123, v126, v122);
          }

          v80 = v517;
        }

        v78 += 48;
        os_unfair_lock_unlock(*(v82 + 344));
        os_unfair_lock_unlock(*(v82 + 376));
      }

      while (v78 != v80);
      sub_1AFA9BF94(v577, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v577, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v521;
    }

    else
    {
      sub_1AFA9BF94(v577, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  LODWORD(v517) = v76;
  v127 = *(a7 + 104);
  v609[0] = *(a7 + 88);
  v609[1] = v127;
  v610 = *(a7 + 15);
  sub_1AF6B06C0(v499, v609, 0x200000000, &v582);
  if (v582)
  {
    v532 = v589;
    v128 = v518;
    if (v589 >= 1)
    {
      v531 = v586;
      if (v586)
      {
        v129 = 0;
        v530 = v585;
        v525 = v587;
        v130 = *(&v587->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v536 = v588[4];
        v537 = v588;
        v599 = v582;
        v600 = v583;
        v601 = v584;
        LODWORD(v524) = v130;
        do
        {
          v518 = v128;
          v535 = v129;
          v131 = &v530[12 * v129];
          v132 = *v131;
          v133 = v131[1];
          v134 = v131[2];
          v135 = *(v131 + 2);
          v136 = *(v131 + 3);
          v138 = *(v131 + 4);
          v137 = *(v131 + 5);
          if (v130)
          {
            v139 = *(v137 + 376);

            os_unfair_lock_lock(v139);
            os_unfair_lock_lock(*(v137 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v536);
          v140 = v537;
          v141 = *(v537 + 4);
          v617[0] = *(v537 + 3);
          v617[1] = v141;
          v618 = v537[10];
          v142 = *(*(*(*(v137 + 40) + 16) + 32) + 16) + 1;
          v140[6] = ecs_stack_allocator_allocate(v537[4], 48 * v142, 8);
          v140[7] = v142;
          v140[9] = 0;
          v140[10] = 0;
          v140[8] = 0;
          LOBYTE(v550) = 1;
          *&v619 = v525;
          *(&v619 + 1) = v137;
          *&v620 = v140;
          *(&v620 + 1) = v134;
          v621 = (v133 - v132 + v134);
          v622 = v532;
          v623 = v132;
          v624 = v133;
          v625 = 0;
          v626 = 0;
          v627 = 1;
          v628 = v135;
          v629 = v136;
          v630 = v138;
          v143 = v518;
          v144 = sub_1AF706F30(v137, &v619);
          v145 = v628;
          v534 = v143;
          if (v628)
          {
            v146 = v630;
            if (v630)
            {
              v533 = v620;
              v147 = (v144 + 8);
              do
              {
                v145 += 8;
                v148 = *(v147 - 1);
                v149 = *v147;

                sub_1AFD08440(v150, v148, v149);

                sub_1AF6FD09C(0);
                v152 = *(*(v137 + 40) + 16);
                v153 = *(v152 + 128);
                if (*(v153 + 16))
                {
                  v154 = v151;
                  v155 = sub_1AF449CB8(v151);
                  if ((v156 & 1) != 0 && *(*(v152 + 24) + 16 * *(*(v153 + 56) + 8 * v155) + 32) == v154)
                  {
                    *&v550 = v154;
                    *(&v550 + 1) = &off_1F2559388;
                    BYTE8(v552) = 1;
                    MEMORY[0x1EEE9AC00](v155);
                    v482 = v137;

                    sub_1AF63023C(0, v137, sub_1AFA9EC24);

                    sub_1AF635250(&v550);
                  }
                }

                v147 += 2;
                --v146;
              }

              while (v146);
            }
          }

          else
          {
            v157 = v623;
            v158 = v624;
            if (v623 != v624)
            {
              v159 = &v144[16 * v623 + 8];
              do
              {
                v160 = *(v159 - 1);
                v161 = *v159;

                sub_1AFD08440(v162, v160, v161);

                sub_1AF6FD09C(0);
                v164 = *(*(v137 + 40) + 16);
                v165 = *(v164 + 128);
                if (*(v165 + 16))
                {
                  v166 = v163;
                  v167 = sub_1AF449CB8(v163);
                  if ((v168 & 1) != 0 && *(*(v164 + 24) + 16 * *(*(v165 + 56) + 8 * v167) + 32) == v166)
                  {
                    *&v550 = v166;
                    *(&v550 + 1) = &off_1F2559388;
                    BYTE8(v552) = 1;
                    MEMORY[0x1EEE9AC00](v167);
                    v482 = v137;

                    sub_1AF63023C(0, v137, sub_1AFA9EC24);

                    sub_1AF635250(&v550);
                  }
                }

                ++v157;
                v159 += 2;
              }

              while (v158 != v157);
            }
          }

          v128 = v534;
          sub_1AF630994(v537, &v599, v617);
          sub_1AF62D29C(v137);
          ecs_stack_allocator_pop_snapshot(v536);
          v130 = v524;
          if (v524)
          {
            os_unfair_lock_unlock(*(v137 + 344));
            os_unfair_lock_unlock(*(v137 + 376));
          }

          v129 = v535 + 1;
        }

        while (v535 + 1 != v531);
      }
    }

    sub_1AFA9BF94(&v582, &qword_1ED725EA0, &type metadata for QueryResult);
    v24 = v528;
  }

  else
  {
    v128 = v518;
  }

  v169 = v521[9];
  v607[0] = v521[8];
  v607[1] = v169;
  v608 = *(v521 + 20);
  sub_1AF6B06C0(v499, v607, 0x200000000, v590);
  if (*&v590[0])
  {
    v170 = v594;
    if (v594 >= 1 && *(&v592 + 1))
    {
      v505 = v594;
      v171 = *(&v591 + 1);
      v536 = *(&v593 + 1);
      v172 = *(&v591 + 1) + 48 * *(&v592 + 1);
      sub_1AF5B252C(0);
      v532 = v173;
      v552 = v591;
      v553 = v592;
      v554 = v593;
      v555 = v594;
      v550 = v590[0];
      v551 = v590[1];
      sub_1AF5DD298(&v550, v595);
      v516 = v172;
      do
      {
        v174 = *(v171 + 40);
        v175 = *(v174 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v175);
        os_unfair_lock_lock(*(v174 + 344));
        v176 = *(v174 + 24);

        memset(v595, 0, 40);
        *&v568 = 0;
        v567 = 0u;
        v566 = 0u;
        v177 = sub_1AF65A4B4(v176, 0, 0, v532, &off_1F250F310, v595, &v566);

        sub_1AFA9E8FC(&v566, sub_1AF5C4448);
        sub_1AFA9E8FC(v595, sub_1AF5C4448);
        if (sub_1AF649CEC(v177))
        {
          sub_1AF649D40(v177, v536);
        }

        else
        {
          v531 = v171;
          v518 = v128;
          v179 = *(v174 + 232);
          v178 = *(v174 + 240);
          LODWORD(v530) = *(v174 + 120);
          v523 = *(v174 + 28);
          v180 = *(v174 + 32);
          v181 = *(v174 + 16);
          v182 = *(v174 + 40);
          v183 = v182[200];

          if ((v183 & 1) != 0 || *(v184 + 200) == 1)
          {
            *(v181 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v182 = *(v174 + 40);
          }

          v185 = v182[212];
          v186 = v184;
          v537 = v181;
          LODWORD(v524) = v177;
          if (v185)
          {
            LODWORD(v525) = 0;
          }

          else
          {
            LODWORD(v525) = *(v184 + 212);
          }

          v187 = v182[208];
          v535 = *(v174 + 128);
          v188 = *(v174 + 256);
          v189 = v178;
          v190 = v518;
          sub_1AF5B4FCC(v182, v179, v189, 0, v174);
          v518 = v190;
          v533 = *(v174 + 256);
          v534 = v188;
          v191 = v533 - v188;
          if (v533 == v188)
          {
            v192 = 0;
          }

          else
          {
            v192 = v188;
          }

          v193 = v192;
          *&v566 = v192;
          v194 = *(*(v174 + 40) + 24);
          v195 = *(v194 + 16);
          if (v195)
          {
            LODWORD(v519) = v180;
            LODWORD(v522) = v187;
            v196 = v194 + 32;

            v197 = 0;
            v198 = v535;
            v199 = v191;
            v200 = v186;
            do
            {
              v201 = (v196 + 40 * v197);
              if ((v201[4] & 1) == 0)
              {
                v202 = *v201;
                v204 = v201[2];
                v203 = v201[3];
                v205 = *(v200 + 24);
                v206 = *(v205 + 16);
                if (v206)
                {
                  v207 = (v205 + 32);
                  while (*v207 != v202)
                  {
                    v207 += 5;
                    if (!--v206)
                    {
                      goto LABEL_132;
                    }
                  }
                }

                else
                {
LABEL_132:
                  sub_1AF640BC8(v198 + v204 * v193 + v203, v199);
                  v200 = v186;
                  v199 = v191;
                  v198 = v535;
                }
              }

              ++v197;
            }

            while (v197 != v195);
            v191 = v199;

            LOBYTE(v187) = v522;
            LOBYTE(v180) = v519;
          }

          if (*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v174 + 72) * v191);
          }

          if (*(v174 + 184))
          {
            v208 = 0;
          }

          else
          {
            v208 = *(v174 + 168);
          }

          *&v545 = 0;

          *&v595[1] = v208;
          DWORD2(v595[1]) = -1;
          *&v595[2] = v534;
          *(&v595[2] + 1) = v533;
          *&v596 = v534;
          *(&v596 + 1) = v533;
          *&v595[0] = v534;
          *(&v595[0] + 1) = v533;
          if (v191 < 1)
          {
          }

          else
          {
            v522 = &v483;

            v209 = v186;

            v210 = v530;
            v211 = v523;
            v212 = v524;
            v213 = v187;
            v214 = v525;
            v215 = v535;
            do
            {

              LOBYTE(v540) = v180;
              LOBYTE(v482) = v213;
              sub_1AF626158(v212, v211 | (v180 << 32), v210, v537, v595, v211 | (v180 << 32), v174, v209, 0, 0, 0, 0, &v566, v215, &v545, v482, v212, v214, v536);
            }

            while ((*(&v595[0] + 1) - *&v595[0]) > 0);
          }

          v216 = *(v174 + 192);
          v24 = v528;
          v128 = v518;
          if (v216)
          {
            v217 = *(v174 + 208);
            v219 = v533;
            v218 = v534;
            sub_1AF75D364(v534, v533, v216);
            sub_1AF75D364(v218, v219, v217);
          }

          v171 = v531;
          v172 = v516;
        }

        v171 += 48;
        os_unfair_lock_unlock(*(v174 + 344));
        os_unfair_lock_unlock(*(v174 + 376));
      }

      while (v171 != v172);
      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
      v170 = v505;
    }

    else
    {
      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v220 = v517;
    if (v170 > 0)
    {
      v220 = 1;
    }

    LODWORD(v517) = v220;
  }

  if (v511)
  {
    sub_1AFA61FF8(v538, v511, sub_1AFD2C06C);
    LODWORD(v517) = v517 | v221;
  }

  if (v512)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v223 = v538;
  v224 = sub_1AFA74A24(v538, v513 & 1);

  v225 = *(v223 + 16);

  v518 = v128;
  if (v225)
  {
    v505 = sub_1AF8BB88C();
    v516 = v226;
  }

  else
  {
    v505 = 0;
    v516 = 0xE000000000000000;
  }

  v227 = v517 | v224;
  v228 = v521[14];
  v605[0] = v521[13];
  v605[1] = v228;
  v606 = *(v521 + 30);
  sub_1AF6B06C0(v499, v605, 0x200000000, v595);
  v229 = *&v595[0];
  if (!*&v595[0])
  {

    if ((v227 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  if (v598 <= 0 || (v486 = *(&v596 + 1)) == 0)
  {

    sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v227 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  v485 = *(&v595[2] + 1);
  v492 = *(&v597 + 1);
  v491 = *(*(&v597 + 1) + 32);
  v490 = *(v597 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B252C(0);
  v231 = v230;
  v602 = v229;
  v603 = *(v595 + 8);
  v604 = *(&v595[1] + 8);
  v522 = (v499 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v568 = v595[2];
  v569 = v596;
  v570 = v597;
  v571 = v598;
  v566 = v595[0];
  v567 = v595[1];
  sub_1AF5DD298(&v566, &v550);
  v232 = 0;
  v530 = v231;
  v484 = v231 - 8;
  v517 = (v503 + 2);
  v497 = (v503 + 4);
  v488 = (v503 + 6);
  v504 += 7;
  v494 = &v546;
  v502 = (v503 + 7);
  ++v503;
  v493 = &v551;
  v495 = xmmword_1AFE21110;
  v519 = xmmword_1AFE72020;
LABEL_172:
  v489 = v232;
  v233 = (v485 + 48 * v232);
  v234 = *v233;
  v524 = v233[1];
  v235 = *(v233 + 3);
  v532 = *(v233 + 2);
  v236 = *(v233 + 4);
  v237 = *(v233 + 5);
  if (v490)
  {
    v238 = *(v237 + 376);

    os_unfair_lock_lock(v238);
    os_unfair_lock_lock(*(v237 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v491);
  v239 = v492;
  v240 = *(v492 + 4);
  v615[0] = *(v492 + 3);
  v615[1] = v240;
  v616 = v492[10];
  v241 = *(*(*(*(v237 + 40) + 16) + 32) + 16) + 1;
  v239[6] = ecs_stack_allocator_allocate(v492[4], 48 * v241, 8);
  v239[7] = v241;
  v239[9] = 0;
  v239[10] = 0;
  v239[8] = 0;
  v242 = v532;
  v536 = sub_1AF64B110(v527, &off_1F255B548, v532, v235, v236, v239);
  v537 = sub_1AF64B110(v530, &off_1F250F310, v242, v235, v236, v239);
  if (v242)
  {
    if (!v236)
    {
      goto LABEL_315;
    }

    v524 = *(v508 + 72);
    v523 = *(*v484 + 72);
    v501 = v237;
    while (1)
    {
      v246 = *v532;
      v531 = v236;
      ++v532;

      if (*(v237 + 184))
      {
        goto LABEL_324;
      }

      v248 = *(*(v237 + 168) + 4 * v246);
      v249 = *(*(v247 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v248 + 8);

      v250 = v248 == -1 && v249 == 0;
      if (v250 || (v248 & 0x80000000) != 0 || v522[1] <= v248)
      {
        break;
      }

      v251 = *v522 + 12 * v248;
      if (v249 != -1 && *(v251 + 8) != v249)
      {
        break;
      }

      v253 = *(*(*(v499 + 88) + 8 * *(v251 + 6) + 32) + 16);
      v254 = *(v253 + 128);
      if (!*(v254 + 16))
      {
        break;
      }

      v255 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v256 & 1) == 0 || *(*(v253 + 24) + 16 * *(*(v254 + 56) + 8 * v255) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_181:
      v537 = (v537 + v523);
      v536 += v524;
      v236 = v531 - 1;
      if (v531 == 1)
      {
        goto LABEL_314;
      }
    }

    dispatch_group_enter(v539);
    v257 = *(v237 + 64);
    v258 = *(v237 + 80);
    v560 = *(v237 + 112);
    v260 = *(v237 + 80);
    v259 = *(v237 + 96);
    v558 = v258;
    v559 = v259;
    v261 = *(v237 + 64);
    v556 = *(v237 + 48);
    v557 = v257;
    v262 = *(v237 + 96);
    v552 = v260;
    v553 = v262;
    LOBYTE(v554) = *(v237 + 112);
    v550 = *(v237 + 48);
    v551 = v261;
    v263 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v265 = v264;
    v563 = v552;
    v564 = v553;
    v565 = v554;
    v562 = v551;
    v561 = v550;

    sub_1AF5DD36C(&v556, &v545);
    sub_1AF5DD3C8(&v561);
    if (v265)
    {

      v534 = 0;
      v266 = 0;
      v267 = 0;
    }

    else
    {
      v268 = *(v237 + 128);

      v269 = (v268 + v263 + 24 * v246);
      v534 = *v269;
      v266 = *(v269 + 1);
      v267 = *(v269 + 2);
    }

    if (*(v237 + 184))
    {
      goto LABEL_324;
    }

    v533 = v266;
    v271 = *(*(v237 + 168) + 4 * v246);
    v272 = *(*(v270 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v271 + 8);

    v273 = swift_allocObject();
    v273[2] = sub_1AFA9EC2C;
    v273[3] = v24;
    v535 = v273;
    v274 = v538;
    v273[4] = v539;
    v275 = *(v274 + 16);

    if (v275)
    {
      v276 = *(v275 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v277 = v539;

      if ((v276 & 1) == 0 || *(v538 + 3048) != 1)
      {
        sub_1AF81F330();
        v279 = swift_allocError();
        v280 = v279;
        *v281 = v519;
        if (!*(v529 + 16))
        {
          v282 = v510;
          v283 = *(v510 + 72);
          v284 = v279;
          os_unfair_lock_lock(v283);
          v285 = *(v529 + 16);
          *(v529 + 16) = v280;
          v286 = v280;

          os_unfair_lock_unlock(*(v282 + 72));
        }

        dispatch_group_leave(v277);

        goto LABEL_207;
      }
    }

    else
    {
      swift_retain_n();
      v287 = v539;
    }

    v288 = sub_1AFAA6314(v278);
    v289 = v538;
    v290 = v537 + v530[9];
    v291 = *v290;
    LOBYTE(v290) = v290[8];
    v525 = v288;
    v292 = v290 | (v288 != v291);
    os_unfair_lock_lock(*(v538 + 72));
    v293 = *(v289 + 80);
    if (*(v293 + 16) && (v294 = sub_1AF41ACD4(v527, v271 | (v272 << 32)), (v295 & 1) != 0))
    {
      sub_1AF85B3D4(*(v293 + 56) + 96 * v294, &v550);
      if (BYTE8(v555) != 255)
      {
        sub_1AF85B3D4(&v550, &v545);
        sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v544 + 9) = *(v549 + 9);
        v542 = v547;
        v543 = v548;
        v544[0] = v549[0];
        v540 = v545;
        v541 = v546;
        if (!BYTE8(v549[1]))
        {
          v343 = v540;
          v344 = (v540 != v525) | v292;
          os_unfair_lock_unlock(*(v538 + 72));
          if (v344)
          {
            if (v343 == v525)
            {
              v277 = v539;
              dispatch_group_leave(v539);
LABEL_207:

              v24 = v528;
LABEL_179:

              v244 = v533;
              v243 = v534;
              v245 = v267;
LABEL_180:
              sub_1AF487074(v243, v244, v245);
              goto LABEL_181;
            }

LABEL_217:
            v512 = v271;
            v514 = v267;
            v296 = v530;
            v513 = swift_allocBox();
            v298 = v297;
            sub_1AFA5C124(v297);
            v299 = v298 + *(v296 + 36);
            v300 = v525;
            *v299 = v525;
            *(v299 + 8) = 0;
            sub_1AFA9DE54(v536, v298, type metadata accessor for GraphScript);
            sub_1AFA9DE54(v298, v537, sub_1AF5B252C);
            v301 = v538;
            os_unfair_lock_lock(*(v538 + 72));
            *&v550 = v300;
            BYTE8(v555) = 0;
            sub_1AF825824(&v550, v527, v271 | (v272 << 32));
            os_unfair_lock_unlock(*(v301 + 72));
            v302 = *(v301 + 16);

            if (v302)
            {
              v303 = v500;
              v304 = v526;
              (*v517)(v500, v302 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v526);

              (*v502)(v303, 0, 1, v304);
              v305 = v515;
              (*v497)(v515, v303, v304);
            }

            else
            {
              v306 = v500;
              (*v502)(v500, 1, 1, v526);
              v305 = v515;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v307 = sub_1AFDFC538();
              sub_1AF477C68(v307, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v488)(v306, 1, v526) != 1)
              {
                sub_1AFA9C470(v306, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v511 = v272;
            v308 = sub_1AFDFC538();
            sub_1AF477C68(v308, qword_1ED73B608);
            v309 = sub_1AFDFC528();
            v310 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v311 = swift_slowAlloc();
              *v311 = 0;
              v312 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v309, v310, v312, "buildScript", "", v311, 2u);
              MEMORY[0x1B271DEA0](v311, -1, -1);
            }

            (*v517)(v506, v305, v526);
            sub_1AFDFC578();
            swift_allocObject();
            v313 = sub_1AFDFC568();
            sub_1AFA9E3C8(v536, v520, type metadata accessor for GraphScript);
            v314 = (*(v508 + 80) + 400) & ~*(v508 + 80);
            v315 = (v504 + v314) & 0xFFFFFFFFFFFFFFF8;
            v316 = (v315 + 23) & 0xFFFFFFFFFFFFFFF8;
            v317 = (v316 + 27) & 0xFFFFFFFFFFFFFFF8;
            v318 = swift_allocObject();
            v319 = v527;
            *(v318 + 16) = v538;
            *(v318 + 24) = v319;
            v321 = v511;
            v320 = v512;
            *(v318 + 32) = v512;
            *(v318 + 36) = v321;
            *(v318 + 40) = v525;
            *(v318 + 48) = sub_1AFA9EC20;
            *(v318 + 56) = v535;
            *(v318 + 64) = v313;
            v525 = v313;
            memcpy((v318 + 72), v521, 0x148uLL);
            sub_1AFA9E320(v520, v318 + v314, type metadata accessor for GraphScript);
            v322 = (v318 + v315);
            v323 = v516;
            *v322 = v505;
            v322[1] = v323;
            v324 = (v318 + v316);
            v325 = v533;
            v326 = v534;
            *v324 = v534;
            v324[1] = v325;
            v327 = v514;
            v324[2] = v514;
            v328 = (v318 + v317);
            *v328 = v320;
            v328[1] = v321;
            *(v318 + ((v317 + 15) & 0xFFFFFFFFFFFFFFF8)) = v513;
            if ((v507 & 1) == 0)
            {
              v511 = *(v538 + 32);
              v337 = swift_allocObject();
              *(v337 + 16) = sub_1AFA9EB88;
              *(v337 + 24) = v318;
              v338 = v337;
              v512 = v337;
              v339 = swift_allocObject();
              *(v339 + 16) = sub_1AFA9EB90;
              *(v339 + 24) = v338;
              *&v547 = sub_1AF6D25EC;
              *(&v547 + 1) = v339;
              *&v545 = MEMORY[0x1E69E9820];
              *(&v545 + 1) = 1107296256;
              *&v546 = sub_1AF6F662C;
              *(&v546 + 1) = &unk_1F255AE78;
              v340 = _Block_copy(&v545);
              v534 = v326;
              v341 = v340;

              sub_1AFA9C054(v521, &v550, &unk_1EB633F60, type metadata accessor for GraphScript, &off_1F255B548, &off_1ED72D7D8);

              v342 = v533;
              sub_1AF487F80(v326, v533, v327);

              dispatch_sync(v511, v341);
              _Block_release(v341);

              (*v503)(v515, v526);
              swift_isEscapingClosureAtFileLocation();

              v24 = v528;

              sub_1AF487074(v534, v342, v327);
              v237 = v501;
              goto LABEL_181;
            }

            v511 = *(v538 + 40);
            v329 = swift_allocObject();
            *(v329 + 16) = sub_1AFA9EB88;
            *(v329 + 24) = v318;
            v512 = v329;

            sub_1AFA9C054(v521, &v550, &unk_1EB633F60, type metadata accessor for GraphScript, &off_1F255B548, &off_1ED72D7D8);

            sub_1AF487F80(v326, v325, v327);
            v330 = qword_1ED730EA0;

            v331 = v327;
            v237 = v501;
            if (v330 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v332 = qword_1ED73B8A0;
            v333 = swift_allocObject();
            v334 = v512;
            *(v333 + 16) = sub_1AFA9EB90;
            *(v333 + 24) = v334;
            v335 = swift_allocObject();
            v335[2] = v332;
            v335[3] = sub_1AF6CC3F0;
            v335[4] = v333;
            *&v552 = sub_1AFA9EC30;
            *(&v552 + 1) = v335;
            *&v550 = MEMORY[0x1E69E9820];
            *(&v550 + 1) = 1107296256;
            *&v551 = sub_1AFCDA044;
            *(&v551 + 1) = &unk_1F255AF18;
            v336 = _Block_copy(&v550);
            swift_retain_n();

            [v511 addOperationWithBlock:v336];
            _Block_release(v336);

            (*v503)(v515, v526);

            v24 = v528;

            v244 = v533;
            v243 = v534;
            v245 = v331;
            goto LABEL_180;
          }

LABEL_237:
          v345 = v539;
          v346 = v537;
          sub_1AFA9DE54(v536, v537, type metadata accessor for GraphScript);
          v347 = v346[6];
          v348 = v530;
          if (v347)
          {
            v349 = v537;
            v350 = v537[7];
            v351 = v537[1];
            v352 = v537[2];

            v353 = sub_1AF458B0C(v351, v352);
            v347(*(v349 + v348[13]), v353);

            sub_1AF0FB8EC(v347, v350);
          }

          if (*(v537 + v348[10]) == 1)
          {
            v354 = *(v537 + v348[11]);
            v355 = v354;
          }

          else
          {
            sub_1AF81F330();
            v354 = swift_allocError();
            *v356 = v495;
          }

          v24 = v528;
          if (!*(v529 + 16) && v354)
          {
            v357 = v510;
            v358 = *(v510 + 72);
            v359 = v354;
            os_unfair_lock_lock(v358);
            v360 = *(v529 + 16);
            *(v529 + 16) = v354;
            v361 = v354;

            os_unfair_lock_unlock(*(v357 + 72));
          }

          dispatch_group_leave(v345);

          goto LABEL_179;
        }

        sub_1AFA9C0C8(&v540);
LABEL_216:
        os_unfair_lock_unlock(*(v538 + 72));
        if (v292)
        {
          goto LABEL_217;
        }

        goto LABEL_237;
      }
    }

    else
    {
      *&v555 = 0;
      v553 = 0u;
      v554 = 0u;
      v551 = 0u;
      v552 = 0u;
      v550 = 0u;
      BYTE8(v555) = -1;
    }

    sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_216;
  }

  if (v234 == v524)
  {
    goto LABEL_315;
  }

  v362 = *(v508 + 72);
  v514 = *(*v484 + 72);
  v537 = (v537 + v514 * v234);
  v535 = 24 * v234;
  v536 += v362 * v234;
  v496 = v362;
  while (1)
  {

    if (*(v237 + 184))
    {
      break;
    }

    v367 = *(*(v237 + 168) + 4 * v234);
    v368 = *(*(v366 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v367 + 8);

    v369 = v367 == -1 && v368 == 0;
    if (!v369 && (v367 & 0x80000000) == 0 && v522[1] > v367)
    {
      v370 = *v522 + 12 * v367;
      if (v368 == -1 || *(v370 + 8) == v368)
      {
        v372 = *(*(*(v499 + 88) + 8 * *(v370 + 6) + 32) + 16);
        v373 = *(v372 + 128);
        if (*(v373 + 16))
        {
          v374 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v375 & 1) != 0 && *(*(v372 + 24) + 16 * *(*(v373 + 56) + 8 * v374) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_249;
          }
        }
      }
    }

    dispatch_group_enter(v539);
    v376 = *(v237 + 64);
    v377 = *(v237 + 80);
    v560 = *(v237 + 112);
    v379 = *(v237 + 80);
    v378 = *(v237 + 96);
    v558 = v377;
    v559 = v378;
    v380 = *(v237 + 64);
    v556 = *(v237 + 48);
    v557 = v376;
    v381 = *(v237 + 96);
    v552 = v379;
    v553 = v381;
    LOBYTE(v554) = *(v237 + 112);
    v550 = *(v237 + 48);
    v551 = v380;
    v382 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v384 = v383;
    v563 = v552;
    v564 = v553;
    v565 = v554;
    v562 = v551;
    v561 = v550;

    sub_1AF5DD36C(&v556, &v545);
    sub_1AF5DD3C8(&v561);
    if (v384)
    {

      v534 = 0;
      v385 = 0;
      v386 = 0;
    }

    else
    {
      v387 = *(v237 + 128);

      v388 = (v387 + v535 + v382);
      v534 = *v388;
      v385 = *(v388 + 1);
      v386 = *(v388 + 2);
    }

    v532 = v385;

    if (*(v237 + 184))
    {
      break;
    }

    v533 = v386;
    v390 = *(v237 + 168);
    v531 = v234;
    v391 = *(v390 + 4 * v234);
    v525 = *(*(v389 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v391 + 8);

    v392 = swift_allocObject();
    v392[2] = sub_1AFA9EC2C;
    v392[3] = v24;
    v393 = v538;
    v392[4] = v539;
    v394 = *(v393 + 16);

    if (v394)
    {
      v395 = *(v394 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v396 = v539;

      if ((v395 & 1) == 0 || *(v538 + 3048) != 1)
      {
        sub_1AF81F330();
        v398 = swift_allocError();
        v399 = v398;
        *v400 = v519;
        if (!*(v529 + 16))
        {
          v401 = v510;
          v402 = *(v510 + 72);
          v403 = v398;
          os_unfair_lock_lock(v402);
          v404 = *(v529 + 16);
          *(v529 + 16) = v399;
          v405 = v399;

          v362 = v496;
          os_unfair_lock_unlock(*(v401 + 72));
        }

        dispatch_group_leave(v396);

        goto LABEL_275;
      }
    }

    else
    {
      swift_retain_n();
      v406 = v539;
    }

    v407 = v391;
    v408 = sub_1AFAA6314(v397);
    v409 = v538;
    v410 = v537 + v530[9];
    v411 = *v410;
    LOBYTE(v410) = v410[8];
    v523 = v408;
    v412 = v410 | (v408 != v411);
    os_unfair_lock_lock(*(v538 + 72));
    v413 = *(v409 + 80);
    if (!*(v413 + 16) || (v414 = sub_1AF41ACD4(v527, v391 | (v525 << 32)), (v415 & 1) == 0))
    {
      *&v555 = 0;
      v553 = 0u;
      v554 = 0u;
      v551 = 0u;
      v552 = 0u;
      v550 = 0u;
      BYTE8(v555) = -1;
LABEL_283:
      sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_284:
      v416 = v538;
      os_unfair_lock_unlock(*(v538 + 72));
      if ((v412 & 1) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_285;
    }

    sub_1AF85B3D4(*(v413 + 56) + 96 * v414, &v550);
    if (BYTE8(v555) == 255)
    {
      goto LABEL_283;
    }

    sub_1AF85B3D4(&v550, &v545);
    sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v544 + 9) = *(v549 + 9);
    v542 = v547;
    v543 = v548;
    v544[0] = v549[0];
    v540 = v545;
    v541 = v546;
    if (BYTE8(v549[1]))
    {
      sub_1AFA9C0C8(&v540);
      goto LABEL_284;
    }

    v460 = v540;
    v461 = (v540 != v523) | v412;
    v416 = v538;
    os_unfair_lock_unlock(*(v538 + 72));
    if ((v461 & 1) == 0)
    {
LABEL_306:
      v463 = v537;
      sub_1AFA9DE54(v536, v537, type metadata accessor for GraphScript);
      v464 = v463[6];
      v465 = v530;
      if (v464)
      {
        v466 = v463[7];
        v467 = v463[1];
        v468 = v537[2];

        v469 = v468;
        v463 = v537;
        v470 = sub_1AF458B0C(v467, v469);
        v464(*(v463 + v465[13]), v470);

        sub_1AF0FB8EC(v464, v466);
      }

      if (*(v463 + v465[10]) == 1)
      {
        v471 = *(v463 + v465[11]);
        v472 = v471;
      }

      else
      {
        sub_1AF81F330();
        v471 = swift_allocError();
        *v473 = v495;
      }

      v24 = v528;
      if (*(v529 + 16) || !v471)
      {
        v363 = v362;
      }

      else
      {
        v363 = v362;
        v474 = v510;
        v475 = *(v510 + 72);
        v476 = v471;
        os_unfair_lock_lock(v475);
        v477 = *(v529 + 16);
        *(v529 + 16) = v471;
        v478 = v471;

        os_unfair_lock_unlock(*(v474 + 72));
      }

      v234 = v531;
      v364 = v532;
      v365 = v539;
      dispatch_group_leave(v539);

      sub_1AF487074(v534, v364, v533);
      v362 = v363;
      goto LABEL_249;
    }

    if (v460 == v523)
    {
      v462 = v539;
      dispatch_group_leave(v539);

      v24 = v528;
LABEL_275:

      goto LABEL_301;
    }

LABEL_285:
    v511 = v391;
    v417 = v530;
    v418 = swift_allocBox();
    v420 = v419;
    sub_1AFA5C124(v419);
    v421 = v420 + *(v417 + 36);
    v422 = v523;
    *v421 = v523;
    *(v421 + 8) = 0;
    sub_1AFA9DE54(v536, v420, type metadata accessor for GraphScript);
    sub_1AFA9DE54(v420, v537, sub_1AF5B252C);
    os_unfair_lock_lock(*(v416 + 72));
    *&v550 = v422;
    BYTE8(v555) = 0;
    sub_1AF825824(&v550, v527, v407 | (v525 << 32));
    os_unfair_lock_unlock(*(v416 + 72));
    v423 = *(v416 + 16);

    if (v423)
    {
      v424 = v487;
      v425 = v526;
      (*v517)(v487, v423 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v526);

      (*v502)(v424, 0, 1, v425);
      (*v497)(v509, v424, v425);
    }

    else
    {
      v426 = v487;
      (*v502)(v487, 1, 1, v526);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v427 = sub_1AFDFC538();
      sub_1AF477C68(v427, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v488)(v426, 1, v526) != 1)
      {
        sub_1AFA9C470(v426, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v512 = v418;
    v513 = v392;
    v428 = sub_1AFDFC538();
    sub_1AF477C68(v428, qword_1ED73B608);
    v429 = sub_1AFDFC528();
    v430 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v431 = swift_slowAlloc();
      *v431 = 0;
      v432 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v429, v430, v432, "buildScript", "", v431, 2u);
      MEMORY[0x1B271DEA0](v431, -1, -1);
    }

    (*v517)(v506, v509, v526);
    sub_1AFDFC578();
    swift_allocObject();
    v433 = sub_1AFDFC568();
    sub_1AFA9E3C8(v536, v520, type metadata accessor for GraphScript);
    v434 = (*(v508 + 80) + 400) & ~*(v508 + 80);
    v435 = (v504 + v434) & 0xFFFFFFFFFFFFFFF8;
    v436 = (v435 + 23) & 0xFFFFFFFFFFFFFFF8;
    v437 = (v436 + 27) & 0xFFFFFFFFFFFFFFF8;
    v498 = (v437 + 15) & 0xFFFFFFFFFFFFFFF8;
    v438 = swift_allocObject();
    v439 = v527;
    *(v438 + 16) = v538;
    *(v438 + 24) = v439;
    v440 = v511;
    v441 = v525;
    *(v438 + 32) = v511;
    *(v438 + 36) = v441;
    *(v438 + 40) = v523;
    *(v438 + 48) = sub_1AFA9EC20;
    *(v438 + 56) = v513;
    *(v438 + 64) = v433;
    v523 = v433;
    memcpy((v438 + 72), v521, 0x148uLL);
    sub_1AFA9E320(v520, v438 + v434, type metadata accessor for GraphScript);
    v442 = (v438 + v435);
    v443 = v516;
    *v442 = v505;
    v442[1] = v443;
    v444 = (v438 + v436);
    v445 = v533;
    v446 = v534;
    v447 = v532;
    *v444 = v534;
    v444[1] = v447;
    v444[2] = v445;
    v448 = (v438 + v437);
    *v448 = v440;
    v448[1] = v441;
    *(v438 + v498) = v512;
    if ((v507 & 1) == 0)
    {
      v525 = *(v538 + 32);
      v455 = v445;
      v456 = swift_allocObject();
      *(v456 + 16) = sub_1AFA9DAA4;
      *(v456 + 24) = v438;
      v457 = swift_allocObject();
      *(v457 + 16) = sub_1AFA9EB90;
      *(v457 + 24) = v456;
      *&v547 = sub_1AF6D25EC;
      *(&v547 + 1) = v457;
      *&v545 = MEMORY[0x1E69E9820];
      *(&v545 + 1) = 1107296256;
      *&v546 = sub_1AF6F662C;
      *(&v546 + 1) = &unk_1F255AD10;
      v458 = _Block_copy(&v545);
      v534 = v446;
      v459 = v458;
      v511 = *(&v547 + 1);

      sub_1AFA9C054(v521, &v550, &unk_1EB633F60, type metadata accessor for GraphScript, &off_1F255B548, &off_1ED72D7D8);

      sub_1AF487F80(v446, v447, v455);

      dispatch_sync(v525, v459);
      _Block_release(v459);

      (*v503)(v509, v526);
      swift_isEscapingClosureAtFileLocation();

      v24 = v528;

      sub_1AF487074(v534, v447, v455);
      v234 = v531;
      v362 = v496;
      goto LABEL_249;
    }

    v525 = *(v538 + 40);
    v449 = swift_allocObject();
    *(v449 + 16) = sub_1AFA9DAA4;
    *(v449 + 24) = v438;

    sub_1AFA9C054(v521, &v550, &unk_1EB633F60, type metadata accessor for GraphScript, &off_1F255B548, &off_1ED72D7D8);

    sub_1AF487F80(v446, v447, v445);
    v450 = qword_1ED730EA0;

    v362 = v496;
    if (v450 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v451 = qword_1ED73B8A0;
    v452 = swift_allocObject();
    *(v452 + 16) = sub_1AFA9EB90;
    *(v452 + 24) = v449;
    v453 = swift_allocObject();
    v453[2] = v451;
    v453[3] = sub_1AF6CC3F0;
    v453[4] = v452;
    *&v552 = sub_1AFA9EC30;
    *(&v552 + 1) = v453;
    *&v550 = MEMORY[0x1E69E9820];
    *(&v550 + 1) = 1107296256;
    *&v551 = sub_1AFCDA044;
    *(&v551 + 1) = &unk_1F255ADB0;
    v454 = _Block_copy(&v550);
    swift_retain_n();

    [v525 addOperationWithBlock:v454];
    _Block_release(v454);

    (*v503)(v509, v526);

    v24 = v528;

LABEL_301:

    sub_1AF487074(v534, v532, v533);
    v234 = v531;
LABEL_249:
    ++v234;
    v537 = (v537 + v514);
    v535 += 24;
    v536 += v362;
    if (v524 == v234)
    {
LABEL_314:
      v227 = 1;
LABEL_315:
      v479 = v518;
      sub_1AF630994(v492, &v602, v615);
      v518 = v479;
      sub_1AF62D29C(v237);
      ecs_stack_allocator_pop_snapshot(v491);
      if (v490)
      {
        os_unfair_lock_unlock(*(v237 + 344));
        os_unfair_lock_unlock(*(v237 + 376));
      }

      v232 = v489 + 1;
      if (v489 + 1 != v486)
      {
        goto LABEL_172;
      }

      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v227 & 1) == 0)
      {
LABEL_319:
        dispatch_group_leave(v539);
      }

LABEL_318:

      sub_1AFA62400(v480);

      goto LABEL_319;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA78940(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v82 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B24B4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SimpleScript(0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2478(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  sub_1AF85B3D4(a2, v76);
  if (!v81)
  {
    goto LABEL_18;
  }

  if (v81 != 1)
  {
    sub_1AFA9DA8C(a1);

    sub_1AF449D40(v76, v75);
    sub_1AF0D5A54(v75, &v69);
    swift_dynamicCast();
    v72 = v11;
    v73 = &off_1F250F310;
    v42 = sub_1AF585714(&v69);
    sub_1AFA9DA5C(a1, v42, v43);
    v74 = 1;
    sub_1AF8259D0(&v69, v66, v67);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
    goto LABEL_18;
  }

  v56 = v19;
  v57 = v13;
  v58 = a2;
  v59 = v7;
  v61 = a1;
  sub_1AFA9DA8C(a1);
  v23 = v77;
  v62 = v78;
  v60 = v79;
  sub_1AF449D40(v76, v75);
  sub_1AF449D40(&v80, v68);
  v24 = MEMORY[0x1E69E7CC0];
  *v22 = MEMORY[0x1E69E7CC0];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0xE000000000000000;
  *(v22 + 3) = &unk_1F25030B0;
  v22[32] = 3;
  *(v22 + 5) = 0;
  *(v22 + 6) = 0;
  v22[56] = 0;
  v25 = *(v14 + 40);
  v26 = type metadata accessor for ScriptIndex(0);
  (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
  v27 = &v22[v11[9]];
  *v27 = 0;
  v27[8] = 1;
  v22[v11[10]] = 0;
  *&v22[v11[11]] = 0;
  v28 = &v22[v11[12]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v22[v11[13]] = v24;
  v29 = v17[9];
  v30 = v17[10];
  v31 = v17[11];
  *&v22[v17[12]] = 0;
  v22[v17[13]] = 0;
  v32 = &v22[v17[14]];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v22[v17[15]];
  *v33 = 0;
  v33[1] = 0;
  sub_1AF0D5A54(v75, &v69);
  sub_1AFA9DA8C(v22);
  swift_dynamicCast();
  *&v22[v29] = v23;
  *&v22[v31] = v60;
  *&v22[v30] = v62;
  v34 = *v33;
  v35 = v33[1];
  v62 = v23;

  sub_1AF919DAC(v34, v35);
  sub_1AF0D5A54(v68, &v69);
  swift_dynamicCast();
  sub_1AFA9DA5C(v22, v61, v36);
  if (v64)
  {
    v37 = v65;
    v38 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v39 = v67;
    v40 = v57;
    if (v38)
    {
      v41 = *(v38 + 80);
      swift_unknownObjectWeakLoadStrong();
      v38 = *(v38 + 56);
    }

    else
    {
      v41 = 0;
    }

    v64 = v41;
    v71 = 0;
    swift_unknownObjectUnownedInit();
    v69 = v37;
    v71 = v38;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v72) = v41;
    v46 = v56;
    sub_1AFA9E3C8(v22, v56, sub_1AF5B2478);
    v47 = v63;
    sub_1AFA9E3C8(v46, v63, type metadata accessor for SimpleScript);
    sub_1AFA9E8FC(v46, sub_1AF5B2478);
    sub_1AF5AE1C8(v47, v39);
    sub_1AFA9E8FC(v47, type metadata accessor for SimpleScript);
    sub_1AFA9DA5C(v22, v40, v48);
    sub_1AF5AE358(v40, v39);
    sub_1AFA9DA8C(v40);
    sub_1AFA9E3C8(v22, v46, sub_1AF5B2478);
    sub_1AF5AE4E8(v46, v39);
    v44 = v65;
    sub_1AFA9E8FC(v46, sub_1AF5B2478);
    sub_1AF579490(&v69);
    v45 = v66;
    if (v64)
    {
      v49 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v49 ^ 1);
    }
  }

  else
  {
    v39 = v67;
    v44 = v65;
    sub_1AFBFDEBC(v22, v67);
    v45 = v66;
  }

  v72 = v17;
  v73 = &off_1F2558F90;
  v50 = sub_1AF585714(&v69);
  sub_1AFA9E3C8(v22, v50, sub_1AF5B2478);
  v74 = 0;
  sub_1AF8259D0(&v69, v45, v39);
  v51 = sub_1AF3CB4F8(v39);
  if (v51)
  {
    sub_1AFD08440(v44, v51, v52);
  }

  sub_1AF0D5A54(v68, &v69);
  if (swift_dynamicCast())
  {

    v69 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C();

    sub_1AFBFE12C(v69, v70, v39);
LABEL_16:

    goto LABEL_17;
  }

  sub_1AF0D5A54(v68, &v69);
  if (swift_dynamicCast())
  {
    goto LABEL_16;
  }

LABEL_17:
  a2 = v58;
  sub_1AF678B44(v39, v53);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v68);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
  sub_1AFA9E8FC(v22, sub_1AF5B2478);
LABEL_18:
  result = sub_1AF85B3D4(a2, v76);
  if (v81)
  {
    return sub_1AFA9C0C8(v76);
  }

  return result;
}

uint64_t sub_1AFA79148(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v41 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v42 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v43);
        if (v44 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for SimpleScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B24B4(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v43);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v42 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA78940(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45700);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v43);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for SimpleScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA7959C(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v513) = a6;
  v511 = a2;
  v512 = a5;
  v507 = a4;
  v518 = 0;
  v527 = type metadata accessor for SimpleScript(0);
  v508 = *(v527 - 8);
  MEMORY[0x1EEE9AC00](v527);
  v504 = v13;
  v520 = &v483 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v487 = &v483 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v500 = &v483 - v17;
  v18 = sub_1AFDFC4F8();
  v503 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v509 = &v483 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v506 = &v483 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v515 = &v483 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v529 = a8;

  v510 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v613[0] = *(a7 + 168);
  v613[1] = v26;
  v614 = *(a7 + 25);
  v514 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v499 = v25;
  sub_1AF6B06C0(v25, v613, 0x200000000, v572);
  v538 = a1;
  v539 = a3;
  v528 = v24;
  v521 = a7;
  v526 = v18;
  if (*&v572[0])
  {
    if (v576 < 1)
    {
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 0;
    }

    else if (*(&v574 + 1))
    {
      v27 = *(&v573 + 1);
      v28 = *(&v575 + 1);
      v29 = *(&v573 + 1) + 48 * *(&v574 + 1);
      sub_1AF5B24B4(0);
      v532 = v30;
      v552 = v573;
      v553 = v574;
      v554 = v575;
      v555 = v576;
      v550 = v572[0];
      v551 = v572[1];
      sub_1AF5DD298(&v550, &v619);
      v536 = v28;
      v517 = v29;
      do
      {
        v31 = *(v27 + 40);
        v32 = *(v31 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v32);
        os_unfair_lock_lock(*(v31 + 344));
        v33 = *(v31 + 24);

        v621 = 0;
        v619 = 0u;
        v620 = 0u;
        memset(v595, 0, 40);
        v34 = sub_1AF65A4B4(v33, v532, &off_1F250F310, 0, 0, &v619, v595);

        sub_1AFA9E8FC(v595, sub_1AF5C4448);
        sub_1AFA9E8FC(&v619, sub_1AF5C4448);
        if (sub_1AF649CEC(v34))
        {
          sub_1AF649D40(v34, v28);
        }

        else
        {
          v531 = v27;
          v36 = *(v31 + 232);
          v35 = *(v31 + 240);
          v37 = *(v31 + 120);
          v522 = *(v31 + 28);
          v38 = *(v31 + 32);
          v537 = *(v31 + 16);
          v39 = *(v31 + 40);
          v40 = v39[200];
          v41 = *(v537[11] + 8 * v34 + 32);

          if ((v40 & 1) != 0 || *(v41 + 200) == 1)
          {
            *(v537 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v39 = *(v31 + 40);
          }

          v42 = v39[212];
          LODWORD(v530) = v37;
          LODWORD(v523) = v34;
          if (v42)
          {
            LODWORD(v525) = 0;
          }

          else
          {
            LODWORD(v525) = *(v41 + 212);
          }

          v28 = v536;
          LODWORD(v524) = v39[208];
          v535 = *(v31 + 128);
          v43 = *(v31 + 256);
          v44 = v35;
          v45 = v518;
          sub_1AF5B4FCC(v39, v36, v44, 0, v31);
          v518 = v45;
          v533 = *(v31 + 256);
          v534 = v43;
          v46 = v533 - v43;
          if (v533 == v43)
          {
            v47 = 0;
          }

          else
          {
            v47 = v43;
          }

          v48 = v47;
          *&v595[0] = v47;
          v49 = *(*(v31 + 40) + 24);
          v50 = *(v49 + 16);
          if (v50)
          {
            LODWORD(v519) = v38;
            v51 = v49 + 32;

            v52 = 0;
            v53 = v535;
            v54 = v41;
            do
            {
              v55 = (v51 + 40 * v52);
              if ((v55[4] & 1) == 0)
              {
                v56 = *v55;
                v58 = v55[2];
                v57 = v55[3];
                v59 = *(v54 + 24);
                v60 = *(v59 + 16);
                if (v60)
                {
                  v61 = (v59 + 32);
                  while (*v61 != v56)
                  {
                    v61 += 5;
                    if (!--v60)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  sub_1AF640BC8(v53 + v58 * v48 + v57, v46);
                  v54 = v41;
                  v53 = v535;
                }
              }

              ++v52;
            }

            while (v52 != v50);

            v28 = v536;
            LOBYTE(v38) = v519;
          }

          if (*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v31 + 72) * v46);
          }

          if (*(v31 + 184))
          {
            v62 = 0;
          }

          else
          {
            v62 = *(v31 + 168);
          }

          *&v590[0] = 0;

          DWORD2(v620) = -1;
          v621 = v534;
          v622 = v533;
          v623 = v534;
          v624 = v533;
          *&v619 = v534;
          *(&v619 + 1) = v533;
          *&v620 = v62;
          if (v46 < 1)
          {
          }

          else
          {
            *&v519 = &v483;

            v63 = v41;

            v64 = v530;
            v65 = v525;
            v66 = v522;
            v67 = v523;
            v68 = v524;
            v69 = v535;
            do
            {

              LOBYTE(v582) = v38;
              LOBYTE(v482) = v68;
              sub_1AF626158(v67, v66 | (v38 << 32), v64, v537, &v619, v66 | (v38 << 32), v31, v63, 0, 0, 0, 0, v595, v69, v590, v482, v67, v65, v536);
            }

            while ((*(&v619 + 1) - v619) > 0);

            v28 = v536;
          }

          v70 = *(v31 + 192);
          v24 = v528;
          v27 = v531;
          if (v70)
          {
            v71 = *(v31 + 208);
            v72 = v534;
            v73 = v28;
            v74 = v533;
            sub_1AF75D364(v534, v533, v70);
            v75 = v74;
            v28 = v73;
            sub_1AF75D364(v72, v75, v71);
          }

          v29 = v517;
        }

        v27 += 48;
        os_unfair_lock_unlock(*(v31 + 344));
        os_unfair_lock_unlock(*(v31 + 376));
      }

      while (v27 != v29);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v521;
    }

    else
    {
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  else
  {
    v76 = 0;
  }

  v77 = a7[4];
  v611[0] = a7[3];
  v611[1] = v77;
  v612 = *(a7 + 10);
  sub_1AF6B06C0(v499, v611, 0x200000000, v577);
  if (*&v577[0])
  {
    if (v581 >= 1 && *(&v579 + 1))
    {
      v78 = *(&v578 + 1);
      v79 = *(&v580 + 1);
      v80 = *(&v578 + 1) + 48 * *(&v579 + 1);
      sub_1AF5B2478(0);
      v532 = v81;
      v552 = v578;
      v553 = v579;
      v554 = v580;
      v555 = v581;
      v550 = v577[0];
      v551 = v577[1];
      sub_1AF5DD298(&v550, &v619);
      v536 = v79;
      v517 = v80;
      do
      {
        v82 = *(v78 + 40);
        v83 = *(v82 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v83);
        os_unfair_lock_lock(*(v82 + 344));
        v84 = *(v82 + 24);

        v621 = 0;
        v619 = 0u;
        v620 = 0u;
        memset(v595, 0, 40);
        v85 = sub_1AF65A4B4(v84, 0, 0, v532, &off_1F2558F90, &v619, v595);

        sub_1AFA9E8FC(v595, sub_1AF5C4448);
        sub_1AFA9E8FC(&v619, sub_1AF5C4448);
        if (sub_1AF649CEC(v85))
        {
          sub_1AF649D40(v85, v79);
        }

        else
        {
          v531 = v78;
          v87 = *(v82 + 232);
          v86 = *(v82 + 240);
          v88 = *(v82 + 120);
          v522 = *(v82 + 28);
          v89 = *(v82 + 32);
          v537 = *(v82 + 16);
          v90 = *(v82 + 40);
          v91 = v90[200];
          v92 = *(v537[11] + 8 * v85 + 32);

          if ((v91 & 1) != 0 || *(v92 + 200) == 1)
          {
            *(v537 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v90 = *(v82 + 40);
          }

          v93 = v90[212];
          LODWORD(v530) = v88;
          LODWORD(v523) = v85;
          if (v93)
          {
            LODWORD(v525) = 0;
          }

          else
          {
            LODWORD(v525) = *(v92 + 212);
          }

          v79 = v536;
          LODWORD(v524) = v90[208];
          v535 = *(v82 + 128);
          v94 = *(v82 + 256);
          v95 = v86;
          v96 = v518;
          sub_1AF5B4FCC(v90, v87, v95, 0, v82);
          v518 = v96;
          v533 = *(v82 + 256);
          v534 = v94;
          v97 = v533 - v94;
          if (v533 == v94)
          {
            v98 = 0;
          }

          else
          {
            v98 = v94;
          }

          v99 = v98;
          *&v595[0] = v98;
          v100 = *(*(v82 + 40) + 24);
          v101 = *(v100 + 16);
          if (v101)
          {
            LODWORD(v519) = v89;
            v102 = v100 + 32;

            v103 = 0;
            v104 = v535;
            v105 = v92;
            do
            {
              v106 = (v102 + 40 * v103);
              if ((v106[4] & 1) == 0)
              {
                v107 = *v106;
                v109 = v106[2];
                v108 = v106[3];
                v110 = *(v105 + 24);
                v111 = *(v110 + 16);
                if (v111)
                {
                  v112 = (v110 + 32);
                  while (*v112 != v107)
                  {
                    v112 += 5;
                    if (!--v111)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                else
                {
LABEL_63:
                  sub_1AF640BC8(v104 + v109 * v99 + v108, v97);
                  v105 = v92;
                  v104 = v535;
                }
              }

              ++v103;
            }

            while (v103 != v101);

            v79 = v536;
            LOBYTE(v89) = v519;
          }

          if (*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v82 + 72) * v97);
          }

          if (*(v82 + 184))
          {
            v113 = 0;
          }

          else
          {
            v113 = *(v82 + 168);
          }

          *&v590[0] = 0;

          DWORD2(v620) = -1;
          v621 = v534;
          v622 = v533;
          v623 = v534;
          v624 = v533;
          *&v619 = v534;
          *(&v619 + 1) = v533;
          *&v620 = v113;
          if (v97 < 1)
          {
          }

          else
          {
            *&v519 = &v483;

            v114 = v92;

            v115 = v530;
            v116 = v525;
            v117 = v522;
            v118 = v523;
            v119 = v524;
            v120 = v535;
            do
            {

              LOBYTE(v582) = v89;
              LOBYTE(v482) = v119;
              sub_1AF626158(v118, v117 | (v89 << 32), v115, v537, &v619, v117 | (v89 << 32), v82, v114, 0, 0, 0, 0, v595, v120, v590, v482, v118, v116, v536);
            }

            while ((*(&v619 + 1) - v619) > 0);

            v79 = v536;
          }

          v121 = *(v82 + 192);
          v24 = v528;
          v78 = v531;
          if (v121)
          {
            v122 = *(v82 + 208);
            v123 = v534;
            v124 = v79;
            v125 = v533;
            sub_1AF75D364(v534, v533, v121);
            v126 = v125;
            v79 = v124;
            sub_1AF75D364(v123, v126, v122);
          }

          v80 = v517;
        }

        v78 += 48;
        os_unfair_lock_unlock(*(v82 + 344));
        os_unfair_lock_unlock(*(v82 + 376));
      }

      while (v78 != v80);
      sub_1AFA9BF94(v577, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v577, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v521;
    }

    else
    {
      sub_1AFA9BF94(v577, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  LODWORD(v517) = v76;
  v127 = *(a7 + 104);
  v609[0] = *(a7 + 88);
  v609[1] = v127;
  v610 = *(a7 + 15);
  sub_1AF6B06C0(v499, v609, 0x200000000, &v582);
  if (v582)
  {
    v532 = v589;
    v128 = v518;
    if (v589 >= 1)
    {
      v531 = v586;
      if (v586)
      {
        v129 = 0;
        v530 = v585;
        v525 = v587;
        v130 = *(&v587->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v536 = v588[4];
        v537 = v588;
        v599 = v582;
        v600 = v583;
        v601 = v584;
        LODWORD(v524) = v130;
        do
        {
          v518 = v128;
          v535 = v129;
          v131 = &v530[12 * v129];
          v132 = *v131;
          v133 = v131[1];
          v134 = v131[2];
          v135 = *(v131 + 2);
          v136 = *(v131 + 3);
          v138 = *(v131 + 4);
          v137 = *(v131 + 5);
          if (v130)
          {
            v139 = *(v137 + 376);

            os_unfair_lock_lock(v139);
            os_unfair_lock_lock(*(v137 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v536);
          v140 = v537;
          v141 = *(v537 + 4);
          v617[0] = *(v537 + 3);
          v617[1] = v141;
          v618 = v537[10];
          v142 = *(*(*(*(v137 + 40) + 16) + 32) + 16) + 1;
          v140[6] = ecs_stack_allocator_allocate(v537[4], 48 * v142, 8);
          v140[7] = v142;
          v140[9] = 0;
          v140[10] = 0;
          v140[8] = 0;
          LOBYTE(v550) = 1;
          *&v619 = v525;
          *(&v619 + 1) = v137;
          *&v620 = v140;
          *(&v620 + 1) = v134;
          v621 = (v133 - v132 + v134);
          v622 = v532;
          v623 = v132;
          v624 = v133;
          v625 = 0;
          v626 = 0;
          v627 = 1;
          v628 = v135;
          v629 = v136;
          v630 = v138;
          v143 = v518;
          v144 = sub_1AF706EF4(v137, &v619);
          v145 = v628;
          v534 = v143;
          if (v628)
          {
            v146 = v630;
            if (v630)
            {
              v533 = v620;
              v147 = (v144 + 8);
              do
              {
                v145 += 8;
                v148 = *(v147 - 1);
                v149 = *v147;

                sub_1AFD08440(v150, v148, v149);

                sub_1AF6FCF90(0);
                v152 = *(*(v137 + 40) + 16);
                v153 = *(v152 + 128);
                if (*(v153 + 16))
                {
                  v154 = v151;
                  v155 = sub_1AF449CB8(v151);
                  if ((v156 & 1) != 0 && *(*(v152 + 24) + 16 * *(*(v153 + 56) + 8 * v155) + 32) == v154)
                  {
                    *&v550 = v154;
                    *(&v550 + 1) = &off_1F2559388;
                    BYTE8(v552) = 1;
                    MEMORY[0x1EEE9AC00](v155);
                    v482 = v137;

                    sub_1AF63023C(0, v137, sub_1AFA9EC24);

                    sub_1AF635250(&v550);
                  }
                }

                v147 += 2;
                --v146;
              }

              while (v146);
            }
          }

          else
          {
            v157 = v623;
            v158 = v624;
            if (v623 != v624)
            {
              v159 = &v144[16 * v623 + 8];
              do
              {
                v160 = *(v159 - 1);
                v161 = *v159;

                sub_1AFD08440(v162, v160, v161);

                sub_1AF6FCF90(0);
                v164 = *(*(v137 + 40) + 16);
                v165 = *(v164 + 128);
                if (*(v165 + 16))
                {
                  v166 = v163;
                  v167 = sub_1AF449CB8(v163);
                  if ((v168 & 1) != 0 && *(*(v164 + 24) + 16 * *(*(v165 + 56) + 8 * v167) + 32) == v166)
                  {
                    *&v550 = v166;
                    *(&v550 + 1) = &off_1F2559388;
                    BYTE8(v552) = 1;
                    MEMORY[0x1EEE9AC00](v167);
                    v482 = v137;

                    sub_1AF63023C(0, v137, sub_1AFA9EC24);

                    sub_1AF635250(&v550);
                  }
                }

                ++v157;
                v159 += 2;
              }

              while (v158 != v157);
            }
          }

          v128 = v534;
          sub_1AF630994(v537, &v599, v617);
          sub_1AF62D29C(v137);
          ecs_stack_allocator_pop_snapshot(v536);
          v130 = v524;
          if (v524)
          {
            os_unfair_lock_unlock(*(v137 + 344));
            os_unfair_lock_unlock(*(v137 + 376));
          }

          v129 = v535 + 1;
        }

        while (v535 + 1 != v531);
      }
    }

    sub_1AFA9BF94(&v582, &qword_1ED725EA0, &type metadata for QueryResult);
    v24 = v528;
  }

  else
  {
    v128 = v518;
  }

  v169 = v521[9];
  v607[0] = v521[8];
  v607[1] = v169;
  v608 = *(v521 + 20);
  sub_1AF6B06C0(v499, v607, 0x200000000, v590);
  if (*&v590[0])
  {
    v170 = v594;
    if (v594 >= 1 && *(&v592 + 1))
    {
      v505 = v594;
      v171 = *(&v591 + 1);
      v536 = *(&v593 + 1);
      v172 = *(&v591 + 1) + 48 * *(&v592 + 1);
      sub_1AF5B24B4(0);
      v532 = v173;
      v552 = v591;
      v553 = v592;
      v554 = v593;
      v555 = v594;
      v550 = v590[0];
      v551 = v590[1];
      sub_1AF5DD298(&v550, v595);
      v516 = v172;
      do
      {
        v174 = *(v171 + 40);
        v175 = *(v174 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v175);
        os_unfair_lock_lock(*(v174 + 344));
        v176 = *(v174 + 24);

        memset(v595, 0, 40);
        *&v568 = 0;
        v567 = 0u;
        v566 = 0u;
        v177 = sub_1AF65A4B4(v176, 0, 0, v532, &off_1F250F310, v595, &v566);

        sub_1AFA9E8FC(&v566, sub_1AF5C4448);
        sub_1AFA9E8FC(v595, sub_1AF5C4448);
        if (sub_1AF649CEC(v177))
        {
          sub_1AF649D40(v177, v536);
        }

        else
        {
          v531 = v171;
          v518 = v128;
          v179 = *(v174 + 232);
          v178 = *(v174 + 240);
          LODWORD(v530) = *(v174 + 120);
          v523 = *(v174 + 28);
          v180 = *(v174 + 32);
          v181 = *(v174 + 16);
          v182 = *(v174 + 40);
          v183 = v182[200];

          if ((v183 & 1) != 0 || *(v184 + 200) == 1)
          {
            *(v181 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v182 = *(v174 + 40);
          }

          v185 = v182[212];
          v186 = v184;
          v537 = v181;
          LODWORD(v524) = v177;
          if (v185)
          {
            LODWORD(v525) = 0;
          }

          else
          {
            LODWORD(v525) = *(v184 + 212);
          }

          v187 = v182[208];
          v535 = *(v174 + 128);
          v188 = *(v174 + 256);
          v189 = v178;
          v190 = v518;
          sub_1AF5B4FCC(v182, v179, v189, 0, v174);
          v518 = v190;
          v533 = *(v174 + 256);
          v534 = v188;
          v191 = v533 - v188;
          if (v533 == v188)
          {
            v192 = 0;
          }

          else
          {
            v192 = v188;
          }

          v193 = v192;
          *&v566 = v192;
          v194 = *(*(v174 + 40) + 24);
          v195 = *(v194 + 16);
          if (v195)
          {
            LODWORD(v519) = v180;
            LODWORD(v522) = v187;
            v196 = v194 + 32;

            v197 = 0;
            v198 = v535;
            v199 = v191;
            v200 = v186;
            do
            {
              v201 = (v196 + 40 * v197);
              if ((v201[4] & 1) == 0)
              {
                v202 = *v201;
                v204 = v201[2];
                v203 = v201[3];
                v205 = *(v200 + 24);
                v206 = *(v205 + 16);
                if (v206)
                {
                  v207 = (v205 + 32);
                  while (*v207 != v202)
                  {
                    v207 += 5;
                    if (!--v206)
                    {
                      goto LABEL_132;
                    }
                  }
                }

                else
                {
LABEL_132:
                  sub_1AF640BC8(v198 + v204 * v193 + v203, v199);
                  v200 = v186;
                  v199 = v191;
                  v198 = v535;
                }
              }

              ++v197;
            }

            while (v197 != v195);
            v191 = v199;

            LOBYTE(v187) = v522;
            LOBYTE(v180) = v519;
          }

          if (*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v537 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v174 + 72) * v191);
          }

          if (*(v174 + 184))
          {
            v208 = 0;
          }

          else
          {
            v208 = *(v174 + 168);
          }

          *&v545 = 0;

          *&v595[1] = v208;
          DWORD2(v595[1]) = -1;
          *&v595[2] = v534;
          *(&v595[2] + 1) = v533;
          *&v596 = v534;
          *(&v596 + 1) = v533;
          *&v595[0] = v534;
          *(&v595[0] + 1) = v533;
          if (v191 < 1)
          {
          }

          else
          {
            v522 = &v483;

            v209 = v186;

            v210 = v530;
            v211 = v523;
            v212 = v524;
            v213 = v187;
            v214 = v525;
            v215 = v535;
            do
            {

              LOBYTE(v540) = v180;
              LOBYTE(v482) = v213;
              sub_1AF626158(v212, v211 | (v180 << 32), v210, v537, v595, v211 | (v180 << 32), v174, v209, 0, 0, 0, 0, &v566, v215, &v545, v482, v212, v214, v536);
            }

            while ((*(&v595[0] + 1) - *&v595[0]) > 0);
          }

          v216 = *(v174 + 192);
          v24 = v528;
          v128 = v518;
          if (v216)
          {
            v217 = *(v174 + 208);
            v219 = v533;
            v218 = v534;
            sub_1AF75D364(v534, v533, v216);
            sub_1AF75D364(v218, v219, v217);
          }

          v171 = v531;
          v172 = v516;
        }

        v171 += 48;
        os_unfair_lock_unlock(*(v174 + 344));
        os_unfair_lock_unlock(*(v174 + 376));
      }

      while (v171 != v172);
      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
      v170 = v505;
    }

    else
    {
      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v220 = v517;
    if (v170 > 0)
    {
      v220 = 1;
    }

    LODWORD(v517) = v220;
  }

  if (v511)
  {
    sub_1AFA61FF8(v538, v511, sub_1AFD2D80C);
    LODWORD(v517) = v517 | v221;
  }

  if (v512)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v223 = v538;
  v224 = sub_1AFA79148(v538, v513 & 1);

  v225 = *(v223 + 16);

  v518 = v128;
  if (v225)
  {
    v505 = sub_1AF8BB88C();
    v516 = v226;
  }

  else
  {
    v505 = 0;
    v516 = 0xE000000000000000;
  }

  v227 = v517 | v224;
  v228 = v521[14];
  v605[0] = v521[13];
  v605[1] = v228;
  v606 = *(v521 + 30);
  sub_1AF6B06C0(v499, v605, 0x200000000, v595);
  v229 = *&v595[0];
  if (!*&v595[0])
  {

    if ((v227 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  if (v598 <= 0 || (v486 = *(&v596 + 1)) == 0)
  {

    sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v227 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  v485 = *(&v595[2] + 1);
  v492 = *(&v597 + 1);
  v491 = *(*(&v597 + 1) + 32);
  v490 = *(v597 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B24B4(0);
  v231 = v230;
  v602 = v229;
  v603 = *(v595 + 8);
  v604 = *(&v595[1] + 8);
  v522 = (v499 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v568 = v595[2];
  v569 = v596;
  v570 = v597;
  v571 = v598;
  v566 = v595[0];
  v567 = v595[1];
  sub_1AF5DD298(&v566, &v550);
  v232 = 0;
  v530 = v231;
  v484 = v231 - 8;
  v517 = (v503 + 2);
  v497 = (v503 + 4);
  v488 = (v503 + 6);
  v504 += 7;
  v494 = &v546;
  v502 = (v503 + 7);
  ++v503;
  v493 = &v551;
  v495 = xmmword_1AFE21110;
  v519 = xmmword_1AFE72020;
LABEL_172:
  v489 = v232;
  v233 = (v485 + 48 * v232);
  v234 = *v233;
  v524 = v233[1];
  v235 = *(v233 + 3);
  v532 = *(v233 + 2);
  v236 = *(v233 + 4);
  v237 = *(v233 + 5);
  if (v490)
  {
    v238 = *(v237 + 376);

    os_unfair_lock_lock(v238);
    os_unfair_lock_lock(*(v237 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v491);
  v239 = v492;
  v240 = *(v492 + 4);
  v615[0] = *(v492 + 3);
  v615[1] = v240;
  v616 = v492[10];
  v241 = *(*(*(*(v237 + 40) + 16) + 32) + 16) + 1;
  v239[6] = ecs_stack_allocator_allocate(v492[4], 48 * v241, 8);
  v239[7] = v241;
  v239[9] = 0;
  v239[10] = 0;
  v239[8] = 0;
  v242 = v532;
  v536 = sub_1AF64B110(v527, &off_1F255B808, v532, v235, v236, v239);
  v537 = sub_1AF64B110(v530, &off_1F250F310, v242, v235, v236, v239);
  if (v242)
  {
    if (!v236)
    {
      goto LABEL_315;
    }

    v524 = *(v508 + 72);
    v523 = *(*v484 + 72);
    v501 = v237;
    while (1)
    {
      v246 = *v532;
      v531 = v236;
      ++v532;

      if (*(v237 + 184))
      {
        goto LABEL_324;
      }

      v248 = *(*(v237 + 168) + 4 * v246);
      v249 = *(*(v247 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v248 + 8);

      v250 = v248 == -1 && v249 == 0;
      if (v250 || (v248 & 0x80000000) != 0 || v522[1] <= v248)
      {
        break;
      }

      v251 = *v522 + 12 * v248;
      if (v249 != -1 && *(v251 + 8) != v249)
      {
        break;
      }

      v253 = *(*(*(v499 + 88) + 8 * *(v251 + 6) + 32) + 16);
      v254 = *(v253 + 128);
      if (!*(v254 + 16))
      {
        break;
      }

      v255 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v256 & 1) == 0 || *(*(v253 + 24) + 16 * *(*(v254 + 56) + 8 * v255) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_181:
      v537 = (v537 + v523);
      v536 += v524;
      v236 = v531 - 1;
      if (v531 == 1)
      {
        goto LABEL_314;
      }
    }

    dispatch_group_enter(v539);
    v257 = *(v237 + 64);
    v258 = *(v237 + 80);
    v560 = *(v237 + 112);
    v260 = *(v237 + 80);
    v259 = *(v237 + 96);
    v558 = v258;
    v559 = v259;
    v261 = *(v237 + 64);
    v556 = *(v237 + 48);
    v557 = v257;
    v262 = *(v237 + 96);
    v552 = v260;
    v553 = v262;
    LOBYTE(v554) = *(v237 + 112);
    v550 = *(v237 + 48);
    v551 = v261;
    v263 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v265 = v264;
    v563 = v552;
    v564 = v553;
    v565 = v554;
    v562 = v551;
    v561 = v550;

    sub_1AF5DD36C(&v556, &v545);
    sub_1AF5DD3C8(&v561);
    if (v265)
    {

      v534 = 0;
      v266 = 0;
      v267 = 0;
    }

    else
    {
      v268 = *(v237 + 128);

      v269 = (v268 + v263 + 24 * v246);
      v534 = *v269;
      v266 = *(v269 + 1);
      v267 = *(v269 + 2);
    }

    if (*(v237 + 184))
    {
      goto LABEL_324;
    }

    v533 = v266;
    v271 = *(*(v237 + 168) + 4 * v246);
    v272 = *(*(v270 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v271 + 8);

    v273 = swift_allocObject();
    v273[2] = sub_1AFA9EC2C;
    v273[3] = v24;
    v535 = v273;
    v274 = v538;
    v273[4] = v539;
    v275 = *(v274 + 16);

    if (v275)
    {
      v276 = *(v275 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v277 = v539;

      if ((v276 & 1) == 0 || *(v538 + 3048) != 1)
      {
        sub_1AF81F330();
        v279 = swift_allocError();
        v280 = v279;
        *v281 = v519;
        if (!*(v529 + 16))
        {
          v282 = v510;
          v283 = *(v510 + 72);
          v284 = v279;
          os_unfair_lock_lock(v283);
          v285 = *(v529 + 16);
          *(v529 + 16) = v280;
          v286 = v280;

          os_unfair_lock_unlock(*(v282 + 72));
        }

        dispatch_group_leave(v277);

        goto LABEL_207;
      }
    }

    else
    {
      swift_retain_n();
      v287 = v539;
    }

    v288 = sub_1AFAA8354(v278);
    v289 = v538;
    v290 = v537 + v530[9];
    v291 = *v290;
    LOBYTE(v290) = v290[8];
    v525 = v288;
    v292 = v290 | (v288 != v291);
    os_unfair_lock_lock(*(v538 + 72));
    v293 = *(v289 + 80);
    if (*(v293 + 16) && (v294 = sub_1AF41ACD4(v527, v271 | (v272 << 32)), (v295 & 1) != 0))
    {
      sub_1AF85B3D4(*(v293 + 56) + 96 * v294, &v550);
      if (BYTE8(v555) != 255)
      {
        sub_1AF85B3D4(&v550, &v545);
        sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v544 + 9) = *(v549 + 9);
        v542 = v547;
        v543 = v548;
        v544[0] = v549[0];
        v540 = v545;
        v541 = v546;
        if (!BYTE8(v549[1]))
        {
          v343 = v540;
          v344 = (v540 != v525) | v292;
          os_unfair_lock_unlock(*(v538 + 72));
          if (v344)
          {
            if (v343 == v525)
            {
              v277 = v539;
              dispatch_group_leave(v539);
LABEL_207:

              v24 = v528;
LABEL_179:

              v244 = v533;
              v243 = v534;
              v245 = v267;
LABEL_180:
              sub_1AF487074(v243, v244, v245);
              goto LABEL_181;
            }

LABEL_217:
            v512 = v271;
            v514 = v267;
            v296 = v530;
            v513 = swift_allocBox();
            v298 = v297;
            sub_1AFA5C03C(v297);
            v299 = v298 + *(v296 + 36);
            v300 = v525;
            *v299 = v525;
            *(v299 + 8) = 0;
            sub_1AFA9DE54(v536, v298, type metadata accessor for SimpleScript);
            sub_1AFA9DE54(v298, v537, sub_1AF5B24B4);
            v301 = v538;
            os_unfair_lock_lock(*(v538 + 72));
            *&v550 = v300;
            BYTE8(v555) = 0;
            sub_1AF825824(&v550, v527, v271 | (v272 << 32));
            os_unfair_lock_unlock(*(v301 + 72));
            v302 = *(v301 + 16);

            if (v302)
            {
              v303 = v500;
              v304 = v526;
              (*v517)(v500, v302 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v526);

              (*v502)(v303, 0, 1, v304);
              v305 = v515;
              (*v497)(v515, v303, v304);
            }

            else
            {
              v306 = v500;
              (*v502)(v500, 1, 1, v526);
              v305 = v515;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v307 = sub_1AFDFC538();
              sub_1AF477C68(v307, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v488)(v306, 1, v526) != 1)
              {
                sub_1AFA9C470(v306, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v511 = v272;
            v308 = sub_1AFDFC538();
            sub_1AF477C68(v308, qword_1ED73B608);
            v309 = sub_1AFDFC528();
            v310 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v311 = swift_slowAlloc();
              *v311 = 0;
              v312 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v309, v310, v312, "buildScript", "", v311, 2u);
              MEMORY[0x1B271DEA0](v311, -1, -1);
            }

            (*v517)(v506, v305, v526);
            sub_1AFDFC578();
            swift_allocObject();
            v313 = sub_1AFDFC568();
            sub_1AFA9E3C8(v536, v520, type metadata accessor for SimpleScript);
            v314 = (*(v508 + 80) + 400) & ~*(v508 + 80);
            v315 = (v504 + v314) & 0xFFFFFFFFFFFFFFF8;
            v316 = (v315 + 23) & 0xFFFFFFFFFFFFFFF8;
            v317 = (v316 + 27) & 0xFFFFFFFFFFFFFFF8;
            v318 = swift_allocObject();
            v319 = v527;
            *(v318 + 16) = v538;
            *(v318 + 24) = v319;
            v321 = v511;
            v320 = v512;
            *(v318 + 32) = v512;
            *(v318 + 36) = v321;
            *(v318 + 40) = v525;
            *(v318 + 48) = sub_1AFA9EC20;
            *(v318 + 56) = v535;
            *(v318 + 64) = v313;
            v525 = v313;
            memcpy((v318 + 72), v521, 0x148uLL);
            sub_1AFA9E320(v520, v318 + v314, type metadata accessor for SimpleScript);
            v322 = (v318 + v315);
            v323 = v516;
            *v322 = v505;
            v322[1] = v323;
            v324 = (v318 + v316);
            v325 = v533;
            v326 = v534;
            *v324 = v534;
            v324[1] = v325;
            v327 = v514;
            v324[2] = v514;
            v328 = (v318 + v317);
            *v328 = v320;
            v328[1] = v321;
            *(v318 + ((v317 + 15) & 0xFFFFFFFFFFFFFFF8)) = v513;
            if ((v507 & 1) == 0)
            {
              v511 = *(v538 + 32);
              v337 = swift_allocObject();
              *(v337 + 16) = sub_1AFA9EB84;
              *(v337 + 24) = v318;
              v338 = v337;
              v512 = v337;
              v339 = swift_allocObject();
              *(v339 + 16) = sub_1AFA9EB90;
              *(v339 + 24) = v338;
              *&v547 = sub_1AF6D25EC;
              *(&v547 + 1) = v339;
              *&v545 = MEMORY[0x1E69E9820];
              *(&v545 + 1) = 1107296256;
              *&v546 = sub_1AF6F662C;
              *(&v546 + 1) = &unk_1F255AB80;
              v340 = _Block_copy(&v545);
              v534 = v326;
              v341 = v340;

              sub_1AFA9C054(v521, &v550, &unk_1EB633F38, type metadata accessor for SimpleScript, &off_1F255B808, &off_1ED72CD00);

              v342 = v533;
              sub_1AF487F80(v326, v533, v327);

              dispatch_sync(v511, v341);
              _Block_release(v341);

              (*v503)(v515, v526);
              swift_isEscapingClosureAtFileLocation();

              v24 = v528;

              sub_1AF487074(v534, v342, v327);
              v237 = v501;
              goto LABEL_181;
            }

            v511 = *(v538 + 40);
            v329 = swift_allocObject();
            *(v329 + 16) = sub_1AFA9EB84;
            *(v329 + 24) = v318;
            v512 = v329;

            sub_1AFA9C054(v521, &v550, &unk_1EB633F38, type metadata accessor for SimpleScript, &off_1F255B808, &off_1ED72CD00);

            sub_1AF487F80(v326, v325, v327);
            v330 = qword_1ED730EA0;

            v331 = v327;
            v237 = v501;
            if (v330 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v332 = qword_1ED73B8A0;
            v333 = swift_allocObject();
            v334 = v512;
            *(v333 + 16) = sub_1AFA9EB90;
            *(v333 + 24) = v334;
            v335 = swift_allocObject();
            v335[2] = v332;
            v335[3] = sub_1AF6CC3F0;
            v335[4] = v333;
            *&v552 = sub_1AFA9EC30;
            *(&v552 + 1) = v335;
            *&v550 = MEMORY[0x1E69E9820];
            *(&v550 + 1) = 1107296256;
            *&v551 = sub_1AFCDA044;
            *(&v551 + 1) = &unk_1F255AC20;
            v336 = _Block_copy(&v550);
            swift_retain_n();

            [v511 addOperationWithBlock:v336];
            _Block_release(v336);

            (*v503)(v515, v526);

            v24 = v528;

            v244 = v533;
            v243 = v534;
            v245 = v331;
            goto LABEL_180;
          }

LABEL_237:
          v345 = v539;
          v346 = v537;
          sub_1AFA9DE54(v536, v537, type metadata accessor for SimpleScript);
          v347 = v346[5];
          v348 = v530;
          if (v347)
          {
            v349 = v537;
            v350 = v537[6];
            v351 = v537[1];
            v352 = v537[2];

            v353 = sub_1AF458B0C(v351, v352);
            v347(*(v349 + v348[13]), v353);

            sub_1AF0FB8EC(v347, v350);
          }

          if (*(v537 + v348[10]) == 1)
          {
            v354 = *(v537 + v348[11]);
            v355 = v354;
          }

          else
          {
            sub_1AF81F330();
            v354 = swift_allocError();
            *v356 = v495;
          }

          v24 = v528;
          if (!*(v529 + 16) && v354)
          {
            v357 = v510;
            v358 = *(v510 + 72);
            v359 = v354;
            os_unfair_lock_lock(v358);
            v360 = *(v529 + 16);
            *(v529 + 16) = v354;
            v361 = v354;

            os_unfair_lock_unlock(*(v357 + 72));
          }

          dispatch_group_leave(v345);

          goto LABEL_179;
        }

        sub_1AFA9C0C8(&v540);
LABEL_216:
        os_unfair_lock_unlock(*(v538 + 72));
        if (v292)
        {
          goto LABEL_217;
        }

        goto LABEL_237;
      }
    }

    else
    {
      *&v555 = 0;
      v553 = 0u;
      v554 = 0u;
      v551 = 0u;
      v552 = 0u;
      v550 = 0u;
      BYTE8(v555) = -1;
    }

    sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_216;
  }

  if (v234 == v524)
  {
    goto LABEL_315;
  }

  v362 = *(v508 + 72);
  v514 = *(*v484 + 72);
  v537 = (v537 + v514 * v234);
  v535 = 24 * v234;
  v536 += v362 * v234;
  v496 = v362;
  while (1)
  {

    if (*(v237 + 184))
    {
      break;
    }

    v367 = *(*(v237 + 168) + 4 * v234);
    v368 = *(*(v366 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v367 + 8);

    v369 = v367 == -1 && v368 == 0;
    if (!v369 && (v367 & 0x80000000) == 0 && v522[1] > v367)
    {
      v370 = *v522 + 12 * v367;
      if (v368 == -1 || *(v370 + 8) == v368)
      {
        v372 = *(*(*(v499 + 88) + 8 * *(v370 + 6) + 32) + 16);
        v373 = *(v372 + 128);
        if (*(v373 + 16))
        {
          v374 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v375 & 1) != 0 && *(*(v372 + 24) + 16 * *(*(v373 + 56) + 8 * v374) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_249;
          }
        }
      }
    }

    dispatch_group_enter(v539);
    v376 = *(v237 + 64);
    v377 = *(v237 + 80);
    v560 = *(v237 + 112);
    v379 = *(v237 + 80);
    v378 = *(v237 + 96);
    v558 = v377;
    v559 = v378;
    v380 = *(v237 + 64);
    v556 = *(v237 + 48);
    v557 = v376;
    v381 = *(v237 + 96);
    v552 = v379;
    v553 = v381;
    LOBYTE(v554) = *(v237 + 112);
    v550 = *(v237 + 48);
    v551 = v380;
    v382 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v384 = v383;
    v563 = v552;
    v564 = v553;
    v565 = v554;
    v562 = v551;
    v561 = v550;

    sub_1AF5DD36C(&v556, &v545);
    sub_1AF5DD3C8(&v561);
    if (v384)
    {

      v534 = 0;
      v385 = 0;
      v386 = 0;
    }

    else
    {
      v387 = *(v237 + 128);

      v388 = (v387 + v535 + v382);
      v534 = *v388;
      v385 = *(v388 + 1);
      v386 = *(v388 + 2);
    }

    v532 = v385;

    if (*(v237 + 184))
    {
      break;
    }

    v533 = v386;
    v390 = *(v237 + 168);
    v531 = v234;
    v391 = *(v390 + 4 * v234);
    v525 = *(*(v389 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v391 + 8);

    v392 = swift_allocObject();
    v392[2] = sub_1AFA9EC2C;
    v392[3] = v24;
    v393 = v538;
    v392[4] = v539;
    v394 = *(v393 + 16);

    if (v394)
    {
      v395 = *(v394 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v396 = v539;

      if ((v395 & 1) == 0 || *(v538 + 3048) != 1)
      {
        sub_1AF81F330();
        v398 = swift_allocError();
        v399 = v398;
        *v400 = v519;
        if (!*(v529 + 16))
        {
          v401 = v510;
          v402 = *(v510 + 72);
          v403 = v398;
          os_unfair_lock_lock(v402);
          v404 = *(v529 + 16);
          *(v529 + 16) = v399;
          v405 = v399;

          v362 = v496;
          os_unfair_lock_unlock(*(v401 + 72));
        }

        dispatch_group_leave(v396);

        goto LABEL_275;
      }
    }

    else
    {
      swift_retain_n();
      v406 = v539;
    }

    v407 = v391;
    v408 = sub_1AFAA8354(v397);
    v409 = v538;
    v410 = v537 + v530[9];
    v411 = *v410;
    LOBYTE(v410) = v410[8];
    v523 = v408;
    v412 = v410 | (v408 != v411);
    os_unfair_lock_lock(*(v538 + 72));
    v413 = *(v409 + 80);
    if (!*(v413 + 16) || (v414 = sub_1AF41ACD4(v527, v391 | (v525 << 32)), (v415 & 1) == 0))
    {
      *&v555 = 0;
      v553 = 0u;
      v554 = 0u;
      v551 = 0u;
      v552 = 0u;
      v550 = 0u;
      BYTE8(v555) = -1;
LABEL_283:
      sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_284:
      v416 = v538;
      os_unfair_lock_unlock(*(v538 + 72));
      if ((v412 & 1) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_285;
    }

    sub_1AF85B3D4(*(v413 + 56) + 96 * v414, &v550);
    if (BYTE8(v555) == 255)
    {
      goto LABEL_283;
    }

    sub_1AF85B3D4(&v550, &v545);
    sub_1AFA9BF94(&v550, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v544 + 9) = *(v549 + 9);
    v542 = v547;
    v543 = v548;
    v544[0] = v549[0];
    v540 = v545;
    v541 = v546;
    if (BYTE8(v549[1]))
    {
      sub_1AFA9C0C8(&v540);
      goto LABEL_284;
    }

    v460 = v540;
    v461 = (v540 != v523) | v412;
    v416 = v538;
    os_unfair_lock_unlock(*(v538 + 72));
    if ((v461 & 1) == 0)
    {
LABEL_306:
      v463 = v537;
      sub_1AFA9DE54(v536, v537, type metadata accessor for SimpleScript);
      v464 = v463[5];
      v465 = v530;
      if (v464)
      {
        v466 = v463[6];
        v467 = v463[1];
        v468 = v537[2];

        v469 = v468;
        v463 = v537;
        v470 = sub_1AF458B0C(v467, v469);
        v464(*(v463 + v465[13]), v470);

        sub_1AF0FB8EC(v464, v466);
      }

      if (*(v463 + v465[10]) == 1)
      {
        v471 = *(v463 + v465[11]);
        v472 = v471;
      }

      else
      {
        sub_1AF81F330();
        v471 = swift_allocError();
        *v473 = v495;
      }

      v24 = v528;
      if (*(v529 + 16) || !v471)
      {
        v363 = v362;
      }

      else
      {
        v363 = v362;
        v474 = v510;
        v475 = *(v510 + 72);
        v476 = v471;
        os_unfair_lock_lock(v475);
        v477 = *(v529 + 16);
        *(v529 + 16) = v471;
        v478 = v471;

        os_unfair_lock_unlock(*(v474 + 72));
      }

      v234 = v531;
      v364 = v532;
      v365 = v539;
      dispatch_group_leave(v539);

      sub_1AF487074(v534, v364, v533);
      v362 = v363;
      goto LABEL_249;
    }

    if (v460 == v523)
    {
      v462 = v539;
      dispatch_group_leave(v539);

      v24 = v528;
LABEL_275:

      goto LABEL_301;
    }

LABEL_285:
    v511 = v391;
    v417 = v530;
    v418 = swift_allocBox();
    v420 = v419;
    sub_1AFA5C03C(v419);
    v421 = v420 + *(v417 + 36);
    v422 = v523;
    *v421 = v523;
    *(v421 + 8) = 0;
    sub_1AFA9DE54(v536, v420, type metadata accessor for SimpleScript);
    sub_1AFA9DE54(v420, v537, sub_1AF5B24B4);
    os_unfair_lock_lock(*(v416 + 72));
    *&v550 = v422;
    BYTE8(v555) = 0;
    sub_1AF825824(&v550, v527, v407 | (v525 << 32));
    os_unfair_lock_unlock(*(v416 + 72));
    v423 = *(v416 + 16);

    if (v423)
    {
      v424 = v487;
      v425 = v526;
      (*v517)(v487, v423 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v526);

      (*v502)(v424, 0, 1, v425);
      (*v497)(v509, v424, v425);
    }

    else
    {
      v426 = v487;
      (*v502)(v487, 1, 1, v526);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v427 = sub_1AFDFC538();
      sub_1AF477C68(v427, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v488)(v426, 1, v526) != 1)
      {
        sub_1AFA9C470(v426, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v512 = v418;
    v513 = v392;
    v428 = sub_1AFDFC538();
    sub_1AF477C68(v428, qword_1ED73B608);
    v429 = sub_1AFDFC528();
    v430 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v431 = swift_slowAlloc();
      *v431 = 0;
      v432 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v429, v430, v432, "buildScript", "", v431, 2u);
      MEMORY[0x1B271DEA0](v431, -1, -1);
    }

    (*v517)(v506, v509, v526);
    sub_1AFDFC578();
    swift_allocObject();
    v433 = sub_1AFDFC568();
    sub_1AFA9E3C8(v536, v520, type metadata accessor for SimpleScript);
    v434 = (*(v508 + 80) + 400) & ~*(v508 + 80);
    v435 = (v504 + v434) & 0xFFFFFFFFFFFFFFF8;
    v436 = (v435 + 23) & 0xFFFFFFFFFFFFFFF8;
    v437 = (v436 + 27) & 0xFFFFFFFFFFFFFFF8;
    v498 = (v437 + 15) & 0xFFFFFFFFFFFFFFF8;
    v438 = swift_allocObject();
    v439 = v527;
    *(v438 + 16) = v538;
    *(v438 + 24) = v439;
    v440 = v511;
    v441 = v525;
    *(v438 + 32) = v511;
    *(v438 + 36) = v441;
    *(v438 + 40) = v523;
    *(v438 + 48) = sub_1AFA9EC20;
    *(v438 + 56) = v513;
    *(v438 + 64) = v433;
    v523 = v433;
    memcpy((v438 + 72), v521, 0x148uLL);
    sub_1AFA9E320(v520, v438 + v434, type metadata accessor for SimpleScript);
    v442 = (v438 + v435);
    v443 = v516;
    *v442 = v505;
    v442[1] = v443;
    v444 = (v438 + v436);
    v445 = v533;
    v446 = v534;
    v447 = v532;
    *v444 = v534;
    v444[1] = v447;
    v444[2] = v445;
    v448 = (v438 + v437);
    *v448 = v440;
    v448[1] = v441;
    *(v438 + v498) = v512;
    if ((v507 & 1) == 0)
    {
      v525 = *(v538 + 32);
      v455 = v445;
      v456 = swift_allocObject();
      *(v456 + 16) = sub_1AFA9D6F4;
      *(v456 + 24) = v438;
      v457 = swift_allocObject();
      *(v457 + 16) = sub_1AFA9EB90;
      *(v457 + 24) = v456;
      *&v547 = sub_1AF6D25EC;
      *(&v547 + 1) = v457;
      *&v545 = MEMORY[0x1E69E9820];
      *(&v545 + 1) = 1107296256;
      *&v546 = sub_1AF6F662C;
      *(&v546 + 1) = &unk_1F255AA18;
      v458 = _Block_copy(&v545);
      v534 = v446;
      v459 = v458;
      v511 = *(&v547 + 1);

      sub_1AFA9C054(v521, &v550, &unk_1EB633F38, type metadata accessor for SimpleScript, &off_1F255B808, &off_1ED72CD00);

      sub_1AF487F80(v446, v447, v455);

      dispatch_sync(v525, v459);
      _Block_release(v459);

      (*v503)(v509, v526);
      swift_isEscapingClosureAtFileLocation();

      v24 = v528;

      sub_1AF487074(v534, v447, v455);
      v234 = v531;
      v362 = v496;
      goto LABEL_249;
    }

    v525 = *(v538 + 40);
    v449 = swift_allocObject();
    *(v449 + 16) = sub_1AFA9D6F4;
    *(v449 + 24) = v438;

    sub_1AFA9C054(v521, &v550, &unk_1EB633F38, type metadata accessor for SimpleScript, &off_1F255B808, &off_1ED72CD00);

    sub_1AF487F80(v446, v447, v445);
    v450 = qword_1ED730EA0;

    v362 = v496;
    if (v450 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v451 = qword_1ED73B8A0;
    v452 = swift_allocObject();
    *(v452 + 16) = sub_1AFA9EB90;
    *(v452 + 24) = v449;
    v453 = swift_allocObject();
    v453[2] = v451;
    v453[3] = sub_1AF6CC3F0;
    v453[4] = v452;
    *&v552 = sub_1AFA9EC30;
    *(&v552 + 1) = v453;
    *&v550 = MEMORY[0x1E69E9820];
    *(&v550 + 1) = 1107296256;
    *&v551 = sub_1AFCDA044;
    *(&v551 + 1) = &unk_1F255AAB8;
    v454 = _Block_copy(&v550);
    swift_retain_n();

    [v525 addOperationWithBlock:v454];
    _Block_release(v454);

    (*v503)(v509, v526);

    v24 = v528;

LABEL_301:

    sub_1AF487074(v534, v532, v533);
    v234 = v531;
LABEL_249:
    ++v234;
    v537 = (v537 + v514);
    v535 += 24;
    v536 += v362;
    if (v524 == v234)
    {
LABEL_314:
      v227 = 1;
LABEL_315:
      v479 = v518;
      sub_1AF630994(v492, &v602, v615);
      v518 = v479;
      sub_1AF62D29C(v237);
      ecs_stack_allocator_pop_snapshot(v491);
      if (v490)
      {
        os_unfair_lock_unlock(*(v237 + 344));
        os_unfair_lock_unlock(*(v237 + 376));
      }

      v232 = v489 + 1;
      if (v489 + 1 != v486)
      {
        goto LABEL_172;
      }

      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v227 & 1) == 0)
      {
LABEL_319:
        dispatch_group_leave(v539);
      }

LABEL_318:

      sub_1AFA62400(v480);

      goto LABEL_319;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA7D064(char *a1, uint64_t a2, int a3, uint64_t a4, void *a5, unint64_t a6, uint64_t *a7, uint64_t a8)
{
  v169 = a7;
  v198 = a6;
  v171 = a5;
  LODWORD(v168) = a3;
  sub_1AF5B243C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v167 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MetalFunctionScript(0);
  MEMORY[0x1EEE9AC00](v16);
  v164 = (&v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AF5B2400(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v157 = &v154 - v22;
  sub_1AF85B3D4(a2, v175);
  if (!v180)
  {
    goto LABEL_123;
  }

  if (v180 == 1)
  {
    v162 = a1;
    v163 = a8;
    v166 = a4;
    v154 = a2;
    v170 = v8;
    sub_1AFA9E8FC(a1, sub_1AF5B243C);
    v155 = v176;
    v160 = v178;
    v161 = v177;
    sub_1AF449D40(v175, v174);
    sub_1AF449D40(&v179, v173);
    v23 = v157;
    v157[16] = 2;
    v24 = v16[6];
    v25 = type metadata accessor for ScriptIndex(0);
    (*(*(v25 - 8) + 56))(&v23[v24], 1, 1, v25);
    v26 = &v23[v16[7]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v23[v16[9]] = 0;
    *&v23[v16[8]] = &unk_1F25030E0;
    *v23 = 0xD000000000000129;
    *(v23 + 1) = 0x80000001AFF455A0;
    v27 = &v23[v14[9]];
    *v27 = 0;
    v27[8] = 1;
    v23[v14[10]] = 0;
    *&v23[v14[11]] = 0;
    v28 = &v23[v14[12]];
    *v28 = 0;
    *(v28 + 1) = 0xE000000000000000;
    *&v23[v14[13]] = MEMORY[0x1E69E7CC0];
    v29 = v19[9];
    v30 = v19[10];
    v31 = v19[11];
    *&v23[v19[12]] = 0;
    v23[v19[13]] = 0;
    v32 = &v23[v19[14]];
    *v32 = 0;
    v32[8] = 1;
    v33 = v19[15];
    v23[v33] = 1;
    sub_1AF0D5A54(v174, &v181);
    sub_1AFA9E8FC(v23, sub_1AF5B243C);
    swift_dynamicCast();
    *&v23[v29] = v155;
    v34 = v161;
    *&v23[v31] = v160;
    *&v23[v30] = v34;
    sub_1AF0D5A54(v173, &v181);

    swift_dynamicCast();
    v23[v33] = 0;
    sub_1AFA9E3C8(v23, v162, sub_1AF5B243C);
    if (v168)
    {
      v35 = v166;
      v36 = *(v166 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v36)
      {
        v37 = *(v36 + 80);
        swift_unknownObjectWeakLoadStrong();
        v36 = *(v36 + 56);
      }

      else
      {
        v37 = 0;
      }

      v41 = v170;
      LODWORD(v170) = v37;
      *(&v182 + 1) = 0;
      swift_unknownObjectUnownedInit();
      v181 = v35;
      *(&v182 + 1) = v36;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      LOBYTE(v183) = v37;
      v168 = sub_1AF5B2400;
      v42 = v157;
      v43 = v165;
      sub_1AFA9E3C8(v157, v165, sub_1AF5B2400);
      v44 = v164;
      sub_1AFA9E3C8(v43, v164, type metadata accessor for MetalFunctionScript);
      sub_1AFA9E8FC(v43, sub_1AF5B2400);
      v39 = v198;
      sub_1AF5ADD18(v44, v198);
      sub_1AFA9E8FC(v44, type metadata accessor for MetalFunctionScript);
      v45 = v167;
      sub_1AFA9E3C8(v42, v167, sub_1AF5B243C);
      sub_1AF5ADEA8(v45, v39);
      sub_1AFA9E8FC(v45, sub_1AF5B243C);
      sub_1AFA9E3C8(v42, v43, v168);
      sub_1AF5AE038(v43, v39);
      v46 = v43;
      v23 = v42;
      v40 = v166;
      sub_1AFA9E8FC(v46, sub_1AF5B2400);
      sub_1AF579490(&v181);
      if (v170)
      {
        v47 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v47 ^ 1);
      }
    }

    else
    {
      v39 = v198;
      v40 = v166;
      sub_1AFBFE0CC(v23, v198);
      v41 = v170;
    }

    *&v183 = v19;
    *(&v183 + 1) = &off_1F2558F90;
    v48 = sub_1AF585714(&v181);
    sub_1AFA9E3C8(v23, v48, sub_1AF5B2400);
    LOBYTE(v184) = 0;
    sub_1AF8259D0(&v181, v171, v39);
    v49 = sub_1AF3CB4D0(v39);
    a2 = v154;
    if (v49)
    {
      sub_1AFD08440(v40, v49, v50);
    }

    sub_1AF0D5A54(v173, &v181);
    if (swift_dynamicCast())
    {

      v181 = MEMORY[0x1E69E7CC0];
      *&v182 = MEMORY[0x1E69E7CC0];
      sub_1AFD5541C();

      v51 = v198;
      sub_1AFBFE0E4(v181, v182, v198);

      v53 = v51;
      v23 = v157;
      v40 = v166;
    }

    else
    {
      sub_1AF0D5A54(v173, &v181);
      if (swift_dynamicCast())
      {
      }

      v53 = v198;
    }

    sub_1AF678B44(v53, v52);
    v54 = *(v163 + 304);
    v194[0] = *(v163 + 288);
    v194[1] = v54;
    v195 = *(v163 + 320);
    sub_1AF6B06C0(v40, v194, 0x200000000, &v181);
    v164 = v181;
    if (!v181)
    {
      goto LABEL_122;
    }

    v163 = v184;
    v189 = v182;
    v190 = v183;
    if (v188 <= 0 || !v185)
    {
LABEL_121:
      sub_1AFA9BF94(&v181, &qword_1ED725EA0, &type metadata for QueryResult);
      a2 = v154;
      v23 = v157;
LABEL_122:

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v173);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      sub_1AFA9E8FC(v23, sub_1AF5B2400);
      goto LABEL_123;
    }

    v55 = 0;
    v161 = HIDWORD(v198);
    v56 = v187[4];
    LODWORD(v168) = *(v186 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v171 = (v40 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v165 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v162 = v185;
    v169 = v187;
    v160 = v56;
    while (1)
    {
      v170 = v41;
      v57 = (v163 + 48 * v55);
      v58 = *v57;
      v59 = v57[1];
      v61 = *(v57 + 2);
      v60 = *(v57 + 3);
      v63 = *(v57 + 4);
      v62 = *(v57 + 5);
      v167 = v55;
      if (v168)
      {
        v64 = *(v62 + 376);

        os_unfair_lock_lock(v64);
        os_unfair_lock_lock(*(v62 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v56);
      v65 = v169;
      v66 = *(v169 + 4);
      v196[0] = *(v169 + 3);
      v196[1] = v66;
      v197 = v169[10];
      v67 = *(*(*(*(v62 + 40) + 16) + 32) + 16) + 1;
      v65[6] = ecs_stack_allocator_allocate(v169[4], 48 * v67, 8);
      v65[7] = v67;
      v65[9] = 0;
      v65[10] = 0;
      v65[8] = 0;
      v68 = sub_1AF64B110(&type metadata for TextureShaderAsset, &off_1F2543F30, v61, v60, v63, v65);
      if (v61)
      {
        v69 = v198;
        v70 = v161;
        if (v63)
        {
          v71 = 0;
          while (1)
          {
            v72 = &v68[112 * v71];
            v74 = *v72;
            v73 = *(v72 + 1);
            if (v74 == v69 && v73 == v70)
            {
              v76 = v61[v71];

              if (*(v62 + 184))
              {
                goto LABEL_126;
              }

              v78 = *(*(v62 + 168) + 4 * v76);
              v79 = *(*(v77 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v78 + 8);

              if (v78 != -1 || v79 != 0)
              {
                v69 = v198;
                if ((v78 & 0x80000000) != 0 || v171[1] <= v78)
                {
                  goto LABEL_31;
                }

                v82 = (*v171 + 12 * v78);
                if (v79 != -1 && v82[2] != v79)
                {
                  goto LABEL_31;
                }

                v84 = *(*(v166 + 144) + 8 * *v82 + 32);
                v85 = thread_worker_index(v80);
                if (*v85 == -1)
                {
                  v88 = *(v86 + v165);
                }

                else
                {
                  v88 = (*(v86 + v165) + 8 * *v85 + 8);
                }

                v89 = *v88;
                v90 = *(v84 + 192);
                if (v90)
                {
                  v91 = *(v84 + 208);
                  *(v90 + 8 * (v87 >> 6)) |= 1 << v87;
                  *(v91 + 8 * (v87 >> 6)) &= ~(1 << v87);
                }

                if (*(*(v84 + 40) + 213) != 1)
                {
                  goto LABEL_31;
                }

                v92 = *(v84 + 48);
                v93 = (v92 + 32);
                v94 = *(v92 + 16) + 1;
                v156 = v89;
                v159 = v87;
                while (--v94)
                {
                  v95 = v93 + 5;
                  v96 = *v93;
                  v93 += 5;
                  if (v96 == &type metadata for PropagateDirtiness)
                  {
                    v158 = *(v95 - 2);
                    goto LABEL_60;
                  }
                }

                v158 = 0;
LABEL_60:
                v97 = *(v84 + 128);
                v98 = *(v84 + 184);

                if (v98)
                {
                  goto LABEL_126;
                }

                v100 = *(*(v84 + 168) + 4 * v159);
                v101 = (v97 + v158 + 8 * v159);
                v159 = *(*(v99 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v100 + 8);

                v102 = *v101;
                v103 = v101[1];
                if (v102 != -1 || v103 != 0)
                {
                  sub_1AF70D248(v172, v100 | (v159 << 32), v102 | (v103 << 32));
                }
              }

              v69 = v198;
            }

LABEL_31:
            if (++v71 == v63)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_67;
      }

      v105 = v198;
      v106 = v161;
      if (v58 != v59)
      {
        break;
      }

LABEL_67:
      v191 = v164;
      v192 = v189;
      v193 = v190;
      v108 = v169;
      v107 = v170;
      sub_1AF630994(v169, &v191, v196);
      v41 = v107;
      if (*(v108[13] + 16))
      {

        sub_1AF62F348(v109, v62);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v108[13];
        if (isUniquelyReferenced_nonNull_native)
        {
          v112 = v111[2];
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v108[13] = v111;
          if ((v113 & 1) == 0)
          {
            v111 = sub_1AF420EA0(0, v112, 1, v111);
            v108[13] = v111;
          }

          sub_1AF43A540(0);
          swift_arrayDestroy();
          if (v112)
          {
            v114 = v111[2] - v112;
            memmove(v111 + 4, &v111[9 * v112 + 4], 72 * v114);
            v111[2] = v114;
          }

          v108[13] = v111;
        }

        else
        {
          v148 = MEMORY[0x1E69E7CC0];
          if (v111[3] >= 2uLL)
          {
            sub_1AF0D0FCC(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
            v148 = swift_allocObject();
            v149 = j__malloc_size_0(v148);
            v148[2] = 0;
            v148[3] = 2 * ((v149 - 32) / 72);
          }

          v108[13] = v148;
        }

        if (*(v108[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
        {
          v150 = *(v62 + 232);
          v151 = *(v62 + 256);
          if (v150 == v151)
          {
            v152 = *(v62 + 240);
          }

          else
          {
            sub_1AF6497A0(v151, v150);
            v151 = *(v62 + 232);
            v152 = *(v62 + 240);
            if (v152 == v151)
            {
              v152 = 0;
              v151 = 0;
              *(v62 + 232) = 0;
              *(v62 + 240) = 0;
            }
          }

          *(v62 + 248) = v152;
          *(v62 + 256) = v151;
        }
      }

      v56 = v160;
      ecs_stack_allocator_pop_snapshot(v160);
      if (v168)
      {
        os_unfair_lock_unlock(*(v62 + 344));
        os_unfair_lock_unlock(*(v62 + 376));
      }

      v55 = v167 + 1;
      if ((v167 + 1) == v162)
      {
        goto LABEL_121;
      }
    }

    while (1)
    {
      v115 = &v68[112 * v58];
      v117 = *v115;
      v116 = *(v115 + 1);
      if (v117 == v105 && v116 == v106)
      {

        if (*(v62 + 184))
        {
          goto LABEL_126;
        }

        v120 = *(*(v62 + 168) + 4 * v58);
        v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

        if (v120 != -1 || v121 != 0)
        {
          v105 = v198;
          if ((v120 & 0x80000000) != 0 || v171[1] <= v120)
          {
            goto LABEL_75;
          }

          v124 = (*v171 + 12 * v120);
          if (v121 != -1 && v124[2] != v121)
          {
            goto LABEL_75;
          }

          v126 = *(v124 + 2);
          v127 = *(*(v166 + 144) + 8 * *v124 + 32);
          v128 = thread_worker_index(v122);
          if (*v128 == -1)
          {
            v130 = *(v129 + v165);
          }

          else
          {
            v130 = (*(v129 + v165) + 8 * *v128 + 8);
          }

          v131 = *v130;
          v132 = *(v127 + 192);
          if (v132)
          {
            v133 = *(v127 + 208);
            *(v132 + 8 * (v126 >> 6)) |= 1 << v126;
            *(v133 + 8 * (v126 >> 6)) &= ~(1 << v126);
          }

          if (*(*(v127 + 40) + 213) != 1)
          {
            goto LABEL_75;
          }

          v134 = *(v127 + 48);
          v135 = (v134 + 32);
          v136 = *(v134 + 16) + 1;
          v158 = v131;
          while (--v136)
          {
            v137 = v135 + 5;
            v138 = *v135;
            v135 += 5;
            if (v138 == &type metadata for PropagateDirtiness)
            {
              v159 = *(v137 - 2);
              goto LABEL_104;
            }
          }

          v159 = 0;
LABEL_104:
          v139 = *(v127 + 128);
          v140 = *(v127 + 184);

          if (v140)
          {
LABEL_126:
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v142 = *(*(v127 + 168) + 4 * v126);
          v143 = (v139 + v159 + 8 * v126);
          v144 = *(*(v141 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v142 + 8);

          v145 = *v143;
          v146 = v143[1];
          if (v145 != -1 || v146 != 0)
          {
            sub_1AF70D248(v172, v142 | (v144 << 32), v145 | (v146 << 32));
          }
        }

        v105 = v198;
      }

LABEL_75:
      if (++v58 == v59)
      {
        goto LABEL_67;
      }
    }
  }

  sub_1AFA9E8FC(a1, sub_1AF5B243C);

  sub_1AF449D40(v175, v196);
  sub_1AF0D5A54(v196, &v181);
  swift_dynamicCast();
  *&v183 = v14;
  *(&v183 + 1) = &off_1F250F310;
  v38 = sub_1AF585714(&v181);
  sub_1AFA9E3C8(a1, v38, sub_1AF5B243C);
  LOBYTE(v184) = 1;
  sub_1AF8259D0(&v181, v171, v198);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v196);
LABEL_123:
  result = sub_1AF85B3D4(a2, v175);
  if (v180)
  {
    return sub_1AFA9C0C8(v175);
  }

  return result;
}

uint64_t sub_1AFA7E0B4(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v42 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v43 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v44);
        if (v45 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for MetalFunctionScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v42[1] <= v16 || (v15 != -1 ? (v18 = *(*v42 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v42 + 12 * v16), sub_1AF5B243C(0), v20 = *(*(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v44);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v43 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA7D064((*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2)), &v44, a2 & 1, v43, v14, v16 | (v15 << 32), a1, v41);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF456D0);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v44);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for MetalFunctionScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA7E50C(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v516) = a6;
  v514 = a2;
  v515 = a5;
  v510 = a4;
  v521 = 0;
  v533 = type metadata accessor for MetalFunctionScript(0);
  v511 = *(v533 - 8);
  MEMORY[0x1EEE9AC00](v533);
  v507 = v13;
  v523 = &v486 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v490 = &v486 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v503 = &v486 - v17;
  v18 = sub_1AFDFC4F8();
  v506 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v512 = &v486 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v509 = &v486 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v518 = &v486 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v531 = a8;

  v513 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v616[0] = *(a7 + 168);
  v616[1] = v26;
  v617 = *(a7 + 25);
  v27 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v502 = v25;
  sub_1AF6B06C0(v25, v616, 0x200000000, v575);
  v541 = a1;
  v542 = a3;
  v529 = v18;
  v530 = v24;
  v524 = a7;
  v517 = v27;
  if (*&v575[0])
  {
    if (v579 >= 1)
    {
      if (*(&v577 + 1))
      {
        v28 = *(&v576 + 1);
        v29 = *(&v578 + 1);
        v30 = *(&v576 + 1) + 48 * *(&v577 + 1);
        sub_1AF5B243C(0);
        v535 = v31;
        v555 = v576;
        v556 = v577;
        v557 = v578;
        v558 = v579;
        v553 = v575[0];
        v554 = v575[1];
        sub_1AF5DD298(&v553, &v622);
        v539 = v29;
        v520 = v30;
        do
        {
          v32 = *(v28 + 40);
          v33 = *(v32 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v33);
          os_unfair_lock_lock(*(v32 + 344));
          v34 = *(v32 + 24);

          v624 = 0;
          v622 = 0u;
          v623 = 0u;
          memset(v598, 0, 40);
          v35 = sub_1AF65A4B4(v34, v535, &off_1F250F310, 0, 0, &v622, v598);

          sub_1AFA9E8FC(v598, sub_1AF5C4448);
          sub_1AFA9E8FC(&v622, sub_1AF5C4448);
          if (sub_1AF649CEC(v35))
          {
            sub_1AF649D40(v35, v29);
          }

          else
          {
            v534 = v28;
            v37 = *(v32 + 232);
            v36 = *(v32 + 240);
            v38 = *(v32 + 120);
            v525 = *(v32 + 28);
            v39 = *(v32 + 32);
            v540 = *(v32 + 16);
            v40 = *(v32 + 40);
            v41 = v40[200];
            v42 = *(v540[11] + 8 * v35 + 32);

            if ((v41 & 1) != 0 || *(v42 + 200) == 1)
            {
              *(v540 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v40 = *(v32 + 40);
            }

            v43 = v40[212];
            LODWORD(v532) = v38;
            LODWORD(v526) = v35;
            if (v43)
            {
              LODWORD(v528) = 0;
            }

            else
            {
              LODWORD(v528) = *(v42 + 212);
            }

            v29 = v539;
            LODWORD(v527) = v40[208];
            v538 = *(v32 + 128);
            v44 = *(v32 + 256);
            v45 = v36;
            v46 = v521;
            sub_1AF5B4FCC(v40, v37, v45, 0, v32);
            v521 = v46;
            v536 = *(v32 + 256);
            v537 = v44;
            v47 = v536 - v44;
            if (v536 == v44)
            {
              v48 = 0;
            }

            else
            {
              v48 = v44;
            }

            v49 = v48;
            *&v598[0] = v48;
            v50 = *(*(v32 + 40) + 24);
            v51 = *(v50 + 16);
            if (v51)
            {
              LODWORD(v522) = v39;
              v52 = v50 + 32;

              v53 = 0;
              v54 = v538;
              v55 = v42;
              do
              {
                v56 = (v52 + 40 * v53);
                if ((v56[4] & 1) == 0)
                {
                  v57 = *v56;
                  v59 = v56[2];
                  v58 = v56[3];
                  v60 = *(v55 + 24);
                  v61 = *(v60 + 16);
                  if (v61)
                  {
                    v62 = (v60 + 32);
                    while (*v62 != v57)
                    {
                      v62 += 5;
                      if (!--v61)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8(v54 + v59 * v49 + v58, v47);
                    v55 = v42;
                    v54 = v538;
                  }
                }

                ++v53;
              }

              while (v53 != v51);

              v29 = v539;
              LOBYTE(v39) = v522;
            }

            if (*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v32 + 72) * v47);
            }

            if (*(v32 + 184))
            {
              v63 = 0;
            }

            else
            {
              v63 = *(v32 + 168);
            }

            *&v593[0] = 0;

            DWORD2(v623) = -1;
            v624 = v537;
            v625 = v536;
            v626 = v537;
            v627 = v536;
            *&v622 = v537;
            *(&v622 + 1) = v536;
            *&v623 = v63;
            if (v47 < 1)
            {
            }

            else
            {
              *&v522 = &v486;

              v64 = v42;

              v65 = v532;
              v66 = v528;
              v67 = v525;
              v68 = v526;
              v69 = v527;
              v70 = v538;
              do
              {

                LOBYTE(v585) = v39;
                LOBYTE(v485) = v69;
                sub_1AF626158(v68, v67 | (v39 << 32), v65, v540, &v622, v67 | (v39 << 32), v32, v64, 0, 0, 0, 0, v598, v70, v593, v485, v68, v66, v539);
              }

              while ((*(&v622 + 1) - v622) > 0);

              v29 = v539;
            }

            v71 = *(v32 + 192);
            v24 = v530;
            v28 = v534;
            if (v71)
            {
              v72 = *(v32 + 208);
              v73 = v537;
              v74 = v29;
              v75 = v536;
              sub_1AF75D364(v537, v536, v71);
              v76 = v75;
              v29 = v74;
              sub_1AF75D364(v73, v76, v72);
            }

            v30 = v520;
          }

          v28 += 48;
          os_unfair_lock_unlock(*(v32 + 344));
          os_unfair_lock_unlock(*(v32 + 376));
        }

        while (v28 != v30);
        sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
        v77 = 1;
        a7 = v524;
      }

      else
      {
        sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
        v77 = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v77 = 0;
LABEL_44:
  v78 = a7[4];
  v614[0] = a7[3];
  v614[1] = v78;
  v615 = *(a7 + 10);
  sub_1AF6B06C0(v502, v614, 0x200000000, v580);
  if (*&v580[0])
  {
    if (v584 >= 1 && *(&v582 + 1))
    {
      v79 = *(&v581 + 1);
      v80 = *(&v583 + 1);
      v81 = *(&v581 + 1) + 48 * *(&v582 + 1);
      sub_1AF5B2400(0);
      v535 = v82;
      v555 = v581;
      v556 = v582;
      v557 = v583;
      v558 = v584;
      v553 = v580[0];
      v554 = v580[1];
      sub_1AF5DD298(&v553, &v622);
      v539 = v80;
      v520 = v81;
      do
      {
        v83 = *(v79 + 40);
        v84 = *(v83 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v84);
        os_unfair_lock_lock(*(v83 + 344));
        v85 = *(v83 + 24);

        v624 = 0;
        v622 = 0u;
        v623 = 0u;
        memset(v598, 0, 40);
        v86 = sub_1AF65A4B4(v85, 0, 0, v535, &off_1F2558F90, &v622, v598);

        sub_1AFA9E8FC(v598, sub_1AF5C4448);
        sub_1AFA9E8FC(&v622, sub_1AF5C4448);
        if (sub_1AF649CEC(v86))
        {
          sub_1AF649D40(v86, v80);
        }

        else
        {
          v534 = v79;
          v88 = *(v83 + 232);
          v87 = *(v83 + 240);
          v89 = *(v83 + 120);
          v525 = *(v83 + 28);
          v90 = *(v83 + 32);
          v540 = *(v83 + 16);
          v91 = *(v83 + 40);
          v92 = v91[200];
          v93 = *(v540[11] + 8 * v86 + 32);

          if ((v92 & 1) != 0 || *(v93 + 200) == 1)
          {
            *(v540 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v91 = *(v83 + 40);
          }

          v94 = v91[212];
          LODWORD(v532) = v89;
          LODWORD(v526) = v86;
          if (v94)
          {
            LODWORD(v528) = 0;
          }

          else
          {
            LODWORD(v528) = *(v93 + 212);
          }

          v80 = v539;
          LODWORD(v527) = v91[208];
          v538 = *(v83 + 128);
          v95 = *(v83 + 256);
          v96 = v87;
          v97 = v521;
          sub_1AF5B4FCC(v91, v88, v96, 0, v83);
          v521 = v97;
          v536 = *(v83 + 256);
          v537 = v95;
          v98 = v536 - v95;
          if (v536 == v95)
          {
            v99 = 0;
          }

          else
          {
            v99 = v95;
          }

          v100 = v99;
          *&v598[0] = v99;
          v101 = *(*(v83 + 40) + 24);
          v102 = *(v101 + 16);
          if (v102)
          {
            LODWORD(v522) = v90;
            v103 = v101 + 32;

            v104 = 0;
            v105 = v538;
            v106 = v93;
            do
            {
              v107 = (v103 + 40 * v104);
              if ((v107[4] & 1) == 0)
              {
                v108 = *v107;
                v110 = v107[2];
                v109 = v107[3];
                v111 = *(v106 + 24);
                v112 = *(v111 + 16);
                if (v112)
                {
                  v113 = (v111 + 32);
                  while (*v113 != v108)
                  {
                    v113 += 5;
                    if (!--v112)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8(v105 + v110 * v100 + v109, v98);
                  v106 = v93;
                  v105 = v538;
                }
              }

              ++v104;
            }

            while (v104 != v102);

            v80 = v539;
            LOBYTE(v90) = v522;
          }

          if (*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v83 + 72) * v98);
          }

          if (*(v83 + 184))
          {
            v114 = 0;
          }

          else
          {
            v114 = *(v83 + 168);
          }

          *&v593[0] = 0;

          DWORD2(v623) = -1;
          v624 = v537;
          v625 = v536;
          v626 = v537;
          v627 = v536;
          *&v622 = v537;
          *(&v622 + 1) = v536;
          *&v623 = v114;
          if (v98 < 1)
          {
          }

          else
          {
            *&v522 = &v486;

            v115 = v93;

            v116 = v532;
            v117 = v528;
            v118 = v525;
            v119 = v526;
            v120 = v527;
            v121 = v538;
            do
            {

              LOBYTE(v585) = v90;
              LOBYTE(v485) = v120;
              sub_1AF626158(v119, v118 | (v90 << 32), v116, v540, &v622, v118 | (v90 << 32), v83, v115, 0, 0, 0, 0, v598, v121, v593, v485, v119, v117, v539);
            }

            while ((*(&v622 + 1) - v622) > 0);

            v80 = v539;
          }

          v122 = *(v83 + 192);
          v24 = v530;
          v79 = v534;
          if (v122)
          {
            v123 = *(v83 + 208);
            v124 = v537;
            v125 = v80;
            v126 = v536;
            sub_1AF75D364(v537, v536, v122);
            v127 = v126;
            v80 = v125;
            sub_1AF75D364(v124, v127, v123);
          }

          v81 = v520;
        }

        v79 += 48;
        os_unfair_lock_unlock(*(v83 + 344));
        os_unfair_lock_unlock(*(v83 + 376));
      }

      while (v79 != v81);
      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
      v77 = 1;
      a7 = v524;
    }

    else
    {
      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
      v77 = 1;
    }
  }

  v128 = *(a7 + 104);
  v612[0] = *(a7 + 88);
  v612[1] = v128;
  v613 = *(a7 + 15);
  sub_1AF6B06C0(v502, v612, 0x200000000, &v585);
  LODWORD(v520) = v77;
  if (v585)
  {
    v535 = v592;
    v129 = v521;
    if (v592 >= 1)
    {
      v534 = v589;
      if (v589)
      {
        v130 = 0;
        v532 = v588;
        v528 = v590;
        v131 = *(&v590->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v539 = v591[4];
        v540 = v591;
        v602 = v585;
        v603 = v586;
        v604 = v587;
        LODWORD(v527) = v131;
        do
        {
          v521 = v129;
          v538 = v130;
          v132 = &v532[12 * v130];
          v133 = *v132;
          v134 = v132[1];
          v135 = v132[2];
          v136 = *(v132 + 2);
          v137 = *(v132 + 3);
          v139 = *(v132 + 4);
          v138 = *(v132 + 5);
          if (v131)
          {
            v140 = *(v138 + 376);

            os_unfair_lock_lock(v140);
            os_unfair_lock_lock(*(v138 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v539);
          v141 = v540;
          v142 = *(v540 + 4);
          v620[0] = *(v540 + 3);
          v620[1] = v142;
          v621 = v540[10];
          v143 = *(*(*(*(v138 + 40) + 16) + 32) + 16) + 1;
          v141[6] = ecs_stack_allocator_allocate(v540[4], 48 * v143, 8);
          v141[7] = v143;
          v141[9] = 0;
          v141[10] = 0;
          v141[8] = 0;
          LOBYTE(v553) = 1;
          *&v622 = v528;
          *(&v622 + 1) = v138;
          *&v623 = v141;
          *(&v623 + 1) = v135;
          v624 = (v134 - v133 + v135);
          v625 = v535;
          v626 = v133;
          v627 = v134;
          v628 = 0;
          v629 = 0;
          v630 = 1;
          v631 = v136;
          v632 = v137;
          v633 = v139;
          v144 = v521;
          v145 = sub_1AF706EB8(v138, &v622);
          v146 = v631;
          v537 = v144;
          if (v631)
          {
            v147 = v633;
            if (v633)
            {
              v536 = v623;
              v148 = (v145 + 8);
              do
              {
                v146 += 8;
                v149 = *(v148 - 1);
                v150 = *v148;

                sub_1AFD08440(v151, v149, v150);

                sub_1AF6FCEB8(0);
                v153 = *(*(v138 + 40) + 16);
                v154 = *(v153 + 128);
                if (*(v154 + 16))
                {
                  v155 = v152;
                  v156 = sub_1AF449CB8(v152);
                  if ((v157 & 1) != 0 && *(*(v153 + 24) + 16 * *(*(v154 + 56) + 8 * v156) + 32) == v155)
                  {
                    *&v553 = v155;
                    *(&v553 + 1) = &off_1F2559388;
                    BYTE8(v555) = 1;
                    MEMORY[0x1EEE9AC00](v156);
                    v485 = v138;

                    sub_1AF63023C(0, v138, sub_1AFA9EC24);

                    sub_1AF635250(&v553);
                  }
                }

                v148 += 2;
                --v147;
              }

              while (v147);
            }
          }

          else
          {
            v158 = v626;
            v159 = v627;
            if (v626 != v627)
            {
              v160 = &v145[16 * v626 + 8];
              do
              {
                v161 = *(v160 - 1);
                v162 = *v160;

                sub_1AFD08440(v163, v161, v162);

                sub_1AF6FCEB8(0);
                v165 = *(*(v138 + 40) + 16);
                v166 = *(v165 + 128);
                if (*(v166 + 16))
                {
                  v167 = v164;
                  v168 = sub_1AF449CB8(v164);
                  if ((v169 & 1) != 0 && *(*(v165 + 24) + 16 * *(*(v166 + 56) + 8 * v168) + 32) == v167)
                  {
                    *&v553 = v167;
                    *(&v553 + 1) = &off_1F2559388;
                    BYTE8(v555) = 1;
                    MEMORY[0x1EEE9AC00](v168);
                    v485 = v138;

                    sub_1AF63023C(0, v138, sub_1AFA9EC24);

                    sub_1AF635250(&v553);
                  }
                }

                ++v158;
                v160 += 2;
              }

              while (v159 != v158);
            }
          }

          v129 = v537;
          sub_1AF630994(v540, &v602, v620);
          sub_1AF62D29C(v138);
          ecs_stack_allocator_pop_snapshot(v539);
          v131 = v527;
          if (v527)
          {
            os_unfair_lock_unlock(*(v138 + 344));
            os_unfair_lock_unlock(*(v138 + 376));
          }

          v130 = v538 + 1;
        }

        while (v538 + 1 != v534);
      }
    }

    sub_1AFA9BF94(&v585, &qword_1ED725EA0, &type metadata for QueryResult);
    v24 = v530;
  }

  else
  {
    v129 = v521;
  }

  v170 = v524[9];
  v610[0] = v524[8];
  v610[1] = v170;
  v611 = *(v524 + 20);
  sub_1AF6B06C0(v502, v610, 0x200000000, v593);
  if (*&v593[0])
  {
    v171 = v597;
    if (v597 >= 1 && *(&v595 + 1))
    {
      v508 = v597;
      v172 = *(&v594 + 1);
      v539 = *(&v596 + 1);
      v173 = *(&v594 + 1) + 48 * *(&v595 + 1);
      sub_1AF5B243C(0);
      v535 = v174;
      v555 = v594;
      v556 = v595;
      v557 = v596;
      v558 = v597;
      v553 = v593[0];
      v554 = v593[1];
      sub_1AF5DD298(&v553, v598);
      v519 = v173;
      do
      {
        v175 = *(v172 + 40);
        v176 = *(v175 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v176);
        os_unfair_lock_lock(*(v175 + 344));
        v177 = *(v175 + 24);

        memset(v598, 0, 40);
        *&v571 = 0;
        v570 = 0u;
        v569 = 0u;
        v178 = sub_1AF65A4B4(v177, 0, 0, v535, &off_1F250F310, v598, &v569);

        sub_1AFA9E8FC(&v569, sub_1AF5C4448);
        sub_1AFA9E8FC(v598, sub_1AF5C4448);
        if (sub_1AF649CEC(v178))
        {
          sub_1AF649D40(v178, v539);
        }

        else
        {
          v534 = v172;
          v521 = v129;
          v180 = *(v175 + 232);
          v179 = *(v175 + 240);
          LODWORD(v532) = *(v175 + 120);
          v526 = *(v175 + 28);
          v181 = *(v175 + 32);
          v182 = *(v175 + 16);
          v183 = *(v175 + 40);
          v184 = v183[200];

          if ((v184 & 1) != 0 || *(v185 + 200) == 1)
          {
            *(v182 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v183 = *(v175 + 40);
          }

          v186 = v183[212];
          v187 = v185;
          v540 = v182;
          LODWORD(v527) = v178;
          if (v186)
          {
            LODWORD(v528) = 0;
          }

          else
          {
            LODWORD(v528) = *(v185 + 212);
          }

          v188 = v183[208];
          v538 = *(v175 + 128);
          v189 = *(v175 + 256);
          v190 = v179;
          v191 = v521;
          sub_1AF5B4FCC(v183, v180, v190, 0, v175);
          v521 = v191;
          v536 = *(v175 + 256);
          v537 = v189;
          v192 = v536 - v189;
          if (v536 == v189)
          {
            v193 = 0;
          }

          else
          {
            v193 = v189;
          }

          v194 = v193;
          *&v569 = v193;
          v195 = *(*(v175 + 40) + 24);
          v196 = *(v195 + 16);
          if (v196)
          {
            LODWORD(v522) = v181;
            LODWORD(v525) = v188;
            v197 = v195 + 32;

            v198 = 0;
            v199 = v538;
            v200 = v192;
            v201 = v187;
            do
            {
              v202 = (v197 + 40 * v198);
              if ((v202[4] & 1) == 0)
              {
                v203 = *v202;
                v205 = v202[2];
                v204 = v202[3];
                v206 = *(v201 + 24);
                v207 = *(v206 + 16);
                if (v207)
                {
                  v208 = (v206 + 32);
                  while (*v208 != v203)
                  {
                    v208 += 5;
                    if (!--v207)
                    {
                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:
                  sub_1AF640BC8(v199 + v205 * v194 + v204, v200);
                  v201 = v187;
                  v200 = v192;
                  v199 = v538;
                }
              }

              ++v198;
            }

            while (v198 != v196);
            v192 = v200;

            LOBYTE(v188) = v525;
            LOBYTE(v181) = v522;
          }

          if (*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v175 + 72) * v192);
          }

          if (*(v175 + 184))
          {
            v209 = 0;
          }

          else
          {
            v209 = *(v175 + 168);
          }

          *&v548 = 0;

          *&v598[1] = v209;
          DWORD2(v598[1]) = -1;
          *&v598[2] = v537;
          *(&v598[2] + 1) = v536;
          *&v599 = v537;
          *(&v599 + 1) = v536;
          *&v598[0] = v537;
          *(&v598[0] + 1) = v536;
          if (v192 < 1)
          {
          }

          else
          {
            v525 = &v486;

            v210 = v187;

            v211 = v532;
            v212 = v526;
            v213 = v527;
            v214 = v188;
            v215 = v528;
            v216 = v538;
            do
            {

              LOBYTE(v543) = v181;
              LOBYTE(v485) = v214;
              sub_1AF626158(v213, v212 | (v181 << 32), v211, v540, v598, v212 | (v181 << 32), v175, v210, 0, 0, 0, 0, &v569, v216, &v548, v485, v213, v215, v539);
            }

            while ((*(&v598[0] + 1) - *&v598[0]) > 0);
          }

          v217 = *(v175 + 192);
          v24 = v530;
          v129 = v521;
          if (v217)
          {
            v218 = *(v175 + 208);
            v220 = v536;
            v219 = v537;
            sub_1AF75D364(v537, v536, v217);
            sub_1AF75D364(v219, v220, v218);
          }

          v172 = v534;
          v173 = v519;
        }

        v172 += 48;
        os_unfair_lock_unlock(*(v175 + 344));
        os_unfair_lock_unlock(*(v175 + 376));
      }

      while (v172 != v173);
      sub_1AFA9BF94(v593, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v593, &qword_1ED725EA0, &type metadata for QueryResult);
      v171 = v508;
    }

    else
    {
      sub_1AFA9BF94(v593, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v221 = v520;
    if (v171 > 0)
    {
      v221 = 1;
    }

    LODWORD(v520) = v221;
  }

  if (v514)
  {
    sub_1AFA61FF8(v541, v514, sub_1AFD2EFAC);
    LODWORD(v520) = v520 | v222;
  }

  v521 = v129;
  if (v515)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v224 = v541;
  v225 = sub_1AFA7E0B4(v541, v516 & 1);

  v226 = *(v224 + 16);

  if (v226)
  {
    v508 = sub_1AF8BB88C();
    v519 = v227;
  }

  else
  {
    v508 = 0;
    v519 = 0xE000000000000000;
  }

  v228 = v520 | v225;
  v229 = v524[14];
  v608[0] = v524[13];
  v608[1] = v229;
  v609 = *(v524 + 30);
  sub_1AF6B06C0(v502, v608, 0x200000000, v598);
  v230 = *&v598[0];
  if (!*&v598[0])
  {

    if ((v228 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v601 <= 0 || (v489 = *(&v599 + 1)) == 0)
  {

    sub_1AFA9BF94(v598, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v228 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v488 = *(&v598[2] + 1);
  v495 = *(&v600 + 1);
  v494 = *(*(&v600 + 1) + 32);
  v493 = *(v600 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B243C(0);
  v232 = v231;
  v605 = v230;
  v606 = *(v598 + 8);
  v607 = *(&v598[1] + 8);
  v525 = (v502 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v571 = v598[2];
  v572 = v599;
  v573 = v600;
  v574 = v601;
  v569 = v598[0];
  v570 = v598[1];
  sub_1AF5DD298(&v569, &v553);
  v233 = 0;
  v532 = v232;
  v487 = v232 - 8;
  v520 = (v506 + 2);
  v500 = (v506 + 4);
  v491 = (v506 + 6);
  v507 += 7;
  v497 = &v549;
  v505 = (v506 + 7);
  ++v506;
  v496 = &v554;
  v498 = xmmword_1AFE21110;
  v522 = xmmword_1AFE72020;
LABEL_171:
  v492 = v233;
  v234 = (v488 + 48 * v233);
  v235 = *v234;
  v527 = v234[1];
  v236 = *(v234 + 3);
  v535 = *(v234 + 2);
  v237 = *(v234 + 4);
  v238 = *(v234 + 5);
  if (v493)
  {
    v239 = *(v238 + 376);

    os_unfair_lock_lock(v239);
    os_unfair_lock_lock(*(v238 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v494);
  v240 = v495;
  v241 = *(v495 + 4);
  v618[0] = *(v495 + 3);
  v618[1] = v241;
  v619 = v495[10];
  v242 = *(*(*(*(v238 + 40) + 16) + 32) + 16) + 1;
  v240[6] = ecs_stack_allocator_allocate(v495[4], 48 * v242, 8);
  v240[7] = v242;
  v240[9] = 0;
  v240[10] = 0;
  v240[8] = 0;
  v243 = v535;
  v539 = sub_1AF64B110(v533, &off_1F255B630, v535, v236, v237, v240);
  v540 = sub_1AF64B110(v532, &off_1F250F310, v243, v236, v237, v240);
  if (v243)
  {
    if (!v237)
    {
      goto LABEL_314;
    }

    v527 = *(v511 + 72);
    v526 = *(*v487 + 72);
    v504 = v238;
    while (1)
    {
      v247 = *v535;
      v534 = v237;
      ++v535;

      if (*(v238 + 184))
      {
        goto LABEL_324;
      }

      v249 = *(*(v238 + 168) + 4 * v247);
      v250 = *(*(v248 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v249 + 8);

      v251 = v249 == -1 && v250 == 0;
      if (v251 || (v249 & 0x80000000) != 0 || v525[1] <= v249)
      {
        break;
      }

      v252 = *v525 + 12 * v249;
      if (v250 != -1 && *(v252 + 8) != v250)
      {
        break;
      }

      v254 = *(*(*(v502 + 88) + 8 * *(v252 + 6) + 32) + 16);
      v255 = *(v254 + 128);
      if (!*(v255 + 16))
      {
        break;
      }

      v256 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v257 & 1) == 0 || *(*(v254 + 24) + 16 * *(*(v255 + 56) + 8 * v256) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_180:
      v540 = (v540 + v526);
      v539 += v527;
      v237 = v534 - 1;
      if (v534 == 1)
      {
        goto LABEL_313;
      }
    }

    dispatch_group_enter(v542);
    v258 = *(v238 + 64);
    v259 = *(v238 + 80);
    v563 = *(v238 + 112);
    v261 = *(v238 + 80);
    v260 = *(v238 + 96);
    v561 = v259;
    v562 = v260;
    v262 = *(v238 + 64);
    v559 = *(v238 + 48);
    v560 = v258;
    v263 = *(v238 + 96);
    v555 = v261;
    v556 = v263;
    LOBYTE(v557) = *(v238 + 112);
    v553 = *(v238 + 48);
    v554 = v262;
    v264 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v266 = v265;
    v566 = v555;
    v567 = v556;
    v568 = v557;
    v565 = v554;
    v564 = v553;

    sub_1AF5DD36C(&v559, &v548);
    sub_1AF5DD3C8(&v564);
    if (v266)
    {

      v537 = 0;
      v267 = 0;
      v268 = 0;
    }

    else
    {
      v269 = *(v238 + 128);

      v270 = (v269 + v264 + 24 * v247);
      v537 = *v270;
      v267 = *(v270 + 1);
      v268 = *(v270 + 2);
    }

    if (*(v238 + 184))
    {
      goto LABEL_324;
    }

    v536 = v267;
    v272 = *(*(v238 + 168) + 4 * v247);
    v273 = *(*(v271 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v272 + 8);

    v274 = swift_allocObject();
    v274[2] = sub_1AFA9EC2C;
    v274[3] = v24;
    v538 = v274;
    v275 = v541;
    v274[4] = v542;
    v276 = *(v275 + 16);

    if (v276)
    {
      v277 = *(v276 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v278 = v542;

      if ((v277 & 1) == 0 || *(v541 + 3048) != 1)
      {
        sub_1AF81F330();
        v280 = swift_allocError();
        v281 = v280;
        *v282 = v522;
        if (!*(v531 + 16))
        {
          v283 = v513;
          v284 = *(v513 + 72);
          v285 = v280;
          os_unfair_lock_lock(v284);
          v286 = *(v531 + 16);
          *(v531 + 16) = v281;
          v287 = v281;

          os_unfair_lock_unlock(*(v283 + 72));
        }

        dispatch_group_leave(v278);

        goto LABEL_206;
      }
    }

    else
    {
      swift_retain_n();
      v288 = v542;
    }

    v289 = sub_1AFAA98A4(v279);
    v290 = v541;
    v291 = v540 + v532[9];
    v292 = *v291;
    LOBYTE(v291) = v291[8];
    v528 = v289;
    v293 = v291 | (v289 != v292);
    os_unfair_lock_lock(*(v541 + 72));
    v294 = *(v290 + 80);
    if (*(v294 + 16) && (v295 = sub_1AF41ACD4(v533, v272 | (v273 << 32)), (v296 & 1) != 0))
    {
      sub_1AF85B3D4(*(v294 + 56) + 96 * v295, &v553);
      if (BYTE8(v558) != 255)
      {
        sub_1AF85B3D4(&v553, &v548);
        sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v547 + 9) = *(v552 + 9);
        v545 = v550;
        v546 = v551;
        v547[0] = v552[0];
        v543 = v548;
        v544 = v549;
        if (!BYTE8(v552[1]))
        {
          v344 = v543;
          v345 = (v543 != v528) | v293;
          os_unfair_lock_unlock(*(v541 + 72));
          if (v345)
          {
            if (v344 == v528)
            {
              v278 = v542;
              dispatch_group_leave(v542);
LABEL_206:

              v24 = v530;
LABEL_178:

              v245 = v536;
              v244 = v537;
              v246 = v268;
LABEL_179:
              sub_1AF487074(v244, v245, v246);
              goto LABEL_180;
            }

LABEL_216:
            v515 = v272;
            v517 = v268;
            v297 = v532;
            v516 = swift_allocBox();
            v299 = v298;
            sub_1AFA5BF30(v298);
            v300 = v299 + *(v297 + 36);
            v301 = v528;
            *v300 = v528;
            *(v300 + 8) = 0;
            sub_1AFA9DE54(v539, v299, type metadata accessor for MetalFunctionScript);
            sub_1AFA9DE54(v299, v540, sub_1AF5B243C);
            v302 = v541;
            os_unfair_lock_lock(*(v541 + 72));
            *&v553 = v301;
            BYTE8(v558) = 0;
            sub_1AF825824(&v553, v533, v272 | (v273 << 32));
            os_unfair_lock_unlock(*(v302 + 72));
            v303 = *(v302 + 16);

            if (v303)
            {
              v304 = v503;
              v305 = v529;
              (*v520)(v503, v303 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v529);

              (*v505)(v304, 0, 1, v305);
              v306 = v518;
              (*v500)(v518, v304, v305);
            }

            else
            {
              v307 = v503;
              (*v505)(v503, 1, 1, v529);
              v306 = v518;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v308 = sub_1AFDFC538();
              sub_1AF477C68(v308, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v491)(v307, 1, v529) != 1)
              {
                sub_1AFA9C470(v307, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v514 = v273;
            v309 = sub_1AFDFC538();
            sub_1AF477C68(v309, qword_1ED73B608);
            v310 = sub_1AFDFC528();
            v311 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v312 = swift_slowAlloc();
              *v312 = 0;
              v313 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v310, v311, v313, "buildScript", "", v312, 2u);
              MEMORY[0x1B271DEA0](v312, -1, -1);
            }

            (*v520)(v509, v306, v529);
            sub_1AFDFC578();
            swift_allocObject();
            v314 = sub_1AFDFC568();
            sub_1AFA9E3C8(v539, v523, type metadata accessor for MetalFunctionScript);
            v315 = (*(v511 + 80) + 400) & ~*(v511 + 80);
            v316 = (v507 + v315) & 0xFFFFFFFFFFFFFFF8;
            v317 = (v316 + 23) & 0xFFFFFFFFFFFFFFF8;
            v318 = (v317 + 27) & 0xFFFFFFFFFFFFFFF8;
            v319 = swift_allocObject();
            v320 = v533;
            *(v319 + 16) = v541;
            *(v319 + 24) = v320;
            v322 = v514;
            v321 = v515;
            *(v319 + 32) = v515;
            *(v319 + 36) = v322;
            *(v319 + 40) = v528;
            *(v319 + 48) = sub_1AFA9EC20;
            *(v319 + 56) = v538;
            *(v319 + 64) = v314;
            v528 = v314;
            memcpy((v319 + 72), v524, 0x148uLL);
            sub_1AFA9E320(v523, v319 + v315, type metadata accessor for MetalFunctionScript);
            v323 = (v319 + v316);
            v324 = v519;
            *v323 = v508;
            v323[1] = v324;
            v325 = (v319 + v317);
            v326 = v536;
            v327 = v537;
            *v325 = v537;
            v325[1] = v326;
            v328 = v517;
            v325[2] = v517;
            v329 = (v319 + v318);
            *v329 = v321;
            v329[1] = v322;
            *(v319 + ((v318 + 15) & 0xFFFFFFFFFFFFFFF8)) = v516;
            if ((v510 & 1) == 0)
            {
              v514 = *(v541 + 32);
              v338 = swift_allocObject();
              *(v338 + 16) = sub_1AFA9EB74;
              *(v338 + 24) = v319;
              v339 = v338;
              v515 = v338;
              v340 = swift_allocObject();
              *(v340 + 16) = sub_1AFA9EB90;
              *(v340 + 24) = v339;
              *&v550 = sub_1AF6D25EC;
              *(&v550 + 1) = v340;
              *&v548 = MEMORY[0x1E69E9820];
              *(&v548 + 1) = 1107296256;
              *&v549 = sub_1AF6F662C;
              *(&v549 + 1) = &unk_1F255A888;
              v341 = _Block_copy(&v548);
              v537 = v327;
              v342 = v341;

              sub_1AFA9C054(v524, &v553, &qword_1EB633F80, type metadata accessor for MetalFunctionScript, &off_1F255B630, &off_1ED729C40);

              v343 = v536;
              sub_1AF487F80(v327, v536, v328);

              dispatch_sync(v514, v342);
              _Block_release(v342);

              (*v506)(v518, v529);
              swift_isEscapingClosureAtFileLocation();

              v24 = v530;

              sub_1AF487074(v537, v343, v328);
              v238 = v504;
              goto LABEL_180;
            }

            v514 = *(v541 + 40);
            v330 = swift_allocObject();
            *(v330 + 16) = sub_1AFA9EB74;
            *(v330 + 24) = v319;
            v515 = v330;

            sub_1AFA9C054(v524, &v553, &qword_1EB633F80, type metadata accessor for MetalFunctionScript, &off_1F255B630, &off_1ED729C40);

            sub_1AF487F80(v327, v326, v328);
            v331 = qword_1ED730EA0;

            v332 = v328;
            v238 = v504;
            if (v331 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v333 = qword_1ED73B8A0;
            v334 = swift_allocObject();
            v335 = v515;
            *(v334 + 16) = sub_1AFA9EB90;
            *(v334 + 24) = v335;
            v336 = swift_allocObject();
            v336[2] = v333;
            v336[3] = sub_1AF6CC3F0;
            v336[4] = v334;
            *&v555 = sub_1AFA9EC30;
            *(&v555 + 1) = v336;
            *&v553 = MEMORY[0x1E69E9820];
            *(&v553 + 1) = 1107296256;
            *&v554 = sub_1AFCDA044;
            *(&v554 + 1) = &unk_1F255A928;
            v337 = _Block_copy(&v553);
            swift_retain_n();

            [v514 addOperationWithBlock:v337];
            _Block_release(v337);

            (*v506)(v518, v529);

            v24 = v530;

            v245 = v536;
            v244 = v537;
            v246 = v332;
            goto LABEL_179;
          }

LABEL_236:
          v346 = v542;
          v347 = v540;
          sub_1AFA9DE54(v539, v540, type metadata accessor for MetalFunctionScript);
          v348 = v532;
          v349 = *(v533 + 28);
          v350 = *(v347 + v349);
          if (v350)
          {
            v351 = v540;
            v352 = *(v540 + v349 + 8);
            v353 = *v540;
            v354 = v540[1];

            v355 = sub_1AF458B0C(v353, v354);
            v350(*(v351 + v348[13]), v355);

            sub_1AF0FB8EC(v350, v352);
          }

          if (*(v540 + v348[10]) == 1)
          {
            v356 = *(v540 + v348[11]);
            v357 = v356;
          }

          else
          {
            sub_1AF81F330();
            v356 = swift_allocError();
            *v358 = v498;
          }

          v24 = v530;
          if (!*(v531 + 16) && v356)
          {
            v359 = v513;
            v360 = *(v513 + 72);
            v361 = v356;
            os_unfair_lock_lock(v360);
            v362 = *(v531 + 16);
            *(v531 + 16) = v356;
            v363 = v356;

            os_unfair_lock_unlock(*(v359 + 72));
          }

          dispatch_group_leave(v346);

          goto LABEL_178;
        }

        sub_1AFA9C0C8(&v543);
LABEL_215:
        os_unfair_lock_unlock(*(v541 + 72));
        if (v293)
        {
          goto LABEL_216;
        }

        goto LABEL_236;
      }
    }

    else
    {
      *&v558 = 0;
      v556 = 0u;
      v557 = 0u;
      v554 = 0u;
      v555 = 0u;
      v553 = 0u;
      BYTE8(v558) = -1;
    }

    sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_215;
  }

  if (v235 == v527)
  {
    goto LABEL_314;
  }

  v364 = *(v511 + 72);
  v517 = *(*v487 + 72);
  v540 = (v540 + v517 * v235);
  v538 = 24 * v235;
  v539 += v364 * v235;
  v499 = v364;
  while (1)
  {

    if (*(v238 + 184))
    {
      break;
    }

    v369 = *(*(v238 + 168) + 4 * v235);
    v370 = *(*(v368 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v369 + 8);

    v371 = v369 == -1 && v370 == 0;
    if (!v371 && (v369 & 0x80000000) == 0 && v525[1] > v369)
    {
      v372 = *v525 + 12 * v369;
      if (v370 == -1 || *(v372 + 8) == v370)
      {
        v374 = *(*(*(v502 + 88) + 8 * *(v372 + 6) + 32) + 16);
        v375 = *(v374 + 128);
        if (*(v375 + 16))
        {
          v376 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v377 & 1) != 0 && *(*(v374 + 24) + 16 * *(*(v375 + 56) + 8 * v376) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_248;
          }
        }
      }
    }

    dispatch_group_enter(v542);
    v378 = *(v238 + 64);
    v379 = *(v238 + 80);
    v563 = *(v238 + 112);
    v381 = *(v238 + 80);
    v380 = *(v238 + 96);
    v561 = v379;
    v562 = v380;
    v382 = *(v238 + 64);
    v559 = *(v238 + 48);
    v560 = v378;
    v383 = *(v238 + 96);
    v555 = v381;
    v556 = v383;
    LOBYTE(v557) = *(v238 + 112);
    v553 = *(v238 + 48);
    v554 = v382;
    v384 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v386 = v385;
    v566 = v555;
    v567 = v556;
    v568 = v557;
    v565 = v554;
    v564 = v553;

    sub_1AF5DD36C(&v559, &v548);
    sub_1AF5DD3C8(&v564);
    if (v386)
    {

      v537 = 0;
      v387 = 0;
      v388 = 0;
    }

    else
    {
      v389 = *(v238 + 128);

      v390 = (v389 + v538 + v384);
      v537 = *v390;
      v387 = *(v390 + 1);
      v388 = *(v390 + 2);
    }

    v535 = v387;

    if (*(v238 + 184))
    {
      break;
    }

    v536 = v388;
    v392 = *(v238 + 168);
    v534 = v235;
    v393 = *(v392 + 4 * v235);
    v528 = *(*(v391 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v393 + 8);

    v394 = swift_allocObject();
    v394[2] = sub_1AFA9EC2C;
    v394[3] = v24;
    v395 = v541;
    v394[4] = v542;
    v396 = *(v395 + 16);

    if (v396)
    {
      v397 = *(v396 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v398 = v542;

      if ((v397 & 1) == 0 || *(v541 + 3048) != 1)
      {
        sub_1AF81F330();
        v400 = swift_allocError();
        v401 = v400;
        *v402 = v522;
        if (!*(v531 + 16))
        {
          v403 = v513;
          v404 = *(v513 + 72);
          v405 = v400;
          os_unfair_lock_lock(v404);
          v406 = *(v531 + 16);
          *(v531 + 16) = v401;
          v407 = v401;

          v364 = v499;
          os_unfair_lock_unlock(*(v403 + 72));
        }

        dispatch_group_leave(v398);

        goto LABEL_274;
      }
    }

    else
    {
      swift_retain_n();
      v408 = v542;
    }

    v409 = v393;
    v410 = sub_1AFAA98A4(v399);
    v411 = v541;
    v412 = v540 + v532[9];
    v413 = *v412;
    LOBYTE(v412) = v412[8];
    v526 = v410;
    v414 = v412 | (v410 != v413);
    os_unfair_lock_lock(*(v541 + 72));
    v415 = *(v411 + 80);
    if (!*(v415 + 16) || (v416 = sub_1AF41ACD4(v533, v393 | (v528 << 32)), (v417 & 1) == 0))
    {
      *&v558 = 0;
      v556 = 0u;
      v557 = 0u;
      v554 = 0u;
      v555 = 0u;
      v553 = 0u;
      BYTE8(v558) = -1;
LABEL_282:
      sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_283:
      v418 = v541;
      os_unfair_lock_unlock(*(v541 + 72));
      if ((v414 & 1) == 0)
      {
        goto LABEL_305;
      }

      goto LABEL_284;
    }

    sub_1AF85B3D4(*(v415 + 56) + 96 * v416, &v553);
    if (BYTE8(v558) == 255)
    {
      goto LABEL_282;
    }

    sub_1AF85B3D4(&v553, &v548);
    sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v547 + 9) = *(v552 + 9);
    v545 = v550;
    v546 = v551;
    v547[0] = v552[0];
    v543 = v548;
    v544 = v549;
    if (BYTE8(v552[1]))
    {
      sub_1AFA9C0C8(&v543);
      goto LABEL_283;
    }

    v462 = v543;
    v463 = (v543 != v526) | v414;
    v418 = v541;
    os_unfair_lock_unlock(*(v541 + 72));
    if ((v463 & 1) == 0)
    {
LABEL_305:
      v465 = v540;
      sub_1AFA9DE54(v539, v540, type metadata accessor for MetalFunctionScript);
      v466 = v532;
      v467 = *(v533 + 28);
      v468 = *(v465 + v467);
      if (v468)
      {
        v469 = *(v465 + v467 + 8);
        v470 = *v465;
        v471 = v540[1];

        v472 = v471;
        v465 = v540;
        v473 = sub_1AF458B0C(v470, v472);
        v468(*(v465 + v466[13]), v473);

        sub_1AF0FB8EC(v468, v469);
      }

      if (*(v465 + v466[10]) == 1)
      {
        v474 = *(v465 + v466[11]);
        v475 = v474;
      }

      else
      {
        sub_1AF81F330();
        v474 = swift_allocError();
        *v476 = v498;
      }

      v24 = v530;
      if (*(v531 + 16) || !v474)
      {
        v365 = v364;
      }

      else
      {
        v365 = v364;
        v477 = v513;
        v478 = *(v513 + 72);
        v479 = v474;
        os_unfair_lock_lock(v478);
        v480 = *(v531 + 16);
        *(v531 + 16) = v474;
        v481 = v474;

        os_unfair_lock_unlock(*(v477 + 72));
      }

      v235 = v534;
      v366 = v535;
      v367 = v542;
      dispatch_group_leave(v542);

      sub_1AF487074(v537, v366, v536);
      v364 = v365;
      goto LABEL_248;
    }

    if (v462 == v526)
    {
      v464 = v542;
      dispatch_group_leave(v542);

      v24 = v530;
LABEL_274:

      goto LABEL_300;
    }

LABEL_284:
    v514 = v393;
    v419 = v532;
    v420 = swift_allocBox();
    v422 = v421;
    sub_1AFA5BF30(v421);
    v423 = v422 + *(v419 + 36);
    v424 = v526;
    *v423 = v526;
    *(v423 + 8) = 0;
    sub_1AFA9DE54(v539, v422, type metadata accessor for MetalFunctionScript);
    sub_1AFA9DE54(v422, v540, sub_1AF5B243C);
    os_unfair_lock_lock(*(v418 + 72));
    *&v553 = v424;
    BYTE8(v558) = 0;
    sub_1AF825824(&v553, v533, v409 | (v528 << 32));
    os_unfair_lock_unlock(*(v418 + 72));
    v425 = *(v418 + 16);

    if (v425)
    {
      v426 = v490;
      v427 = v529;
      (*v520)(v490, v425 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v529);

      (*v505)(v426, 0, 1, v427);
      (*v500)(v512, v426, v427);
    }

    else
    {
      v428 = v490;
      (*v505)(v490, 1, 1, v529);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v429 = sub_1AFDFC538();
      sub_1AF477C68(v429, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v491)(v428, 1, v529) != 1)
      {
        sub_1AFA9C470(v428, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v515 = v420;
    v516 = v394;
    v430 = sub_1AFDFC538();
    sub_1AF477C68(v430, qword_1ED73B608);
    v431 = sub_1AFDFC528();
    v432 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v433 = swift_slowAlloc();
      *v433 = 0;
      v434 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v431, v432, v434, "buildScript", "", v433, 2u);
      MEMORY[0x1B271DEA0](v433, -1, -1);
    }

    (*v520)(v509, v512, v529);
    sub_1AFDFC578();
    swift_allocObject();
    v435 = sub_1AFDFC568();
    sub_1AFA9E3C8(v539, v523, type metadata accessor for MetalFunctionScript);
    v436 = (*(v511 + 80) + 400) & ~*(v511 + 80);
    v437 = (v507 + v436) & 0xFFFFFFFFFFFFFFF8;
    v438 = (v437 + 23) & 0xFFFFFFFFFFFFFFF8;
    v439 = (v438 + 27) & 0xFFFFFFFFFFFFFFF8;
    v501 = (v439 + 15) & 0xFFFFFFFFFFFFFFF8;
    v440 = swift_allocObject();
    v441 = v533;
    *(v440 + 16) = v541;
    *(v440 + 24) = v441;
    v442 = v514;
    v443 = v528;
    *(v440 + 32) = v514;
    *(v440 + 36) = v443;
    *(v440 + 40) = v526;
    *(v440 + 48) = sub_1AFA9EC20;
    *(v440 + 56) = v516;
    *(v440 + 64) = v435;
    v526 = v435;
    memcpy((v440 + 72), v524, 0x148uLL);
    sub_1AFA9E320(v523, v440 + v436, type metadata accessor for MetalFunctionScript);
    v444 = (v440 + v437);
    v445 = v519;
    *v444 = v508;
    v444[1] = v445;
    v446 = (v440 + v438);
    v447 = v536;
    v448 = v537;
    v449 = v535;
    *v446 = v537;
    v446[1] = v449;
    v446[2] = v447;
    v450 = (v440 + v439);
    *v450 = v442;
    v450[1] = v443;
    *(v440 + v501) = v515;
    if ((v510 & 1) == 0)
    {
      v528 = *(v541 + 32);
      v457 = v447;
      v458 = swift_allocObject();
      *(v458 + 16) = sub_1AFA9D404;
      *(v458 + 24) = v440;
      v459 = swift_allocObject();
      *(v459 + 16) = sub_1AFA9EB90;
      *(v459 + 24) = v458;
      *&v550 = sub_1AF6D25EC;
      *(&v550 + 1) = v459;
      *&v548 = MEMORY[0x1E69E9820];
      *(&v548 + 1) = 1107296256;
      *&v549 = sub_1AF6F662C;
      *(&v549 + 1) = &unk_1F255A720;
      v460 = _Block_copy(&v548);
      v537 = v448;
      v461 = v460;
      v514 = *(&v550 + 1);

      sub_1AFA9C054(v524, &v553, &qword_1EB633F80, type metadata accessor for MetalFunctionScript, &off_1F255B630, &off_1ED729C40);

      sub_1AF487F80(v448, v449, v457);

      dispatch_sync(v528, v461);
      _Block_release(v461);

      (*v506)(v512, v529);
      swift_isEscapingClosureAtFileLocation();

      v24 = v530;

      sub_1AF487074(v537, v449, v457);
      v235 = v534;
      v364 = v499;
      goto LABEL_248;
    }

    v528 = *(v541 + 40);
    v451 = swift_allocObject();
    *(v451 + 16) = sub_1AFA9D404;
    *(v451 + 24) = v440;

    sub_1AFA9C054(v524, &v553, &qword_1EB633F80, type metadata accessor for MetalFunctionScript, &off_1F255B630, &off_1ED729C40);

    sub_1AF487F80(v448, v449, v447);
    v452 = qword_1ED730EA0;

    v364 = v499;
    if (v452 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v453 = qword_1ED73B8A0;
    v454 = swift_allocObject();
    *(v454 + 16) = sub_1AFA9EB90;
    *(v454 + 24) = v451;
    v455 = swift_allocObject();
    v455[2] = v453;
    v455[3] = sub_1AF6CC3F0;
    v455[4] = v454;
    *&v555 = sub_1AFA9EC30;
    *(&v555 + 1) = v455;
    *&v553 = MEMORY[0x1E69E9820];
    *(&v553 + 1) = 1107296256;
    *&v554 = sub_1AFCDA044;
    *(&v554 + 1) = &unk_1F255A7C0;
    v456 = _Block_copy(&v553);
    swift_retain_n();

    [v528 addOperationWithBlock:v456];
    _Block_release(v456);

    (*v506)(v512, v529);

    v24 = v530;

LABEL_300:

    sub_1AF487074(v537, v535, v536);
    v235 = v534;
LABEL_248:
    ++v235;
    v540 = (v540 + v517);
    v538 += 24;
    v539 += v364;
    if (v527 == v235)
    {
LABEL_313:
      v228 = 1;
LABEL_314:
      v482 = v521;
      sub_1AF630994(v495, &v605, v618);
      v521 = v482;
      sub_1AF62D29C(v238);
      ecs_stack_allocator_pop_snapshot(v494);
      if (v493)
      {
        os_unfair_lock_unlock(*(v238 + 344));
        os_unfair_lock_unlock(*(v238 + 376));
      }

      v233 = v492 + 1;
      if (v492 + 1 != v489)
      {
        goto LABEL_171;
      }

      sub_1AFA9BF94(v598, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v598, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v228 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(v542);
      }

LABEL_317:

      sub_1AFA62400(v483);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA81FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t *a7, uint64_t a8)
{
  v167 = a7;
  v194 = a6;
  v169 = a5;
  v162 = a4;
  LODWORD(v165) = a3;
  sub_1AF5B23C4(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShaderScript(0);
  MEMORY[0x1EEE9AC00](v14);
  v161 = (&v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AF5B2388(0);
  v166 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v150 - v20;
  sub_1AF85B3D4(a2, v177);
  if (!v182)
  {
    goto LABEL_7;
  }

  if (v182 != 1)
  {
    sub_1AFA9E8FC(a1, sub_1AF5B23C4);

    sub_1AF449D40(v177, v173);
    sub_1AF0D5A54(v173, v183);
    swift_dynamicCast();
    *(&v183[1] + 1) = v12;
    *&v183[2] = &off_1F250F310;
    v40 = sub_1AF585714(v183);
    sub_1AFA9E3C8(a1, v40, sub_1AF5B23C4);
    BYTE8(v183[2]) = 1;
    sub_1AF8259D0(v183, v169, v194);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v173);
LABEL_7:
    v41 = a2;
    goto LABEL_114;
  }

  v156 = v18;
  v157 = a8;
  v151 = a2;
  v160 = a1;
  sub_1AFA9E8FC(a1, sub_1AF5B23C4);
  v22 = v178;
  v158 = v180;
  v159 = v179;
  sub_1AF449D40(v177, v176);
  sub_1AF449D40(&v181, v175);
  v21[16] = 2;
  v23 = v14[6];
  v24 = type metadata accessor for ScriptIndex(0);
  (*(*(v24 - 8) + 56))(&v21[v23], 1, 1, v24);
  v25 = &v21[v14[7]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v21[v14[8]] = &unk_1F2503190;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v26 = &v21[v12[9]];
  *v26 = 0;
  v26[8] = 1;
  v21[v12[10]] = 0;
  *&v21[v12[11]] = 0;
  v27 = &v21[v12[12]];
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;
  *&v21[v12[13]] = MEMORY[0x1E69E7CC0];
  v28 = v166;
  v29 = v166[9];
  v30 = v166[10];
  v164 = v21;
  v31 = v166[11];
  *&v164[v166[12]] = 0;
  v164[v28[13]] = 0;
  v32 = &v164[v28[14]];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v164[v28[15]];
  *v33 = 0;
  v33[1] = 0;
  sub_1AF0D5A54(v176, v183);
  sub_1AFA9E8FC(v164, sub_1AF5B23C4);
  swift_dynamicCast();
  *&v164[v29] = v22;
  *&v164[v31] = v158;
  v34 = v164;
  *&v164[v30] = v159;
  v35 = *v33;
  v36 = v33[1];
  v152 = v22;

  sub_1AF919DAC(v35, v36);
  sub_1AF0D5A54(v175, v183);
  swift_dynamicCast();
  sub_1AFA9E3C8(v34, v160, sub_1AF5B23C4);
  if (v165)
  {
    v37 = *(v162 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v38 = v34;
    if (v37)
    {
      v39 = *(v37 + 80);
      swift_unknownObjectWeakLoadStrong();
      v37 = *(v37 + 56);
    }

    else
    {
      v39 = 0;
    }

    v44 = v161;
    *&v183[1] = 0;
    swift_unknownObjectUnownedInit();
    *&v183[0] = v162;
    *&v183[1] = v37;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    BYTE8(v183[1]) = v39;
    v45 = v156;
    sub_1AFA9E3C8(v38, v156, sub_1AF5B2388);
    sub_1AFA9E3C8(v45, v44, type metadata accessor for ShaderScript);
    sub_1AFA9E8FC(v45, sub_1AF5B2388);
    v42 = v194;
    sub_1AF5AD868(v44, v194);
    sub_1AFA9E8FC(v44, type metadata accessor for ShaderScript);
    v46 = v163;
    sub_1AFA9E3C8(v164, v163, sub_1AF5B23C4);
    sub_1AF5AD9F8(v46, v42);
    sub_1AFA9E8FC(v46, sub_1AF5B23C4);
    v43 = v162;
    sub_1AFA9E3C8(v164, v45, sub_1AF5B2388);
    sub_1AF5ADB88(v45, v42);
    v47 = v45;
    v34 = v164;
    sub_1AFA9E8FC(v47, sub_1AF5B2388);
    sub_1AF579490(v183);
    if (v39)
    {
      v48 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v48 ^ 1);
    }
  }

  else
  {
    v42 = v194;
    v43 = v162;
    sub_1AFBFE06C(v34, v194);
  }

  *(&v183[1] + 1) = v28;
  *&v183[2] = &off_1F2558F90;
  v49 = sub_1AF585714(v183);
  sub_1AFA9E3C8(v34, v49, sub_1AF5B2388);
  BYTE8(v183[2]) = 0;
  sub_1AF8259D0(v183, v169, v42);
  v50 = sub_1AF3CB4A8(v42);
  if (v50)
  {
    sub_1AFD08440(v43, v50, v51);
  }

  sub_1AF0D5A54(v175, v183);
  if (swift_dynamicCast())
  {

    *&v183[0] = MEMORY[0x1E69E7CC0];
    *(&v183[0] + 1) = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C();

    v52 = v194;
    sub_1AFBFE084(*&v183[0], *(&v183[0] + 1), v194);
    v43 = v162;

    v54 = v52;
  }

  else
  {
    sub_1AF0D5A54(v175, v183);
    if (swift_dynamicCast())
    {
    }

    v54 = v194;
  }

  v55 = v157;
  v56 = v168;
  sub_1AF678B44(v54, v53);
  v57 = *(v55 + 264);
  v192[0] = *(v55 + 248);
  v192[1] = v57;
  v193 = *(v55 + 280);
  sub_1AF6B06C0(v43, v192, 0x200000000, v183);
  v161 = *&v183[0];
  if (!*&v183[0])
  {
    goto LABEL_111;
  }

  v159 = *(&v183[2] + 1);
  v58 = *(&v184 + 1);
  v167 = *(&v185 + 1);
  v187 = *(v183 + 8);
  v188 = *(&v183[1] + 8);
  if (v186 <= 0 || !*(&v184 + 1))
  {
    sub_1AFA9BF94(v183, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_111:

    goto LABEL_113;
  }

  v160 = HIDWORD(v194);
  v59 = v167[4];
  v60 = *(v185 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v165 = (v43 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v155 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v173[2] = v183[2];
  v173[3] = v184;
  v173[4] = v185;
  v174 = v186;
  v173[0] = v183[0];
  v173[1] = v183[1];
  sub_1AF5DD298(v173, v171);
  v61 = 0;
  v157 = v59;
  v158 = v58;
  LODWORD(v156) = v60;
  do
  {
    v166 = v61;
    v62 = (v159 + 48 * v61);
    v64 = *v62;
    v63 = v62[1];
    v65 = *(v62 + 2);
    v66 = *(v62 + 3);
    v168 = v56;
    v169 = v65;
    v68 = *(v62 + 4);
    v67 = *(v62 + 5);
    v163 = v63;
    if (v60)
    {
      v69 = *(v67 + 376);

      os_unfair_lock_lock(v69);
      os_unfair_lock_lock(*(v67 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v59);
    v70 = v167;
    v71 = *(v167 + 4);
    v171[0] = *(v167 + 3);
    v171[1] = v71;
    v172 = v167[10];
    v72 = *(*(*(*(v67 + 40) + 16) + 32) + 16) + 1;
    v70[6] = ecs_stack_allocator_allocate(v167[4], 48 * v72, 8);
    v70[7] = v72;
    v70[9] = 0;
    v70[10] = 0;
    v70[8] = 0;
    v73 = v169;
    v74 = sub_1AF64B110(&type metadata for Material, &off_1F253F848, v169, v66, v68, v70);
    v75 = sub_1AF64B110(&type metadata for MaterialRuntime, &off_1F253FE70, v73, v66, v68, v70);
    if (v73)
    {
      v76 = v194;
      v77 = v160;
      if (v68)
      {
        for (i = 0; i != v68; ++i)
        {
          v79 = &v74[104 * i];
          if (*v79 != 2)
          {
            continue;
          }

          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          if (v81 != v76 || v80 != v77)
          {
            continue;
          }

          v83 = v169[i];

          if (*(v67 + 184))
          {
            goto LABEL_117;
          }

          v85 = *(*(v67 + 168) + 4 * v83);
          v86 = *(*(v84 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v85 + 8);

          if (v85 != -1 || v86 != 0)
          {
            v76 = v194;
            if ((v85 & 0x80000000) != 0 || v165[1] <= v85)
            {
              goto LABEL_31;
            }

            v89 = (*v165 + 12 * v85);
            if (v86 != -1 && v89[2] != v86)
            {
              goto LABEL_31;
            }

            v91 = *(v89 + 2);
            v92 = *(*(v162 + 144) + 8 * *v89 + 32);
            v93 = thread_worker_index(v87);
            if (*v93 == -1)
            {
              v95 = *(v94 + v155);
            }

            else
            {
              v95 = (*(v94 + v155) + 8 * *v93 + 8);
            }

            v96 = *v95;
            v97 = *(v92 + 192);
            if (v97)
            {
              v98 = *(v92 + 208);
              *(v97 + 8 * (v91 >> 6)) |= 1 << v91;
              *(v98 + 8 * (v91 >> 6)) &= ~(1 << v91);
            }

            if (*(*(v92 + 40) + 213) != 1)
            {
              goto LABEL_31;
            }

            v99 = *(v92 + 48);
            v100 = (v99 + 32);
            v101 = *(v99 + 16) + 1;
            v153 = v96;
            v163 = v91;
            while (--v101)
            {
              v102 = v100 + 5;
              v103 = *v100;
              v100 += 5;
              if (v103 == &type metadata for PropagateDirtiness)
              {
                v154 = *(v102 - 2);
                goto LABEL_62;
              }
            }

            v154 = 0;
LABEL_62:
            v104 = *(v92 + 128);
            v105 = *(v92 + 184);

            if (v105)
            {
              goto LABEL_117;
            }

            v107 = *(*(v92 + 168) + 4 * v163);
            v108 = (v104 + v154 + 8 * v163);
            v163 = *(*(v106 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v107 + 8);

            v109 = *v108;
            v110 = v108[1];
            if (v109 != -1 || v110 != 0)
            {
              sub_1AF70D248(v170, v107 | (v163 << 32), v109 | (v110 << 32));
            }
          }

          v76 = v194;
LABEL_31:
          *&v75[240 * i + 216] = 0;
        }
      }
    }

    else
    {
      v112 = v163;
      v113 = v194;
      v114 = v160;
      if (v64 != v163)
      {
        do
        {
          v116 = &v74[104 * v64];
          if (*v116 == 2)
          {
            v118 = *(v116 + 4);
            v117 = *(v116 + 5);
            if (v118 == v113 && v117 == v114)
            {

              if (*(v67 + 184))
              {
                goto LABEL_117;
              }

              v121 = *(*(v67 + 168) + 4 * v64);
              v122 = *(*(v120 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v121 + 8);

              if (v121 == -1 && v122 == 0)
              {
                v113 = v194;
              }

              else
              {
                v113 = v194;
                if ((v121 & 0x80000000) == 0 && v165[1] > v121)
                {
                  v125 = (*v165 + 12 * v121);
                  if (v122 == -1 || v125[2] == v122)
                  {
                    v127 = *(v125 + 2);
                    v128 = *(*(v162 + 144) + 8 * *v125 + 32);
                    v129 = thread_worker_index(v123);
                    if (*v129 == -1)
                    {
                      v131 = *(v130 + v155);
                    }

                    else
                    {
                      v131 = (*(v130 + v155) + 8 * *v129 + 8);
                    }

                    v132 = *v131;
                    v133 = *(v128 + 192);
                    if (v133)
                    {
                      v134 = *(v128 + 208);
                      *(v133 + 8 * (v127 >> 6)) |= 1 << v127;
                      *(v134 + 8 * (v127 >> 6)) &= ~(1 << v127);
                    }

                    if (*(*(v128 + 40) + 213) == 1)
                    {
                      v135 = *(v128 + 48);
                      v136 = (v135 + 32);
                      v137 = *(v135 + 16) + 1;
                      v154 = v132;
                      while (--v137)
                      {
                        v138 = v136 + 5;
                        v139 = *v136;
                        v136 += 5;
                        if (v139 == &type metadata for PropagateDirtiness)
                        {
                          v169 = *(v138 - 2);
                          goto LABEL_103;
                        }
                      }

                      v169 = 0;
LABEL_103:
                      v140 = *(v128 + 128);
                      v141 = *(v128 + 184);

                      if (v141)
                      {
LABEL_117:
                        result = sub_1AFDFE518();
                        __break(1u);
                        return result;
                      }

                      v143 = *(*(v128 + 168) + 4 * v127);
                      v144 = (&v169[v127] + v140);
                      v145 = *(*(v142 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v143 + 8);

                      v146 = *v144;
                      v147 = v144[1];
                      if (v146 != -1 || v147 != 0)
                      {
                        sub_1AF70D248(v170, v143 | (v145 << 32), v146 | (v147 << 32));
                      }

                      v113 = v194;
                      v114 = v160;
                    }
                  }
                }
              }

              *&v75[240 * v64 + 216] = 0;
            }
          }

          ++v64;
        }

        while (v64 != v112);
      }
    }

    v189 = v161;
    v190 = v187;
    v191 = v188;
    v115 = v168;
    sub_1AF630994(v167, &v189, v171);
    v56 = v115;
    sub_1AF62D29C(v67);
    v59 = v157;
    ecs_stack_allocator_pop_snapshot(v157);
    v60 = v156;
    if (v156)
    {
      os_unfair_lock_unlock(*(v67 + 344));
      os_unfair_lock_unlock(*(v67 + 376));
    }

    v61 = (v166 + 1);
  }

  while ((v166 + 1) != v158);
  sub_1AFA9BF94(v183, &qword_1ED725EA0, &type metadata for QueryResult);
  sub_1AFA9BF94(v183, &qword_1ED725EA0, &type metadata for QueryResult);

  v34 = v164;
LABEL_113:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v175);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v176);
  sub_1AFA9E8FC(v34, sub_1AF5B2388);
  v41 = v151;
LABEL_114:
  result = sub_1AF85B3D4(v41, v173);
  if (BYTE8(v174))
  {
    return sub_1AFA9C0C8(v173);
  }

  return result;
}

uint64_t sub_1AFA82F6C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v42 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v43 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v44);
        if (v45 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for ShaderScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v42[1] <= v16 || (v15 != -1 ? (v18 = *(*v42 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v42 + 12 * v16), sub_1AF5B23C4(0), v20 = *(*(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v44);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v43 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA81FD4(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v44, a2 & 1, v43, v14, v16 | (v15 << 32), a1, v41);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45570);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v44);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for ShaderScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA833C4(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v516) = a6;
  v514 = a2;
  v515 = a5;
  v510 = a4;
  v521 = 0;
  v533 = type metadata accessor for ShaderScript(0);
  v511 = *(v533 - 8);
  MEMORY[0x1EEE9AC00](v533);
  v507 = v13;
  v523 = &v486 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v490 = &v486 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v503 = &v486 - v17;
  v18 = sub_1AFDFC4F8();
  v506 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v512 = &v486 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v509 = &v486 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v518 = &v486 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v531 = a8;

  v513 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v616[0] = *(a7 + 168);
  v616[1] = v26;
  v617 = *(a7 + 25);
  v27 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v502 = v25;
  sub_1AF6B06C0(v25, v616, 0x200000000, v575);
  v541 = a1;
  v542 = a3;
  v529 = v18;
  v530 = v24;
  v524 = a7;
  v517 = v27;
  if (*&v575[0])
  {
    if (v579 >= 1)
    {
      if (*(&v577 + 1))
      {
        v28 = *(&v576 + 1);
        v29 = *(&v578 + 1);
        v30 = *(&v576 + 1) + 48 * *(&v577 + 1);
        sub_1AF5B23C4(0);
        v535 = v31;
        v555 = v576;
        v556 = v577;
        v557 = v578;
        v558 = v579;
        v553 = v575[0];
        v554 = v575[1];
        sub_1AF5DD298(&v553, &v622);
        v539 = v29;
        v520 = v30;
        do
        {
          v32 = *(v28 + 40);
          v33 = *(v32 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v33);
          os_unfair_lock_lock(*(v32 + 344));
          v34 = *(v32 + 24);

          v624 = 0;
          v622 = 0u;
          v623 = 0u;
          memset(v598, 0, 40);
          v35 = sub_1AF65A4B4(v34, v535, &off_1F250F310, 0, 0, &v622, v598);

          sub_1AFA9E8FC(v598, sub_1AF5C4448);
          sub_1AFA9E8FC(&v622, sub_1AF5C4448);
          if (sub_1AF649CEC(v35))
          {
            sub_1AF649D40(v35, v29);
          }

          else
          {
            v534 = v28;
            v37 = *(v32 + 232);
            v36 = *(v32 + 240);
            v38 = *(v32 + 120);
            v525 = *(v32 + 28);
            v39 = *(v32 + 32);
            v540 = *(v32 + 16);
            v40 = *(v32 + 40);
            v41 = v40[200];
            v42 = *(v540[11] + 8 * v35 + 32);

            if ((v41 & 1) != 0 || *(v42 + 200) == 1)
            {
              *(v540 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v40 = *(v32 + 40);
            }

            v43 = v40[212];
            LODWORD(v532) = v38;
            LODWORD(v526) = v35;
            if (v43)
            {
              LODWORD(v528) = 0;
            }

            else
            {
              LODWORD(v528) = *(v42 + 212);
            }

            v29 = v539;
            LODWORD(v527) = v40[208];
            v538 = *(v32 + 128);
            v44 = *(v32 + 256);
            v45 = v36;
            v46 = v521;
            sub_1AF5B4FCC(v40, v37, v45, 0, v32);
            v521 = v46;
            v536 = *(v32 + 256);
            v537 = v44;
            v47 = v536 - v44;
            if (v536 == v44)
            {
              v48 = 0;
            }

            else
            {
              v48 = v44;
            }

            v49 = v48;
            *&v598[0] = v48;
            v50 = *(*(v32 + 40) + 24);
            v51 = *(v50 + 16);
            if (v51)
            {
              LODWORD(v522) = v39;
              v52 = v50 + 32;

              v53 = 0;
              v54 = v538;
              v55 = v42;
              do
              {
                v56 = (v52 + 40 * v53);
                if ((v56[4] & 1) == 0)
                {
                  v57 = *v56;
                  v59 = v56[2];
                  v58 = v56[3];
                  v60 = *(v55 + 24);
                  v61 = *(v60 + 16);
                  if (v61)
                  {
                    v62 = (v60 + 32);
                    while (*v62 != v57)
                    {
                      v62 += 5;
                      if (!--v61)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8(v54 + v59 * v49 + v58, v47);
                    v55 = v42;
                    v54 = v538;
                  }
                }

                ++v53;
              }

              while (v53 != v51);

              v29 = v539;
              LOBYTE(v39) = v522;
            }

            if (*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v32 + 72) * v47);
            }

            if (*(v32 + 184))
            {
              v63 = 0;
            }

            else
            {
              v63 = *(v32 + 168);
            }

            *&v593[0] = 0;

            DWORD2(v623) = -1;
            v624 = v537;
            v625 = v536;
            v626 = v537;
            v627 = v536;
            *&v622 = v537;
            *(&v622 + 1) = v536;
            *&v623 = v63;
            if (v47 < 1)
            {
            }

            else
            {
              *&v522 = &v486;

              v64 = v42;

              v65 = v532;
              v66 = v528;
              v67 = v525;
              v68 = v526;
              v69 = v527;
              v70 = v538;
              do
              {

                LOBYTE(v585) = v39;
                LOBYTE(v485) = v69;
                sub_1AF626158(v68, v67 | (v39 << 32), v65, v540, &v622, v67 | (v39 << 32), v32, v64, 0, 0, 0, 0, v598, v70, v593, v485, v68, v66, v539);
              }

              while ((*(&v622 + 1) - v622) > 0);

              v29 = v539;
            }

            v71 = *(v32 + 192);
            v24 = v530;
            v28 = v534;
            if (v71)
            {
              v72 = *(v32 + 208);
              v73 = v537;
              v74 = v29;
              v75 = v536;
              sub_1AF75D364(v537, v536, v71);
              v76 = v75;
              v29 = v74;
              sub_1AF75D364(v73, v76, v72);
            }

            v30 = v520;
          }

          v28 += 48;
          os_unfair_lock_unlock(*(v32 + 344));
          os_unfair_lock_unlock(*(v32 + 376));
        }

        while (v28 != v30);
        sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
        v77 = 1;
        a7 = v524;
      }

      else
      {
        sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
        v77 = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v77 = 0;
LABEL_44:
  v78 = a7[4];
  v614[0] = a7[3];
  v614[1] = v78;
  v615 = *(a7 + 10);
  sub_1AF6B06C0(v502, v614, 0x200000000, v580);
  if (*&v580[0])
  {
    if (v584 >= 1 && *(&v582 + 1))
    {
      v79 = *(&v581 + 1);
      v80 = *(&v583 + 1);
      v81 = *(&v581 + 1) + 48 * *(&v582 + 1);
      sub_1AF5B2388(0);
      v535 = v82;
      v555 = v581;
      v556 = v582;
      v557 = v583;
      v558 = v584;
      v553 = v580[0];
      v554 = v580[1];
      sub_1AF5DD298(&v553, &v622);
      v539 = v80;
      v520 = v81;
      do
      {
        v83 = *(v79 + 40);
        v84 = *(v83 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v84);
        os_unfair_lock_lock(*(v83 + 344));
        v85 = *(v83 + 24);

        v624 = 0;
        v622 = 0u;
        v623 = 0u;
        memset(v598, 0, 40);
        v86 = sub_1AF65A4B4(v85, 0, 0, v535, &off_1F2558F90, &v622, v598);

        sub_1AFA9E8FC(v598, sub_1AF5C4448);
        sub_1AFA9E8FC(&v622, sub_1AF5C4448);
        if (sub_1AF649CEC(v86))
        {
          sub_1AF649D40(v86, v80);
        }

        else
        {
          v534 = v79;
          v88 = *(v83 + 232);
          v87 = *(v83 + 240);
          v89 = *(v83 + 120);
          v525 = *(v83 + 28);
          v90 = *(v83 + 32);
          v540 = *(v83 + 16);
          v91 = *(v83 + 40);
          v92 = v91[200];
          v93 = *(v540[11] + 8 * v86 + 32);

          if ((v92 & 1) != 0 || *(v93 + 200) == 1)
          {
            *(v540 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v91 = *(v83 + 40);
          }

          v94 = v91[212];
          LODWORD(v532) = v89;
          LODWORD(v526) = v86;
          if (v94)
          {
            LODWORD(v528) = 0;
          }

          else
          {
            LODWORD(v528) = *(v93 + 212);
          }

          v80 = v539;
          LODWORD(v527) = v91[208];
          v538 = *(v83 + 128);
          v95 = *(v83 + 256);
          v96 = v87;
          v97 = v521;
          sub_1AF5B4FCC(v91, v88, v96, 0, v83);
          v521 = v97;
          v536 = *(v83 + 256);
          v537 = v95;
          v98 = v536 - v95;
          if (v536 == v95)
          {
            v99 = 0;
          }

          else
          {
            v99 = v95;
          }

          v100 = v99;
          *&v598[0] = v99;
          v101 = *(*(v83 + 40) + 24);
          v102 = *(v101 + 16);
          if (v102)
          {
            LODWORD(v522) = v90;
            v103 = v101 + 32;

            v104 = 0;
            v105 = v538;
            v106 = v93;
            do
            {
              v107 = (v103 + 40 * v104);
              if ((v107[4] & 1) == 0)
              {
                v108 = *v107;
                v110 = v107[2];
                v109 = v107[3];
                v111 = *(v106 + 24);
                v112 = *(v111 + 16);
                if (v112)
                {
                  v113 = (v111 + 32);
                  while (*v113 != v108)
                  {
                    v113 += 5;
                    if (!--v112)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8(v105 + v110 * v100 + v109, v98);
                  v106 = v93;
                  v105 = v538;
                }
              }

              ++v104;
            }

            while (v104 != v102);

            v80 = v539;
            LOBYTE(v90) = v522;
          }

          if (*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v83 + 72) * v98);
          }

          if (*(v83 + 184))
          {
            v114 = 0;
          }

          else
          {
            v114 = *(v83 + 168);
          }

          *&v593[0] = 0;

          DWORD2(v623) = -1;
          v624 = v537;
          v625 = v536;
          v626 = v537;
          v627 = v536;
          *&v622 = v537;
          *(&v622 + 1) = v536;
          *&v623 = v114;
          if (v98 < 1)
          {
          }

          else
          {
            *&v522 = &v486;

            v115 = v93;

            v116 = v532;
            v117 = v528;
            v118 = v525;
            v119 = v526;
            v120 = v527;
            v121 = v538;
            do
            {

              LOBYTE(v585) = v90;
              LOBYTE(v485) = v120;
              sub_1AF626158(v119, v118 | (v90 << 32), v116, v540, &v622, v118 | (v90 << 32), v83, v115, 0, 0, 0, 0, v598, v121, v593, v485, v119, v117, v539);
            }

            while ((*(&v622 + 1) - v622) > 0);

            v80 = v539;
          }

          v122 = *(v83 + 192);
          v24 = v530;
          v79 = v534;
          if (v122)
          {
            v123 = *(v83 + 208);
            v124 = v537;
            v125 = v80;
            v126 = v536;
            sub_1AF75D364(v537, v536, v122);
            v127 = v126;
            v80 = v125;
            sub_1AF75D364(v124, v127, v123);
          }

          v81 = v520;
        }

        v79 += 48;
        os_unfair_lock_unlock(*(v83 + 344));
        os_unfair_lock_unlock(*(v83 + 376));
      }

      while (v79 != v81);
      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
      v77 = 1;
      a7 = v524;
    }

    else
    {
      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
      v77 = 1;
    }
  }

  v128 = *(a7 + 104);
  v612[0] = *(a7 + 88);
  v612[1] = v128;
  v613 = *(a7 + 15);
  sub_1AF6B06C0(v502, v612, 0x200000000, &v585);
  LODWORD(v520) = v77;
  if (v585)
  {
    v535 = v592;
    v129 = v521;
    if (v592 >= 1)
    {
      v534 = v589;
      if (v589)
      {
        v130 = 0;
        v532 = v588;
        v528 = v590;
        v131 = *(&v590->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v539 = v591[4];
        v540 = v591;
        v602 = v585;
        v603 = v586;
        v604 = v587;
        LODWORD(v527) = v131;
        do
        {
          v521 = v129;
          v538 = v130;
          v132 = &v532[12 * v130];
          v133 = *v132;
          v134 = v132[1];
          v135 = v132[2];
          v136 = *(v132 + 2);
          v137 = *(v132 + 3);
          v139 = *(v132 + 4);
          v138 = *(v132 + 5);
          if (v131)
          {
            v140 = *(v138 + 376);

            os_unfair_lock_lock(v140);
            os_unfair_lock_lock(*(v138 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v539);
          v141 = v540;
          v142 = *(v540 + 4);
          v620[0] = *(v540 + 3);
          v620[1] = v142;
          v621 = v540[10];
          v143 = *(*(*(*(v138 + 40) + 16) + 32) + 16) + 1;
          v141[6] = ecs_stack_allocator_allocate(v540[4], 48 * v143, 8);
          v141[7] = v143;
          v141[9] = 0;
          v141[10] = 0;
          v141[8] = 0;
          LOBYTE(v553) = 1;
          *&v622 = v528;
          *(&v622 + 1) = v138;
          *&v623 = v141;
          *(&v623 + 1) = v135;
          v624 = (v134 - v133 + v135);
          v625 = v535;
          v626 = v133;
          v627 = v134;
          v628 = 0;
          v629 = 0;
          v630 = 1;
          v631 = v136;
          v632 = v137;
          v633 = v139;
          v144 = v521;
          v145 = sub_1AF706E7C(v138, &v622);
          v146 = v631;
          v537 = v144;
          if (v631)
          {
            v147 = v633;
            if (v633)
            {
              v536 = v623;
              v148 = (v145 + 8);
              do
              {
                v146 += 8;
                v149 = *(v148 - 1);
                v150 = *v148;

                sub_1AFD08440(v151, v149, v150);

                sub_1AF6FCE40(0);
                v153 = *(*(v138 + 40) + 16);
                v154 = *(v153 + 128);
                if (*(v154 + 16))
                {
                  v155 = v152;
                  v156 = sub_1AF449CB8(v152);
                  if ((v157 & 1) != 0 && *(*(v153 + 24) + 16 * *(*(v154 + 56) + 8 * v156) + 32) == v155)
                  {
                    *&v553 = v155;
                    *(&v553 + 1) = &off_1F2559388;
                    BYTE8(v555) = 1;
                    MEMORY[0x1EEE9AC00](v156);
                    v485 = v138;

                    sub_1AF63023C(0, v138, sub_1AFA9EC24);

                    sub_1AF635250(&v553);
                  }
                }

                v148 += 2;
                --v147;
              }

              while (v147);
            }
          }

          else
          {
            v158 = v626;
            v159 = v627;
            if (v626 != v627)
            {
              v160 = &v145[16 * v626 + 8];
              do
              {
                v161 = *(v160 - 1);
                v162 = *v160;

                sub_1AFD08440(v163, v161, v162);

                sub_1AF6FCE40(0);
                v165 = *(*(v138 + 40) + 16);
                v166 = *(v165 + 128);
                if (*(v166 + 16))
                {
                  v167 = v164;
                  v168 = sub_1AF449CB8(v164);
                  if ((v169 & 1) != 0 && *(*(v165 + 24) + 16 * *(*(v166 + 56) + 8 * v168) + 32) == v167)
                  {
                    *&v553 = v167;
                    *(&v553 + 1) = &off_1F2559388;
                    BYTE8(v555) = 1;
                    MEMORY[0x1EEE9AC00](v168);
                    v485 = v138;

                    sub_1AF63023C(0, v138, sub_1AFA9EC24);

                    sub_1AF635250(&v553);
                  }
                }

                ++v158;
                v160 += 2;
              }

              while (v159 != v158);
            }
          }

          v129 = v537;
          sub_1AF630994(v540, &v602, v620);
          sub_1AF62D29C(v138);
          ecs_stack_allocator_pop_snapshot(v539);
          v131 = v527;
          if (v527)
          {
            os_unfair_lock_unlock(*(v138 + 344));
            os_unfair_lock_unlock(*(v138 + 376));
          }

          v130 = v538 + 1;
        }

        while (v538 + 1 != v534);
      }
    }

    sub_1AFA9BF94(&v585, &qword_1ED725EA0, &type metadata for QueryResult);
    v24 = v530;
  }

  else
  {
    v129 = v521;
  }

  v170 = v524[9];
  v610[0] = v524[8];
  v610[1] = v170;
  v611 = *(v524 + 20);
  sub_1AF6B06C0(v502, v610, 0x200000000, v593);
  if (*&v593[0])
  {
    v171 = v597;
    if (v597 >= 1 && *(&v595 + 1))
    {
      v508 = v597;
      v172 = *(&v594 + 1);
      v539 = *(&v596 + 1);
      v173 = *(&v594 + 1) + 48 * *(&v595 + 1);
      sub_1AF5B23C4(0);
      v535 = v174;
      v555 = v594;
      v556 = v595;
      v557 = v596;
      v558 = v597;
      v553 = v593[0];
      v554 = v593[1];
      sub_1AF5DD298(&v553, v598);
      v519 = v173;
      do
      {
        v175 = *(v172 + 40);
        v176 = *(v175 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v176);
        os_unfair_lock_lock(*(v175 + 344));
        v177 = *(v175 + 24);

        memset(v598, 0, 40);
        *&v571 = 0;
        v570 = 0u;
        v569 = 0u;
        v178 = sub_1AF65A4B4(v177, 0, 0, v535, &off_1F250F310, v598, &v569);

        sub_1AFA9E8FC(&v569, sub_1AF5C4448);
        sub_1AFA9E8FC(v598, sub_1AF5C4448);
        if (sub_1AF649CEC(v178))
        {
          sub_1AF649D40(v178, v539);
        }

        else
        {
          v534 = v172;
          v521 = v129;
          v180 = *(v175 + 232);
          v179 = *(v175 + 240);
          LODWORD(v532) = *(v175 + 120);
          v526 = *(v175 + 28);
          v181 = *(v175 + 32);
          v182 = *(v175 + 16);
          v183 = *(v175 + 40);
          v184 = v183[200];

          if ((v184 & 1) != 0 || *(v185 + 200) == 1)
          {
            *(v182 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v183 = *(v175 + 40);
          }

          v186 = v183[212];
          v187 = v185;
          v540 = v182;
          LODWORD(v527) = v178;
          if (v186)
          {
            LODWORD(v528) = 0;
          }

          else
          {
            LODWORD(v528) = *(v185 + 212);
          }

          v188 = v183[208];
          v538 = *(v175 + 128);
          v189 = *(v175 + 256);
          v190 = v179;
          v191 = v521;
          sub_1AF5B4FCC(v183, v180, v190, 0, v175);
          v521 = v191;
          v536 = *(v175 + 256);
          v537 = v189;
          v192 = v536 - v189;
          if (v536 == v189)
          {
            v193 = 0;
          }

          else
          {
            v193 = v189;
          }

          v194 = v193;
          *&v569 = v193;
          v195 = *(*(v175 + 40) + 24);
          v196 = *(v195 + 16);
          if (v196)
          {
            LODWORD(v522) = v181;
            LODWORD(v525) = v188;
            v197 = v195 + 32;

            v198 = 0;
            v199 = v538;
            v200 = v192;
            v201 = v187;
            do
            {
              v202 = (v197 + 40 * v198);
              if ((v202[4] & 1) == 0)
              {
                v203 = *v202;
                v205 = v202[2];
                v204 = v202[3];
                v206 = *(v201 + 24);
                v207 = *(v206 + 16);
                if (v207)
                {
                  v208 = (v206 + 32);
                  while (*v208 != v203)
                  {
                    v208 += 5;
                    if (!--v207)
                    {
                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:
                  sub_1AF640BC8(v199 + v205 * v194 + v204, v200);
                  v201 = v187;
                  v200 = v192;
                  v199 = v538;
                }
              }

              ++v198;
            }

            while (v198 != v196);
            v192 = v200;

            LOBYTE(v188) = v525;
            LOBYTE(v181) = v522;
          }

          if (*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v540 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v175 + 72) * v192);
          }

          if (*(v175 + 184))
          {
            v209 = 0;
          }

          else
          {
            v209 = *(v175 + 168);
          }

          *&v548 = 0;

          *&v598[1] = v209;
          DWORD2(v598[1]) = -1;
          *&v598[2] = v537;
          *(&v598[2] + 1) = v536;
          *&v599 = v537;
          *(&v599 + 1) = v536;
          *&v598[0] = v537;
          *(&v598[0] + 1) = v536;
          if (v192 < 1)
          {
          }

          else
          {
            v525 = &v486;

            v210 = v187;

            v211 = v532;
            v212 = v526;
            v213 = v527;
            v214 = v188;
            v215 = v528;
            v216 = v538;
            do
            {

              LOBYTE(v543) = v181;
              LOBYTE(v485) = v214;
              sub_1AF626158(v213, v212 | (v181 << 32), v211, v540, v598, v212 | (v181 << 32), v175, v210, 0, 0, 0, 0, &v569, v216, &v548, v485, v213, v215, v539);
            }

            while ((*(&v598[0] + 1) - *&v598[0]) > 0);
          }

          v217 = *(v175 + 192);
          v24 = v530;
          v129 = v521;
          if (v217)
          {
            v218 = *(v175 + 208);
            v220 = v536;
            v219 = v537;
            sub_1AF75D364(v537, v536, v217);
            sub_1AF75D364(v219, v220, v218);
          }

          v172 = v534;
          v173 = v519;
        }

        v172 += 48;
        os_unfair_lock_unlock(*(v175 + 344));
        os_unfair_lock_unlock(*(v175 + 376));
      }

      while (v172 != v173);
      sub_1AFA9BF94(v593, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v593, &qword_1ED725EA0, &type metadata for QueryResult);
      v171 = v508;
    }

    else
    {
      sub_1AFA9BF94(v593, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v221 = v520;
    if (v171 > 0)
    {
      v221 = 1;
    }

    LODWORD(v520) = v221;
  }

  if (v514)
  {
    sub_1AFA61FF8(v541, v514, sub_1AFD3044C);
    LODWORD(v520) = v520 | v222;
  }

  v521 = v129;
  if (v515)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v224 = v541;
  v225 = sub_1AFA82F6C(v541, v516 & 1);

  v226 = *(v224 + 16);

  if (v226)
  {
    v508 = sub_1AF8BB88C();
    v519 = v227;
  }

  else
  {
    v508 = 0;
    v519 = 0xE000000000000000;
  }

  v228 = v520 | v225;
  v229 = v524[14];
  v608[0] = v524[13];
  v608[1] = v229;
  v609 = *(v524 + 30);
  sub_1AF6B06C0(v502, v608, 0x200000000, v598);
  v230 = *&v598[0];
  if (!*&v598[0])
  {

    if ((v228 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v601 <= 0 || (v489 = *(&v599 + 1)) == 0)
  {

    sub_1AFA9BF94(v598, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v228 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v488 = *(&v598[2] + 1);
  v495 = *(&v600 + 1);
  v494 = *(*(&v600 + 1) + 32);
  v493 = *(v600 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B23C4(0);
  v232 = v231;
  v605 = v230;
  v606 = *(v598 + 8);
  v607 = *(&v598[1] + 8);
  v525 = (v502 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v571 = v598[2];
  v572 = v599;
  v573 = v600;
  v574 = v601;
  v569 = v598[0];
  v570 = v598[1];
  sub_1AF5DD298(&v569, &v553);
  v233 = 0;
  v532 = v232;
  v487 = v232 - 8;
  v520 = (v506 + 2);
  v500 = (v506 + 4);
  v491 = (v506 + 6);
  v507 += 7;
  v497 = &v549;
  v505 = (v506 + 7);
  ++v506;
  v496 = &v554;
  v498 = xmmword_1AFE21110;
  v522 = xmmword_1AFE72020;
LABEL_171:
  v492 = v233;
  v234 = (v488 + 48 * v233);
  v235 = *v234;
  v527 = v234[1];
  v236 = *(v234 + 3);
  v535 = *(v234 + 2);
  v237 = *(v234 + 4);
  v238 = *(v234 + 5);
  if (v493)
  {
    v239 = *(v238 + 376);

    os_unfair_lock_lock(v239);
    os_unfair_lock_lock(*(v238 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v494);
  v240 = v495;
  v241 = *(v495 + 4);
  v618[0] = *(v495 + 3);
  v618[1] = v241;
  v619 = v495[10];
  v242 = *(*(*(*(v238 + 40) + 16) + 32) + 16) + 1;
  v240[6] = ecs_stack_allocator_allocate(v495[4], 48 * v242, 8);
  v240[7] = v242;
  v240[9] = 0;
  v240[10] = 0;
  v240[8] = 0;
  v243 = v535;
  v539 = sub_1AF64B110(v533, &off_1F255B8D0, v535, v236, v237, v240);
  v540 = sub_1AF64B110(v532, &off_1F250F310, v243, v236, v237, v240);
  if (v243)
  {
    if (!v237)
    {
      goto LABEL_314;
    }

    v527 = *(v511 + 72);
    v526 = *(*v487 + 72);
    v504 = v238;
    while (1)
    {
      v247 = *v535;
      v534 = v237;
      ++v535;

      if (*(v238 + 184))
      {
        goto LABEL_324;
      }

      v249 = *(*(v238 + 168) + 4 * v247);
      v250 = *(*(v248 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v249 + 8);

      v251 = v249 == -1 && v250 == 0;
      if (v251 || (v249 & 0x80000000) != 0 || v525[1] <= v249)
      {
        break;
      }

      v252 = *v525 + 12 * v249;
      if (v250 != -1 && *(v252 + 8) != v250)
      {
        break;
      }

      v254 = *(*(*(v502 + 88) + 8 * *(v252 + 6) + 32) + 16);
      v255 = *(v254 + 128);
      if (!*(v255 + 16))
      {
        break;
      }

      v256 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v257 & 1) == 0 || *(*(v254 + 24) + 16 * *(*(v255 + 56) + 8 * v256) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_180:
      v540 = (v540 + v526);
      v539 += v527;
      v237 = v534 - 1;
      if (v534 == 1)
      {
        goto LABEL_313;
      }
    }

    dispatch_group_enter(v542);
    v258 = *(v238 + 64);
    v259 = *(v238 + 80);
    v563 = *(v238 + 112);
    v261 = *(v238 + 80);
    v260 = *(v238 + 96);
    v561 = v259;
    v562 = v260;
    v262 = *(v238 + 64);
    v559 = *(v238 + 48);
    v560 = v258;
    v263 = *(v238 + 96);
    v555 = v261;
    v556 = v263;
    LOBYTE(v557) = *(v238 + 112);
    v553 = *(v238 + 48);
    v554 = v262;
    v264 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v266 = v265;
    v566 = v555;
    v567 = v556;
    v568 = v557;
    v565 = v554;
    v564 = v553;

    sub_1AF5DD36C(&v559, &v548);
    sub_1AF5DD3C8(&v564);
    if (v266)
    {

      v537 = 0;
      v267 = 0;
      v268 = 0;
    }

    else
    {
      v269 = *(v238 + 128);

      v270 = (v269 + v264 + 24 * v247);
      v537 = *v270;
      v267 = *(v270 + 1);
      v268 = *(v270 + 2);
    }

    if (*(v238 + 184))
    {
      goto LABEL_324;
    }

    v536 = v267;
    v272 = *(*(v238 + 168) + 4 * v247);
    v273 = *(*(v271 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v272 + 8);

    v274 = swift_allocObject();
    v274[2] = sub_1AFA9EC2C;
    v274[3] = v24;
    v538 = v274;
    v275 = v541;
    v274[4] = v542;
    v276 = *(v275 + 16);

    if (v276)
    {
      v277 = *(v276 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v278 = v542;

      if ((v277 & 1) == 0 || *(v541 + 3048) != 1)
      {
        sub_1AF81F330();
        v280 = swift_allocError();
        v281 = v280;
        *v282 = v522;
        if (!*(v531 + 16))
        {
          v283 = v513;
          v284 = *(v513 + 72);
          v285 = v280;
          os_unfair_lock_lock(v284);
          v286 = *(v531 + 16);
          *(v531 + 16) = v281;
          v287 = v281;

          os_unfair_lock_unlock(*(v283 + 72));
        }

        dispatch_group_leave(v278);

        goto LABEL_206;
      }
    }

    else
    {
      swift_retain_n();
      v288 = v542;
    }

    v289 = sub_1AFAAAC40(v279);
    v290 = v541;
    v291 = v540 + v532[9];
    v292 = *v291;
    LOBYTE(v291) = v291[8];
    v528 = v289;
    v293 = v291 | (v289 != v292);
    os_unfair_lock_lock(*(v541 + 72));
    v294 = *(v290 + 80);
    if (*(v294 + 16) && (v295 = sub_1AF41ACD4(v533, v272 | (v273 << 32)), (v296 & 1) != 0))
    {
      sub_1AF85B3D4(*(v294 + 56) + 96 * v295, &v553);
      if (BYTE8(v558) != 255)
      {
        sub_1AF85B3D4(&v553, &v548);
        sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v547 + 9) = *(v552 + 9);
        v545 = v550;
        v546 = v551;
        v547[0] = v552[0];
        v543 = v548;
        v544 = v549;
        if (!BYTE8(v552[1]))
        {
          v344 = v543;
          v345 = (v543 != v528) | v293;
          os_unfair_lock_unlock(*(v541 + 72));
          if (v345)
          {
            if (v344 == v528)
            {
              v278 = v542;
              dispatch_group_leave(v542);
LABEL_206:

              v24 = v530;
LABEL_178:

              v245 = v536;
              v244 = v537;
              v246 = v268;
LABEL_179:
              sub_1AF487074(v244, v245, v246);
              goto LABEL_180;
            }

LABEL_216:
            v515 = v272;
            v517 = v268;
            v297 = v532;
            v516 = swift_allocBox();
            v299 = v298;
            sub_1AFA5BE44(v298);
            v300 = v299 + *(v297 + 36);
            v301 = v528;
            *v300 = v528;
            *(v300 + 8) = 0;
            sub_1AFA9DE54(v539, v299, type metadata accessor for ShaderScript);
            sub_1AFA9DE54(v299, v540, sub_1AF5B23C4);
            v302 = v541;
            os_unfair_lock_lock(*(v541 + 72));
            *&v553 = v301;
            BYTE8(v558) = 0;
            sub_1AF825824(&v553, v533, v272 | (v273 << 32));
            os_unfair_lock_unlock(*(v302 + 72));
            v303 = *(v302 + 16);

            if (v303)
            {
              v304 = v503;
              v305 = v529;
              (*v520)(v503, v303 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v529);

              (*v505)(v304, 0, 1, v305);
              v306 = v518;
              (*v500)(v518, v304, v305);
            }

            else
            {
              v307 = v503;
              (*v505)(v503, 1, 1, v529);
              v306 = v518;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v308 = sub_1AFDFC538();
              sub_1AF477C68(v308, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v491)(v307, 1, v529) != 1)
              {
                sub_1AFA9C470(v307, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v514 = v273;
            v309 = sub_1AFDFC538();
            sub_1AF477C68(v309, qword_1ED73B608);
            v310 = sub_1AFDFC528();
            v311 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v312 = swift_slowAlloc();
              *v312 = 0;
              v313 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v310, v311, v313, "buildScript", "", v312, 2u);
              MEMORY[0x1B271DEA0](v312, -1, -1);
            }

            (*v520)(v509, v306, v529);
            sub_1AFDFC578();
            swift_allocObject();
            v314 = sub_1AFDFC568();
            sub_1AFA9E3C8(v539, v523, type metadata accessor for ShaderScript);
            v315 = (*(v511 + 80) + 400) & ~*(v511 + 80);
            v316 = (v507 + v315) & 0xFFFFFFFFFFFFFFF8;
            v317 = (v316 + 23) & 0xFFFFFFFFFFFFFFF8;
            v318 = (v317 + 27) & 0xFFFFFFFFFFFFFFF8;
            v319 = swift_allocObject();
            v320 = v533;
            *(v319 + 16) = v541;
            *(v319 + 24) = v320;
            v322 = v514;
            v321 = v515;
            *(v319 + 32) = v515;
            *(v319 + 36) = v322;
            *(v319 + 40) = v528;
            *(v319 + 48) = sub_1AFA9EC20;
            *(v319 + 56) = v538;
            *(v319 + 64) = v314;
            v528 = v314;
            memcpy((v319 + 72), v524, 0x148uLL);
            sub_1AFA9E320(v523, v319 + v315, type metadata accessor for ShaderScript);
            v323 = (v319 + v316);
            v324 = v519;
            *v323 = v508;
            v323[1] = v324;
            v325 = (v319 + v317);
            v326 = v536;
            v327 = v537;
            *v325 = v537;
            v325[1] = v326;
            v328 = v517;
            v325[2] = v517;
            v329 = (v319 + v318);
            *v329 = v321;
            v329[1] = v322;
            *(v319 + ((v318 + 15) & 0xFFFFFFFFFFFFFFF8)) = v516;
            if ((v510 & 1) == 0)
            {
              v514 = *(v541 + 32);
              v338 = swift_allocObject();
              *(v338 + 16) = sub_1AFA9EB70;
              *(v338 + 24) = v319;
              v339 = v338;
              v515 = v338;
              v340 = swift_allocObject();
              *(v340 + 16) = sub_1AFA9EB90;
              *(v340 + 24) = v339;
              *&v550 = sub_1AF6D25EC;
              *(&v550 + 1) = v340;
              *&v548 = MEMORY[0x1E69E9820];
              *(&v548 + 1) = 1107296256;
              *&v549 = sub_1AF6F662C;
              *(&v549 + 1) = &unk_1F255A590;
              v341 = _Block_copy(&v548);
              v537 = v327;
              v342 = v341;

              sub_1AFA9C054(v524, &v553, &qword_1EB633F48, type metadata accessor for ShaderScript, &off_1F255B8D0, &off_1ED72CE68);

              v343 = v536;
              sub_1AF487F80(v327, v536, v328);

              dispatch_sync(v514, v342);
              _Block_release(v342);

              (*v506)(v518, v529);
              swift_isEscapingClosureAtFileLocation();

              v24 = v530;

              sub_1AF487074(v537, v343, v328);
              v238 = v504;
              goto LABEL_180;
            }

            v514 = *(v541 + 40);
            v330 = swift_allocObject();
            *(v330 + 16) = sub_1AFA9EB70;
            *(v330 + 24) = v319;
            v515 = v330;

            sub_1AFA9C054(v524, &v553, &qword_1EB633F48, type metadata accessor for ShaderScript, &off_1F255B8D0, &off_1ED72CE68);

            sub_1AF487F80(v327, v326, v328);
            v331 = qword_1ED730EA0;

            v332 = v328;
            v238 = v504;
            if (v331 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v333 = qword_1ED73B8A0;
            v334 = swift_allocObject();
            v335 = v515;
            *(v334 + 16) = sub_1AFA9EB90;
            *(v334 + 24) = v335;
            v336 = swift_allocObject();
            v336[2] = v333;
            v336[3] = sub_1AF6CC3F0;
            v336[4] = v334;
            *&v555 = sub_1AFA9EC30;
            *(&v555 + 1) = v336;
            *&v553 = MEMORY[0x1E69E9820];
            *(&v553 + 1) = 1107296256;
            *&v554 = sub_1AFCDA044;
            *(&v554 + 1) = &unk_1F255A630;
            v337 = _Block_copy(&v553);
            swift_retain_n();

            [v514 addOperationWithBlock:v337];
            _Block_release(v337);

            (*v506)(v518, v529);

            v24 = v530;

            v245 = v536;
            v244 = v537;
            v246 = v332;
            goto LABEL_179;
          }

LABEL_236:
          v346 = v542;
          v347 = v540;
          sub_1AFA9DE54(v539, v540, type metadata accessor for ShaderScript);
          v348 = v532;
          v349 = *(v533 + 28);
          v350 = *(v347 + v349);
          if (v350)
          {
            v351 = v540;
            v352 = *(v540 + v349 + 8);
            v353 = *v540;
            v354 = v540[1];

            v355 = sub_1AF458B0C(v353, v354);
            v350(*(v351 + v348[13]), v355);

            sub_1AF0FB8EC(v350, v352);
          }

          if (*(v540 + v348[10]) == 1)
          {
            v356 = *(v540 + v348[11]);
            v357 = v356;
          }

          else
          {
            sub_1AF81F330();
            v356 = swift_allocError();
            *v358 = v498;
          }

          v24 = v530;
          if (!*(v531 + 16) && v356)
          {
            v359 = v513;
            v360 = *(v513 + 72);
            v361 = v356;
            os_unfair_lock_lock(v360);
            v362 = *(v531 + 16);
            *(v531 + 16) = v356;
            v363 = v356;

            os_unfair_lock_unlock(*(v359 + 72));
          }

          dispatch_group_leave(v346);

          goto LABEL_178;
        }

        sub_1AFA9C0C8(&v543);
LABEL_215:
        os_unfair_lock_unlock(*(v541 + 72));
        if (v293)
        {
          goto LABEL_216;
        }

        goto LABEL_236;
      }
    }

    else
    {
      *&v558 = 0;
      v556 = 0u;
      v557 = 0u;
      v554 = 0u;
      v555 = 0u;
      v553 = 0u;
      BYTE8(v558) = -1;
    }

    sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_215;
  }

  if (v235 == v527)
  {
    goto LABEL_314;
  }

  v364 = *(v511 + 72);
  v517 = *(*v487 + 72);
  v540 = (v540 + v517 * v235);
  v538 = 24 * v235;
  v539 += v364 * v235;
  v499 = v364;
  while (1)
  {

    if (*(v238 + 184))
    {
      break;
    }

    v369 = *(*(v238 + 168) + 4 * v235);
    v370 = *(*(v368 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v369 + 8);

    v371 = v369 == -1 && v370 == 0;
    if (!v371 && (v369 & 0x80000000) == 0 && v525[1] > v369)
    {
      v372 = *v525 + 12 * v369;
      if (v370 == -1 || *(v372 + 8) == v370)
      {
        v374 = *(*(*(v502 + 88) + 8 * *(v372 + 6) + 32) + 16);
        v375 = *(v374 + 128);
        if (*(v375 + 16))
        {
          v376 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v377 & 1) != 0 && *(*(v374 + 24) + 16 * *(*(v375 + 56) + 8 * v376) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_248;
          }
        }
      }
    }

    dispatch_group_enter(v542);
    v378 = *(v238 + 64);
    v379 = *(v238 + 80);
    v563 = *(v238 + 112);
    v381 = *(v238 + 80);
    v380 = *(v238 + 96);
    v561 = v379;
    v562 = v380;
    v382 = *(v238 + 64);
    v559 = *(v238 + 48);
    v560 = v378;
    v383 = *(v238 + 96);
    v555 = v381;
    v556 = v383;
    LOBYTE(v557) = *(v238 + 112);
    v553 = *(v238 + 48);
    v554 = v382;
    v384 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v386 = v385;
    v566 = v555;
    v567 = v556;
    v568 = v557;
    v565 = v554;
    v564 = v553;

    sub_1AF5DD36C(&v559, &v548);
    sub_1AF5DD3C8(&v564);
    if (v386)
    {

      v537 = 0;
      v387 = 0;
      v388 = 0;
    }

    else
    {
      v389 = *(v238 + 128);

      v390 = (v389 + v538 + v384);
      v537 = *v390;
      v387 = *(v390 + 1);
      v388 = *(v390 + 2);
    }

    v535 = v387;

    if (*(v238 + 184))
    {
      break;
    }

    v536 = v388;
    v392 = *(v238 + 168);
    v534 = v235;
    v393 = *(v392 + 4 * v235);
    v528 = *(*(v391 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v393 + 8);

    v394 = swift_allocObject();
    v394[2] = sub_1AFA9EC2C;
    v394[3] = v24;
    v395 = v541;
    v394[4] = v542;
    v396 = *(v395 + 16);

    if (v396)
    {
      v397 = *(v396 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v398 = v542;

      if ((v397 & 1) == 0 || *(v541 + 3048) != 1)
      {
        sub_1AF81F330();
        v400 = swift_allocError();
        v401 = v400;
        *v402 = v522;
        if (!*(v531 + 16))
        {
          v403 = v513;
          v404 = *(v513 + 72);
          v405 = v400;
          os_unfair_lock_lock(v404);
          v406 = *(v531 + 16);
          *(v531 + 16) = v401;
          v407 = v401;

          v364 = v499;
          os_unfair_lock_unlock(*(v403 + 72));
        }

        dispatch_group_leave(v398);

        goto LABEL_274;
      }
    }

    else
    {
      swift_retain_n();
      v408 = v542;
    }

    v409 = v393;
    v410 = sub_1AFAAAC40(v399);
    v411 = v541;
    v412 = v540 + v532[9];
    v413 = *v412;
    LOBYTE(v412) = v412[8];
    v526 = v410;
    v414 = v412 | (v410 != v413);
    os_unfair_lock_lock(*(v541 + 72));
    v415 = *(v411 + 80);
    if (!*(v415 + 16) || (v416 = sub_1AF41ACD4(v533, v393 | (v528 << 32)), (v417 & 1) == 0))
    {
      *&v558 = 0;
      v556 = 0u;
      v557 = 0u;
      v554 = 0u;
      v555 = 0u;
      v553 = 0u;
      BYTE8(v558) = -1;
LABEL_282:
      sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_283:
      v418 = v541;
      os_unfair_lock_unlock(*(v541 + 72));
      if ((v414 & 1) == 0)
      {
        goto LABEL_305;
      }

      goto LABEL_284;
    }

    sub_1AF85B3D4(*(v415 + 56) + 96 * v416, &v553);
    if (BYTE8(v558) == 255)
    {
      goto LABEL_282;
    }

    sub_1AF85B3D4(&v553, &v548);
    sub_1AFA9BF94(&v553, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v547 + 9) = *(v552 + 9);
    v545 = v550;
    v546 = v551;
    v547[0] = v552[0];
    v543 = v548;
    v544 = v549;
    if (BYTE8(v552[1]))
    {
      sub_1AFA9C0C8(&v543);
      goto LABEL_283;
    }

    v462 = v543;
    v463 = (v543 != v526) | v414;
    v418 = v541;
    os_unfair_lock_unlock(*(v541 + 72));
    if ((v463 & 1) == 0)
    {
LABEL_305:
      v465 = v540;
      sub_1AFA9DE54(v539, v540, type metadata accessor for ShaderScript);
      v466 = v532;
      v467 = *(v533 + 28);
      v468 = *(v465 + v467);
      if (v468)
      {
        v469 = *(v465 + v467 + 8);
        v470 = *v465;
        v471 = v540[1];

        v472 = v471;
        v465 = v540;
        v473 = sub_1AF458B0C(v470, v472);
        v468(*(v465 + v466[13]), v473);

        sub_1AF0FB8EC(v468, v469);
      }

      if (*(v465 + v466[10]) == 1)
      {
        v474 = *(v465 + v466[11]);
        v475 = v474;
      }

      else
      {
        sub_1AF81F330();
        v474 = swift_allocError();
        *v476 = v498;
      }

      v24 = v530;
      if (*(v531 + 16) || !v474)
      {
        v365 = v364;
      }

      else
      {
        v365 = v364;
        v477 = v513;
        v478 = *(v513 + 72);
        v479 = v474;
        os_unfair_lock_lock(v478);
        v480 = *(v531 + 16);
        *(v531 + 16) = v474;
        v481 = v474;

        os_unfair_lock_unlock(*(v477 + 72));
      }

      v235 = v534;
      v366 = v535;
      v367 = v542;
      dispatch_group_leave(v542);

      sub_1AF487074(v537, v366, v536);
      v364 = v365;
      goto LABEL_248;
    }

    if (v462 == v526)
    {
      v464 = v542;
      dispatch_group_leave(v542);

      v24 = v530;
LABEL_274:

      goto LABEL_300;
    }

LABEL_284:
    v514 = v393;
    v419 = v532;
    v420 = swift_allocBox();
    v422 = v421;
    sub_1AFA5BE44(v421);
    v423 = v422 + *(v419 + 36);
    v424 = v526;
    *v423 = v526;
    *(v423 + 8) = 0;
    sub_1AFA9DE54(v539, v422, type metadata accessor for ShaderScript);
    sub_1AFA9DE54(v422, v540, sub_1AF5B23C4);
    os_unfair_lock_lock(*(v418 + 72));
    *&v553 = v424;
    BYTE8(v558) = 0;
    sub_1AF825824(&v553, v533, v409 | (v528 << 32));
    os_unfair_lock_unlock(*(v418 + 72));
    v425 = *(v418 + 16);

    if (v425)
    {
      v426 = v490;
      v427 = v529;
      (*v520)(v490, v425 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v529);

      (*v505)(v426, 0, 1, v427);
      (*v500)(v512, v426, v427);
    }

    else
    {
      v428 = v490;
      (*v505)(v490, 1, 1, v529);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v429 = sub_1AFDFC538();
      sub_1AF477C68(v429, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v491)(v428, 1, v529) != 1)
      {
        sub_1AFA9C470(v428, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v515 = v420;
    v516 = v394;
    v430 = sub_1AFDFC538();
    sub_1AF477C68(v430, qword_1ED73B608);
    v431 = sub_1AFDFC528();
    v432 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v433 = swift_slowAlloc();
      *v433 = 0;
      v434 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v431, v432, v434, "buildScript", "", v433, 2u);
      MEMORY[0x1B271DEA0](v433, -1, -1);
    }

    (*v520)(v509, v512, v529);
    sub_1AFDFC578();
    swift_allocObject();
    v435 = sub_1AFDFC568();
    sub_1AFA9E3C8(v539, v523, type metadata accessor for ShaderScript);
    v436 = (*(v511 + 80) + 400) & ~*(v511 + 80);
    v437 = (v507 + v436) & 0xFFFFFFFFFFFFFFF8;
    v438 = (v437 + 23) & 0xFFFFFFFFFFFFFFF8;
    v439 = (v438 + 27) & 0xFFFFFFFFFFFFFFF8;
    v501 = (v439 + 15) & 0xFFFFFFFFFFFFFFF8;
    v440 = swift_allocObject();
    v441 = v533;
    *(v440 + 16) = v541;
    *(v440 + 24) = v441;
    v442 = v514;
    v443 = v528;
    *(v440 + 32) = v514;
    *(v440 + 36) = v443;
    *(v440 + 40) = v526;
    *(v440 + 48) = sub_1AFA9EC20;
    *(v440 + 56) = v516;
    *(v440 + 64) = v435;
    v526 = v435;
    memcpy((v440 + 72), v524, 0x148uLL);
    sub_1AFA9E320(v523, v440 + v436, type metadata accessor for ShaderScript);
    v444 = (v440 + v437);
    v445 = v519;
    *v444 = v508;
    v444[1] = v445;
    v446 = (v440 + v438);
    v447 = v536;
    v448 = v537;
    v449 = v535;
    *v446 = v537;
    v446[1] = v449;
    v446[2] = v447;
    v450 = (v440 + v439);
    *v450 = v442;
    v450[1] = v443;
    *(v440 + v501) = v515;
    if ((v510 & 1) == 0)
    {
      v528 = *(v541 + 32);
      v457 = v447;
      v458 = swift_allocObject();
      *(v458 + 16) = sub_1AFA9D3D8;
      *(v458 + 24) = v440;
      v459 = swift_allocObject();
      *(v459 + 16) = sub_1AFA9EB90;
      *(v459 + 24) = v458;
      *&v550 = sub_1AF6D25EC;
      *(&v550 + 1) = v459;
      *&v548 = MEMORY[0x1E69E9820];
      *(&v548 + 1) = 1107296256;
      *&v549 = sub_1AF6F662C;
      *(&v549 + 1) = &unk_1F255A428;
      v460 = _Block_copy(&v548);
      v537 = v448;
      v461 = v460;
      v514 = *(&v550 + 1);

      sub_1AFA9C054(v524, &v553, &qword_1EB633F48, type metadata accessor for ShaderScript, &off_1F255B8D0, &off_1ED72CE68);

      sub_1AF487F80(v448, v449, v457);

      dispatch_sync(v528, v461);
      _Block_release(v461);

      (*v506)(v512, v529);
      swift_isEscapingClosureAtFileLocation();

      v24 = v530;

      sub_1AF487074(v537, v449, v457);
      v235 = v534;
      v364 = v499;
      goto LABEL_248;
    }

    v528 = *(v541 + 40);
    v451 = swift_allocObject();
    *(v451 + 16) = sub_1AFA9D3D8;
    *(v451 + 24) = v440;

    sub_1AFA9C054(v524, &v553, &qword_1EB633F48, type metadata accessor for ShaderScript, &off_1F255B8D0, &off_1ED72CE68);

    sub_1AF487F80(v448, v449, v447);
    v452 = qword_1ED730EA0;

    v364 = v499;
    if (v452 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v453 = qword_1ED73B8A0;
    v454 = swift_allocObject();
    *(v454 + 16) = sub_1AFA9EB90;
    *(v454 + 24) = v451;
    v455 = swift_allocObject();
    v455[2] = v453;
    v455[3] = sub_1AF6CC3F0;
    v455[4] = v454;
    *&v555 = sub_1AFA9EC30;
    *(&v555 + 1) = v455;
    *&v553 = MEMORY[0x1E69E9820];
    *(&v553 + 1) = 1107296256;
    *&v554 = sub_1AFCDA044;
    *(&v554 + 1) = &unk_1F255A4C8;
    v456 = _Block_copy(&v553);
    swift_retain_n();

    [v528 addOperationWithBlock:v456];
    _Block_release(v456);

    (*v506)(v512, v529);

    v24 = v530;

LABEL_300:

    sub_1AF487074(v537, v535, v536);
    v235 = v534;
LABEL_248:
    ++v235;
    v540 = (v540 + v517);
    v538 += 24;
    v539 += v364;
    if (v527 == v235)
    {
LABEL_313:
      v228 = 1;
LABEL_314:
      v482 = v521;
      sub_1AF630994(v495, &v605, v618);
      v521 = v482;
      sub_1AF62D29C(v238);
      ecs_stack_allocator_pop_snapshot(v494);
      if (v493)
      {
        os_unfair_lock_unlock(*(v238 + 344));
        os_unfair_lock_unlock(*(v238 + 376));
      }

      v233 = v492 + 1;
      if (v492 + 1 != v489)
      {
        goto LABEL_171;
      }

      sub_1AFA9BF94(v598, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v598, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v228 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(v542);
      }

LABEL_317:

      sub_1AFA62400(v483);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}