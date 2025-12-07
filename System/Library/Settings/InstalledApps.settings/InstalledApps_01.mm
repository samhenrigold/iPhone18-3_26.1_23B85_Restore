uint64_t sub_1B710()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[38];

  v0[70] = [v3 sectionForObject:v2 collationStringSelector:v1];

  return _swift_task_switch(sub_1B7D8, 0, 0);
}

uint64_t sub_1B7D8()
{
  v124 = v1;
  *(v1 + 728) = 0;
  v3 = *(v1 + 528);
  *(v1 + 728) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_80;
  }

  v6 = *(v1 + 560);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_3:
  if (v6 < *(v5 + 2))
  {
    v2 = v5 + 32;
    v0 = *&v5[8 * v6 + 32];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    *&v5[8 * v6 + 32] = v0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_5;
  }

  while (1)
  {
    __break(1u);
LABEL_83:
    v0 = sub_223F8(0, *(v0 + 16) + 1, 1, v0);
    *&v2[8 * v6] = v0;
LABEL_5:
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    if (v9 >= v8 >> 1)
    {
      v0 = sub_223F8((v8 > 1), v9 + 1, 1, v0);
      *&v2[8 * v6] = v0;
    }

    v120 = v5;
    v10 = *(v1 + 520);
    *(v0 + 16) = v9 + 1;
    v11 = v0 + 80 * v9;
    *(v11 + 32) = xmmword_2CEB0;
    *(v11 + 48) = xmmword_2CEB0;
    *(v11 + 64) = 0;
    *(v11 + 71) = 0;
    *(v11 + 69) = 0;
    *(v11 + 65) = 0;
    *(v11 + 72) = v10;
    *(v11 + 80) = v3;
    *(v11 + 88) = 0;
    *(v11 + 104) = 0;
    v12 = MobileGestalt_get_current_device();
    if (!v12)
    {
      __break(1u);
    }

    v13 = v12;

    isSimulator = MobileGestalt_get_isSimulator();

    if (isSimulator)
    {
      break;
    }

    if (qword_38A18 != -1)
    {
      swift_once();
    }

    *(v1 + 232) = qword_39368;
    v0 = qword_38A20;

    if (v0 != -1)
    {
      swift_once();
    }

    v2 = &stru_20.segname[off_39370 + 16];
    v16 = -1;
    v17 = -1 << *(&stru_20.cmd + off_39370);
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v18 = v16 & *&stru_20.segname[off_39370 + 16];
    v3 = (63 - v17) >> 6;
    v119 = *(v1 + 424);
    v122 = off_39370;

    v19 = 0;
LABEL_17:
    v20 = v19;
    if (!v18)
    {
      goto LABEL_19;
    }

    do
    {
      v19 = v20;
LABEL_22:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = *(*(v122 + 6) + (v21 | (v19 << 6)));
      v23 = objc_allocWithZone(LSApplicationRecord);
      v24 = sub_2A3E4();

      *(v1 + 240) = 0;
      v25 = [v23 initWithBundleIdentifier:v24 allowPlaceholder:0 error:v1 + 240];

      v5 = *(v1 + 240);
      if (!v25)
      {
        v0 = v5;
        v5 = sub_29A44();

        swift_willThrow();
        v115._object = v5;

        v119 = 0;
        goto LABEL_17;
      }

      v26 = v5;

      v0 = v1 + 232;
      sub_24148(v123, v22);
      v20 = v19;
    }

    while (v18);
    while (1)
    {
LABEL_19:
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v19 >= v3)
      {
        break;
      }

      v18 = *&v2[8 * v19];
      ++v20;
      if (v18)
      {
        goto LABEL_22;
      }
    }

    v3 = 0;
    v27 = *(v1 + 232);
    *(v1 + 568) = v27;
    v28 = *(v27 + 32);
    *(v1 + 708) = v28;
    v29 = 1 << v28;
    v30 = *(v27 + 56);
    if (v29 < 64)
    {
      v31 = ~(-1 << v29);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & v30;
    *(v1 + 576) = v120;
    while (v32)
    {
      v0 = *(v1 + 568);
LABEL_37:
      *(v1 + 592) = v3;
      *(v1 + 584) = v32;
      v34 = *(v1 + 392);
      v2 = *(*(v0 + 48) + (__clz(__rbit64(v32)) | (v3 << 6)));
      *(v1 + 709) = v2;
      v35 = sub_6DDC(v2);
      v37 = v36;
      if (!*(v34 + 16) || (v5 = v35, v38 = *(v1 + 392), sub_2A8F4(), sub_2A414(), v39 = sub_2A914(), v40 = -1 << *(v38 + 32), v0 = v39 & ~v40, ((*(v38 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v0) & 1) == 0))
      {
LABEL_46:

        v45 = sub_6DDC(v2);
        v47 = v46;
        v48 = objc_allocWithZone(LSApplicationRecord);

        v49 = sub_2A3E4();

        *(v1 + 248) = 0;
        v50 = [v48 initWithBundleIdentifier:v49 allowPlaceholder:1 error:v1 + 248];

        v51 = *(v1 + 248);
        if (v50)
        {
          v52 = v119;
          goto LABEL_72;
        }

        v102 = v51;
        sub_29A44();

        swift_willThrow();

        v103 = objc_allocWithZone(LSApplicationRecord);

        v104 = sub_2A3E4();

        *(v1 + 256) = 0;
        v50 = [v103 initWithBundleIdentifierOfSystemPlaceholder:v104 error:v1 + 256];

        v51 = *(v1 + 256);
        if (v50)
        {
          v52 = 0;
LABEL_72:
          v105 = v51;
          v106 = [v50 localizedName];
          v45 = sub_2A3F4();
          v108 = v107;

          v47 = v108;
        }

        else
        {
          v110 = v51;
          sub_29A44();

          swift_willThrow();

          v52 = 0;
        }

        *(v1 + 616) = v47;
        *(v1 + 608) = v45;
        *(v1 + 600) = v52;
        *(v1 + 624) = sub_6DDC(v2);
        *(v1 + 632) = v109;
        *(v1 + 640) = sub_2A3E4();
        *(v1 + 648) = "collationString";
        sub_2A494();
        *(v1 + 656) = sub_2A484();
        v99 = sub_2A474();
        v101 = sub_1C99C;
        goto LABEL_74;
      }

      v32 &= v32 - 1;
      v41 = ~v40;
      v42 = *(v1 + 392);
      while (1)
      {
        v43 = (*(v42 + 48) + 16 * v0);
        v44 = *v43 == v5 && v43[1] == v37;
        if (v44 || (sub_2A8A4() & 1) != 0)
        {
          break;
        }

        v42 = *(v1 + 392);
        v0 = (v0 + 1) & v41;
        if (((*(v42 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v0) & 1) == 0)
        {
          goto LABEL_46;
        }
      }
    }

    while (1)
    {
      v33 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v0 = *(v1 + 568);
      if (v33 >= (((1 << *(v1 + 708)) + 63) >> 6))
      {

        v15 = v119;
        goto LABEL_49;
      }

      v32 = *(v0 + 8 * v33 + 56);
      ++v3;
      if (v32)
      {
        v3 = v33;
        goto LABEL_37;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    v5 = sub_266B4(v5);
    v6 = *(v1 + 560);
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_81:
    __break(1u);
  }

  v15 = *(v1 + 424);
LABEL_49:
  *(v1 + 672) = v120;
  v53 = *(v1 + 320);
  v54 = *(v1 + 288);

  v55 = sub_1E690(v54, v53, v120);
  *(v1 + 680) = v15;

  *(v1 + 264) = v55;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v56 = qword_3AD50;
  v115._countAndFlagsBits = 0x800000000002D720;
  v126._countAndFlagsBits = 0x20746C7561666544;
  v126._object = 0xEC00000073707041;
  v132.value._countAndFlagsBits = 0;
  v132.value._object = 0;
  v57.super.isa = qword_3AD50;
  v138._countAndFlagsBits = 0;
  v138._object = 0xE000000000000000;
  v58 = sub_29A34(v126, v132, v57, v138, 0xD000000000000014, v115);
  v60 = v59;
  v116._countAndFlagsBits = 0x800000000002DAE0;
  v127._countAndFlagsBits = 0xD00000000000001DLL;
  v127._object = 0x800000000002E120;
  v133.value._countAndFlagsBits = 0;
  v133.value._object = 0;
  v121 = v56;
  v61.super.isa = v56;
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v62 = sub_29A34(v127, v133, v61, v139, 0xD000000000000010, v116);
  v64 = v63;
  v123[0] = 1;
  v65 = sub_223F8(0, 1, 1, _swiftEmptyArrayStorage);
  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_223F8((v66 > 1), v67 + 1, 1, v65);
  }

  v68 = *(v1 + 705);
  *(v65 + 2) = v67 + 1;
  v69 = &v65[80 * v67];
  *(v69 + 4) = 0;
  *(v69 + 5) = 0;
  *(v69 + 6) = 0xD000000000000023;
  *(v69 + 7) = 0x800000000002E0F0;
  *(v69 + 8) = 1;
  *(v69 + 9) = v58;
  *(v69 + 10) = v60;
  *(v69 + 11) = v62;
  *(v69 + 12) = v64;
  v69[104] = 0x80;
  if (v68 == 1)
  {
    v117._countAndFlagsBits = 0x800000000002D720;
    v128._object = 0x800000000002E070;
    v128._countAndFlagsBits = 0xD000000000000010;
    v134.value._countAndFlagsBits = 0;
    v134.value._object = 0;
    v70.super.isa = v121;
    v140._countAndFlagsBits = 0;
    v140._object = 0xE000000000000000;
    v71 = sub_29A34(v128, v134, v70, v140, 0xD000000000000014, v117);
    v73 = v72;
    v118._countAndFlagsBits = 0x800000000002DAE0;
    v74 = v121;
    v129._countAndFlagsBits = 0xD000000000000020;
    v129._object = 0x800000000002E1D0;
    v135.value._countAndFlagsBits = 0;
    v135.value._object = 0;
    v75.super.isa = v121;
    v141._countAndFlagsBits = 0;
    v141._object = 0xE000000000000000;
    v76 = sub_29A34(v129, v135, v75, v141, 0xD000000000000010, v118);
    v123[0] = 1;
    v79 = *(v65 + 2);
    v78 = *(v65 + 3);
    if (v79 >= v78 >> 1)
    {
      v111 = v76;
      v112 = v77;
      v113 = sub_223F8((v78 > 1), v79 + 1, 1, v65);
      v77 = v112;
      v65 = v113;
      v76 = v111;
      v74 = v121;
    }

    *(v65 + 2) = v79 + 1;
    v80 = &v65[80 * v79];
    *(v80 + 2) = xmmword_2CE70;
    *(v80 + 6) = 0xD000000000000027;
    *(v80 + 7) = 0x800000000002E1A0;
    *(v80 + 8) = 1;
    *(v80 + 9) = v71;
    *(v80 + 10) = v73;
    *(v80 + 11) = v76;
    *(v80 + 12) = v77;
    v80[104] = 0x80;
  }

  else
  {
    v74 = v121;
  }

  v81 = *(v1 + 707);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = v65;
  sub_24C38(0, 0, (v1 + 64));
  if (v81)
  {
    v117._countAndFlagsBits = 0x800000000002D720;
    v130._countAndFlagsBits = 0x70696C4320707041;
    v130._object = 0xE900000000000073;
    v136.value._countAndFlagsBits = 0;
    v136.value._object = 0;
    v82.super.isa = v74;
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    v83 = sub_29A34(v130, v136, v82, v142, 0xD000000000000014, v117);
    v85 = v84;
    v123[0] = 1;
    sub_2B4C(&qword_39598, &unk_2D028);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_2CE80;
    *(v86 + 32) = xmmword_2CE90;
    *(v86 + 48) = 0xD000000000000020;
    *(v86 + 56) = 0x800000000002E170;
    *(v86 + 64) = 1;
    *(v86 + 71) = 0;
    *(v86 + 69) = 0;
    *(v86 + 65) = 0;
    *(v86 + 72) = v83;
    *(v86 + 80) = v85;
    *(v86 + 88) = 0;
    *(v86 + 104) = 0;
    v87 = *(v1 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_22618(0, *(v87 + 2) + 1, 1, v87);
    }

    v89 = *(v87 + 2);
    v88 = *(v87 + 3);
    if (v89 >= v88 >> 1)
    {
      v87 = sub_22618((v88 > 1), v89 + 1, 1, v87);
    }

    *(v87 + 2) = v89 + 1;
    v90 = &v87[40 * v89];
    *(v90 + 2) = xmmword_2CE70;
    *(v90 + 6) = 0;
    *(v90 + 7) = 0;
    *(v90 + 8) = v86;
    *(v1 + 264) = v87;
  }

  else
  {
    v87 = *(v1 + 264);
  }

  v117._countAndFlagsBits = 0x800000000002D720;
  v131._countAndFlagsBits = 0x41206E6564646948;
  v131._object = 0xEB00000000737070;
  v137.value._countAndFlagsBits = 0;
  v137.value._object = 0;
  v91.super.isa = v74;
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  v92 = sub_29A34(v131, v137, v91, v143, 0xD000000000000014, v117);
  v94 = v93;
  *(v1 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_2CE80;
  *(v95 + 32) = xmmword_2CEA0;
  *(v95 + 48) = 0xD000000000000022;
  *(v95 + 56) = 0x800000000002E140;
  *(v95 + 64) = 1;
  *(v95 + 71) = 0;
  *(v95 + 69) = 0;
  *(v95 + 65) = 0;
  *(v95 + 72) = v92;
  *(v95 + 80) = v94;
  *(v95 + 88) = 0;
  *(v95 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v87 = sub_22618(0, *(v87 + 2) + 1, 1, v87);
  }

  v97 = *(v87 + 2);
  v96 = *(v87 + 3);
  if (v97 >= v96 >> 1)
  {
    v87 = sub_22618((v96 > 1), v97 + 1, 1, v87);
  }

  *(v1 + 688) = v87;
  *(v87 + 2) = v97 + 1;
  v98 = &v87[40 * v97];
  *(v98 + 2) = xmmword_2CE90;
  *(v98 + 6) = 0;
  *(v98 + 7) = 0;
  *(v98 + 8) = v95;
  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v1 + 696) = sub_2A484();
  v99 = sub_2A474();
  v101 = sub_1D598;
LABEL_74:

  return _swift_task_switch(v101, v99, v100);
}

uint64_t sub_1C99C()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[38];

  v0[83] = [v3 sectionForObject:v2 collationStringSelector:v1];

  return _swift_task_switch(sub_1CA64, 0, 0);
}

uint64_t sub_1CA64()
{
  v2 = (v0 + 705);
  v3 = *(v0 + 616);
  v4 = sub_6DDC(*(v0 + 709));
  v6 = v5;
  *(v0 + 712) = 0;
  *(v0 + 712) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 576);
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v0 + 664);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_55:
  v8 = sub_266B4(v8);
  v9 = *(v0 + 664);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_3:
  if (v9 >= v8[2])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v1 = (v8 + 4);
  v2 = v8[v9 + 4];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v8[v9 + 4] = v2;
  if ((v10 & 1) == 0)
  {
LABEL_58:
    v2 = sub_223F8(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 8 * v9) = v2;
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = sub_223F8((v11 > 1), v12 + 1, 1, v2);
    *(v1 + 8 * v9) = v2;
  }

  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 608);
  *(v2 + 2) = v12 + 1;
  v16 = &v2[80 * v12];
  *(v16 + 4) = v4;
  *(v16 + 5) = v6;
  *(v16 + 6) = v14;
  *(v16 + 7) = v13;
  v16[64] = 0;
  v16[71] = 0;
  *(v16 + 69) = 0;
  *(v16 + 65) = 0;
  *(v16 + 9) = v15;
  *(v16 + 10) = v3;
  *(v16 + 11) = 0;
  v16[104] = 0;
  v104 = *(v0 + 600);
  v17 = *(v0 + 592);
  v18 = (*(v0 + 584) - 1) & *(v0 + 584);
  *(v0 + 576) = v8;
  v1 = 1;
  while (v18)
  {
    v4 = *(v0 + 568);
LABEL_15:
    *(v0 + 592) = v17;
    *(v0 + 584) = v18;
    v20 = *(v0 + 392);
    v2 = *(*(v4 + 48) + (__clz(__rbit64(v18)) | (v17 << 6)));
    *(v0 + 709) = v2;
    v21 = sub_6DDC(v2);
    v23 = v22;
    if (!*(v20 + 16) || (v3 = v21, v24 = *(v0 + 392), sub_2A8F4(), sub_2A414(), v25 = sub_2A914(), v26 = -1 << *(v24 + 32), v4 = v25 & ~v26, ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0))
    {
LABEL_24:

      v30 = sub_6DDC(v2);
      v32 = v31;
      v33 = objc_allocWithZone(LSApplicationRecord);

      v34 = sub_2A3E4();

      *(v0 + 248) = 0;
      v35 = [v33 initWithBundleIdentifier:v34 allowPlaceholder:1 error:v0 + 248];

      v36 = *(v0 + 248);
      if (v35)
      {
        goto LABEL_27;
      }

      v37 = v36;
      sub_29A44();

      swift_willThrow();

      v38 = objc_allocWithZone(LSApplicationRecord);

      v39 = sub_2A3E4();

      *(v0 + 256) = 0;
      v35 = [v38 initWithBundleIdentifierOfSystemPlaceholder:v39 error:v0 + 256];

      v36 = *(v0 + 256);
      if (v35)
      {
        v104 = 0;
LABEL_27:
        v40 = v36;
        v41 = [v35 localizedName];
        v30 = sub_2A3F4();
        v43 = v42;

        v32 = v43;
      }

      else
      {
        v95 = v36;
        sub_29A44();

        swift_willThrow();

        v104 = 0;
      }

      *(v0 + 616) = v32;
      *(v0 + 608) = v30;
      *(v0 + 600) = v104;
      *(v0 + 624) = sub_6DDC(v2);
      *(v0 + 632) = v44;
      *(v0 + 640) = sub_2A3E4();
      *(v0 + 648) = "collationString";
      sub_2A494();
      *(v0 + 656) = sub_2A484();
      v45 = sub_2A474();
      v47 = sub_1C99C;
      goto LABEL_50;
    }

    v18 &= v18 - 1;
    v6 = ~v26;
    v27 = *(v0 + 392);
    while (1)
    {
      v28 = (*(v27 + 48) + 16 * v4);
      v29 = *v28 == v3 && v28[1] == v23;
      if (v29 || (sub_2A8A4() & 1) != 0)
      {
        break;
      }

      v27 = *(v0 + 392);
      v4 = (v4 + 1) & v6;
      if (((*(v27 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    v4 = *(v0 + 568);
    if (v19 >= (((1 << *(v0 + 708)) + 63) >> 6))
    {
      break;
    }

    v18 = *(v4 + 8 * v19 + 56);
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_15;
    }
  }

  *(v0 + 672) = v8;
  v48 = *(v0 + 320);
  v49 = *(v0 + 288);

  v50 = sub_1E690(v49, v48, v8);
  *(v0 + 680) = v104;

  *(v0 + 264) = v50;
  if (qword_389F0 != -1)
  {
    swift_once();
  }

  v51 = qword_3AD50;
  v100._countAndFlagsBits = 0x800000000002D720;
  v106._countAndFlagsBits = 0x20746C7561666544;
  v106._object = 0xEC00000073707041;
  v112.value._countAndFlagsBits = 0;
  v112.value._object = 0;
  v52.super.isa = qword_3AD50;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v53 = sub_29A34(v106, v112, v52, v118, 0xD000000000000014, v100);
  v55 = v54;
  v101._countAndFlagsBits = 0x800000000002DAE0;
  v101._object = 0x800000000002DAE0;
  v107._countAndFlagsBits = 0xD00000000000001DLL;
  v107._object = 0x800000000002E120;
  v113.value._countAndFlagsBits = 0;
  v113.value._object = 0;
  v56.super.isa = v51;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v57 = sub_29A34(v107, v113, v56, v119, 0xD000000000000010, v101);
  v59 = v58;
  v60 = sub_223F8(0, 1, 1, _swiftEmptyArrayStorage);
  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_223F8((v61 > 1), v62 + 1, 1, v60);
  }

  v63 = v0 + 705;
  v64 = *(v0 + 705);
  *(v60 + 2) = v62 + 1;
  v65 = &v60[80 * v62];
  *(v65 + 4) = 0;
  *(v65 + 5) = 0;
  *(v65 + 6) = 0xD000000000000023;
  *(v65 + 7) = 0x800000000002E0F0;
  *(v65 + 8) = 1;
  *(v65 + 9) = v53;
  *(v65 + 10) = v55;
  *(v65 + 11) = v57;
  *(v65 + 12) = v59;
  v65[104] = 0x80;
  if (v64 == 1)
  {
    v102._countAndFlagsBits = 0x800000000002D720;
    v108._object = 0x800000000002E070;
    v108._countAndFlagsBits = 0xD000000000000010;
    v114.value._countAndFlagsBits = 0;
    v114.value._object = 0;
    v66 = v51;
    v67.super.isa = v51;
    v120._countAndFlagsBits = 0;
    v120._object = 0xE000000000000000;
    v68 = sub_29A34(v108, v114, v67, v120, 0xD000000000000014, v102);
    v70 = v69;
    v103._countAndFlagsBits = v103._object;
    v109._countAndFlagsBits = 0xD000000000000020;
    v109._object = 0x800000000002E1D0;
    v115.value._countAndFlagsBits = 0;
    v115.value._object = 0;
    v71.super.isa = v51;
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v72 = sub_29A34(v109, v115, v71, v121, 0xD000000000000010, v103);
    v75 = *(v60 + 2);
    v74 = *(v60 + 3);
    if (v75 >= v74 >> 1)
    {
      v96 = v72;
      v97 = v73;
      v98 = sub_223F8((v74 > 1), v75 + 1, 1, v60);
      v73 = v97;
      v60 = v98;
      v72 = v96;
      v66 = v51;
    }

    *(v60 + 2) = v75 + 1;
    v76 = &v60[80 * v75];
    *(v76 + 2) = xmmword_2CE70;
    *(v76 + 6) = 0xD000000000000027;
    *(v76 + 7) = 0x800000000002E1A0;
    *(v76 + 8) = 1;
    *(v76 + 9) = v68;
    *(v76 + 10) = v70;
    *(v76 + 11) = v72;
    *(v76 + 12) = v73;
    v76[104] = 0x80;
    v63 = v0 + 705;
  }

  else
  {
    v66 = v51;
  }

  v77 = *(v63 + 2);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = v60;
  sub_24C38(0, 0, (v0 + 64));
  if (v77)
  {
    v102._countAndFlagsBits = 0x800000000002D720;
    v110._countAndFlagsBits = 0x70696C4320707041;
    v110._object = 0xE900000000000073;
    v116.value._countAndFlagsBits = 0;
    v116.value._object = 0;
    v78.super.isa = v66;
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    v79 = sub_29A34(v110, v116, v78, v122, 0xD000000000000014, v102);
    v81 = v80;
    sub_2B4C(&qword_39598, &unk_2D028);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_2CE80;
    *(v82 + 32) = xmmword_2CE90;
    *(v82 + 48) = 0xD000000000000020;
    *(v82 + 56) = 0x800000000002E170;
    *(v82 + 64) = 1;
    *(v82 + 71) = 0;
    *(v82 + 69) = 0;
    *(v82 + 65) = 0;
    *(v82 + 72) = v79;
    *(v82 + 80) = v81;
    *(v82 + 88) = 0;
    *(v82 + 104) = 0;
    v83 = *(v0 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_22618(0, *(v83 + 2) + 1, 1, v83);
    }

    v85 = *(v83 + 2);
    v84 = *(v83 + 3);
    if (v85 >= v84 >> 1)
    {
      v83 = sub_22618((v84 > 1), v85 + 1, 1, v83);
    }

    *(v83 + 2) = v85 + 1;
    v86 = &v83[40 * v85];
    *(v86 + 2) = xmmword_2CE70;
    *(v86 + 6) = 0;
    *(v86 + 7) = 0;
    *(v86 + 8) = v82;
    *(v0 + 264) = v83;
  }

  else
  {
    v83 = *(v0 + 264);
  }

  v102._countAndFlagsBits = 0x800000000002D720;
  v111._countAndFlagsBits = 0x41206E6564646948;
  v111._object = 0xEB00000000737070;
  v117.value._countAndFlagsBits = 0;
  v117.value._object = 0;
  v87.super.isa = v66;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v88 = sub_29A34(v111, v117, v87, v123, 0xD000000000000014, v102);
  v90 = v89;
  *(v0 + 720) = 1;
  sub_2B4C(&qword_39598, &unk_2D028);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_2CE80;
  *(v91 + 32) = xmmword_2CEA0;
  *(v91 + 48) = 0xD000000000000022;
  *(v91 + 56) = 0x800000000002E140;
  *(v91 + 64) = 1;
  *(v91 + 71) = 0;
  *(v91 + 69) = 0;
  *(v91 + 65) = 0;
  *(v91 + 72) = v88;
  *(v91 + 80) = v90;
  *(v91 + 88) = 0;
  *(v91 + 104) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v83 = sub_22618(0, *(v83 + 2) + 1, 1, v83);
  }

  v93 = *(v83 + 2);
  v92 = *(v83 + 3);
  if (v93 >= v92 >> 1)
  {
    v83 = sub_22618((v92 > 1), v93 + 1, 1, v83);
  }

  *(v0 + 688) = v83;
  *(v83 + 2) = v93 + 1;
  v94 = &v83[40 * v93];
  *(v94 + 2) = xmmword_2CE90;
  *(v94 + 6) = 0;
  *(v94 + 7) = 0;
  *(v94 + 8) = v91;
  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v0 + 696) = sub_2A484();
  v45 = sub_2A474();
  v47 = sub_1D598;
LABEL_50:

  return _swift_task_switch(v47, v45, v46);
}

uint64_t sub_1D598()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);

  sub_1EA10(v0 + 272, v1);
  if (v2)
  {
  }

  else
  {

    swift_unknownObjectWeakDestroy();

    return _swift_task_switch(sub_1D6A8, 0, 0);
  }
}

uint64_t sub_1D6A8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D750(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2A774();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_23C8C(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = sub_2A724();
    }

    else
    {
      v3 = sub_2A704();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_26FDC(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 sourceIdentifier];
        v14 = sub_2A3F4();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_23C8C((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_2A744())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_2B4C(&qword_395D8, &qword_2D0A8);
          v6 = sub_2A514();
          sub_2A7A4();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_2888C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_2888C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_2888C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

id sub_1DAB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 bundleIdentifier];
  if (result)
  {
    v6 = result;
    v7 = sub_2A3F4();
    v9 = v8;

    v10 = [a1 appClipMetadata];
    if (v10)
    {

LABEL_4:

      return &dword_0 + 1;
    }

    if ([a1 developerType] != 1 && objc_msgSend(a1, "isWebApp"))
    {
      swift_beginAccess();
      sub_24AE8(&v12, v7, v9);
      swift_endAccess();
      goto LABEL_4;
    }

    v11 = sub_1DBD8(v7, v9, a2);

    return (v11 & 1);
  }

  return result;
}

uint64_t sub_1DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2A8F4();
  sub_2A414();
  v6 = sub_2A914();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2A8A4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DCD0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_2A8F4(), sub_6DDC(a1), sub_2A414(), , v4 = sub_2A914(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xEE007377656E2E65;
      v9 = 0x6C7070612E6D6F63;
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v9 = 0xD00000000000001BLL;
          v8 = 0x800000000002D330;
          break;
        case 2:
          v9 = 0xD000000000000013;
          v8 = 0x800000000002D350;
          break;
        case 3:
          v9 = 0xD000000000000015;
          v8 = 0x800000000002D370;
          break;
        case 4:
          v9 = 0xD000000000000013;
          v8 = 0x800000000002D390;
          break;
        case 5:
          v9 = 0xD000000000000012;
          v8 = 0x800000000002D3B0;
          break;
        case 6:
          v9 = 0xD000000000000014;
          v8 = 0x800000000002D3D0;
          break;
        case 7:
          v9 = 0xD000000000000015;
          v8 = 0x800000000002D3F0;
          break;
        case 8:
          v9 = 0xD000000000000013;
          v8 = 0x800000000002D410;
          break;
        case 9:
          v9 = 0xD000000000000012;
          v8 = 0x800000000002D430;
          break;
        case 0xA:
          v9 = 0xD000000000000016;
          v8 = 0x800000000002D450;
          break;
        case 0xB:
          break;
        case 0xC:
          v9 = 0xD000000000000010;
          v8 = 0x800000000002D480;
          break;
        case 0xD:
          v9 = 0xD000000000000011;
          v8 = 0x800000000002D4A0;
          break;
        case 0xE:
          v9 = 0xD000000000000013;
          v8 = 0x800000000002D4C0;
          break;
        case 0xF:
          v8 = 0xEE007370614D2E65;
          goto LABEL_34;
        case 0x10:
          v9 = 0xD000000000000011;
          v8 = 0x800000000002D4F0;
          break;
        case 0x11:
          v9 = 0xD000000000000011;
          v8 = 0x800000000002D510;
          break;
        case 0x12:
          v9 = 0xD000000000000013;
          v8 = 0x800000000002D530;
          break;
        case 0x13:
          v9 = 0xD000000000000010;
          v8 = 0x800000000002D550;
          break;
        case 0x14:
          v9 = 0xD000000000000011;
          v8 = 0x800000000002D570;
          break;
        case 0x15:
          v8 = 0xEE00656D6F482E65;
          goto LABEL_34;
        case 0x16:
          v9 = 0xD000000000000011;
          v8 = 0x800000000002D5A0;
          break;
        case 0x17:
          v8 = 0xEF636973754D2E65;
          goto LABEL_34;
        case 0x18:
          v8 = 0xEC00000076742E65;
          goto LABEL_34;
        case 0x19:
          v9 = 0xD000000000000019;
          v8 = 0x800000000002D5D0;
          break;
        case 0x1A:
          v9 = 0xD000000000000010;
          v8 = 0x800000000002D5F0;
          break;
        case 0x1B:
          v9 = 0xD000000000000012;
          v8 = 0x800000000002D610;
          break;
        case 0x1C:
          v9 = 0xD000000000000013;
          v8 = 0x800000000002D630;
          break;
        case 0x1D:
          v9 = 0xD000000000000012;
          v8 = 0x800000000002D650;
          break;
        case 0x1E:
          v9 = 0xD000000000000012;
          v8 = 0x800000000002D670;
          break;
        case 0x1F:
          v9 = 0xD000000000000016;
          v8 = 0x800000000002D690;
          break;
        case 0x20:
          v8 = 0xEF73656D61672E65;
LABEL_34:
          v9 = 0x6C7070612E6D6F63;
          break;
        default:
          v9 = 0xD000000000000014;
          v8 = 0x800000000002D310;
          break;
      }

      v10 = 0x6C7070612E6D6F63;
      v11 = 0xEE007377656E2E65;
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000001BLL;
          v11 = 0x800000000002D330;
          break;
        case 2:
          v10 = 0xD000000000000013;
          v11 = 0x800000000002D350;
          break;
        case 3:
          v10 = 0xD000000000000015;
          v11 = 0x800000000002D370;
          break;
        case 4:
          v10 = 0xD000000000000013;
          v11 = 0x800000000002D390;
          break;
        case 5:
          v10 = 0xD000000000000012;
          v11 = 0x800000000002D3B0;
          break;
        case 6:
          v10 = 0xD000000000000014;
          v11 = 0x800000000002D3D0;
          break;
        case 7:
          v10 = 0xD000000000000015;
          v11 = 0x800000000002D3F0;
          break;
        case 8:
          v10 = 0xD000000000000013;
          v11 = 0x800000000002D410;
          break;
        case 9:
          v10 = 0xD000000000000012;
          v11 = 0x800000000002D430;
          break;
        case 10:
          v10 = 0xD000000000000016;
          v11 = 0x800000000002D450;
          break;
        case 11:
          break;
        case 12:
          v10 = 0xD000000000000010;
          v11 = 0x800000000002D480;
          break;
        case 13:
          v10 = 0xD000000000000011;
          v11 = 0x800000000002D4A0;
          break;
        case 14:
          v10 = 0xD000000000000013;
          v11 = 0x800000000002D4C0;
          break;
        case 15:
          v11 = 0xEE007370614D2E65;
          goto LABEL_65;
        case 16:
          v10 = 0xD000000000000011;
          v11 = 0x800000000002D4F0;
          break;
        case 17:
          v10 = 0xD000000000000011;
          v11 = 0x800000000002D510;
          break;
        case 18:
          v10 = 0xD000000000000013;
          v11 = 0x800000000002D530;
          break;
        case 19:
          v10 = 0xD000000000000010;
          v11 = 0x800000000002D550;
          break;
        case 20:
          v10 = 0xD000000000000011;
          v11 = 0x800000000002D570;
          break;
        case 21:
          v11 = 0xEE00656D6F482E65;
          goto LABEL_65;
        case 22:
          v10 = 0xD000000000000011;
          v11 = 0x800000000002D5A0;
          break;
        case 23:
          v11 = 0xEF636973754D2E65;
          goto LABEL_65;
        case 24:
          v11 = 0xEC00000076742E65;
          goto LABEL_65;
        case 25:
          v10 = 0xD000000000000019;
          v11 = 0x800000000002D5D0;
          break;
        case 26:
          v10 = 0xD000000000000010;
          v11 = 0x800000000002D5F0;
          break;
        case 27:
          v10 = 0xD000000000000012;
          v11 = 0x800000000002D610;
          break;
        case 28:
          v10 = 0xD000000000000013;
          v11 = 0x800000000002D630;
          break;
        case 29:
          v10 = 0xD000000000000012;
          v11 = 0x800000000002D650;
          break;
        case 30:
          v10 = 0xD000000000000012;
          v11 = 0x800000000002D670;
          break;
        case 31:
          v10 = 0xD000000000000016;
          v11 = 0x800000000002D690;
          break;
        case 32:
          v11 = 0xEF73656D61672E65;
LABEL_65:
          v10 = 0x6C7070612E6D6F63;
          break;
        default:
          v10 = 0xD000000000000014;
          v11 = 0x800000000002D310;
          break;
      }

      if (v9 == v10 && v8 == v11)
      {
        break;
      }

      v12 = sub_2A8A4();

      if ((v12 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1E638(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void *sub_1E690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v9 = *(a3 + 16);
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(a3 + 16);
  }

  v49 = _swiftEmptyArrayStorage;
  sub_23C6C(0, v10, 0);
  v11 = _swiftEmptyArrayStorage;
  v45 = v7;
  v46 = v6;
  v44 = v9;
  v38 = a2;
  v39 = a1;
  v37 = a3;
  if (v10)
  {
    v40 = a3 + 32;

    v12 = 0;
    v13 = (a2 + 40);
    v14 = (a1 + 40);
    v42 = v10;
    while (v6 != v12)
    {
      if (v7 == v12)
      {
        goto LABEL_33;
      }

      if (v9 == v12)
      {
        goto LABEL_34;
      }

      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(v13 - 1);
      v18 = *v13;
      v48 = *(v40 + 8 * v12);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22F20(&v48);
      if (v47)
      {
        goto LABEL_39;
      }

      v19 = v48;
      v49 = v11;
      v21 = v11[2];
      v20 = v11[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v35 = v48;
        sub_23C6C((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v19 = v35;
        v11 = v49;
      }

      ++v12;
      v11[2] = v22;
      v23 = &v11[5 * v21];
      v23[4] = v15;
      v23[5] = v16;
      v23[6] = v17;
      v23[7] = v18;
      v23[8] = v19;
      v13 += 2;
      v14 += 2;
      v10 = v42;
      v9 = v44;
      v7 = v45;
      v6 = v46;
      if (v42 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_18:
    if (v10 == v6)
    {
LABEL_19:

      return v11;
    }

    v25 = 16 * v10 + 40;
    v26 = (v39 + v25);
    v27 = (v38 + v25);
    while (v10 < v6)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_36;
      }

      if (v7 == v10)
      {
        goto LABEL_19;
      }

      if (v10 >= v7)
      {
        goto LABEL_37;
      }

      if (v9 == v10)
      {
        goto LABEL_19;
      }

      if (v10 >= v9)
      {
        goto LABEL_38;
      }

      v43 = v10 + 1;
      v28 = *v26;
      v41 = *(v26 - 1);
      v29 = *(v27 - 1);
      v30 = *v27;
      v48 = *(v37 + 32 + 8 * v10);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22F20(&v48);
      if (v47)
      {
        goto LABEL_39;
      }

      v31 = v48;
      v49 = v11;
      v33 = v11[2];
      v32 = v11[3];
      if (v33 >= v32 >> 1)
      {
        v36 = v48;
        sub_23C6C((v32 > 1), v33 + 1, 1);
        v31 = v36;
        v11 = v49;
      }

      v11[2] = v33 + 1;
      v34 = &v11[5 * v33];
      v34[4] = v41;
      v34[5] = v28;
      v34[6] = v29;
      v34[7] = v30;
      v34[8] = v31;
      ++v10;
      v26 += 2;
      v27 += 2;
      v7 = v45;
      v6 = v46;
      v9 = v44;
      if (v43 == v46)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}

void sub_1EA10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_15D50(v4, &OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections, sub_93C8, &unk_2D060, sub_28768);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_1EAE4();
  }
}

uint64_t sub_1EAE4()
{
  v1 = v0;
  v2 = sub_2B4C(&qword_392C0, &qword_2CD90);
  __chkstk_darwin(v2 - 8);
  v4 = v25 - v3;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel___observationRegistrar;
  v28 = v0;
  v6 = sub_283A4(&qword_395B0, type metadata accessor for AppsSettingsListViewModel, &unk_2CF50);
  sub_29AD4();

  v8 = (v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v9 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection + 8);
  if (v9 != 4)
  {
    v26 = v4;
    v10 = *v8;
    swift_getKeyPath();
    v28 = v0;
    sub_2B94(v10, v9);
    v25[0] = v6;
    v25[1] = v5;
    sub_29AD4();

    v11 = *(v0 + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__sections);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v27 = v11 + 32;
      while (1)
      {
        v14 = *(v27 + 40 * v13 + 32);
        v15 = *(v14 + 16);
        if (v15)
        {
          break;
        }

LABEL_4:
        if (++v13 == v12)
        {
          goto LABEL_29;
        }
      }

      v16 = (v14 + 104);
      while (1)
      {
        v17 = *(v16 - 8);
        v18 = *(v16 - 16);
        v19 = *v16;
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (v9 != 2)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }

          if (v17 == 3)
          {
            if (v9 != 3)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

        else
        {
          if (!v17)
          {
            if (v9)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }

          if (v17 == 1)
          {
            if (v9 != 1)
            {
              goto LABEL_8;
            }

            goto LABEL_26;
          }
        }

        if (v9 < 4 || (*(v16 - 9) != v10 || v17 != v9) && (sub_2A8A4() & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_26:
        if (v19 < 0)
        {
          if ((v19 & 1) == 0)
          {
            return sub_6DC0(v10, v9);
          }
        }

        else if ((v18 & 1) == 0)
        {
          return sub_6DC0(v10, v9);
        }

LABEL_8:
        v16 += 80;
        if (!--v15)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    if (v8[1] == 4)
    {
      *v8 = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v25[-4] = v1;
      *&v25[-3] = xmmword_2B6B0;
      v28 = v1;
      sub_29AC4();
    }

    v21 = v26;
    v22 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_clearSettingsNavigationPath;
    swift_beginAccess();
    sub_E25C(v1 + v22, v21, &qword_392C0, &qword_2CD90);
    v23 = sub_29B94();
    v24 = *(v23 - 8);
    result = (*(v24 + 48))(v21, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_6DC0(v10, v9);
      sub_29B84();
      return (*(v24 + 8))(v21, v23);
    }
  }

  return result;
}

uint64_t sub_1EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2B4C(&unk_38E10, &qword_2B770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_E25C(a3, v25 - v10, &unk_38E10, &qword_2B770);
  v12 = sub_2A4C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_E02C(v11, &unk_38E10, &qword_2B770);
  }

  else
  {
    sub_2A4B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2A474();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2A404() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_E02C(a3, &unk_38E10, &qword_2B770);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_E02C(a3, &unk_38E10, &qword_2B770);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1F1AC()
{
  v0 = sub_14FE0();
  swift_getKeyPath();
  sub_283A4(&qword_395E0, type metadata accessor for HiddenAppsSettingsListViewModel, &unk_2B728);
  sub_29AD4();
}

void sub_1F254(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_389F8 != -1)
    {
      swift_once();
    }

    v3 = sub_29C14();
    sub_966C(v3, qword_3AD58);
    v4 = sub_29BF4();
    v5 = sub_2A584();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Did receive hidden apps changed.", v6, 2u);
    }

    sub_2B4C(&qword_39500, &qword_2CFC8);
    sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_29C64();

    v8 = __chkstk_darwin(v7);
    __chkstk_darwin(v8);
    sub_29AB4();
  }
}

uint64_t sub_1F480()
{
  v1 = [objc_opt_self() sharedGuard];
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1F5C0;
  v2 = swift_continuation_init();
  v0[17] = sub_2B4C(&qword_39600, &qword_2D170);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1FA08;
  v0[13] = &unk_36788;
  v0[14] = v2;
  [v1 authenticateUnconditionallyWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1F5C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1F83C;
  }

  else
  {
    v2 = sub_1F6D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1F6D0()
{
  swift_unknownObjectWeakInit();
  sub_2A494();
  *(v0 + 200) = sub_2A484();
  v2 = sub_2A474();

  return _swift_task_switch(sub_1F778, v2, v1);
}

uint64_t sub_1F778()
{

  sub_1FAD4(v0 + 80);
  swift_unknownObjectWeakDestroy();

  return _swift_task_switch(sub_1F828, 0, 0);
}

uint64_t sub_1F83C()
{
  v13 = v0;
  v1 = *(v0 + 184);
  swift_willThrow();

  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v2 = sub_29C14();
  sub_966C(v2, qword_3AD58);
  swift_errorRetain();
  v3 = sub_29BF4();
  v4 = sub_2A564();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_2A8E4();
    v9 = sub_22978(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Authentication Error: %{public}s", v5, 0xCu);
    sub_E1BC(v6);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1FA08(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_E178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2B4C(&qword_39608, &qword_2D178);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1FAD4(uint64_t a1)
{
  v1 = sub_2B4C(&qword_392C8, &qword_2CD98);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_389F8 != -1)
    {
      swift_once();
    }

    v6 = sub_29C14();
    sub_966C(v6, qword_3AD58);
    v7 = sub_29BF4();
    v8 = sub_2A554();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Presenting Hidden Apps.", v9, 2u);
    }

    v10 = OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel_appendSettingsNavigationPath;
    swift_beginAccess();
    sub_E25C(v5 + v10, v3, &qword_392C8, &qword_2CD98);
    v11 = sub_29BB4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_14588();
      sub_29BA4();
      (*(v12 + 8))(v3, v11);
      sub_14BB4(0, 3uLL);
    }
  }
}

uint64_t sub_1FD14(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_299D4();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  sub_2B4C(&qword_38FE0, &qword_2C9D8);
  v3[32] = swift_task_alloc();
  v5 = sub_2A324();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v6 = sub_29B74();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for AppsSettingsDestinationOption(0);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v7 = sub_29D54();
  v3[44] = v7;
  v3[45] = *(v7 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  sub_2B4C(&unk_39490, &qword_2CF80);
  v3[48] = swift_task_alloc();
  v8 = sub_29A24();
  v3[49] = v8;
  v3[50] = *(v8 - 8);
  v3[51] = swift_task_alloc();
  v9 = sub_29AA4();
  v3[52] = v9;
  v3[53] = *(v9 - 8);
  v3[54] = swift_task_alloc();
  v10 = sub_2A364();
  v3[55] = v10;
  v3[56] = *(v10 - 8);
  v3[57] = swift_task_alloc();

  return _swift_task_switch(sub_200D0, 0, 0);
}

uint64_t sub_200D0()
{
  v85 = v0;
  if (qword_389F8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = v0[27];
  v5 = v0[28];
  v6 = sub_29C14();
  v0[58] = sub_966C(v6, qword_3AD58);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_29BF4();
  v9 = sub_2A584();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[56];
  v12 = v0[57];
  v13 = v0[55];
  if (v10)
  {
    v14 = v0[53];
    v15 = v0[54];
    v81 = v0[52];
    v82 = v0[55];
    v16 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v16 = 136315907;
    swift_getObjectType();
    v17 = sub_2A924();
    v19 = sub_22978(v17, v18, &v84);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_22978(0xD00000000000001FLL, 0x800000000002E020, &v84);
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    sub_2A354();
    v20 = sub_29A84();
    v22 = v21;
    (*(v14 + 8))(v15, v81);
    (*(v11 + 8))(v12, v82);
    v23 = sub_22978(v20, v22, &v84);

    *(v16 + 34) = v23;
    _os_log_impl(&dword_0, v8, v9, "Start (%s.%s) url: '%{private,mask.hash}s'…", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v25 = v0[53];
  v24 = v0[54];
  v26 = v0[52];
  v27 = v0[49];
  v28 = v0[50];
  v29 = v0[48];
  sub_2A354();
  sub_299F4();
  (*(v25 + 8))(v24, v26);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    sub_E02C(v0[48], &unk_39490, &qword_2CF80);
    v30 = sub_29BF4();
    v31 = sub_2A564();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Failed to retrieve URL components from URL.", v32, 2u);
    }

    v34 = v0[45];
    v33 = v0[46];
    v35 = v0[44];
    v37 = v0[27];
    v36 = v0[28];

    sub_2A344();
    sub_2A384();
    (*(v34 + 8))(v33, v35);
    v38 = v36;
    v39 = v37;
    goto LABEL_34;
  }

  (*(v0[50] + 32))(v0[51], v0[48], v0[49]);
  sub_2A344();
  v0[12] = sub_29A04();
  v0[13] = v40;
  v0[14] = 47;
  v0[15] = 0xE100000000000000;
  v0[59] = sub_8228();
  v41 = sub_2A6B4();

  v42 = 0;
  v43 = *(v41 + 16);
  v44 = _swiftEmptyArrayStorage;
LABEL_10:
  v45 = (v41 + 40 + 16 * v42);
  while (v43 != v42)
  {
    if (v42 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v47 = *(v45 - 1);
    v46 = *v45;
    v45 += 2;
    ++v42;
    v48 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v48 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C8C(0, *(v44 + 2) + 1, 1);
        v44 = v84;
      }

      v51 = *(v44 + 2);
      v50 = *(v44 + 3);
      if (v51 >= v50 >> 1)
      {
        sub_23C8C((v50 > 1), v51 + 1, 1);
        v44 = v84;
      }

      *(v44 + 2) = v51 + 1;
      v52 = &v44[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v46;
      goto LABEL_10;
    }
  }

  v53 = *(v44 + 2);
  if (!v53)
  {
    v63 = v0[50];
    v83 = v0[51];
    v64 = v0[49];
    v65 = v0[47];
    v67 = v0[44];
    v66 = v0[45];
    v69 = v0[27];
    v68 = v0[28];

    sub_2A384();
    (*(v66 + 8))(v65, v67);
    (*(v63 + 8))(v83, v64);
    v38 = v68;
    v39 = v69;
    goto LABEL_34;
  }

  v54 = *(v44 + 4);
  v0[60] = v54;
  v55 = *(v44 + 5);
  v0[61] = v55;

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v0[24] = v44;
  if (!v56 || (v53 - 1) > *(v44 + 3) >> 1)
  {
    v44 = sub_2286C(v56, v53, 1, v44);
    v0[24] = v44;
  }

  v0[62] = v44;
  sub_27FB8(0, 1, 0);

  v0[63] = sub_7B10(v54, v55);
  v0[64] = v57;
  if (v57 == 4)
  {

    v58 = sub_29BF4();
    v59 = sub_2A584();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v84 = v61;
      *v60 = 136446210;
      v62 = sub_22978(v54, v55, &v84);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_0, v58, v59, "Attempting to deep link into %{public}s which is not supported.", v60, 0xCu);
      sub_E1BC(v61);
    }

    else
    {
    }

    v72 = v0[50];
    v71 = v0[51];
    v73 = v0[49];
    v74 = v0[47];
    v75 = v0[44];
    v76 = v0[45];
    v78 = v0[27];
    v77 = v0[28];
    sub_2A384();
    (*(v76 + 8))(v74, v75);
    (*(v72 + 8))(v71, v73);
    v38 = v77;
    v39 = v78;
LABEL_34:
    sub_218D4(v38, v39);

    v79 = v0[1];

    return v79();
  }

  v70 = swift_task_alloc();
  v0[65] = v70;
  *v70 = v0;
  v70[1] = sub_20984;

  return static AppDistributor.shouldShowAppInstallationSettings()();
}

uint64_t sub_20984(char a1)
{
  *(*v1 + 529) = a1;

  return _swift_task_switch(sub_20A84, 0, 0);
}

id sub_20A84()
{
  v150 = v0;
  v1 = *(v0 + 480) == 0xD000000000000012 && 0x800000000002D430 == *(v0 + 488);
  if (v1 || (sub_2A8A4() & 1) != 0)
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = [result BOOLRestrictionForFeature:MCFeatureAccountModificationAllowed];

    if (v4 == 2)
    {
      v5 = *(v0 + 504);
      v6 = *(v0 + 512);

      sub_6DC0(v5, v6);

      v7 = sub_29BF4();
      v8 = sub_2A584();

      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 488);
      if (v9)
      {
        v11 = *(v0 + 480);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v147[0]._countAndFlagsBits = v13;
        *v12 = 141558275;
        *(v12 + 4) = 1752392040;
        *(v12 + 12) = 2081;
        v14 = sub_22978(v11, v10, &v147[0]._countAndFlagsBits);

        *(v12 + 14) = v14;
        v15 = "Requested application '%{private,mask.hash}s' is restricted.";
LABEL_63:
        _os_log_impl(&dword_0, v7, v8, v15, v12, 0x16u);
        sub_E1BC(v13);

        goto LABEL_77;
      }

LABEL_49:

LABEL_77:
      v123 = *(v0 + 400);
      v122 = *(v0 + 408);
      v124 = *(v0 + 392);
      v125 = *(v0 + 376);
      v126 = *(v0 + 352);
      v127 = *(v0 + 360);
      v129 = *(v0 + 216);
      v128 = *(v0 + 224);
      sub_2A384();
      (*(v127 + 8))(v125, v126);
      (*(v123 + 8))(v122, v124);
      v105 = v128;
      v106 = v129;
      goto LABEL_78;
    }
  }

  v16 = *(v0 + 512);

  if (v16 > 1)
  {
    if (v16 == 2)
    {
LABEL_61:
      v89 = *(v0 + 504);
      v88 = *(v0 + 512);

      sub_2B94(v89, v88);
      v7 = sub_29BF4();
      v8 = sub_2A584();
      sub_6DC0(v89, v88);
      v90 = os_log_type_enabled(v7, v8);
      v92 = *(v0 + 504);
      v91 = *(v0 + 512);
      if (!v90)
      {

        sub_6DC0(v92, v91);
        goto LABEL_77;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v147[0]._countAndFlagsBits = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v152._countAndFlagsBits = v92;
      v152._object = v91;
      v93 = sub_79B8(v152);
      v95 = v94;
      sub_6DC0(v92, v91);
      v96 = sub_22978(v93, v95, &v147[0]._countAndFlagsBits);

      *(v12 + 14) = v96;
      v15 = "Requested selection '%{private,mask.hash}s' is not likely to be in list.";
      goto LABEL_63;
    }

    if (v16 == 3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v16)
    {
      goto LABEL_17;
    }

    if (v16 == 1)
    {
      if (*(v0 + 529) != 1)
      {
        goto LABEL_61;
      }

      goto LABEL_17;
    }
  }

  v71 = *(v0 + 504);
  v27 = *(v0 + 512);
  sub_280D4(v71, v27);
  v72 = sub_27200();
  LOBYTE(v71) = sub_1DBD8(v71, v27, v72);

  if (v71)
  {
    if (qword_38A10 != -1)
    {
LABEL_87:
      swift_once();
    }

    v74 = *(v0 + 504);
    v73 = *(v0 + 512);
    v75 = sub_1DBD8(v74, v27, off_39360);
    sub_6DC0(v74, v73);
    if ((v75 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_6DC0(*(v0 + 504), *(v0 + 512));
  }

  v86 = *(v0 + 504);
  sub_2B94(v86, *(v0 + 512));
  v87 = sub_7330(v86, v27);
  if (v87 == 33)
  {
    goto LABEL_61;
  }

  if (qword_38A18 != -1)
  {
    v131 = v87;
    swift_once();
    v87 = v131;
  }

  if ((sub_1DCD0(v87, qword_39368) & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_17:
  v17 = *(v0 + 504);
  v18 = *(v0 + 512);
  v20 = *(v0 + 336);
  v19 = *(v0 + 344);
  v21 = sub_21C3C(v17, v18);
  sub_30EC(v21, v22, v17, v18, v19);
  sub_6DC0(v17, v18);

  sub_2F78(v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v68 = *(v0 + 336);
      v67 = *(v0 + 344);

      v69 = *v68;
      v70 = v68[1];
      *(v0 + 128) = v69;
      *(v0 + 136) = v70;
      sub_E08C();
      sub_29D44();
      sub_308C(v67);
      goto LABEL_49;
    }

    v84 = *(v0 + 344);

    sub_14588();
    sub_29D44();
    v85 = v84;
LABEL_76:
    sub_308C(v85);
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload)
  {
    v76 = *(v0 + 400);
    v142 = *(v0 + 392);
    v145 = *(v0 + 408);
    v77 = *(v0 + 376);
    v78 = *(v0 + 360);
    v80 = *(v0 + 336);
    v79 = *(v0 + 344);
    v81 = *(v0 + 272);
    v82 = *(v0 + 280);
    v83 = *(v0 + 264);
    v140 = *(v0 + 224);
    v136 = *(v0 + 352);
    v139 = *(v0 + 216);

    (*(v81 + 32))(v82, v80, v83);
    sub_2A374();
    (*(v81 + 8))(v82, v83);
    sub_308C(v79);
    (*(v78 + 8))(v77, v136);
    (*(v76 + 8))(v145, v142);
LABEL_66:
    v106 = v139;
    v105 = v140;
LABEL_78:
    sub_218D4(v105, v106);

    v130 = *(v0 + 8);

    return v130();
  }

  v24 = *(v0 + 264);
  v25 = *(v0 + 272);
  v26 = *(v0 + 256);
  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 336), *(v0 + 296));
  sub_29B34();
  if ((*(v25 + 48))(v26, 1, v24) != 1)
  {
    v97 = *(v0 + 400);
    v143 = *(v0 + 392);
    v146 = *(v0 + 408);
    v98 = *(v0 + 376);
    v99 = *(v0 + 360);
    v134 = *(v0 + 344);
    v137 = *(v0 + 352);
    v100 = *(v0 + 304);
    v132 = *(v0 + 296);
    v133 = *(v0 + 320);
    v101 = *(v0 + 288);
    v103 = *(v0 + 264);
    v102 = *(v0 + 272);
    v104 = *(v0 + 256);
    v139 = *(v0 + 216);
    v140 = *(v0 + 224);

    (*(v102 + 32))(v101, v104, v103);
    sub_2A374();
    (*(v102 + 8))(v101, v103);
    (*(v100 + 8))(v133, v132);
    sub_308C(v134);
    (*(v99 + 8))(v98, v137);
    (*(v97 + 8))(v146, v143);
    goto LABEL_66;
  }

  v27 = *(v0 + 408);
  sub_E02C(*(v0 + 256), &qword_38FE0, &qword_2C9D8);
  v28 = sub_299E4();
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  v30 = v29[2];
  if (!v30)
  {
    countAndFlagsBits = &_swiftEmptyDictionarySingleton;
LABEL_68:
    v107 = *(v0 + 496);

    *(v0 + 528) = 1;
    sub_2A7C4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26C84(&v147[0]._countAndFlagsBits, 0x6574616D696E61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v109 = countAndFlagsBits;
    *(v0 + 200) = v107;
    sub_2B4C(&qword_394B8, &qword_2CF90);
    sub_55DC(&unk_394C0, &qword_394B8, &qword_2CF90, &protocol conformance descriptor for [A]);
    v110 = sub_2A3C4();
    v112 = v111;

    v113._countAndFlagsBits = sub_29A14();
    if (v113._object)
    {
      v147[0]._countAndFlagsBits = 35;
      v147[0]._object = 0xE100000000000000;
      sub_2A424(v113);

      sub_2A424(v147[0]);
    }

    v114 = HIBYTE(v112) & 0xF;
    if ((v112 & 0x2000000000000000) == 0)
    {
      v114 = v110 & 0xFFFFFFFFFFFFLL;
    }

    if (v114)
    {
      *(v0 + 144) = v110;
      *(v0 + 152) = v112;
      sub_2A7C4();
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v149 = countAndFlagsBits;
      sub_26C84(&v147[0]._countAndFlagsBits, 1752457584, 0xE400000000000000, v115);
      v109 = v149;
    }

    else
    {
    }

    v116 = *(v0 + 344);
    v118 = *(v0 + 312);
    v117 = *(v0 + 320);
    v119 = *(v0 + 296);
    v120 = *(v0 + 304);
    sub_21E64(v109);

    sub_29B24();

    sub_283A4(&qword_38B90, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_29D44();
    v121 = *(v120 + 8);
    v121(v118, v119);
    v121(v117, v119);
    v85 = v116;
    goto LABEL_76;
  }

  v31 = 0;
  v32 = *(v0 + 240);
  v141 = v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  countAndFlagsBits = &_swiftEmptyDictionarySingleton;
  v144 = v32;
  v135 = v29[2];
  v138 = (v32 + 8);
  while (1)
  {
    if (v31 >= v29[2])
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    (*(v144 + 16))(*(v0 + 248), &v141[*(v144 + 72) * v31], *(v0 + 232));
    v34 = sub_299B4();
    v36 = v35;
    v37 = sub_299C4();
    if (!v38 || (*(v0 + 160) = v37, *(v0 + 168) = v38, v39 = sub_2A6C4(), v41 = v40, , !v41))
    {
      v53 = sub_266C8(v34, v36);
      v27 = v54;

      if (v27)
      {
        v147[0]._countAndFlagsBits = countAndFlagsBits;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_26E14();
          countAndFlagsBits = v147[0]._countAndFlagsBits;
        }

        v27 = *(v0 + 248);
        v55 = *(v0 + 232);

        v56 = countAndFlagsBits[7] + 40 * v53;
        v57 = *v56;
        v58 = *(v56 + 16);
        *(v0 + 48) = *(v56 + 32);
        *(v0 + 16) = v57;
        *(v0 + 32) = v58;
        sub_26AC8(v53, countAndFlagsBits);
        (*v138)(v27, v55);
      }

      else
      {
        (*v138)(*(v0 + 248), *(v0 + 232));
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      sub_E02C(v0 + 16, &qword_394B0, &qword_2CF88);
      goto LABEL_27;
    }

    v42 = v29;
    *(v0 + 176) = v39;
    *(v0 + 184) = v41;
    sub_2A7C4();
    v43 = v147[1];
    *(v0 + 56) = v147[0];
    *(v0 + 72) = v43;
    *(v0 + 88) = v148;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v27 = countAndFlagsBits;
    v46 = sub_266C8(v34, v36);
    v47 = countAndFlagsBits[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_85;
    }

    v50 = v45;
    if (countAndFlagsBits[3] >= v49)
    {
      if ((v44 & 1) == 0)
      {
        sub_26E14();
      }

      goto LABEL_41;
    }

    sub_267F8(v49, v44);
    v51 = sub_266C8(v34, v36);
    if ((v50 & 1) != (v52 & 1))
    {
      break;
    }

    v46 = v51;
LABEL_41:
    v27 = *(v0 + 248);
    v59 = *(v0 + 232);
    if (v50)
    {

      sub_28078(v0 + 56, countAndFlagsBits[7] + 40 * v46);
      (*v138)(v27, v59);
    }

    else
    {
      countAndFlagsBits[(v46 >> 6) + 8] |= 1 << v46;
      v60 = (countAndFlagsBits[6] + 16 * v46);
      *v60 = v34;
      v60[1] = v36;
      v61 = countAndFlagsBits[7] + 40 * v46;
      v62 = *(v0 + 88);
      v63 = *(v0 + 72);
      *v61 = *(v0 + 56);
      *(v61 + 16) = v63;
      *(v61 + 32) = v62;
      (*v138)(v27, v59);
      v64 = countAndFlagsBits[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_86;
      }

      countAndFlagsBits[2] = v66;
    }

    v29 = v42;
    v30 = v135;
LABEL_27:
    if (v30 == ++v31)
    {
      goto LABEL_68;
    }
  }

  return sub_2A8D4();
}

void sub_218D4(void *a1, uint64_t a2)
{
  v4 = sub_29AA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2A364();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v12 = sub_29C14();
  sub_966C(v12, qword_3AD58);
  (*(v9 + 16))(v11, a2, v8);
  v13 = a1;
  v14 = sub_29BF4();
  v15 = sub_2A584();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v4;
    v17 = v16;
    v27 = swift_slowAlloc();
    v28 = v27;
    *v17 = 136315907;
    swift_getObjectType();
    v18 = sub_2A924();
    v20 = sub_22978(v18, v19, &v28);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_22978(0xD00000000000001FLL, 0x800000000002E020, &v28);
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    sub_2A354();
    v21 = sub_29A84();
    v23 = v22;
    (*(v5 + 8))(v7, v26);
    (*(v9 + 8))(v11, v8);
    v24 = sub_22978(v21, v23, &v28);

    *(v17 + 34) = v24;
    _os_log_impl(&dword_0, v14, v15, "…Complete (%s.%s) url: '%{private,mask.hash}s'", v17, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_21C3C(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (qword_389F0 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._countAndFlagsBits = 0x70696C4320707041;
      v3._object = 0xE900000000000073;
      goto LABEL_21;
    }

    if (a2 == 3)
    {
      if (qword_389F0 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._countAndFlagsBits = 0x41206E6564646948;
      v3._object = 0xEB00000000737070;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a2)
    {
      if (qword_389F0 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._countAndFlagsBits = 0x20746C7561666544;
      v3._object = 0xEC00000073707041;
      goto LABEL_21;
    }

    if (a2 == 1)
    {
      if (qword_389F0 != -1)
      {
        v5._object = "from LSEnumerator";
        swift_once();
      }

      v2.super.isa = qword_3AD50;
      v3._countAndFlagsBits = 0xD000000000000010;
      v5._countAndFlagsBits = 0x800000000002D720;
      v3._object = 0x800000000002E070;
LABEL_21:
      v7.value._countAndFlagsBits = 0;
      v7.value._object = 0;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      return sub_29A34(v3, v7, v2, v8, 0xD000000000000014, v5);
    }
  }

  return sub_984C(a1, a2);
}

uint64_t sub_21E64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2B4C(&qword_394E8, &qword_2CFB0);
    v2 = sub_2A884();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_280E4(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_28140(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_28140(v35, v24);
    result = sub_2A7B4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_28140(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22168(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  if (a4)
  {
    sub_2A3A4();
  }

  v8 = a3;
  v9 = a1;
  sub_281B0(a5);
}

uint64_t sub_22208(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22300;

  return v6(a1);
}

uint64_t sub_22300()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_223F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_39598, &unk_2D028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22514(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_395C8, &qword_2D098);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22618(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_395B8, &unk_2D088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22738(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2B4C(&qword_395D0, &qword_2D0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2B4C(&qword_395C0, &qword_2CB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2286C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_394F8, &qword_2CFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_22978(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22A44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_28150(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_E1BC(v11);
  return v7;
}

unint64_t sub_22A44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B50(a5, a6);
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
    result = sub_2A834();
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

void *sub_22B50(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B9C(a1, a2);
  sub_22CCC(&off_359F0);
  return v3;
}

void *sub_22B9C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_22DB8(v5, 0);
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

  result = sub_2A834();
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
        v10 = sub_2A434();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_22DB8(v10, 0);
        result = sub_2A804();
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

uint64_t sub_22CCC(uint64_t result)
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

  result = sub_22E2C(result, v11, 1, v3);
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

void *sub_22DB8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_2B4C(&qword_394F0, &qword_2CFB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_394F0, &qword_2CFB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

Swift::Int sub_22F20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26FC8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22F8C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_22F8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2A894(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_2A464();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_231E4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23084(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23084(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 80 * a3 - 80;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 72);
      if (*(v10 + 152) < 0)
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v11 < 0)
      {
        goto LABEL_4;
      }

      sub_8228();
      result = sub_2A6D4();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 80;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v16 = *(v10 + 96);
      v17 = *(v10 + 112);
      *v18 = *(v10 + 128);
      *&v18[9] = *(v10 + 137);
      v15 = *(v10 + 80);
      v12 = *(v10 + 48);
      *(v10 + 112) = *(v10 + 32);
      *(v10 + 128) = v12;
      *(v10 + 144) = *(v10 + 64);
      v13 = *(v10 + 16);
      *(v10 + 80) = *v10;
      *(v10 + 96) = v13;
      *v10 = v15;
      *(v10 + 57) = *&v18[9];
      *(v10 + 32) = v17;
      *(v10 + 48) = *v18;
      *(v10 + 16) = v16;
      v10 -= 80;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_231E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v106 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_107:
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_141:
      result = sub_23C38(v7);
      v7 = result;
    }

    v109 = v7;
    v97 = *(v7 + 2);
    v7 += 16;
    v96 = v97;
    if (v97 >= 2)
    {
      while (*a3)
      {
        v98 = &v109[16 * v96];
        v99 = *v98;
        v100 = &v7[16 * v96];
        v101 = *(v100 + 1);
        v102 = v117;
        sub_23940((*a3 + 80 * *v98), (*a3 + 80 * *v100), (*a3 + 80 * v101), v4);
        v117 = v102;
        if (v102)
        {
        }

        if (v101 < v99)
        {
          goto LABEL_133;
        }

        if (v96 - 2 >= *v7)
        {
          goto LABEL_134;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        v103 = *v7 - v96;
        if (*v7 < v96)
        {
          goto LABEL_135;
        }

        v96 = *v7 - 1;
        result = memmove(v100, v100 + 16, 16 * v103);
        *v7 = v96;
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = v7;
      v10 = *a3;
      v11 = *a3 + 80 * v6;
      v13 = *(v11 + 40);
      v12 = *(v11 + 48);
      v14 = *(v11 + 72);
      v15 = *a3 + 80 * v8;
      v17 = *(v15 + 40);
      v16 = *(v15 + 48);
      v18 = *(v15 + 72);
      if (v14 < 0)
      {
        if (v18 < 0)
        {
          goto LABEL_8;
        }
      }

      else if ((v18 & 0x80000000) == 0)
      {
LABEL_8:
        *&v111 = v13;
        *(&v111 + 1) = v12;
        v115 = v17;
        v116 = v16;
        sub_8228();
        v4 = &v111;
        result = sub_2A6D4();
        v19 = result == -1;
LABEL_11:
        v6 = v8 + 2;
        if (v8 + 2 < v5)
        {
          v20 = (v10 + 80 * v8 + 232);
          while (1)
          {
            v21 = *(v20 - 3);
            v23 = *(v20 - 14);
            v22 = *(v20 - 13);
            v24 = *(v20 - 80);
            if (*v20 < 0)
            {
              if ((v24 & 0x80000000) == 0)
              {
                goto LABEL_14;
              }
            }

            else if (v24 < 0)
            {
LABEL_14:
              if (v19)
              {
                v7 = v9;
                if (v6 < v8)
                {
                  goto LABEL_138;
                }

                goto LABEL_23;
              }

              goto LABEL_15;
            }

            *&v111 = *(v20 - 4);
            *(&v111 + 1) = v21;
            v115 = v23;
            v116 = v22;
            sub_8228();
            v4 = &v111;
            result = sub_2A6D4();
            if (((v19 ^ (result != -1)) & 1) == 0)
            {
              break;
            }

LABEL_15:
            v20 += 80;
            if (v5 == ++v6)
            {
              v6 = v5;
              v7 = v9;
              if (!v19)
              {
                goto LABEL_31;
              }

              goto LABEL_22;
            }
          }
        }

        v7 = v9;
        if (v19)
        {
LABEL_22:
          if (v6 < v8)
          {
            goto LABEL_138;
          }

LABEL_23:
          if (v8 < v6)
          {
            v25 = 80 * v6 - 80;
            v26 = 80 * v8;
            v27 = v6;
            v28 = v8;
            do
            {
              if (v28 != --v27)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_144;
                }

                v4 = (v29 + v25);
                v112 = *(v29 + v26 + 16);
                v113 = *(v29 + v26 + 32);
                v114[0] = *(v29 + v26 + 48);
                *(v114 + 9) = *(v29 + v26 + 57);
                v111 = *(v29 + v26);
                result = memmove((v29 + v26), (v29 + v25), 0x50uLL);
                v4[1] = v112;
                v4[2] = v113;
                v4[3] = v114[0];
                *(v4 + 57) = *(v114 + 9);
                *v4 = v111;
              }

              ++v28;
              v25 -= 80;
              v26 += 80;
            }

            while (v28 < v27);
            v7 = v9;
          }
        }

        goto LABEL_31;
      }

      v19 = 0;
      goto LABEL_11;
    }

LABEL_31:
    v30 = a3[1];
    if (v6 < v30)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_137;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_139;
        }

        if (v8 + a4 >= v30)
        {
          v31 = a3[1];
        }

        else
        {
          v31 = v8 + a4;
        }

        if (v31 < v8)
        {
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (v6 != v31)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v6 < v8)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22514(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v47 = v7;
    v48 = *(v7 + 2);
    v108 = v47;
    v49 = *(v47 + 3);
    v50 = v48 + 1;
    if (v48 >= v49 >> 1)
    {
      result = sub_22514((v49 > 1), v48 + 1, 1, v108);
      v108 = result;
    }

    *(v108 + 16) = v50;
    v51 = v108 + 32;
    v52 = (v108 + 32 + 16 * v48);
    *v52 = v8;
    v52[1] = v6;
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_146;
    }

    if (v48)
    {
      v7 = v108;
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v7 + 4);
          v55 = *(v7 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_123;
          }

          v70 = &v7[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_125;
          }

          v76 = (v51 + 16 * v53);
          v78 = *v76;
          v77 = v76[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_130;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v50 < 2)
        {
          goto LABEL_131;
        }

        v80 = &v7[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_89:
        if (v75)
        {
          goto LABEL_127;
        }

        v83 = (v51 + 16 * v53);
        v85 = *v83;
        v84 = v83[1];
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_96:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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

        if (!*a3)
        {
          goto LABEL_143;
        }

        v7 = (v51 + 16 * (v53 - 1));
        v91 = *v7;
        v92 = (v51 + 16 * v53);
        v93 = v92[1];
        v94 = v117;
        sub_23940((*a3 + 80 * *v7), (*a3 + 80 * *v92), (*a3 + 80 * v93), v4);
        v117 = v94;
        if (v94)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_118;
        }

        if (v53 > *(v108 + 16))
        {
          goto LABEL_119;
        }

        *v7 = v91;
        *(v7 + 1) = v93;
        v95 = *(v108 + 16);
        if (v53 >= v95)
        {
          goto LABEL_120;
        }

        v7 = v108;
        v50 = v95 - 1;
        result = memmove((v51 + 16 * v53), v92 + 2, 16 * (v95 - 1 - v53));
        *(v108 + 16) = v95 - 1;
        if (v95 <= 2)
        {
          goto LABEL_4;
        }
      }

      v58 = v51 + 16 * v50;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_121;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_122;
      }

      v65 = &v7[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_124;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_126;
      }

      if (v69 >= v61)
      {
        v87 = (v51 + 16 * v53);
        v89 = *v87;
        v88 = v87[1];
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_132;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

    v7 = v108;
LABEL_4:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_107;
    }
  }

  v107 = v7;
  v32 = *a3;
  v33 = *a3 + 80 * v6 - 80;
  v104 = v8;
  v34 = v8 - v6;
LABEL_42:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    v37 = *(v36 + 128);
    v39 = *(v36 + 40);
    v38 = *(v36 + 48);
    v40 = *(v36 + 72);
    if (*(v36 + 152) < 0)
    {
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v40 < 0)
    {
      goto LABEL_41;
    }

    *&v111 = *(v36 + 120);
    *(&v111 + 1) = v37;
    v115 = v39;
    v116 = v38;
    sub_8228();
    v4 = &v111;
    result = sub_2A6D4();
    if (result != -1)
    {
LABEL_41:
      ++v6;
      v33 += 80;
      --v34;
      if (v6 != v31)
      {
        goto LABEL_42;
      }

      v6 = v31;
      v7 = v107;
      v8 = v104;
      goto LABEL_53;
    }

    if (!v32)
    {
      break;
    }

    v112 = *(v36 + 96);
    v113 = *(v36 + 112);
    v114[0] = *(v36 + 128);
    *(v114 + 9) = *(v36 + 137);
    v111 = *(v36 + 80);
    v41 = *(v36 + 48);
    *(v36 + 112) = *(v36 + 32);
    *(v36 + 128) = v41;
    *(v36 + 144) = *(v36 + 64);
    v42 = *(v36 + 16);
    *(v36 + 80) = *v36;
    *(v36 + 96) = v42;
    *v36 = v111;
    v43 = v112;
    v44 = v113;
    v45 = v114[0];
    *(v36 + 57) = *(v114 + 9);
    *(v36 + 32) = v44;
    *(v36 + 48) = v45;
    *(v36 + 16) = v43;
    v36 -= 80;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_23940(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 80;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 80;
  if (v9 >= v11)
  {
    v17 = 80 * v11;
    if (__src != a2 || &a2[v17] <= __src)
    {
      memmove(__src, a2, 80 * v11);
    }

    v13 = &v4[v17];
    if (v10 < 80 || v6 <= v7)
    {
      v22 = v6;
      goto LABEL_42;
    }

LABEL_25:
    v18 = 0;
    v19 = v13;
    while (1)
    {
      v20 = &v19[v18];
      v21 = *(v6 - 8);
      if (v19[v18 - 8] < 0)
      {
        if (v21 < 0)
        {
LABEL_31:
          sub_8228();
          if (sub_2A6D4() == -1)
          {
            v22 = v6 - 80;
            v23 = &v5[v18];
            v5 = &v5[v18 - 80];
            if (v23 != v6)
            {
              memmove(v5, v6 - 80, 0x50uLL);
              v22 = v6 - 80;
            }

            v13 = &v19[v18];
            if (&v19[v18] <= v4 || (v6 = v22, v22 <= v7))
            {
              v13 = &v19[v18];
              goto LABEL_42;
            }

            goto LABEL_25;
          }
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      if (&v5[v18] != v20)
      {
        memmove(&v5[v18 - 80], v20 - 80, 0x50uLL);
      }

      v18 -= 80;
      v13 = &v19[v18];
      if (&v19[v18] <= v4)
      {
        v22 = v6;
        goto LABEL_42;
      }
    }
  }

  v12 = 80 * v9;
  if (__src != __dst || &__dst[v12] <= __src)
  {
    memmove(__src, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 80 && v6 < v5)
  {
    while (1)
    {
      v14 = v4[72];
      if (v6[72] < 0)
      {
        if ((v14 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v14 < 0)
      {
        break;
      }

      sub_8228();
      if (sub_2A6D4() != -1)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 80;
      if (!v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 80;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_39;
      }
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 80;
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v7, v15, 0x50uLL);
    goto LABEL_14;
  }

LABEL_39:
  v22 = v7;
LABEL_42:
  v24 = 80 * ((v13 - v4) / 80);
  if (v22 != v4 || v22 >= &v4[v24])
  {
    memmove(v22, v4, v24);
  }

  return 1;
}

char *sub_23C4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23CCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23DE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23F08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23CAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23CCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_39598, &unk_2D028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_395B8, &unk_2D088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23F08(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B4C(&qword_394F8, &qword_2CFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24014(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2B4C(&qword_395D0, &qword_2D0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2B4C(&qword_395C0, &qword_2CB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24148(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_2A8F4();
  sub_6DDC(a2);
  sub_2A414();

  v5 = sub_2A914();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xEE007377656E2E65;
      v10 = 0x6C7070612E6D6F63;
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v10 = 0xD00000000000001BLL;
          v9 = 0x800000000002D330;
          break;
        case 2:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D350;
          break;
        case 3:
          v10 = 0xD000000000000015;
          v9 = 0x800000000002D370;
          break;
        case 4:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D390;
          break;
        case 5:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D3B0;
          break;
        case 6:
          v10 = 0xD000000000000014;
          v9 = 0x800000000002D3D0;
          break;
        case 7:
          v10 = 0xD000000000000015;
          v9 = 0x800000000002D3F0;
          break;
        case 8:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D410;
          break;
        case 9:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D430;
          break;
        case 0xA:
          v10 = 0xD000000000000016;
          v9 = 0x800000000002D450;
          break;
        case 0xB:
          break;
        case 0xC:
          v10 = 0xD000000000000010;
          v9 = 0x800000000002D480;
          break;
        case 0xD:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D4A0;
          break;
        case 0xE:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D4C0;
          break;
        case 0xF:
          v9 = 0xEE007370614D2E65;
          goto LABEL_33;
        case 0x10:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D4F0;
          break;
        case 0x11:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D510;
          break;
        case 0x12:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D530;
          break;
        case 0x13:
          v10 = 0xD000000000000010;
          v9 = 0x800000000002D550;
          break;
        case 0x14:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D570;
          break;
        case 0x15:
          v9 = 0xEE00656D6F482E65;
          goto LABEL_33;
        case 0x16:
          v10 = 0xD000000000000011;
          v9 = 0x800000000002D5A0;
          break;
        case 0x17:
          v9 = 0xEF636973754D2E65;
          goto LABEL_33;
        case 0x18:
          v9 = 0xEC00000076742E65;
          goto LABEL_33;
        case 0x19:
          v10 = 0xD000000000000019;
          v9 = 0x800000000002D5D0;
          break;
        case 0x1A:
          v10 = 0xD000000000000010;
          v9 = 0x800000000002D5F0;
          break;
        case 0x1B:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D610;
          break;
        case 0x1C:
          v10 = 0xD000000000000013;
          v9 = 0x800000000002D630;
          break;
        case 0x1D:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D650;
          break;
        case 0x1E:
          v10 = 0xD000000000000012;
          v9 = 0x800000000002D670;
          break;
        case 0x1F:
          v10 = 0xD000000000000016;
          v9 = 0x800000000002D690;
          break;
        case 0x20:
          v9 = 0xEF73656D61672E65;
LABEL_33:
          v10 = 0x6C7070612E6D6F63;
          break;
        default:
          v10 = 0xD000000000000014;
          v9 = 0x800000000002D310;
          break;
      }

      v11 = 0x6C7070612E6D6F63;
      v12 = 0xEE007377656E2E65;
      switch(a2)
      {
        case 1:
          v11 = 0xD00000000000001BLL;
          v12 = 0x800000000002D330;
          break;
        case 2:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D350;
          break;
        case 3:
          v11 = 0xD000000000000015;
          v12 = 0x800000000002D370;
          break;
        case 4:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D390;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D3B0;
          break;
        case 6:
          v11 = 0xD000000000000014;
          v12 = 0x800000000002D3D0;
          break;
        case 7:
          v11 = 0xD000000000000015;
          v12 = 0x800000000002D3F0;
          break;
        case 8:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D410;
          break;
        case 9:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D430;
          break;
        case 10:
          v11 = 0xD000000000000016;
          v12 = 0x800000000002D450;
          break;
        case 11:
          break;
        case 12:
          v11 = 0xD000000000000010;
          v12 = 0x800000000002D480;
          break;
        case 13:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D4A0;
          break;
        case 14:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D4C0;
          break;
        case 15:
          v12 = 0xEE007370614D2E65;
          goto LABEL_64;
        case 16:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D4F0;
          break;
        case 17:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D510;
          break;
        case 18:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D530;
          break;
        case 19:
          v11 = 0xD000000000000010;
          v12 = 0x800000000002D550;
          break;
        case 20:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D570;
          break;
        case 21:
          v12 = 0xEE00656D6F482E65;
          goto LABEL_64;
        case 22:
          v11 = 0xD000000000000011;
          v12 = 0x800000000002D5A0;
          break;
        case 23:
          v12 = 0xEF636973754D2E65;
          goto LABEL_64;
        case 24:
          v12 = 0xEC00000076742E65;
          goto LABEL_64;
        case 25:
          v11 = 0xD000000000000019;
          v12 = 0x800000000002D5D0;
          break;
        case 26:
          v11 = 0xD000000000000010;
          v12 = 0x800000000002D5F0;
          break;
        case 27:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D610;
          break;
        case 28:
          v11 = 0xD000000000000013;
          v12 = 0x800000000002D630;
          break;
        case 29:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D650;
          break;
        case 30:
          v11 = 0xD000000000000012;
          v12 = 0x800000000002D670;
          break;
        case 31:
          v11 = 0xD000000000000016;
          v12 = 0x800000000002D690;
          break;
        case 32:
          v12 = 0xEF73656D61672E65;
LABEL_64:
          v11 = 0x6C7070612E6D6F63;
          break;
        default:
          v11 = 0xD000000000000014;
          v12 = 0x800000000002D310;
          break;
      }

      if (v10 == v11 && v9 == v12)
      {
        break;
      }

      v13 = sub_2A8A4();

      if (v13)
      {
        goto LABEL_78;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    sub_25334(a2, v7, isUniquelyReferenced_nonNull_native);
    *v16 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AE8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2A8F4();
  sub_2A414();
  v8 = sub_2A914();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2A8A4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25E24(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_24C38(unint64_t result, int64_t a2, __int128 *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_22618(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_24D0C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_24D0C(unint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
    v19 = *(a4 + 4);
    v20 = a4[1];
    v25 = *a4;
    v26 = v20;
    v24 = v19;
    *v10 = v25;
    *(v10 + 16) = v20;
    *(v10 + 32) = v19;
    if (a3 == 1)
    {
      return result;
    }

    sub_287DC(&v25, v23);
    sub_E25C(&v24, v23, &qword_395C0, &qword_2CB70);
    __break(1u);
  }

  v21 = a4[1];
  v25 = *a4;
  v26 = v21;
  v22 = *(a4 + 4);
  sub_28788(&v25);
  v23[0] = v22;
  return sub_E02C(v23, &qword_395C0, &qword_2CB70);
}

uint64_t sub_24E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B4C(&qword_394D8, &qword_2CFA0);
  result = sub_2A7E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_2A8F4();
      sub_6DDC(v17);
      sub_2A414();

      result = sub_2A914();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_250D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B4C(&qword_394D0, &qword_2CF98);
  result = sub_2A7E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2A8F4();
      sub_2A414();
      result = sub_2A914();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25334(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24E68(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_25FA4();
        goto LABEL_112;
      }

      sub_26240(v6 + 1);
    }

    v8 = *v3;
    sub_2A8F4();
    sub_6DDC(v5);
    sub_2A414();

    result = sub_2A914();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xEE007377656E2E65;
        v12 = 0x6C7070612E6D6F63;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xD00000000000001BLL;
            v11 = 0x800000000002D330;
            break;
          case 2:
            v12 = 0xD000000000000013;
            v11 = 0x800000000002D350;
            break;
          case 3:
            v12 = 0xD000000000000015;
            v11 = 0x800000000002D370;
            break;
          case 4:
            v12 = 0xD000000000000013;
            v11 = 0x800000000002D390;
            break;
          case 5:
            v12 = 0xD000000000000012;
            v11 = 0x800000000002D3B0;
            break;
          case 6:
            v12 = 0xD000000000000014;
            v11 = 0x800000000002D3D0;
            break;
          case 7:
            v12 = 0xD000000000000015;
            v11 = 0x800000000002D3F0;
            break;
          case 8:
            v12 = 0xD000000000000013;
            v11 = 0x800000000002D410;
            break;
          case 9:
            v12 = 0xD000000000000012;
            v11 = 0x800000000002D430;
            break;
          case 0xA:
            v12 = 0xD000000000000016;
            v11 = 0x800000000002D450;
            break;
          case 0xB:
            break;
          case 0xC:
            v12 = 0xD000000000000010;
            v11 = 0x800000000002D480;
            break;
          case 0xD:
            v12 = 0xD000000000000011;
            v11 = 0x800000000002D4A0;
            break;
          case 0xE:
            v12 = 0xD000000000000013;
            v11 = 0x800000000002D4C0;
            break;
          case 0xF:
            v12 = 0x6C7070612E6D6F63;
            v11 = 0xEE007370614D2E65;
            break;
          case 0x10:
            v12 = 0xD000000000000011;
            v11 = 0x800000000002D4F0;
            break;
          case 0x11:
            v12 = 0xD000000000000011;
            v11 = 0x800000000002D510;
            break;
          case 0x12:
            v12 = 0xD000000000000013;
            v11 = 0x800000000002D530;
            break;
          case 0x13:
            v12 = 0xD000000000000010;
            v11 = 0x800000000002D550;
            break;
          case 0x14:
            v12 = 0xD000000000000011;
            v11 = 0x800000000002D570;
            break;
          case 0x15:
            v12 = 0x6C7070612E6D6F63;
            v11 = 0xEE00656D6F482E65;
            break;
          case 0x16:
            v12 = 0xD000000000000011;
            v11 = 0x800000000002D5A0;
            break;
          case 0x17:
            v12 = 0x6C7070612E6D6F63;
            v11 = 0xEF636973754D2E65;
            break;
          case 0x18:
            v12 = 0x6C7070612E6D6F63;
            v11 = 0xEC00000076742E65;
            break;
          case 0x19:
            v12 = 0xD000000000000019;
            v11 = 0x800000000002D5D0;
            break;
          case 0x1A:
            v12 = 0xD000000000000010;
            v11 = 0x800000000002D5F0;
            break;
          case 0x1B:
            v12 = 0xD000000000000012;
            v11 = 0x800000000002D610;
            break;
          case 0x1C:
            v12 = 0xD000000000000013;
            v11 = 0x800000000002D630;
            break;
          case 0x1D:
            v12 = 0xD000000000000012;
            v11 = 0x800000000002D650;
            break;
          case 0x1E:
            v12 = 0xD000000000000012;
            v11 = 0x800000000002D670;
            break;
          case 0x1F:
            v12 = 0xD000000000000016;
            v11 = 0x800000000002D690;
            break;
          case 0x20:
            v12 = 0x6C7070612E6D6F63;
            v11 = 0xEF73656D61672E65;
            break;
          default:
            v12 = 0xD000000000000014;
            v11 = 0x800000000002D310;
            break;
        }

        v13 = 0x6C7070612E6D6F63;
        v14 = 0xEE007377656E2E65;
        switch(v5)
        {
          case 1:
            v14 = 0x800000000002D330;
            if (v12 != 0xD00000000000001BLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 2:
            v14 = 0x800000000002D350;
            if (v12 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 3:
            v14 = 0x800000000002D370;
            if (v12 != 0xD000000000000015)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 4:
            v14 = 0x800000000002D390;
            if (v12 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 5:
            v14 = 0x800000000002D3B0;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 6:
            v14 = 0x800000000002D3D0;
            if (v12 != 0xD000000000000014)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 7:
            v14 = 0x800000000002D3F0;
            if (v12 != 0xD000000000000015)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 8:
            v14 = 0x800000000002D410;
            if (v12 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 9:
            v14 = 0x800000000002D430;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 10:
            v14 = 0x800000000002D450;
            if (v12 != 0xD000000000000016)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 11:
            goto LABEL_105;
          case 12:
            v14 = 0x800000000002D480;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 13:
            v14 = 0x800000000002D4A0;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 14:
            v14 = 0x800000000002D4C0;
            if (v12 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 15:
            v15 = 0x7370614D2E65;
            goto LABEL_80;
          case 16:
            v14 = 0x800000000002D4F0;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 17:
            v14 = 0x800000000002D510;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 18:
            v14 = 0x800000000002D530;
            if (v12 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 19:
            v14 = 0x800000000002D550;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 20:
            v14 = 0x800000000002D570;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 21:
            v15 = 0x656D6F482E65;
LABEL_80:
            v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v12 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 22:
            v14 = 0x800000000002D5A0;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 23:
            v14 = 0xEF636973754D2E65;
            if (v12 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 24:
            v14 = 0xEC00000076742E65;
            if (v12 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 25:
            v14 = 0x800000000002D5D0;
            if (v12 != 0xD000000000000019)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 26:
            v14 = 0x800000000002D5F0;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 27:
            v14 = 0x800000000002D610;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 28:
            v14 = 0x800000000002D630;
            if (v12 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 29:
            v13 = 0xD000000000000012;
            v14 = 0x800000000002D650;
LABEL_105:
            if (v12 == v13)
            {
              goto LABEL_106;
            }

            goto LABEL_107;
          case 30:
            v14 = 0x800000000002D670;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 31:
            v14 = 0x800000000002D690;
            if (v12 != 0xD000000000000016)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 32:
            v14 = 0xEF73656D61672E65;
            if (v12 != 0x6C7070612E6D6F63)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          default:
            v14 = 0x800000000002D310;
            if (v12 != 0xD000000000000014)
            {
              goto LABEL_107;
            }

LABEL_106:
            if (v11 == v14)
            {
              goto LABEL_115;
            }

LABEL_107:
            v16 = sub_2A8A4();

            if (v16)
            {
              goto LABEL_116;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_112:
  v17 = *v21;
  *(v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_115:

LABEL_116:
    sub_2A8C4();
    __break(1u);
    JUMPOUT(0x25D1CLL);
  }

  *(v17 + 16) = v20;
  return result;
}

uint64_t sub_25E24(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_250D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_260E4();
      goto LABEL_16;
    }

    sub_2647C(v8 + 1);
  }

  v10 = *v4;
  sub_2A8F4();
  sub_2A414();
  result = sub_2A914();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2A8A4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2A8C4();
  __break(1u);
  return result;
}

void *sub_25FA4()
{
  v1 = v0;
  sub_2B4C(&qword_394D8, &qword_2CFA0);
  v2 = *v0;
  v3 = sub_2A7D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_260E4()
{
  v1 = v0;
  sub_2B4C(&qword_394D0, &qword_2CF98);
  v2 = *v0;
  v3 = sub_2A7D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B4C(&qword_394D8, &qword_2CFA0);
  result = sub_2A7E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2A8F4();
      sub_6DDC(v16);
      sub_2A414();

      result = sub_2A914();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2647C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2B4C(&qword_394D0, &qword_2CF98);
  result = sub_2A7E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2A8F4();

      sub_2A414();
      result = sub_2A914();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_266C8(uint64_t a1, uint64_t a2)
{
  sub_2A8F4();
  sub_2A414();
  v4 = sub_2A914();

  return sub_26740(a1, a2, v4);
}

unint64_t sub_26740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2A8A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_267F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B4C(&qword_394E0, &qword_2CFA8);
  v38 = v4;
  result = sub_2A874();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_280E4(v27, &v39);
      }

      sub_2A8F4();
      sub_2A414();
      result = sub_2A914();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26AC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2A714() + 1) & ~v5;
    do
    {
      sub_2A8F4();

      sub_2A414();
      v11 = sub_2A914();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C84(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_266C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_267F8(v16, a4 & 1);
      v11 = sub_266C8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2A8D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26E14();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_28078(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

void *sub_26E14()
{
  v1 = v0;
  sub_2B4C(&qword_394E0, &qword_2CFA8);
  v2 = *v0;
  v3 = sub_2A864();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_280E4(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_26FDC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_2A784();
      sub_28600(0, &qword_39588, UNNotificationSource_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_28600(0, &qword_39588, UNNotificationSource_ptr);
    if (sub_2A754() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_2A764();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_2A644(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_2A654();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_27200()
{
  v0 = sub_2A3E4();
  sub_1DA8(v0);

  result = SBSCopyDisplayIdentifiers();
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2A4E4();
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_272BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B4C(&qword_394D0, &qword_2CF98);
    v3 = sub_2A7F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2A8F4();

      sub_2A414();
      result = sub_2A914();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2A8A4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_27424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_2B4C(&qword_394D8, &qword_2CFA0);
  v3 = sub_2A7F4();
  v4 = 0;
  v5 = v3 + 56;
  v24 = a1 + 32;
  v23 = v1;
  do
  {
    v6 = *(v24 + v4);
    sub_2A8F4();
    sub_6DDC(v6);
    sub_2A414();

    v7 = sub_2A914();
    v8 = ~(-1 << *(v3 + 32));
    v9 = v7 & v8;
    v10 = (v7 & v8) >> 6;
    v11 = *(v5 + 8 * v10);
    v12 = 1 << (v7 & v8);
    if ((v12 & v11) != 0)
    {
      while (1)
      {
        v13 = 0xEE007377656E2E65;
        v14 = 0x6C7070612E6D6F63;
        switch(*(*(v3 + 48) + v9))
        {
          case 1:
            v14 = 0xD00000000000001BLL;
            v13 = 0x800000000002D330;
            break;
          case 2:
            v14 = 0xD000000000000013;
            v13 = 0x800000000002D350;
            break;
          case 3:
            v14 = 0xD000000000000015;
            v13 = 0x800000000002D370;
            break;
          case 4:
            v14 = 0xD000000000000013;
            v13 = 0x800000000002D390;
            break;
          case 5:
            v14 = 0xD000000000000012;
            v13 = 0x800000000002D3B0;
            break;
          case 6:
            v14 = 0xD000000000000014;
            v13 = 0x800000000002D3D0;
            break;
          case 7:
            v14 = 0xD000000000000015;
            v13 = 0x800000000002D3F0;
            break;
          case 8:
            v14 = 0xD000000000000013;
            v13 = 0x800000000002D410;
            break;
          case 9:
            v14 = 0xD000000000000012;
            v13 = 0x800000000002D430;
            break;
          case 0xA:
            v14 = 0xD000000000000016;
            v13 = 0x800000000002D450;
            break;
          case 0xB:
            break;
          case 0xC:
            v14 = 0xD000000000000010;
            v13 = 0x800000000002D480;
            break;
          case 0xD:
            v14 = 0xD000000000000011;
            v13 = 0x800000000002D4A0;
            break;
          case 0xE:
            v14 = 0xD000000000000013;
            v13 = 0x800000000002D4C0;
            break;
          case 0xF:
            v14 = 0x6C7070612E6D6F63;
            v13 = 0xEE007370614D2E65;
            break;
          case 0x10:
            v14 = 0xD000000000000011;
            v13 = 0x800000000002D4F0;
            break;
          case 0x11:
            v14 = 0xD000000000000011;
            v13 = 0x800000000002D510;
            break;
          case 0x12:
            v14 = 0xD000000000000013;
            v13 = 0x800000000002D530;
            break;
          case 0x13:
            v14 = 0xD000000000000010;
            v13 = 0x800000000002D550;
            break;
          case 0x14:
            v14 = 0xD000000000000011;
            v13 = 0x800000000002D570;
            break;
          case 0x15:
            v14 = 0x6C7070612E6D6F63;
            v13 = 0xEE00656D6F482E65;
            break;
          case 0x16:
            v14 = 0xD000000000000011;
            v13 = 0x800000000002D5A0;
            break;
          case 0x17:
            v14 = 0x6C7070612E6D6F63;
            v13 = 0xEF636973754D2E65;
            break;
          case 0x18:
            v14 = 0x6C7070612E6D6F63;
            v13 = 0xEC00000076742E65;
            break;
          case 0x19:
            v14 = 0xD000000000000019;
            v13 = 0x800000000002D5D0;
            break;
          case 0x1A:
            v14 = 0xD000000000000010;
            v13 = 0x800000000002D5F0;
            break;
          case 0x1B:
            v14 = 0xD000000000000012;
            v13 = 0x800000000002D610;
            break;
          case 0x1C:
            v14 = 0xD000000000000013;
            v13 = 0x800000000002D630;
            break;
          case 0x1D:
            v14 = 0xD000000000000012;
            v13 = 0x800000000002D650;
            break;
          case 0x1E:
            v14 = 0xD000000000000012;
            v13 = 0x800000000002D670;
            break;
          case 0x1F:
            v14 = 0xD000000000000016;
            v13 = 0x800000000002D690;
            break;
          case 0x20:
            v14 = 0x6C7070612E6D6F63;
            v13 = 0xEF73656D61672E65;
            break;
          default:
            v14 = 0xD000000000000014;
            v13 = 0x800000000002D310;
            break;
        }

        v15 = 0x6C7070612E6D6F63;
        v16 = 0xEE007377656E2E65;
        switch(v6)
        {
          case 1:
            v16 = 0x800000000002D330;
            if (v14 == 0xD00000000000001BLL)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          case 2:
            v16 = 0x800000000002D350;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 3:
            v16 = 0x800000000002D370;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 4:
            v16 = 0x800000000002D390;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 5:
            v16 = 0x800000000002D3B0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 6:
            v16 = 0x800000000002D3D0;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 7:
            v16 = 0x800000000002D3F0;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 8:
            v16 = 0x800000000002D410;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 9:
            v16 = 0x800000000002D430;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 10:
            v16 = 0x800000000002D450;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 11:
            goto LABEL_101;
          case 12:
            v16 = 0x800000000002D480;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 13:
            v16 = 0x800000000002D4A0;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 14:
            v16 = 0x800000000002D4C0;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 15:
            v17 = 0x7370614D2E65;
            goto LABEL_76;
          case 16:
            v16 = 0x800000000002D4F0;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 17:
            v16 = 0x800000000002D510;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 18:
            v16 = 0x800000000002D530;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 19:
            v16 = 0x800000000002D550;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 20:
            v16 = 0x800000000002D570;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 21:
            v17 = 0x656D6F482E65;
LABEL_76:
            v16 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v14 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 22:
            v16 = 0x800000000002D5A0;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 23:
            v16 = 0xEF636973754D2E65;
            if (v14 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 24:
            v16 = 0xEC00000076742E65;
            if (v14 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 25:
            v16 = 0x800000000002D5D0;
            if (v14 != 0xD000000000000019)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 26:
            v16 = 0x800000000002D5F0;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 27:
            v16 = 0x800000000002D610;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 28:
            v16 = 0x800000000002D630;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 29:
            v15 = 0xD000000000000012;
            v16 = 0x800000000002D650;
LABEL_101:
            if (v14 == v15)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          case 30:
            v16 = 0x800000000002D670;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 31:
            v16 = 0x800000000002D690;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          case 32:
            v16 = 0xEF73656D61672E65;
            if (v14 != 0x6C7070612E6D6F63)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          default:
            v16 = 0x800000000002D310;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_103;
            }

LABEL_102:
            if (v13 == v16)
            {

              goto LABEL_4;
            }

LABEL_103:
            v18 = sub_2A8A4();

            if (v18)
            {
              goto LABEL_4;
            }

            v9 = (v9 + 1) & v8;
            v10 = v9 >> 6;
            v11 = *(v5 + 8 * (v9 >> 6));
            v12 = 1 << v9;
            if ((v11 & (1 << v9)) == 0)
            {
              goto LABEL_108;
            }

            break;
        }
      }
    }

LABEL_108:
    *(v5 + 8 * v10) = v11 | v12;
    *(*(v3 + 48) + v9) = v6;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
      JUMPOUT(0x27E18);
    }

    *(v3 + 16) = v21;
LABEL_4:
    ++v4;
  }

  while (v4 != v23);
  return v3;
}

uint64_t sub_27F20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2A504();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AE8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_27FB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_280D4(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_2B94(a1, a2);
  }

  return a1;
}

_OWORD *sub_28140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_28150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_281B0(const char *a1)
{
  if (qword_389F8 != -1)
  {
    swift_once();
  }

  v2 = sub_29C14();
  sub_966C(v2, qword_3AD58);
  v3 = sub_29BF4();
  v4 = sub_2A584();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, a1, v5, 2u);
  }

  sub_2B4C(&qword_39500, &qword_2CFC8);
  sub_55DC(&qword_39508, &qword_39500, &qword_2CFC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_29C64();
}

uint64_t sub_28300()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_28358(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_28600(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_283A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_283F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_28454(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_6DD8;

  return sub_17CEC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_28548()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_28580()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_285B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_28600(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2864C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_280D4(*a1, v2);
  return sub_14BB4(v1, v2);
}

uint64_t sub_28710()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC13InstalledApps25AppsSettingsListViewModel__currentSelection);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_280D4(v1, v2);
  return sub_6DC0(v4, v5);
}

uint64_t sub_2888C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void (*sub_288A0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_28898;
}

uint64_t sub_2895C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_289A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_289F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_6BD8;

  return sub_1609C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_28B58()
{
  result = qword_396A8;
  if (!qword_396A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396A8);
  }

  return result;
}

void *sub_28BC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2B4C(&qword_39218, &qword_2CC90);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for AppsSettingsList(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2B4C(&qword_39220, &qword_2CC98);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  sub_2B4C(&qword_39228, &qword_2CCA0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppsSettingsListViewModel(0);
  v7 = a1;
  result = sub_2A214();
  v9 = (a2 + v4[7]);
  *v9 = v10;
  v9[1] = v11;
  return result;
}

uint64_t sub_28CE0(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_2A494();
  v2[3] = sub_2A484();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_28DA8;

  return sub_1FD14(a1, a2);
}

uint64_t sub_28DA8()
{

  v1 = sub_2A474();

  return _swift_task_switch(sub_28EE4, v1, v0);
}

uint64_t sub_28EE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_28F44()
{
  v1 = sub_2B4C(&qword_396B0, &qword_2D218);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for AppsSettingsList(0);
  sub_2914C();
  v6 = v5;
  sub_2A394();
  *(swift_allocObject() + 16) = v6;
  sub_29254();
  v7 = v6;
  sub_2A334();
  return (*(v2 + 8))(v4, v1);
}

id sub_290D0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for AppsSettingsListViewModel(0)) init];
  *a1 = result;
  return result;
}

uint64_t sub_2910C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2914C()
{
  result = qword_396B8;
  if (!qword_396B8)
  {
    type metadata accessor for AppsSettingsList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396B8);
  }

  return result;
}

uint64_t sub_291A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6BD8;

  return sub_28CE0(a1, a2);
}

unint64_t sub_29254()
{
  result = qword_396C0;
  if (!qword_396C0)
  {
    sub_504C(&qword_396B0, &qword_2D218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396C0);
  }

  return result;
}

uint64_t sub_29324(uint64_t a1)
{
  v2 = sub_2B4C(&qword_39188, &qword_2CBE8);
  __chkstk_darwin(v2 - 8);
  sub_293B8(a1, &v5 - v3);
  return sub_29E74();
}

uint64_t sub_293B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4C(&qword_39188, &qword_2CBE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29438()
{
  sub_504C(&qword_396B0, &qword_2D218);
  sub_29254();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_294A8(int a1, int a2, int a3, int a4)
{
  if (qword_3AD40 == -1)
  {
    if (qword_3AD48)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_29984();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_3AD48)
    {
      return _availability_version_check();
    }
  }

  if (qword_3AD38 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_2999C();
    a3 = v10;
    a4 = v9;
    v8 = dword_3AD28 < v11;
    if (dword_3AD28 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_3AD2C > a3)
      {
        return 1;
      }

      if (dword_3AD2C >= a3)
      {
        return dword_3AD30 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_3AD28 < a2;
  if (dword_3AD28 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_2963C(uint64_t result)
{
  v1 = qword_3AD48;
  if (qword_3AD48)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_3AD48 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_3AD28, &dword_3AD2C, &dword_3AD30);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}