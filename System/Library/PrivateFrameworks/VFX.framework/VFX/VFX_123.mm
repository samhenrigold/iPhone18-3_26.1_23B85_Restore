uint64_t sub_1AFA86E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v82 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B234C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2310(0);
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
    sub_1AFA9D3C0(a1);

    sub_1AF449D40(v76, v75);
    sub_1AF0D5A54(v75, &v69);
    swift_dynamicCast();
    v72 = v11;
    v73 = &off_1F250F310;
    v42 = sub_1AF585714(&v69);
    sub_1AFA9D390(a1, v42, v43);
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
  sub_1AFA9D3C0(a1);
  v23 = v77;
  v62 = v78;
  v60 = v79;
  sub_1AF449D40(v76, v75);
  sub_1AF449D40(&v80, v68);
  v24 = MEMORY[0x1E69E7CC0];
  *v22 = 0;
  *(v22 + 4) = v24;
  v22[40] = 0;
  *(v22 + 6) = 0;
  *(v22 + 7) = 0;
  v25 = *(inited + 40);
  v26 = type metadata accessor for ScriptIndex(0);
  (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
  *(v22 + 2) = 0x80000001AFF2B900;
  *(v22 + 3) = &unk_1F25031D0;
  *(v22 + 1) = 0xD0000000000000BFLL;
  v27 = &v22[v11[9]];
  *v27 = 0;
  v27[8] = 1;
  v22[v11[10]] = 0;
  *&v22[v11[11]] = 0;
  v28 = &v22[v11[12]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v22[v11[13]] = v24;
  v30 = v17[9];
  v29 = v17[10];
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
  sub_1AFA9D3C0(v22);
  swift_dynamicCast();
  *&v22[v30] = v23;
  *&v22[v31] = v60;
  *&v22[v29] = v62;
  v34 = *v33;
  v35 = v33[1];
  v62 = v23;

  sub_1AF919DAC(v34, v35);
  sub_1AF0D5A54(v68, &v69);
  swift_dynamicCast();
  sub_1AFA9D390(v22, v61, v36);
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
    sub_1AFA9E3C8(v22, v56, sub_1AF5B2310);
    v47 = v63;
    sub_1AFA9E3C8(v46, v63, type metadata accessor for ParticleInitScript);
    sub_1AFA9E8FC(v46, sub_1AF5B2310);
    sub_1AF5AD3B8(v47, v39);
    sub_1AFA9E8FC(v47, type metadata accessor for ParticleInitScript);
    sub_1AFA9D390(v22, v40, v48);
    sub_1AF5AD548(v40, v39);
    sub_1AFA9D3C0(v40);
    sub_1AFA9E3C8(v22, v46, sub_1AF5B2310);
    sub_1AF5AD6D8(v46, v39);
    v44 = v65;
    sub_1AFA9E8FC(v46, sub_1AF5B2310);
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
    sub_1AFBFE00C(v22, v67);
    v45 = v66;
  }

  v72 = v17;
  v73 = &off_1F2558F90;
  v50 = sub_1AF585714(&v69);
  sub_1AFA9E3C8(v22, v50, sub_1AF5B2310);
  v74 = 0;
  sub_1AF8259D0(&v69, v45, v39);
  v51 = sub_1AF3CB480(v39);
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

    sub_1AFBFE024(v69, v70, v39);
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
  sub_1AFA9E8FC(v22, sub_1AF5B2310);
LABEL_18:
  result = sub_1AF85B3D4(a2, v76);
  if (v81)
  {
    return sub_1AFA9C0C8(v76);
  }

  return result;
}

uint64_t sub_1AFA876A8(uint64_t a1, char a2)
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
        if (v14 == type metadata accessor for ParticleInitScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B234C(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
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
              sub_1AFA86E8C(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF45540);
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

    v32 = sub_1AFA6F718(v31, type metadata accessor for ParticleInitScript);

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

uint64_t sub_1AFA87AFC(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v513) = a6;
  v511 = a2;
  v512 = a5;
  v507 = a4;
  v518 = 0;
  inited = type metadata accessor for ParticleInitScript(0);
  v508 = *(inited - 8);
  MEMORY[0x1EEE9AC00](inited);
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
      sub_1AF5B234C(0);
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
      sub_1AF5B2310(0);
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
          v144 = sub_1AF706E40(v137, &v619);
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

                sub_1AF6FCD50(0);
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

                sub_1AF6FCD50(0);
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
      sub_1AF5B234C(0);
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
    sub_1AFA61FF8(v538, v511, sub_1AFD31938);
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
  v224 = sub_1AFA876A8(v538, v513 & 1);

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
  sub_1AF5B234C(0);
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
  v536 = sub_1AF64B110(inited, &off_1F255B9C0, v532, v235, v236, v239);
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

    v288 = sub_1AFAA2868(v278);
    v289 = v538;
    v290 = v537 + v530[9];
    v291 = *v290;
    LOBYTE(v290) = v290[8];
    v525 = v288;
    v292 = v290 | (v288 != v291);
    os_unfair_lock_lock(*(v538 + 72));
    v293 = *(v289 + 80);
    if (*(v293 + 16) && (v294 = sub_1AF41ACD4(inited, v271 | (v272 << 32)), (v295 & 1) != 0))
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
            sub_1AFA5BD4C(v297);
            v299 = v298 + *(v296 + 36);
            v300 = v525;
            *v299 = v525;
            *(v299 + 8) = 0;
            sub_1AFA9DE54(v536, v298, type metadata accessor for ParticleInitScript);
            sub_1AFA9DE54(v298, v537, sub_1AF5B234C);
            v301 = v538;
            os_unfair_lock_lock(*(v538 + 72));
            *&v550 = v300;
            BYTE8(v555) = 0;
            sub_1AF825824(&v550, inited, v271 | (v272 << 32));
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
            sub_1AFA9E3C8(v536, v520, type metadata accessor for ParticleInitScript);
            v314 = (*(v508 + 80) + 400) & ~*(v508 + 80);
            v315 = (v504 + v314) & 0xFFFFFFFFFFFFFFF8;
            v316 = (v315 + 23) & 0xFFFFFFFFFFFFFFF8;
            v317 = (v316 + 27) & 0xFFFFFFFFFFFFFFF8;
            v318 = swift_allocObject();
            v319 = inited;
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
            sub_1AFA9E320(v520, v318 + v314, type metadata accessor for ParticleInitScript);
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
              *(v337 + 16) = sub_1AFA9EB80;
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
              *(&v546 + 1) = &unk_1F255A298;
              v340 = _Block_copy(&v545);
              v534 = v326;
              v341 = v340;

              sub_1AFA9C054(v521, &v550, qword_1EB633F88, type metadata accessor for ParticleInitScript, &off_1F255B9C0, &off_1ED72A368);

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
            *(v329 + 16) = sub_1AFA9EB80;
            *(v329 + 24) = v318;
            v512 = v329;

            sub_1AFA9C054(v521, &v550, qword_1EB633F88, type metadata accessor for ParticleInitScript, &off_1F255B9C0, &off_1ED72A368);

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
            *(&v551 + 1) = &unk_1F255A338;
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
          sub_1AFA9DE54(v536, v537, type metadata accessor for ParticleInitScript);
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
    v408 = sub_1AFAA2868(v397);
    v409 = v538;
    v410 = v537 + v530[9];
    v411 = *v410;
    LOBYTE(v410) = v410[8];
    v523 = v408;
    v412 = v410 | (v408 != v411);
    os_unfair_lock_lock(*(v538 + 72));
    v413 = *(v409 + 80);
    if (!*(v413 + 16) || (v414 = sub_1AF41ACD4(inited, v391 | (v525 << 32)), (v415 & 1) == 0))
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
      sub_1AFA9DE54(v536, v537, type metadata accessor for ParticleInitScript);
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
    sub_1AFA5BD4C(v419);
    v421 = v420 + *(v417 + 36);
    v422 = v523;
    *v421 = v523;
    *(v421 + 8) = 0;
    sub_1AFA9DE54(v536, v420, type metadata accessor for ParticleInitScript);
    sub_1AFA9DE54(v420, v537, sub_1AF5B234C);
    os_unfair_lock_lock(*(v416 + 72));
    *&v550 = v422;
    BYTE8(v555) = 0;
    sub_1AF825824(&v550, inited, v407 | (v525 << 32));
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
    sub_1AFA9E3C8(v536, v520, type metadata accessor for ParticleInitScript);
    v434 = (*(v508 + 80) + 400) & ~*(v508 + 80);
    v435 = (v504 + v434) & 0xFFFFFFFFFFFFFFF8;
    v436 = (v435 + 23) & 0xFFFFFFFFFFFFFFF8;
    v437 = (v436 + 27) & 0xFFFFFFFFFFFFFFF8;
    v498 = (v437 + 15) & 0xFFFFFFFFFFFFFFF8;
    v438 = swift_allocObject();
    v439 = inited;
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
    sub_1AFA9E320(v520, v438 + v434, type metadata accessor for ParticleInitScript);
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
      *(v456 + 16) = sub_1AFA9D028;
      *(v456 + 24) = v438;
      v457 = swift_allocObject();
      *(v457 + 16) = sub_1AFA9EB90;
      *(v457 + 24) = v456;
      *&v547 = sub_1AF6D25EC;
      *(&v547 + 1) = v457;
      *&v545 = MEMORY[0x1E69E9820];
      *(&v545 + 1) = 1107296256;
      *&v546 = sub_1AF6F662C;
      *(&v546 + 1) = &unk_1F255A130;
      v458 = _Block_copy(&v545);
      v534 = v446;
      v459 = v458;
      v511 = *(&v547 + 1);

      sub_1AFA9C054(v521, &v550, qword_1EB633F88, type metadata accessor for ParticleInitScript, &off_1F255B9C0, &off_1ED72A368);

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
    *(v449 + 16) = sub_1AFA9D028;
    *(v449 + 24) = v438;

    sub_1AFA9C054(v521, &v550, qword_1EB633F88, type metadata accessor for ParticleInitScript, &off_1F255B9C0, &off_1ED72A368);

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
    *(&v551 + 1) = &unk_1F255A1D0;
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

uint64_t sub_1AFA8B5C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v82 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B22D4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2298(0);
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
    sub_1AFA9D010(a1);

    sub_1AF449D40(v76, v75);
    sub_1AF0D5A54(v75, &v69);
    swift_dynamicCast();
    v72 = v11;
    v73 = &off_1F250F310;
    v42 = sub_1AF585714(&v69);
    sub_1AFA9CFE0(a1, v42, v43);
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
  sub_1AFA9D010(a1);
  v23 = v77;
  v62 = v78;
  v60 = v79;
  sub_1AF449D40(v76, v75);
  sub_1AF449D40(&v80, v68);
  v24 = MEMORY[0x1E69E7CC0];
  v22[24] = 0;
  *(v22 + 4) = v24;
  v22[40] = 0;
  *(v22 + 6) = 0;
  *(v22 + 7) = 0;
  v25 = *(updated + 40);
  v26 = type metadata accessor for ScriptIndex(0);
  (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
  *(v22 + 1) = 0x80000001AFF2BA30;
  *(v22 + 2) = &unk_1F2503200;
  *v22 = 0xD0000000000000C3;
  v27 = &v22[v11[9]];
  *v27 = 0;
  v27[8] = 1;
  v22[v11[10]] = 0;
  *&v22[v11[11]] = 0;
  v28 = &v22[v11[12]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v22[v11[13]] = v24;
  v30 = v17[9];
  v29 = v17[10];
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
  sub_1AFA9D010(v22);
  swift_dynamicCast();
  *&v22[v30] = v23;
  *&v22[v31] = v60;
  *&v22[v29] = v62;
  v34 = *v33;
  v35 = v33[1];
  v62 = v23;

  sub_1AF919DAC(v34, v35);
  sub_1AF0D5A54(v68, &v69);
  swift_dynamicCast();
  sub_1AFA9CFE0(v22, v61, v36);
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
    sub_1AFA9E3C8(v22, v56, sub_1AF5B2298);
    v47 = v63;
    sub_1AFA9E3C8(v46, v63, type metadata accessor for ParticleUpdateScript);
    sub_1AFA9E8FC(v46, sub_1AF5B2298);
    sub_1AF5ACF08(v47, v39);
    sub_1AFA9E8FC(v47, type metadata accessor for ParticleUpdateScript);
    sub_1AFA9CFE0(v22, v40, v48);
    sub_1AF5AD098(v40, v39);
    sub_1AFA9D010(v40);
    sub_1AFA9E3C8(v22, v46, sub_1AF5B2298);
    sub_1AF5AD228(v46, v39);
    v44 = v65;
    sub_1AFA9E8FC(v46, sub_1AF5B2298);
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
    sub_1AFBFDFAC(v22, v67);
    v45 = v66;
  }

  v72 = v17;
  v73 = &off_1F2558F90;
  v50 = sub_1AF585714(&v69);
  sub_1AFA9E3C8(v22, v50, sub_1AF5B2298);
  v74 = 0;
  sub_1AF8259D0(&v69, v45, v39);
  v51 = sub_1AF3CB458(v39);
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

    sub_1AFBFDFC4(v69, v70, v39);
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
  sub_1AFA9E8FC(v22, sub_1AF5B2298);
LABEL_18:
  result = sub_1AF85B3D4(a2, v76);
  if (v81)
  {
    return sub_1AFA9C0C8(v76);
  }

  return result;
}

uint64_t sub_1AFA8BDE0(uint64_t a1, char a2)
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
        if (v14 == type metadata accessor for ParticleUpdateScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B22D4(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
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
              sub_1AFA8B5C4(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF45510);
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

    v32 = sub_1AFA6F718(v31, type metadata accessor for ParticleUpdateScript);

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

uint64_t sub_1AFA8C234(uint64_t a1, uint64_t a2, NSObject *a3, int a4, unint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v534) = a6;
  v532 = a5;
  v533 = 0;
  v526 = a4;
  v530 = a2;
  updated = type metadata accessor for ParticleUpdateScript(0);
  v527 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v523 = v13;
  v538 = &v501 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v505 = &v501 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v518 = &v501 - v17;
  v18 = sub_1AFDFC4F8();
  v522 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v517 = &v501 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v525 = &v501 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v531 = &v501 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v545 = a8;

  v528 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v631[0] = *(a7 + 168);
  v631[1] = v26;
  v632 = *(a7 + 25);
  v27 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v516 = v25;
  sub_1AF6B06C0(v25, v631, 0x200000000, v590);
  v529 = a3;
  v555 = a1;
  v557 = v24;
  v537 = a7;
  v543 = v18;
  v535 = v27;
  if (*&v590[0])
  {
    if (v594 >= 1)
    {
      if (*(&v592 + 1))
      {
        v28 = *(&v591 + 1);
        v29 = *(&v593 + 1);
        v30 = *(&v591 + 1) + 48 * *(&v592 + 1);
        sub_1AF5B22D4(0);
        v550 = v31;
        v570 = v591;
        v571 = v592;
        v572 = v593;
        v573 = v594;
        v568 = v590[0];
        v569 = v590[1];
        sub_1AF5DD298(&v568, &v637);
        v554 = v29;
        v539 = v30;
        do
        {
          isa = v28[5].isa;
          v33 = *(isa + 47);
          swift_retain_n();
          os_unfair_lock_lock(v33);
          os_unfair_lock_lock(*(isa + 43));
          v34 = *(isa + 6);

          v639 = 0;
          v637 = 0u;
          v638 = 0u;
          memset(v613, 0, 40);
          v35 = sub_1AF65A4B4(v34, v550, &off_1F250F310, 0, 0, &v637, v613);

          sub_1AFA9E8FC(v613, sub_1AF5C4448);
          sub_1AFA9E8FC(&v637, sub_1AF5C4448);
          if (sub_1AF649CEC(v35))
          {
            sub_1AF649D40(v35, v29);
          }

          else
          {
            v549 = v28;
            v37 = *(isa + 29);
            v36 = *(isa + 30);
            LODWORD(v548) = *(isa + 120);
            v542 = *(isa + 7);
            v38 = *(isa + 32);
            v39 = *(isa + 2);
            v40 = *(isa + 5);
            v41 = v40[200];

            if ((v41 & 1) != 0 || *(v42 + 200) == 1)
            {
              v39[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
              v40 = *(isa + 5);
            }

            v43 = v40[212];
            v44 = v42;
            v556 = v39;
            LODWORD(v546) = v35;
            if (v43)
            {
              LODWORD(v547) = 0;
            }

            else
            {
              LODWORD(v547) = *(v42 + 212);
            }

            v45 = v40[208];
            v553 = *(isa + 16);
            v46 = *(isa + 32);
            v47 = v36;
            v48 = v533;
            sub_1AF5B4FCC(v40, v37, v47, 0, isa);
            v533 = v48;
            v551 = *(isa + 32);
            v552 = v46;
            v49 = v551 - v46;
            if (v551 == v46)
            {
              v50 = 0;
            }

            else
            {
              v50 = v46;
            }

            v51 = v50;
            *&v613[0] = v50;
            v52 = *(*(isa + 5) + 24);
            v53 = *(v52 + 16);
            if (v53)
            {
              LODWORD(v540) = v38;
              LODWORD(v541) = v45;
              v54 = v52 + 32;

              v55 = 0;
              v56 = v553;
              v57 = v44;
              do
              {
                v58 = (v54 + 40 * v55);
                if ((v58[4] & 1) == 0)
                {
                  v59 = *v58;
                  v61 = v58[2];
                  v60 = v58[3];
                  v62 = *(v57 + 24);
                  v63 = *(v62 + 16);
                  if (v63)
                  {
                    v64 = (v62 + 32);
                    while (*v64 != v59)
                    {
                      v64 += 5;
                      if (!--v63)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8(v56 + v61 * v51 + v60, v49);
                    v57 = v44;
                    v56 = v553;
                  }
                }

                ++v55;
              }

              while (v55 != v53);

              LOBYTE(v45) = v541;
              LOBYTE(v38) = v540;
            }

            v29 = v554;
            if (*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters])
            {
              vfx_counters.add(_:_:)(*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(isa + 9) * v49);
            }

            if (*(isa + 184))
            {
              v65 = 0;
            }

            else
            {
              v65 = *(isa + 21);
            }

            *&v608[0] = 0;

            DWORD2(v638) = -1;
            v639 = v552;
            v640 = v551;
            v641 = v552;
            v642 = v551;
            *&v637 = v552;
            *(&v637 + 1) = v551;
            *&v638 = v65;
            if (v49 < 1)
            {
            }

            else
            {
              v541 = &v501;

              v66 = v44;

              v67 = v548;
              v68 = v542;
              v69 = v546;
              v70 = v45;
              v71 = v547;
              v72 = v553;
              do
              {

                LOBYTE(v600) = v38;
                LOBYTE(v500) = v70;
                sub_1AF626158(v69, v68 | (v38 << 32), v67, v556, &v637, v68 | (v38 << 32), isa, v66, 0, 0, 0, 0, v613, v72, v608, v500, v69, v71, v554);
              }

              while ((*(&v637 + 1) - v637) > 0);

              v29 = v554;
            }

            v73 = *(isa + 24);
            v28 = v549;
            v30 = v539;
            if (v73)
            {
              v74 = *(isa + 26);
              v75 = v552;
              v76 = v539;
              v77 = v29;
              v78 = v551;
              sub_1AF75D364(v552, v551, v73);
              v79 = v78;
              v29 = v77;
              v30 = v76;
              sub_1AF75D364(v75, v79, v74);
            }

            a1 = v555;
          }

          v28 += 6;
          os_unfair_lock_unlock(*(isa + 43));
          os_unfair_lock_unlock(*(isa + 47));
        }

        while (v28 != v30);
        sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v541) = 1;
        a3 = v529;
        a7 = v537;
      }

      else
      {
        sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v541) = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  LODWORD(v541) = 0;
LABEL_44:
  v80 = a7[4];
  v629[0] = a7[3];
  v629[1] = v80;
  v630 = *(a7 + 10);
  sub_1AF6B06C0(v516, v629, 0x200000000, v595);
  if (*&v595[0])
  {
    if (v599 >= 1 && *(&v597 + 1))
    {
      v81 = *(&v596 + 1);
      v82 = *(&v598 + 1);
      v83 = *(&v596 + 1) + 48 * *(&v597 + 1);
      sub_1AF5B2298(0);
      v550 = v84;
      v570 = v596;
      v571 = v597;
      v572 = v598;
      v573 = v599;
      v568 = v595[0];
      v569 = v595[1];
      sub_1AF5DD298(&v568, &v637);
      v554 = v82;
      v539 = v83;
      do
      {
        v85 = v81[5].isa;
        v86 = *(v85 + 47);
        swift_retain_n();
        os_unfair_lock_lock(v86);
        os_unfair_lock_lock(*(v85 + 43));
        v87 = *(v85 + 6);

        v639 = 0;
        v637 = 0u;
        v638 = 0u;
        memset(v613, 0, 40);
        v88 = sub_1AF65A4B4(v87, 0, 0, v550, &off_1F2558F90, &v637, v613);

        sub_1AFA9E8FC(v613, sub_1AF5C4448);
        sub_1AFA9E8FC(&v637, sub_1AF5C4448);
        if (sub_1AF649CEC(v88))
        {
          sub_1AF649D40(v88, v82);
        }

        else
        {
          v549 = v81;
          v90 = *(v85 + 29);
          v89 = *(v85 + 30);
          LODWORD(v548) = *(v85 + 120);
          v542 = *(v85 + 7);
          v91 = *(v85 + 32);
          v92 = *(v85 + 2);
          v93 = *(v85 + 5);
          v94 = v93[200];

          if ((v94 & 1) != 0 || *(v95 + 200) == 1)
          {
            v92[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
            v93 = *(v85 + 5);
          }

          v96 = v93[212];
          v97 = v95;
          v556 = v92;
          LODWORD(v546) = v88;
          if (v96)
          {
            LODWORD(v547) = 0;
          }

          else
          {
            LODWORD(v547) = *(v95 + 212);
          }

          v98 = v93[208];
          v553 = *(v85 + 16);
          v99 = *(v85 + 32);
          v100 = v89;
          v101 = v533;
          sub_1AF5B4FCC(v93, v90, v100, 0, v85);
          v533 = v101;
          v551 = *(v85 + 32);
          v552 = v99;
          v102 = v551 - v99;
          if (v551 == v99)
          {
            v103 = 0;
          }

          else
          {
            v103 = v99;
          }

          v104 = v103;
          *&v613[0] = v103;
          v105 = *(*(v85 + 5) + 24);
          v106 = *(v105 + 16);
          if (v106)
          {
            LODWORD(v540) = v91;
            LODWORD(v541) = v98;
            v107 = v105 + 32;

            v108 = 0;
            v109 = v553;
            v110 = v97;
            do
            {
              v111 = (v107 + 40 * v108);
              if ((v111[4] & 1) == 0)
              {
                v112 = *v111;
                v114 = v111[2];
                v113 = v111[3];
                v115 = *(v110 + 24);
                v116 = *(v115 + 16);
                if (v116)
                {
                  v117 = (v115 + 32);
                  while (*v117 != v112)
                  {
                    v117 += 5;
                    if (!--v116)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8(v109 + v114 * v104 + v113, v102);
                  v110 = v97;
                  v109 = v553;
                }
              }

              ++v108;
            }

            while (v108 != v106);

            LOBYTE(v98) = v541;
            LOBYTE(v91) = v540;
          }

          v82 = v554;
          if (*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters])
          {
            vfx_counters.add(_:_:)(*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(v85 + 9) * v102);
          }

          if (*(v85 + 184))
          {
            v118 = 0;
          }

          else
          {
            v118 = *(v85 + 21);
          }

          *&v608[0] = 0;

          DWORD2(v638) = -1;
          v639 = v552;
          v640 = v551;
          v641 = v552;
          v642 = v551;
          *&v637 = v552;
          *(&v637 + 1) = v551;
          *&v638 = v118;
          if (v102 < 1)
          {
          }

          else
          {
            v541 = &v501;

            v119 = v97;

            v120 = v548;
            v121 = v542;
            v122 = v546;
            v123 = v98;
            v124 = v547;
            v125 = v553;
            do
            {

              LOBYTE(v600) = v91;
              LOBYTE(v500) = v123;
              sub_1AF626158(v122, v121 | (v91 << 32), v120, v556, &v637, v121 | (v91 << 32), v85, v119, 0, 0, 0, 0, v613, v125, v608, v500, v122, v124, v554);
            }

            while ((*(&v637 + 1) - v637) > 0);

            v82 = v554;
          }

          v126 = *(v85 + 24);
          v81 = v549;
          v83 = v539;
          if (v126)
          {
            v127 = *(v85 + 26);
            v128 = v552;
            v129 = v539;
            v130 = v82;
            v131 = v551;
            sub_1AF75D364(v552, v551, v126);
            v132 = v131;
            v82 = v130;
            v83 = v129;
            sub_1AF75D364(v128, v132, v127);
          }

          a1 = v555;
        }

        v81 += 6;
        os_unfair_lock_unlock(*(v85 + 43));
        os_unfair_lock_unlock(*(v85 + 47));
      }

      while (v81 != v83);
      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v541) = 1;
      a3 = v529;
      a7 = v537;
    }

    else
    {
      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v541) = 1;
    }
  }

  v133 = *(a7 + 104);
  v627[0] = *(a7 + 88);
  v627[1] = v133;
  v628 = *(a7 + 15);
  sub_1AF6B06C0(v516, v627, 0x200000000, &v600);
  if (v600)
  {
    v551 = v607;
    if (v607 >= 1)
    {
      v550 = v604;
      if (v604)
      {
        v134 = 0;
        v549 = v603;
        v135 = v606;
        v547 = v606;
        v548 = v605;
        v136 = v605[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];
        v556 = v606[4].isa;
        v617 = v600;
        v618 = v601;
        v619 = v602;
        LODWORD(v546) = v136;
        do
        {
          v554 = v134;
          v137 = &v549[6 * v134];
          isa_low = LODWORD(v137->isa);
          isa_high = HIDWORD(v137->isa);
          v140 = LODWORD(v137[1].isa);
          v141 = v137[2].isa;
          v142 = v137[3].isa;
          v144 = v137[4].isa;
          v143 = v137[5].isa;
          if (v136)
          {
            v145 = *(v143 + 376);

            os_unfair_lock_lock(v145);
            os_unfair_lock_lock(*(v143 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v556);
          v146 = *&v135[8].isa;
          v635[0] = *&v135[6].isa;
          v635[1] = v146;
          v636 = v135[10].isa;
          v147 = *(*(*(*(v143 + 40) + 16) + 32) + 16) + 1;
          v135[6].isa = ecs_stack_allocator_allocate(v135[4].isa, 48 * v147, 8);
          v135[7].isa = v147;
          v135[9].isa = 0;
          v135[10].isa = 0;
          v135[8].isa = 0;
          LOBYTE(v568) = 1;
          *&v637 = v548;
          *(&v637 + 1) = v143;
          *&v638 = v135;
          *(&v638 + 1) = v140;
          v639 = (isa_high - isa_low + v140);
          v640 = v551;
          v641 = isa_low;
          v642 = isa_high;
          v643 = 0;
          v644 = 0;
          v645 = 1;
          v646 = v141;
          v647 = v142;
          v648 = v144;
          v148 = v533;
          v149 = sub_1AF706E04(v143, &v637);
          v150 = v646;
          v553 = v148;
          if (v646)
          {
            v151 = v648;
            if (v648)
            {
              v552 = v638;
              v152 = (v149 + 8);
              do
              {
                v150 = (v150 + 8);
                v153 = *(v152 - 1);
                v154 = *v152;

                sub_1AFD08440(v155, v153, v154);

                sub_1AF6FCCD8(0);
                v157 = *(*(v143 + 40) + 16);
                v158 = *(v157 + 128);
                if (*(v158 + 16))
                {
                  v159 = v156;
                  v160 = sub_1AF449CB8(v156);
                  if ((v161 & 1) != 0 && *(*(v157 + 24) + 16 * *(*(v158 + 56) + 8 * v160) + 32) == v159)
                  {
                    *&v568 = v159;
                    *(&v568 + 1) = &off_1F2559388;
                    BYTE8(v570) = 1;
                    MEMORY[0x1EEE9AC00](v160);
                    v500 = v143;

                    sub_1AF63023C(0, v143, sub_1AFA9EC24);

                    sub_1AF635250(&v568);
                  }
                }

                v152 += 2;
                v151 = (v151 - 1);
              }

              while (v151);
            }
          }

          else
          {
            v162 = v641;
            v163 = v642;
            if (v641 != v642)
            {
              v165 = &v149[16 * v641 + 8];
              do
              {
                v166 = *(v165 - 1);
                v167 = *v165;

                sub_1AFD08440(v168, v166, v167);

                sub_1AF6FCCD8(0);
                v170 = *(*(v143 + 40) + 16);
                v171 = *(v170 + 128);
                if (*(v171 + 16))
                {
                  v172 = v169;
                  v173 = sub_1AF449CB8(v169);
                  if ((v174 & 1) != 0 && *(*(v170 + 24) + 16 * *(*(v171 + 56) + 8 * v173) + 32) == v172)
                  {
                    *&v568 = v172;
                    *(&v568 + 1) = &off_1F2559388;
                    BYTE8(v570) = 1;
                    MEMORY[0x1EEE9AC00](v173);
                    v500 = v143;

                    sub_1AF63023C(0, v143, sub_1AFA9EC24);

                    sub_1AF635250(&v568);
                  }
                }

                ++v162;
                v165 += 2;
              }

              while (v163 != v162);
            }
          }

          v135 = v547;
          v164 = v553;
          sub_1AF630994(v547, &v617, v635);
          sub_1AF62D29C(v143);
          ecs_stack_allocator_pop_snapshot(v556);
          v136 = v546;
          if (v546)
          {
            os_unfair_lock_unlock(*(v143 + 344));
            os_unfair_lock_unlock(*(v143 + 376));
          }

          v533 = v164;

          v134 = (v554 + 1);
        }

        while (v554 + 1 != v550);
      }
    }

    sub_1AFA9BF94(&v600, &qword_1ED725EA0, &type metadata for QueryResult);
    a3 = v529;
    a1 = v555;
  }

  v175 = v537[9];
  v625[0] = v537[8];
  v625[1] = v175;
  v626 = *(v537 + 20);
  sub_1AF6B06C0(v516, v625, 0x200000000, v608);
  if (*&v608[0])
  {
    v176 = v612;
    if (v612 >= 1 && *(&v610 + 1))
    {
      v524 = v612;
      v177 = *(&v609 + 1);
      v178 = *(&v611 + 1);
      v179 = *(&v609 + 1) + 48 * *(&v610 + 1);
      sub_1AF5B22D4(0);
      v550 = v180;
      v570 = v609;
      v571 = v610;
      v572 = v611;
      v573 = v612;
      v568 = v608[0];
      v569 = v608[1];
      sub_1AF5DD298(&v568, v613);
      v554 = v178;
      *&v536 = v179;
      do
      {
        v181 = v177[5].isa;
        v182 = *(v181 + 47);
        swift_retain_n();
        os_unfair_lock_lock(v182);
        os_unfair_lock_lock(*(v181 + 43));
        v183 = *(v181 + 6);

        memset(v613, 0, 40);
        *&v586 = 0;
        v585 = 0u;
        v584 = 0u;
        v184 = sub_1AF65A4B4(v183, 0, 0, v550, &off_1F250F310, v613, &v584);

        sub_1AFA9E8FC(&v584, sub_1AF5C4448);
        sub_1AFA9E8FC(v613, sub_1AF5C4448);
        if (sub_1AF649CEC(v184))
        {
          sub_1AF649D40(v184, v178);
        }

        else
        {
          v549 = v177;
          v186 = *(v181 + 29);
          v185 = *(v181 + 30);
          LODWORD(v548) = *(v181 + 120);
          v542 = *(v181 + 7);
          v187 = *(v181 + 32);
          v188 = *(v181 + 2);
          v189 = *(v181 + 5);
          v190 = v189[200];

          if ((v190 & 1) != 0 || *(v191 + 200) == 1)
          {
            v188[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
            v189 = *(v181 + 5);
          }

          v192 = v189[212];
          v193 = v191;
          v556 = v188;
          LODWORD(v546) = v184;
          if (v192)
          {
            LODWORD(v547) = 0;
          }

          else
          {
            LODWORD(v547) = *(v191 + 212);
          }

          v194 = v189[208];
          v553 = *(v181 + 16);
          v195 = *(v181 + 32);
          v196 = v185;
          v197 = v533;
          sub_1AF5B4FCC(v189, v186, v196, 0, v181);
          v533 = v197;
          v551 = *(v181 + 32);
          v552 = v195;
          v198 = v551 - v195;
          if (v551 == v195)
          {
            v199 = 0;
          }

          else
          {
            v199 = v195;
          }

          v200 = v199;
          *&v584 = v199;
          v201 = *(*(v181 + 5) + 24);
          v202 = *(v201 + 16);
          if (v202)
          {
            LODWORD(v539) = v187;
            LODWORD(v540) = v194;
            v203 = v201 + 32;

            v204 = 0;
            v205 = v553;
            v206 = v193;
            do
            {
              v207 = (v203 + 40 * v204);
              if ((v207[4] & 1) == 0)
              {
                v208 = *v207;
                v210 = v207[2];
                v209 = v207[3];
                v211 = *(v206 + 24);
                v212 = *(v211 + 16);
                if (v212)
                {
                  v213 = (v211 + 32);
                  while (*v213 != v208)
                  {
                    v213 += 5;
                    if (!--v212)
                    {
                      goto LABEL_130;
                    }
                  }
                }

                else
                {
LABEL_130:
                  sub_1AF640BC8(v205 + v210 * v200 + v209, v198);
                  v206 = v193;
                  v205 = v553;
                }
              }

              ++v204;
            }

            while (v204 != v202);

            LOBYTE(v194) = v540;
            LOBYTE(v187) = v539;
          }

          v178 = v554;
          if (*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters])
          {
            vfx_counters.add(_:_:)(*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(v181 + 9) * v198);
          }

          if (*(v181 + 184))
          {
            v214 = 0;
          }

          else
          {
            v214 = *(v181 + 21);
          }

          *&v563 = 0;

          *&v613[1] = v214;
          DWORD2(v613[1]) = -1;
          *&v613[2] = v552;
          *(&v613[2] + 1) = v551;
          *&v614 = v552;
          *(&v614 + 1) = v551;
          *&v613[0] = v552;
          *(&v613[0] + 1) = v551;
          if (v198 < 1)
          {
          }

          else
          {
            v540 = &v501;

            v215 = v193;

            v216 = v548;
            v217 = v542;
            v218 = v546;
            v219 = v194;
            v220 = v547;
            v221 = v553;
            do
            {

              LOBYTE(v558) = v187;
              LOBYTE(v500) = v219;
              sub_1AF626158(v218, v217 | (v187 << 32), v216, v556, v613, v217 | (v187 << 32), v181, v215, 0, 0, 0, 0, &v584, v221, &v563, v500, v218, v220, v554);
            }

            while ((*(&v613[0] + 1) - *&v613[0]) > 0);

            v178 = v554;
          }

          v222 = *(v181 + 24);
          v177 = v549;
          v179 = v536;
          if (v222)
          {
            v223 = *(v181 + 26);
            v224 = v552;
            v225 = v536;
            v226 = v178;
            v227 = v551;
            sub_1AF75D364(v552, v551, v222);
            v228 = v227;
            v178 = v226;
            v179 = v225;
            sub_1AF75D364(v224, v228, v223);
          }

          a1 = v555;
        }

        v177 += 6;
        os_unfair_lock_unlock(*(v181 + 43));
        os_unfair_lock_unlock(*(v181 + 47));
      }

      while (v177 != v179);
      sub_1AFA9BF94(v608, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v608, &qword_1ED725EA0, &type metadata for QueryResult);
      a3 = v529;
      v176 = v524;
    }

    else
    {
      sub_1AFA9BF94(v608, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v229 = v541;
    if (v176 > 0)
    {
      v229 = 1;
    }

    LODWORD(v541) = v229;
  }

  if (v530)
  {
    sub_1AFA61FF8(a1, v530, sub_1AFD32D1C);
    LODWORD(v541) = v541 | v230;
  }

  if (v532)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v232 = sub_1AFA8BDE0(a1, v534 & 1);

  v233 = *(a1 + 16);

  if (v233)
  {
    v524 = sub_1AF8BB88C();
    v532 = v234;
  }

  else
  {
    v524 = 0;
    v532 = 0xE000000000000000;
  }

  v235 = v541 | v232;
  v236 = v537[14];
  v623[0] = v537[13];
  v623[1] = v236;
  v624 = *(v537 + 30);
  sub_1AF6B06C0(v516, v623, 0x200000000, v613);
  v237 = *&v613[0];
  if (!*&v613[0])
  {

    if ((v235 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v616 <= 0 || (v504 = *(&v614 + 1)) == 0)
  {

    sub_1AFA9BF94(v613, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v235 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v503 = *(&v613[2] + 1);
  v510 = *(&v615 + 1);
  v509 = *(*(&v615 + 1) + 32);
  v508 = *(v615 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B22D4(0);
  v239 = v238;
  v620 = v237;
  v621 = *(v613 + 8);
  v622 = *(&v613[1] + 8);
  v539 = (v516 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v586 = v613[2];
  v587 = v614;
  v588 = v615;
  v589 = v616;
  v584 = v613[0];
  v585 = v613[1];
  sub_1AF5DD298(&v584, &v568);
  v240 = 0;
  v546 = v239;
  v502 = v239 - 8;
  v534 = (v522 + 2);
  v514 = (v522 + 4);
  v506 = (v522 + 6);
  v523 += 7;
  v512 = &v564;
  v521 = (v522 + 7);
  ++v522;
  v511 = &v569;
  v513 = xmmword_1AFE21110;
  v536 = xmmword_1AFE72020;
LABEL_170:
  v507 = v240;
  v241 = (v503 + 48 * v240);
  v242 = *v241;
  v530 = v241[1];
  v244 = *(v241 + 2);
  v243 = *(v241 + 3);
  v245 = *(v241 + 4);
  v246 = *(v241 + 5);
  if (v508)
  {
    v247 = *(v246 + 376);

    os_unfair_lock_lock(v247);
    os_unfair_lock_lock(*(v246 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v509);
  v248 = v510;
  v249 = *(v510 + 4);
  v633[0] = *(v510 + 3);
  v633[1] = v249;
  v634 = v510[10];
  v250 = *(*(*(*(v246 + 40) + 16) + 32) + 16) + 1;
  v248[6] = ecs_stack_allocator_allocate(v510[4], 48 * v250, 8);
  v248[7] = v250;
  v248[9] = 0;
  v248[10] = 0;
  v248[8] = 0;
  v556 = sub_1AF64B110(updated, &off_1F255BAD0, v244, v243, v245, v248);
  v251 = sub_1AF64B110(v546, &off_1F250F310, v244, v243, v245, v248);
  v252 = v251;
  if (v244)
  {
    v551 = v244;
    v253 = v555;
    if (!v245)
    {
      goto LABEL_313;
    }

    v541 = *(v527 + 72);
    v540 = *(*v502 + 72);
    v519 = v246;
    while (1)
    {
      v258 = *v551;
      v550 = v245;
      ++v551;

      if (*(v246 + 184))
      {
        goto LABEL_324;
      }

      v260 = *(*(v246 + 168) + 4 * v258);
      v261 = *(*(v259 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v260 + 8);

      v262 = v260 == -1 && v261 == 0;
      if (v262 || (v260 & 0x80000000) != 0 || v539[1] <= v260)
      {
        break;
      }

      v263 = *v539 + 12 * v260;
      if (v261 != -1 && *(v263 + 8) != v261)
      {
        break;
      }

      v265 = *(*(*(v516 + 88) + 8 * *(v263 + 6) + 32) + 16);
      v266 = *(v265 + 128);
      if (!*(v266 + 16))
      {
        break;
      }

      v267 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v268 & 1) == 0 || *(*(v265 + 24) + 16 * *(*(v266 + 56) + 8 * v267) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_178:
      v252 = (v540 + v252);
      v556 = v541 + v556;
      v245 = (v550 - 1);
      if (v550 == 1)
      {
        v235 = 1;
        goto LABEL_313;
      }
    }

    dispatch_group_enter(a3);
    v269 = *(v246 + 64);
    v270 = *(v246 + 80);
    v578 = *(v246 + 112);
    v272 = *(v246 + 80);
    v271 = *(v246 + 96);
    v576 = v270;
    v577 = v271;
    v273 = *(v246 + 64);
    v574 = *(v246 + 48);
    v575 = v269;
    v274 = *(v246 + 96);
    v570 = v272;
    v571 = v274;
    LOBYTE(v572) = *(v246 + 112);
    v568 = *(v246 + 48);
    v569 = v273;
    v275 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v277 = v276;
    v581 = v570;
    v582 = v571;
    v583 = v572;
    v580 = v569;
    v579 = v568;

    sub_1AF5DD36C(&v574, &v563);
    sub_1AF5DD3C8(&v579);
    if (v277)
    {

      v553 = 0;
      v549 = 0;
      v278 = 0;
    }

    else
    {
      v279 = *(v246 + 128);

      v280 = (v279 + v275 + 24 * v258);
      v553 = *v280;
      v278 = *(v280 + 2);
      v549 = *(v280 + 1);
    }

    v282 = v546;
    if (*(v246 + 184))
    {
      goto LABEL_324;
    }

    v552 = v278;
    v283 = *(*(v281 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v246 + 168) + 4 * v258) + 8);
    v547 = *(*(v246 + 168) + 4 * v258);
    v548 = v283;

    v284 = swift_allocObject();
    v285 = v557;
    *(v284 + 2) = sub_1AFA9EC2C;
    *(v284 + 3) = v285;
    v554 = v284;
    *(v284 + 4) = a3;
    v286 = *(v253 + 16);

    if (v286)
    {
      v287 = *(v286 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v288 = a3;

      if ((v287 & 1) == 0 || *(v253 + 3048) != 1)
      {
        sub_1AF81F330();
        v290 = swift_allocError();
        v291 = v290;
        *v292 = v536;
        if (!*(v545 + 16))
        {
          v293 = v528;
          v294 = *(v528 + 72);
          v295 = v290;
          os_unfair_lock_lock(v294);
          v296 = *(v545 + 16);
          *(v545 + 16) = v291;
          v297 = v291;

          os_unfair_lock_unlock(*(v293 + 72));
        }

        dispatch_group_leave(v288);

LABEL_204:

        v256 = v553;
        v257 = v549;
LABEL_177:
        sub_1AF487074(v256, v257, v552);
        goto LABEL_178;
      }
    }

    else
    {
      swift_retain_n();
      v298 = a3;
    }

    v299 = v547;
    v300 = sub_1AFAA3818(v289);
    v301 = v252 + v282[9];
    v302 = *v301;
    LOBYTE(v301) = v301[8];
    v542 = v300;
    v303 = v301 | (v300 != v302);
    os_unfair_lock_lock(*(v253 + 72));
    v304 = *(v253 + 80);
    if (*(v304 + 16) && (v305 = sub_1AF41ACD4(updated, v299 | (v548 << 32)), (v306 & 1) != 0))
    {
      sub_1AF85B3D4(*(v304 + 56) + 96 * v305, &v568);
      if (BYTE8(v573) != 255)
      {
        sub_1AF85B3D4(&v568, &v563);
        sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v562 + 9) = *(v567 + 9);
        v560 = v565;
        v561 = v566;
        v562[0] = v567[0];
        v558 = v563;
        v559 = v564;
        if (!BYTE8(v567[1]))
        {
          v354 = v558;
          v355 = (v558 != v542) | v303;
          os_unfair_lock_unlock(*(v253 + 72));
          if (v355)
          {
            if (v354 != v542)
            {
LABEL_214:
              v535 = swift_allocBox();
              v308 = v307;
              sub_1AFA9ED90(v307);
              v309 = v308 + v282[9];
              *(v308 + v282[10]) = 0;
              *(v308 + v282[11]) = 0;
              v310 = (v308 + v282[12]);
              *v310 = 0;
              v310[1] = 0xE000000000000000;
              *(v308 + v282[13]) = MEMORY[0x1E69E7CC0];
              v311 = v542;
              *v309 = v542;
              *(v309 + 8) = 0;
              sub_1AFA9DE54(v556, v308, type metadata accessor for ParticleUpdateScript);
              sub_1AFA9DE54(v308, v252, sub_1AF5B22D4);
              os_unfair_lock_lock(*(v253 + 72));
              *&v568 = v311;
              BYTE8(v573) = 0;
              sub_1AF825824(&v568, updated, v299 | (v548 << 32));
              os_unfair_lock_unlock(*(v253 + 72));
              v312 = *(v253 + 16);

              if (v312)
              {
                v313 = v518;
                v314 = v543;
                (*v534)(v518, v312 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v543);

                (*v521)(v313, 0, 1, v314);
                v315 = v531;
                (*v514)(v531, v313, v314);
              }

              else
              {
                v316 = v518;
                (*v521)(v518, 1, 1, v543);
                v315 = v531;
                if (qword_1ED7270F0 != -1)
                {
                  swift_once();
                }

                v317 = sub_1AFDFC538();
                sub_1AF477C68(v317, qword_1ED73B608);
                sub_1AFDFC528();
                sub_1AFDFC4D8();
                if ((*v506)(v316, 1, v543) != 1)
                {
                  sub_1AFA9C470(v316, &qword_1EB633050, MEMORY[0x1E69E93B8]);
                }
              }

              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v530 = v252;
              v318 = sub_1AFDFC538();
              sub_1AF477C68(v318, qword_1ED73B608);
              v319 = sub_1AFDFC528();
              v320 = sub_1AFDFDB88();
              if (sub_1AFDFDCE8())
              {
                v321 = swift_slowAlloc();
                *v321 = 0;
                v322 = sub_1AFDFC4E8();
                _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v319, v320, v322, "buildScript", "", v321, 2u);
                MEMORY[0x1B271DEA0](v321, -1, -1);
              }

              (*v534)(v525, v315, v543);
              sub_1AFDFC578();
              swift_allocObject();
              v323 = sub_1AFDFC568();
              sub_1AFA9E3C8(v556, v538, type metadata accessor for ParticleUpdateScript);
              v324 = (*(v527 + 80) + 400) & ~*(v527 + 80);
              v325 = (v523 + v324) & 0xFFFFFFFFFFFFFFF8;
              v326 = (v325 + 23) & 0xFFFFFFFFFFFFFFF8;
              v327 = (v326 + 27) & 0xFFFFFFFFFFFFFFF8;
              v328 = swift_allocObject();
              v329 = updated;
              *(v328 + 16) = v555;
              *(v328 + 24) = v329;
              v330 = v547;
              v331 = v548;
              *(v328 + 32) = v547;
              *(v328 + 36) = v331;
              *(v328 + 40) = v542;
              *(v328 + 48) = sub_1AFA9EC20;
              *(v328 + 56) = v554;
              *(v328 + 64) = v323;
              v542 = v323;
              memcpy((v328 + 72), v537, 0x148uLL);
              sub_1AFA9E320(v538, v328 + v324, type metadata accessor for ParticleUpdateScript);
              v332 = (v328 + v325);
              v333 = v532;
              *v332 = v524;
              v332[1] = v333;
              v334 = (v328 + v326);
              v335 = v552;
              v336 = v553;
              v337 = v549;
              *v334 = v553;
              v334[1] = v337;
              v334[2] = v335;
              v338 = (v328 + v327);
              *v338 = v330;
              v338[1] = v331;
              *(v328 + ((v327 + 15) & 0xFFFFFFFFFFFFFFF8)) = v535;
              if (v526)
              {
                v548 = *(v555 + 40);
                v339 = swift_allocObject();
                *(v339 + 16) = sub_1AFA9EB7C;
                *(v339 + 24) = v328;

                sub_1AFA9C054(v537, &v568, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, &off_1ED728EB8);

                sub_1AF487F80(v336, v337, v335);
                v340 = qword_1ED730EA0;

                a3 = v529;
                v252 = v530;
                v341 = v337;
                v246 = v519;
                if (v340 != -1)
                {
                  swift_once();
                }

                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v342 = qword_1ED73B8A0;
                v343 = swift_allocObject();
                *(v343 + 16) = sub_1AFA9EB90;
                *(v343 + 24) = v339;
                v344 = swift_allocObject();
                v344[2] = v342;
                v344[3] = sub_1AF6CC3F0;
                v344[4] = v343;
                *&v570 = sub_1AFA9EC30;
                *(&v570 + 1) = v344;
                *&v568 = MEMORY[0x1E69E9820];
                *(&v568 + 1) = 1107296256;
                *&v569 = sub_1AFCDA044;
                *(&v569 + 1) = &unk_1F255A040;
                v345 = _Block_copy(&v568);
                swift_retain_n();

                [v548 addOperationWithBlock_];
                _Block_release(v345);

                (*v522)(v531, v543);

                sub_1AF487074(v553, v341, v552);
                v253 = v555;
              }

              else
              {
                v547 = *(v555 + 32);
                v346 = swift_allocObject();
                v346[2] = sub_1AFA9EB7C;
                v346[3] = v328;
                v347 = v346;
                v548 = v346;
                v348 = swift_allocObject();
                *(v348 + 16) = sub_1AFA9EB90;
                *(v348 + 24) = v347;
                *&v565 = sub_1AF6D25EC;
                *(&v565 + 1) = v348;
                *&v563 = MEMORY[0x1E69E9820];
                *(&v563 + 1) = 1107296256;
                *&v564 = sub_1AF6F662C;
                *(&v564 + 1) = &unk_1F2559FA0;
                v349 = _Block_copy(&v563);
                v553 = v336;
                v350 = v349;
                v520 = *(&v565 + 1);

                sub_1AFA9C054(v537, &v568, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, &off_1ED728EB8);

                v351 = v552;
                sub_1AF487F80(v336, v337, v552);

                dispatch_sync(v547, v350);
                _Block_release(v350);

                (*v522)(v531, v543);
                swift_isEscapingClosureAtFileLocation();
                v352 = v529;

                v353 = v351;
                a3 = v352;
                sub_1AF487074(v553, v337, v353);
                v253 = v555;
                v252 = v530;
                v246 = v519;
              }

              goto LABEL_178;
            }

            dispatch_group_leave(a3);

            goto LABEL_204;
          }

LABEL_234:
          sub_1AFA9DE54(v556, v252, type metadata accessor for ParticleUpdateScript);
          v356 = v252[6];
          if (v356)
          {
            v357 = v252[7];
            v359 = *v252;
            v358 = v252[1];

            v360 = v359;
            v253 = v555;
            v361 = sub_1AF458B0C(v360, v358);
            v356(*(v252 + v282[13]), v361);

            sub_1AF0FB8EC(v356, v357);
          }

          if (*(v252 + v282[10]) == 1)
          {
            v362 = *(v252 + v282[11]);
            v363 = v362;
          }

          else
          {
            sub_1AF81F330();
            v362 = swift_allocError();
            *v364 = v513;
          }

          if (!*(v545 + 16) && v362)
          {
            v365 = v528;
            v366 = *(v528 + 72);
            v367 = v362;
            os_unfair_lock_lock(v366);
            v368 = *(v545 + 16);
            *(v545 + 16) = v362;
            v369 = v362;

            os_unfair_lock_unlock(*(v365 + 72));
          }

          v254 = v549;
          v255 = v553;
          dispatch_group_leave(a3);

          v256 = v255;
          v257 = v254;
          goto LABEL_177;
        }

        sub_1AFA9C0C8(&v558);
LABEL_213:
        os_unfair_lock_unlock(*(v253 + 72));
        if (v303)
        {
          goto LABEL_214;
        }

        goto LABEL_234;
      }
    }

    else
    {
      *&v573 = 0;
      v571 = 0u;
      v572 = 0u;
      v569 = 0u;
      v570 = 0u;
      v568 = 0u;
      BYTE8(v573) = -1;
    }

    sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_213;
  }

  v370 = v235;
  v371 = v530;
  if (v242 == v530)
  {
    v372 = v533;
    v235 = v370;
    goto LABEL_314;
  }

  v373 = *(v527 + 72);
  v540 = *(*v502 + 72);
  v541 = v373;
  v374 = &v251[v540 * v242];
  v554 = &v556[v373 * v242];
  v375 = v242;
  v376 = 24 * v242;
  while (1)
  {
    v556 = v374;

    if (*(v246 + 184))
    {
      break;
    }

    v381 = *(*(v246 + 168) + 4 * v375);
    v382 = *(*(v380 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v381 + 8);

    v383 = v381 == -1 && v382 == 0;
    if (!v383 && (v381 & 0x80000000) == 0 && v539[1] > v381)
    {
      v384 = *v539 + 12 * v381;
      if (v382 == -1 || *(v384 + 8) == v382)
      {
        v386 = *(*(*(v516 + 88) + 8 * *(v384 + 6) + 32) + 16);
        v387 = *(v386 + 128);
        if (*(v387 + 16))
        {
          v388 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v389 & 1) != 0 && *(*(v386 + 24) + 16 * *(*(v387 + 56) + 8 * v388) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_250;
          }
        }
      }
    }

    dispatch_group_enter(a3);
    v390 = *(v246 + 64);
    v391 = *(v246 + 80);
    v578 = *(v246 + 112);
    v393 = *(v246 + 80);
    v392 = *(v246 + 96);
    v576 = v391;
    v577 = v392;
    v394 = *(v246 + 64);
    v574 = *(v246 + 48);
    v575 = v390;
    v395 = *(v246 + 96);
    v570 = v393;
    v571 = v395;
    LOBYTE(v572) = *(v246 + 112);
    v568 = *(v246 + 48);
    v569 = v394;
    v396 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v398 = v397;
    v581 = v570;
    v582 = v571;
    v583 = v572;
    v580 = v569;
    v579 = v568;

    sub_1AF5DD36C(&v574, &v563);
    sub_1AF5DD3C8(&v579);
    if (v398)
    {

      v552 = 0;
      v399 = 0;
      v400 = 0;
    }

    else
    {
      v401 = *(v246 + 128);

      v402 = (v401 + v376 + v396);
      v552 = *v402;
      v399 = *(v402 + 1);
      v400 = *(v402 + 2);
    }

    v551 = v399;

    if (*(v246 + 184))
    {
      break;
    }

    v553 = v400;
    v404 = *(v403 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v548 = *(*(v246 + 168) + 4 * v375);
    v549 = *(v404 + 12 * v548 + 8);
    v550 = v376;

    v405 = swift_allocObject();
    v406 = v557;
    v405[2] = sub_1AFA9EC2C;
    v405[3] = v406;
    v405[4] = a3;
    v407 = *(v555 + 16);

    if (v407)
    {
      v408 = *(v407 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v409 = a3;

      if ((v408 & 1) == 0 || *(v555 + 3048) != 1)
      {
        sub_1AF81F330();
        v377 = swift_allocError();
        v378 = v377;
        *v379 = v536;
        if (!*(v545 + 16))
        {
          v434 = v375;
          v435 = v528;
          v436 = *(v528 + 72);
          v437 = v377;
          os_unfair_lock_lock(v436);
          v438 = *(v545 + 16);
          *(v545 + 16) = v378;
          v439 = v378;

          v440 = *(v435 + 72);
          v375 = v434;
          v371 = v530;
          os_unfair_lock_unlock(v440);
        }

        dispatch_group_leave(v409);

        sub_1AF487074(v552, v551, v553);
        goto LABEL_249;
      }
    }

    else
    {
      swift_retain_n();
      v411 = a3;
    }

    v412 = v548;
    v413 = sub_1AFAA3818(v410);
    v414 = v555;
    v415 = &v556[v546[9]];
    v416 = *v415;
    LOBYTE(v415) = v415[8];
    v547 = v413;
    v417 = v415 | (v413 != v416);
    os_unfair_lock_lock(*(v555 + 72));
    v418 = *(v414 + 80);
    v419 = *(v418 + 16);
    v542 = v375;
    if (!v419 || (v420 = sub_1AF41ACD4(updated, v412 | (v549 << 32)), (v421 & 1) == 0))
    {
      *&v573 = 0;
      v571 = 0u;
      v572 = 0u;
      v569 = 0u;
      v570 = 0u;
      v568 = 0u;
      BYTE8(v573) = -1;
LABEL_281:
      sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
      goto LABEL_282;
    }

    sub_1AF85B3D4(*(v418 + 56) + 96 * v420, &v568);
    if (BYTE8(v573) == 255)
    {
      goto LABEL_281;
    }

    sub_1AF85B3D4(&v568, &v563);
    sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v562 + 9) = *(v567 + 9);
    v560 = v565;
    v561 = v566;
    v562[0] = v567[0];
    v558 = v563;
    v559 = v564;
    if (BYTE8(v567[1]))
    {
      sub_1AFA9C0C8(&v558);
LABEL_282:
      v422 = v555;
      os_unfair_lock_unlock(*(v555 + 72));
      if ((v417 & 1) == 0)
      {
        goto LABEL_303;
      }

LABEL_283:
      v423 = v546;
      v424 = swift_allocBox();
      v426 = v425;
      sub_1AFA9ED90(v425);
      v427 = v426 + v423[9];
      *(v426 + v423[10]) = 0;
      *(v426 + v423[11]) = 0;
      v428 = (v426 + v423[12]);
      *v428 = 0;
      v428[1] = 0xE000000000000000;
      *(v426 + v423[13]) = MEMORY[0x1E69E7CC0];
      v429 = v547;
      *v427 = v547;
      *(v427 + 8) = 0;
      sub_1AFA9DE54(v554, v426, type metadata accessor for ParticleUpdateScript);
      sub_1AFA9DE54(v426, v556, sub_1AF5B22D4);
      os_unfair_lock_lock(*(v422 + 72));
      *&v568 = v429;
      BYTE8(v573) = 0;
      sub_1AF825824(&v568, updated, v412 | (v549 << 32));
      os_unfair_lock_unlock(*(v422 + 72));
      v430 = *(v422 + 16);

      if (v430)
      {
        v431 = v505;
        v432 = v543;
        (*v534)(v505, v430 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v543);

        (*v521)(v431, 0, 1, v432);
        v433 = v517;
        (*v514)(v517, v431, v432);
      }

      else
      {
        v441 = v505;
        (*v521)(v505, 1, 1, v543);
        v433 = v517;
        if (qword_1ED7270F0 != -1)
        {
          swift_once();
        }

        v442 = sub_1AFDFC538();
        sub_1AF477C68(v442, qword_1ED73B608);
        sub_1AFDFC528();
        sub_1AFDFC4D8();
        if ((*v506)(v441, 1, v543) != 1)
        {
          sub_1AFA9C470(v441, &qword_1EB633050, MEMORY[0x1E69E93B8]);
        }
      }

      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v520 = v424;
      v535 = v405;
      v443 = sub_1AFDFC538();
      sub_1AF477C68(v443, qword_1ED73B608);
      v444 = sub_1AFDFC528();
      v445 = sub_1AFDFDB88();
      if (sub_1AFDFDCE8())
      {
        v446 = swift_slowAlloc();
        *v446 = 0;
        v447 = sub_1AFDFC4E8();
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v444, v445, v447, "buildScript", "", v446, 2u);
        MEMORY[0x1B271DEA0](v446, -1, -1);
      }

      (*v534)(v525, v433, v543);
      sub_1AFDFC578();
      swift_allocObject();
      v448 = sub_1AFDFC568();
      sub_1AFA9E3C8(v554, v538, type metadata accessor for ParticleUpdateScript);
      v449 = (*(v527 + 80) + 400) & ~*(v527 + 80);
      v450 = (v523 + v449) & 0xFFFFFFFFFFFFFFF8;
      v451 = (v450 + 23) & 0xFFFFFFFFFFFFFFF8;
      v452 = (v451 + 27) & 0xFFFFFFFFFFFFFFF8;
      v515 = (v452 + 15) & 0xFFFFFFFFFFFFFFF8;
      v453 = swift_allocObject();
      v454 = updated;
      *(v453 + 16) = v555;
      *(v453 + 24) = v454;
      v455 = v548;
      v456 = v549;
      *(v453 + 32) = v548;
      *(v453 + 36) = v456;
      *(v453 + 40) = v547;
      *(v453 + 48) = sub_1AFA9EC20;
      *(v453 + 56) = v535;
      *(v453 + 64) = v448;
      v547 = v448;
      v457 = v537;
      memcpy((v453 + 72), v537, 0x148uLL);
      sub_1AFA9E320(v538, v453 + v449, type metadata accessor for ParticleUpdateScript);
      v458 = (v453 + v450);
      v459 = v532;
      *v458 = v524;
      v458[1] = v459;
      v460 = (v453 + v451);
      v461 = v551;
      v462 = v552;
      *v460 = v552;
      v460[1] = v461;
      v463 = v553;
      v460[2] = v553;
      v464 = (v453 + v452);
      *v464 = v455;
      v464[1] = v456;
      *(v453 + v515) = v520;
      if (v526)
      {
        v548 = *(v555 + 40);
        v465 = swift_allocObject();
        v465[2].isa = sub_1AFA9CC78;
        v465[3].isa = v453;
        v549 = v465;

        sub_1AFA9C054(v457, &v568, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, &off_1ED728EB8);

        sub_1AF487F80(v462, v461, v463);
        v466 = qword_1ED730EA0;

        if (v466 != -1)
        {
          swift_once();
        }

        v375 = v542;
        v467 = v543;
        v468 = v517;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v469 = qword_1ED73B8A0;
        v470 = swift_allocObject();
        v471 = v549;
        *(v470 + 16) = sub_1AFA9EB90;
        *(v470 + 24) = v471;
        v472 = swift_allocObject();
        v472[2] = v469;
        v472[3] = sub_1AF6CC3F0;
        v472[4] = v470;
        *&v570 = sub_1AFA9EC30;
        *(&v570 + 1) = v472;
        *&v568 = MEMORY[0x1E69E9820];
        *(&v568 + 1) = 1107296256;
        *&v569 = sub_1AFCDA044;
        *(&v569 + 1) = &unk_1F2559ED8;
        v473 = _Block_copy(&v568);
        swift_retain_n();

        [v548 addOperationWithBlock_];
        _Block_release(v473);

        (*v522)(v468, v467);
        a3 = v529;

        sub_1AF487074(v552, v551, v553);
        v376 = v550;
        v371 = v530;
        goto LABEL_250;
      }

      v549 = *(v555 + 32);
      v474 = swift_allocObject();
      *(v474 + 16) = sub_1AFA9CC78;
      *(v474 + 24) = v453;
      v475 = swift_allocObject();
      *(v475 + 16) = sub_1AFA9EB90;
      *(v475 + 24) = v474;
      *&v565 = sub_1AF6D25EC;
      *(&v565 + 1) = v475;
      *&v563 = MEMORY[0x1E69E9820];
      *(&v563 + 1) = 1107296256;
      *&v564 = sub_1AF6F662C;
      *(&v564 + 1) = &unk_1F2559E38;
      v476 = _Block_copy(&v563);
      v552 = v462;
      v477 = v476;
      v548 = *(&v565 + 1);

      sub_1AFA9C054(v537, &v568, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, &off_1ED728EB8);

      sub_1AF487F80(v462, v461, v553);

      dispatch_sync(v549, v477);
      _Block_release(v477);

      (*v522)(v517, v543);
      swift_isEscapingClosureAtFileLocation();
      a3 = v529;

      sub_1AF487074(v552, v461, v553);
      v375 = v542;
      v371 = v530;
      goto LABEL_249;
    }

    v478 = v558;
    v479 = (v558 != v547) | v417;
    v422 = v555;
    os_unfair_lock_unlock(*(v555 + 72));
    if ((v479 & 1) == 0)
    {
LABEL_303:
      v480 = v556;
      sub_1AFA9DE54(v554, v556, type metadata accessor for ParticleUpdateScript);
      v481 = *(v480 + 6);
      v482 = v546;
      if (v481)
      {
        v483 = *(v556 + 7);
        v484 = *v556;
        v485 = *(v556 + 1);

        v486 = v485;
        a3 = v529;
        v487 = sub_1AF458B0C(v484, v486);
        v481(*&v556[v482[13]], v487);

        v488 = v483;
        v480 = v556;
        sub_1AF0FB8EC(v481, v488);
      }

      if (v480[v482[10]] == 1)
      {
        v489 = *&v480[v482[11]];
        v490 = v489;
      }

      else
      {
        sub_1AF81F330();
        v489 = swift_allocError();
        *v491 = v513;
      }

      v376 = v550;
      if (!*(v545 + 16) && v489)
      {
        v492 = v528;
        v493 = *(v528 + 72);
        v494 = v489;
        os_unfair_lock_lock(v493);
        v495 = *(v545 + 16);
        *(v545 + 16) = v489;
        v496 = v489;

        os_unfair_lock_unlock(*(v492 + 72));
      }

      v375 = v542;
      v497 = v551;
      dispatch_group_leave(a3);

      sub_1AF487074(v552, v497, v553);
      goto LABEL_250;
    }

    if (v478 != v547)
    {
      goto LABEL_283;
    }

    dispatch_group_leave(a3);

    sub_1AF487074(v552, v551, v553);
    v375 = v542;
LABEL_249:
    v376 = v550;
LABEL_250:
    ++v375;
    v376 += 24;
    v374 = v540 + v556;
    v554 = v541 + v554;
    if (v371 == v375)
    {
      v235 = 1;
LABEL_313:
      v372 = v533;
LABEL_314:
      sub_1AF630994(v510, &v620, v633);
      v533 = v372;
      sub_1AF62D29C(v246);
      ecs_stack_allocator_pop_snapshot(v509);
      if (v508)
      {
        os_unfair_lock_unlock(*(v246 + 344));
        os_unfair_lock_unlock(*(v246 + 376));
      }

      v240 = v507 + 1;
      if (v507 + 1 != v504)
      {
        goto LABEL_170;
      }

      sub_1AFA9BF94(v613, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v613, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v235 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(a3);
      }

LABEL_317:

      sub_1AFA62400(v498);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA8FDA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v67 = a7;
  v83 = a6;
  v68 = a5;
  v66 = a3;
  sub_1AF5B225C(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2220(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  sub_1AF85B3D4(a2, v77);
  if (!v82)
  {
    goto LABEL_18;
  }

  if (v82 != 1)
  {
    sub_1AFA9CC60(a1);

    sub_1AF449D40(v77, v76);
    sub_1AF0D5A54(v76, &v70);
    swift_dynamicCast();
    v73 = v12;
    v74 = &off_1F250F310;
    v43 = sub_1AF585714(&v70);
    sub_1AFA9CC30(a1, v43, v44);
    v75 = 1;
    sub_1AF8259D0(&v70, v68, v83);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
    goto LABEL_18;
  }

  v57 = v14;
  v63 = a4;
  v58 = a2;
  v59 = v7;
  v61 = a1;
  sub_1AFA9CC60(a1);
  v23 = v78;
  v62 = v79;
  v60 = v80;
  sub_1AF449D40(v77, v76);
  sub_1AF449D40(&v81, v69);
  v24 = MEMORY[0x1E69E7CC0];
  *v22 = MEMORY[0x1E69E7CC0];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0xE000000000000000;
  v22[24] = 3;
  *(v22 + 4) = &unk_1F2503230;
  *(v22 + 20) = 0;
  *(v22 + 6) = 0;
  *(v22 + 7) = 0;
  v25 = v15[11];
  v26 = type metadata accessor for ScriptIndex(0);
  (*(*(v26 - 8) + 56))(&v22[v25], 1, 1, v26);
  *&v22[v15[12]] = @"VFXTriggerTypeTick";
  v27 = &v22[v15[13]];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v27[32] = 6;
  v28 = &v22[v12[9]];
  *v28 = 0;
  v28[8] = 1;
  v22[v12[10]] = 0;
  *&v22[v12[11]] = 0;
  v29 = &v22[v12[12]];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  *&v22[v12[13]] = v24;
  v30 = v18[9];
  v31 = v18[10];
  v32 = v18[11];
  *&v22[v18[12]] = 0;
  v22[v18[13]] = 0;
  v33 = &v22[v18[14]];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v22[v18[15]];
  *v34 = 0;
  v34[1] = 0;
  sub_1AF0D5A54(v76, &v70);
  v35 = @"VFXTriggerTypeTick";
  sub_1AFA9CC60(v22);
  swift_dynamicCast();
  *&v22[v30] = v23;
  *&v22[v32] = v60;
  *&v22[v31] = v62;
  v36 = *v34;
  v37 = v34[1];
  v62 = v23;

  sub_1AF919DAC(v36, v37);
  sub_1AF0D5A54(v69, &v70);
  swift_dynamicCast();
  sub_1AFA9CC30(v22, v61, v38);
  if (v66)
  {
    v39 = v63;
    v40 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v41 = v83;
    if (v40)
    {
      v42 = *(v40 + 80);
      swift_unknownObjectWeakLoadStrong();
      v40 = *(v40 + 56);
    }

    else
    {
      v42 = 0;
    }

    v66 = v42;
    v72 = 0;
    swift_unknownObjectUnownedInit();
    v70 = v39;
    v72 = v40;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v73) = v42;
    v46 = v65;
    sub_1AFA9E3C8(v22, v65, sub_1AF5B2220);
    v47 = v64;
    sub_1AFA9E3C8(v46, v64, type metadata accessor for TriggerScript);
    sub_1AFA9E8FC(v46, sub_1AF5B2220);
    sub_1AF5ACA58(v47, v41);
    sub_1AFA9E8FC(v47, type metadata accessor for TriggerScript);
    v48 = v57;
    sub_1AFA9CC30(v22, v57, v49);
    sub_1AF5ACBE8(v48, v41);
    sub_1AFA9CC60(v48);
    sub_1AFA9E3C8(v22, v46, sub_1AF5B2220);
    sub_1AF5ACD78(v46, v41);
    sub_1AFA9E8FC(v46, sub_1AF5B2220);
    sub_1AF579490(&v70);
    v45 = v68;
    if (v66)
    {
      v50 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v50 ^ 1);
    }
  }

  else
  {
    v41 = v83;
    v39 = v63;
    sub_1AFBFDEEC(v22, v83);
    v45 = v68;
  }

  v73 = v18;
  v74 = &off_1F2558F90;
  v51 = sub_1AF585714(&v70);
  sub_1AFA9E3C8(v22, v51, sub_1AF5B2220);
  v75 = 0;
  sub_1AF8259D0(&v70, v45, v41);
  v52 = sub_1AF3CB310(v41);
  if (v52)
  {
    sub_1AFD08440(v39, v52, v53);
  }

  sub_1AF0D5A54(v69, &v70);
  if (swift_dynamicCast())
  {

    v70 = MEMORY[0x1E69E7CC0];
    v71 = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C();

    sub_1AFBFDF64(v70, v71, v41);
LABEL_16:

    goto LABEL_17;
  }

  sub_1AF0D5A54(v69, &v70);
  if (swift_dynamicCast())
  {
    goto LABEL_16;
  }

LABEL_17:
  a2 = v58;
  sub_1AF678B44(v41, v54);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v69);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
  sub_1AFA9E8FC(v22, sub_1AF5B2220);
LABEL_18:
  result = sub_1AF85B3D4(a2, v77);
  if (v82)
  {
    return sub_1AFA9C0C8(v77);
  }

  return result;
}

uint64_t sub_1AFA905DC(uint64_t a1, char a2)
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
        if (v14 == type metadata accessor for TriggerScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B225C(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
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
              sub_1AFA8FDA4(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF454E0);
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

    v32 = sub_1AFA6F718(v31, type metadata accessor for TriggerScript);

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

uint64_t sub_1AFA90A30(uint64_t a1, uint64_t a2, NSObject *a3, int a4, unint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v534) = a6;
  v532 = a5;
  v533 = 0;
  v526 = a4;
  v530 = a2;
  v544 = type metadata accessor for TriggerScript(0);
  v527 = *(v544 - 8);
  MEMORY[0x1EEE9AC00](v544);
  v523 = v13;
  v538 = &v501 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v505 = &v501 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v518 = &v501 - v17;
  v18 = sub_1AFDFC4F8();
  v522 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v517 = &v501 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v525 = &v501 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v531 = &v501 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v545 = a8;

  v528 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v631[0] = *(a7 + 168);
  v631[1] = v26;
  v632 = *(a7 + 25);
  v27 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v516 = v25;
  sub_1AF6B06C0(v25, v631, 0x200000000, v590);
  v529 = a3;
  v555 = a1;
  v557 = v24;
  v537 = a7;
  v543 = v18;
  v535 = v27;
  if (*&v590[0])
  {
    if (v594 >= 1)
    {
      if (*(&v592 + 1))
      {
        v28 = *(&v591 + 1);
        v29 = *(&v593 + 1);
        v30 = *(&v591 + 1) + 48 * *(&v592 + 1);
        sub_1AF5B225C(0);
        v550 = v31;
        v570 = v591;
        v571 = v592;
        v572 = v593;
        v573 = v594;
        v568 = v590[0];
        v569 = v590[1];
        sub_1AF5DD298(&v568, &v637);
        v554 = v29;
        v539 = v30;
        do
        {
          isa = v28[5].isa;
          v33 = *(isa + 47);
          swift_retain_n();
          os_unfair_lock_lock(v33);
          os_unfair_lock_lock(*(isa + 43));
          v34 = *(isa + 6);

          v639 = 0;
          v637 = 0u;
          v638 = 0u;
          memset(v613, 0, 40);
          v35 = sub_1AF65A4B4(v34, v550, &off_1F250F310, 0, 0, &v637, v613);

          sub_1AFA9E8FC(v613, sub_1AF5C4448);
          sub_1AFA9E8FC(&v637, sub_1AF5C4448);
          if (sub_1AF649CEC(v35))
          {
            sub_1AF649D40(v35, v29);
          }

          else
          {
            v549 = v28;
            v37 = *(isa + 29);
            v36 = *(isa + 30);
            LODWORD(v548) = *(isa + 120);
            v542 = *(isa + 7);
            v38 = *(isa + 32);
            v39 = *(isa + 2);
            v40 = *(isa + 5);
            v41 = v40[200];

            if ((v41 & 1) != 0 || *(v42 + 200) == 1)
            {
              v39[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
              v40 = *(isa + 5);
            }

            v43 = v40[212];
            v44 = v42;
            v556 = v39;
            LODWORD(v546) = v35;
            if (v43)
            {
              LODWORD(v547) = 0;
            }

            else
            {
              LODWORD(v547) = *(v42 + 212);
            }

            v45 = v40[208];
            v553 = *(isa + 16);
            v46 = *(isa + 32);
            v47 = v36;
            v48 = v533;
            sub_1AF5B4FCC(v40, v37, v47, 0, isa);
            v533 = v48;
            v551 = *(isa + 32);
            v552 = v46;
            v49 = v551 - v46;
            if (v551 == v46)
            {
              v50 = 0;
            }

            else
            {
              v50 = v46;
            }

            v51 = v50;
            *&v613[0] = v50;
            v52 = *(*(isa + 5) + 24);
            v53 = *(v52 + 16);
            if (v53)
            {
              LODWORD(v540) = v38;
              LODWORD(v541) = v45;
              v54 = v52 + 32;

              v55 = 0;
              v56 = v553;
              v57 = v44;
              do
              {
                v58 = (v54 + 40 * v55);
                if ((v58[4] & 1) == 0)
                {
                  v59 = *v58;
                  v61 = v58[2];
                  v60 = v58[3];
                  v62 = *(v57 + 24);
                  v63 = *(v62 + 16);
                  if (v63)
                  {
                    v64 = (v62 + 32);
                    while (*v64 != v59)
                    {
                      v64 += 5;
                      if (!--v63)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8(v56 + v61 * v51 + v60, v49);
                    v57 = v44;
                    v56 = v553;
                  }
                }

                ++v55;
              }

              while (v55 != v53);

              LOBYTE(v45) = v541;
              LOBYTE(v38) = v540;
            }

            v29 = v554;
            if (*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters])
            {
              vfx_counters.add(_:_:)(*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(isa + 9) * v49);
            }

            if (*(isa + 184))
            {
              v65 = 0;
            }

            else
            {
              v65 = *(isa + 21);
            }

            *&v608[0] = 0;

            DWORD2(v638) = -1;
            v639 = v552;
            v640 = v551;
            v641 = v552;
            v642 = v551;
            *&v637 = v552;
            *(&v637 + 1) = v551;
            *&v638 = v65;
            if (v49 < 1)
            {
            }

            else
            {
              v541 = &v501;

              v66 = v44;

              v67 = v548;
              v68 = v542;
              v69 = v546;
              v70 = v45;
              v71 = v547;
              v72 = v553;
              do
              {

                LOBYTE(v600) = v38;
                LOBYTE(v500) = v70;
                sub_1AF626158(v69, v68 | (v38 << 32), v67, v556, &v637, v68 | (v38 << 32), isa, v66, 0, 0, 0, 0, v613, v72, v608, v500, v69, v71, v554);
              }

              while ((*(&v637 + 1) - v637) > 0);

              v29 = v554;
            }

            v73 = *(isa + 24);
            v28 = v549;
            v30 = v539;
            if (v73)
            {
              v74 = *(isa + 26);
              v75 = v552;
              v76 = v539;
              v77 = v29;
              v78 = v551;
              sub_1AF75D364(v552, v551, v73);
              v79 = v78;
              v29 = v77;
              v30 = v76;
              sub_1AF75D364(v75, v79, v74);
            }

            a1 = v555;
          }

          v28 += 6;
          os_unfair_lock_unlock(*(isa + 43));
          os_unfair_lock_unlock(*(isa + 47));
        }

        while (v28 != v30);
        sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v541) = 1;
        a3 = v529;
        a7 = v537;
      }

      else
      {
        sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v541) = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  LODWORD(v541) = 0;
LABEL_44:
  v80 = a7[4];
  v629[0] = a7[3];
  v629[1] = v80;
  v630 = *(a7 + 10);
  sub_1AF6B06C0(v516, v629, 0x200000000, v595);
  if (*&v595[0])
  {
    if (v599 >= 1 && *(&v597 + 1))
    {
      v81 = *(&v596 + 1);
      v82 = *(&v598 + 1);
      v83 = *(&v596 + 1) + 48 * *(&v597 + 1);
      sub_1AF5B2220(0);
      v550 = v84;
      v570 = v596;
      v571 = v597;
      v572 = v598;
      v573 = v599;
      v568 = v595[0];
      v569 = v595[1];
      sub_1AF5DD298(&v568, &v637);
      v554 = v82;
      v539 = v83;
      do
      {
        v85 = v81[5].isa;
        v86 = *(v85 + 47);
        swift_retain_n();
        os_unfair_lock_lock(v86);
        os_unfair_lock_lock(*(v85 + 43));
        v87 = *(v85 + 6);

        v639 = 0;
        v637 = 0u;
        v638 = 0u;
        memset(v613, 0, 40);
        v88 = sub_1AF65A4B4(v87, 0, 0, v550, &off_1F2558F90, &v637, v613);

        sub_1AFA9E8FC(v613, sub_1AF5C4448);
        sub_1AFA9E8FC(&v637, sub_1AF5C4448);
        if (sub_1AF649CEC(v88))
        {
          sub_1AF649D40(v88, v82);
        }

        else
        {
          v549 = v81;
          v90 = *(v85 + 29);
          v89 = *(v85 + 30);
          LODWORD(v548) = *(v85 + 120);
          v542 = *(v85 + 7);
          v91 = *(v85 + 32);
          v92 = *(v85 + 2);
          v93 = *(v85 + 5);
          v94 = v93[200];

          if ((v94 & 1) != 0 || *(v95 + 200) == 1)
          {
            v92[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
            v93 = *(v85 + 5);
          }

          v96 = v93[212];
          v97 = v95;
          v556 = v92;
          LODWORD(v546) = v88;
          if (v96)
          {
            LODWORD(v547) = 0;
          }

          else
          {
            LODWORD(v547) = *(v95 + 212);
          }

          v98 = v93[208];
          v553 = *(v85 + 16);
          v99 = *(v85 + 32);
          v100 = v89;
          v101 = v533;
          sub_1AF5B4FCC(v93, v90, v100, 0, v85);
          v533 = v101;
          v551 = *(v85 + 32);
          v552 = v99;
          v102 = v551 - v99;
          if (v551 == v99)
          {
            v103 = 0;
          }

          else
          {
            v103 = v99;
          }

          v104 = v103;
          *&v613[0] = v103;
          v105 = *(*(v85 + 5) + 24);
          v106 = *(v105 + 16);
          if (v106)
          {
            LODWORD(v540) = v91;
            LODWORD(v541) = v98;
            v107 = v105 + 32;

            v108 = 0;
            v109 = v553;
            v110 = v97;
            do
            {
              v111 = (v107 + 40 * v108);
              if ((v111[4] & 1) == 0)
              {
                v112 = *v111;
                v114 = v111[2];
                v113 = v111[3];
                v115 = *(v110 + 24);
                v116 = *(v115 + 16);
                if (v116)
                {
                  v117 = (v115 + 32);
                  while (*v117 != v112)
                  {
                    v117 += 5;
                    if (!--v116)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8(v109 + v114 * v104 + v113, v102);
                  v110 = v97;
                  v109 = v553;
                }
              }

              ++v108;
            }

            while (v108 != v106);

            LOBYTE(v98) = v541;
            LOBYTE(v91) = v540;
          }

          v82 = v554;
          if (*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters])
          {
            vfx_counters.add(_:_:)(*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(v85 + 9) * v102);
          }

          if (*(v85 + 184))
          {
            v118 = 0;
          }

          else
          {
            v118 = *(v85 + 21);
          }

          *&v608[0] = 0;

          DWORD2(v638) = -1;
          v639 = v552;
          v640 = v551;
          v641 = v552;
          v642 = v551;
          *&v637 = v552;
          *(&v637 + 1) = v551;
          *&v638 = v118;
          if (v102 < 1)
          {
          }

          else
          {
            v541 = &v501;

            v119 = v97;

            v120 = v548;
            v121 = v542;
            v122 = v546;
            v123 = v98;
            v124 = v547;
            v125 = v553;
            do
            {

              LOBYTE(v600) = v91;
              LOBYTE(v500) = v123;
              sub_1AF626158(v122, v121 | (v91 << 32), v120, v556, &v637, v121 | (v91 << 32), v85, v119, 0, 0, 0, 0, v613, v125, v608, v500, v122, v124, v554);
            }

            while ((*(&v637 + 1) - v637) > 0);

            v82 = v554;
          }

          v126 = *(v85 + 24);
          v81 = v549;
          v83 = v539;
          if (v126)
          {
            v127 = *(v85 + 26);
            v128 = v552;
            v129 = v539;
            v130 = v82;
            v131 = v551;
            sub_1AF75D364(v552, v551, v126);
            v132 = v131;
            v82 = v130;
            v83 = v129;
            sub_1AF75D364(v128, v132, v127);
          }

          a1 = v555;
        }

        v81 += 6;
        os_unfair_lock_unlock(*(v85 + 43));
        os_unfair_lock_unlock(*(v85 + 47));
      }

      while (v81 != v83);
      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v541) = 1;
      a3 = v529;
      a7 = v537;
    }

    else
    {
      sub_1AFA9BF94(v595, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v541) = 1;
    }
  }

  v133 = *(a7 + 104);
  v627[0] = *(a7 + 88);
  v627[1] = v133;
  v628 = *(a7 + 15);
  sub_1AF6B06C0(v516, v627, 0x200000000, &v600);
  if (v600)
  {
    v551 = v607;
    if (v607 >= 1)
    {
      v550 = v604;
      if (v604)
      {
        v134 = 0;
        v549 = v603;
        v135 = v606;
        v547 = v606;
        v548 = v605;
        v136 = v605[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];
        v556 = v606[4].isa;
        v617 = v600;
        v618 = v601;
        v619 = v602;
        LODWORD(v546) = v136;
        do
        {
          v554 = v134;
          v137 = &v549[6 * v134];
          isa_low = LODWORD(v137->isa);
          isa_high = HIDWORD(v137->isa);
          v140 = LODWORD(v137[1].isa);
          v141 = v137[2].isa;
          v142 = v137[3].isa;
          v144 = v137[4].isa;
          v143 = v137[5].isa;
          if (v136)
          {
            v145 = *(v143 + 376);

            os_unfair_lock_lock(v145);
            os_unfair_lock_lock(*(v143 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v556);
          v146 = *&v135[8].isa;
          v635[0] = *&v135[6].isa;
          v635[1] = v146;
          v636 = v135[10].isa;
          v147 = *(*(*(*(v143 + 40) + 16) + 32) + 16) + 1;
          v135[6].isa = ecs_stack_allocator_allocate(v135[4].isa, 48 * v147, 8);
          v135[7].isa = v147;
          v135[9].isa = 0;
          v135[10].isa = 0;
          v135[8].isa = 0;
          LOBYTE(v568) = 1;
          *&v637 = v548;
          *(&v637 + 1) = v143;
          *&v638 = v135;
          *(&v638 + 1) = v140;
          v639 = (isa_high - isa_low + v140);
          v640 = v551;
          v641 = isa_low;
          v642 = isa_high;
          v643 = 0;
          v644 = 0;
          v645 = 1;
          v646 = v141;
          v647 = v142;
          v648 = v144;
          v148 = v533;
          v149 = sub_1AF706D34(v143, &v637);
          v150 = v646;
          v553 = v148;
          if (v646)
          {
            v151 = v648;
            if (v648)
            {
              v552 = v638;
              v152 = (v149 + 8);
              do
              {
                v150 = (v150 + 8);
                v153 = *(v152 - 1);
                v154 = *v152;

                sub_1AFD08440(v155, v153, v154);

                sub_1AF6FCC60(0);
                v157 = *(*(v143 + 40) + 16);
                v158 = *(v157 + 128);
                if (*(v158 + 16))
                {
                  v159 = v156;
                  v160 = sub_1AF449CB8(v156);
                  if ((v161 & 1) != 0 && *(*(v157 + 24) + 16 * *(*(v158 + 56) + 8 * v160) + 32) == v159)
                  {
                    *&v568 = v159;
                    *(&v568 + 1) = &off_1F2559388;
                    BYTE8(v570) = 1;
                    MEMORY[0x1EEE9AC00](v160);
                    v500 = v143;

                    sub_1AF63023C(0, v143, sub_1AFA9EC24);

                    sub_1AF635250(&v568);
                  }
                }

                v152 += 2;
                v151 = (v151 - 1);
              }

              while (v151);
            }
          }

          else
          {
            v162 = v641;
            v163 = v642;
            if (v641 != v642)
            {
              v165 = &v149[16 * v641 + 8];
              do
              {
                v166 = *(v165 - 1);
                v167 = *v165;

                sub_1AFD08440(v168, v166, v167);

                sub_1AF6FCC60(0);
                v170 = *(*(v143 + 40) + 16);
                v171 = *(v170 + 128);
                if (*(v171 + 16))
                {
                  v172 = v169;
                  v173 = sub_1AF449CB8(v169);
                  if ((v174 & 1) != 0 && *(*(v170 + 24) + 16 * *(*(v171 + 56) + 8 * v173) + 32) == v172)
                  {
                    *&v568 = v172;
                    *(&v568 + 1) = &off_1F2559388;
                    BYTE8(v570) = 1;
                    MEMORY[0x1EEE9AC00](v173);
                    v500 = v143;

                    sub_1AF63023C(0, v143, sub_1AFA9EC24);

                    sub_1AF635250(&v568);
                  }
                }

                ++v162;
                v165 += 2;
              }

              while (v163 != v162);
            }
          }

          v135 = v547;
          v164 = v553;
          sub_1AF630994(v547, &v617, v635);
          sub_1AF62D29C(v143);
          ecs_stack_allocator_pop_snapshot(v556);
          v136 = v546;
          if (v546)
          {
            os_unfair_lock_unlock(*(v143 + 344));
            os_unfair_lock_unlock(*(v143 + 376));
          }

          v533 = v164;

          v134 = (v554 + 1);
        }

        while (v554 + 1 != v550);
      }
    }

    sub_1AFA9BF94(&v600, &qword_1ED725EA0, &type metadata for QueryResult);
    a3 = v529;
    a1 = v555;
  }

  v175 = v537[9];
  v625[0] = v537[8];
  v625[1] = v175;
  v626 = *(v537 + 20);
  sub_1AF6B06C0(v516, v625, 0x200000000, v608);
  if (*&v608[0])
  {
    v176 = v612;
    if (v612 >= 1 && *(&v610 + 1))
    {
      v524 = v612;
      v177 = *(&v609 + 1);
      v178 = *(&v611 + 1);
      v179 = *(&v609 + 1) + 48 * *(&v610 + 1);
      sub_1AF5B225C(0);
      v550 = v180;
      v570 = v609;
      v571 = v610;
      v572 = v611;
      v573 = v612;
      v568 = v608[0];
      v569 = v608[1];
      sub_1AF5DD298(&v568, v613);
      v554 = v178;
      *&v536 = v179;
      do
      {
        v181 = v177[5].isa;
        v182 = *(v181 + 47);
        swift_retain_n();
        os_unfair_lock_lock(v182);
        os_unfair_lock_lock(*(v181 + 43));
        v183 = *(v181 + 6);

        memset(v613, 0, 40);
        *&v586 = 0;
        v585 = 0u;
        v584 = 0u;
        v184 = sub_1AF65A4B4(v183, 0, 0, v550, &off_1F250F310, v613, &v584);

        sub_1AFA9E8FC(&v584, sub_1AF5C4448);
        sub_1AFA9E8FC(v613, sub_1AF5C4448);
        if (sub_1AF649CEC(v184))
        {
          sub_1AF649D40(v184, v178);
        }

        else
        {
          v549 = v177;
          v186 = *(v181 + 29);
          v185 = *(v181 + 30);
          LODWORD(v548) = *(v181 + 120);
          v542 = *(v181 + 7);
          v187 = *(v181 + 32);
          v188 = *(v181 + 2);
          v189 = *(v181 + 5);
          v190 = v189[200];

          if ((v190 & 1) != 0 || *(v191 + 200) == 1)
          {
            v188[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
            v189 = *(v181 + 5);
          }

          v192 = v189[212];
          v193 = v191;
          v556 = v188;
          LODWORD(v546) = v184;
          if (v192)
          {
            LODWORD(v547) = 0;
          }

          else
          {
            LODWORD(v547) = *(v191 + 212);
          }

          v194 = v189[208];
          v553 = *(v181 + 16);
          v195 = *(v181 + 32);
          v196 = v185;
          v197 = v533;
          sub_1AF5B4FCC(v189, v186, v196, 0, v181);
          v533 = v197;
          v551 = *(v181 + 32);
          v552 = v195;
          v198 = v551 - v195;
          if (v551 == v195)
          {
            v199 = 0;
          }

          else
          {
            v199 = v195;
          }

          v200 = v199;
          *&v584 = v199;
          v201 = *(*(v181 + 5) + 24);
          v202 = *(v201 + 16);
          if (v202)
          {
            LODWORD(v539) = v187;
            LODWORD(v540) = v194;
            v203 = v201 + 32;

            v204 = 0;
            v205 = v553;
            v206 = v193;
            do
            {
              v207 = (v203 + 40 * v204);
              if ((v207[4] & 1) == 0)
              {
                v208 = *v207;
                v210 = v207[2];
                v209 = v207[3];
                v211 = *(v206 + 24);
                v212 = *(v211 + 16);
                if (v212)
                {
                  v213 = (v211 + 32);
                  while (*v213 != v208)
                  {
                    v213 += 5;
                    if (!--v212)
                    {
                      goto LABEL_130;
                    }
                  }
                }

                else
                {
LABEL_130:
                  sub_1AF640BC8(v205 + v210 * v200 + v209, v198);
                  v206 = v193;
                  v205 = v553;
                }
              }

              ++v204;
            }

            while (v204 != v202);

            LOBYTE(v194) = v540;
            LOBYTE(v187) = v539;
          }

          v178 = v554;
          if (*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters])
          {
            vfx_counters.add(_:_:)(*&v556[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(v181 + 9) * v198);
          }

          if (*(v181 + 184))
          {
            v214 = 0;
          }

          else
          {
            v214 = *(v181 + 21);
          }

          *&v563 = 0;

          *&v613[1] = v214;
          DWORD2(v613[1]) = -1;
          *&v613[2] = v552;
          *(&v613[2] + 1) = v551;
          *&v614 = v552;
          *(&v614 + 1) = v551;
          *&v613[0] = v552;
          *(&v613[0] + 1) = v551;
          if (v198 < 1)
          {
          }

          else
          {
            v540 = &v501;

            v215 = v193;

            v216 = v548;
            v217 = v542;
            v218 = v546;
            v219 = v194;
            v220 = v547;
            v221 = v553;
            do
            {

              LOBYTE(v558) = v187;
              LOBYTE(v500) = v219;
              sub_1AF626158(v218, v217 | (v187 << 32), v216, v556, v613, v217 | (v187 << 32), v181, v215, 0, 0, 0, 0, &v584, v221, &v563, v500, v218, v220, v554);
            }

            while ((*(&v613[0] + 1) - *&v613[0]) > 0);

            v178 = v554;
          }

          v222 = *(v181 + 24);
          v177 = v549;
          v179 = v536;
          if (v222)
          {
            v223 = *(v181 + 26);
            v224 = v552;
            v225 = v536;
            v226 = v178;
            v227 = v551;
            sub_1AF75D364(v552, v551, v222);
            v228 = v227;
            v178 = v226;
            v179 = v225;
            sub_1AF75D364(v224, v228, v223);
          }

          a1 = v555;
        }

        v177 += 6;
        os_unfair_lock_unlock(*(v181 + 43));
        os_unfair_lock_unlock(*(v181 + 47));
      }

      while (v177 != v179);
      sub_1AFA9BF94(v608, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v608, &qword_1ED725EA0, &type metadata for QueryResult);
      a3 = v529;
      v176 = v524;
    }

    else
    {
      sub_1AFA9BF94(v608, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v229 = v541;
    if (v176 > 0)
    {
      v229 = 1;
    }

    LODWORD(v541) = v229;
  }

  if (v530)
  {
    sub_1AFA61FF8(a1, v530, sub_1AFD34100);
    LODWORD(v541) = v541 | v230;
  }

  if (v532)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v232 = sub_1AFA905DC(a1, v534 & 1);

  v233 = *(a1 + 16);

  if (v233)
  {
    v524 = sub_1AF8BB88C();
    v532 = v234;
  }

  else
  {
    v524 = 0;
    v532 = 0xE000000000000000;
  }

  v235 = v541 | v232;
  v236 = v537[14];
  v623[0] = v537[13];
  v623[1] = v236;
  v624 = *(v537 + 30);
  sub_1AF6B06C0(v516, v623, 0x200000000, v613);
  v237 = *&v613[0];
  if (!*&v613[0])
  {

    if ((v235 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v616 <= 0 || (v504 = *(&v614 + 1)) == 0)
  {

    sub_1AFA9BF94(v613, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v235 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v503 = *(&v613[2] + 1);
  v510 = *(&v615 + 1);
  v509 = *(*(&v615 + 1) + 32);
  v508 = *(v615 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B225C(0);
  v239 = v238;
  v620 = v237;
  v621 = *(v613 + 8);
  v622 = *(&v613[1] + 8);
  v539 = (v516 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v586 = v613[2];
  v587 = v614;
  v588 = v615;
  v589 = v616;
  v584 = v613[0];
  v585 = v613[1];
  sub_1AF5DD298(&v584, &v568);
  v240 = 0;
  v546 = v239;
  v502 = v239 - 8;
  v534 = (v522 + 2);
  v514 = (v522 + 4);
  v506 = (v522 + 6);
  v523 += 7;
  v512 = &v564;
  v521 = (v522 + 7);
  ++v522;
  v511 = &v569;
  v513 = xmmword_1AFE21110;
  v536 = xmmword_1AFE72020;
LABEL_170:
  v507 = v240;
  v241 = (v503 + 48 * v240);
  v242 = *v241;
  v530 = v241[1];
  v244 = *(v241 + 2);
  v243 = *(v241 + 3);
  v245 = *(v241 + 4);
  v246 = *(v241 + 5);
  if (v508)
  {
    v247 = *(v246 + 376);

    os_unfair_lock_lock(v247);
    os_unfair_lock_lock(*(v246 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v509);
  v248 = v510;
  v249 = *(v510 + 4);
  v633[0] = *(v510 + 3);
  v633[1] = v249;
  v634 = v510[10];
  v250 = *(*(*(*(v246 + 40) + 16) + 32) + 16) + 1;
  v248[6] = ecs_stack_allocator_allocate(v510[4], 48 * v250, 8);
  v248[7] = v250;
  v248[9] = 0;
  v248[10] = 0;
  v248[8] = 0;
  v556 = sub_1AF64B110(v544, &off_1F255BBC8, v244, v243, v245, v248);
  v251 = sub_1AF64B110(v546, &off_1F250F310, v244, v243, v245, v248);
  v252 = v251;
  if (v244)
  {
    v551 = v244;
    v253 = v555;
    if (!v245)
    {
      goto LABEL_313;
    }

    v541 = *(v527 + 72);
    v540 = *(*v502 + 72);
    v519 = v246;
    while (1)
    {
      v258 = *v551;
      v550 = v245;
      ++v551;

      if (*(v246 + 184))
      {
        goto LABEL_324;
      }

      v260 = *(*(v246 + 168) + 4 * v258);
      v261 = *(*(v259 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v260 + 8);

      v262 = v260 == -1 && v261 == 0;
      if (v262 || (v260 & 0x80000000) != 0 || v539[1] <= v260)
      {
        break;
      }

      v263 = *v539 + 12 * v260;
      if (v261 != -1 && *(v263 + 8) != v261)
      {
        break;
      }

      v265 = *(*(*(v516 + 88) + 8 * *(v263 + 6) + 32) + 16);
      v266 = *(v265 + 128);
      if (!*(v266 + 16))
      {
        break;
      }

      v267 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v268 & 1) == 0 || *(*(v265 + 24) + 16 * *(*(v266 + 56) + 8 * v267) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_178:
      v252 = (v540 + v252);
      v556 = v541 + v556;
      v245 = (v550 - 1);
      if (v550 == 1)
      {
        v235 = 1;
        goto LABEL_313;
      }
    }

    dispatch_group_enter(a3);
    v269 = *(v246 + 64);
    v270 = *(v246 + 80);
    v578 = *(v246 + 112);
    v272 = *(v246 + 80);
    v271 = *(v246 + 96);
    v576 = v270;
    v577 = v271;
    v273 = *(v246 + 64);
    v574 = *(v246 + 48);
    v575 = v269;
    v274 = *(v246 + 96);
    v570 = v272;
    v571 = v274;
    LOBYTE(v572) = *(v246 + 112);
    v568 = *(v246 + 48);
    v569 = v273;
    v275 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v277 = v276;
    v581 = v570;
    v582 = v571;
    v583 = v572;
    v580 = v569;
    v579 = v568;

    sub_1AF5DD36C(&v574, &v563);
    sub_1AF5DD3C8(&v579);
    if (v277)
    {

      v553 = 0;
      v549 = 0;
      v278 = 0;
    }

    else
    {
      v279 = *(v246 + 128);

      v280 = (v279 + v275 + 24 * v258);
      v553 = *v280;
      v278 = *(v280 + 2);
      v549 = *(v280 + 1);
    }

    v282 = v546;
    if (*(v246 + 184))
    {
      goto LABEL_324;
    }

    v552 = v278;
    v283 = *(*(v281 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v246 + 168) + 4 * v258) + 8);
    v547 = *(*(v246 + 168) + 4 * v258);
    v548 = v283;

    v284 = swift_allocObject();
    v285 = v557;
    *(v284 + 2) = sub_1AFA9EC2C;
    *(v284 + 3) = v285;
    v554 = v284;
    *(v284 + 4) = a3;
    v286 = *(v253 + 16);

    if (v286)
    {
      v287 = *(v286 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v288 = a3;

      if ((v287 & 1) == 0 || *(v253 + 3048) != 1)
      {
        sub_1AF81F330();
        v290 = swift_allocError();
        v291 = v290;
        *v292 = v536;
        if (!*(v545 + 16))
        {
          v293 = v528;
          v294 = *(v528 + 72);
          v295 = v290;
          os_unfair_lock_lock(v294);
          v296 = *(v545 + 16);
          *(v545 + 16) = v291;
          v297 = v291;

          os_unfair_lock_unlock(*(v293 + 72));
        }

        dispatch_group_leave(v288);

LABEL_204:

        v256 = v553;
        v257 = v549;
LABEL_177:
        sub_1AF487074(v256, v257, v552);
        goto LABEL_178;
      }
    }

    else
    {
      swift_retain_n();
      v298 = a3;
    }

    v299 = v547;
    v300 = sub_1AFABEDAC(v289);
    v301 = v252 + v282[9];
    v302 = *v301;
    LOBYTE(v301) = v301[8];
    v542 = v300;
    v303 = v301 | (v300 != v302);
    os_unfair_lock_lock(*(v253 + 72));
    v304 = *(v253 + 80);
    if (*(v304 + 16) && (v305 = sub_1AF41ACD4(v544, v299 | (v548 << 32)), (v306 & 1) != 0))
    {
      sub_1AF85B3D4(*(v304 + 56) + 96 * v305, &v568);
      if (BYTE8(v573) != 255)
      {
        sub_1AF85B3D4(&v568, &v563);
        sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v562 + 9) = *(v567 + 9);
        v560 = v565;
        v561 = v566;
        v562[0] = v567[0];
        v558 = v563;
        v559 = v564;
        if (!BYTE8(v567[1]))
        {
          v354 = v558;
          v355 = (v558 != v542) | v303;
          os_unfair_lock_unlock(*(v253 + 72));
          if (v355)
          {
            if (v354 != v542)
            {
LABEL_214:
              v535 = swift_allocBox();
              v308 = v307;
              sub_1AFA9EE3C(v307);
              v309 = v308 + v282[9];
              *(v308 + v282[10]) = 0;
              *(v308 + v282[11]) = 0;
              v310 = (v308 + v282[12]);
              *v310 = 0;
              v310[1] = 0xE000000000000000;
              *(v308 + v282[13]) = MEMORY[0x1E69E7CC0];
              v311 = v542;
              *v309 = v542;
              *(v309 + 8) = 0;
              sub_1AFA9DE54(v556, v308, type metadata accessor for TriggerScript);
              sub_1AFA9DE54(v308, v252, sub_1AF5B225C);
              os_unfair_lock_lock(*(v253 + 72));
              *&v568 = v311;
              BYTE8(v573) = 0;
              sub_1AF825824(&v568, v544, v299 | (v548 << 32));
              os_unfair_lock_unlock(*(v253 + 72));
              v312 = *(v253 + 16);

              if (v312)
              {
                v313 = v518;
                v314 = v543;
                (*v534)(v518, v312 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v543);

                (*v521)(v313, 0, 1, v314);
                v315 = v531;
                (*v514)(v531, v313, v314);
              }

              else
              {
                v316 = v518;
                (*v521)(v518, 1, 1, v543);
                v315 = v531;
                if (qword_1ED7270F0 != -1)
                {
                  swift_once();
                }

                v317 = sub_1AFDFC538();
                sub_1AF477C68(v317, qword_1ED73B608);
                sub_1AFDFC528();
                sub_1AFDFC4D8();
                if ((*v506)(v316, 1, v543) != 1)
                {
                  sub_1AFA9C470(v316, &qword_1EB633050, MEMORY[0x1E69E93B8]);
                }
              }

              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v530 = v252;
              v318 = sub_1AFDFC538();
              sub_1AF477C68(v318, qword_1ED73B608);
              v319 = sub_1AFDFC528();
              v320 = sub_1AFDFDB88();
              if (sub_1AFDFDCE8())
              {
                v321 = swift_slowAlloc();
                *v321 = 0;
                v322 = sub_1AFDFC4E8();
                _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v319, v320, v322, "buildScript", "", v321, 2u);
                MEMORY[0x1B271DEA0](v321, -1, -1);
              }

              (*v534)(v525, v315, v543);
              sub_1AFDFC578();
              swift_allocObject();
              v323 = sub_1AFDFC568();
              sub_1AFA9E3C8(v556, v538, type metadata accessor for TriggerScript);
              v324 = (*(v527 + 80) + 400) & ~*(v527 + 80);
              v325 = (v523 + v324) & 0xFFFFFFFFFFFFFFF8;
              v326 = (v325 + 23) & 0xFFFFFFFFFFFFFFF8;
              v327 = (v326 + 27) & 0xFFFFFFFFFFFFFFF8;
              v328 = swift_allocObject();
              v329 = v544;
              *(v328 + 16) = v555;
              *(v328 + 24) = v329;
              v330 = v547;
              v331 = v548;
              *(v328 + 32) = v547;
              *(v328 + 36) = v331;
              *(v328 + 40) = v542;
              *(v328 + 48) = sub_1AFA9EC20;
              *(v328 + 56) = v554;
              *(v328 + 64) = v323;
              v542 = v323;
              memcpy((v328 + 72), v537, 0x148uLL);
              sub_1AFA9E320(v538, v328 + v324, type metadata accessor for TriggerScript);
              v332 = (v328 + v325);
              v333 = v532;
              *v332 = v524;
              v332[1] = v333;
              v334 = (v328 + v326);
              v335 = v552;
              v336 = v553;
              v337 = v549;
              *v334 = v553;
              v334[1] = v337;
              v334[2] = v335;
              v338 = (v328 + v327);
              *v338 = v330;
              v338[1] = v331;
              *(v328 + ((v327 + 15) & 0xFFFFFFFFFFFFFFF8)) = v535;
              if (v526)
              {
                v548 = *(v555 + 40);
                v339 = swift_allocObject();
                *(v339 + 16) = sub_1AFA9EB78;
                *(v339 + 24) = v328;

                sub_1AFA9C054(v537, &v568, &unk_1EB633F18, type metadata accessor for TriggerScript, &off_1F255BBC8, &off_1ED72C298);

                sub_1AF487F80(v336, v337, v335);
                v340 = qword_1ED730EA0;

                a3 = v529;
                v252 = v530;
                v341 = v337;
                v246 = v519;
                if (v340 != -1)
                {
                  swift_once();
                }

                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v342 = qword_1ED73B8A0;
                v343 = swift_allocObject();
                *(v343 + 16) = sub_1AFA9EB90;
                *(v343 + 24) = v339;
                v344 = swift_allocObject();
                v344[2] = v342;
                v344[3] = sub_1AF6CC3F0;
                v344[4] = v343;
                *&v570 = sub_1AFA9EC30;
                *(&v570 + 1) = v344;
                *&v568 = MEMORY[0x1E69E9820];
                *(&v568 + 1) = 1107296256;
                *&v569 = sub_1AFCDA044;
                *(&v569 + 1) = &unk_1F2559D48;
                v345 = _Block_copy(&v568);
                swift_retain_n();

                [v548 addOperationWithBlock_];
                _Block_release(v345);

                (*v522)(v531, v543);

                sub_1AF487074(v553, v341, v552);
                v253 = v555;
              }

              else
              {
                v547 = *(v555 + 32);
                v346 = swift_allocObject();
                v346[2] = sub_1AFA9EB78;
                v346[3] = v328;
                v347 = v346;
                v548 = v346;
                v348 = swift_allocObject();
                *(v348 + 16) = sub_1AFA9EB90;
                *(v348 + 24) = v347;
                *&v565 = sub_1AF6D25EC;
                *(&v565 + 1) = v348;
                *&v563 = MEMORY[0x1E69E9820];
                *(&v563 + 1) = 1107296256;
                *&v564 = sub_1AF6F662C;
                *(&v564 + 1) = &unk_1F2559CA8;
                v349 = _Block_copy(&v563);
                v553 = v336;
                v350 = v349;
                v520 = *(&v565 + 1);

                sub_1AFA9C054(v537, &v568, &unk_1EB633F18, type metadata accessor for TriggerScript, &off_1F255BBC8, &off_1ED72C298);

                v351 = v552;
                sub_1AF487F80(v336, v337, v552);

                dispatch_sync(v547, v350);
                _Block_release(v350);

                (*v522)(v531, v543);
                swift_isEscapingClosureAtFileLocation();
                v352 = v529;

                v353 = v351;
                a3 = v352;
                sub_1AF487074(v553, v337, v353);
                v253 = v555;
                v252 = v530;
                v246 = v519;
              }

              goto LABEL_178;
            }

            dispatch_group_leave(a3);

            goto LABEL_204;
          }

LABEL_234:
          sub_1AFA9DE54(v556, v252, type metadata accessor for TriggerScript);
          v356 = v252[6];
          if (v356)
          {
            v357 = v252[7];
            v359 = v252[1];
            v358 = v252[2];

            v360 = v359;
            v253 = v555;
            v361 = sub_1AF458B0C(v360, v358);
            v356(*(v252 + v282[13]), v361);

            sub_1AF0FB8EC(v356, v357);
          }

          if (*(v252 + v282[10]) == 1)
          {
            v362 = *(v252 + v282[11]);
            v363 = v362;
          }

          else
          {
            sub_1AF81F330();
            v362 = swift_allocError();
            *v364 = v513;
          }

          if (!*(v545 + 16) && v362)
          {
            v365 = v528;
            v366 = *(v528 + 72);
            v367 = v362;
            os_unfair_lock_lock(v366);
            v368 = *(v545 + 16);
            *(v545 + 16) = v362;
            v369 = v362;

            os_unfair_lock_unlock(*(v365 + 72));
          }

          v254 = v549;
          v255 = v553;
          dispatch_group_leave(a3);

          v256 = v255;
          v257 = v254;
          goto LABEL_177;
        }

        sub_1AFA9C0C8(&v558);
LABEL_213:
        os_unfair_lock_unlock(*(v253 + 72));
        if (v303)
        {
          goto LABEL_214;
        }

        goto LABEL_234;
      }
    }

    else
    {
      *&v573 = 0;
      v571 = 0u;
      v572 = 0u;
      v569 = 0u;
      v570 = 0u;
      v568 = 0u;
      BYTE8(v573) = -1;
    }

    sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_213;
  }

  v370 = v235;
  v371 = v530;
  if (v242 == v530)
  {
    v372 = v533;
    v235 = v370;
    goto LABEL_314;
  }

  v373 = *(v527 + 72);
  v540 = *(*v502 + 72);
  v541 = v373;
  v374 = &v251[v540 * v242];
  v554 = &v556[v373 * v242];
  v375 = v242;
  v376 = 24 * v242;
  while (1)
  {
    v556 = v374;

    if (*(v246 + 184))
    {
      break;
    }

    v381 = *(*(v246 + 168) + 4 * v375);
    v382 = *(*(v380 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v381 + 8);

    v383 = v381 == -1 && v382 == 0;
    if (!v383 && (v381 & 0x80000000) == 0 && v539[1] > v381)
    {
      v384 = *v539 + 12 * v381;
      if (v382 == -1 || *(v384 + 8) == v382)
      {
        v386 = *(*(*(v516 + 88) + 8 * *(v384 + 6) + 32) + 16);
        v387 = *(v386 + 128);
        if (*(v387 + 16))
        {
          v388 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v389 & 1) != 0 && *(*(v386 + 24) + 16 * *(*(v387 + 56) + 8 * v388) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_250;
          }
        }
      }
    }

    dispatch_group_enter(a3);
    v390 = *(v246 + 64);
    v391 = *(v246 + 80);
    v578 = *(v246 + 112);
    v393 = *(v246 + 80);
    v392 = *(v246 + 96);
    v576 = v391;
    v577 = v392;
    v394 = *(v246 + 64);
    v574 = *(v246 + 48);
    v575 = v390;
    v395 = *(v246 + 96);
    v570 = v393;
    v571 = v395;
    LOBYTE(v572) = *(v246 + 112);
    v568 = *(v246 + 48);
    v569 = v394;
    v396 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v398 = v397;
    v581 = v570;
    v582 = v571;
    v583 = v572;
    v580 = v569;
    v579 = v568;

    sub_1AF5DD36C(&v574, &v563);
    sub_1AF5DD3C8(&v579);
    if (v398)
    {

      v552 = 0;
      v399 = 0;
      v400 = 0;
    }

    else
    {
      v401 = *(v246 + 128);

      v402 = (v401 + v376 + v396);
      v552 = *v402;
      v399 = *(v402 + 1);
      v400 = *(v402 + 2);
    }

    v551 = v399;

    if (*(v246 + 184))
    {
      break;
    }

    v553 = v400;
    v404 = *(v403 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v548 = *(*(v246 + 168) + 4 * v375);
    v549 = *(v404 + 12 * v548 + 8);
    v550 = v376;

    v405 = swift_allocObject();
    v406 = v557;
    v405[2] = sub_1AFA9EC2C;
    v405[3] = v406;
    v405[4] = a3;
    v407 = *(v555 + 16);

    if (v407)
    {
      v408 = *(v407 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v409 = a3;

      if ((v408 & 1) == 0 || *(v555 + 3048) != 1)
      {
        sub_1AF81F330();
        v377 = swift_allocError();
        v378 = v377;
        *v379 = v536;
        if (!*(v545 + 16))
        {
          v434 = v375;
          v435 = v528;
          v436 = *(v528 + 72);
          v437 = v377;
          os_unfair_lock_lock(v436);
          v438 = *(v545 + 16);
          *(v545 + 16) = v378;
          v439 = v378;

          v440 = *(v435 + 72);
          v375 = v434;
          v371 = v530;
          os_unfair_lock_unlock(v440);
        }

        dispatch_group_leave(v409);

        sub_1AF487074(v552, v551, v553);
        goto LABEL_249;
      }
    }

    else
    {
      swift_retain_n();
      v411 = a3;
    }

    v412 = v548;
    v413 = sub_1AFABEDAC(v410);
    v414 = v555;
    v415 = &v556[v546[9]];
    v416 = *v415;
    LOBYTE(v415) = v415[8];
    v547 = v413;
    v417 = v415 | (v413 != v416);
    os_unfair_lock_lock(*(v555 + 72));
    v418 = *(v414 + 80);
    v419 = *(v418 + 16);
    v542 = v375;
    if (!v419 || (v420 = sub_1AF41ACD4(v544, v412 | (v549 << 32)), (v421 & 1) == 0))
    {
      *&v573 = 0;
      v571 = 0u;
      v572 = 0u;
      v569 = 0u;
      v570 = 0u;
      v568 = 0u;
      BYTE8(v573) = -1;
LABEL_281:
      sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
      goto LABEL_282;
    }

    sub_1AF85B3D4(*(v418 + 56) + 96 * v420, &v568);
    if (BYTE8(v573) == 255)
    {
      goto LABEL_281;
    }

    sub_1AF85B3D4(&v568, &v563);
    sub_1AFA9BF94(&v568, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v562 + 9) = *(v567 + 9);
    v560 = v565;
    v561 = v566;
    v562[0] = v567[0];
    v558 = v563;
    v559 = v564;
    if (BYTE8(v567[1]))
    {
      sub_1AFA9C0C8(&v558);
LABEL_282:
      v422 = v555;
      os_unfair_lock_unlock(*(v555 + 72));
      if ((v417 & 1) == 0)
      {
        goto LABEL_303;
      }

LABEL_283:
      v423 = v546;
      v424 = swift_allocBox();
      v426 = v425;
      sub_1AFA9EE3C(v425);
      v427 = v426 + v423[9];
      *(v426 + v423[10]) = 0;
      *(v426 + v423[11]) = 0;
      v428 = (v426 + v423[12]);
      *v428 = 0;
      v428[1] = 0xE000000000000000;
      *(v426 + v423[13]) = MEMORY[0x1E69E7CC0];
      v429 = v547;
      *v427 = v547;
      *(v427 + 8) = 0;
      sub_1AFA9DE54(v554, v426, type metadata accessor for TriggerScript);
      sub_1AFA9DE54(v426, v556, sub_1AF5B225C);
      os_unfair_lock_lock(*(v422 + 72));
      *&v568 = v429;
      BYTE8(v573) = 0;
      sub_1AF825824(&v568, v544, v412 | (v549 << 32));
      os_unfair_lock_unlock(*(v422 + 72));
      v430 = *(v422 + 16);

      if (v430)
      {
        v431 = v505;
        v432 = v543;
        (*v534)(v505, v430 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v543);

        (*v521)(v431, 0, 1, v432);
        v433 = v517;
        (*v514)(v517, v431, v432);
      }

      else
      {
        v441 = v505;
        (*v521)(v505, 1, 1, v543);
        v433 = v517;
        if (qword_1ED7270F0 != -1)
        {
          swift_once();
        }

        v442 = sub_1AFDFC538();
        sub_1AF477C68(v442, qword_1ED73B608);
        sub_1AFDFC528();
        sub_1AFDFC4D8();
        if ((*v506)(v441, 1, v543) != 1)
        {
          sub_1AFA9C470(v441, &qword_1EB633050, MEMORY[0x1E69E93B8]);
        }
      }

      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v520 = v424;
      v535 = v405;
      v443 = sub_1AFDFC538();
      sub_1AF477C68(v443, qword_1ED73B608);
      v444 = sub_1AFDFC528();
      v445 = sub_1AFDFDB88();
      if (sub_1AFDFDCE8())
      {
        v446 = swift_slowAlloc();
        *v446 = 0;
        v447 = sub_1AFDFC4E8();
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v444, v445, v447, "buildScript", "", v446, 2u);
        MEMORY[0x1B271DEA0](v446, -1, -1);
      }

      (*v534)(v525, v433, v543);
      sub_1AFDFC578();
      swift_allocObject();
      v448 = sub_1AFDFC568();
      sub_1AFA9E3C8(v554, v538, type metadata accessor for TriggerScript);
      v449 = (*(v527 + 80) + 400) & ~*(v527 + 80);
      v450 = (v523 + v449) & 0xFFFFFFFFFFFFFFF8;
      v451 = (v450 + 23) & 0xFFFFFFFFFFFFFFF8;
      v452 = (v451 + 27) & 0xFFFFFFFFFFFFFFF8;
      v515 = (v452 + 15) & 0xFFFFFFFFFFFFFFF8;
      v453 = swift_allocObject();
      v454 = v544;
      *(v453 + 16) = v555;
      *(v453 + 24) = v454;
      v455 = v548;
      v456 = v549;
      *(v453 + 32) = v548;
      *(v453 + 36) = v456;
      *(v453 + 40) = v547;
      *(v453 + 48) = sub_1AFA9EC20;
      *(v453 + 56) = v535;
      *(v453 + 64) = v448;
      v547 = v448;
      v457 = v537;
      memcpy((v453 + 72), v537, 0x148uLL);
      sub_1AFA9E320(v538, v453 + v449, type metadata accessor for TriggerScript);
      v458 = (v453 + v450);
      v459 = v532;
      *v458 = v524;
      v458[1] = v459;
      v460 = (v453 + v451);
      v461 = v551;
      v462 = v552;
      *v460 = v552;
      v460[1] = v461;
      v463 = v553;
      v460[2] = v553;
      v464 = (v453 + v452);
      *v464 = v455;
      v464[1] = v456;
      *(v453 + v515) = v520;
      if (v526)
      {
        v548 = *(v555 + 40);
        v465 = swift_allocObject();
        v465[2].isa = sub_1AFA9C844;
        v465[3].isa = v453;
        v549 = v465;

        sub_1AFA9C054(v457, &v568, &unk_1EB633F18, type metadata accessor for TriggerScript, &off_1F255BBC8, &off_1ED72C298);

        sub_1AF487F80(v462, v461, v463);
        v466 = qword_1ED730EA0;

        if (v466 != -1)
        {
          swift_once();
        }

        v375 = v542;
        v467 = v543;
        v468 = v517;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v469 = qword_1ED73B8A0;
        v470 = swift_allocObject();
        v471 = v549;
        *(v470 + 16) = sub_1AFA9EB90;
        *(v470 + 24) = v471;
        v472 = swift_allocObject();
        v472[2] = v469;
        v472[3] = sub_1AF6CC3F0;
        v472[4] = v470;
        *&v570 = sub_1AFA9EC30;
        *(&v570 + 1) = v472;
        *&v568 = MEMORY[0x1E69E9820];
        *(&v568 + 1) = 1107296256;
        *&v569 = sub_1AFCDA044;
        *(&v569 + 1) = &unk_1F2559BE0;
        v473 = _Block_copy(&v568);
        swift_retain_n();

        [v548 addOperationWithBlock_];
        _Block_release(v473);

        (*v522)(v468, v467);
        a3 = v529;

        sub_1AF487074(v552, v551, v553);
        v376 = v550;
        v371 = v530;
        goto LABEL_250;
      }

      v549 = *(v555 + 32);
      v474 = swift_allocObject();
      *(v474 + 16) = sub_1AFA9C844;
      *(v474 + 24) = v453;
      v475 = swift_allocObject();
      *(v475 + 16) = sub_1AFA9EB90;
      *(v475 + 24) = v474;
      *&v565 = sub_1AF6D25EC;
      *(&v565 + 1) = v475;
      *&v563 = MEMORY[0x1E69E9820];
      *(&v563 + 1) = 1107296256;
      *&v564 = sub_1AF6F662C;
      *(&v564 + 1) = &unk_1F2559B40;
      v476 = _Block_copy(&v563);
      v552 = v462;
      v477 = v476;
      v548 = *(&v565 + 1);

      sub_1AFA9C054(v537, &v568, &unk_1EB633F18, type metadata accessor for TriggerScript, &off_1F255BBC8, &off_1ED72C298);

      sub_1AF487F80(v462, v461, v553);

      dispatch_sync(v549, v477);
      _Block_release(v477);

      (*v522)(v517, v543);
      swift_isEscapingClosureAtFileLocation();
      a3 = v529;

      sub_1AF487074(v552, v461, v553);
      v375 = v542;
      v371 = v530;
      goto LABEL_249;
    }

    v478 = v558;
    v479 = (v558 != v547) | v417;
    v422 = v555;
    os_unfair_lock_unlock(*(v555 + 72));
    if ((v479 & 1) == 0)
    {
LABEL_303:
      v480 = v556;
      sub_1AFA9DE54(v554, v556, type metadata accessor for TriggerScript);
      v481 = *(v480 + 6);
      v482 = v546;
      if (v481)
      {
        v483 = *(v556 + 7);
        v484 = *(v556 + 1);
        v485 = *(v556 + 2);

        v486 = v485;
        a3 = v529;
        v487 = sub_1AF458B0C(v484, v486);
        v481(*&v556[v482[13]], v487);

        v488 = v483;
        v480 = v556;
        sub_1AF0FB8EC(v481, v488);
      }

      if (v480[v482[10]] == 1)
      {
        v489 = *&v480[v482[11]];
        v490 = v489;
      }

      else
      {
        sub_1AF81F330();
        v489 = swift_allocError();
        *v491 = v513;
      }

      v376 = v550;
      if (!*(v545 + 16) && v489)
      {
        v492 = v528;
        v493 = *(v528 + 72);
        v494 = v489;
        os_unfair_lock_lock(v493);
        v495 = *(v545 + 16);
        *(v545 + 16) = v489;
        v496 = v489;

        os_unfair_lock_unlock(*(v492 + 72));
      }

      v375 = v542;
      v497 = v551;
      dispatch_group_leave(a3);

      sub_1AF487074(v552, v497, v553);
      goto LABEL_250;
    }

    if (v478 != v547)
    {
      goto LABEL_283;
    }

    dispatch_group_leave(a3);

    sub_1AF487074(v552, v551, v553);
    v375 = v542;
LABEL_249:
    v376 = v550;
LABEL_250:
    ++v375;
    v376 += 24;
    v374 = v540 + v556;
    v554 = v541 + v554;
    if (v371 == v375)
    {
      v235 = 1;
LABEL_313:
      v372 = v533;
LABEL_314:
      sub_1AF630994(v510, &v620, v633);
      v533 = v372;
      sub_1AF62D29C(v246);
      ecs_stack_allocator_pop_snapshot(v509);
      if (v508)
      {
        os_unfair_lock_unlock(*(v246 + 344));
        os_unfair_lock_unlock(*(v246 + 376));
      }

      v240 = v507 + 1;
      if (v507 + 1 != v504)
      {
        goto LABEL_170;
      }

      sub_1AFA9BF94(v613, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v613, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v235 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(a3);
      }

LABEL_317:

      sub_1AFA62400(v498);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA945A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v261 = a8;
  v262 = a4;
  v271 = a6;
  v272 = a7;
  LODWORD(v269) = a3;
  sub_1AF5B21E4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v268 = &v257 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HeaderScript(0);
  MEMORY[0x1EEE9AC00](v16);
  v266 = &v257 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B21A8(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v267 = &v257 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v257 - v22;
  sub_1AF85B3D4(a2, &v374);
  if (v383)
  {
    v270 = a5;
    if (v383 != 1)
    {
      sub_1AFA9E8FC(a1, sub_1AF5B21E4);

      sub_1AF449D40(&v374, &v336);
      sub_1AF0D5A54(&v336, &v358);
      swift_dynamicCast();
      *(&v359 + 1) = v14;
      *&v360 = &off_1F250F310;
      v36 = sub_1AF585714(&v358);
      sub_1AFA9E3C8(a1, v36, sub_1AF5B21E4);
      BYTE8(v360) = 1;
      sub_1AF8259D0(&v358, v270, v271);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v336);
      goto LABEL_19;
    }

    v264 = a2;
    v392 = v8;
    v258 = sub_1AF5B21E4;
    v263 = a1;
    sub_1AFA9E8FC(a1, sub_1AF5B21E4);
    v265 = v377;
    v259 = v379;
    v260 = v378;
    sub_1AF449D40(&v374, &v336);
    sub_1AF449D40(&v380, v321);
    *v23 = 2;
    *(v23 + 1) = 0;
    *(v23 + 2) = 0xE000000000000000;
    v24 = MEMORY[0x1E69E7CC0];
    *(v23 + 4) = 0;
    *(v23 + 5) = 0;
    *(v23 + 3) = v24;
    v25 = *(v16 + 32);
    v26 = type metadata accessor for ScriptIndex(0);
    (*(*(v26 - 8) + 56))(&v23[v25], 1, 1, v26);
    v27 = &v23[v14[9]];
    *v27 = 0;
    v27[8] = 1;
    v23[v14[10]] = 0;
    *&v23[v14[11]] = 0;
    v28 = &v23[v14[12]];
    *v28 = 0;
    *(v28 + 1) = 0xE000000000000000;
    *&v23[v14[13]] = v24;
    v29 = v19[9];
    v257 = v19[10];
    v30 = v19[11];
    *&v23[v19[12]] = 0;
    v23[v19[13]] = 0;
    v31 = &v23[v19[14]];
    *v31 = 0;
    v31[8] = 1;
    v32 = v19[15];
    v23[v32] = 1;
    sub_1AF0D5A54(&v336, &v358);
    sub_1AFA9E8FC(v23, v258);
    swift_dynamicCast();
    *&v23[v29] = v265;
    v33 = v260;
    *&v23[v30] = v259;
    *&v23[v257] = v33;
    sub_1AF0D5A54(v321, &v358);

    swift_dynamicCast();
    v23[v32] = 0;
    sub_1AFA9E3C8(v23, v263, sub_1AF5B21E4);
    if (v269)
    {
      v34 = *(v262 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v34)
      {
        v35 = *(v34 + 80);
        swift_unknownObjectWeakLoadStrong();
        v34 = *(v34 + 56);
      }

      else
      {
        v35 = 0;
      }

      v39 = v266;
      LODWORD(v266) = v35;
      *&v359 = 0;
      swift_unknownObjectUnownedInit();
      v38 = v262;
      *&v358 = v262;
      *&v359 = v34;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      BYTE8(v359) = v35;
      v269 = sub_1AF5B21A8;
      v40 = v267;
      sub_1AFA9E3C8(v23, v267, sub_1AF5B21A8);
      sub_1AFA9E3C8(v40, v39, type metadata accessor for HeaderScript);
      sub_1AFA9E8FC(v40, sub_1AF5B21A8);
      v37 = v271;
      sub_1AF5AC5A8(v39, v271);
      sub_1AFA9E8FC(v39, type metadata accessor for HeaderScript);
      v41 = v268;
      sub_1AFA9E3C8(v23, v268, sub_1AF5B21E4);
      sub_1AF5AC738(v41, v37);
      sub_1AFA9E8FC(v41, sub_1AF5B21E4);
      sub_1AFA9E3C8(v23, v40, v269);
      sub_1AF5AC8C8(v40, v37);
      sub_1AFA9E8FC(v40, sub_1AF5B21A8);
      sub_1AF579490(&v358);
      if (v266)
      {
        v42 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v42 ^ 1);
      }
    }

    else
    {
      v37 = v271;
      v38 = v262;
      sub_1AFBFDF04(v23, v271);
    }

    *(&v359 + 1) = v19;
    *&v360 = &off_1F2558F90;
    v43 = sub_1AF585714(&v358);
    sub_1AFA9E3C8(v23, v43, sub_1AF5B21A8);
    BYTE8(v360) = 0;
    sub_1AF8259D0(&v358, v270, v37);
    v44 = sub_1AF3CB2E8(v37);
    v9 = v392;
    if (v44)
    {
      sub_1AFD08414(v38, v44, v45);
    }

    sub_1AF0D5A54(v321, &v358);
    if (swift_dynamicCast())
    {

      *&v358 = MEMORY[0x1E69E7CC0];
      *(&v358 + 1) = MEMORY[0x1E69E7CC0];
      sub_1AFD5541C();

      sub_1AFBFDF1C(v358, *(&v358 + 1), v37);
    }

    else
    {
      sub_1AF0D5A54(v321, &v358);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_18:
        sub_1AF678B44(v37, v46);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v321);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v336);
        sub_1AFA9E8FC(v23, sub_1AF5B21A8);
        a2 = v264;
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  sub_1AF85B3D4(a2, &v374);
  if (v383)
  {
    return sub_1AFA9C0C8(&v374);
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v350 = qword_1ED73B840;
  v351 = 0;
  v352 = 2;
  v353 = 0;
  v354 = 2;
  v355 = 0;
  sub_1AF70335C(1, &v295);
  v386 = v295;
  v387 = v296;
  v388 = v297;
  v389 = v298 | 1;
  v390 = v299;
  v391 = v300;
  v48 = v262;
  v49 = *(v262 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v262, &v386, 0x200000000, v301);
  v291 = v301[2];
  v292 = v302;
  v293 = v303;
  v294 = v304;
  v289 = v301[0];
  v290 = v301[1];
  sub_1AFA9E8FC(&v295, sub_1AF81FD74);
  v50 = v261;
  if (*&v301[0])
  {
    v268 = v304;
    if (v304 >= 1 && (v267 = *(&v302 + 1)) != 0)
    {
      v260 = v49;
      v266 = *(&v301[2] + 1);
      v265 = v303;
      v51 = *(v303 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v271 = *(&v303 + 1);
      v52 = *(*(&v303 + 1) + 32);
      v325 = *&v301[0];
      v326 = *(v301 + 8);
      v327 = *(&v301[1] + 8);
      v360 = v291;
      v361 = v292;
      v362 = v293;
      v363 = v294;
      v358 = v289;
      v359 = v290;
      sub_1AF5DD298(&v358, &v374);
      v53 = 0;
      LODWORD(v264) = v51;
      v263 = v52;
      do
      {
        v392 = v9;
        v54 = &v266[48 * v53];
        v55 = *v54;
        v56 = *(v54 + 1);
        v57 = *(v54 + 2);
        v58 = *(v54 + 3);
        v272 = *(v54 + 2);
        v269 = v58;
        v270 = v53;
        v59 = *(v54 + 4);
        v60 = *(v54 + 5);
        if (v51)
        {
          v61 = *(v60 + 376);

          os_unfair_lock_lock(v61);
          os_unfair_lock_lock(*(v60 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v52);
        v62 = v271;
        v63 = *(v271 + 4);
        v372[0] = *(v271 + 3);
        v372[1] = v63;
        v373 = v271[10];
        v64 = *(*(*(*(v60 + 40) + 16) + 32) + 16) + 1;
        v62[6] = ecs_stack_allocator_allocate(v271[4], 48 * v64, 8);
        v62[7] = v64;
        v62[9] = 0;
        v62[10] = 0;
        v62[8] = 0;
        LOBYTE(v336) = 1;
        *&v374 = v265;
        *(&v374 + 1) = v60;
        v375 = v62;
        v376 = v57;
        v377 = (v56 - v55 + v57);
        v378 = v268;
        v379 = v55;
        v380 = v56;
        v381 = 0;
        v382 = 1;
        v383 = v272;
        v384 = v269;
        v385 = v59;
        v65 = v392;
        sub_1AF706180(v60, &v374);
        v66 = v383;
        v269 = v65;
        if (v383)
        {
          v392 = v385;
          if (v385)
          {
            v67 = 0;
            v272 = v375;
            do
            {
              v68 = *(v66 + 8 * v67);
              v69 = *(v60 + 192);

              if (v69)
              {
                v70 = *(v60 + 208);
                *(v69 + 8 * (v68 >> 6)) |= 1 << v68;
                *(v70 + 8 * (v68 >> 6)) &= ~(1 << v68);
              }

              if (*(*(v60 + 40) + 213) == 1)
              {
                v71 = *(v60 + 48);
                v72 = (v71 + 32);
                v73 = *(v71 + 16) + 1;
                while (--v73)
                {
                  v74 = v72 + 5;
                  v75 = *v72;
                  v72 += 5;
                  if (v75 == &type metadata for PropagateDirtiness)
                  {
                    v76 = *(v74 - 2);
                    goto LABEL_43;
                  }
                }

                v76 = 0;
LABEL_43:
                v77 = *(v60 + 128);

                if (*(v60 + 184))
                {
                  goto LABEL_191;
                }

                v79 = v77 + v76;
                v80 = *(*(v60 + 168) + 4 * v68);
                v81 = (v79 + 8 * v68);
                v82 = *(*(v78 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v80 + 8);

                v83 = *v81;
                v84 = v81[1];
                if (v83 != -1 || v84 != 0)
                {
                  sub_1AF70D248(&v336, v80 | (v82 << 32), v83 | (v84 << 32));
                }
              }

              sub_1AF5B252C(0);
              v87 = *(*(v60 + 40) + 16);
              v88 = *(v87 + 128);
              if (*(v88 + 16))
              {
                v89 = v86;
                v90 = sub_1AF449CB8(v86);
                if ((v91 & 1) != 0 && *(*(v87 + 24) + 16 * *(*(v88 + 56) + 8 * v90) + 32) == v89)
                {
                  *&v336 = v89;
                  *(&v336 + 1) = &off_1F250F310;
                  BYTE8(v338) = 1;

                  sub_1AF6304E8(v272 + 104, &v336, v68, 0, v60, v272);

                  sub_1AF635250(&v336);
                }
              }

              v67 = (v67 + 1);
            }

            while (v67 != v392);
          }
        }

        else
        {
          v92 = v379;
          v93 = v380;
          if (v379 != v380)
          {
            v95 = v375;
            do
            {
              v96 = *(v60 + 192);

              if (v96)
              {
                v97 = *(v60 + 208);
                *(v96 + 8 * (v92 >> 6)) |= 1 << v92;
                *(v97 + 8 * (v92 >> 6)) &= ~(1 << v92);
              }

              if (*(*(v60 + 40) + 213) == 1)
              {
                v98 = *(v60 + 48);
                v99 = (v98 + 32);
                v100 = *(v98 + 16) + 1;
                while (--v100)
                {
                  v101 = v99 + 5;
                  v102 = *v99;
                  v99 += 5;
                  if (v102 == &type metadata for PropagateDirtiness)
                  {
                    v103 = *(v101 - 2);
                    goto LABEL_66;
                  }
                }

                v103 = 0;
LABEL_66:
                v104 = *(v60 + 128);

                if (*(v60 + 184))
                {
LABEL_191:
                  result = sub_1AFDFE518();
                  __break(1u);
                  return result;
                }

                v106 = v104 + v103;
                v107 = *(*(v60 + 168) + 4 * v92);
                v108 = (v106 + 8 * v92);
                v109 = *(*(v105 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v107 + 8);

                v110 = *v108;
                v111 = v108[1];
                if (v110 != -1 || v111 != 0)
                {
                  sub_1AF70D248(&v336, v107 | (v109 << 32), v110 | (v111 << 32));
                }
              }

              sub_1AF5B252C(0);
              v114 = *(*(v60 + 40) + 16);
              v115 = *(v114 + 128);
              if (*(v115 + 16))
              {
                v116 = v113;
                v117 = sub_1AF449CB8(v113);
                if ((v118 & 1) != 0 && *(*(v114 + 24) + 16 * *(*(v115 + 56) + 8 * v117) + 32) == v116)
                {
                  *&v336 = v116;
                  *(&v336 + 1) = &off_1F250F310;
                  BYTE8(v338) = 1;

                  sub_1AF6304E8(v95 + 104, &v336, v92, 0, v60, v95);

                  sub_1AF635250(&v336);
                }
              }

              ++v92;
            }

            while (v92 != v93);
          }
        }

        v94 = v269;
        sub_1AF630994(v271, &v325, v372);
        v9 = v94;
        sub_1AF62D29C(v60);
        v52 = v263;
        ecs_stack_allocator_pop_snapshot(v263);
        v51 = v264;
        if (v264)
        {
          os_unfair_lock_unlock(*(v60 + 344));
          os_unfair_lock_unlock(*(v60 + 376));
        }

        v53 = v270 + 1;
      }

      while (v270 + 1 != v267);
      sub_1AFA9BF94(v301, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v301, &qword_1ED725EA0, &type metadata for QueryResult);
      v50 = v261;
      v48 = v262;
      v49 = v260;
    }

    else
    {
      sub_1AFA9BF94(v301, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF70471C(1, &v305);
  v366 = v305;
  v367 = v306;
  v368 = v307;
  v369 = v308 | 1;
  v370 = v309;
  v371 = v310;
  sub_1AF6B06C0(v48, &v366, 0x200000000, v311);
  v285 = v311[2];
  v286 = v312;
  v287 = v313;
  v288 = v314;
  v283 = v311[0];
  v284 = v311[1];
  sub_1AFA9E8FC(&v305, sub_1AF81FC5C);
  if (*&v311[0])
  {
    v268 = v314;
    if (v314 >= 1 && (v267 = *(&v312 + 1)) != 0)
    {
      v260 = v49;
      v266 = *(&v311[2] + 1);
      v265 = v313;
      v119 = *(v313 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v271 = *(&v313 + 1);
      v120 = *(*(&v313 + 1) + 32);
      v328 = *&v311[0];
      v329 = *(v311 + 8);
      v330 = *(&v311[1] + 8);
      v338 = v285;
      v339 = v286;
      v340 = v287;
      v341 = v288;
      v336 = v283;
      v337 = v284;
      sub_1AF5DD298(&v336, &v358);
      v121 = 0;
      LODWORD(v264) = v119;
      v263 = v120;
      do
      {
        v392 = v9;
        v122 = &v266[48 * v121];
        v123 = *v122;
        v124 = *(v122 + 1);
        v125 = *(v122 + 2);
        v126 = *(v122 + 3);
        v272 = *(v122 + 2);
        v269 = v126;
        v270 = v121;
        v127 = *(v122 + 4);
        v128 = *(v122 + 5);
        if (v119)
        {
          v129 = *(v128 + 376);

          os_unfair_lock_lock(v129);
          os_unfair_lock_lock(*(v128 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v120);
        v130 = v271;
        v131 = *(v271 + 4);
        v356[0] = *(v271 + 3);
        v356[1] = v131;
        v357 = v271[10];
        v132 = *(*(*(*(v128 + 40) + 16) + 32) + 16) + 1;
        v130[6] = ecs_stack_allocator_allocate(v271[4], 48 * v132, 8);
        v130[7] = v132;
        v130[9] = 0;
        v130[10] = 0;
        v130[8] = 0;
        LOBYTE(v321[0]) = 1;
        *&v358 = v265;
        *(&v358 + 1) = v128;
        *&v359 = v130;
        *(&v359 + 1) = v125;
        *&v360 = (v124 - v123 + v125);
        *(&v360 + 1) = v268;
        *&v361 = v123;
        *(&v361 + 1) = v124;
        v362 = 0uLL;
        LOBYTE(v363) = 1;
        *(&v363 + 1) = v272;
        v364 = v269;
        v365 = v127;
        v133 = v392;
        sub_1AF706090(v128, &v358);
        v134 = *(&v363 + 1);
        v269 = v133;
        if (*(&v363 + 1))
        {
          v392 = v365;
          if (v365)
          {
            v135 = 0;
            v272 = v359;
            do
            {
              v136 = *(v134 + 8 * v135);
              v137 = *(v128 + 192);

              if (v137)
              {
                v138 = *(v128 + 208);
                *(v137 + 8 * (v136 >> 6)) |= 1 << v136;
                *(v138 + 8 * (v136 >> 6)) &= ~(1 << v136);
              }

              if (*(*(v128 + 40) + 213) == 1)
              {
                v139 = *(v128 + 48);
                v140 = (v139 + 32);
                v141 = *(v139 + 16) + 1;
                while (--v141)
                {
                  v142 = v140 + 5;
                  v143 = *v140;
                  v140 += 5;
                  if (v143 == &type metadata for PropagateDirtiness)
                  {
                    v144 = *(v142 - 2);
                    goto LABEL_98;
                  }
                }

                v144 = 0;
LABEL_98:
                v145 = *(v128 + 128);

                if (*(v128 + 184))
                {
                  goto LABEL_191;
                }

                v147 = v145 + v144;
                v148 = *(*(v128 + 168) + 4 * v136);
                v149 = (v147 + 8 * v136);
                v150 = *(*(v146 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v148 + 8);

                v151 = *v149;
                v152 = v149[1];
                if (v151 != -1 || v152 != 0)
                {
                  sub_1AF70D248(v321, v148 | (v150 << 32), v151 | (v152 << 32));
                }
              }

              sub_1AF5B24B4(0);
              v155 = *(*(v128 + 40) + 16);
              v156 = *(v155 + 128);
              if (*(v156 + 16))
              {
                v157 = v154;
                v158 = sub_1AF449CB8(v154);
                if ((v159 & 1) != 0 && *(*(v155 + 24) + 16 * *(*(v156 + 56) + 8 * v158) + 32) == v157)
                {
                  *&v321[0] = v157;
                  *(&v321[0] + 1) = &off_1F250F310;
                  BYTE8(v321[2]) = 1;

                  sub_1AF6304E8(v272 + 104, v321, v136, 0, v128, v272);

                  sub_1AF635250(v321);
                }
              }

              v135 = (v135 + 1);
            }

            while (v135 != v392);
          }
        }

        else
        {
          v161 = *(&v361 + 1);
          v160 = v361;
          if (v361 != *(&v361 + 1))
          {
            v163 = v359;
            do
            {
              v164 = *(v128 + 192);

              if (v164)
              {
                v165 = *(v128 + 208);
                *(v164 + 8 * (v160 >> 6)) |= 1 << v160;
                *(v165 + 8 * (v160 >> 6)) &= ~(1 << v160);
              }

              if (*(*(v128 + 40) + 213) == 1)
              {
                v166 = *(v128 + 48);
                v167 = (v166 + 32);
                v168 = *(v166 + 16) + 1;
                while (--v168)
                {
                  v169 = v167 + 5;
                  v170 = *v167;
                  v167 += 5;
                  if (v170 == &type metadata for PropagateDirtiness)
                  {
                    v171 = *(v169 - 2);
                    goto LABEL_121;
                  }
                }

                v171 = 0;
LABEL_121:
                v172 = *(v128 + 128);

                if (*(v128 + 184))
                {
                  goto LABEL_191;
                }

                v174 = v172 + v171;
                v175 = *(*(v128 + 168) + 4 * v160);
                v176 = (v174 + 8 * v160);
                v177 = *(*(v173 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v175 + 8);

                v178 = *v176;
                v179 = v176[1];
                if (v178 != -1 || v179 != 0)
                {
                  sub_1AF70D248(v321, v175 | (v177 << 32), v178 | (v179 << 32));
                }
              }

              sub_1AF5B24B4(0);
              v182 = *(*(v128 + 40) + 16);
              v183 = *(v182 + 128);
              if (*(v183 + 16))
              {
                v184 = v181;
                v185 = sub_1AF449CB8(v181);
                if ((v186 & 1) != 0 && *(*(v182 + 24) + 16 * *(*(v183 + 56) + 8 * v185) + 32) == v184)
                {
                  *&v321[0] = v184;
                  *(&v321[0] + 1) = &off_1F250F310;
                  BYTE8(v321[2]) = 1;

                  sub_1AF6304E8(v163 + 104, v321, v160, 0, v128, v163);

                  sub_1AF635250(v321);
                }
              }

              ++v160;
            }

            while (v160 != v161);
          }
        }

        v162 = v269;
        sub_1AF630994(v271, &v328, v356);
        v9 = v162;
        sub_1AF62D29C(v128);
        v120 = v263;
        ecs_stack_allocator_pop_snapshot(v263);
        v119 = v264;
        if (v264)
        {
          os_unfair_lock_unlock(*(v128 + 344));
          os_unfair_lock_unlock(*(v128 + 376));
        }

        v121 = v270 + 1;
      }

      while (v270 + 1 != v267);
      sub_1AFA9BF94(v311, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v311, &qword_1ED725EA0, &type metadata for QueryResult);
      v50 = v261;
      v48 = v262;
    }

    else
    {
      sub_1AFA9BF94(v311, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF7044B4(1, &v315);
  v344 = v315;
  v345 = v316;
  v346 = v317;
  v347 = v318 | 1;
  v348 = v319;
  v349 = v320;
  sub_1AF6B06C0(v48, &v344, 0x200000000, v321);
  v279 = v321[2];
  v280 = v322;
  v281 = v323;
  v282 = v324;
  v277 = v321[0];
  v278 = v321[1];
  sub_1AFA9E8FC(&v315, sub_1AF81FB10);
  if (*&v321[0])
  {
    v268 = v324;
    if (v324 >= 1 && (v267 = *(&v322 + 1)) != 0)
    {
      v266 = *(&v321[2] + 1);
      v265 = v323;
      v187 = *(v323 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v271 = *(&v323 + 1);
      v188 = *(*(&v323 + 1) + 32);
      v331 = *&v321[0];
      v332 = *(v321 + 8);
      v333 = *(&v321[1] + 8);
      v276[2] = v279;
      v276[3] = v280;
      v276[4] = v281;
      v276[5] = v282;
      v276[0] = v277;
      v276[1] = v278;
      sub_1AF5DD298(v276, &v336);
      v189 = 0;
      LODWORD(v264) = v187;
      v263 = v188;
      do
      {
        v392 = v9;
        v190 = &v266[48 * v189];
        v191 = *v190;
        v192 = *(v190 + 1);
        v193 = *(v190 + 2);
        v194 = *(v190 + 3);
        v272 = *(v190 + 2);
        v269 = v194;
        v270 = v189;
        v195 = *(v190 + 4);
        v196 = *(v190 + 5);
        if (v187)
        {
          v197 = *(v196 + 376);

          os_unfair_lock_lock(v197);
          os_unfair_lock_lock(*(v196 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v188);
        v198 = v271;
        v199 = *(v271 + 4);
        v334[0] = *(v271 + 3);
        v334[1] = v199;
        v335 = v271[10];
        v200 = *(*(*(*(v196 + 40) + 16) + 32) + 16) + 1;
        v198[6] = ecs_stack_allocator_allocate(v271[4], 48 * v200, 8);
        v198[7] = v200;
        v198[9] = 0;
        v198[10] = 0;
        v198[8] = 0;
        LOBYTE(v273) = 1;
        *&v336 = v265;
        *(&v336 + 1) = v196;
        *&v337 = v198;
        *(&v337 + 1) = v193;
        *&v338 = (v192 - v191 + v193);
        *(&v338 + 1) = v268;
        *&v339 = v191;
        *(&v339 + 1) = v192;
        v340 = 0uLL;
        LOBYTE(v341) = 1;
        *(&v341 + 1) = v272;
        v342 = v269;
        v343 = v195;
        v201 = v392;
        sub_1AF706D00(v196, &v336);
        v202 = *(&v341 + 1);
        v269 = v201;
        if (*(&v341 + 1))
        {
          v392 = v343;
          if (v343)
          {
            v203 = 0;
            v272 = v337;
            do
            {
              v204 = *(v202 + 8 * v203);
              v205 = *(v196 + 192);

              if (v205)
              {
                v206 = *(v196 + 208);
                *(v205 + 8 * (v204 >> 6)) |= 1 << v204;
                *(v206 + 8 * (v204 >> 6)) &= ~(1 << v204);
              }

              if (*(*(v196 + 40) + 213) == 1)
              {
                v207 = *(v196 + 48);
                v208 = (v207 + 32);
                v209 = *(v207 + 16) + 1;
                while (--v209)
                {
                  v210 = v208 + 5;
                  v211 = *v208;
                  v208 += 5;
                  if (v211 == &type metadata for PropagateDirtiness)
                  {
                    v212 = *(v210 - 2);
                    goto LABEL_153;
                  }
                }

                v212 = 0;
LABEL_153:
                v213 = *(v196 + 128);

                if (*(v196 + 184))
                {
                  goto LABEL_191;
                }

                v215 = v213 + v212;
                v216 = *(*(v196 + 168) + 4 * v204);
                v217 = (v215 + 8 * v204);
                v218 = *(*(v214 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v216 + 8);

                v219 = *v217;
                v220 = v217[1];
                if (v219 != -1 || v220 != 0)
                {
                  sub_1AF70D248(&v273, v216 | (v218 << 32), v219 | (v220 << 32));
                }
              }

              sub_1AF5B243C(0);
              v223 = *(*(v196 + 40) + 16);
              v224 = *(v223 + 128);
              if (*(v224 + 16))
              {
                v225 = v222;
                v226 = sub_1AF449CB8(v222);
                if ((v227 & 1) != 0 && *(*(v223 + 24) + 16 * *(*(v224 + 56) + 8 * v226) + 32) == v225)
                {
                  v273 = v225;
                  v274 = &off_1F250F310;
                  v275 = 1;

                  sub_1AF6304E8(v272 + 104, &v273, v204, 0, v196, v272);

                  sub_1AF635250(&v273);
                }
              }

              v203 = (v203 + 1);
            }

            while (v203 != v392);
          }
        }

        else
        {
          v229 = *(&v339 + 1);
          v228 = v339;
          if (v339 != *(&v339 + 1))
          {
            v231 = v337;
            do
            {
              v232 = *(v196 + 192);

              if (v232)
              {
                v233 = *(v196 + 208);
                *(v232 + 8 * (v228 >> 6)) |= 1 << v228;
                *(v233 + 8 * (v228 >> 6)) &= ~(1 << v228);
              }

              if (*(*(v196 + 40) + 213) == 1)
              {
                v234 = *(v196 + 48);
                v235 = (v234 + 32);
                v236 = *(v234 + 16) + 1;
                while (--v236)
                {
                  v237 = v235 + 5;
                  v238 = *v235;
                  v235 += 5;
                  if (v238 == &type metadata for PropagateDirtiness)
                  {
                    v239 = *(v237 - 2);
                    goto LABEL_176;
                  }
                }

                v239 = 0;
LABEL_176:
                v240 = *(v196 + 128);

                if (*(v196 + 184))
                {
                  goto LABEL_191;
                }

                v242 = v240 + v239;
                v243 = *(*(v196 + 168) + 4 * v228);
                v244 = (v242 + 8 * v228);
                v245 = *(*(v241 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v243 + 8);

                v246 = *v244;
                v247 = v244[1];
                if (v246 != -1 || v247 != 0)
                {
                  sub_1AF70D248(&v273, v243 | (v245 << 32), v246 | (v247 << 32));
                }
              }

              sub_1AF5B243C(0);
              v250 = *(*(v196 + 40) + 16);
              v251 = *(v250 + 128);
              if (*(v251 + 16))
              {
                v252 = v249;
                v253 = sub_1AF449CB8(v249);
                if ((v254 & 1) != 0 && *(*(v250 + 24) + 16 * *(*(v251 + 56) + 8 * v253) + 32) == v252)
                {
                  v273 = v252;
                  v274 = &off_1F250F310;
                  v275 = 1;

                  sub_1AF6304E8(v231 + 104, &v273, v228, 0, v196, v231);

                  sub_1AF635250(&v273);
                }
              }

              ++v228;
            }

            while (v228 != v229);
          }
        }

        v230 = v269;
        sub_1AF630994(v271, &v331, v334);
        v9 = v230;
        sub_1AF62D29C(v196);
        v188 = v263;
        ecs_stack_allocator_pop_snapshot(v263);
        v187 = v264;
        if (v264)
        {
          os_unfair_lock_unlock(*(v196 + 344));
          os_unfair_lock_unlock(*(v196 + 376));
        }

        v189 = v270 + 1;
      }

      while (v270 + 1 != v267);
      sub_1AFA9BF94(v321, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v321, &qword_1ED725EA0, &type metadata for QueryResult);
      v50 = v261;
      v48 = v262;
    }

    else
    {
      sub_1AFA9BF94(v321, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AFA6E5A8(v48, sub_1AF70424C, sub_1AF81F9C4, sub_1AF705FA0, sub_1AF5B23C4);
  sub_1AFA6E5A8(v48, sub_1AF704984, sub_1AF81F8AC, sub_1AF706CCC, sub_1AF5B25A4);
  sub_1AFA6E5A8(v48, sub_1AF703D7C, sub_1AF81F794, sub_1AF706C98, sub_1AF5B234C);
  sub_1AFA6E5A8(v48, sub_1AF703D5C, sub_1AF81F67C, sub_1AF706C64, sub_1AF5B22D4);
  result = sub_1AFA6E5A8(v48, sub_1AF703D3C, sub_1AF81F514, sub_1AF70632C, sub_1AF5B225C);
  if (v50)
  {
    return sub_1AF1301DC(v50, v255, v256);
  }

  return result;
}

uint64_t sub_1AFA9635C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 72);

  os_unfair_lock_lock(v5);
  v6 = *(a1 + 80);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v43 = (v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v44 = v4;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
LABEL_5:
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v12 = v11 + 1;
    if (v11 + 1 >= v10)
    {
      break;
    }

    v9 = *(v6 + 72 + 8 * v11++);
    if (v9)
    {
      v11 = v12;
LABEL_9:
      while (1)
      {
        v13 = __clz(__rbit64(v9)) | (v11 << 6);
        v14 = *(v6 + 48) + 16 * v13;
        v15 = *v14;
        v16 = *(v14 + 12);
        v17 = *(v14 + 8);
        sub_1AF85B3D4(*(v6 + 56) + 96 * v13, &v45);
        if (v46 == 255)
        {
          goto LABEL_34;
        }

        v9 &= v9 - 1;
        if (v15 == type metadata accessor for HeaderScript(0))
        {
          v18 = v17 == -1 && v16 == 0;
          if (v18 || (v17 & 0x80000000) != 0 || v43[1] <= v17 || (v16 != -1 ? (v19 = *(*v43 + 12 * v17 + 8) == v16) : (v19 = 1), !v19 || (v40 = (*v43 + 12 * v17), sub_1AF5B21E4(0), v21 = *(*(*(*(v44 + 88) + 8 * *(v40 + 3) + 32) + 16) + 128), !*(v21 + 16)) || (v38 = *(*(*(v44 + 88) + 8 * *(v40 + 3) + 32) + 16), v39 = v20, v22 = sub_1AF449CB8(v20), (v23 & 1) == 0) || *(*(v38 + 24) + 16 * *(*(v21 + 56) + 8 * v22) + 32) != v39))
          {
            sub_1AFA9C0C8(&v45);
            goto LABEL_5;
          }

          if (*(*(v39 - 8) + 64))
          {
            v24 = *(*(v39 - 8) + 72);
          }

          else
          {
            v24 = 0;
          }

          v25 = *(*(v44 + 144) + 8 * *v40 + 32);
          v26 = *(v25 + 48);
          v27 = (v26 + 32);
          v28 = *(v26 + 16) + 1;
          while (--v28)
          {
            v29 = v27 + 5;
            v30 = *v27;
            v27 += 5;
            if (v30 == v39)
            {
              sub_1AFA945A0(*(v25 + 128) + *(v29 - 2) + v24 * *(v40 + 2), &v45, a3 & 1, v44, v15, (v17 | (v16 << 32)), a1, a2);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v37 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v37);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF454B0);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v45);
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v31 = *(*(a1 + 80) + 16);
  if (v31)
  {

    v33 = sub_1AFA6F718(v32, type metadata accessor for HeaderScript);

    *(a1 + 80) = v33;

    v34 = *(*(a1 + 80) + 16);
  }

  else
  {
    v34 = 0;
  }

  v35 = v31 != v34;
  os_unfair_lock_unlock(*(a1 + 72));

  return v35;
}

uint64_t sub_1AFA967B8(uint64_t a1, uint64_t a2, NSObject *a3, int a4, void (**a5)(char *, uint64_t, uint64_t, __n128), int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v521) = a6;
  v519 = 0;
  v520 = a5;
  v513 = a4;
  v518 = a2;
  v532 = type metadata accessor for HeaderScript(0);
  v514 = *(v532 - 8);
  MEMORY[0x1EEE9AC00](v532);
  v516 = v13;
  v526 = &v489 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v493 = &v489 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v506 = &v489 - v17;
  v18 = sub_1AFDFC4F8();
  v509 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v505 = &v489 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v512 = &v489 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v517 = &v489 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v533 = a8;

  v515 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v619[0] = *(a7 + 168);
  v619[1] = v26;
  v620 = *(a7 + 25);
  v27 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v504 = v25;
  sub_1AF6B06C0(v25, v619, 0x200000000, v578);
  v524 = a3;
  v543 = a1;
  v545 = v24;
  v522 = a7;
  *&v523 = v27;
  v528 = v18;
  if (*&v578[0])
  {
    if (v582 >= 1)
    {
      if (*(&v580 + 1))
      {
        v28 = *(&v579 + 1);
        v29 = *(&v581 + 1);
        v30 = *(&v579 + 1) + 48 * *(&v580 + 1);
        sub_1AF5B21E4(0);
        v538 = v31;
        v558 = v579;
        v559 = v580;
        v560 = v581;
        v561 = v582;
        v556 = v578[0];
        v557 = v578[1];
        sub_1AF5DD298(&v556, &v635);
        v542 = v29;
        v527 = v30;
        do
        {
          isa = v28[5].isa;
          v33 = *(isa + 47);
          swift_retain_n();
          os_unfair_lock_lock(v33);
          os_unfair_lock_lock(*(isa + 43));
          v34 = *(isa + 6);

          v637 = 0;
          v635 = 0u;
          v636 = 0u;
          memset(v601, 0, 40);
          v35 = sub_1AF65A4B4(v34, v538, &off_1F250F310, 0, 0, &v635, v601);

          sub_1AFA9E8FC(v601, sub_1AF5C4448);
          sub_1AFA9E8FC(&v635, sub_1AF5C4448);
          if (sub_1AF649CEC(v35))
          {
            sub_1AF649D40(v35, v29);
            a3 = v524;
          }

          else
          {
            v537 = v28;
            v37 = *(isa + 29);
            v36 = *(isa + 30);
            v38 = *(isa + 120);
            v530 = *(isa + 7);
            v39 = *(isa + 32);
            v544 = *(isa + 2);
            v40 = *(isa + 5);
            v41 = v40[200];
            v42 = *(*(v544 + 11) + 8 * v35 + 32);

            if ((v41 & 1) != 0 || *(v42 + 200) == 1)
            {
              v544[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
              v40 = *(isa + 5);
            }

            v43 = v40[212];
            LODWORD(v536) = v38;
            LODWORD(v531) = v35;
            if (v43)
            {
              LODWORD(v535) = 0;
            }

            else
            {
              LODWORD(v535) = *(v42 + 212);
            }

            v29 = v542;
            LODWORD(v534) = v40[208];
            v541 = *(isa + 16);
            v44 = *(isa + 32);
            v45 = v36;
            v46 = v519;
            sub_1AF5B4FCC(v40, v37, v45, 0, isa);
            v519 = v46;
            v539 = *(isa + 32);
            v540 = v44;
            v47 = v539 - v44;
            if (v539 == v44)
            {
              v48 = 0;
            }

            else
            {
              v48 = v44;
            }

            v49 = v48;
            *&v601[0] = v48;
            v50 = *(*(isa + 5) + 24);
            v51 = *(v50 + 16);
            if (v51)
            {
              LODWORD(v529) = v39;
              v52 = v50 + 32;

              v53 = 0;
              v54 = v541;
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
                    v54 = v541;
                  }
                }

                ++v53;
              }

              while (v53 != v51);

              v29 = v542;
              LOBYTE(v39) = v529;
            }

            if (*&v544[OBJC_IVAR____TtC3VFX13EntityManager_counters])
            {
              vfx_counters.add(_:_:)(*&v544[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(isa + 9) * v47);
            }

            if (*(isa + 184))
            {
              v63 = 0;
            }

            else
            {
              v63 = *(isa + 21);
            }

            *&v596[0] = 0;

            DWORD2(v636) = -1;
            v637 = v540;
            v638 = v539;
            v639 = v540;
            v640 = v539;
            *&v635 = v540;
            *(&v635 + 1) = v539;
            *&v636 = v63;
            if (v47 < 1)
            {
            }

            else
            {
              v529 = &v489;

              v64 = v42;

              v65 = v536;
              v66 = v535;
              v67 = v530;
              v68 = v531;
              v69 = v534;
              v70 = v541;
              do
              {

                LOBYTE(v588) = v39;
                LOBYTE(v488) = v69;
                sub_1AF626158(v68, v67 | (v39 << 32), v65, v544, &v635, v67 | (v39 << 32), isa, v64, 0, 0, 0, 0, v601, v70, v596, v488, v68, v66, v542);
              }

              while ((*(&v635 + 1) - v635) > 0);

              v29 = v542;
            }

            v71 = *(isa + 24);
            a3 = v524;
            v28 = v537;
            v30 = v527;
            if (v71)
            {
              v72 = *(isa + 26);
              v544 = *(isa + 27);
              v73 = v540;
              v74 = v527;
              v75 = v29;
              v76 = v539;
              sub_1AF75D364(v540, v539, v71);
              v77 = v76;
              v29 = v75;
              v30 = v74;
              sub_1AF75D364(v73, v77, v72);
            }

            a1 = v543;
          }

          v28 += 6;
          os_unfair_lock_unlock(*(isa + 43));
          os_unfair_lock_unlock(*(isa + 47));
        }

        while (v28 != v30);
        sub_1AFA9BF94(v578, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v578, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v529) = 1;
        a7 = v522;
      }

      else
      {
        sub_1AFA9BF94(v578, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v529) = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v578, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  LODWORD(v529) = 0;
LABEL_44:
  v78 = a7[4];
  v617[0] = a7[3];
  v617[1] = v78;
  v618 = *(a7 + 10);
  sub_1AF6B06C0(v504, v617, 0x200000000, v583);
  if (*&v583[0])
  {
    if (v587 >= 1 && *(&v585 + 1))
    {
      v79 = *(&v584 + 1);
      v80 = *(&v586 + 1);
      v81 = *(&v584 + 1) + 48 * *(&v585 + 1);
      sub_1AF5B21A8(0);
      v538 = v82;
      v558 = v584;
      v559 = v585;
      v560 = v586;
      v561 = v587;
      v556 = v583[0];
      v557 = v583[1];
      sub_1AF5DD298(&v556, &v635);
      v542 = v80;
      v527 = v81;
      do
      {
        v83 = v79[5].isa;
        v84 = *(v83 + 47);
        swift_retain_n();
        os_unfair_lock_lock(v84);
        os_unfair_lock_lock(*(v83 + 43));
        v85 = *(v83 + 6);

        v637 = 0;
        v635 = 0u;
        v636 = 0u;
        memset(v601, 0, 40);
        v86 = sub_1AF65A4B4(v85, 0, 0, v538, &off_1F2558F90, &v635, v601);

        sub_1AFA9E8FC(v601, sub_1AF5C4448);
        sub_1AFA9E8FC(&v635, sub_1AF5C4448);
        if (sub_1AF649CEC(v86))
        {
          sub_1AF649D40(v86, v80);
          a3 = v524;
        }

        else
        {
          v537 = v79;
          v88 = *(v83 + 29);
          v87 = *(v83 + 30);
          v89 = *(v83 + 120);
          v530 = *(v83 + 7);
          v90 = *(v83 + 32);
          v544 = *(v83 + 2);
          v91 = *(v83 + 5);
          v92 = v91[200];
          v93 = *(*(v544 + 11) + 8 * v86 + 32);

          if ((v92 & 1) != 0 || *(v93 + 200) == 1)
          {
            v544[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
            v91 = *(v83 + 5);
          }

          v94 = v91[212];
          LODWORD(v536) = v89;
          LODWORD(v531) = v86;
          if (v94)
          {
            LODWORD(v535) = 0;
          }

          else
          {
            LODWORD(v535) = *(v93 + 212);
          }

          v80 = v542;
          LODWORD(v534) = v91[208];
          v541 = *(v83 + 16);
          v95 = *(v83 + 32);
          v96 = v87;
          v97 = v519;
          sub_1AF5B4FCC(v91, v88, v96, 0, v83);
          v519 = v97;
          v539 = *(v83 + 32);
          v540 = v95;
          v98 = v539 - v95;
          if (v539 == v95)
          {
            v99 = 0;
          }

          else
          {
            v99 = v95;
          }

          v100 = v99;
          *&v601[0] = v99;
          v101 = *(*(v83 + 5) + 24);
          v102 = *(v101 + 16);
          if (v102)
          {
            LODWORD(v529) = v90;
            v103 = v101 + 32;

            v104 = 0;
            v105 = v541;
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
                  v105 = v541;
                }
              }

              ++v104;
            }

            while (v104 != v102);

            v80 = v542;
            LOBYTE(v90) = v529;
          }

          if (*&v544[OBJC_IVAR____TtC3VFX13EntityManager_counters])
          {
            vfx_counters.add(_:_:)(*&v544[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(v83 + 9) * v98);
          }

          if (*(v83 + 184))
          {
            v114 = 0;
          }

          else
          {
            v114 = *(v83 + 21);
          }

          *&v596[0] = 0;

          DWORD2(v636) = -1;
          v637 = v540;
          v638 = v539;
          v639 = v540;
          v640 = v539;
          *&v635 = v540;
          *(&v635 + 1) = v539;
          *&v636 = v114;
          if (v98 < 1)
          {
          }

          else
          {
            v529 = &v489;

            v115 = v93;

            v116 = v536;
            v117 = v535;
            v118 = v530;
            v119 = v531;
            v120 = v534;
            v121 = v541;
            do
            {

              LOBYTE(v588) = v90;
              LOBYTE(v488) = v120;
              sub_1AF626158(v119, v118 | (v90 << 32), v116, v544, &v635, v118 | (v90 << 32), v83, v115, 0, 0, 0, 0, v601, v121, v596, v488, v119, v117, v542);
            }

            while ((*(&v635 + 1) - v635) > 0);

            v80 = v542;
          }

          v122 = *(v83 + 24);
          a3 = v524;
          v79 = v537;
          v81 = v527;
          if (v122)
          {
            v123 = *(v83 + 26);
            v544 = *(v83 + 27);
            v124 = v540;
            v125 = v527;
            v126 = v80;
            v127 = v539;
            sub_1AF75D364(v540, v539, v122);
            v128 = v127;
            v80 = v126;
            v81 = v125;
            sub_1AF75D364(v124, v128, v123);
          }

          a1 = v543;
        }

        v79 += 6;
        os_unfair_lock_unlock(*(v83 + 43));
        os_unfair_lock_unlock(*(v83 + 47));
      }

      while (v79 != v81);
      sub_1AFA9BF94(v583, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v583, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v529) = 1;
      a7 = v522;
    }

    else
    {
      sub_1AFA9BF94(v583, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v529) = 1;
    }
  }

  v129 = *(a7 + 104);
  v615[0] = *(a7 + 88);
  v615[1] = v129;
  v616 = *(a7 + 15);
  sub_1AF6B06C0(v504, v615, 0x200000000, &v588);
  if (v588)
  {
    v539 = v595;
    if (v595 >= 1)
    {
      v538 = v592;
      if (v592)
      {
        v130 = 0;
        v537 = v591;
        v131 = v594;
        v535 = v594;
        v536 = v593;
        v132 = *(&v593->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v544 = v594[4];
        v605 = v588;
        v606 = v589;
        v607 = v590;
        LODWORD(v534) = v132;
        do
        {
          v542 = v130;
          v133 = &v537[6 * v130];
          isa_low = LODWORD(v133->isa);
          isa_high = HIDWORD(v133->isa);
          v136 = LODWORD(v133[1].isa);
          v137 = v133[2].isa;
          v138 = v133[3].isa;
          v140 = v133[4].isa;
          v139 = v133[5].isa;
          if (v132)
          {
            v141 = *(v139 + 376);

            os_unfair_lock_lock(v141);
            os_unfair_lock_lock(*(v139 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v544);
          v142 = *(v131 + 4);
          v633[0] = *(v131 + 3);
          v633[1] = v142;
          v634 = v131[10];
          v143 = *(*(*(*(v139 + 40) + 16) + 32) + 16) + 1;
          v131[6] = ecs_stack_allocator_allocate(v131[4], 48 * v143, 8);
          v131[7] = v143;
          v131[9] = 0;
          v131[10] = 0;
          v131[8] = 0;
          LOBYTE(v556) = 1;
          *&v635 = v536;
          *(&v635 + 1) = v139;
          *&v636 = v131;
          *(&v636 + 1) = v136;
          v637 = (isa_high - isa_low + v136);
          v638 = v539;
          v639 = isa_low;
          v640 = isa_high;
          v641 = 0;
          v642 = 0;
          v643 = 1;
          v644 = v137;
          v645 = v138;
          v646 = v140;
          v144 = v519;
          v145 = sub_1AF706C28(v139, &v635);
          v146 = v644;
          v541 = v144;
          if (v644)
          {
            v147 = v646;
            if (v646)
            {
              v540 = v636;
              v148 = (v145 + 8);
              do
              {
                v146 = (v146 + 8);
                v149 = *(v148 - 1);
                v150 = *v148;

                sub_1AFD08414(v151, v149, v150);

                sub_1AF6FCBE8(0);
                v153 = *(*(v139 + 40) + 16);
                v154 = *(v153 + 128);
                if (*(v154 + 16))
                {
                  v155 = v152;
                  v156 = sub_1AF449CB8(v152);
                  if ((v157 & 1) != 0 && *(*(v153 + 24) + 16 * *(*(v154 + 56) + 8 * v156) + 32) == v155)
                  {
                    *&v556 = v155;
                    *(&v556 + 1) = &off_1F2559388;
                    BYTE8(v558) = 1;
                    MEMORY[0x1EEE9AC00](v156);
                    v488 = v139;

                    sub_1AF63023C(0, v139, sub_1AFA9EC24);

                    sub_1AF635250(&v556);
                  }
                }

                v148 += 2;
                v147 = (v147 - 1);
              }

              while (v147);
            }
          }

          else
          {
            v158 = v639;
            v159 = v640;
            if (v639 != v640)
            {
              v161 = &v145[16 * v639 + 8];
              do
              {
                v162 = *(v161 - 1);
                v163 = *v161;

                sub_1AFD08414(v164, v162, v163);

                sub_1AF6FCBE8(0);
                v166 = *(*(v139 + 40) + 16);
                v167 = *(v166 + 128);
                if (*(v167 + 16))
                {
                  v168 = v165;
                  v169 = sub_1AF449CB8(v165);
                  if ((v170 & 1) != 0 && *(*(v166 + 24) + 16 * *(*(v167 + 56) + 8 * v169) + 32) == v168)
                  {
                    *&v556 = v168;
                    *(&v556 + 1) = &off_1F2559388;
                    BYTE8(v558) = 1;
                    MEMORY[0x1EEE9AC00](v169);
                    v488 = v139;

                    sub_1AF63023C(0, v139, sub_1AF6AFAF8);

                    sub_1AF635250(&v556);
                  }
                }

                ++v158;
                v161 += 2;
              }

              while (v159 != v158);
            }
          }

          v131 = v535;
          v160 = v541;
          sub_1AF630994(v535, &v605, v633);
          sub_1AF62D29C(v139);
          ecs_stack_allocator_pop_snapshot(v544);
          v132 = v534;
          if (v534)
          {
            os_unfair_lock_unlock(*(v139 + 344));
            os_unfair_lock_unlock(*(v139 + 376));
          }

          v519 = v160;

          v130 = v542 + 1;
        }

        while ((v542 + 1) != v538);
      }
    }

    sub_1AFA9BF94(&v588, &qword_1ED725EA0, &type metadata for QueryResult);
    a3 = v524;
    a1 = v543;
  }

  v171 = v522[9];
  v613[0] = v522[8];
  v613[1] = v171;
  v614 = *(v522 + 20);
  sub_1AF6B06C0(v504, v613, 0x200000000, v596);
  if (*&v596[0])
  {
    v172 = v600;
    if (v600 >= 1 && *(&v598 + 1))
    {
      v511 = v600;
      v173 = *(&v597 + 1);
      v174 = *(&v599 + 1);
      v175 = *(&v597 + 1) + 48 * *(&v598 + 1);
      sub_1AF5B21E4(0);
      v538 = v176;
      v558 = v597;
      v559 = v598;
      v560 = v599;
      v561 = v600;
      v556 = v596[0];
      v557 = v596[1];
      sub_1AF5DD298(&v556, v601);
      v542 = v174;
      v525 = v175;
      do
      {
        v177 = v173[5].isa;
        v178 = *(v177 + 47);
        swift_retain_n();
        os_unfair_lock_lock(v178);
        os_unfair_lock_lock(*(v177 + 43));
        v179 = *(v177 + 6);

        memset(v601, 0, 40);
        *&v574 = 0;
        v573 = 0u;
        v572 = 0u;
        v180 = sub_1AF65A4B4(v179, 0, 0, v538, &off_1F250F310, v601, &v572);

        sub_1AFA9E8FC(&v572, sub_1AF5C4448);
        sub_1AFA9E8FC(v601, sub_1AF5C4448);
        if (sub_1AF649CEC(v180))
        {
          sub_1AF649D40(v180, v174);
          a3 = v524;
        }

        else
        {
          v537 = v173;
          v182 = *(v177 + 29);
          v181 = *(v177 + 30);
          LODWORD(v536) = *(v177 + 120);
          v530 = *(v177 + 7);
          v183 = *(v177 + 32);
          v184 = *(v177 + 2);
          v185 = *(v177 + 5);
          v186 = v185[200];

          if ((v186 & 1) != 0 || *(v187 + 200) == 1)
          {
            v184[OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent] = 1;
            v185 = *(v177 + 5);
          }

          v188 = v185[212];
          v189 = v187;
          v544 = v184;
          LODWORD(v531) = v180;
          if (v188)
          {
            LODWORD(v535) = 0;
          }

          else
          {
            LODWORD(v535) = *(v187 + 212);
          }

          v174 = v542;
          LODWORD(v534) = v185[208];
          v541 = *(v177 + 16);
          v190 = *(v177 + 32);
          v191 = v181;
          v192 = v519;
          sub_1AF5B4FCC(v185, v182, v191, 0, v177);
          v519 = v192;
          v539 = *(v177 + 32);
          v540 = v190;
          v193 = v539 - v190;
          if (v539 == v190)
          {
            v194 = 0;
          }

          else
          {
            v194 = v190;
          }

          v195 = v194;
          *&v572 = v194;
          v196 = *(*(v177 + 5) + 24);
          v197 = *(v196 + 16);
          if (v197)
          {
            LODWORD(v527) = v183;
            v198 = v196 + 32;

            v199 = 0;
            v200 = v541;
            v201 = v193;
            v202 = v189;
            do
            {
              v203 = (v198 + 40 * v199);
              if ((v203[4] & 1) == 0)
              {
                v204 = *v203;
                v206 = v203[2];
                v205 = v203[3];
                v207 = *(v202 + 24);
                v208 = *(v207 + 16);
                if (v208)
                {
                  v209 = (v207 + 32);
                  while (*v209 != v204)
                  {
                    v209 += 5;
                    if (!--v208)
                    {
                      goto LABEL_130;
                    }
                  }
                }

                else
                {
LABEL_130:
                  sub_1AF640BC8(v200 + v206 * v195 + v205, v201);
                  v202 = v189;
                  v201 = v193;
                  v200 = v541;
                }
              }

              ++v199;
            }

            while (v199 != v197);
            v193 = v201;

            v174 = v542;
            LOBYTE(v183) = v527;
          }

          if (*&v544[OBJC_IVAR____TtC3VFX13EntityManager_counters])
          {
            vfx_counters.add(_:_:)(*&v544[OBJC_IVAR____TtC3VFX13EntityManager_counters + 68], *(v177 + 9) * v193);
          }

          if (*(v177 + 184))
          {
            v210 = 0;
          }

          else
          {
            v210 = *(v177 + 21);
          }

          *&v551 = 0;

          *&v601[1] = v210;
          DWORD2(v601[1]) = -1;
          *&v601[2] = v540;
          *(&v601[2] + 1) = v539;
          *&v602 = v540;
          *(&v602 + 1) = v539;
          *&v601[0] = v540;
          *(&v601[0] + 1) = v539;
          if (v193 < 1)
          {
          }

          else
          {
            v527 = &v489;

            v211 = v189;

            v212 = v536;
            v213 = v535;
            v214 = v530;
            v215 = v531;
            v216 = v534;
            v217 = v541;
            do
            {

              LOBYTE(v546) = v183;
              LOBYTE(v488) = v216;
              sub_1AF626158(v215, v214 | (v183 << 32), v212, v544, v601, v214 | (v183 << 32), v177, v211, 0, 0, 0, 0, &v572, v217, &v551, v488, v215, v213, v542);
            }

            while ((*(&v601[0] + 1) - *&v601[0]) > 0);

            v174 = v542;
          }

          v218 = *(v177 + 24);
          a3 = v524;
          v175 = v525;
          v173 = v537;
          if (v218)
          {
            v219 = *(v177 + 26);
            v544 = *(v177 + 27);
            v220 = v540;
            v221 = v525;
            v222 = v174;
            v223 = v539;
            sub_1AF75D364(v540, v539, v218);
            v224 = v223;
            v174 = v222;
            v175 = v221;
            sub_1AF75D364(v220, v224, v219);
          }

          a1 = v543;
        }

        v173 += 6;
        os_unfair_lock_unlock(*(v177 + 43));
        os_unfair_lock_unlock(*(v177 + 47));
      }

      while (v173 != v175);
      sub_1AFA9BF94(v596, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v596, &qword_1ED725EA0, &type metadata for QueryResult);
      v172 = v511;
    }

    else
    {
      sub_1AFA9BF94(v596, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v225 = v529;
    if (v172 > 0)
    {
      v225 = 1;
    }

    LODWORD(v529) = v225;
  }

  if (v518)
  {
    sub_1AFA61FF8(a1, v518, sub_1AFD358A0);
    LODWORD(v529) = v529 | v226;
  }

  if (v520)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v228 = sub_1AFA9635C(a1, Strong, v521 & 1);

  v229 = *(a1 + 16);

  if (v229)
  {
    v511 = sub_1AF8BB88C();
    v518 = v230;
  }

  else
  {
    v511 = 0;
    v518 = 0xE000000000000000;
  }

  v231 = v529 | v228;
  v232 = v522[14];
  v611[0] = v522[13];
  v611[1] = v232;
  v612 = *(v522 + 30);
  sub_1AF6B06C0(v504, v611, 0x200000000, v601);
  v233 = *&v601[0];
  if (!*&v601[0])
  {

    if ((v231 & 1) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_315;
  }

  if (v604 <= 0 || (v492 = *(&v602 + 1)) == 0)
  {

    sub_1AFA9BF94(v601, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v231 & 1) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_315;
  }

  LODWORD(v542) = v231;
  v491 = *(&v601[2] + 1);
  v498 = *(&v603 + 1);
  v497 = *(*(&v603 + 1) + 32);
  v496 = *(v603 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B21E4(0);
  v235 = v234;
  v608 = v233;
  v609 = *(v601 + 8);
  v610 = *(&v601[1] + 8);
  v529 = (v504 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v574 = v601[2];
  v575 = v602;
  v576 = v603;
  v577 = v604;
  v572 = v601[0];
  v573 = v601[1];
  sub_1AF5DD298(&v572, &v556);
  v236 = 0;
  v534 = v235;
  v490 = v235 - 8;
  v520 = (v509 + 2);
  v502 = (v509 + 4);
  v494 = (v509 + 6);
  v510 = (v516 + 7);
  v500 = &v552;
  v508 = (v509 + 7);
  ++v509;
  v499 = &v557;
  v501 = xmmword_1AFE21110;
  v523 = xmmword_1AFE72020;
LABEL_170:
  v495 = v236;
  v237 = (v491 + 48 * v236);
  v516 = *v237;
  v535 = v237[1];
  v239 = *(v237 + 2);
  v238 = *(v237 + 3);
  v240 = *(v237 + 4);
  v241 = *(v237 + 5);
  if (v496)
  {
    v242 = *(v241 + 376);

    os_unfair_lock_lock(v242);
    os_unfair_lock_lock(*(v241 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v497);
  v243 = v498;
  v244 = *(v498 + 4);
  v621[0] = *(v498 + 3);
  v621[1] = v244;
  v622 = v498[10];
  v245 = *(*(*(*(v241 + 40) + 16) + 32) + 16) + 1;
  v243[6] = ecs_stack_allocator_allocate(v498[4], 48 * v245, 8);
  v243[7] = v245;
  v243[9] = 0;
  v243[10] = 0;
  v243[8] = 0;
  v544 = sub_1AF64B110(v532, &off_1F2542220, v239, v238, v240, v243);
  v246 = sub_1AF64B110(v534, &off_1F250F310, v239, v238, v240, v243);
  v247 = v246;
  if (v239)
  {
    v538 = v239;
    v248 = v543;
    if (!v240)
    {
      goto LABEL_312;
    }

    v531 = *(v514 + 72);
    v530 = *(*v490 + 72);
    v507 = v241;
    while (1)
    {
      v251 = *v538;
      v537 = v240;
      ++v538;

      if (*(v241 + 184))
      {
        goto LABEL_322;
      }

      v253 = *(*(v241 + 168) + 4 * v251);
      v254 = *(*(v252 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v253 + 8);

      v255 = v253 == -1 && v254 == 0;
      if (v255 || (v253 & 0x80000000) != 0 || v529[1] <= v253)
      {
        break;
      }

      v256 = *v529 + 12 * v253;
      if (v254 != -1 && *(v256 + 8) != v254)
      {
        break;
      }

      v258 = *(*(*(v504 + 88) + 8 * *(v256 + 6) + 32) + 16);
      v259 = *(v258 + 128);
      if (!*(v259 + 16))
      {
        break;
      }

      v260 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v261 & 1) == 0 || *(*(v258 + 24) + 16 * *(*(v259 + 56) + 8 * v260) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_178:
      v247 = (v247 + v530);
      v544 += v531;
      v240 = (v537 - 1);
      if (v537 == 1)
      {
        LODWORD(v542) = 1;
        goto LABEL_312;
      }
    }

    dispatch_group_enter(a3);
    v262 = *(v241 + 64);
    v263 = *(v241 + 80);
    v566 = *(v241 + 112);
    v265 = *(v241 + 80);
    v264 = *(v241 + 96);
    v564 = v263;
    v565 = v264;
    v266 = *(v241 + 64);
    v562 = *(v241 + 48);
    v563 = v262;
    v267 = *(v241 + 96);
    v558 = v265;
    v559 = v267;
    LOBYTE(v560) = *(v241 + 112);
    v556 = *(v241 + 48);
    v557 = v266;
    v268 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v270 = v269;
    v569 = v558;
    v570 = v559;
    v571 = v560;
    v568 = v557;
    v567 = v556;

    sub_1AF5DD36C(&v562, &v551);
    sub_1AF5DD3C8(&v567);
    if (v270)
    {

      v540 = 0;
      v541 = 0;
      v271 = 0;
    }

    else
    {
      v272 = *(v241 + 128);

      v273 = (v272 + v268 + 24 * v251);
      v274 = *(v273 + 1);
      v271 = *(v273 + 2);
      v540 = *v273;
      v541 = v274;
    }

    v276 = v534;
    if (*(v241 + 184))
    {
      goto LABEL_322;
    }

    v539 = v271;
    v277 = *(*(v275 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v241 + 168) + 4 * v251) + 8);
    v535 = *(*(v241 + 168) + 4 * v251);
    v536 = v277;

    v278 = swift_allocObject();
    v279 = v545;
    v278[2] = sub_1AFA9C004;
    v278[3] = v279;
    v542 = v278;
    v278[4] = a3;
    v280 = *(v248 + 16);

    if (v280)
    {
      v281 = *(v280 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v282 = a3;

      if ((v281 & 1) == 0 || *(v248 + 3048) != 1)
      {
        sub_1AF81F330();
        v283 = swift_allocError();
        v284 = v283;
        *v285 = v523;
        if (!*(v533 + 16))
        {
          v286 = v515;
          v287 = *(v515 + 72);
          v288 = v283;
          os_unfair_lock_lock(v287);
          v289 = *(v533 + 16);
          *(v533 + 16) = v284;
          v290 = v284;

          os_unfair_lock_unlock(*(v286 + 72));
        }

        dispatch_group_leave(v282);

LABEL_204:

        v250 = v540;
LABEL_177:
        sub_1AF487074(v250, v541, v539);
        goto LABEL_178;
      }
    }

    else
    {
      swift_retain_n();
      v291 = a3;
    }

    v292 = v535;
    sub_1AFDFF308();
    sub_1AFDFD038();
    v625 = v558;
    v626 = v559;
    v627 = v560;
    v624 = v557;
    v623 = v556;
    v293 = sub_1AFDFF2E8();
    v294 = *(v247 + v276[9] + 8) | (v293 != *(v247 + v276[9]));
    os_unfair_lock_lock(*(v248 + 72));
    v295 = *(v248 + 80);
    v296 = *(v295 + 16);
    v527 = v292;
    if (v296 && (v297 = sub_1AF41ACD4(v532, v292 | (v536 << 32)), (v298 & 1) != 0))
    {
      sub_1AF85B3D4(*(v295 + 56) + 96 * v297, &v556);
      if (BYTE8(v561) != 255)
      {
        sub_1AF85B3D4(&v556, &v551);
        sub_1AFA9BF94(&v556, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v550 + 9) = *(v555 + 9);
        v548 = v553;
        v549 = v554;
        v550[0] = v555[0];
        v546 = v551;
        v547 = v552;
        if (!BYTE8(v555[1]))
        {
          v347 = v546;
          v348 = (v546 != v293) | v294;
          os_unfair_lock_unlock(*(v248 + 72));
          if (v348)
          {
            if (v347 != v293)
            {
LABEL_214:
              v521 = swift_allocBox();
              v300 = v299;
              *v299 = 2;
              *(v299 + 8) = 0;
              *(v299 + 16) = 0xE000000000000000;
              *(v299 + 40) = 0;
              v525 = v293;
              v301 = MEMORY[0x1E69E7CC0];
              *(v299 + 24) = MEMORY[0x1E69E7CC0];
              *(v299 + 32) = 0;
              v302 = v276;
              v303 = v532;
              v304 = *(v532 + 32);
              v305 = type metadata accessor for ScriptIndex(0);
              (*(*(v305 - 8) + 56))(v300 + v304, 1, 1, v305);
              v306 = v300 + v302[9];
              *(v300 + v302[10]) = 0;
              *(v300 + v302[11]) = 0;
              v307 = (v300 + v302[12]);
              *v307 = 0;
              v307[1] = 0xE000000000000000;
              *(v300 + v302[13]) = v301;
              v308 = v525;
              *v306 = v525;
              *(v306 + 8) = 0;
              sub_1AFA9DE54(v544, v300, type metadata accessor for HeaderScript);
              sub_1AFA9DE54(v300, v247, sub_1AF5B21E4);
              os_unfair_lock_lock(*(v248 + 72));
              *&v556 = v308;
              BYTE8(v561) = 0;
              sub_1AF825824(&v556, v303, v527 | (v536 << 32));
              os_unfair_lock_unlock(*(v248 + 72));
              v309 = *(v248 + 16);

              if (v309)
              {
                v310 = v506;
                v311 = v528;
                (*v520)(v506, v309 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v528);

                (*v508)(v310, 0, 1, v311);
                v312 = v517;
                (*v502)(v517, v310, v311);
              }

              else
              {
                v313 = v506;
                v311 = v528;
                (*v508)(v506, 1, 1, v528);
                v312 = v517;
                if (qword_1ED7270F0 != -1)
                {
                  swift_once();
                }

                v314 = sub_1AFDFC538();
                sub_1AF477C68(v314, qword_1ED73B608);
                sub_1AFDFC528();
                sub_1AFDFC4D8();
                if ((*v494)(v313, 1, v311) != 1)
                {
                  sub_1AFA9C470(v313, &qword_1EB633050, MEMORY[0x1E69E93B8]);
                }
              }

              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v516 = v247;
              v315 = sub_1AFDFC538();
              sub_1AF477C68(v315, qword_1ED73B608);
              v316 = sub_1AFDFC528();
              v317 = sub_1AFDFDB88();
              if (sub_1AFDFDCE8())
              {
                v318 = swift_slowAlloc();
                *v318 = 0;
                v319 = sub_1AFDFC4E8();
                _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v316, v317, v319, "buildScript", "", v318, 2u);
                MEMORY[0x1B271DEA0](v318, -1, -1);
              }

              (*v520)(v512, v312, v311);
              sub_1AFDFC578();
              swift_allocObject();
              v320 = sub_1AFDFC568();
              sub_1AFA9E3C8(v544, v526, type metadata accessor for HeaderScript);
              v321 = (*(v514 + 80) + 400) & ~*(v514 + 80);
              v322 = &v510[v321] & 0xFFFFFFFFFFFFFFF8;
              v323 = (v322 + 23) & 0xFFFFFFFFFFFFFFF8;
              v324 = (v323 + 27) & 0xFFFFFFFFFFFFFFF8;
              v325 = swift_allocObject();
              v326 = v532;
              *(v325 + 16) = v543;
              *(v325 + 24) = v326;
              v327 = v535;
              v328 = v536;
              *(v325 + 32) = v535;
              *(v325 + 36) = v328;
              *(v325 + 40) = v525;
              *(v325 + 48) = sub_1AFA9EC20;
              *(v325 + 56) = v542;
              *(v325 + 64) = v320;
              v527 = v320;
              memcpy((v325 + 72), v522, 0x148uLL);
              sub_1AFA9E320(v526, v325 + v321, type metadata accessor for HeaderScript);
              v329 = (v325 + v322);
              v330 = v518;
              *v329 = v511;
              v329[1] = v330;
              v331 = (v325 + v323);
              v332 = v541;
              *v331 = v540;
              v331[1] = v332;
              v333 = v539;
              v331[2] = v539;
              v334 = (v325 + v324);
              *v334 = v327;
              v334[1] = v328;
              *(v325 + ((v324 + 15) & 0xFFFFFFFFFFFFFFF8)) = v521;
              if (v513)
              {
                v536 = *(v543 + 40);
                v335 = swift_allocObject();
                *(v335 + 16) = sub_1AFA9EB6C;
                *(v335 + 24) = v325;

                sub_1AFA9C054(v522, &v556, &unk_1EB633F50, type metadata accessor for HeaderScript, &off_1F2542220, &off_1ED725B90);

                sub_1AF487F80(v540, v332, v333);
                v336 = qword_1ED730EA0;

                v247 = v516;
                v241 = v507;
                if (v336 != -1)
                {
                  swift_once();
                }

                v337 = v528;
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v338 = qword_1ED73B8A0;
                v339 = swift_allocObject();
                *(v339 + 16) = sub_1AFA9EB90;
                *(v339 + 24) = v335;
                v340 = swift_allocObject();
                v340[2] = v338;
                v340[3] = sub_1AF6CC3F0;
                v340[4] = v339;
                *&v558 = sub_1AFA9EC30;
                *(&v558 + 1) = v340;
                *&v556 = MEMORY[0x1E69E9820];
                *(&v556 + 1) = 1107296256;
                *&v557 = sub_1AFCDA044;
                *(&v557 + 1) = &unk_1F2559A50;
                v341 = _Block_copy(&v556);
                swift_retain_n();

                [v536 addOperationWithBlock:v341];
                _Block_release(v341);

                (*v509)(v517, v337);
                a3 = v524;

                sub_1AF487074(v540, v541, v539);
                v248 = v543;
              }

              else
              {
                v536 = *(v543 + 32);
                v342 = swift_allocObject();
                *(v342 + 16) = sub_1AFA9EB6C;
                *(v342 + 24) = v325;
                v343 = swift_allocObject();
                *(v343 + 16) = sub_1AFA9EB90;
                *(v343 + 24) = v342;
                *&v553 = sub_1AF6D25EC;
                *(&v553 + 1) = v343;
                *&v551 = MEMORY[0x1E69E9820];
                *(&v551 + 1) = 1107296256;
                *&v552 = sub_1AF6F662C;
                *(&v552 + 1) = &unk_1F25599B0;
                v344 = _Block_copy(&v551);
                v541 = v332;
                v345 = v344;
                v535 = *(&v553 + 1);

                sub_1AFA9C054(v522, &v556, &unk_1EB633F50, type metadata accessor for HeaderScript, &off_1F2542220, &off_1ED725B90);

                v346 = v540;
                sub_1AF487F80(v540, v332, v333);

                dispatch_sync(v536, v345);
                _Block_release(v345);

                (*v509)(v517, v528);
                swift_isEscapingClosureAtFileLocation();
                a3 = v524;

                sub_1AF487074(v346, v541, v333);
                v248 = v543;
                v247 = v516;
                v241 = v507;
              }

              goto LABEL_178;
            }

            dispatch_group_leave(a3);

            goto LABEL_204;
          }

LABEL_234:
          sub_1AFA9DE54(v544, v247, type metadata accessor for HeaderScript);
          v349 = v247[4];
          if (v349)
          {
            v350 = v247[5];
            v351 = v247[1];
            v352 = v247[2];

            v353 = v352;
            v248 = v543;
            v354 = sub_1AF458B0C(v351, v353);
            v349(*(v247 + v276[13]), v354);

            sub_1AF0FB8EC(v349, v350);
          }

          if (*(v247 + v276[10]) == 1)
          {
            v355 = *(v247 + v276[11]);
            v356 = v355;
          }

          else
          {
            sub_1AF81F330();
            v355 = swift_allocError();
            *v357 = v501;
          }

          if (!*(v533 + 16) && v355)
          {
            v358 = v515;
            v359 = *(v515 + 72);
            v360 = v355;
            os_unfair_lock_lock(v359);
            v361 = *(v533 + 16);
            *(v533 + 16) = v355;
            v362 = v355;

            os_unfair_lock_unlock(*(v358 + 72));
          }

          v249 = v540;
          dispatch_group_leave(a3);

          v250 = v249;
          goto LABEL_177;
        }

        sub_1AFA9C0C8(&v546);
LABEL_213:
        os_unfair_lock_unlock(*(v248 + 72));
        if (v294)
        {
          goto LABEL_214;
        }

        goto LABEL_234;
      }
    }

    else
    {
      *&v561 = 0;
      v559 = 0u;
      v560 = 0u;
      v557 = 0u;
      v558 = 0u;
      v556 = 0u;
      BYTE8(v561) = -1;
    }

    sub_1AFA9BF94(&v556, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_213;
  }

  v363 = v516;
  if (v516 == v535)
  {
    goto LABEL_312;
  }

  v364 = *(v514 + 72);
  v525 = *(*v490 + 72);
  v365 = &v246[v525 * v516];
  v366 = 24 * v516 + 16;
  v527 = v364;
  v542 = &v544[v364 * v516];
  while (1)
  {

    if (*(v241 + 184))
    {
      break;
    }

    v369 = *(*(v241 + 168) + 4 * v363);
    v370 = *(*(v368 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v369 + 8);

    v371 = v369 == -1 && v370 == 0;
    if (!v371 && (v369 & 0x80000000) == 0 && v529[1] > v369)
    {
      v372 = *v529 + 12 * v369;
      if (v370 == -1 || *(v372 + 8) == v370)
      {
        v374 = *(*(*(v504 + 88) + 8 * *(v372 + 6) + 32) + 16);
        v375 = *(v374 + 128);
        if (*(v375 + 16))
        {
          v376 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v377 & 1) != 0 && *(*(v374 + 24) + 16 * *(*(v375 + 56) + 8 * v376) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_246;
          }
        }
      }
    }

    dispatch_group_enter(a3);
    v378 = *(v241 + 64);
    v379 = *(v241 + 80);
    v566 = *(v241 + 112);
    v381 = *(v241 + 80);
    v380 = *(v241 + 96);
    v564 = v379;
    v565 = v380;
    v382 = *(v241 + 64);
    v562 = *(v241 + 48);
    v563 = v378;
    v383 = *(v241 + 96);
    v558 = v381;
    v559 = v383;
    LOBYTE(v560) = *(v241 + 112);
    v556 = *(v241 + 48);
    v557 = v382;
    v384 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v386 = v385;
    v569 = v558;
    v570 = v559;
    v571 = v560;
    v568 = v557;
    v567 = v556;

    sub_1AF5DD36C(&v562, &v551);
    sub_1AF5DD3C8(&v567);
    if (v386)
    {

      v539 = 0;
      v387 = 0;
      v388 = 0;
    }

    else
    {
      v389 = *(v241 + 128);

      v390 = (v389 + v366 + v384);
      v539 = *(v390 - 16);
      v387 = *(v390 - 1);
      v388 = *v390;
    }

    v538 = v387;

    if (*(v241 + 184))
    {
      break;
    }

    v540 = v388;
    v544 = v365;
    v392 = *(*(v391 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v241 + 168) + 4 * v363) + 8);
    v536 = *(*(v241 + 168) + 4 * v363);
    v537 = v392;

    v393 = swift_allocObject();
    v394 = v545;
    v393[2] = sub_1AFA9C004;
    v393[3] = v394;
    v541 = v393;
    v393[4] = a3;
    v395 = *(v543 + 16);

    if (v395)
    {
      v396 = *(v395 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v397 = a3;

      if ((v396 & 1) == 0 || *(v543 + 3048) != 1)
      {
        sub_1AF81F330();
        v398 = swift_allocError();
        v399 = v398;
        *v400 = v523;
        if (!*(v533 + 16))
        {
          v401 = v366;
          v402 = v515;
          v403 = *(v515 + 72);
          v404 = v398;
          os_unfair_lock_lock(v403);
          v405 = *(v533 + 16);
          *(v533 + 16) = v399;
          v406 = v399;

          v407 = *(v402 + 72);
          v366 = v401;
          a3 = v524;
          os_unfair_lock_unlock(v407);
        }

        dispatch_group_leave(v397);

        goto LABEL_297;
      }
    }

    else
    {
      swift_retain_n();
      v408 = a3;
    }

    v409 = v536;
    sub_1AFDFF308();
    sub_1AFDFD038();
    v630 = v558;
    v631 = v559;
    v632 = v560;
    v629 = v557;
    v628 = v556;
    v410 = sub_1AFDFF2E8();
    v411 = v543;
    v412 = &v544[v534[9]];
    v413 = *v412;
    LOBYTE(v412) = v412[8];
    v531 = v410;
    v414 = v412 | (v410 != v413);
    os_unfair_lock_lock(*(v543 + 72));
    v415 = *(v411 + 80);
    v416 = *(v415 + 16);
    v530 = v366;
    if (!v416 || (v417 = sub_1AF41ACD4(v532, v409 | (v537 << 32)), (v418 & 1) == 0))
    {
      *&v561 = 0;
      v559 = 0u;
      v560 = 0u;
      v557 = 0u;
      v558 = 0u;
      v556 = 0u;
      BYTE8(v561) = -1;
LABEL_279:
      sub_1AFA9BF94(&v556, &qword_1EB642590, &type metadata for CompilationStatus);
      goto LABEL_280;
    }

    sub_1AF85B3D4(*(v415 + 56) + 96 * v417, &v556);
    if (BYTE8(v561) == 255)
    {
      goto LABEL_279;
    }

    sub_1AF85B3D4(&v556, &v551);
    sub_1AFA9BF94(&v556, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v550 + 9) = *(v555 + 9);
    v548 = v553;
    v549 = v554;
    v550[0] = v555[0];
    v546 = v551;
    v547 = v552;
    if (!BYTE8(v555[1]))
    {
      v469 = v546;
      v470 = (v546 != v531) | v414;
      v419 = v543;
      os_unfair_lock_unlock(*(v543 + 72));
      if ((v470 & 1) == 0)
      {
LABEL_303:
        v365 = v544;
        sub_1AFA9DE54(v542, v544, type metadata accessor for HeaderScript);
        v471 = *(v365 + 4);
        v472 = v534;
        if (v471)
        {
          v473 = *(v365 + 5);
          v474 = *(v544 + 1);
          v475 = *(v544 + 2);

          v476 = sub_1AF458B0C(v474, v475);
          v471(*&v544[v472[13]], v476);
          v365 = v544;

          sub_1AF0FB8EC(v471, v473);
        }

        if (v365[v472[10]] == 1)
        {
          v477 = *&v365[v472[11]];
          v478 = v477;
        }

        else
        {
          sub_1AF81F330();
          v477 = swift_allocError();
          *v479 = v501;
        }

        if (!*(v533 + 16) && v477)
        {
          v480 = v515;
          v481 = *(v515 + 72);
          v482 = v477;
          os_unfair_lock_lock(v481);
          v483 = *(v533 + 16);
          *(v533 + 16) = v477;
          v484 = v477;

          os_unfair_lock_unlock(*(v480 + 72));
        }

        v366 = v530;
        v367 = v538;
        dispatch_group_leave(a3);

        sub_1AF487074(v539, v367, v540);
        goto LABEL_246;
      }

      if (v469 == v531)
      {
        dispatch_group_leave(a3);

        sub_1AF487074(v539, v538, v540);
        goto LABEL_299;
      }

      goto LABEL_281;
    }

    sub_1AFA9C0C8(&v546);
LABEL_280:
    v419 = v543;
    os_unfair_lock_unlock(*(v543 + 72));
    if ((v414 & 1) == 0)
    {
      goto LABEL_303;
    }

LABEL_281:
    v516 = v363;
    v420 = v534;
    v521 = swift_allocBox();
    v422 = v421;
    *v421 = 2;
    *(v421 + 8) = 0;
    *(v421 + 16) = 0xE000000000000000;
    *(v421 + 40) = 0;
    v423 = MEMORY[0x1E69E7CC0];
    *(v421 + 24) = MEMORY[0x1E69E7CC0];
    *(v421 + 32) = 0;
    v424 = v532;
    v425 = *(v532 + 32);
    v426 = type metadata accessor for ScriptIndex(0);
    (*(*(v426 - 8) + 56))(v422 + v425, 1, 1, v426);
    v427 = v422 + v420[9];
    *(v422 + v420[10]) = 0;
    *(v422 + v420[11]) = 0;
    v428 = (v422 + v420[12]);
    *v428 = 0;
    v428[1] = 0xE000000000000000;
    *(v422 + v420[13]) = v423;
    v429 = v531;
    *v427 = v531;
    *(v427 + 8) = 0;
    sub_1AFA9DE54(v542, v422, type metadata accessor for HeaderScript);
    sub_1AFA9DE54(v422, v544, sub_1AF5B21E4);
    os_unfair_lock_lock(*(v419 + 72));
    *&v556 = v429;
    BYTE8(v561) = 0;
    sub_1AF825824(&v556, v424, v409 | (v537 << 32));
    os_unfair_lock_unlock(*(v419 + 72));
    v430 = *(v419 + 16);

    if (v430)
    {
      v431 = v493;
      v432 = v528;
      (*v520)(v493, v430 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v528);

      (*v508)(v431, 0, 1, v432);
      v433 = v505;
      (*v502)(v505, v431, v432);
    }

    else
    {
      v434 = v493;
      v432 = v528;
      (*v508)(v493, 1, 1, v528);
      v433 = v505;
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v435 = sub_1AFDFC538();
      sub_1AF477C68(v435, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v494)(v434, 1, v432) != 1)
      {
        sub_1AFA9C470(v434, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v436 = sub_1AFDFC538();
    sub_1AF477C68(v436, qword_1ED73B608);
    v437 = sub_1AFDFC528();
    v438 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v439 = swift_slowAlloc();
      *v439 = 0;
      v440 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v437, v438, v440, "buildScript", "", v439, 2u);
      v432 = v528;
      MEMORY[0x1B271DEA0](v439, -1, -1);
    }

    (*v520)(v512, v433, v432);
    sub_1AFDFC578();
    swift_allocObject();
    v441 = sub_1AFDFC568();
    sub_1AFA9E3C8(v542, v526, type metadata accessor for HeaderScript);
    v442 = (*(v514 + 80) + 400) & ~*(v514 + 80);
    v443 = &v510[v442] & 0xFFFFFFFFFFFFFFF8;
    v444 = (v443 + 23) & 0xFFFFFFFFFFFFFFF8;
    v445 = (v444 + 27) & 0xFFFFFFFFFFFFFFF8;
    v503 = (v445 + 15) & 0xFFFFFFFFFFFFFFF8;
    v446 = swift_allocObject();
    v447 = v531;
    v448 = v532;
    *(v446 + 16) = v543;
    *(v446 + 24) = v448;
    v449 = v536;
    v450 = v537;
    *(v446 + 32) = v536;
    *(v446 + 36) = v450;
    *(v446 + 40) = v447;
    *(v446 + 48) = sub_1AFA9C00C;
    *(v446 + 56) = v541;
    *(v446 + 64) = v441;
    v531 = v441;
    v451 = v522;
    memcpy((v446 + 72), v522, 0x148uLL);
    sub_1AFA9E320(v526, v446 + v442, type metadata accessor for HeaderScript);
    v452 = (v446 + v443);
    v453 = v518;
    *v452 = v511;
    v452[1] = v453;
    v454 = (v446 + v444);
    v455 = v538;
    v456 = v539;
    *v454 = v539;
    v454[1] = v455;
    v457 = v540;
    v454[2] = v540;
    v458 = (v446 + v445);
    *v458 = v449;
    v458[1] = v450;
    *(v446 + v503) = v521;
    if ((v513 & 1) == 0)
    {
      v537 = *(v543 + 32);
      v466 = swift_allocObject();
      *(v466 + 16) = sub_1AFA9C010;
      *(v466 + 24) = v446;
      v467 = swift_allocObject();
      *(v467 + 16) = sub_1AF6FC894;
      *(v467 + 24) = v466;
      *&v553 = sub_1AF464154;
      *(&v553 + 1) = v467;
      *&v551 = MEMORY[0x1E69E9820];
      *(&v551 + 1) = 1107296256;
      *&v552 = sub_1AF6F662C;
      *(&v552 + 1) = &unk_1F24E6190;
      v468 = _Block_copy(&v551);
      v536 = *(&v553 + 1);

      sub_1AFA9C054(v451, &v556, &unk_1EB633F50, type metadata accessor for HeaderScript, &off_1F2542220, &off_1ED725B90);

      sub_1AF487F80(v456, v455, v540);

      dispatch_sync(v537, v468);
      _Block_release(v468);

      (*v509)(v505, v528);
      swift_isEscapingClosureAtFileLocation();
      a3 = v524;

      sub_1AF487074(v456, v455, v540);
      v363 = v516;
LABEL_299:
      v366 = v530;
      v365 = v544;
      goto LABEL_246;
    }

    v536 = *(v543 + 40);
    v459 = swift_allocObject();
    v459[2].isa = sub_1AFA9C010;
    v459[3].isa = v446;
    v537 = v459;

    sub_1AFA9C054(v451, &v556, &unk_1EB633F50, type metadata accessor for HeaderScript, &off_1F2542220, &off_1ED725B90);

    sub_1AF487F80(v456, v455, v457);
    v460 = qword_1ED730EA0;

    a3 = v524;
    if (v460 != -1)
    {
      swift_once();
    }

    v363 = v516;
    v366 = v530;
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v461 = qword_1ED73B8A0;
    v462 = swift_allocObject();
    v463 = v537;
    *(v462 + 16) = sub_1AFA9EB90;
    *(v462 + 24) = v463;
    v464 = swift_allocObject();
    v464[2] = v461;
    v464[3] = sub_1AF6CB244;
    v464[4] = v462;
    *&v558 = sub_1AF74E8A8;
    *(&v558 + 1) = v464;
    *&v556 = MEMORY[0x1E69E9820];
    *(&v556 + 1) = 1107296256;
    *&v557 = sub_1AFCDA044;
    *(&v557 + 1) = &unk_1F25598E8;
    v465 = _Block_copy(&v556);
    swift_retain_n();

    [v536 addOperationWithBlock:v465];
    _Block_release(v465);

    (*v509)(v505, v528);

LABEL_297:

    sub_1AF487074(v539, v538, v540);
    v365 = v544;
LABEL_246:
    ++v363;
    v366 += 24;
    v365 += v525;
    v542 += v527;
    if (v535 == v363)
    {
      LODWORD(v542) = 1;
LABEL_312:
      v485 = v519;
      sub_1AF630994(v498, &v608, v621);
      v519 = v485;
      sub_1AF62D29C(v241);
      ecs_stack_allocator_pop_snapshot(v497);
      if (v496)
      {
        os_unfair_lock_unlock(*(v241 + 344));
        os_unfair_lock_unlock(*(v241 + 376));
      }

      v236 = v495 + 1;
      if (v495 + 1 != v492)
      {
        goto LABEL_170;
      }

      sub_1AFA9BF94(v601, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v601, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v542 & 1) == 0)
      {
LABEL_316:
        dispatch_group_leave(a3);
      }

LABEL_315:

      sub_1AFA62400(v486);

      goto LABEL_316;
    }
  }

LABEL_322:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}