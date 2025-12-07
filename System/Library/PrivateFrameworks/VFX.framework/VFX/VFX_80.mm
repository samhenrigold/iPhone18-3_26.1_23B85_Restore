double sub_1AF747850()
{
  v42 = *MEMORY[0x1E69E9840];
  sub_1AF455364(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v14 = *(v0 + 160);
  if (v14)
  {
    v38 = &v38 - v12;
    v15 = OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo;
    sub_1AF456C4C(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo, v6);
    v16 = *(v8 + 48);
    v17 = v16(v6, 1, v7);
    v18 = v14;
    v19 = v17;
    v39 = v18;
    swift_unknownObjectRetain();
    sub_1AF456B8C(v6);
    if (v19 == 1)
    {
      v20 = [objc_opt_self() defaultManager];
      v21 = [v20 temporaryDirectory];

      sub_1AFDFC0B8();
      v22 = v38;
      sub_1AFDFC088();
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1AF456C4C(v0 + v15, v3);
      v16(v3, 1, v7);
      v22 = v38;
      (*(v8 + 32))(v38, v3, v7);
    }

    v23 = sub_1AFDFC048();
    v40 = 0;
    v24 = [v39 serializeToURL:v23 error:&v40];

    if (v24)
    {
      v25 = qword_1ED730EA0;
      v26 = v40;
      if (v25 != -1)
      {
        swift_once();
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1AFDFE218();

      v40 = 0xD000000000000021;
      v41 = 0x80000001AFF328C0;
      sub_1AF48F374();
      v27 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v27);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      v29 = v40;
      v28 = v41;
      v30 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v36 = v30;
        swift_once();
        v30 = v36;
      }

      v40 = 0;
      sub_1AF0D4F18(v30, &v40, v29, v28);
      swift_unknownObjectRelease();

      (*(v8 + 8))(v22, v7);
    }

    else
    {
      v31 = v40;
      v32 = sub_1AFDFBF58();

      swift_willThrow();
      (*(v8 + 8))(v22, v7);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF32890);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v34 = v40;
      v33 = v41;
      v35 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v37 = v35;
        swift_once();
        v35 = v37;
      }

      v40 = 0;
      sub_1AF0D4F18(v35, &v40, v34, v33);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AF747ED0(uint64_t a1)
{
  sub_1AF0D4AA4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF747F54()
{
  sub_1AF0D4E74(0);
  v130 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v129 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1AFDFC298();
  v3 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for TextureCache.TextureKey(0);
  v122 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v116 - v8;
  sub_1AF74EED8(0, &qword_1EB63E198, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v132 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v116 - v12;
  os_unfair_lock_lock(*(v0 + 48));
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v13 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v115 = v13;
    swift_once();
    v13 = v115;
  }

  v147 = 0;
  v133 = qword_1ED73B8A0;
  sub_1AF0D4F18(v13, &v147, 0xD000000000000015, 0x80000001AFF32B00);
  v117 = v0;
  v14 = *(v0 + 72);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v119 = (v15 + 63) >> 6;
  v126 = (v3 + 32);

  v118 = 0;
  v19 = 0;
  v123 = v18;
  v20 = v18 + 72;
  v134 = xmmword_1AFE431C0;
  v124 = v6;
  v125 = v18 + 72;
  v21 = v132;
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_8:
  v136 = v19;
  v22 = v19;
LABEL_16:
  v137 = (v17 - 1) & v17;
  v25 = __clz(__rbit64(v17)) | (v22 << 6);
  v26 = v123;
  v27 = v121;
  sub_1AF74FBE4(*(v123 + 48) + *(v122 + 72) * v25, v121, type metadata accessor for TextureCache.TextureKey);
  sub_1AF74EA6C(*(v26 + 56) + 104 * v25, &v147);
  sub_1AF74EF30(0, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
  v29 = v28;
  v30 = *(v28 + 48);
  sub_1AF74E7B0(v27, v21);
  sub_1AF446690(&v147, v21 + v30);
  (*(*(v29 - 8) + 56))(v21, 0, 1, v29);
  while (1)
  {
    v31 = v131;
    sub_1AF74EF9C(v21, v131, &qword_1EB63E198, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
    sub_1AF74EF30(0, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
    if ((*(*(v29 - 8) + 48))(v31, 1, v29) == 1)
    {
      break;
    }

    v32 = *(v29 + 48);
    sub_1AF74E7B0(v31, v6);
    sub_1AF74EA04((v31 + v32), &v147);
    sub_1AF74EA3C(v31 + v32);
    if (v150 > 1u)
    {
      if (v150 == 2)
      {
        v40 = v147;
        swift_getErrorValue();
        v37 = sub_1AFDFF1D8();
        v38 = v41;

        v36 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v36 = 0;
        v39 = 0xE000000000000000;
        v38 = 0xE400000000000000;
        v37 = 1701736302;
      }

      goto LABEL_85;
    }

    if (!v150)
    {
      v33 = v147;
      v34 = v148;
      v35 = v149;
      v144 = 0x20676E6964616F6CLL;
      v145 = 0xE800000000000000;

      MEMORY[0x1B2718AE0](v33, v34);

      swift_bridgeObjectRelease_n();
      v36 = 0;
      v37 = v144;
      v38 = v145;
      v39 = 0xE000000000000000;
      goto LABEL_85;
    }

    sub_1AF74EB90(&v147, &v144);
    v42 = *&v6[*(v135 + 24)];
    sub_1AF74E914(&v144, &v140, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (v143)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1AF74EBF8(&v140);
      if (Strong)
      {
        v44 = [Strong length];
        v140 = 1534423139;
        v141 = 0xE400000000000000;
        v45 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
        [v45 setCountStyle_];
        v46 = [v45 stringFromByteCount_];
        v47 = sub_1AFDFCEF8();
        v49 = v48;

        MEMORY[0x1B2718AE0](v47, v49);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v50 = v140;
        v51 = v141;
        v52 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v54 = *(v52 + 2);
        v53 = *(v52 + 3);
        if (v54 >= v53 >> 1)
        {
          v52 = sub_1AF420554(v53 > 1, v54 + 1, 1, v52);
        }

        swift_unknownObjectRelease();
        *(v52 + 2) = v54 + 1;
        v55 = &v52[16 * v54];
        *(v55 + 4) = v50;
        *(v55 + 5) = v51;
        v118 += v44;
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      sub_1AF74E994(&v140, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      v52 = MEMORY[0x1E69E7CC0];
    }

    sub_1AF74E914(v146, &v140, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (v141 == 1)
    {
      sub_1AF74E994(&v140, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v120 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v57 = swift_unknownObjectWeakLoadStrong();
      sub_1AF74EC28(&v140);
      if (v57)
      {
        swift_getObjectType();
        v58 = sub_1AF4730E8();
        v140 = 1534423143;
        v141 = 0xE400000000000000;
        v59 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
        [v59 setCountStyle_];
        v60 = [v59 stringFromByteCount_];
        v61 = sub_1AFDFCEF8();
        v63 = v62;

        MEMORY[0x1B2718AE0](v61, v63);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v64 = v140;
        v65 = v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1AF420554(0, *(v52 + 2) + 1, 1, v52);
        }

        v67 = *(v52 + 2);
        v66 = *(v52 + 3);
        if (v67 >= v66 >> 1)
        {
          v52 = sub_1AF420554(v66 > 1, v67 + 1, 1, v52);
        }

        *(v52 + 2) = v67 + 1;
        v68 = &v52[16 * v67];
        *(v68 + 4) = v64;
        *(v68 + 5) = v65;
        v118 += v58;
        sub_1AF0D6048(0, &qword_1ED730B50, 255, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
        v69 = swift_allocObject();
        *(v69 + 16) = v134;
        *(v69 + 56) = MEMORY[0x1E69E6530];
        *(v69 + 64) = MEMORY[0x1E69E65A8];
        *(v69 + 32) = v57;
        v120 = sub_1AFDFCF38();
        v39 = v70;
        swift_unknownObjectRelease();
      }

      else
      {
        v120 = 0;
        v39 = 0xE000000000000000;
      }
    }

    sub_1AF74E914(v146, &v140, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (v141 == 1)
    {
      sub_1AF74E994(&v140, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v71 = 0;
    }

    else
    {
      v71 = v142;
      sub_1AF74EC28(&v140);
    }

    sub_1AF74E914(&v144, &v140, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (v143)
    {
      v72 = v142;
      sub_1AF74EBF8(&v140);
    }

    else
    {
      sub_1AF74E994(&v140, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      v72 = 0;
    }

    if (v72 + v71 >= 1)
    {
      v138 = 0x284B41454CLL;
      v139 = 0xE500000000000000;
      sub_1AF74E914(v146, &v140, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      if (v141 == 1)
      {
        sub_1AF74E994(&v140, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
        v73 = 0;
      }

      else
      {
        v73 = v142;
        sub_1AF74EC28(&v140);
      }

      sub_1AF74E914(&v144, &v140, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      if (v143)
      {
        v79 = v142;
        sub_1AF74EBF8(&v140);
      }

      else
      {
        sub_1AF74E994(&v140, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
        v79 = 0;
      }

      v140 = v79 + v73;
      v80 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v80);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v78 = v138;
      v77 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1AF420554(0, *(v52 + 2) + 1, 1, v52);
      }

      v75 = *(v52 + 2);
      v81 = *(v52 + 3);
      v76 = v75 + 1;
      if (v75 >= v81 >> 1)
      {
        v52 = sub_1AF420554(v81 > 1, v75 + 1, 1, v52);
      }

LABEL_64:
      *(v52 + 2) = v76;
      v82 = &v52[16 * v75];
      *(v82 + 4) = v78;
      *(v82 + 5) = v77;
      goto LABEL_65;
    }

    if (!*(v52 + 2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1AF420554(0, 1, 1, v52);
      }

      v75 = *(v52 + 2);
      v74 = *(v52 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v52 = sub_1AF420554(v74 > 1, v75 + 1, 1, v52);
      }

      v77 = 0xE400000000000000;
      v78 = 1701736302;
      goto LABEL_64;
    }

LABEL_65:
    if ((v42 & 0x60) != 0)
    {
      v140 = 0;
      v141 = 0xE000000000000000;
      if ((v42 & 0x20) != 0)
      {
        v83 = 0xE600000000000000;
      }

      else
      {
        v83 = 0xE000000000000000;
      }

      MEMORY[0x1B2718AE0]((v42 << 58 >> 63) & 0x2D636F6C6C61, v83);

      if ((v42 & 0x40) != 0)
      {
        v84 = 0xE400000000000000;
      }

      else
      {
        v84 = 0xE000000000000000;
      }

      MEMORY[0x1B2718AE0]((v42 << 57 >> 63) & 0x2D6E6567, v84);

      MEMORY[0x1B2718AE0](0x70616D70696DLL, 0xE600000000000000);
      v85 = v140;
      v86 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1AF420554(0, *(v52 + 2) + 1, 1, v52);
      }

      v88 = *(v52 + 2);
      v87 = *(v52 + 3);
      if (v88 >= v87 >> 1)
      {
        v52 = sub_1AF420554(v87 > 1, v88 + 1, 1, v52);
      }

      *(v52 + 2) = v88 + 1;
      v89 = &v52[16 * v88];
      *(v89 + 4) = v85;
      *(v89 + 5) = v86;
    }

    if ((v42 & 0x100) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1AF420554(0, *(v52 + 2) + 1, 1, v52);
      }

      v91 = *(v52 + 2);
      v90 = *(v52 + 3);
      v36 = v120;
      if (v91 >= v90 >> 1)
      {
        v52 = sub_1AF420554(v90 > 1, v91 + 1, 1, v52);
      }

      *(v52 + 2) = v91 + 1;
      v92 = &v52[16 * v91];
      *(v92 + 4) = 0x6361667275736F69;
      *(v92 + 5) = 0xE900000000000065;
    }

    else
    {
      v36 = v120;
    }

    v140 = v52;
    sub_1AF74FCC4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v37 = sub_1AFDFCD98();
    v38 = v93;

    sub_1AF74EBC8(&v144);
LABEL_85:
    v147 = sub_1AFDFC028();
    v148 = v94;
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v37, v38);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v36, v39);

    v96 = v147;
    v95 = v148;
    v97 = sub_1AFDFDA28();
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    v98 = qword_1ED73B890;
    sub_1AF0D6048(0, &qword_1ED730B50, 255, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
    v99 = swift_allocObject();
    *(v99 + 16) = v134;
    *(v99 + 56) = MEMORY[0x1E69E6158];
    *(v99 + 64) = sub_1AF0D544C();
    *(v99 + 32) = v96;
    *(v99 + 40) = v95;

    sub_1AFDFC4C8(v97, &dword_1AF0CE000, v98, "%{public}s", 10, 2, v99);

    v100 = v127;
    sub_1AFDFC288();
    v101 = v129;
    v102 = v130[12];
    v103 = v130[16];
    v104 = &v129[v130[20]];
    (*v126)(v129, v100, v128);
    *(v101 + v102) = v97;
    *(v101 + v103) = 0;
    *v104 = v96;
    v104[1] = v95;
    sub_1AFDFC608();

    sub_1AF74EB30(v101, sub_1AF0D4E74);
    v6 = v124;
    sub_1AF74EB30(v124, type metadata accessor for TextureCache.TextureKey);
    v20 = v125;
    v19 = v136;
    v17 = v137;
    v21 = v132;
    if (v137)
    {
      goto LABEL_8;
    }

LABEL_9:
    if (v119 <= v19 + 1)
    {
      v23 = v19 + 1;
    }

    else
    {
      v23 = v119;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (v19 + 1 >= v119)
      {
        break;
      }

      v17 = *(v20 + 8 * v19++);
      if (v17)
      {
        v136 = v22;
        goto LABEL_16;
      }
    }

    sub_1AF74EF30(0, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
    v29 = v56;
    (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
    v136 = v24;
    v137 = 0;
  }

  v147 = 0;
  v148 = 0xE000000000000000;
  sub_1AFDFE218();

  v147 = 0xD000000000000014;
  v148 = 0x80000001AFF32B20;
  v105 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v105 setCountStyle_];
  v106 = v118;
  v107 = [v105 stringFromByteCount_];
  v108 = sub_1AFDFCEF8();
  v110 = v109;

  MEMORY[0x1B2718AE0](v108, v110);

  v111 = v147;
  v112 = v148;
  v113 = sub_1AFDFDA28();
  v147 = 0;
  sub_1AF0D4F18(v113, &v147, v111, v112);

  os_unfair_lock_unlock(*(v117 + 48));
  return v106;
}

uint64_t sub_1AF7490D8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextureCache.TextureKey(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v15 = v8;
  v10 = sub_1AF41A700(a1);
  v11 = v9;
  result = v8[2] + ((v9 & 1) == 0);
  if (v8[3] >= result)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v2 = v8;
      if (v9)
      {
LABEL_8:
        ++*(v8[7] + 8 * v10);
        return result;
      }
    }

    else
    {
      result = sub_1AF84BE98();
      v8 = v15;
      *v2 = v15;
      if (v11)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    sub_1AF74FBE4(a1, v6, type metadata accessor for TextureCache.TextureKey);
    result = sub_1AF843B0C(v10, v6, 0, v8);
    goto LABEL_8;
  }

  sub_1AF83A630(result, isUniquelyReferenced_nonNull_native);
  v8 = v15;
  result = sub_1AF41A700(a1);
  if ((v11 & 1) == (v13 & 1))
  {
    v10 = result;
    *v2 = v8;
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF749250(uint64_t a1, uint64_t a2, char a3)
{
  sub_1AF74EA04(v3, v27);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_1AF74A46C(v27);
    }

    v9 = 0;
  }

  else if (v30)
  {
    sub_1AF74EB90(v27, v25);
    sub_1AF74E914(v25, v23, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (*&v24[0])
    {
      sub_1AF74EE0C(v23, &v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (Strong)
      {
        v11 = v17 + 1;
      }

      else
      {
        v11 = 0;
      }

      *(&v16 + 1) = Strong;
      v17 = v11;
      sub_1AF74EE44(&v16, v21);
      sub_1AF74EBF8(v23);
    }

    else
    {
      sub_1AF74E994(v23, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      memset(v21, 0, sizeof(v21));
      v22 = 0;
    }

    sub_1AF74E914(&v26, v23, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (*(&v23[0] + 1) == 1)
    {
      sub_1AF74E994(v23, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v16 = xmmword_1AFE21110;
      v17 = 0;
    }

    else
    {
      sub_1AF74ED90(v23, v18);
      v12 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v12)
      {
        v13 = v20 + 1;
      }

      else
      {
        v13 = 0;
      }

      v19 = v12;
      v20 = v13;
      sub_1AF74EDD0(v18, &v16);
      sub_1AF74EC28(v23);
    }

    memset(v23, 0, sizeof(v23));
    v24[0] = 0u;
    v24[1] = xmmword_1AFE22A20;
    sub_1AF74ED10(v21, v23, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    sub_1AF74ED10(&v16, v24 + 8, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    sub_1AF74A46C(v3);
    sub_1AF74EEA0(v23, v3);
    *(v3 + 96) = 1;
    v14 = sub_1AF7494D8();
    sub_1AF74EBC8(v25);
    sub_1AF74EBC8(v23);
    v9 = v14 ^ 1;
  }

  else
  {
    v7 = v28;
    v8 = v29 + (a3 & 1);
    sub_1AF74A46C(v3);

    *v3 = a1;
    *(v3 + 8) = a2;
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
    *(v3 + 96) = 0;

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_1AF7494D8()
{
  sub_1AF74E914(v0, v4, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF74EBF8(v4);
    if (Strong)
    {
LABEL_8:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    sub_1AF74E994(v4, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
  }

  sub_1AF74E914(v0 + 72, v4, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
  if (v5 == 1)
  {
    sub_1AF74E994(v4, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    return 1;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  sub_1AF74EC28(v4);
  if (v3)
  {
    goto LABEL_8;
  }

  return 1;
}

void sub_1AF7495C8(_OWORD *a1@<X8>)
{
  sub_1AF74EA04(v1, v27);
  if (v28 == 2)
  {
    v3 = v27[0];
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v22[0] = 0;
    *(&v22[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF32BE0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v4 = v22[0];
    v5 = sub_1AFDFDA08();
    *&v22[0] = 1;
    sub_1AF75A4B4(v5, v4, *(&v4 + 1), v22, v6);

    v7 = xmmword_1AFE74F10;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
LABEL_17:
    *a1 = v8;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v10;
    return;
  }

  if (v28 == 1)
  {
    sub_1AF74EB90(v27, v25);
    sub_1AF74991C(v29);
    v13 = v29[0];
    v14 = v29[1];
    v11 = v29[3];
    v12 = v29[2];
    sub_1AF74E914(v25, v22, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (*&v23[0])
    {
      sub_1AF74EE0C(v22, &v15);
      if (!--v16)
      {
        swift_unknownObjectRelease();
        *(&v15 + 1) = 0;
      }

      sub_1AF74EE44(&v15, v20);
      sub_1AF74EBF8(v22);
    }

    else
    {
      sub_1AF74E994(v22, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      memset(v20, 0, sizeof(v20));
      v21 = 0;
    }

    sub_1AF74E914(&v26, v22, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    sub_1AF74EBC8(v25);
    if (*(&v22[0] + 1) == 1)
    {
      sub_1AF74E994(v22, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v15 = xmmword_1AFE21110;
      v16 = 0;
    }

    else
    {
      sub_1AF74ED90(v22, v17);
      if (!--v19)
      {
        swift_unknownObjectRelease();
        v18 = 0;
      }

      sub_1AF74EDD0(v17, &v15);
      sub_1AF74EC28(v22);
    }

    memset(v22, 0, sizeof(v22));
    v23[0] = 0u;
    v23[1] = xmmword_1AFE22A20;
    sub_1AF74ED10(v20, v22, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    sub_1AF74ED10(&v15, v23 + 8, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    v24 = 1;
    sub_1AF74ECD8(v22, v1);
    v8 = v13;
    v7 = v14;
    v10 = v11;
    v9 = v12;
    goto LABEL_17;
  }

  sub_1AFDFE518();
  __break(1u);
}

void *sub_1AF74991C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF749EDC(&v13);
  v4 = v18;
  if (!v18)
  {
    sub_1AF74E914(v1 + 72, v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (v12 == 1)
    {
      result = sub_1AF74E994(v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_1AF74EC28(v11);
      if (Strong)
      {
        v8 = 0;
        v9 = 0;
        *&v7 = Strong;
        goto LABEL_8;
      }
    }

    v6 = 0;
    v9 = 0;
    v4 = 0;
    v7 = 0uLL;
    v8 = 0x1FFFFFFFELL;
    v5 = 0uLL;
    goto LABEL_8;
  }

  v5 = v16;
  v6 = v14;
  v7 = v13;
  v8 = v15 & 1;
  v9 = v17 & 0xFFFFFF | 0x8000000000000000;
LABEL_8:
  *a1 = v7;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v5;
  *(a1 + 48) = v9;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_1AF749A08(uint64_t a1)
{
  sub_1AF74EA04(v1, v16);
  if (v17 == 2)
  {
    return sub_1AF74A46C(v16);
  }

  if (v17 == 1)
  {
    sub_1AF74EB90(v16, v14);
    sub_1AF74E914(v14, v11, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (*&v12[0])
    {
      sub_1AF74EE0C(v11, &v4);
      v5 -= a1;
      if (!v5)
      {
        swift_unknownObjectRelease();
        *(&v4 + 1) = 0;
      }

      sub_1AF74EE44(&v4, v9);
      sub_1AF74EBF8(v11);
    }

    else
    {
      sub_1AF74E994(v11, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      memset(v9, 0, sizeof(v9));
      v10 = 0;
    }

    sub_1AF74E914(&v15, v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    sub_1AF74EBC8(v14);
    if (*(&v11[0] + 1) == 1)
    {
      sub_1AF74E994(v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v4 = xmmword_1AFE21110;
      v5 = 0;
    }

    else
    {
      sub_1AF74ED90(v11, v6);
      v8 -= a1;
      if (!v8)
      {
        swift_unknownObjectRelease();
        v7 = 0;
      }

      sub_1AF74EDD0(v6, &v4);
      sub_1AF74EC28(v11);
    }

    memset(v11, 0, sizeof(v11));
    v12[0] = 0u;
    v12[1] = xmmword_1AFE22A20;
    sub_1AF74ED10(v9, v11, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    sub_1AF74ED10(&v4, v12 + 8, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    v13 = 1;
    return sub_1AF74ECD8(v11, v1);
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF749C44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = xmmword_1AFE22A20;
  v6 = a1[6];
  if (v6 < 0)
  {
    v8 = a1[7];
    v9 = a1[5];
    v17 = *a1;
    v18 = *(a1 + 1);
    v19 = *(a1 + 3);
    v20 = v9;
    v21 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v22 = v8;
    sub_1AF749DF4(&v17, a2, &v14);
    v10 = &unk_1ED725A10;
    v11 = &type metadata for TextureCache.WeakStorage.CPU;
    v12 = a3;
  }

  else
  {
    swift_unknownObjectWeakInit();
    v15 = 0;
    v16 = 0;
    swift_unknownObjectWeakAssign();
    if (a2 < 1)
    {
      sub_1AF74EC58(a1);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1AF74EC58(a1);
      v15 = Strong;
      v16 = a2;
    }

    v10 = &qword_1ED725A08;
    v11 = &type metadata for TextureCache.WeakStorage.GPU;
    v12 = a3 + 72;
  }

  return sub_1AF74ED10(&v14, v12, v10, v11);
}

uint64_t sub_1AF749D58(void *a1)
{
  sub_1AF74EAF8(v1, v10);
  *v1 = a1;
  *(v1 + 96) = 2;
  sub_1AF74EA04(v10, v8);
  if (v9)
  {
    v3 = a1;
    sub_1AF74A46C(v10);
    v4 = v8;
  }

  else
  {
    v5 = v8[2];
    v6 = a1;
    dispatch_group_leave(v5);

    v4 = v10;
  }

  return sub_1AF74A46C(v4);
}

uint64_t sub_1AF749DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*a1)
  {
    v10 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    *(a3 + 40) = *(a1 + 32);
    *(a3 + 56) = *(a1 + 48);

    v7 = v10;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    *(a3 + 56) = 0;
    v7 = 0uLL;
    *(a3 + 40) = 0u;
    v6 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + 24) = v7;
  *(a3 + 64) = v6;
  if (a2 < 1)
  {

    return sub_1AF478A6C(a1);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_1AF478A6C(a1);
    *(a3 + 8) = Strong;
    *(a3 + 16) = a2;
  }

  return result;
}

uint64_t sub_1AF749EDC@<X0>(uint64_t a1@<X8>)
{
  sub_1AF74E914(v1, v18, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
  if (!v22)
  {
    result = sub_1AF74E994(v18, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    Strong = 0;
LABEL_6:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    goto LABEL_7;
  }

  sub_1AF74EE44(v18, v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    result = sub_1AF74EBF8(v23);
    goto LABEL_6;
  }

  CFXTextureDescriptorMakeDefault(v14);
  v4 = v24;
  v5 = v25;
  *&v13[7] = v26;
  v6 = v28;
  *&v13[23] = v27;

  sub_1AF74EBF8(v23);

  v15[0] = Strong;
  v15[1] = v4;
  v15[2] = v5;
  LOBYTE(v16[0]) = 1;
  *(v16 + 1) = *v13;
  v16[1] = *&v13[15];
  v17 = v6;
  v10 = *&v13[15];
  v11 = v16[0];
  v18[0] = Strong;
  v18[1] = v4;
  v18[2] = v5;
  v19 = 1;
  *v20 = *v13;
  *&v20[15] = *&v13[15];
  v21 = v6;
  sub_1AF44222C(v15, v12);
  result = sub_1AF478A6C(v18);
  v9 = v10;
  v8 = v11;
LABEL_7:
  *a1 = Strong;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v6;
  return result;
}

uint64_t sub_1AF74A04C()
{
  MEMORY[0x1B271DEA0](*(v0 + 48), -1, -1);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double destroy for TextureCache.CacheEntry(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 == 2)
  {
    v3 = *a1;

    goto LABEL_6;
  }

  if (v2 == 1)
  {
    if (*(a1 + 64))
    {
      MEMORY[0x1B271E060](a1);
      swift_unknownObjectRelease();
    }

    if (*(a1 + 80) != 1)
    {
      MEMORY[0x1B271E060](a1 + 72);

      swift_unknownObjectRelease();
    }
  }

  else if (!*(a1 + 96))
  {

    v3 = *(a1 + 16);

LABEL_6:
  }

  return result;
}

uint64_t initializeWithCopy for TextureCache.CacheEntry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3 == 2)
  {
    v10 = *a2;
    v11 = *a2;
    *a1 = v10;
    v12 = 2;
LABEL_14:
    *(a1 + 96) = v12;
    return a1;
  }

  if (v3 == 1)
  {
    if (*(a2 + 64))
    {
      v8 = a2;
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = *(v8 + 8);
      *(a1 + 16) = *(v8 + 16);
      *(a1 + 32) = *(v8 + 32);
      *(a1 + 40) = *(v8 + 40);
      v9 = *(v8 + 64);
      *(a1 + 56) = *(v8 + 56);
      *(a1 + 64) = v9;
      swift_unknownObjectRetain();

      a2 = v8;
    }

    else
    {
      v16 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v16;
      *(a1 + 64) = *(a2 + 64);
      v17 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v17;
    }

    if (*(a2 + 80) == 1)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
    }

    else
    {
      v18 = a2;
      swift_unknownObjectWeakCopyInit();
      v19 = *(v18 + 88);
      *(a1 + 80) = *(v18 + 80);
      *(a1 + 88) = v19;
      swift_unknownObjectRetain();
    }

    v12 = 1;
    goto LABEL_14;
  }

  if (*(a2 + 96))
  {
    v13 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v13;
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
  }

  else
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
    *(a1 + 96) = 0;

    v7 = v6;
  }

  return a1;
}

uint64_t assignWithCopy for TextureCache.CacheEntry(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    sub_1AF74A46C(a1);
    v4 = *(a2 + 96);
    if (v4 == 2)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      v10 = 2;
    }

    else
    {
      if (v4 != 1)
      {
        if (*(a2 + 96))
        {
          v11 = *a2;
          v12 = a2[2];
          *(a1 + 16) = a2[1];
          *(a1 + 32) = v12;
          *a1 = v11;
          v13 = a2[3];
          v14 = a2[4];
          v15 = a2[5];
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 64) = v14;
          *(a1 + 80) = v15;
          *(a1 + 48) = v13;
        }

        else
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v5 = *(a2 + 2);
          *(a1 + 16) = v5;
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 96) = 0;

          v6 = v5;
        }

        return a1;
      }

      if (*(a2 + 8))
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        v7 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 40) = v7;
        *(a1 + 64) = *(a2 + 8);
        swift_unknownObjectRetain();
      }

      else
      {
        *a1 = *a2;
        v16 = a2[1];
        v17 = a2[2];
        v18 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v17;
        *(a1 + 48) = v18;
        *(a1 + 16) = v16;
      }

      if (*(a2 + 10) == 1)
      {
        v19 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 72) = v19;
      }

      else
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        swift_unknownObjectRetain();
      }

      v10 = 1;
    }

    *(a1 + 96) = v10;
  }

  return a1;
}

uint64_t initializeWithTake for TextureCache.CacheEntry(uint64_t result, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 64))
    {
      result = swift_unknownObjectWeakTakeInit();
      *(result + 8) = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 40) = *(a2 + 40);
      v3 = *(a2 + 64);
      *(result + 56) = *(a2 + 56);
      *(result + 64) = v3;
    }

    else
    {
      v7 = *(a2 + 48);
      *(result + 32) = *(a2 + 32);
      *(result + 48) = v7;
      *(result + 64) = *(a2 + 64);
      v8 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v8;
    }

    if (*(a2 + 80) == 1)
    {
      *(result + 72) = *(a2 + 72);
      *(result + 88) = *(a2 + 88);
    }

    else
    {
      v9 = result;
      swift_unknownObjectWeakTakeInit();
      result = v9;
      *(v9 + 80) = *(a2 + 80);
    }

    *(result + 96) = 1;
  }

  else
  {
    v4 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v4;
    *(result + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    v6 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v6;
  }

  return result;
}

uint64_t assignWithTake for TextureCache.CacheEntry(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1AF74A46C(a1);
    if (*(a2 + 96) == 1)
    {
      if (*(a2 + 64))
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        v4 = *(a2 + 64);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v4;
      }

      else
      {
        v8 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v8;
        *(a1 + 64) = *(a2 + 64);
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
      }

      if (*(a2 + 80) == 1)
      {
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 80) = *(a2 + 80);
      }

      *(a1 + 96) = 1;
    }

    else
    {
      v5 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v5;
      *(a1 + 96) = *(a2 + 96);
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      v7 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v7;
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.CacheEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureCache.CacheEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

double destroy for TextureCache.CacheEntry.State(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  switch(v2)
  {
    case 2u:
      v3 = *a1;

      goto LABEL_8;
    case 1u:
      if (*(a1 + 64))
      {
        MEMORY[0x1B271E060](a1);
        swift_unknownObjectRelease();
      }

      if (*(a1 + 80) != 1)
      {
        MEMORY[0x1B271E060](a1 + 72);

        swift_unknownObjectRelease();
      }

      break;
    case 0u:

      v3 = *(a1 + 16);

LABEL_8:

      break;
  }

  return result;
}

uint64_t initializeWithCopy for TextureCache.CacheEntry.State(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 96);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v10 = *a2;
    v11 = *a2;
    *a1 = v10;
    v12 = 2;
LABEL_16:
    *(a1 + 96) = v12;
    return a1;
  }

  if (v3 == 1)
  {
    if (a2[8])
    {
      v8 = a2;
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = v8[1];
      *(a1 + 16) = *(v8 + 1);
      *(a1 + 32) = v8[4];
      *(a1 + 40) = *(v8 + 5);
      v9 = v8[8];
      *(a1 + 56) = v8[7];
      *(a1 + 64) = v9;
      swift_unknownObjectRetain();

      a2 = v8;
    }

    else
    {
      v16 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v16;
      *(a1 + 64) = a2[8];
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v17;
    }

    if (a2[10] == 1)
    {
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = a2[11];
    }

    else
    {
      v18 = a2;
      swift_unknownObjectWeakCopyInit();
      v19 = v18[11];
      *(a1 + 80) = v18[10];
      *(a1 + 88) = v19;
      swift_unknownObjectRetain();
    }

    v12 = 1;
    goto LABEL_16;
  }

  if (v3)
  {
    v13 = *(a2 + 5);
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = v13;
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v14;
    v15 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v15;
  }

  else
  {
    v4 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v4;
    v6 = a2[2];
    v5 = a2[3];
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
    *(a1 + 96) = 0;

    v7 = v6;
  }

  return a1;
}

uint64_t assignWithCopy for TextureCache.CacheEntry.State(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        if (*(a1 + 64))
        {
          MEMORY[0x1B271E060](a1);
          swift_unknownObjectRelease();
        }

        if (*(a1 + 80) != 1)
        {
          MEMORY[0x1B271E060](a1 + 72);
          swift_unknownObjectRelease();
        }

        break;
      case 0u:

        break;
    }

    v5 = *(a2 + 96);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v9 = *a2;
      v10 = v9;
      *a1 = v9;
      v11 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        if (v5)
        {
          v12 = *a2;
          v13 = a2[2];
          *(a1 + 16) = a2[1];
          *(a1 + 32) = v13;
          *a1 = v12;
          v14 = a2[3];
          v15 = a2[4];
          v16 = a2[5];
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 64) = v15;
          *(a1 + 80) = v16;
          *(a1 + 48) = v14;
        }

        else
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v6 = *(a2 + 2);
          *(a1 + 16) = v6;
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 96) = 0;

          v7 = v6;
        }

        return a1;
      }

      if (*(a2 + 8))
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        v8 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 40) = v8;
        *(a1 + 64) = *(a2 + 8);
        swift_unknownObjectRetain();
      }

      else
      {
        *a1 = *a2;
        v17 = a2[1];
        v18 = a2[2];
        v19 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v18;
        *(a1 + 48) = v19;
        *(a1 + 16) = v17;
      }

      if (*(a2 + 10) == 1)
      {
        v20 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 72) = v20;
      }

      else
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        swift_unknownObjectRetain();
      }

      v11 = 1;
    }

    *(a1 + 96) = v11;
  }

  return a1;
}

uint64_t initializeWithTake for TextureCache.CacheEntry.State(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2 >= 3)
  {
    v2 = *a2 + 3;
  }

  if (v2 == 2)
  {
    *result = *a2;
    *(result + 96) = 2;
  }

  else if (v2 == 1)
  {
    if (*(a2 + 64))
    {
      v4 = a2;
      result = swift_unknownObjectWeakTakeInit();
      a2 = v4;
      *(result + 8) = *(v4 + 8);
      *(result + 24) = *(v4 + 24);
      *(result + 40) = *(v4 + 40);
      v5 = *(v4 + 64);
      *(result + 56) = *(v4 + 56);
      *(result + 64) = v5;
    }

    else
    {
      v9 = *(a2 + 48);
      *(result + 32) = *(a2 + 32);
      *(result + 48) = v9;
      *(result + 64) = *(a2 + 64);
      v10 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v10;
    }

    if (*(a2 + 80) == 1)
    {
      *(result + 72) = *(a2 + 72);
      *(result + 88) = *(a2 + 88);
    }

    else
    {
      v11 = result;
      v12 = a2;
      swift_unknownObjectWeakTakeInit();
      result = v11;
      *(v11 + 80) = *(v12 + 80);
    }

    *(result + 96) = 1;
  }

  else if (v2)
  {
    v6 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v6;
    *(result + 96) = *(a2 + 96);
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    v8 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v8;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 96) = 0;
  }

  return result;
}

uint64_t assignWithTake for TextureCache.CacheEntry.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        if (*(a1 + 64))
        {
          MEMORY[0x1B271E060](a1);
          swift_unknownObjectRelease();
        }

        if (*(a1 + 80) != 1)
        {
          MEMORY[0x1B271E060](a1 + 72);
          swift_unknownObjectRelease();
        }

        break;
      case 0u:

        break;
    }

    v5 = *(a2 + 96);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      *a1 = *a2;
      v8 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        if (v5)
        {
          v9 = *(a2 + 80);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 80) = v9;
          *(a1 + 96) = *(a2 + 96);
          v10 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v10;
          v11 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v11;
        }

        else
        {
          v6 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v6;
          *(a1 + 96) = 0;
        }

        return a1;
      }

      if (*(a2 + 64))
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        v7 = *(a2 + 64);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v7;
      }

      else
      {
        v12 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v12;
        *(a1 + 64) = *(a2 + 64);
        v13 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v13;
      }

      if (*(a2 + 80) == 1)
      {
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 80) = *(a2 + 80);
      }

      v8 = 1;
    }

    *(a1 + 96) = v8;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.CacheEntry.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextureCache.CacheEntry.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF74AEE8(uint64_t a1)
{
  result = *(a1 + 96);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_1AF74AF04(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

char *sub_1AF74AF40(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v8 = sub_1AFDFC128();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = *(a3 + 24);
    v10 = &v3[v9];
    v11 = &a2[v9];
    v12 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v12;
    *(v10 + 2) = *(v11 + 2);
    *(v10 + 42) = *(v11 + 42);
  }

  return v3;
}

uint64_t sub_1AF74B02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *sub_1AF74B094(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v9[2] = v10[2];
  *(v9 + 42) = *(v10 + 42);
  return a1;
}

_BYTE *sub_1AF74B134(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  v11 = *(v10 + 8);
  v9[24] = v10[24];
  *(v9 + 8) = v11;
  v12 = *(v10 + 42);
  *(v9 + 2) = *(v10 + 2);
  *(v9 + 42) = v12;
  return a1;
}

_BYTE *sub_1AF74B1E4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v9[2] = v10[2];
  *(v9 + 42) = *(v10 + 42);
  return a1;
}

_BYTE *sub_1AF74B284(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v9[24] = v10[24];
  *(v9 + 2) = *(v10 + 2);
  *(v9 + 42) = *(v10 + 42);
  return a1;
}

uint64_t sub_1AF74B36C(uint64_t a1)
{
  MEMORY[0x1B271ACB0](*v1);
  v2 = type metadata accessor for TextureCache.TextureKey(0);
  sub_1AFDFC128();
  sub_1AF74E8CC(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1AFDFCD08();
  v3 = &v1[*(v2 + 24)];
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = v3[24];
  v8 = *(v3 + 4);
  v7 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = *(v3 + 28);
  MEMORY[0x1B271ACB0](*v3);
  if (v6 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v4);
      MEMORY[0x1B271ACB0](v5);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v4);
      MEMORY[0x1B271ACB0](v5);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v10 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v8);
    MEMORY[0x1B271ACB0](v7);
    sub_1AFDFF2A8();
    if ((v10 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v9);
    }
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AF74B51C()
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*v0);
  v1 = type metadata accessor for TextureCache.TextureKey(0);
  sub_1AFDFC128();
  sub_1AF74E8CC(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1AFDFCD08();
  v2 = &v0[*(v1 + 24)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = v2[24];
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 28);
  MEMORY[0x1B271ACB0](*v2);
  if (v5 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v5 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v4);
      goto LABEL_5;
    }

    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v3);
    MEMORY[0x1B271ACB0](v4);
  }

  sub_1AFDFF2A8();
LABEL_5:
  if ((v9 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v7);
    MEMORY[0x1B271ACB0](v6);
    sub_1AFDFF2A8();
    if ((v9 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v8);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF74B6F4(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*v2);
  sub_1AFDFC128();
  sub_1AF74E8CC(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1AFDFCD08();
  v4 = &v2[*(a2 + 24)];
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = v4[24];
  v9 = *(v4 + 4);
  v8 = *(v4 + 5);
  v10 = *(v4 + 6);
  v11 = *(v4 + 28);
  MEMORY[0x1B271ACB0](*v4);
  if (v7 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v7 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v5);
      MEMORY[0x1B271ACB0](v6);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v5);
      MEMORY[0x1B271ACB0](v6);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v11 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v9);
    MEMORY[0x1B271ACB0](v8);
    sub_1AFDFF2A8();
    if ((v11 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v10);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF74B8BC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v3;
  v19 = v4;
  if (sub_1AFDFC0A8())
  {
    v9 = *(a3 + 24);
    v10 = *&a1[v9 + 16];
    v14[0] = *&a1[v9];
    v14[1] = v10;
    v15[0] = *&a1[v9 + 32];
    *(v15 + 10) = *&a1[v9 + 42];
    v11 = &a2[v9];
    v12 = *(v11 + 1);
    v16[0] = *v11;
    v16[1] = v12;
    v17[0] = *(v11 + 2);
    *(v17 + 10) = *(v11 + 42);
    v13 = sub_1AF8FD008(v14, v16);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1AF74B9C0(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock(*(v1 + 48));
  v4 = *(v1 + 64);
  if (*(v4 + 16) && (v5 = sub_1AF449CB8(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(*(v2 + 48));
  return v7;
}

uint64_t sub_1AF74BA30(uint64_t *a1, uint64_t a2)
{
  v38 = a2;
  v44 = a1;
  v2 = type metadata accessor for TextureCache.TextureKey(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1AFDFCA68();
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_1AFDFCB28();
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v41 = (v4 + 104);
  v40 = *MEMORY[0x1E69E7F38];
  v12 = (v4 + 8);
  v14 = (v13 + 8);
  do
  {
    sub_1AF74EA04(v44, &v48);
    if (v51)
    {
      sub_1AF74A46C(&v48);
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v15 = v50;
    sub_1AFDFCB18();
    *v6 = 1000;
    v16 = v43;
    (*v41)(v6, v40, v43);
    MEMORY[0x1B2718560](v8, v6);
    (*v12)(v6, v16);
    v17 = *v14;
    v18 = v42;
    (*v14)(v8, v42);
    sub_1AFDFDA98();
    v17(v11, v18);
    LOBYTE(v16) = sub_1AFDFCA78();

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  while ([*(v45 + 56) operationCount]);
  sub_1AF747F54();
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1AFDFE218();

  v46 = 0xD00000000000001FLL;
  v47 = 0x80000001AFF32AA0;
  sub_1AF74EA04(v44, &v48);
  if (v51)
  {
    sub_1AF74A46C(&v48);
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v22 = v48;
    v21 = v49;

    v20 = v22;
  }

  v23 = v39;
  v24 = v38;
  MEMORY[0x1B2718AE0](v20, v21);

  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF32AC0);
  v26 = v46;
  v25 = v47;
  os_unfair_lock_lock(*(v45 + 48));
  sub_1AF74FBE4(v24, v23, type metadata accessor for TextureCache.TextureKey);
  v27 = sub_1AF6B0ABC(&v48, v23);
  if (*(v28 + 96) == 255)
  {
    (v27)(&v48, 0);
    sub_1AF74EB30(v23, type metadata accessor for TextureCache.TextureKey);
  }

  else
  {
    sub_1AF74EAA4();
    v29 = swift_allocError();
    *v30 = v26;
    v30[1] = v25;

    sub_1AF749D58(v29);
    (v27)(&v48, 0);
    sub_1AF74EB30(v23, type metadata accessor for TextureCache.TextureKey);
  }

  os_unfair_lock_unlock(*(v45 + 48));
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1AFDFE218();

  v48 = 0xD00000000000001CLL;
  v49 = 0x80000001AFF32AE0;
  v46 = v26;
  v47 = v25;
  sub_1AF74EAA4();
  v31 = sub_1AFDFF1D8();
  v33 = v32;

  MEMORY[0x1B2718AE0](v31, v33);

  v35 = v48;
  v34 = v49;
  v36 = sub_1AFDFDA18();
  if (qword_1ED731058 != -1)
  {
    v37 = v36;
    swift_once();
    v36 = v37;
  }

  v48 = 0;
  sub_1AF0D4F18(v36, &v48, v35, v34);
}

uint64_t sub_1AF74C018(unsigned __int8 *a1)
{
  v2 = v1;
  os_unfair_lock_lock(*(v1 + 48));
  v4 = *(v1 + 72);
  if (*(v4 + 16) && (v5 = sub_1AF41A700(a1), (v6 & 1) != 0))
  {
    sub_1AF74EA6C(*(v4 + 56) + 104 * v5, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v14 = -1;
  }

  os_unfair_lock_unlock(*(v2 + 48));
  sub_1AF74E914(v13, v10, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
  if (v11 == 255)
  {
    sub_1AF74E994(v13, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
    v8 = v10;
  }

  else
  {
    sub_1AF446690(v10, v12);
    sub_1AF74EA04(v12, v10);
    v7 = v11;
    sub_1AF74A46C(v10);
    if (!v7)
    {
      sub_1AF74BA30(v12, a1);
    }

    sub_1AF74EA3C(v12);
    v8 = v13;
  }

  return sub_1AF74E994(v8, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
}

uint64_t sub_1AF74C154(uint64_t a1)
{
  v3 = type metadata accessor for TextureCache.TextureKey(0);
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v43 - v7;
  sub_1AF74EED8(0, &qword_1ED725A48, &unk_1ED725A50, MEMORY[0x1E69E6530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = sub_1AF74B9C0(a1);
  if (v14)
  {
    v51 = v13;
    v15 = 0;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v48 = v14;
    v44 = v14 + 72;
    v20 = MEMORY[0x1E69E6530];
    v49 = v1;
    v50 = v5;
    v45 = v10;
    while (1)
    {
      if (v18)
      {
        v21 = v15;
LABEL_13:
        v23 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v24 = v23 | (v21 << 6);
        v25 = v48;
        v26 = v46;
        sub_1AF74FBE4(*(v48 + 48) + *(v47 + 72) * v24, v46, type metadata accessor for TextureCache.TextureKey);
        v27 = *(*(v25 + 56) + 8 * v24);
        sub_1AF74EF30(0, &unk_1ED725A50, v20);
        v29 = v28;
        v30 = v20;
        v31 = *(v28 + 48);
        v32 = v26;
        v10 = v45;
        sub_1AF74E7B0(v32, v45);
        *&v10[v31] = v27;
        (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
        v52 = v21;
      }

      else
      {
        v22 = v19 <= v15 + 1 ? v15 + 1 : v19;
        while (1)
        {
          v21 = v15 + 1;
          if (v15 + 1 >= v19)
          {
            break;
          }

          v18 = *(v44 + 8 * v15++);
          if (v18)
          {
            goto LABEL_13;
          }
        }

        v52 = v22 - 1;
        sub_1AF74EF30(0, &unk_1ED725A50, v20);
        v29 = v40;
        (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
        v18 = 0;
        v30 = v20;
      }

      v33 = v51;
      sub_1AF74EF9C(v10, v51, &qword_1ED725A48, &unk_1ED725A50, v30);
      sub_1AF74EF30(0, &unk_1ED725A50, v30);
      v34 = (*(*(v29 - 8) + 48))(v33, 1, v29);
      v35 = v50;
      if (v34 == 1)
      {
      }

      sub_1AF74E7B0(v33, v50);
      v36 = v49;
      os_unfair_lock_lock(*(v49 + 48));
      v37 = *(v36 + 72);
      if (*(v37 + 16))
      {
        v38 = sub_1AF41A700(v35);
        v20 = v30;
        if (v39)
        {
          sub_1AF74EA6C(*(v37 + 56) + 104 * v38, &v56);
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v62 = -1;
        }
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v62 = -1;
        v20 = v30;
      }

      os_unfair_lock_unlock(*(v36 + 48));
      sub_1AF74E914(&v56, v53, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
      if (v54 == 255)
      {
        sub_1AF74E994(&v56, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
        sub_1AF74EB30(v35, type metadata accessor for TextureCache.TextureKey);
        sub_1AF74E994(v53, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
        v15 = v52;
      }

      else
      {
        sub_1AF446690(v53, v55);
        sub_1AF74EA04(v55, v53);
        if (v54)
        {
          sub_1AF74EA3C(v55);
          sub_1AF74E994(&v56, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
          sub_1AF74EB30(v35, type metadata accessor for TextureCache.TextureKey);
          sub_1AF74A46C(v53);
        }

        else
        {
          sub_1AF74A46C(v53);
          sub_1AF74BA30(v55, v35);
          sub_1AF74EA3C(v55);
          sub_1AF74E994(&v56, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
          sub_1AF74EB30(v35, type metadata accessor for TextureCache.TextureKey);
        }

        v15 = v52;
      }
    }
  }

  else
  {
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v56 = 0xD00000000000002BLL;
    *(&v56 + 1) = 0x80000001AFF32C00;
    v55[0] = a1;
    v42 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v42);

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF74C750(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextureCache.TextureKey(0);
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v48 - v10;
  sub_1AF74EED8(0, &qword_1ED725A48, &unk_1ED725A50, MEMORY[0x1E69E6530]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v48 - v15;
  os_unfair_lock_lock(*(v1 + 48));
  v16 = sub_1AF850E2C(a1);
  v56 = v2;
  os_unfair_lock_unlock(*(v2 + 48));
  if (v16)
  {
    v17 = 0;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;
    v52 = v16;
    v22 = v16 + 72;
    v23 = MEMORY[0x1E69E6530];
    v49 = v8;
    v54 = v13;
    while (1)
    {
      if (v20)
      {
        v24 = v17;
LABEL_15:
        v27 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v28 = v27 | (v24 << 6);
        v29 = v52;
        v30 = v50;
        sub_1AF74FBE4(*(v52 + 48) + *(v51 + 72) * v28, v50, type metadata accessor for TextureCache.TextureKey);
        v31 = *(*(v29 + 56) + 8 * v28);
        sub_1AF74EF30(0, &unk_1ED725A50, v23);
        v33 = v32;
        v34 = *(v32 + 48);
        v35 = v30;
        v36 = v54;
        sub_1AF74E7B0(v35, v54);
        *(v36 + v34) = v31;
        v37 = v36;
        (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
        v8 = v49;
      }

      else
      {
        v25 = v21 <= v17 + 1 ? v17 + 1 : v21;
        v26 = v25 - 1;
        while (1)
        {
          v24 = v17 + 1;
          if (v17 + 1 >= v21)
          {
            break;
          }

          v20 = *(v22 + 8 * v17++);
          if (v20)
          {
            v17 = v24;
            goto LABEL_15;
          }
        }

        v17 = v26;
        sub_1AF74EF30(0, &unk_1ED725A50, v23);
        v33 = v45;
        v37 = v54;
        (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
        v20 = 0;
      }

      v38 = v37;
      v39 = v53;
      sub_1AF74EF9C(v38, v53, &qword_1ED725A48, &unk_1ED725A50, v23);
      sub_1AF74EF30(0, &unk_1ED725A50, v23);
      if ((*(*(v33 - 8) + 48))(v39, 1, v33) == 1)
      {
      }

      v40 = *(v39 + *(v33 + 48));
      sub_1AF74E7B0(v39, v8);
      v41 = v56;
      sub_1AF74C018(v8);
      os_unfair_lock_lock(*(v41 + 48));
      v42 = v55;
      sub_1AF74FBE4(v8, v55, type metadata accessor for TextureCache.TextureKey);
      v43 = sub_1AF6B0ABC(&v57, v42);
      if (*(v44 + 96) != 255)
      {
        sub_1AF749A08(v40);
      }

      (v43)(&v57, 0);
      sub_1AF74EB30(v55, type metadata accessor for TextureCache.TextureKey);
      os_unfair_lock_unlock(*(v56 + 48));
      sub_1AF74EB30(v8, type metadata accessor for TextureCache.TextureKey);
    }
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1AFDFE218();

    v57 = 0xD00000000000002BLL;
    v58 = 0x80000001AFF32C00;
    v59 = a1;
    v47 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v47);

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF74CC88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3;
  v7 = a2;
  v10 = type metadata accessor for TextureCache.TextureKey(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF74CEDC(v4, a1, v7, v6, v27);
  if (!v5)
  {
    if (v27[96] == 255)
    {
      sub_1AF74E994(v27, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
      v16 = 0;
      v17 = xmmword_1AFE74F10;
      v18 = 0uLL;
    }

    else
    {
      sub_1AF446690(v27, v28);
      sub_1AF74EA04(v28, v25);
      v13 = v26;
      sub_1AF74A46C(v25);
      if (v13)
      {
LABEL_7:
        os_unfair_lock_lock(*(v4 + 48));
        sub_1AF74FBE4(a1, v12, type metadata accessor for TextureCache.TextureKey);
        v14 = sub_1AF6B0ABC(v25, v12);
        if (*(v15 + 96) == 255)
        {
          (v14)(v25, 0);
          v23 = 0u;
          v24 = xmmword_1AFE74F10;
          v21 = 0u;
          v22 = 0u;
        }

        else
        {
          sub_1AF7495C8(v29);
          v23 = v29[0];
          v24 = v29[1];
          v21 = v29[3];
          v22 = v29[2];
          (v14)(v25, 0);
        }

        sub_1AF74EB30(v12, type metadata accessor for TextureCache.TextureKey);
        os_unfair_lock_unlock(*(v4 + 48));
        sub_1AF74EA3C(v28);
        v16 = 0;
        v18 = v23;
        v17 = v24;
        v20 = v21;
        v19 = v22;
        goto LABEL_14;
      }

      if (v7 & 1) != 0 && (v6)
      {
        sub_1AF74BA30(v28, a1);
        goto LABEL_7;
      }

      sub_1AF74EA3C(v28);
      v17 = xmmword_1AFE74F10;
      v18 = 0uLL;
      v16 = 1;
    }

    v19 = 0uLL;
    v20 = 0uLL;
LABEL_14:
    *a4 = v18;
    *(a4 + 16) = v17;
    *(a4 + 32) = v19;
    *(a4 + 48) = v20;
    *(a4 + 64) = v16;
  }
}

void sub_1AF74CEDC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v36 = a4;
  v37 = a3;
  v7 = type metadata accessor for TextureCache.TextureKey(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  os_unfair_lock_lock(*(a1 + 48));
  sub_1AF74FBE4(a2, v12, type metadata accessor for TextureCache.TextureKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v34[0] = *(a1 + 72);
  v14 = *&v34[0];
  *(a1 + 72) = 0x8000000000000000;
  v15 = sub_1AF41A700(v12);
  v17 = v16;
  v18 = *(v14 + 16) + ((v16 & 1) == 0);
  if (*(v14 + 24) >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF84A698();
      v14 = *&v34[0];
    }

LABEL_6:
    *(a1 + 72) = v14;

    v21 = *(a1 + 72);
    if ((v17 & 1) == 0)
    {
      memset(v34, 0, sizeof(v34));
      v35 = 3;
      sub_1AF74FBE4(v12, v9, type metadata accessor for TextureCache.TextureKey);
      sub_1AF843900(v15, v9, v34, v21);
    }

    v22 = v21[7] + 104 * v15;
    v23 = sub_1AFDFC0C8();
    v24 = v37;
    v26 = sub_1AF749250(v23, v25, v37 & 1);

    if (v26)
    {
      sub_1AF74EA6C(v22, v33);
      sub_1AF74EB30(v12, type metadata accessor for TextureCache.TextureKey);
LABEL_16:
      os_unfair_lock_unlock(*(a1 + 48));
      return;
    }

    if (v24)
    {
      v27 = sub_1AFDFC0C8();
      v29 = v28;
      v30 = dispatch_group_create();
      dispatch_group_enter(v30);
      v31 = (v36 & 1) == 0;
      sub_1AF74A46C(v22);
      *v22 = v27;
      *(v22 + 8) = v29;
      *(v22 + 16) = v30;
      *(v22 + 24) = v31;
      *(v22 + 96) = 0;
      sub_1AF74EB30(v12, type metadata accessor for TextureCache.TextureKey);
    }

    else
    {
      sub_1AF74EA04(v22, v34);
      if (v35 == 2)
      {
        swift_willThrow();
        sub_1AF74EB30(v12, type metadata accessor for TextureCache.TextureKey);
        goto LABEL_16;
      }

      sub_1AF74EB30(v12, type metadata accessor for TextureCache.TextureKey);
      sub_1AF74A46C(v34);
    }

    v32 = v33;
    *(v33 + 64) = 0u;
    *(v32 + 80) = 0u;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 96) = -1;
    goto LABEL_16;
  }

  sub_1AF8376F4(v18, isUniquelyReferenced_nonNull_native);
  v14 = *&v34[0];
  v19 = sub_1AF41A700(v12);
  if ((v17 & 1) == (v20 & 1))
  {
    v15 = v19;
    goto LABEL_6;
  }

  sub_1AFDFF1A8();
  __break(1u);
}

void sub_1AF74D21C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TextureCache.TextureKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(*(v3 + 48));
  sub_1AF74FBE4(a2, v8, type metadata accessor for TextureCache.TextureKey);
  v10 = sub_1AF6B0ABC(v24, v8);
  if (*(v9 + 96) == 255)
  {
    (v10)(v24, 0);
  }

  else
  {
    v11 = v9;
    sub_1AF74EA04(v9, &v19);
    if (v23)
    {
      sub_1AF74A46C(&v19);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v18 = v19;
      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32B40);
      v12 = *(a1 + 1);
      v19 = *a1;
      v20 = v12;
      v13 = *(a1 + 3);
      v21 = *(a1 + 2);
      v22 = v13;
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF32B60);
      sub_1AFDFE458();
      v14 = v18;
      v15 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v17 = v15;
        swift_once();
        v15 = v17;
      }

      *&v19 = 0;
      sub_1AF0D4F18(v15, &v19, v14, *(&v14 + 1));
    }

    else
    {
      v16 = v20;
      sub_1AF74ECA0(a1, &v19);
      sub_1AF749C44(a1, *(&v16 + 1), &v19);
      v23 = 1;
      sub_1AF74ECD8(&v19, v11);
      dispatch_group_leave(v16);
    }

    (v10)(v24, 0);
  }

  sub_1AF74EB30(v8, type metadata accessor for TextureCache.TextureKey);
  os_unfair_lock_unlock(*(v3 + 48));
}

uint64_t sub_1AF74D574@<X0>(char a1@<W0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unsigned int a6@<W6>, _OWORD *a7@<X8>)
{
  v77 = a6;
  v79 = a5;
  *&v81 = a4;
  *&v80 = a3;
  v73 = a7;
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextureCache.TextureKey(0);
  v69 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v68 - v17;
  v71 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v68 - v20;
  sub_1AFDFBF98();
  v21 = *a2;
  v78 = v7;
  if ((a1 & 1) == 0)
  {
    v22 = v21 & 0x9C;
    goto LABEL_5;
  }

  if ((v21 & 0x100) == 0)
  {
    v22 = v21 & 0xFC;
LABEL_5:
    v74 = *(a2 + 1);
    v23 = *(a2 + 24);
    v75 = *(a2 + 2);
    v24 = a2[6];
    v25 = *(a2 + 28);
    goto LABEL_7;
  }

  v24 = 0;
  v22 = v21 & 0x104;
  v75 = 0u;
  v25 = 768;
  v23 = -2;
  v74 = 0u;
LABEL_7:
  v26 = a1 & 1;
  v27 = v90;
  *v90 = v26;
  (*(v11 + 32))(&v27[*(v14 + 20)], v13, v10);
  v28 = &v27[*(v14 + 24)];
  *v28 = v22;
  *(v28 + 8) = v74;
  v28[24] = v23;
  *(v28 + 25) = v89[0];
  *(v28 + 7) = *(v89 + 3);
  *(v28 + 2) = v75;
  *(v28 + 6) = v24;
  *(v28 + 28) = v25;
  v29 = v77;
  v30 = v81;
  v31 = v80;
  v32 = v79;
  v34 = v77 != 2 || (v81 | v80 | v79) != 0;
  v35 = v78;
  v36 = v76;
  sub_1AF74CC88(v27, v34, v77 != 1, &aBlock);
  if (v36)
  {
    return sub_1AF74EB30(v27, type metadata accessor for TextureCache.TextureKey);
  }

  if (*(&v84 + 1) >> 1 != 0xFFFFFFFFLL || v86 >> 24)
  {
    v75 = v86;
    v76 = v85;
    v80 = aBlock;
    v81 = v84;
    goto LABEL_48;
  }

  v38 = v87;
  if (v29 != 1)
  {
    if ((v87 & 1) == 0)
    {
      if (!v29)
      {
LABEL_41:
        LODWORD(v76) = v29;
        swift_unownedRetainStrong();
        sub_1AF74E798(v31, v30, v32, v29);
        sub_1AF74E798(v31, v30, v32, v29);
        swift_unownedRetain();
        swift_unownedRetain();

        v49 = v31;
        v27 = v90;
        v50 = v70;
        sub_1AF74FBE4(v90, v70, type metadata accessor for TextureCache.TextureKey);
        v51 = v72;
        sub_1AF74FBE4(v50, v72, type metadata accessor for TextureCache.TextureKey);
        v52 = (*(v69 + 80) + 40) & ~*(v69 + 80);
        v53 = swift_allocObject();
        v53[2] = v49;
        v53[3] = v30;
        v53[4] = v35;
        *&v74 = v53;
        sub_1AF74E7B0(v50, v53 + v52);
        if (v76 != 1)
        {
          v67 = v79;
          sub_1AF74E798(v49, v30, v79, v29);
          swift_unownedRetain();
          sub_1AF74DFB4(v49, v30, v35, v51, v88);
          v81 = v88[1];
          v80 = v88[0];
          v75 = v88[3];
          v76 = v88[2];
          swift_unownedRelease();
          sub_1AF74E888(v49, v30, v67, v29);

          sub_1AF74E888(v49, v30, v67, v29);
          swift_unownedRelease();
          sub_1AF74EB30(v51, type metadata accessor for TextureCache.TextureKey);
          goto LABEL_48;
        }

        swift_unownedRetain();
        sub_1AF74EB30(v51, type metadata accessor for TextureCache.TextureKey);
        swift_unownedRelease();
        v54 = *(v35 + 56);
        v55 = swift_allocObject();
        v56 = v74;
        *(v55 + 16) = sub_1AF74E814;
        *(v55 + 24) = v56;
        v57 = qword_1ED730EA0;
        v58 = v54;

        if (v57 != -1)
        {
          swift_once();
        }

        v59 = v79;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v60 = qword_1ED73B8A0;
        v61 = swift_allocObject();
        *(v61 + 16) = sub_1AF74E8A0;
        *(v61 + 24) = v55;
        v62 = swift_allocObject();
        v62[2] = v60;
        v62[3] = sub_1AF6FC894;
        v62[4] = v61;
        *&v85 = sub_1AF74E8A8;
        *(&v85 + 1) = v62;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v84 = sub_1AFCDA044;
        *(&v84 + 1) = &unk_1F24E5FD8;
        v63 = _Block_copy(&aBlock);
        swift_retain_n();

        [v58 addOperationWithBlock_];
        _Block_release(v63);

        swift_unownedRelease();
        sub_1AF74E888(v80, v81, v59, v29);
      }

LABEL_47:
      v81 = xmmword_1AFE74F10;
      v80 = 0u;
      v76 = 0u;
      v75 = 0u;
      v27 = v90;
      goto LABEL_48;
    }

    v27 = v90;
    if (!v29)
    {
      sub_1AF74C018(v90);
      sub_1AF74CC88(v27, 0, 1, &aBlock);
      v81 = v84;
      v80 = aBlock;
      v75 = v86;
      v76 = v85;
      result = sub_1AF74EB30(v27, type metadata accessor for TextureCache.TextureKey);
LABEL_49:
      v64 = v73;
      v65 = v81;
      *v73 = v80;
      v64[1] = v65;
      v66 = v75;
      v64[2] = v76;
      v64[3] = v66;
      return result;
    }

    v81 = xmmword_1AFE74F10;
    v80 = 0u;
    v76 = 0u;
    v75 = 0u;
LABEL_48:
    result = sub_1AF74EB30(v27, type metadata accessor for TextureCache.TextureKey);
    goto LABEL_49;
  }

  os_unfair_lock_lock(*(v35 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = *(v35 + 64);
  v40 = aBlock;
  *(v35 + 64) = 0x8000000000000000;
  v42 = sub_1AF449CB8(v32);
  v43 = v41;
  v44 = *(v40 + 16) + ((v41 & 1) == 0);
  if (*(v40 + 24) >= v44)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v81;
      if (v41)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1AF84A674();
      v30 = v81;
      if (v43)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    v47 = 0;
LABEL_34:
    v82 = v47;
    sub_1AF7490D8(v90);
    v48 = aBlock;
    if (v82)
    {
      if (v43)
      {
        *(*(aBlock + 56) + 8 * v42) = v82;
      }

      else
      {
        sub_1AF843558(v42, v32, v82, aBlock);
      }
    }

    else if (v43)
    {
      sub_1AF6B2F08(v42, aBlock);
    }

    *(v35 + 64) = v48;
    os_unfair_lock_unlock(*(v35 + 48));
    v31 = v80;
    if ((v38 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

  sub_1AF837488(v44, isUniquelyReferenced_nonNull_native);
  v45 = sub_1AF449CB8(v32);
  if ((v43 & 1) == (v46 & 1))
  {
    v42 = v45;
    v30 = v81;
    if ((v43 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_28:
    v47 = *(*(aBlock + 56) + 8 * v42);
    goto LABEL_34;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF74DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v28 = a5;
  v29 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for TextureCache.TextureKey(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0uLL;
  *&v47 = 0;
  *(&v47 + 1) = 0x1FFFFFFFELL;
  v48 = 0u;
  v49 = 0u;
  v45 = 0;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2] = &v46;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = &v45;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1AF74EC94;
  *(v13 + 24) = v12;
  *&v43 = sub_1AF464154;
  *(&v43 + 1) = v13;
  *&v41 = MEMORY[0x1E69E9820];
  *(&v41 + 1) = 1107296256;
  *&v42 = sub_1AF6F662C;
  *(&v42 + 1) = &unk_1F2539990;
  v14 = _Block_copy(&v41);

  *&v41 = 0;
  LODWORD(v11) = [v11 performBlockThrowingExceptionsAsErrors:v14 error:&v41];
  _Block_release(v14);
  v15 = v41;
  swift_isEscapingClosureAtFileLocation();

  if (!v11)
  {
    sub_1AFDFBF58();

    swift_willThrow();
LABEL_8:

    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    sub_1AF74E994(&v41, &unk_1ED725A60, &type metadata for TextureCache.Texture);
  }

  v16 = *(&v47 + 1);
  v37 = v47;
  v35 = v48;
  v36 = v46;
  v17 = v49;
  v38 = v48;
  v39 = v46;
  v40 = v47;
  if (*(&v47 + 1) >> 1 == 0xFFFFFFFFLL && !(v49 >> 24))
  {
    swift_unownedRetainStrong();
    v18 = v45;
    v19 = *(a3 + 48);
    v20 = v45;
    os_unfair_lock_lock(v19);
    sub_1AF74FBE4(v29, v10, type metadata accessor for TextureCache.TextureKey);
    v21 = sub_1AF6B0ABC(&v41, v10);
    if (*(v22 + 96) != 255)
    {
      sub_1AF749D58(v18);
    }

    (v21)(&v41, 0);
    sub_1AF74EB30(v10, type metadata accessor for TextureCache.TextureKey);
    os_unfair_lock_unlock(*(a3 + 48));

    v23 = v45;
    swift_willThrow();
    v24 = v23;
    goto LABEL_8;
  }

  v50[0] = v46;
  v50[1] = v47;
  v50[2] = v48;
  v50[3] = v49;
  swift_unownedRetainStrong();
  v30 = v36;
  v31 = v37;
  v32 = v16;
  v33 = v35;
  v34 = v17;
  sub_1AF74ECA0(&v30, &v41);
  sub_1AF74D21C(v50, v29);

  v41 = v46;
  v42 = v47;
  v43 = v48;
  v44 = v49;
  sub_1AF74E994(&v41, &unk_1ED725A60, &type metadata for TextureCache.Texture);

  v26 = v38;
  v27 = v28;
  *v28 = v39;
  *(v27 + 2) = v40;
  *(v27 + 3) = v16;
  v27[2] = v26;
  v27[3] = v17;
  return result;
}

uint64_t sub_1AF74E3F4(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v9);
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v5 = v9[1];
  *a1 = v9[0];
  a1[1] = v5;
  v6 = v9[3];
  a1[2] = v9[2];
  a1[3] = v6;
  return sub_1AF74E994(v8, &unk_1ED725A60, &type metadata for TextureCache.Texture);
}

BOOL sub_1AF74E4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF74EF30(0, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1AF74FBE4(a1, &v20 - v14, type metadata accessor for TextureCache.TextureKey);
  sub_1AF74EA6C(a2, &v15[*(v10 + 56)]);
  sub_1AF74F00C(v15, v12);
  v16 = *(v10 + 56);
  v17 = type metadata accessor for TextureCache.TextureKey(0);
  (*(v6 + 16))(v8, &v12[*(v17 + 20)], v5);
  sub_1AF74EB30(v12, type metadata accessor for TextureCache.TextureKey);
  sub_1AF74E8CC(&qword_1EB6327A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v18 = sub_1AFDFCE58();
  (*(v6 + 8))(v8, v5);
  sub_1AF74F080(v15);
  sub_1AF74EA3C(&v12[v16]);
  return (v18 & 1) == 0;
}

void sub_1AF74E6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(*(*(a2 + 120) + 48));

  v8 = sub_1AF6B0BE0(v9, a3, a4);
  if (*(v7 + 56))
  {
    *(v7 + 24) = 1;
  }

  (v8)(v9, 0);

  os_unfair_lock_unlock(*(*(a2 + 120) + 48));
}

uint64_t sub_1AF74E798(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AF74E7B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextureCache.TextureKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF74E888(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AF74E8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF74E8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF74E914(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF74FCC4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF74E994(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF74FCC4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF74EAA4()
{
  result = qword_1EB63E188;
  if (!qword_1EB63E188)
  {
    result = swift_getWitnessTable(aN_4, &type metadata for TextureCache.TimeoutError, v0, v1);
    atomic_store(result, &qword_1EB63E188);
  }

  return result;
}

uint64_t sub_1AF74EB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF74EC28(uint64_t a1)
{
  MEMORY[0x1B271E060]();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_1AF74ED10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF74FCC4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF74ED90(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  swift_unknownObjectRetain();
  return a2;
}

uint64_t sub_1AF74EDD0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t sub_1AF74EE44(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 64) = *(a1 + 64);
  return a2;
}

void sub_1AF74EED8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF74EF30(255, a3, a4);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF74EF30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for TextureCache.TextureKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AF74EF9C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AF74EED8(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AF74F00C(uint64_t a1, uint64_t a2)
{
  sub_1AF74EF30(0, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF74F080(uint64_t a1)
{
  sub_1AF74EF30(0, &unk_1EB63E1A0, &type metadata for TextureCache.CacheEntry);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF74F0EC(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  [a1 setTexture:a2 atIndex:0];
  v6 = [a2 textureType];
  if (v6 == 7)
  {
    return sub_1AF6F4874(a3, a2, 0);
  }

  if (v6 == 2)
  {
    return sub_1AF6F448C(a3, a2, 0);
  }

  if (!v6)
  {
    return sub_1AF6F47F4(a3, a2, 0);
  }

  sub_1AF74FCC4(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32CD0);
  [a2 textureType];
  type metadata accessor for MTLTextureType(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_1AFDFF258();
}

void sub_1AF74F2D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = 0uLL;
  if (!a2)
  {
    v58 = 0;
    v59 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
LABEL_22:
    *a6 = v7;
    *(a6 + 16) = v59;
    *(a6 + 32) = v60;
    *(a6 + 48) = v61;
    *(a6 + 64) = v58;
    return;
  }

  v13 = *(a2 + 120);
  v14 = *(v13 + 48);

  os_unfair_lock_lock(v14);
  v15 = *(v13 + 88);
  if (*(v15 + 16))
  {
    v16 = sub_1AF41A680(a3, a4);
    if (v17)
    {
      v18 = *(v15 + 56) + 72 * v16;
      v96 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 64);
      v97 = *(v18 + 16);
      v98 = v20;
      v100 = v21;
      v99 = v19;
      if (a5)
      {
        sub_1AF74FBE4(&v96, &aBlock, sub_1AF4464AC);
LABEL_21:
        v70 = v97;
        v72 = v96;
        v66 = v99;
        v68 = v98;
        v58 = v100;
        os_unfair_lock_unlock(*(v13 + 48));

        v61 = v66;
        v60 = v68;
        v59 = v70;
        v7 = v72;
        goto LABEL_22;
      }

      sub_1AF74FBE4(&v96, &aBlock, sub_1AF4464AC);
      sub_1AF74FBE4(&v96, &aBlock, sub_1AF4464AC);
      swift_unknownObjectRelease();
      sub_1AF478A6C(&v96);
      if (BYTE8(v97) == 1)
      {
        goto LABEL_21;
      }

      sub_1AF74EB30(&v96, sub_1AF4464AC);
      os_unfair_lock_unlock(*(v13 + 48));

      goto LABEL_19;
    }
  }

  os_unfair_lock_unlock(*(v13 + 48));
  v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v71 = a3;
  v23 = sub_1AFA32924(a3, a4);
  v24 = a4;
  v25 = v23;
  v27 = v26;
  sub_1AFDFF308();
  v28 = v22;

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v29 = sub_1AFDFF2E8();
  *&v103 = v25;
  *(&v103 + 1) = v27;
  v104 = 0;
  v105 = 0;
  v106 = MEMORY[0x1E69E7CC0];
  v107 = v29;
  v30 = sub_1AF73BD84(&v103, 0, 0, v22);
  v32 = v31;

  v64 = v28;

  v69 = v30;
  if (v30)
  {
    v33 = 7;
    if (v24 == 2)
    {
      v33 = 2;
    }

    v34 = v24 == 1 ? 0 : v33;
    v35 = *(a2 + 16);
    CFXTextureDescriptorMakeDefault(&v101);
    sub_1AF466BDC(v34, &v101);
    sub_1AF48F3E0(&v101);
    sub_1AF74FBC0(&v101);
    sub_1AF74FBCC(&v101);
    sub_1AF74FBD8(&v101);
    sub_1AF48F3EC(&v101);
    sub_1AF4674BC(&v101);
    sub_1AF48F3F8(&v101);
    sub_1AF4674D0(&v101);
    sub_1AF5C44E0(&v101);
    v96 = v101;
    *&v97 = v102;
    v36 = CFXGPUDeviceCreateTexture(v35, &v96);

    if (v36)
    {
      v67 = a6;
      sub_1AFA32924(v71, v24);
      v37 = sub_1AFDFCEC8();

      [v36 setLabel_];

      v65 = a2;
      type metadata accessor for CommandBufferHelper();
      swift_allocObject();
      v38 = swift_unknownObjectRetain();
      v39 = sub_1AF0D82B4(v38, 0xD000000000000013, 0x80000001AFF32CB0);
      swift_unknownObjectRelease();
      v63 = v24;
      v40 = sub_1AF6F4158();
      swift_unknownObjectRetain();
      v41 = sub_1AFDFCEC8();
      [v40 pushDebugGroup_];

      sub_1AF6F3BD8(v42, v43);
      sub_1AF74F0EC(v40, v36, v69);
      swift_unknownObjectRelease();
      [v40 popDebugGroup];
      swift_unknownObjectRelease();
      CFXTextureDescriptorMakeDefault(&v90);
      *(v87 + 7) = v90;
      *(&v87[1] + 7) = v91;
      *v89 = 0;
      v88 = 0uLL;
      v89[8] = 0;
      *&v89[9] = v87[0];
      *&v89[24] = *(v87 + 15);
      *&v89[40] = MEMORY[0x1E69E7CC0];
      v44 = v35;
      sub_1AF8DBA78(v39, v44, v36, &v88, 0, 0);

      v95 = *&v89[32];
      v92 = v88;
      v93 = *v89;
      v94 = *&v89[16];
      v99 = *&v89[32];
      v96 = v88;
      v97 = *v89;
      v98 = *&v89[16];
      v100 = v36;
      v45 = *(v13 + 48);
      swift_unknownObjectRetain();
      sub_1AF44222C(&v92, &aBlock);
      os_unfair_lock_lock(v45);
      v62 = v92;
      v46 = v93;
      LOWORD(v37) = v95;
      LOBYTE(v40) = BYTE2(v95);
      v47 = *(&v95 + 1);
      v48 = BYTE8(v93) & 1;
      v49 = *(&v94 + 4);
      v50 = HIDWORD(v94);
      v51 = v94;
      sub_1AF74FBE4(&v96, &aBlock, sub_1AF74FC4C);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v13 + 88);
      v82 = v36;
      *&aBlock = v53;
      *(v13 + 88) = 0x8000000000000000;
      v73 = v62;
      v74 = v46;
      v75 = v48;
      v76 = v51;
      v77 = v49;
      v78 = v50;
      v80 = v40;
      v79 = v37;
      v81 = v47;
      sub_1AF856AB4(&v73, v71, v63, isUniquelyReferenced_nonNull_native);
      *(v13 + 88) = aBlock;
      os_unfair_lock_unlock(*(v13 + 48));
      v54 = *(v39 + 16);
      if (v54 && (v55 = swift_allocObject(), *(v55 + 16) = v65, *(v55 + 24) = v71, *(v55 + 32) = v63, *&v85 = sub_1AF74FCB4, *(&v85 + 1) = v55, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v84 = sub_1AF719CC4, *(&v84 + 1) = &unk_1F25399E0, v56 = _Block_copy(&aBlock), , swift_unknownObjectRetain(), , [v54 addCompletedHandler_], swift_unknownObjectRelease(), _Block_release(v56), (v57 = *(v39 + 16)) != 0))
      {
        swift_unknownObjectRetain();
        [v57 commit];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1AF74EB30(&v96, sub_1AF74FC4C);
        swift_unknownObjectRelease();
        aBlock = v88;
        v84 = *v89;
        v85 = *&v89[16];
        v86 = *&v89[32];
        sub_1AF478A6C(&aBlock);
        *(v39 + 16) = 0;

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_1AF74EB30(&v96, sub_1AF74FC4C);
        swift_unknownObjectRelease();
        aBlock = v88;
        v84 = *v89;
        v85 = *&v89[16];
        v86 = *&v89[32];
        sub_1AF478A6C(&aBlock);
      }

      a6 = v67;
LABEL_19:
      v58 = 0;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v7 = 0uLL;
      goto LABEL_22;
    }
  }

  sub_1AFDFE518();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1AF74FBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF74FC4C(uint64_t a1)
{
  if (!qword_1EB631BB0)
  {
    sub_1AF6B7338();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB631BB0);
    }
  }
}

void sub_1AF74FCC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF74FD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a7 < 0)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    swift_unknownObjectRetain();
  }
}

double sub_1AF74FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a7 < 0)
  {
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t *initializeWithCopy for TextureCache.Texture(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  sub_1AF74FD14(*a2, v4, v5, v6, v7, v8, v9, v10);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  return a1;
}

uint64_t *assignWithCopy for TextureCache.Texture(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  sub_1AF74FD14(*a2, v4, v5, v6, v7, v8, v9, v10);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  sub_1AF74FD78(v11, v12, v13, v14, v15, v16, v17, v18);
  return a1;
}

uint64_t *assignWithTake for TextureCache.Texture(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v11;
  v12 = a2[3];
  *(a1 + 2) = a2[2];
  *(a1 + 3) = v12;
  sub_1AF74FD78(v3, v5, v4, v6, v7, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.Texture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for TextureCache.Texture(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF750008(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0xFFFFFFLL | (a2 << 63);
  *(result + 24) &= 1uLL;
  *(result + 48) = v2;
  return result;
}

double destroy for TextureCache.WeakStorage.GPU(uint64_t a1)
{
  MEMORY[0x1B271E060]();

  swift_unknownObjectRelease();
  return result;
}

uint64_t initializeWithCopy for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

__n128 initializeWithTake for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

uint64_t assignWithTake for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.WeakStorage.GPU(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TextureCache.WeakStorage.GPU(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t destroy for TextureCache.WeakStorage.CPU(uint64_t a1)
{
  MEMORY[0x1B271E060]();
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

__n128 initializeWithTake for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(v3 + 40) = result;
  v5 = *(a2 + 64);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 64) = v5;
  return result;
}

uint64_t assignWithTake for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.WeakStorage.CPU(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureCache.WeakStorage.CPU(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for TextureCache.WeakStorage(void *a1)
{
  if (a1[8])
  {
    MEMORY[0x1B271E060](a1);
    swift_unknownObjectRelease();
  }

  if (a1[10] != 1)
  {
    MEMORY[0x1B271E060](a1 + 9);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t initializeWithCopy for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v4;
    swift_unknownObjectRetain();
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  if (*(a2 + 80) == 1)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    swift_unknownObjectWeakCopyInit();
    v7 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v7;
    swift_unknownObjectRetain();
  }

  return a1;
}

uint64_t assignWithCopy for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      swift_unknownObjectWeakCopyAssign();
      *(a1 + 8) = *(a2 + 8);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 42) = *(a2 + 42);
      *(a1 + 43) = *(a2 + 43);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      v5 = *(a2 + 56);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 56) = v5;
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      sub_1AF74EBF8(a1);
      *a1 = *a2;
      v8 = *(a2 + 32);
      v7 = *(a2 + 48);
      v9 = *(a2 + 16);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v8;
      *(a1 + 48) = v7;
      *(a1 + 16) = v9;
    }
  }

  else if (v4)
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
    *(a1 + 64) = *(a2 + 64);
    swift_unknownObjectRetain();
  }

  else
  {
    *a1 = *a2;
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v11;
    *(a1 + 48) = v12;
    *(a1 + 16) = v10;
  }

  v13 = *(a2 + 80);
  if (*(a1 + 80) == 1)
  {
    if (v13 == 1)
    {
      v14 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v14;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      swift_unknownObjectRetain();
    }
  }

  else if (v13 == 1)
  {
    sub_1AF74EC28(a1 + 72);
    v15 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v15;
  }

  else
  {
    swift_unknownObjectWeakCopyAssign();
    *(a1 + 80) = *(a2 + 80);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 88) = *(a2 + 88);
  }

  return a1;
}

uint64_t initializeWithTake for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v4;
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  if (*(a2 + 80) == 1)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t assignWithTake for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 8) = *(a2 + 8);
      swift_unknownObjectRelease();
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 52) = *(a2 + 52);
      v5 = *(a2 + 56);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 56) = v5;
      *(a1 + 64) = *(a2 + 64);

      goto LABEL_8;
    }

    sub_1AF74EBF8(a1);
  }

  else if (v4)
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v6;
    goto LABEL_8;
  }

  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
LABEL_8:
  v9 = *(a2 + 80);
  if (*(a1 + 80) != 1)
  {
    if (v9 != 1)
    {
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 80) = *(a2 + 80);
      swift_unknownObjectRelease();
      *(a1 + 88) = *(a2 + 88);
      return a1;
    }

    sub_1AF74EC28(a1 + 72);
    goto LABEL_13;
  }

  if (v9 == 1)
  {
LABEL_13:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

  swift_unknownObjectWeakTakeInit();
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.WeakStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for TextureCache.WeakStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void destroy for TextureCache.CacheEntry.Loading(uint64_t a1)
{

  v2 = *(a1 + 16);
}

void *initializeWithCopy for TextureCache.CacheEntry.Loading(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v5 = a2[2];
  v4 = a2[3];
  a1[2] = v5;
  a1[3] = v4;

  v6 = v5;
  return a1;
}

void *assignWithCopy for TextureCache.CacheEntry.Loading(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a1[2];
  a1[2] = v4;
  v6 = v4;

  a1[3] = a2[3];
  return a1;
}

void *assignWithTake for TextureCache.CacheEntry.Loading(void *a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  a1[3] = *(a2 + 24);
  return a1;
}

unint64_t sub_1AF750CAC()
{
  result = qword_1EB63E1B0;
  if (!qword_1EB63E1B0)
  {
    result = swift_getWitnessTable(asc_1AFE75120, &type metadata for TextureCache.StorageKind, v0, v1);
    atomic_store(result, &qword_1EB63E1B0);
  }

  return result;
}

id *sub_1AF750D14()
{
  if (*(*(v0 + 32) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 32);
    *(v0 + 32) = 0x8000000000000000;
    sub_1AF750FA0(0);
    sub_1AFDFE4B8();
    *(v0 + 32) = v3;
  }

  v1 = *(v0 + 16);

  return CFXTextureAllocatorPerFrameNextFrame(v1);
}

uint64_t sub_1AF750DA4()
{

  return swift_deallocClassInstance();
}

void *sub_1AF750DEC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, char a6, char a7)
{
  v8 = v7;
  v15 = *(v7 + 32);
  if (*(v15 + 16) && (v17 = sub_1AF419914(a1, a2), (v18 & 1) != 0) && (a7 & 1) != 0)
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    if (a6)
    {
      swift_unknownObjectRetain();
      return v19;
    }

    v20 = swift_unknownObjectRetain();
    if (sub_1AF8DAAD0(v20, a3, a4, a5 & 0xFFFFFF))
    {
      return v19;
    }

    swift_unknownObjectRelease();
  }

  else if (a6)
  {
    return 0;
  }

  v21 = *(v8 + 16);
  v26[0] = a3;
  v26[1] = a4;
  v28 = BYTE2(a5);
  v27 = a5;
  v22 = CFXTextureAllocatorPerFrameAllocate(v21, v26);
  if (v22)
  {
    v19 = v22;
    v23 = sub_1AFDFCEC8();
    [v19 setLabel_];

    v24 = swift_unknownObjectRetain();
    sub_1AF824548(v24, a1, a2);
    return v19;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF750FA0(uint64_t a1)
{
  if (!qword_1EB632920)
  {
    sub_1AF6B7338();
    v1 = sub_1AFDFE4C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB632920);
    }
  }
}

uint64_t sub_1AF75114C()
{
  v1 = v0;
  v2 = sub_1AFDFC298();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  sub_1AF751F30(0, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = v5;
    sub_1AF0D4AFC(v17);
    sub_1AF751DDC(v1 + OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate, v14, v19);
    v20 = *(v3 + 48);
    if (v20(v14, 1, v2) == 1)
    {
      sub_1AF747ED0(v17);

      v21 = v14;
    }

    else
    {
      v22 = *(v3 + 32);
      v30 = v8;
      v23 = v22;
      v24 = v22();
      sub_1AF751DDC(v17, v11, v24);
      if (v20(v11, 1, v2) == 1)
      {

        (*(v3 + 8))(v30, v2);
        sub_1AF747ED0(v17);
        v21 = v11;
      }

      else
      {
        v25 = v31;
        (v23)(v31, v11, v2);
        v26 = v30;
        if (sub_1AFDFC268())
        {
          v27 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1AF66D948(sub_1AF751E70, v27);

          v28 = *(v3 + 8);
          v28(v25, v2);
          v28(v26, v2);
          sub_1AF747ED0(v17);
        }

        v29 = *(v3 + 8);
        v29(v25, v2);
        v29(v26, v2);
        v21 = v17;
      }
    }

    return sub_1AF747ED0(v21);
  }

  return result;
}

void sub_1AF7514F4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v4 = v2;
      if (v15[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_shouldReplicate])
      {
        v5 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
        if (v5)
        {
          v6 = *(v5 + 80);
          swift_unknownObjectWeakLoadStrong();
          v5 = *(v5 + 56);
        }

        else
        {
          v6 = 0;
        }

        swift_unknownObjectUnownedInit();
        v16[0] = v4;
        v16[2] = v5;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v17 = v6;
        sub_1AF6C8780(*&v15[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity]);
        sub_1AF579490(v16);
        if (v6)
        {
          v7 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v7 ^ 1);
        }
      }

      else
      {
        sub_1AF678B44(*&v15[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity], v3);
      }

      v8 = swift_weakLoadStrong();
      if (v8)
      {
        v9 = *(v8 + 120);

        v10 = &v15[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_url];
        os_unfair_lock_lock(*(v9 + 48));
        v11 = *(v9 + 72);
        MEMORY[0x1EEE9AC00](v12);
        v14[2] = v10;

        v13 = sub_1AF8FA484(sub_1AF751E78, v14, v11);

        *(v9 + 72) = v13;

        os_unfair_lock_unlock(*(v9 + 48));
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1AF75186C()
{
  v0 = sub_1AFDFCA88();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AFDFCAC8();
  v4 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF615168();
  v7 = sub_1AFDFDB08();
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1AF751E98;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F24E6000;
  v9 = _Block_copy(aBlock);

  sub_1AFDFCAA8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AF751ED8();
  sub_1AF751F30(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1AF6FD510();
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v6, v3, v9);
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v14);

  v10 = v13;

  return v10;
}

uint64_t sub_1AF751B40(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    [objc_opt_self() *a3];
  }
}

uint64_t sub_1AF751C1C()
{
  sub_1AF75186C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for URLWatcher.Presenter(uint64_t a1)
{
  result = qword_1EB63E258;
  if (!qword_1EB63E258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF751CC8(uint64_t a1)
{
  sub_1AFDFC128();
  if (v1 <= 0x3F)
  {
    sub_1AF751F30(319, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1AF751DDC(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AF751F30(0, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF751EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AF751ED8()
{
  result = qword_1ED72F9D0;
  if (!qword_1ED72F9D0)
  {
    v3 = sub_1AFDFCA88();
    result = swift_getWitnessTable(MEMORY[0x1E69E7F70], v3, v0, v1);
    atomic_store(result, &qword_1ED72F9D0);
  }

  return result;
}

void sub_1AF751F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF751F94()
{
  v1 = sub_1AFDFCA88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AFDFCAC8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4478(0, &qword_1ED72F8A0, 0x1E69E9610);
  v9 = sub_1AFDFDB08();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1AF7553B0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F24E6028;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_1AFDFCAA8();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1AF6CB2E0(0);
  sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0, MEMORY[0x1E69E6328]);
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF752278()
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1AF7527A4();
}

uint64_t sub_1AF752318(char a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(void))
{
  v5 = a5;
  v8 = *(a2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (v8)
  {
    swift_unownedRetainStrong();
    v11 = *(a2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
    v12 = *(v8 + 88);

    os_unfair_lock_lock(v12);
    v13 = (v8 + 96);
    v14 = *(v8 + 96);
    v15 = v14[2];
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (v14[v16 + 4] != a3)
      {
        ++v17;
        v16 += 2;
        if (v15 == v17)
        {
          goto LABEL_6;
        }
      }

      if (v11)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_1AFC0DB70(v14);
          *v13 = v14;
        }

        v24 = &v14[v16];
        v24[4] = v11;
        v24[5] = &off_1F2537A78;
      }

      else
      {
        sub_1AF620F30(v17);
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_6:
      if (v11)
      {

        v18 = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v14;
        if ((v18 & 1) == 0)
        {
          v14 = sub_1AF424C70(0, v15 + 1, 1, v14);
          *v13 = v14;
        }

        v20 = v14[2];
        v19 = v14[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v27 = v20 + 1;
          v26 = sub_1AF424C70(v19 > 1, v20 + 1, 1, v14);
          v21 = v20 + 1;
          v14 = v26;
          *v13 = v26;
        }

        v14[2] = v21;
        v22 = &v14[2 * v20];
        v22[4] = v11;
        v22[5] = &off_1F2537A78;
      }
    }

    os_unfair_lock_unlock(*(v8 + 88));

    v5 = a5;
  }

  [a4 setPresentsWithTransaction_];
  return v5(a1 & 1);
}

uint64_t sub_1AF752518(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (v2)
  {

    v4 = objc_autoreleasePoolPush();
    sub_1AF6F7DDC(a2, v2);
    objc_autoreleasePoolPop(v4);
  }

  return result;
}

uint64_t sub_1AF7525A8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer;
  v3 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer];
  type metadata accessor for CAMetalLayerRenderOutput();
  swift_allocObject();
  v4 = sub_1AF7080D4(v3);
  *(v4 + 40) = 2;
  v5 = [v0 backgroundColor];
  if (!v5)
  {
    v5 = [objc_opt_self() blackColor];
  }

  v6 = v5;
  v7 = [v5 CGColor];
  sub_1AF6DE2A8(v7);

  nullsub_106();
  *(v4 + 48) = v8;
  *(v4 + 56) = v9;
  *(v4 + 64) = v10;
  *(v4 + 72) = v11;
  v12 = v0[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond + 8];
  *(v4 + 88) = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  *(v4 + 96) = v12;
  *(v4 + 168) = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize];
  *(v4 + 152) = (v0[OBJC_IVAR____TtC3VFX11VFXCoreView_paused] & 1) == 0;
  v13 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_effectID];
  v14 = sub_1AF80F414(0);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  *(v4 + 80) = v15;
  *(v4 + 84) = 2 * (v13 == v14);
  *(v4 + 184) = v1[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode];
  *(v4 + 97) = v1[OBJC_IVAR____TtC3VFX11VFXCoreView_stereoMode];
  v16 = *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback];
  v17 = *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback + 8];
  v18 = *(v4 + 120);
  v19 = *(v4 + 128);
  *(v4 + 120) = v16;
  *(v4 + 128) = v17;
  sub_1AF0FBD8C(v16, v17);
  sub_1AF0FB8EC(v18, v19);
  sub_1AFDFF308();
  MEMORY[0x1B271ACB0](*&v1[v2]);
  *(v4 + 144) = sub_1AFDFF2E8();
  return v4;
}

void sub_1AF7527A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (v1)
  {
    v2 = v0;
    if (*(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
    {
      v3 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v4 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v4)
      {
        v5 = *(v1 + 88);
        swift_retain_n();

        os_unfair_lock_lock(v5);
        MEMORY[0x1EEE9AC00](v6);
        v9[2] = v4;
        v9[3] = &off_1F2537A78;
        v7 = sub_1AF66DE98(sub_1AF755B70, v9);
        sub_1AF64DF20(v7, *(*(v1 + 96) + 16));
        os_unfair_lock_unlock(*(v1 + 88));

        *(v2 + v3) = 0;
      }

      else
      {
        swift_retain_n();
      }

      v8 = sub_1AF7525A8();
      *(v2 + v3) = v8;
      swift_retain_n();

      sub_1AFCF7B24(v8, v1);
    }

    else
    {
    }

    if (swift_weakLoadStrong())
    {
      sub_1AF6F9CD8(v1);
    }
  }
}

void sub_1AF752BB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  if (*(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
  {
    v3 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v5 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v5)
      {
        v6 = *(v3 + 88);

        os_unfair_lock_lock(v6);
        MEMORY[0x1EEE9AC00](v7);
        v14[2] = v5;
        v14[3] = &off_1F2537A78;
        v8 = sub_1AF66DE98(sub_1AF755B70, v14);
        sub_1AF64DF20(v8, *(*(v3 + 96) + 16));
        os_unfair_lock_unlock(*(v3 + 88));

        *(v1 + v4) = 0;
      }

      else
      {
      }

      v9 = sub_1AF7525A8();
      *(v1 + v4) = v9;
      swift_retain_n();

      sub_1AFCF7B24(v9, v3);

      v2 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
    }
  }

  v10 = *(v1 + v2);
  if (v10)
  {
    if (*(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_paused) == 1)
    {
      v11 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_effectID);

      v15 = 0;
      if (v11 == sub_1AF80F414(0))
      {
        os_unfair_lock_lock(*(v10 + 88));
        v12 = *(*(v10 + 96) + 16);
        os_unfair_lock_unlock(*(v10 + 88));
        if (!v12)
        {
          if (swift_weakLoadStrong())
          {
            sub_1AF6FA23C(v10);
          }
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1AFCF4B48();
LABEL_19:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        sub_1AF6F9CD8(v10);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1AFCF4B6C();
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_1AF752E24(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_effectID) = result;
  if (*(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
  {
    v2 = v1;
    v3 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v5 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v5)
      {
        v6 = *(v3 + 88);

        os_unfair_lock_lock(v6);
        MEMORY[0x1EEE9AC00](v7);
        v10[2] = v5;
        v10[3] = &off_1F2537A78;
        v8 = sub_1AF66DE98(sub_1AF755B70, v10);
        sub_1AF64DF20(v8, *(*(v3 + 96) + 16));
        os_unfair_lock_unlock(*(v3 + 88));

        *(v2 + v4) = 0;
      }

      else
      {
      }

      v9 = sub_1AF7525A8();
      *(v2 + v4) = v9;
      swift_retain_n();

      sub_1AFCF7B24(v9, v3);
    }
  }

  return result;
}

void sub_1AF752F8C()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    v2 = 0;
  }

  v3 = OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer;
  v4 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer];
  *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer] = v2;
  v5 = v2;

  [v5 setPixelFormat_];
  [*&v0[v3] setFramebufferOnly_];
  v6 = *&v0[v3];
  [v6 setDevice_];

  swift_unknownObjectRelease();
  [*&v0[v3] setOpaque_];
  v7 = *MEMORY[0x1E695F1C0];
  v8 = *&v0[v3];
  v9 = CGColorSpaceCreateWithName(v7);
  [v8 setColorspace_];
}

id sub_1AF7530D8(void *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_lastTouch] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_sampleCount] = 1;
  v4 = &v1[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor] = 0x3FF0000000000000;
  v5 = &v1[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback];
  *v5 = 0;
  v5[1] = 0;
  swift_weakInit();
  v6 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  v7 = CFXGPUDeviceCreate(0);
  v20 = 1;
  v19 = 1;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 1;
  v30 = 1;
  v31 = 260;
  v32 = 0;
  v33 = 0;
  type metadata accessor for Renderer();
  swift_allocObject();
  *&v2[v6] = sub_1AF70A2F4(v7, 0, &v22, 0);
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_stereoMode] = 0;
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_paused] = 0;
  v8 = OBJC_IVAR____TtC3VFX11VFXCoreView_effectID;
  v21 = 0;
  *&v2[v8] = sub_1AF80F414(0);
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_sizeDirty] = 1;
  __asm { FMOV            V0.2D, #16.0 }

  *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] = _Q0;
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode] = 0;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for VFXCoreView();
  v14 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    sub_1AF752F8C();
    sub_1AF7527A4();
  }

  return v15;
}

id sub_1AF753390(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v5[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_lastTouch] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_sampleCount] = 1;
  v12 = &v5[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  *v12 = 0;
  v12[8] = 1;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor] = 0x3FF0000000000000;
  v13 = &v5[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback];
  *v13 = 0;
  v13[1] = 0;
  swift_weakInit();
  v14 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  v15 = CFXGPUDeviceCreate(0);
  v27 = 1;
  v26 = 1;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = 0;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = 1;
  v38 = 260;
  v39 = 0;
  v40 = 0;
  type metadata accessor for Renderer();
  swift_allocObject();
  *&v6[v14] = sub_1AF70A2F4(v15, 0, &v29, 0);
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_stereoMode] = 0;
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_paused] = 0;
  v16 = OBJC_IVAR____TtC3VFX11VFXCoreView_effectID;
  v28 = 0;
  *&v6[v16] = sub_1AF80F414(0);
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_sizeDirty] = 1;
  __asm { FMOV            V0.2D, #16.0 }

  *&v6[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] = _Q0;
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode] = 0;
  v25.receiver = v6;
  v25.super_class = type metadata accessor for VFXCoreView();
  v22 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a2, a3, a4, a5);
  if (a1)
  {
    swift_weakAssign();
  }

  v23 = v22;
  sub_1AF752F8C();
  sub_1AF7527A4();

  return v23;
}

void sub_1AF7535DC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
  v5 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
  if (v5)
  {
    v6 = *(a1 + 88);

    os_unfair_lock_lock(v6);
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = v5;
    v10[3] = &off_1F2537A78;
    v8 = sub_1AF66DE98(sub_1AF755B70, v10);
    sub_1AF64DF20(v8, *(*(a1 + 96) + 16));
    os_unfair_lock_unlock(*(a1 + 88));

    *(v2 + v4) = 0;
  }

  os_unfair_lock_lock(*(a1 + 88));
  v9 = *(*(a1 + 96) + 16);
  os_unfair_lock_unlock(*(a1 + 88));
  if (!v9)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF6FA23C(a1);
    }
  }
}

id sub_1AF753704()
{
  if (*&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer])
  {

    sub_1AF7535DC(v1);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for VFXCoreView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1AF7538E0()
{
  v1 = [v0 window];
  if (v1)
  {
    v18 = v1;
    v2 = objc_opt_self();
    [v2 begin];
    [v2 setDisableActions_];
    v3 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor];
    v4 = [v18 screen];
    [v4 nativeScale];
    v6 = v5;

    [v0 setContentScaleFactor_];
    [v0 bounds];
    v8 = v7;
    v10 = v9;
    [v0 contentScaleFactor];
    v12 = v8 * v11;
    [v0 contentScaleFactor];
    v14 = v10 * v13;
    v15 = ceil(v12);
    v16 = ceil(v14);
    if (*&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] != v15 || *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize + 8] != v16)
    {
      sub_1AF753FAC(v15, v16);
    }

    [v2 commit];
  }
}

void sub_1AF753A54(int a1)
{
  v14 = a1;
  v2 = sub_1AFDFCA88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AFDFCAC8();
  v6 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4478(0, &qword_1ED72F8A0, 0x1E69E9610);
  v9 = sub_1AFDFDB08();
  v10 = swift_allocObject();
  v15 = v1;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1AF755B60;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F253A000;
  v11 = _Block_copy(aBlock);

  sub_1AFDFCAA8();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1AF6CB2E0(0);
  sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0, MEMORY[0x1E69E6328]);
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v8, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v13);

  if (v14)
  {
    sub_1AF7538E0();
    sub_1AF7527A4();
  }

  else if (*(v15 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer))
  {

    sub_1AF7535DC(v12);
  }
}

void sub_1AF753D9C(uint64_t a1)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v2 = [Strong window];
    if (v2)
    {

      v3 = [v4 isHidden];
    }

    else
    {
      v3 = 1;
    }

    *(v4 + OBJC_IVAR____TtC3VFX11VFXCoreView_paused) = v3;
    sub_1AF752BB4();
  }

  else
  {
  }
}

void sub_1AF753FAC(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize);
  *v3 = a1;
  v3[1] = a2;
  if (*(v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
  {
    v4 = v2;
    v5 = *(v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v7 = *(v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v7)
      {
        v8 = *(v5 + 88);

        os_unfair_lock_lock(v8);
        MEMORY[0x1EEE9AC00](v9);
        v12[2] = v7;
        v12[3] = &off_1F2537A78;
        v10 = sub_1AF66DE98(sub_1AF755B40, v12);
        sub_1AF64DF20(v10, *(*(v5 + 96) + 16));
        os_unfair_lock_unlock(*(v5 + 88));

        *(v4 + v6) = 0;
      }

      else
      {
      }

      v11 = sub_1AF7525A8();
      *(v4 + v6) = v11;
      swift_retain_n();

      sub_1AFCF7B24(v11, v5);
    }
  }
}

void sub_1AF754468()
{
  sub_1AF7527A4();
  v1 = [v0 backgroundColor];
  if (!v1)
  {
    v1 = [objc_opt_self() blackColor];
  }

  v2 = v1;
  color = [v1 CGColor];

  v3 = CGColorGetAlpha(color) == 1.0;
  v4 = [v0 layer];
  [v4 setOpaque_];

  [v0 setOpaque_];
}

void sub_1AF754704(void *a1)
{
  v2 = v1;
  v4 = sub_1AFDFCA88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFCAC8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v75 = a1;
      v14 = [v75 touchesForView_];
      v72 = v4;
      if (v14)
      {
        v15 = v14;
        sub_1AF0D4478(0, &qword_1EB63E300, 0x1E69DD190);
        sub_1AF755AB4();
        v16 = sub_1AFDFD778();
      }

      else if (MEMORY[0x1E69E7CC0] >> 62 && sub_1AFDFE108())
      {
        v16 = sub_1AFAF59FC(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v16 = MEMORY[0x1E69E7CD0];
      }

      v69 = v11;
      v71 = v7;
      v70 = v8;
      if ((v16 & 0xC000000000000001) != 0)
      {
        sub_1AFDFE0C8();
        sub_1AF0D4478(0, &qword_1EB63E300, 0x1E69DD190);
        sub_1AF755AB4();
        sub_1AFDFD7C8();
        v18 = v83[4];
        v17 = v83[5];
        v19 = v83[6];
        v20 = v83[7];
        v21 = v83[8];
      }

      else
      {
        v20 = 0;
        v22 = -1 << *(v16 + 32);
        v17 = v16 + 56;
        v19 = ~v22;
        v23 = -v22;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v21 = v24 & *(v16 + 56);
        v18 = v16;
      }

      v73 = v19;
      v25 = (v19 + 64) >> 6;
      v68 = v83;
      v67 = (v5 + 8);
      v66 = (v9 + 8);
      v74 = v17;
      v26 = v17 + 8;
      v76 = v13;
      v77 = v2;
      v78 = v17 + 8;
      v79 = v25;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_14:
      v27 = sub_1AFDFE138();
      if (!v27 || (v81 = v27, sub_1AF0D4478(0, &qword_1EB63E300, 0x1E69DD190), swift_dynamicCast(), v28 = aBlock[0], i = v20, v30 = v21, !aBlock[0]))
      {
LABEL_47:
        sub_1AF0FBB14(v18);

        return;
      }

      while (1)
      {
        v80 = v30;
        type metadata accessor for InputEvent();
        swift_allocObject();
        v33 = v28;
        v34 = v2;
        v35 = sub_1AF6A5CD4(v33, v34);

        if (v34[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] == 1)
        {
          if (v35[2].i8[0] != 2)
          {
            goto LABEL_27;
          }

          v36 = 0;
        }

        else
        {
          if (v35[2].i8[0])
          {
            goto LABEL_27;
          }

          v36 = 1;
        }

        v34[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] = v36;
LABEL_27:
        *&v34[OBJC_IVAR____TtC3VFX11VFXCoreView_lastTouch] = v35[7];
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        *(v37 + 24) = v13;
        v38 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
        if (v38)
        {

          os_unfair_recursive_lock_lock_with_options();
          if (*(v38 + 120) == 1)
          {
            os_unfair_recursive_lock_unlock();
            goto LABEL_41;
          }

          v53 = swift_allocObject();
          *(v53 + 16) = sub_1AF755B1C;
          *(v53 + 24) = v37;
          v54 = *(v38 + 72);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v38 + 72) = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = sub_1AF4221DC(0, v54[2] + 1, 1, v54);
            *(v38 + 72) = v54;
          }

          v57 = v54[2];
          v56 = v54[3];
          if (v57 >= v56 >> 1)
          {
            v54 = sub_1AF4221DC(v56 > 1, v57 + 1, 1, v54);
          }

          v54[2] = v57 + 1;
          v58 = &v54[2 * v57];
          v58[4] = sub_1AF6D25EC;
          v58[5] = v53;
          *(v38 + 72) = v54;
          os_unfair_recursive_lock_unlock();
          os_unfair_recursive_lock_lock_with_options();
          v59 = *(v38 + 152);
          os_unfair_recursive_lock_unlock();
          v13 = v76;
          v2 = v77;
          if (v59)
          {
LABEL_41:
          }

          else
          {
            v60 = *(v38 + 16);
            [*(v60 + 16) lock];
            *(v60 + 24) = 1;
            [*(v60 + 16) signal];
            [*(v60 + 16) unlock];

LABEL_43:
          }

          v20 = i;
          v21 = v80;
          goto LABEL_45;
        }

        v39 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated);
        v40 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated + 8);

        v41 = v40;
        [v41 lock];
        [v41 unlock];

        if (v39 == 1)
        {
          goto LABEL_43;
        }

        v42 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_asyncQueue);
        v43 = swift_allocObject();
        v43[2] = v13;
        v43[3] = sub_1AF755B1C;
        v43[4] = v37;
        v44 = qword_1ED730EA0;

        v64 = v42;
        if (v44 != -1)
        {
          swift_once();
        }

        v65 = v18;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v45 = qword_1ED73B8A0;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_1AF67008C;
        *(v46 + 24) = v43;
        v47 = swift_allocObject();
        v63 = v45;
        v47[2] = v45;
        v47[3] = sub_1AF6CB244;
        v47[4] = v46;
        v83[2] = sub_1AF74E8A8;
        v83[3] = v47;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v83[0] = sub_1AFCDA044;
        v83[1] = &unk_1F2539F88;
        v62 = _Block_copy(aBlock);
        swift_retain_n();

        v48 = v69;
        sub_1AFDFCAA8();
        v81 = MEMORY[0x1E69E7CC0];
        sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1AF6CB2E0(0);
        sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0, MEMORY[0x1E69E6328]);
        v61[1] = v43;
        v49 = v71;
        v50 = v72;
        sub_1AFDFE058();
        v51 = v62;
        v52 = v64;
        MEMORY[0x1B2719530](0, v48, v49, v62);
        _Block_release(v51);

        (*v67)(v49, v50);
        (*v66)(v48, v70);

        v20 = i;
        v21 = v80;
        v13 = v76;
        v2 = v77;
        v18 = v65;
LABEL_45:
        v26 = v78;
        v25 = v79;
        if (v18 < 0)
        {
          goto LABEL_14;
        }

LABEL_17:
        v31 = v20;
        v32 = v21;
        for (i = v20; !v32; v32 = *(v26 + 8 * v31++))
        {
          i = v31 + 1;
          if (v31 + 1 >= v25)
          {
            goto LABEL_47;
          }
        }

        v30 = (v32 - 1) & v32;
        v28 = *(*(v18 + 48) + ((i << 9) | (8 * __clz(__rbit64(v32)))));
        if (!v28)
        {
          goto LABEL_47;
        }
      }
    }
  }
}

uint64_t sub_1AF7550EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 184);

  sub_1AF6D2ADC(&type metadata for InputStream, &off_1F2534998, v2, sub_1AF755B24);
}

void sub_1AF755190(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1AF0D4478(0, &qword_1EB63E300, 0x1E69DD190);
  sub_1AF755AB4();
  sub_1AFDFD778();
  v9 = a4;
  v10 = a1;
  sub_1AF754704(a4);
  v11 = sub_1AFDFD768();

  v12.receiver = v10;
  v12.super_class = type metadata accessor for VFXCoreView();
  objc_msgSendSuper2(&v12, *a6, v11, v9);
}

uint64_t sub_1AF7553B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AF7553D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (!v1)
  {
    return;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if ((*(v1 + 40) & 1) == 0)
  {
    v4 = *(v1 + 32);
    v5 = objc_opt_self();

    v6 = [v5 defaultCenter];
    [v6 removeObserver_];

    if (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {
      if (qword_1EB632FC0 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1EB637158 == -1)
    {
LABEL_9:

      sub_1AF6F50CC(v4);

      *(v1 + 32) = 0;
      *(v1 + 40) = 1;
      goto LABEL_10;
    }

    swift_once();
    goto LABEL_9;
  }

LABEL_10:
}

void sub_1AF755554(char a1, char *a2, void (*a3)(void *), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    a3(v36);
LABEL_15:

    return;
  }

  v10 = Strong;
  v11 = *&a2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
  if (!v11)
  {

    a3(v36);

    goto LABEL_15;
  }

  v12 = *&a2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer];
  if (!v12)
  {
    sub_1AF0FBD8C(a3, a4);

    a3(v36);

    goto LABEL_15;
  }

  v30 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  v31 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  sub_1AF0FBD8C(a3, a4);

  v13 = v12;
  [v13 setPresentsWithTransaction_];
  v35 = a1;
  v14 = sub_1AF7525A8();
  *(v14 + 98) = 1;
  *(v14 + 160) = 1;
  swift_unownedRetainStrong();
  v15 = v13;
  swift_unownedRetain();
  v16 = a2;
  swift_unownedRelease();
  swift_unownedRetain();

  v17 = swift_allocObject();
  v32 = v16;
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = sub_1AF755A94;
  v17[6] = v8;
  v33 = v11;
  v18 = *(v14 + 104);
  v19 = *(v14 + 112);
  *(v14 + 104) = sub_1AF755A9C;
  *(v14 + 112) = v17;
  v34 = v15;

  sub_1AF0FB8EC(v18, v19);
  if (v35)
  {
    *(v14 + 136) = sub_1AF707694(0x746963696C707845, 0xEF7265646E657220, 1, v31);
    swift_unknownObjectRelease();
  }

  if (*&v32[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput])
  {
    v20 = &off_1F2537A78;
  }

  else
  {
    v20 = 0;
  }

  sub_1AF709D1C(v21, v20, v14, &off_1F2537A78);

  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 24) = v10;
  v23 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v23)
  {
    v24 = v32;

    os_unfair_recursive_lock_lock_with_options();
    if (*(v23 + 120))
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1AF755AAC;
      *(v28 + 24) = v22;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36[0] = *(v23 + 40);
      *(v23 + 40) = 0x8000000000000000;
      sub_1AF855560(sub_1AF464154, v28, v33, isUniquelyReferenced_nonNull_native);
      *(v23 + 40) = v36[0];
      os_unfair_recursive_lock_unlock();
      sub_1AF6CF09C();
    }
  }

  else
  {
    v25 = *&a2[v30];
    v26 = v32;

    if (v25)
    {

      v27 = objc_autoreleasePoolPush();
      sub_1AF6F7DDC(v10, v25);
      objc_autoreleasePoolPop(v27);
    }
  }

  if (v35)
  {
    sub_1AF660F84(v10);
  }

  else
  {
  }
}

unint64_t sub_1AF755AB4()
{
  result = qword_1EB63E308;
  if (!qword_1EB63E308)
  {
    v3 = sub_1AF0D4478(255, &qword_1EB63E300, 0x1E69DD190);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EB63E308);
  }

  return result;
}

uint64_t sub_1AF755BE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void))
{
  v6 = 0;
  v16 = MEMORY[0x1B27191B0](*(a1 + 16), a2, a3);
  v7 = 1 << *(a1 + 32);
  v8 = *(a1 + 64);
  v9 = -1;
  if (v7 < 64)
  {
    v9 = ~(-1 << v7);
  }

  v10 = v9 & v8;
  v11 = (v7 + 63) >> 6;
  if ((v9 & v8) != 0)
  {
    do
    {
      v12 = v6;
LABEL_8:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      a4(&v15, *(*(a1 + 48) + ((v12 << 9) | (8 * v13))));
    }

    while (v10);
  }

  while (1)
  {
    v12 = v6 + 1;
    if (v6 + 1 >= v11)
    {
      break;
    }

    v10 = *(a1 + 8 * v6++ + 72);
    if (v10)
    {
      v6 = v12;
      goto LABEL_8;
    }
  }

  return v16;
}

uint64_t sub_1AF755D0C()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3[0] = 0;
  [v0 viewports:v3 :&v2];
  return v2;
}

unint64_t sub_1AF755D74(void *a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = [a1 frontFaceTest];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1AF6F4D08(v6);
  }

  else
  {
    v8 = a2;
  }

  v9 = [a1 backFaceTest];
  if (v9)
  {
    v10 = v9;
    LODWORD(v11) = sub_1AF6F4D08(v9);
  }

  else
  {
    v11 = HIDWORD(a2);
  }

  v12 = sub_1AF7572F4(a2, a3);
  v13 = sub_1AF7572FC(a2, a3);
  v15 = __PAIR64__(v11, v8);
  sub_1AF0D7334(v12, &v15);
  sub_1AF0D7344(v13, &v15);
  return v15;
}

id sub_1AF755E78(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1EB634100 != -1)
  {
    swift_once();
  }

  if (*(qword_1EB6C2AD8 + 16))
  {
    sub_1AF419914(a2, a3);
  }

  v8 = sub_1AFDFCEC8();

  v9 = [a4 texture:a1 :v8];

  return v9;
}

uint64_t sub_1AF755F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1AF432980(a2);
  sub_1AF757298();
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

id sub_1AF755FD0(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12[0] = 0;
  if (qword_1EB637168 != -1)
  {
    swift_once();
  }

  if (*(qword_1EB6C31B0 + 16))
  {
    sub_1AF419914(a2, a3);
  }

  v8 = sub_1AFDFCEC8();

  v9 = [a4 buffer__:a1 :{v8, v12, &v11}];

  if (v9)
  {
    swift_unknownObjectRelease();
  }

  return v9;
}

id VFXREBindingMeshData.init()()
{
  *&v0[OBJC_IVAR___VFXREBindingMeshData_buffer] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_length] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_format] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_offset] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_stride] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXREBindingMeshData();
  return objc_msgSendSuper2(&v2, sel_init);
}

__n128 sub_1AF756348@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 31) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1AF756360()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7563D4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF756418@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF75737C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

double sub_1AF756610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

id VFXREDrawCall.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AF756894(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1AF756950(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v61 = qword_1ED73B840;
  v62 = 0;
  v63 = 2;
  v64 = 0;
  v65 = 2;
  v66 = 0;
  sub_1AF8D66A8(1, 1, 1, v34);
  v52[0] = v34[0];
  v52[1] = v34[1];
  v53 = v35;
  sub_1AF6B06C0(a1, v52, 0x200000000, &v36);
  v27 = v36;
  if (!v36)
  {
    v22 = sub_1AF757408;
    v23 = v34;
    goto LABEL_17;
  }

  v8 = v39;
  v9 = v40;
  v10 = v42;
  v44 = v37;
  v45 = v38;
  v25 = v43;
  v26 = v41;
  if (v43 <= 0 || !v40)
  {
    sub_1AF757498(v34, sub_1AF757408);
    v22 = sub_1AF5C3C90;
    v23 = &v36;
LABEL_17:
    sub_1AF757498(v23, v22);
    return;
  }

  v11 = *(v42 + 32);
  v67 = *(v41 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v24 = a2;
  sub_1AF5D15C0(&v36, v56);
  v12 = (v8 + 24);
  while (1)
  {
    v32 = v9;
    v33 = v5;
    v14 = *(v12 - 6);
    v13 = *(v12 - 5);
    v15 = *(v12 - 4);
    v30 = *v12;
    v31 = *(v12 - 1);
    v16 = v12[2];
    v29 = v12[1];
    if (v67)
    {
      v17 = *(v16 + 376);

      os_unfair_lock_lock(v17);
      os_unfair_lock_lock(*(v16 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v11);
    v18 = *(v10 + 64);
    v54[0] = *(v10 + 48);
    v54[1] = v18;
    v55 = *(v10 + 80);
    v19 = *(v10 + 32);
    v20 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;

    *(v10 + 48) = ecs_stack_allocator_allocate(v19, 48 * v20, 8);
    *(v10 + 56) = v20;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 64) = 0;

    LOBYTE(v46) = 1;
    v56[0] = v26;
    v56[1] = v16;
    v56[2] = v10;
    v56[3] = v15;
    v56[4] = (v13 - v14 + v15);
    v56[5] = v25;
    v56[6] = v14;
    v56[7] = v13;
    v56[8] = 0;
    v56[9] = 0;
    v57 = 1;
    v58 = v31;
    v59 = v30;
    v60 = v29;
    v21 = v24;
    sub_1AFD2511C(v56, v21, a3);
    if (v33)
    {
      break;
    }

    v49 = v27;
    v50 = v44;
    v51 = v45;
    sub_1AF630994(v10, &v49, v54);
    v5 = 0;
    sub_1AF62D29C(v16);
    ecs_stack_allocator_pop_snapshot(v11);
    if (v67)
    {
      os_unfair_lock_unlock(*(v16 + 344));
      os_unfair_lock_unlock(*(v16 + 376));
    }

    v12 += 6;
    v9 = v32 - 1;
    if (v32 == 1)
    {
      sub_1AF757498(v34, sub_1AF757408);
      sub_1AF757498(&v36, sub_1AF5C3C90);

      v23 = &v36;
      v22 = sub_1AF5C3C90;
      goto LABEL_17;
    }
  }

  v46 = v27;
  v47 = v44;
  v48 = v45;
  sub_1AF630994(v10, &v46, v54);
  sub_1AF62D29C(v16);
  ecs_stack_allocator_pop_snapshot(v11);
  os_unfair_lock_unlock(*(v16 + 344));
  os_unfair_lock_unlock(*(v16 + 376));
  __break(1u);
}

void VFXREForEachDrawCall(uint64_t a1, void *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v7[2] = v5;
  swift_retain_n();
  v6 = a2;
  sub_1AF661130(a1, a1, v6, sub_1AF756EB4, v7);

  _Block_release(v5);
}

uint64_t forEachDrawCall(_:_:_:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_retain_n();
  sub_1AF661130(a1, a1, a2, a3, a4);
}

uint64_t sub_1AF756E70()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t destroy for VFXDrawCallHandler(uint64_t a1)
{

  if (*(a1 + 16))
  {
  }

  return result;
}

uint64_t initializeWithCopy for VFXDrawCallHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = (a2 + 16);
  v5 = *(a2 + 16);

  if (v5)
  {
    v7 = *(a2 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
  }

  else
  {
    *(a1 + 16) = *v6;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for VFXDrawCallHandler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) = v4;
      *(a1 + 24) = v6;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t assignWithTake for VFXDrawCallHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for VFXDrawCallHandler(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for VFXDrawCallHandler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AF757244()
{
  result = qword_1EB63E3B8;
  if (!qword_1EB63E3B8)
  {
    result = swift_getWitnessTable(byte_1AFE753BC, &type metadata for VFXMaterialType, v0, v1);
    atomic_store(result, &qword_1EB63E3B8);
  }

  return result;
}

void sub_1AF757298()
{
  if (!qword_1EB633C80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB633C80);
    }
  }
}

uint64_t sub_1AF757304(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AF444A40();
  result = MEMORY[0x1B27191B0](v2, &type metadata for Target, v3);
  v7 = result;
  if (v2)
  {
    v5 = a1 + 33;
    do
    {
      sub_1AF70E180(v6, *(v5 - 1));
      v5 += 2;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1AF75737C(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      v1 = 0;
      v2 = 3;
      return v2 | (v1 << 32);
    }

    if (a1 == 2)
    {
      v1 = 0;
      v2 = 2;
      return v2 | (v1 << 32);
    }

LABEL_8:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v2 | (v1 << 32);
}

uint64_t sub_1AF7573F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AF757408()
{
  if (!qword_1EB633CC0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v4[0] = &type metadata for DrawCallComponent;
    v4[1] = &type metadata for WorldAABB;
    v4[2] = &type metadata for VFXDrawCallHandler;
    v4[3] = &off_1F2560850;
    v4[4] = &off_1F2510410;
    v4[5] = &off_1F253A170;
    v2 = type metadata accessor for Query3(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB633CC0);
    }
  }
}

uint64_t sub_1AF757498(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF757510()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1AF757580(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + v2[4] - 1) & -a2;
  v5 = v4 + a1;
  v6 = v2[2];
  if (v6)
  {
    if (v2[3] - v6 >= v5)
    {
LABEL_3:
      v2[4] = v5;
      return v6 + v4;
    }
  }

  else if (v5 < 1)
  {
    goto LABEL_3;
  }

  v15 = *(v2 + 1);
  v8 = v2[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[5] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1AF420660(0, *(v8 + 2) + 1, 1, v8);
    v2[5] = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  v12 = v15;
  if (v11 >= v10 >> 1)
  {
    v14 = sub_1AF420660(v10 > 1, v11 + 1, 1, v8);
    v12 = v15;
    v8 = v14;
  }

  *(v8 + 2) = v11 + 1;
  *&v8[16 * v11 + 32] = v12;
  v2[5] = v8;
  if (v5)
  {
    v13 = 1 << -__clz(v5 - 1);
  }

  else
  {
    v13 = 1;
  }

  result = swift_slowAlloc();
  v2[2] = result;
  v2[3] = result + v13;
  v2[4] = a1;
  return result;
}

uint64_t sub_1AF7576E0()
{
  MEMORY[0x1B271DEA0](*(v0 + 32), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF757744()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 32);
    do
    {
      v4 = *v3++;
      v2 = v4 - v2 + 32 * v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x1B271ACF0](0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) >> 33)));
}

uint64_t sub_1AF7577C8()
{
  v1 = v0;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, 0, 0);
  v2 = v39;

  v3 = -1;
  for (i = 100; i; --i)
  {
    v5 = v3 + 1;
    v6 = (v3 + 1) >> 6;
    v7 = *(v0 + 24);
    if (v6 >= v7)
    {
      break;
    }

    v8 = *(v0 + 32);
    v9 = *(v8 + 8 * v6) >> v5;
    if (!v9)
    {
      v10 = ~v6 + v7;
      v11 = -64 * v6;
      v12 = (v8 + 8 * v6 + 8);
      while (v10)
      {
        v14 = *v12++;
        v13 = v14;
        --v10;
        v11 -= 64;
        if (v14)
        {
          v3 = __clz(__rbit64(v13)) - v11;
          goto LABEL_9;
        }
      }

      break;
    }

    v3 = __clz(__rbit64(v9)) + v5;
LABEL_9:
    sub_1AF68B0F8();
    v15 = sub_1AFDFDF98();
    v40 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      v20 = v15;
      v21 = v16;
      sub_1AFC05CE4(v17 > 1, v18 + 1, 1);
      v16 = v21;
      v15 = v20;
      v2 = v40;
    }

    *(v2 + 16) = v18 + 1;
    v19 = v2 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
  }

  sub_1AF629AE4();
  sub_1AF757E30(&qword_1ED726C68, 255, sub_1AF629AE4, MEMORY[0x1E69E6310]);
  v22 = sub_1AFDFCD98();
  v24 = v23;

  v25 = v22;
  v26 = *(v1 + 24);
  if (v26)
  {
    v27 = *(v1 + 32);
    if (v26 > 3)
    {
      v29 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27 + 1;
      v31 = 0uLL;
      v32 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      v33 = 0uLL;
      do
      {
        v31 = vpadalq_u32(v31, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v30[-1]))));
        v33 = vpadalq_u32(v33, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v30))));
        v30 += 2;
        v32 -= 4;
      }

      while (v32);
      v28 = vaddvq_s64(vaddq_s64(v33, v31));
      if (v26 == v29)
      {
LABEL_20:
        if (v28 >= 100)
        {
          MEMORY[0x1B2718AE0](0x2E2E2E202CLL, 0xE500000000000000);
          v25 = v22;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v34 = v26 - v29;
    v35 = v27 + v29;
    do
    {
      v36 = *v35++;
      v37 = vcnt_s8(v36);
      v37.i16[0] = vaddlv_u8(v37);
      v28 += v37.u32[0];
      --v34;
    }

    while (v34);
    goto LABEL_20;
  }

LABEL_22:
  MEMORY[0x1B2718AE0](v25, v24);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  return 123;
}

void *sub_1AF757AB0()
{
  v1 = sub_1AF428780(*v0);

  return v1;
}

uint64_t sub_1AF757B3C()
{
  sub_1AFDFF288();
  sub_1AF757744();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF757BA4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF757744();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF757BE4@<X0>(int64x2_t *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  v4 = sub_1AF757E78(a1);

  *a2 = v4;
  return result;
}

unint64_t sub_1AF757C88()
{
  result = qword_1EB63E3C8;
  if (!qword_1EB63E3C8)
  {
    result = swift_getWitnessTable(byte_1AFE75614, &type metadata for BitsetIterator, v0, v1);
    atomic_store(result, &qword_1EB63E3C8);
  }

  return result;
}

unint64_t sub_1AF757CDC()
{
  v1 = *v0;
  v2 = v0[1] + 1;
  v0[1] = v2;
  v3 = v2 >> 6;
  v4 = *(v1 + 24);
  if (v2 >> 6 >= v4)
  {
    return 0;
  }

  v5 = *(v1 + 32);
  v6 = *(v5 + 8 * v3) >> v2;
  if (!v6)
  {
    v8 = ~v3 + v4;
    v9 = -64 * v3;
    v10 = (v5 + 8 * v3 + 8);
    while (v8)
    {
      v12 = *v10++;
      v11 = v12;
      --v8;
      v9 -= 64;
      if (v12)
      {
        result = __clz(__rbit64(v11)) - v9;
        goto LABEL_8;
      }
    }

    return 0;
  }

  result = __clz(__rbit64(v6)) + v2;
LABEL_8:
  v0[1] = result;
  return result;
}

unint64_t sub_1AF757D64@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF757CDC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

BOOL sub_1AF757D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 >= v2)
  {
    if (v2 < v3)
    {
      v7 = *(a1 + 24);
      while (v3 != v7)
      {
        if (*(*(a2 + 32) + 8 * v7++))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v4 = *(a2 + 24);
    while (v2 != v4)
    {
      if (*(*(a1 + 32) + 8 * v4++))
      {
        return 0;
      }
    }
  }

  v9 = 0;
  if (v2 < v3)
  {
    v3 = *(a1 + 24);
  }

  do
  {
    v10 = v3 == v9;
    if (v3 == v9)
    {
      break;
    }

    v11 = *(*(a2 + 32) + 8 * v9);
    v12 = *(*(a1 + 32) + 8 * v9++);
  }

  while (v11 == v12);
  return v10;
}

uint64_t sub_1AF757E30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AF757E78(int64x2_t *a1)
{
  v3 = a1[1].u64[0];
  if (!v3)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (v3 < 4)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v5 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = a1 + 3;
  v8 = 0uLL;
  v9 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v10 = 0uLL;
  do
  {
    v8 = vbslq_s8(vcgtq_s64(v8, v7[-1]), v8, v7[-1]);
    v10 = vbslq_s8(vcgtq_s64(v10, *v7), v10, *v7);
    v7 += 2;
    v9 -= 4;
  }

  while (v9);
  v11 = vbslq_s8(vcgtq_s64(v8, v10), v8, v10);
  v12 = vextq_s8(v11, v11, 8uLL).u64[0];
  v4 = vbsl_s8(vcgtd_s64(v11.i64[0], v12), *v11.i8, v12);
  if (v3 != v5)
  {
LABEL_8:
    v13 = v3 - v5;
    v14 = &a1[2].i64[v5];
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (*&v4 <= *&v16)
      {
        v4 = v15;
      }

      --v13;
    }

    while (v13);
  }

  v17 = *&v4 + 63;
  v18 = *&v4 + 126;
  if (v17 < 0)
  {
    v17 = v18;
  }

  v6 = (v17 >> 6) + 1;
LABEL_15:
  v1[2] = v6;
  v1[3] = v6;
  v1[4] = swift_slowAlloc();
  v19 = v1[3];
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      *(v1[4] + 8 * i) = 0;
    }
  }

  if (v3)
  {
    v21 = 0;
    v22 = a1 + 2;
    do
    {
      v23 = v22->i64[v21];
      v24 = v23 >> 6;
      v25 = v1[3];
      if (v23 >> 6 >= v25)
      {
        v26 = v24 + 1;
        if (v1[2] <= v24)
        {
          v27 = swift_slowAlloc();
          v29 = v1[3];
          v28 = v1[4];
          if (v29)
          {
            v30 = 0;
            if (v29 < 4)
            {
              goto LABEL_30;
            }

            if ((v27 - v28) <= 0x1F)
            {
              goto LABEL_30;
            }

            v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
            v31 = (v28 + 16);
            v32 = (v27 + 16);
            v33 = v29 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v34 = *v31;
              *(v32 - 1) = *(v31 - 1);
              *v32 = v34;
              v31 += 2;
              v32 += 2;
              v33 -= 4;
            }

            while (v33);
            if (v29 != v30)
            {
LABEL_30:
              v35 = v29 - v30;
              v36 = 8 * v30;
              v37 = (v27 + 8 * v30);
              v38 = (v28 + v36);
              do
              {
                v39 = *v38++;
                *v37++ = v39;
                --v35;
              }

              while (v35);
            }
          }

          MEMORY[0x1B271DEA0](v28, -1, -1);
          v1[4] = v27;
          v1[2] = 2 * v26;
          v25 = v1[3];
        }

        for (; v26 != v25; ++v25)
        {
          *(v1[4] + 8 * v25) = 0;
        }

        v1[3] = v26;
      }

      ++v21;
      *(v1[4] + 8 * v24) |= 1 << v23;
    }

    while (v21 != v3);
  }

  return v1;
}

uint64_t sub_1AF7580D0()
{
  v1 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = v0[2];
  v3 = *v0;
  if (*v0)
  {
    v4 = v0[1] - v3;
    if (v2 >= v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      return v5;
    }
  }

  v6 = v0[2];
  do
  {
    if (*(v3 + v6) == *(v0 + 24))
    {
      break;
    }

    ++v6;
  }

  while (v4 != v6);
  sub_1AFDFCF68();
  sub_1AF7582E0(0);
  sub_1AF7583C4(&qword_1EB63E3E8, sub_1AF7582E0, MEMORY[0x1E69E74E8]);
  v5 = sub_1AFDFCF28();
  if (v7)
  {

    v8 = sub_1AFDFD048();

    v0[2] = v2 + v8 + 1;
  }

  return v5;
}

uint64_t sub_1AF758248(uint64_t a1)
{
  if ((sub_1AFDFEE28() & 1) == 0 && (sub_1AFDFCD28() & 1) != 0 && (sub_1AF759524(10, 0xE100000000000000) & 0xFFFFFF80) == 0)
  {
    sub_1AF759524(10, 0xE100000000000000);
  }

  return a1;
}

void sub_1AF7582E0(uint64_t a1)
{
  if (!qword_1EB63E3D0)
  {
    sub_1AF758374();
    sub_1AF7583C4(&qword_1EB63E3E0, sub_1AF758374, MEMORY[0x1E69E6068]);
    v1 = sub_1AFDFF248();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63E3D0);
    }
  }
}

void sub_1AF758374()
{
  if (!qword_1EB63E3D8)
  {
    v0 = sub_1AFDFCE88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E3D8);
    }
  }
}

uint64_t sub_1AF7583C4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF75840C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AF7584F4()
{
  result = qword_1EB632FA8;
  if (!qword_1EB632FA8)
  {
    result = swift_getWitnessTable(byte_1AFE756D4, &type metadata for DummyCodable, v0, v1);
    atomic_store(result, &qword_1EB632FA8);
  }

  return result;
}

uint64_t sub_1AF7585B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_1AFDFE818();
  sub_1AFDFE768();
  (*(*(a4 - 8) + 8))(a2, a4);
  return (*(*(v10 - 8) + 8))(a1, v10);
}

uint64_t sub_1AF75870C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qos_class_self())
  {
    v5 = 0;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v6 = pthread_self();
    pthread_getschedparam(v6, &v17, &v16);
    v5 = sub_1AF7599F0(v16.sched_priority);
  }

  MEMORY[0x1EEE9AC00](v5);
  v12[4] = v7;
  v13 = v8;
  v14 = a2;
  v15 = a3;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AF759980;
  *(v9 + 24) = v12;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AF7599A4;
  *(v10 + 24) = v9;
  MEMORY[0x1EEE9AC00](v10);

  sub_1AFDFDAE8();

  swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_1AF758940(uint64_t a1)
{
  v1 = *(a1 - 8);
  if (*(v1 + 64))
  {
    return *(v1 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF758994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AFDFCBD8();
  sub_1AFDFCBD8();
  swift_getTupleTypeMetadata2();
  sub_1AFDFD4C8();
  sub_1AFDFD538();
  sub_1AFDFD448();
  sub_1AFDFD538();
  sub_1AFDFD448();
  v3 = sub_1AFDFD538();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v3);
  sub_1AFDFD268();
  return v5;
}

uint64_t sub_1AF758AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFCA88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AFDFCAC8();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B8A0;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = sub_1AF6CB244;
  v13[4] = v12;
  aBlock[4] = sub_1AF759934;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F24E6078;
  v14 = _Block_copy(aBlock);
  swift_retain_n();

  sub_1AFDFCAA8();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AF0D4D9C(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1AF6CB2E0(0);
  sub_1AF0D4D9C(&qword_1ED72F990, sub_1AF6CB2E0, MEMORY[0x1E69E6328]);
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v10, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_1AF758E68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    v8 = BYTE6(a3);
    if (v7)
    {
      v8 = (0xFFFFFFFF00000001 * a2) >> 32;
    }

    if (v8 > a1)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v7 == 2)
  {
    if (*(a2 + 24) - *(a2 + 16) <= a1)
    {
      return 0;
    }
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    return 0;
  }

LABEL_5:
  v9 = 10;
  if ((sub_1AFDFEE28() & 1) == 0)
  {
    if ((sub_1AFDFCD28() & 1) == 0 || (sub_1AF759524(10, 0xE100000000000000) & 0xFFFFFF80) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1AF759524(10, 0xE100000000000000);
    }
  }

  v11 = sub_1AFDFC1F8();
  v13 = v12;
  sub_1AF51E584(v9, v11, v12);
  v14 = sub_1AFDFC1F8();
  v16 = v15;
  sub_1AFDFCF68();
  v17 = sub_1AFDFCF18();
  sub_1AF439ED8(v11, v13);
  sub_1AF439ED8(v14, v16);
  return v17;
}

uint64_t sub_1AF7590A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_1AFDFD538();
  sub_1AFDFD4E8();
  (*(v8 + 16))(v10, a2, a6);
  sub_1AFDFD538();
  return sub_1AFDFD4E8();
}

uint64_t sub_1AF75923C(uint64_t a1)
{
  v3 = *(v1 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1AF759298(uint64_t a1)
{
  v2 = sub_1AF759B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7592D4(uint64_t a1)
{
  v2 = sub_1AF759B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF759310(void *a1)
{
  sub_1AF759B04(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AF759B60();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AF75941C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v6 = pthread_self();
  pthread_getschedparam(v6, &v11, &v10);
  if ((a2 & 0x100000000) != 0 || v11 == 2)
  {
    return a3(a1);
  }

  v7 = pthread_self();
  started = pthread_override_qos_class_start_np(v7, a2, 0);
  result = a3(a1);
  if (started)
  {
    return pthread_override_qos_class_end_np(started);
  }

  return result;
}

uint64_t sub_1AF7594E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t **, uint64_t))
{
  v4 = a1;
  v5 = &v4;
  return a3(&v5, a2);
}

unint64_t sub_1AF759524(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1AF759674(15, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1AFDFE208();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1AFDFE308() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_1AF759674(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0;
  v4 = result & 0xC;
  v5 = 4 << v3;
  if ((result & 1) == 0 || v4 == v5)
  {
    if (v4 != v5)
    {
      v6 = a2;
      v7 = a3;
      if (result)
      {
        return result;
      }

      return result & 0xC | sub_1AF75970C(result, v6, v7) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    v6 = a2;
    v7 = a3;
    result = sub_1AF87C068(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1AF75970C(result, v6, v7) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1AF75970C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1AFDFE308();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

void sub_1AF759830(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  if (*a2 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; v5 != i; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B2719C70](i, v4);
          swift_unknownObjectRelease();
          if (v7 == a1)
          {
            return;
          }
        }

        else if (*(v4 + 8 * i + 32) == a1)
        {
          return;
        }
      }
    }
  }

  v8 = swift_unknownObjectRetain();
  MEMORY[0x1B2718E00](v8);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
}

uint64_t sub_1AF759968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF7599B4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  v5 = &v4;
  return v2(&v5);
}

uint64_t sub_1AF7599F0(int a1)
{
  if (a1 > 37)
  {
    return 33;
  }

  if (a1 > 31)
  {
    return 25;
  }

  if (a1 > 20)
  {
    return 21;
  }

  if (a1 > 4)
  {
    return 17;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return 9;
  }

  sub_1AFDFE218();

  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF759B04(uint64_t a1)
{
  if (!qword_1EB63E3F0)
  {
    sub_1AF759B60();
    v1 = sub_1AFDFE9A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63E3F0);
    }
  }
}

unint64_t sub_1AF759B60()
{
  result = qword_1EB63E3F8;
  if (!qword_1EB63E3F8)
  {
    result = swift_getWitnessTable(aAj, &type metadata for DummyCodable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E3F8);
  }

  return result;
}

unint64_t sub_1AF759BC8()
{
  result = qword_1EB63E400;
  if (!qword_1EB63E400)
  {
    result = swift_getWitnessTable(byte_1AFE75708, &type metadata for DummyCodable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E400);
  }

  return result;
}

unint64_t sub_1AF759C20()
{
  result = qword_1EB63E408[0];
  if (!qword_1EB63E408[0])
  {
    result = swift_getWitnessTable(byte_1AFE75730, &type metadata for DummyCodable.CodingKeys, v0, v1);
    atomic_store(result, qword_1EB63E408);
  }

  return result;
}

uint64_t sub_1AF759C88(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF759D24(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = v10;
    v11 = v10;
  }

  return v3;
}

void sub_1AF759E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_1AF759E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = v8;
  v9 = v8;
  return a1;
}

uint64_t sub_1AF759F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = v8;
  v10 = v8;

  return a1;
}

uint64_t sub_1AF759F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1AF75A010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1AF75A094(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AF75A1D0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1AF75A430()
{
  sub_1AF0D5C8C(0, &qword_1ED726878, 255, sub_1AF75A924, MEMORY[0x1E69E8958]);
  swift_allocObject();
  result = sub_1AFDFF498();
  qword_1ED73B3F0 = result;
  return result;
}

void sub_1AF75A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  v9 = *a4;
  if ((*a4 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1AFDFF308();
  sub_1AFDFF2A8();
  sub_1AFDFD038();
  v10 = sub_1AFDFF2E8();
  if (qword_1ED725CB8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB634368);
  if (qword_1ED7259C0 != -1)
  {
    swift_once();
  }

  if (!sub_1AF7025B4(v10, off_1ED7259C8))
  {
    sub_1AF70D168(&v11, v10);
    os_unfair_lock_unlock(&dword_1EB634368);
LABEL_11:
    v11 = v9;
    (*(*v5 + 88))(a1, &v11, a2, a3, a5);
    return;
  }

  os_unfair_lock_unlock(&dword_1EB634368);
}

uint64_t sub_1AF75A648()
{
  v0 = sub_1AFDFC598();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1AFDFC538();
  sub_1AF75A958(v1, qword_1ED73B608);
  v2 = sub_1AF477C68(v1, qword_1ED73B608);
  v4 = sub_1AF0D5194(v2, v3);
  sub_1AFDFC5A8();
  return sub_1AFDFC518();
}

uint64_t sub_1AF75A700(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (qword_1ED731058 != -1)
  {
    v6 = a1;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v6;
    a3 = v8;
    a4 = v7;
  }

  v9 = v4;
  return sub_1AF0D4F18(a1, &v9, a3, a4);
}

unint64_t sub_1AF75A794()
{
  result = qword_1EB63E490;
  if (!qword_1EB63E490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LogOptions, &type metadata for LogOptions, v0, v1);
    atomic_store(result, &qword_1EB63E490);
  }

  return result;
}

unint64_t sub_1AF75A7EC()
{
  result = qword_1EB63E498;
  if (!qword_1EB63E498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LogOptions, &type metadata for LogOptions, v0, v1);
    atomic_store(result, &qword_1EB63E498);
  }

  return result;
}

unint64_t sub_1AF75A844()
{
  result = qword_1EB63E4A0;
  if (!qword_1EB63E4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LogOptions, &type metadata for LogOptions, v0, v1);
    atomic_store(result, &qword_1EB63E4A0);
  }

  return result;
}

unint64_t sub_1AF75A89C()
{
  result = qword_1EB63E4A8[0];
  if (!qword_1EB63E4A8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LogOptions, &type metadata for LogOptions, v0, v1);
    atomic_store(result, qword_1EB63E4A8);
  }

  return result;
}

uint64_t *sub_1AF75A958(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1AF75A9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 + 16);
  v4 = sub_1AFDFDD58();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  if (sub_1AFDFE038())
  {
    v12 = *(*(v3 - 8) + 56);
    v13 = v20;

    return v12(v13, 1, 1, v3);
  }

  else
  {
    sub_1AFDFD2A8();
    swift_getAssociatedConformanceWitness();
    v15 = sub_1AFDFDF48();
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v16 = v20;
    sub_1AF75AC80(v15, v7, v20);
    sub_1AFDFE028();
    (*(v18 + 8))(v6, v19);
    return (*(*(v3 - 8) + 56))(v16, 0, 1, v3);
  }
}

uint64_t sub_1AF75AC80@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a1;
  v13 = a4;
  v14 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = swift_checkMetadataState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  swift_getAssociatedConformanceWitness();
  sub_1AFDFF158();
  sub_1AFDFEDF8();
  v15 = v12;
  sub_1AF68B0F8();
  sub_1AFDFDF58();
  (*(v6 + 8))(v8, v5);
  return sub_1AFDFF488();
}

void *sub_1AF75AEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  v6 = sub_1AFDFD478();
  v7 = sub_1AF75C3D8(v6, a1, a2, a3);

  sub_1AFDFD478();
  return v7;
}

uint64_t sub_1AF75AF78(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_1AFDFDD58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 16);
  v24 = a1;
  v19(v13, a1, v7, v16);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    v20 = *(v8 + 8);
    v20(v13, v7);
    sub_1AF75B834(a2, a3, v10);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v20(v24, v7);
    return (v20)(v10, v7);
  }

  else
  {
    (*(v14 + 32))(v18, v13, v6);
    sub_1AF75B560(v18, a2, a3, v10);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v22 = *(v8 + 8);
    v22(v24, v7);
    v22(v10, v7);
    return (*(v14 + 8))(v18, v6);
  }
}

uint64_t sub_1AF75B26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1AFDFD538();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v3);
  return sub_1AFDFD908() & 1;
}

uint64_t sub_1AF75B2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a1;
  v15[3] = a2;
  v8 = type metadata accessor for OrderedDictionary(0, a3, a4, a5);
  WitnessTable = swift_getWitnessTable(byte_1AFE75B14, v8);
  MEMORY[0x1B2718C70](v15, v8, WitnessTable);
  v13 = v15[0];
  v14 = v15[1];
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = sub_1AFDFE228();
  swift_getWitnessTable(MEMORY[0x1E69E6A68], v11, v13, v14);
  sub_1AFDFE608();

  return v15[4];
}

uint64_t sub_1AF75B41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, TupleTypeMetadata2, v9);
  (*(*(a3 - 8) + 32))(a4, &v11[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v11, a2);
}

uint64_t sub_1AF75B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a4;
  v5 = *(a3 + 16);
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AFDFDD58();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v10 + 16))(v13, a1, v9, v16);
  sub_1AFDFCCB8();
  v19 = v25;
  sub_1AFDFCC38();
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    (*(v15 + 8))(v18, v14);
    (*(v24 + 16))(v7, v19, v5);
    sub_1AFDFD538();
    sub_1AFDFD4E8();
    v20 = 1;
    v21 = v26;
  }

  else
  {
    v22 = v26;
    (*(v10 + 32))(v26, v18, v9);
    v20 = 0;
    v21 = v22;
  }

  return (*(v10 + 56))(v21, v20, 1, v9);
}

uint64_t sub_1AF75B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a3;
  v4 = *(a2 + 16);
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24[0] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = sub_1AFDFDD58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCCB8();
  v24[1] = a1;
  v16 = v26;
  sub_1AFDFCC28();
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v17 = 1;
    v18 = v27;
  }

  else
  {
    v19 = *(v12 + 32);
    v19(v15, v11, v7);
    v28 = *(v16 + 8);
    v20 = sub_1AFDFD538();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v20);
    sub_1AFDFD938();
    v21 = v24[0];
    sub_1AFDFD4F8();
    (*(v25 + 8))(v21, v4);
    v22 = v27;
    v19(v27, v15, v7);
    v17 = 0;
    v18 = v22;
  }

  return (*(v12 + 56))(v18, v17, 1, v7);
}

uint64_t sub_1AF75BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a2;
  v11 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFD598();
  (*(v14 + 16))(a1, v17, a6);
  sub_1AFDFCCC8();
  v18 = *(a7 - 8);
  (*(v18 + 48))(v13, 1, a7);
  (*(v14 + 8))(v17, a6);
  return (*(v18 + 32))(v21, v13, a7);
}

uint64_t sub_1AF75BD30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF75BD24(a1, *(v2 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

void (*sub_1AF75BD60(uint64_t *a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v11 = a3[2];
  v10 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[4] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v9[5] = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  v9[6] = v14;
  v16 = sub_1AF75BF78(v9, *a2, *v3, v3[1], v11, v10, a3[4]);
  v18 = v17;
  v9[7] = v16;
  (*(*(v11 - 8) + 16))(v15);
  (*(*(v10 - 8) + 16))(v15 + *(TupleTypeMetadata2 + 48), v18, v10);
  return sub_1AF75BF00;
}

void sub_1AF75BF00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1AF75BF78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v15 = *(TupleTypeMetadata2 - 8);
  a1[1] = v15;
  if (MEMORY[0x1E69E7D08])
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v15 + 64));
  }

  a1[2] = v16;
  sub_1AF75BB44(v16, v16 + *(TupleTypeMetadata2 + 48), a2, a3, a4, a5, a6, a7);
  return sub_1AF62A410;
}

uint64_t sub_1AF75C0CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1AF75C690(a1, a2[2], a2[3], a2[4]);
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

__n128 sub_1AF75C11C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1AF75C12C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aE5, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AF75C180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aE5, a1);
  v4 = sub_1AFD60D38(v1, a1, WitnessTable);

  return v4;
}

unint64_t sub_1AF75C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFCCF8();

  return sub_1AF75C240(a1, v6, a2, a3);
}

unint64_t sub_1AF75C240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1AFDFCE58();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1AF75C3C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return _swift_isClassOrObjCExistentialType();
  }

  return result;
}

void *sub_1AF75C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v16 - v10;
  if (sub_1AFDFD4C8())
  {
    sub_1AFDFE5D8();
    v12 = sub_1AFDFE5C8();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  v20 = sub_1AFDFD4C8();
  if (v20)
  {
    v13 = 0;
    v18 = *(TupleTypeMetadata2 + 48);
    v19 = a4;
    v16[2] = a2 - 8;
    v17 = (v9 + 16);
    v16[1] = a3 - 8;
    do
    {
      if (sub_1AFDFD4A8())
      {
        (*(v9 + 16))(v11, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, TupleTypeMetadata2);
      }

      else
      {
        v21 = sub_1AFDFE248();
        (*v17)(v11, &v21, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      ++v13;
      v14 = sub_1AF75C1E4(v11, a2, v19);
      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      (*(*(a2 - 8) + 32))(v12[6] + *(*(a2 - 8) + 72) * v14, v11, a2);
      (*(*(a3 - 8) + 32))(v12[7] + *(*(a3 - 8) + 72) * v14, &v11[v18], a3);
      ++v12[2];
    }

    while (v20 != v13);
  }

  return v12;
}

uint64_t sub_1AF75C690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v25 - v9;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v25 - v16;
  sub_1AFDFD4C8();
  v33 = a4;
  v35 = MEMORY[0x1B2718660]();
  v34[1] = sub_1AFDFD478();
  v32 = a2;
  v30 = sub_1AFDFD538();
  sub_1AFDFD448();
  if (sub_1AFDFD4C8())
  {
    v18 = 0;
    v19 = *(TupleTypeMetadata2 + 48);
    v28 = (v15 + 16);
    v29 = v19;
    v26 = (v10 + 32);
    v27 = (v10 + 16);
    v25 = a3 - 8;
    do
    {
      if (sub_1AFDFD4A8())
      {
        _swift_isClassOrObjCExistentialType();
        (*(v15 + 16))(v17, a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v18, TupleTypeMetadata2);
      }

      else
      {
        v34[0] = sub_1AFDFE248();
        (*v28)(v17, v34, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      v20 = a1;
      ++v18;
      v21 = v32;
      (*v27)(v13, v17, v32);
      sub_1AFDFD4E8();
      (*v26)(v13, v17, v21);
      v22 = *(a3 - 8);
      v23 = v31;
      (*(v22 + 32))(v31, &v17[v29], a3);
      (*(v22 + 56))(v23, 0, 1, a3);
      sub_1AFDFCCB8();
      sub_1AFDFCCD8();
      a1 = v20;
    }

    while (v18 != sub_1AFDFD4C8());
  }

  return v35;
}