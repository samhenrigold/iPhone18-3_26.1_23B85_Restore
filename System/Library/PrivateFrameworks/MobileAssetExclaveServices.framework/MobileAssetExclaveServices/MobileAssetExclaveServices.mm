id sub_259A766A4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

  return [v0 init];
}

NSObject *sub_259A766DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_259A81CD8();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_259A81CB8();
  MEMORY[0x28223BE20](v26);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_259A81EB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259A81EA8();
  v23 = a1;
  v12 = a2;
  v13 = sub_259A81E88();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  if (v15 >> 60 == 15)
  {
    sub_259A81F28();
    v16 = sub_259A81C58();
    v17 = sub_259A81F68();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v27);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_259A7AF28(v23, v12, &v27);
      _os_log_impl(&dword_259A75000, v16, v17, "%s could not convert string %s to UTF-8 data", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v19, -1, -1);
      MEMORY[0x259CAA9D0](v18, -1, -1);
    }

    sub_259A7C6FC();
    swift_allocError();
    *v20 = 10;
    swift_willThrow();
  }

  else
  {
    sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_259A81CA8();
    sub_259A7C4F4(v13, v15);
    sub_259A7B694(v13, v15, v6);
    sub_259A7C8B4(v13, v15);
    sub_259A81C98();
    (*(v25 + 8))(v6, v4);
    sub_259A7CA0C(&qword_27F9E2220, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    v16 = sub_259A81F08();
    sub_259A7C8B4(v13, v15);
  }

  return v16;
}

void *sub_259A76B00(uint64_t a1, unint64_t a2)
{
  v4 = sub_259A81C38();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_259A7C6A8(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_259A7B368(v10, 0);
      v14 = sub_259A81C08();
      sub_259A7C6A8(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_259A76CD0()
{
  v2 = v0;
  v64 = sub_259A81C38();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v4 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_log;
  v6 = sub_259A81C58();
  v7 = sub_259A81F68();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v65 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v65);
    _os_log_impl(&dword_259A75000, v6, v7, "%s Sending proposeNonce request...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x259CAA9D0](v9, -1, -1);
    MEMORY[0x259CAA9D0](v8, -1, -1);
  }

  v10 = *(v2 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v10 lock];

  v11 = sub_259A7CAB4();
  if (v1)
  {

    [v10 unlock];
    v13 = v1;
    v14 = sub_259A81C58();
    v15 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v65 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v65);
      *(v16 + 12) = 2112;
      v19 = v1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_259A75000, v14, v15, "%s proposeNonce request failed: %@", v16, 0x16u);
      sub_259A7C1B0(v17);
      MEMORY[0x259CAA9D0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x259CAA9D0](v18, -1, -1);
      MEMORY[0x259CAA9D0](v16, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v21 = v12;
    v57 = v11;

    [v10 unlock];
    v22 = sub_259A81F28();
    v23 = sub_259A7C418(v22);
    v25 = v24;

    v62 = v25;
    v56[0] = v21;
    v59 = v5;
    v60 = v2;
    v56[1] = 0;
    sub_259A7C4F4(v23, v25);
    sub_259A81C48();
    sub_259A7CA0C(&qword_27F9E2150, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    sub_259A81F78();
    v58 = v23;
    v26 = MEMORY[0x277D84F90];
    if ((BYTE1(v65) & 1) == 0)
    {
      v63 = xmmword_259A82750;
      v46 = MEMORY[0x277D84B78];
      v47 = MEMORY[0x277D84BC0];
      do
      {
        v48 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v49 = swift_allocObject();
        *(v49 + 16) = v63;
        *(v49 + 56) = v46;
        *(v49 + 64) = v47;
        *(v49 + 32) = v48;
        v50 = sub_259A81E98();
        v52 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_259A7AD10(0, *(v26 + 2) + 1, 1, v26);
        }

        v54 = *(v26 + 2);
        v53 = *(v26 + 3);
        if (v54 >= v53 >> 1)
        {
          v26 = sub_259A7AD10((v53 > 1), v54 + 1, 1, v26);
        }

        *(v26 + 2) = v54 + 1;
        v55 = &v26[16 * v54];
        *(v55 + 4) = v50;
        *(v55 + 5) = v52;
        sub_259A81F78();
      }

      while (BYTE1(v65) != 1);
    }

    (*(v61 + 8))(v4, v64);
    v65 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
    v27 = sub_259A81E68();
    v29 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2168, &qword_259A82780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_259A82760;
    *(inited + 32) = 0x65636E6F4E776172;
    *(inited + 40) = 0xE800000000000000;
    v31 = sub_259A7C418(v57);
    v33 = v32;

    *(inited + 48) = v31;
    *(inited + 56) = v33;
    *(inited + 64) = 0x6F4E747365676964;
    *(inited + 72) = 0xEB0000000065636ELL;
    v34 = v58;
    v35 = v62;
    *(inited + 80) = v58;
    *(inited + 88) = v35;
    sub_259A7C4F4(v34, v35);
    v36 = sub_259A7C590(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2170, &qword_259A82788);
    swift_arrayDestroy();
    v37 = sub_259A81C58();
    v38 = sub_259A81F68();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v65);
      _os_log_impl(&dword_259A75000, v37, v38, "%s proposeNonce request succeeded.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x259CAA9D0](v40, -1, -1);
      MEMORY[0x259CAA9D0](v39, -1, -1);
    }

    v2 = sub_259A77504(v36);

    sub_259A81F28();
    v41 = sub_259A81C58();
    v42 = sub_259A81F68();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_259A7AF28(v27, v29, &v65);
      _os_log_impl(&dword_259A75000, v41, v42, "proposeNonce returning: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x259CAA9D0](v44, -1, -1);
      MEMORY[0x259CAA9D0](v43, -1, -1);
    }

    sub_259A7C6A8(v58, v62);
  }

  return v2;
}

uint64_t sub_259A77504(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2230, &qword_259A82830);
    v2 = sub_259A81FF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  v7 = v2 + 64;

  result = sub_259A81F28();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;
    sub_259A81F28();
    sub_259A7C4F4(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_259A7C8C8(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_259A7C8C8(v33, v34);
    result = sub_259A81F88();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_259A7C8C8(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

void sub_259A7789C(int a1, NSObject *a2, unint64_t a3, int a4, void *a5, NSObject *a6, void *a7, void *a8, uint64_t a9, unint64_t a10, _BYTE *a11)
{
  v13 = v11;
  v175 = a7;
  v176 = a8;
  v173 = a5;
  v174 = a6;
  v179 = a2;
  v17 = sub_259A81CD8();
  v177 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_259A81CB8();
  MEMORY[0x28223BE20](v20);
  v23 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 - 1) > 2)
  {
    v66 = sub_259A81C58();
    v67 = sub_259A81F68();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v184 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
      *(v68 + 12) = 2080;
      LODWORD(v183) = a4;
      type metadata accessor for SecureMobileAssetManifestStateEnum(0);
      v70 = sub_259A81EC8();
      v72 = sub_259A7AF28(v70, v71, &v184);

      *(v68 + 14) = v72;
      _os_log_impl(&dword_259A75000, v66, v67, "%s checkState=%s is invalid", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v69, -1, -1);
      MEMORY[0x259CAA9D0](v68, -1, -1);
    }

    sub_259A7C6FC();
    swift_allocError();
    *v73 = 10;
    goto LABEL_61;
  }

  v178 = a3;
  v170 = a4 - 1;
  v171 = a1;
  v181 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_log;
  *&v182 = v21;
  v24 = sub_259A81C58();
  v25 = sub_259A81F68();
  v26 = os_log_type_enabled(v24, v25);
  v180 = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v184 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
    _os_log_impl(&dword_259A75000, v24, v25, "%s Sending checkManifestForSelector request...", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x259CAA9D0](v28, -1, -1);
    v29 = v27;
    v13 = v180;
    MEMORY[0x259CAA9D0](v29, -1, -1);
  }

  v30 = *(v13 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v30 lock];
  v31 = sub_259A766DC(v179, v178);
  v32 = v12;
  if (v12)
  {
LABEL_58:
    [v30 unlock];
    v152 = v32;
    v153 = sub_259A81C58();
    v154 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v32);
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v184 = v157;
      *v155 = 136315394;
      *(v155 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
      *(v155 + 12) = 2112;
      v158 = v32;
      v159 = _swift_stdlib_bridgeErrorToNSError();
      *(v155 + 14) = v159;
      *v156 = v159;
      _os_log_impl(&dword_259A75000, v153, v154, "%s checkManifestForSelector request failed: %@", v155, 0x16u);
      sub_259A7C1B0(v156);
      MEMORY[0x259CAA9D0](v156, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v157);
      MEMORY[0x259CAA9D0](v157, -1, -1);
      MEMORY[0x259CAA9D0](v155, -1, -1);
    }

LABEL_61:
    swift_willThrow();
    return;
  }

  v169 = 0;
  v166 = a10;
  v167 = v30;
  v165 = a9;
  v172 = v31;
  sub_259A81F28();
  v34 = v173;
  v33 = v174;
  sub_259A7C4F4(v173, v174);
  sub_259A76B00(v34, v33);
  sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_259A81CA8();
  sub_259A81F28();
  sub_259A81C88();

  sub_259A81C98();
  v174 = v177[1];
  (v174)(v19, v17);
  v173 = sub_259A7CA0C(&qword_27F9E2190, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v35 = sub_259A81CC8();
  v37 = v36;
  v168 = *(v182 + 8);
  *&v182 = v182 + 8;
  v168(v23, v20);
  v177 = sub_259A7B954(v35, v37);

  v39 = v175;
  v38 = v176;
  sub_259A7C4F4(v175, v176);
  sub_259A76B00(v39, v38);
  sub_259A81CA8();
  sub_259A81F28();
  sub_259A81C88();

  sub_259A81C98();
  (v174)(v19, v17);
  v40 = sub_259A81CC8();
  v42 = v41;
  v168(v23, v20);
  v176 = sub_259A7B954(v40, v42);

  v44 = v165;
  v43 = v166;
  sub_259A7C4F4(v165, v166);
  sub_259A76B00(v44, v43);
  sub_259A81CA8();
  sub_259A81F28();
  sub_259A81C88();

  v45 = v172;

  sub_259A81C98();
  (v174)(v19, v17);
  v46 = sub_259A81CC8();
  v48 = v47;
  v168(v23, v20);
  v49 = sub_259A7B954(v46, v48);

  sub_259A81F28();
  sub_259A81F28();
  v50 = sub_259A81C58();
  v51 = sub_259A81F48();

  v52 = os_log_type_enabled(v50, v51);
  v175 = v49;
  if (v52)
  {
    LODWORD(v168) = v51;
    v174 = v50;
    v53 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v184 = v166;
    *v53 = 136315650;
    *(v53 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
    v173 = v53;
    *(v53 + 12) = 2080;
    v54 = *(v45 + 16);
    if (v54)
    {
      v55 = (v45 + 32);
      v56 = MEMORY[0x277D84F90];
      v182 = xmmword_259A82750;
      v57 = MEMORY[0x277D84BC0];
      do
      {
        v58 = *v55++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v59 = swift_allocObject();
        *(v59 + 16) = v182;
        *(v59 + 56) = MEMORY[0x277D84B78];
        *(v59 + 64) = v57;
        *(v59 + 32) = v58;
        v60 = sub_259A81E98();
        v62 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_259A7AD10(0, *(v56 + 2) + 1, 1, v56);
        }

        v64 = *(v56 + 2);
        v63 = *(v56 + 3);
        if (v64 >= v63 >> 1)
        {
          v56 = sub_259A7AD10((v63 > 1), v64 + 1, 1, v56);
        }

        *(v56 + 2) = v64 + 1;
        v65 = &v56[16 * v64];
        *(v65 + 4) = v60;
        *(v65 + 5) = v62;
        --v54;
      }

      while (v54);
    }

    else
    {
      v56 = MEMORY[0x277D84F90];
    }

    v45 = v172;

    v183 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
    v74 = sub_259A81E68();
    v76 = v75;

    v77 = sub_259A7AF28(v74, v76, &v184);

    v78 = v173;
    *(v173 + 14) = v77;
    *(v78 + 22) = 2080;
    *(v78 + 24) = sub_259A7AF28(v179, v178, &v184);
    v79 = v174;
    _os_log_impl(&dword_259A75000, v174, v168, "%s specifierDigest=%s (%s)", v78, 0x20u);
    v80 = v166;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v80, -1, -1);
    MEMORY[0x259CAA9D0](v78, -1, -1);

    v49 = v175;
  }

  else
  {
  }

  v81 = v177;

  v82 = sub_259A81C58();
  v83 = sub_259A81F48();

  v84 = os_log_type_enabled(v82, v83);
  v85 = v169;
  v86 = v176;
  if (v84)
  {
    LODWORD(v174) = v83;
    v179 = v82;
    v87 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v184 = v173;
    *v87 = 136315394;
    *(v87 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
    v178 = v87;
    *(v87 + 12) = 2080;
    v88 = *(v81 + 16);
    if (v88)
    {
      v89 = (v81 + 32);
      v90 = MEMORY[0x277D84F90];
      v182 = xmmword_259A82750;
      v91 = MEMORY[0x277D84BC0];
      do
      {
        v92 = *v89++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v93 = swift_allocObject();
        *(v93 + 16) = v182;
        *(v93 + 56) = MEMORY[0x277D84B78];
        *(v93 + 64) = v91;
        *(v93 + 32) = v92;
        v94 = sub_259A81E98();
        v96 = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_259A7AD10(0, *(v90 + 2) + 1, 1, v90);
        }

        v98 = *(v90 + 2);
        v97 = *(v90 + 3);
        if (v98 >= v97 >> 1)
        {
          v90 = sub_259A7AD10((v97 > 1), v98 + 1, 1, v90);
        }

        *(v90 + 2) = v98 + 1;
        v99 = &v90[16 * v98];
        *(v99 + 4) = v94;
        *(v99 + 5) = v96;
        --v88;
      }

      while (v88);
    }

    else
    {
      v90 = MEMORY[0x277D84F90];
    }

    v183 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
    v100 = sub_259A81E68();
    v102 = v101;

    v103 = sub_259A7AF28(v100, v102, &v184);

    v104 = v178;
    *(v178 + 14) = v103;
    v105 = v179;
    _os_log_impl(&dword_259A75000, v179, v174, "%s manifestHash=%s", v104, 0x16u);
    v106 = v173;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v106, -1, -1);
    MEMORY[0x259CAA9D0](v104, -1, -1);

    v85 = v169;
    v45 = v172;
    v86 = v176;
    v81 = v177;
    v49 = v175;
  }

  else
  {
  }

  v107 = sub_259A81C58();
  v108 = sub_259A81F48();

  if (os_log_type_enabled(v107, v108))
  {
    LODWORD(v174) = v108;
    v179 = v107;
    v109 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v184 = v173;
    *v109 = 136315394;
    *(v109 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
    v178 = v109;
    *(v109 + 12) = 2080;
    v110 = v86[2];
    if (v110)
    {
      v111 = (v86 + 4);
      v112 = MEMORY[0x277D84F90];
      v182 = xmmword_259A82750;
      v113 = MEMORY[0x277D84BC0];
      do
      {
        v114 = *v111++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v115 = swift_allocObject();
        *(v115 + 16) = v182;
        *(v115 + 56) = MEMORY[0x277D84B78];
        *(v115 + 64) = v113;
        *(v115 + 32) = v114;
        v116 = sub_259A81E98();
        v118 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_259A7AD10(0, *(v112 + 2) + 1, 1, v112);
        }

        v120 = *(v112 + 2);
        v119 = *(v112 + 3);
        if (v120 >= v119 >> 1)
        {
          v112 = sub_259A7AD10((v119 > 1), v120 + 1, 1, v112);
        }

        *(v112 + 2) = v120 + 1;
        v121 = &v112[16 * v120];
        *(v121 + 4) = v116;
        *(v121 + 5) = v118;
        --v110;
      }

      while (v110);
    }

    else
    {
      v112 = MEMORY[0x277D84F90];
    }

    v183 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
    v122 = sub_259A81E68();
    v124 = v123;

    v125 = sub_259A7AF28(v122, v124, &v184);

    v126 = v178;
    *(v178 + 14) = v125;
    v127 = v179;
    _os_log_impl(&dword_259A75000, v179, v174, "%s infoPlistHash=%s", v126, 0x16u);
    v128 = v173;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v128, -1, -1);
    MEMORY[0x259CAA9D0](v126, -1, -1);

    v85 = v169;
    v45 = v172;
    v86 = v176;
    v81 = v177;
    v49 = v175;
  }

  else
  {
  }

  v129 = sub_259A81C58();
  v130 = sub_259A81F48();

  if (os_log_type_enabled(v129, v130))
  {
    LODWORD(v174) = v130;
    v179 = v129;
    v131 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v184 = v173;
    *v131 = 136315394;
    *(v131 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
    v178 = v131;
    *(v131 + 12) = 2080;
    v132 = v49[2];
    if (v132)
    {
      v133 = (v49 + 4);
      v134 = MEMORY[0x277D84F90];
      v182 = xmmword_259A82750;
      v135 = MEMORY[0x277D84BC0];
      do
      {
        v136 = *v133++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
        v137 = swift_allocObject();
        *(v137 + 16) = v182;
        *(v137 + 56) = MEMORY[0x277D84B78];
        *(v137 + 64) = v135;
        *(v137 + 32) = v136;
        v138 = sub_259A81E98();
        v140 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_259A7AD10(0, *(v134 + 2) + 1, 1, v134);
        }

        v142 = *(v134 + 2);
        v141 = *(v134 + 3);
        if (v142 >= v141 >> 1)
        {
          v134 = sub_259A7AD10((v141 > 1), v142 + 1, 1, v134);
        }

        *(v134 + 2) = v142 + 1;
        v143 = &v134[16 * v142];
        *(v143 + 4) = v138;
        *(v143 + 5) = v140;
        --v132;
      }

      while (v132);
    }

    else
    {
      v134 = MEMORY[0x277D84F90];
    }

    v183 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
    sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
    v144 = sub_259A81E68();
    v146 = v145;

    v147 = sub_259A7AF28(v144, v146, &v184);

    v148 = v178;
    *(v178 + 14) = v147;
    v149 = v179;
    _os_log_impl(&dword_259A75000, v179, v174, "%s catalogHash=%s", v148, 0x16u);
    v150 = v173;
    swift_arrayDestroy();
    MEMORY[0x259CAA9D0](v150, -1, -1);
    MEMORY[0x259CAA9D0](v148, -1, -1);

    v85 = v169;
    v45 = v172;
    v86 = v176;
    v81 = v177;
    v49 = v175;
  }

  else
  {
  }

  v151 = sub_259A7CF10(v171, v45, v170, v81, v86, v49);
  v32 = v85;
  if (v85)
  {

    v30 = v167;
    goto LABEL_58;
  }

  v160 = v151;

  [v167 unlock];
  v161 = sub_259A81C58();
  v162 = sub_259A81F68();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v184 = v164;
    *v163 = 136315138;
    *(v163 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v184);
    _os_log_impl(&dword_259A75000, v161, v162, "%s checkManifestForSelector request succeeded.", v163, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v164);
    MEMORY[0x259CAA9D0](v164, -1, -1);
    MEMORY[0x259CAA9D0](v163, -1, -1);
  }

  *a11 = v160 & 1;
}

void sub_259A78EC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = v9;
  v73 = a1;
  v17 = sub_259A81C58();
  v18 = sub_259A81F68();
  v71 = a7;
  v72 = a8;
  v70 = a6;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = a2;
    v21 = swift_slowAlloc();
    v76 = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v76);
    _os_log_impl(&dword_259A75000, v17, v18, "%s Sending stageManifestForSelector request...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v22 = v21;
    a2 = v20;
    MEMORY[0x259CAA9D0](v22, -1, -1);
    MEMORY[0x259CAA9D0](v19, -1, -1);
  }

  v23 = *(v10 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v23 lock];
  v24 = sub_259A766DC(a2, a3);
  if (v75)
  {
    [v23 unlock];
    v49 = v75;
    v50 = sub_259A81C58();
    v51 = sub_259A81F58();
    MEMORY[0x259CAA8E0]();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v76 = v54;
      *v52 = 136315394;
      *(v52 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v76);
      *(v52 + 12) = 2112;
      v55 = v75;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 14) = v56;
      *v53 = v56;
      _os_log_impl(&dword_259A75000, v50, v51, "%s stageManifestForSelector request failed: %@", v52, 0x16u);
      sub_259A7C1B0(v53);
      MEMORY[0x259CAA9D0](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x259CAA9D0](v54, -1, -1);
      MEMORY[0x259CAA9D0](v52, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v25 = v24;
    sub_259A81F28();
    sub_259A81F28();
    v26 = sub_259A81C58();
    v27 = sub_259A81F48();

    v67 = v27;
    v68 = v23;
    if (os_log_type_enabled(v26, v27))
    {
      log = v26;
      v69 = a4;
      v66 = a5;
      v28 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v76 = v62;
      *v28 = 136315650;
      *(v28 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v76);
      v63 = v28;
      *(v28 + 12) = 2080;
      isa = v25[2].isa;
      v65 = v25;
      if (isa)
      {
        v30 = v25 + 4;
        v31 = MEMORY[0x277D84F90];
        v32 = MEMORY[0x277D84BC0];
        do
        {
          v33 = v30->isa;
          v30 = (v30 + 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_259A82750;
          *(v34 + 56) = MEMORY[0x277D84B78];
          *(v34 + 64) = v32;
          *(v34 + 32) = v33;
          v35 = sub_259A81E98();
          v37 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_259A7AD10(0, *(v31 + 2) + 1, 1, v31);
          }

          v39 = *(v31 + 2);
          v38 = *(v31 + 3);
          if (v39 >= v38 >> 1)
          {
            v31 = sub_259A7AD10((v38 > 1), v39 + 1, 1, v31);
          }

          *(v31 + 2) = v39 + 1;
          v40 = &v31[16 * v39];
          *(v40 + 4) = v35;
          *(v40 + 5) = v37;
          isa = (isa - 1);
        }

        while (isa);
      }

      v41 = v65;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
      sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
      v42 = sub_259A81E68();
      v44 = v43;

      v45 = sub_259A7AF28(v42, v44, &v76);

      *(v63 + 14) = v45;
      *(v63 + 22) = 2080;
      *(v63 + 24) = sub_259A7AF28(a2, a3, &v76);
      _os_log_impl(&dword_259A75000, log, v67, "%s specifierDigest=%s (%s)", v63, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v62, -1, -1);
      MEMORY[0x259CAA9D0](v63, -1, -1);

      a4 = v69;
      a5 = v66;
    }

    else
    {

      v41 = v25;
    }

    sub_259A7C4F4(a4, a5);
    v46 = sub_259A76B00(a4, a5);
    sub_259A7C4F4(v70, v71);
    v47 = sub_259A76B00(v70, v71);
    sub_259A7C4F4(v72, a9);
    v48 = sub_259A76B00(v72, a9);

    sub_259A7D4EC(v73, v41, v46, v47, v48);

    [v68 unlock];
    v57 = sub_259A81C58();
    v58 = sub_259A81F68();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v76 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v76);
      _os_log_impl(&dword_259A75000, v57, v58, "%s stageManifestForSelector request succeeded.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x259CAA9D0](v60, -1, -1);
      MEMORY[0x259CAA9D0](v59, -1, -1);
    }
  }
}

void sub_259A797D0(unint64_t a1, char *a2)
{
  v4 = v3;
  v5 = v2;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_259A81FE8())
  {
    v9 = *(a2 + 2);
    v10 = sub_259A81C58();
    v80 = i;
    if (i != v9)
    {
      v15 = sub_259A81F58();
      if (os_log_type_enabled(v10, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v92 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v92);
        _os_log_impl(&dword_259A75000, v10, v15, "%s commitStagedManifestForSelectors: fsTags and specifiers have unequal count", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x259CAA9D0](v17, -1, -1);
        MEMORY[0x259CAA9D0](v16, -1, -1);
      }

      sub_259A81F28();
      sub_259A81F28();
      v18 = sub_259A81C58();
      v19 = sub_259A81F48();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v92 = v21;
        *v20 = 136315650;
        *(v20 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v92);
        *(v20 + 12) = 2080;
        v22 = sub_259A7C764();
        v23 = MEMORY[0x259CAA470](a1, v22);
        v25 = sub_259A7AF28(v23, v24, &v92);

        *(v20 + 14) = v25;
        *(v20 + 22) = 2080;
        v26 = MEMORY[0x259CAA470](a2, MEMORY[0x277D837D0]);
        v28 = sub_259A7AF28(v26, v27, &v92);

        *(v20 + 24) = v28;
        _os_log_impl(&dword_259A75000, v18, v19, "%s commitStagedManifestForSelectors:\nfsTags=%s\nspecifiers=%s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259CAA9D0](v21, -1, -1);
        MEMORY[0x259CAA9D0](v20, -1, -1);
      }

      sub_259A7C6FC();
      swift_allocError();
      *v29 = 21;
LABEL_47:
      swift_willThrow();
      return;
    }

    v11 = sub_259A81F68();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v92 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v92);
      _os_log_impl(&dword_259A75000, v10, v11, "%s Sending commitStagedManifestForSelectors request...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x259CAA9D0](v13, -1, -1);
      MEMORY[0x259CAA9D0](v12, -1, -1);
    }

    v76 = *(v5 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
    [v76 lock];
    v14 = v7 ? sub_259A81FE8() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v5;
    v5 = v80;
    if (!v14)
    {
      break;
    }

    v30 = 0;
    v84 = a2 + 32;
    a2 = MEMORY[0x277D84F90];
    v78 = v14;
    v79 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x259CAA4F0](v30, a1);
      }

      else
      {
        if (v30 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v31 = *(a1 + 32 + 8 * v30);
      }

      v32 = v31;
      if (v30 == v5)
      {
        break;
      }

      v90 = a2;
      v33 = &v84[16 * v30];
      v34 = *v33;
      v35 = v33[1];
      sub_259A81F28();
      v36 = sub_259A766DC(v34, v35);
      if (v4)
      {
        v63 = v4;

        goto LABEL_44;
      }

      v37 = v36;
      v38 = v35;
      v39 = v14;
      v87 = v34;
      v85 = v38;

      v88 = [v32 unsignedIntValue];
      sub_259A81F28();
      sub_259A81F28();
      v91 = v37;
      v40 = sub_259A81C58();
      v41 = sub_259A81F48();

      v86 = v41;
      v89 = v32;
      if (os_log_type_enabled(v40, v41))
      {
        log = v40;
        v42 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v92 = v81;
        *v42 = 136315650;
        *(v42 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v92);
        v82 = v42;
        *(v42 + 12) = 2080;
        isa = v37[2].isa;
        if (isa)
        {
          v44 = v37 + 4;
          v45 = MEMORY[0x277D84F90];
          v46 = v85;
          do
          {
            v47 = v44->isa;
            v44 = (v44 + 1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_259A82750;
            *(v48 + 56) = MEMORY[0x277D84B78];
            *(v48 + 64) = MEMORY[0x277D84BC0];
            *(v48 + 32) = v47;
            v49 = sub_259A81E98();
            v51 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_259A7AD10(0, *(v45 + 2) + 1, 1, v45);
            }

            v53 = *(v45 + 2);
            v52 = *(v45 + 3);
            if (v53 >= v52 >> 1)
            {
              v45 = sub_259A7AD10((v52 > 1), v53 + 1, 1, v45);
            }

            *(v45 + 2) = v53 + 1;
            v54 = &v45[16 * v53];
            *(v54 + 4) = v49;
            *(v54 + 5) = v51;
            isa = (isa - 1);
          }

          while (isa);
        }

        else
        {
          v46 = v85;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
        sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
        v55 = sub_259A81E68();
        v57 = v56;

        v58 = sub_259A7AF28(v55, v57, &v92);

        *(v82 + 14) = v58;
        *(v82 + 22) = 2080;
        sub_259A81F28();
        v59 = sub_259A7AF28(v87, v46, &v92);

        *(v82 + 24) = v59;
        _os_log_impl(&dword_259A75000, log, v86, "%s specifierDigest=%s (%s)", v82, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259CAA9D0](v81, -1, -1);
        MEMORY[0x259CAA9D0](v82, -1, -1);

        v4 = 0;
        v7 = v79;
        v5 = v80;
        v14 = v78;
      }

      else
      {

        v14 = v39;
        v4 = 0;
      }

      a2 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_259A7AE1C(0, *(v90 + 2) + 1, 1, v90);
      }

      v61 = *(a2 + 2);
      v60 = *(a2 + 3);
      if (v61 >= v60 >> 1)
      {
        a2 = sub_259A7AE1C((v60 > 1), v61 + 1, 1, a2);
      }

      ++v30;

      *(a2 + 2) = v61 + 1;
      v62 = &a2[16 * v61];
      *(v62 + 8) = v88;
      *(v62 + 5) = v91;
      if (v30 == v14)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_41:

  sub_259A7DA9C(a2);
  v63 = v4;
  if (v4)
  {

LABEL_44:

    [v76 unlock];
    v64 = v63;
    v65 = sub_259A81C58();
    v66 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v63);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v92 = v69;
      *v67 = 136315394;
      *(v67 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v92);
      *(v67 + 12) = 2112;
      v70 = v63;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v71;
      *v68 = v71;
      _os_log_impl(&dword_259A75000, v65, v66, "%s commitStagedManifestForSelectors request failed: %@", v67, 0x16u);
      sub_259A7C1B0(v68);
      MEMORY[0x259CAA9D0](v68, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x259CAA9D0](v69, -1, -1);
      MEMORY[0x259CAA9D0](v67, -1, -1);
    }

    goto LABEL_47;
  }

  [v76 unlock];
  v72 = sub_259A81C58();
  v73 = sub_259A81F68();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v92 = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v92);
    _os_log_impl(&dword_259A75000, v72, v73, "%s commitStagedManifestForSelectors request succeeded.", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    MEMORY[0x259CAA9D0](v75, -1, -1);
    MEMORY[0x259CAA9D0](v74, -1, -1);
  }
}

void sub_259A7A428(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, void (*a5)(void, NSObject *), char *a6, const char *a7, ...)
{
  v12 = v7;
  v59 = a1;
  v13 = sub_259A81C58();
  v14 = sub_259A81F68();
  format = a6;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = v12;
    v17 = swift_slowAlloc();
    v63 = v17;
    *v15 = 136315138;
    *(v15 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v63);
    _os_log_impl(&dword_259A75000, v13, v14, a4, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v18 = v17;
    v12 = v16;
    MEMORY[0x259CAA9D0](v18, -1, -1);
    MEMORY[0x259CAA9D0](v15, -1, -1);
  }

  v19 = *(v12 + OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock);
  [v19 lock];
  v20 = sub_259A766DC(a2, a3);
  if (v8)
  {
    [v19 unlock];
    v41 = v8;
    v42 = sub_259A81C58();
    v43 = sub_259A81F58();
    MEMORY[0x259CAA8E0](v8);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = a7;
      v47 = swift_slowAlloc();
      v63 = v47;
      *v44 = 136315394;
      *(v44 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v63);
      *(v44 + 12) = 2112;
      v48 = v8;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v49;
      *v45 = v49;
      _os_log_impl(&dword_259A75000, v42, v43, v46, v44, 0x16u);
      sub_259A7C1B0(v45);
      MEMORY[0x259CAA9D0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x259CAA9D0](v47, -1, -1);
      MEMORY[0x259CAA9D0](v44, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v21 = v20;
    sub_259A81F28();
    sub_259A81F28();
    v22 = sub_259A81C58();
    v23 = sub_259A81F48();

    if (os_log_type_enabled(v22, v23))
    {
      log = v22;
      v24 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v24 = 136315650;
      *(v24 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v63);
      v55 = v24;
      *(v24 + 12) = 2080;
      isa = v21[2].isa;
      v57 = v19;
      if (isa)
      {
        v26 = v21 + 4;
        v27 = MEMORY[0x277D84F90];
        v28 = MEMORY[0x277D84BC0];
        do
        {
          v29 = v26->isa;
          v26 = (v26 + 1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2178, &unk_259A82790);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_259A82750;
          *(v30 + 56) = MEMORY[0x277D84B78];
          *(v30 + 64) = v28;
          *(v30 + 32) = v29;
          v31 = sub_259A81E98();
          v33 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_259A7AD10(0, *(v27 + 2) + 1, 1, v27);
          }

          v35 = *(v27 + 2);
          v34 = *(v27 + 3);
          if (v35 >= v34 >> 1)
          {
            v27 = sub_259A7AD10((v34 > 1), v35 + 1, 1, v27);
          }

          *(v27 + 2) = v35 + 1;
          v36 = &v27[16 * v35];
          *(v36 + 4) = v31;
          *(v36 + 5) = v33;
          isa = (isa - 1);
        }

        while (isa);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2158, &qword_259A82778);
      sub_259A7C8D8(&qword_27F9E2160, &qword_27F9E2158, &qword_259A82778, MEMORY[0x277D83958]);
      v37 = sub_259A81E68();
      v39 = v38;

      v40 = sub_259A7AF28(v37, v39, &v63);

      *(v55 + 14) = v40;
      *(v55 + 22) = 2080;
      *(v55 + 24) = sub_259A7AF28(a2, a3, &v63);
      _os_log_impl(&dword_259A75000, log, v23, "%s specifierDigest=%s (%s)", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259CAA9D0](v54, -1, -1);
      MEMORY[0x259CAA9D0](v55, -1, -1);

      v19 = v57;
    }

    else
    {
    }

    a5(v59, v21);

    [v19 unlock];
    v50 = sub_259A81C58();
    v51 = sub_259A81F68();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v63);
      _os_log_impl(&dword_259A75000, v50, v51, format, v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x259CAA9D0](v53, -1, -1);
      MEMORY[0x259CAA9D0](v52, -1, -1);
    }
  }
}

uint64_t sub_259A7AAF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_259A81E78();
  v11 = v10;
  v12 = a1;
  a6(a3, v9, v11);

  return 1;
}

id sub_259A7ABB8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_259A7AC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MobileAssetExclaveServicesManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_259A7AD10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2228, &qword_259A82828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_259A7AE1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2210, &qword_259A82818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_259A7AF28(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_259A81F28();
  v6 = sub_259A7AFF4(v11, 0, 0, 1, a1, a2);
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
    sub_259A7C9B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_259A7AFF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_259A7B100(a5, a6);
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
    result = sub_259A81FC8();
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

void *sub_259A7B100(uint64_t a1, unint64_t a2)
{
  v3 = sub_259A7B14C(a1, a2);
  sub_259A7B27C(&unk_286AB9368);
  return v3;
}

void *sub_259A7B14C(uint64_t a1, unint64_t a2)
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

  v6 = sub_259A7B368(v5, 0);
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

  result = sub_259A81FC8();
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
        v10 = sub_259A81EF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_259A7B368(v10, 0);
        result = sub_259A81F98();
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

uint64_t sub_259A7B27C(uint64_t result)
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

  result = sub_259A7B3DC(result, v11, 1, v3);
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

void *sub_259A7B368(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_259A7B3DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE *sub_259A7B4D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_259A7C260(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_259A7C318(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_259A7C394(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_259A7B564(uint64_t a1, uint64_t a2)
{
  sub_259A82068();
  sub_259A81ED8();
  v4 = sub_259A82088();

  return sub_259A7B5DC(a1, a2, v4);
}

unint64_t sub_259A7B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_259A82018())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_259A7B694(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_259A81CD8();
      sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_259A81C88();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_259A7B874(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_259A7B874(v5, v6);
  }

  sub_259A81CD8();
  sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_259A81C88();
}

uint64_t sub_259A7B874(uint64_t a1, uint64_t a2)
{
  result = sub_259A81BB8();
  if (!result || (result = sub_259A81BD8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_259A81BC8();
      sub_259A81CD8();
      sub_259A7CA0C(&qword_27F9E2188, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_259A81C88();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_259A7B954(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = result + a2 + 32;
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

id sub_259A7BABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_259A81C78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v47 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_log;
  sub_259A81C68();
  v16 = OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_lock;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v18 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();

    v20 = *(v5 + 16);
    v49 = v16;
    if (exclaveCapability)
    {
      v20(v14, &v3[v15], v4);
      v21 = sub_259A81C58();
      v22 = sub_259A81F68();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v46 = v15;
        v25 = v5;
        v26 = v24;
        v51 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v51);
        _os_log_impl(&dword_259A75000, v21, v22, "%s Starting com.apple.mobileasset.conclave...", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        v27 = v26;
        v5 = v25;
        v15 = v46;
        MEMORY[0x259CAA9D0](v27, -1, -1);
        MEMORY[0x259CAA9D0](v23, -1, -1);
      }

      v28 = *(v5 + 8);
      v28(v14, v4);
      type metadata accessor for MAExclaveManifestStorageService.Service();
      sub_259A7CA0C(&qword_27F9E2250, type metadata accessor for MAExclaveManifestStorageService.Service, &unk_259A829F8);
      sub_259A81E48();
      *&v3[OBJC_IVAR____TtC24SecureMobileAssetExclave33MobileAssetExclaveServicesManager_tbClient] = v51;
      v35 = &v3[v15];
      v36 = v47;
      v20(v47, v35, v4);
      v37 = sub_259A81C58();
      v38 = sub_259A81F68();
      if (os_log_type_enabled(v37, v38))
      {
        v40 = v36;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v51 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v51);
        _os_log_impl(&dword_259A75000, v37, v38, "%s Successfully started com.apple.mobileasset.conclave", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x259CAA9D0](v42, -1, -1);
        MEMORY[0x259CAA9D0](v41, -1, -1);

        v43 = v40;
      }

      else
      {

        v43 = v36;
      }

      v28(v43, v4);
      v44 = type metadata accessor for MobileAssetExclaveServicesManager(0);
      v50.receiver = v3;
      v50.super_class = v44;
      return objc_msgSendSuper2(&v50, sel_init);
    }

    else
    {
      v29 = v15;
      v20(v10, &v3[v15], v4);
      v30 = sub_259A81C58();
      v31 = sub_259A81F68();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v51 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_259A7AF28(0x5D414D535BLL, 0xE500000000000000, &v51);
        _os_log_impl(&dword_259A75000, v30, v31, "%s Exclaves not supported", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x259CAA9D0](v33, -1, -1);
        MEMORY[0x259CAA9D0](v32, -1, -1);
      }

      v34 = *(v5 + 8);
      v34(v10, v4);
      v34(&v3[v29], v4);

      type metadata accessor for MobileAssetExclaveServicesManager(0);
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_259A7C1B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2148, &qword_259A82770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_259A7C260(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_259A7C318(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_259A81BE8();
  swift_allocObject();
  result = sub_259A81BA8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_259A81C18();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_259A7C394(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_259A81BE8();
  swift_allocObject();
  result = sub_259A81BA8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_259A7C418(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2240, &unk_259A82840);
  v10 = sub_259A7C8D8(&qword_27F9E2248, &qword_27F9E2240, &unk_259A82840, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);
  sub_259A81F28();
  sub_259A7B4D0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_259A7C4F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_259A7C590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2238, &qword_259A82838);
    v3 = sub_259A81FF8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_259A81F28();
      sub_259A7C4F4(v7, v8);
      result = sub_259A7B564(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_259A7C6A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_259A7C6FC()
{
  result = qword_27F9E2180;
  if (!qword_27F9E2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2180);
  }

  return result;
}

unint64_t sub_259A7C764()
{
  result = qword_27F9E2198;
  if (!qword_27F9E2198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9E2198);
  }

  return result;
}

uint64_t type metadata accessor for MobileAssetExclaveServicesManager(uint64_t a1)
{
  result = qword_28154B0F8;
  if (!qword_28154B0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_259A7C804(uint64_t a1, uint64_t a2)
{
  result = sub_259A81C78();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_259A7C8B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_259A7C6A8(result, a2);
  }

  return result;
}

_OWORD *sub_259A7C8C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_259A7C8D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_259A7C9B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_259A7CA0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_259A7CA68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_259A7CAB4()
{
  v0 = sub_259A81D58();
  v33 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_259A81DC8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_259A81DE8();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = v36;
  sub_259A81E08();
  if (v15)
  {
    v26 = v38;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
    swift_allocError();
    *v19 = v26;
  }

  else
  {
    v32 = v2;
    v36 = v0;
    v16 = v34;
    v17 = *(v35 + 32);
    v35 += 32;
    v18 = v17;
    v17(v12, v14, v34);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A81DB8();
    sub_259A81E18();
    v18(v12, v9, v16);
    v21 = v32;
    v22 = sub_259A81D48();
    v23 = sub_259A81410(v22);
    v26 = v23;
    v27 = v36;
    v28 = v33;
    if (v25)
    {
      v37 = v23;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v29 = v26;
    }

    else
    {
      v30 = v24;
      sub_259A81F28();
      sub_259A81F28();
      sub_259A81A68(v26, v30, 0);
    }

    (*(v28 + 8))(v21, v27);
  }

  return v26;
}

uint64_t sub_259A7CF10(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v42 = a3;
  LODWORD(v46) = a1;
  v7 = sub_259A81D58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_259A81DC8();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v11 = sub_259A81DE8();
  v45 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v41 = &v37 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = 0;
  while (v22 != 32)
  {
    v23 = *(a2 + 16);
    v24 = v22 >= v23;
    if (v22 == v23)
    {
      break;
    }

    ++v22;
    if (v24)
    {
      __break(1u);
      break;
    }
  }

  v39 = v8;
  if (__OFADD__(v22 + 16, sub_259A81588(v48, v49, v50)))
  {
    __break(1u);
  }

  else
  {
    v38 = v7;
    v25 = v47;
    sub_259A81E08();
    if (v25)
    {
      v26 = v52;
      type metadata accessor for TransportError(0);
      sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
      swift_allocError();
      *v27 = v26;
      return v21 & 1;
    }

    v47 = v14;
    v28 = v11;
    v29 = *(v45 + 32);
    v29(v19, v21, v28);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v46, a2);
    v45 = v28;
    v46 = v29;
    sub_259A81D98();
    sub_259A7EE7C(v48, v49, v50);
    sub_259A81DB8();
    v31 = v41;
    sub_259A81E18();
    v46(v19, v31, v45);
    v32 = v40;
    sub_259A81D48();
    v33 = sub_259A81D08();
    if (!v33)
    {
      LOBYTE(v21) = sub_259A81CE8();
      (*(v39 + 8))(v32, v38);
      return v21 & 1;
    }

    v34 = v38;
    if (v33 == 1)
    {
      v35 = sub_259A81324();
      v51 = v35;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      LOBYTE(v21) = swift_allocError();
      *v36 = v35;
      (*(v39 + 8))(v32, v34);
      return v21 & 1;
    }
  }

  result = sub_259A81FD8();
  __break(1u);
  return result;
}

uint64_t sub_259A7D4EC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v43 = a1;
  v7 = sub_259A81D58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_259A81DC8();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v11 = sub_259A81DE8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v22 = &v36 - v21;
  v23 = 0;
  while (v23 != 32)
  {
    v24 = *(a2 + 16);
    v25 = v23 >= v24;
    if (v23 == v24)
    {
      break;
    }

    ++v23;
    if (v25)
    {
      __break(1u);
      break;
    }
  }

  v39 = v20;
  v40 = v19;
  v44 = v18;
  v37 = v8;
  if (__OFADD__(v23 + 12, sub_259A81608(v45, v46, v47)))
  {
    __break(1u);
  }

  else
  {
    v36 = v7;
    sub_259A81E08();
    if (v5)
    {
      v26 = v49;
      type metadata accessor for TransportError(0);
      sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
      result = swift_allocError();
      *v28 = v26;
      return result;
    }

    v29 = *(v12 + 32);
    v29(v17, v22, v44);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v43, a2);
    sub_259A7F148(v45, v46, v47);
    sub_259A81DB8();
    v30 = v40;
    sub_259A81E18();
    v29(v17, v30, v44);
    v31 = v38;
    sub_259A81D48();
    v32 = sub_259A81D08();
    if (!v32)
    {
      return (*(v37 + 8))(v31, v36);
    }

    v33 = v36;
    if (v32 == 1)
    {
      v34 = sub_259A81324();
      v48 = v34;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v35 = v34;
      return (*(v37 + 8))(v31, v33);
    }
  }

  result = sub_259A81FD8();
  __break(1u);
  return result;
}

uint64_t sub_259A7DA9C(uint64_t a1)
{
  v3 = sub_259A81D58();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_259A81DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v52 = sub_259A81DE8();
  v6 = MEMORY[0x28223BE20](v52);
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  MEMORY[0x28223BE20](v8);
  v15 = &v44 - v14;
  v16 = 0;
  v17 = 0;
  v18 = *(a1 + 16);
  v19 = a1 + 32;
LABEL_3:
  if (v16 == v18)
  {
    goto LABEL_10;
  }

  v22 = 0;
  v23 = v16 + 1;
  v24 = *(v19 + 16 * v16 + 8);
  do
  {
    if (v22 == 32 || (v25 = *(v24 + 16), v26 = v22 >= v25, v22 == v25))
    {
      v20 = v22 + 4;
      v16 = v23;
      v21 = __OFADD__(v17, v20);
      v17 += v20;
      if (v21)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      goto LABEL_3;
    }

    ++v22;
  }

  while (!v26);
  __break(1u);
LABEL_10:
  v21 = __OFADD__(v17, 8);
  v27 = v17 + 8;
  if (v21)
  {
    goto LABEL_26;
  }

  if (__OFADD__(v27, 8))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = v13;
  v49 = v12;
  v28 = v11;
  sub_259A81E08();
  if (v1)
  {
    goto LABEL_20;
  }

  v29 = *(v28 + 32);
  v46 = v28 + 32;
  v47 = 0;
  v44 = v3;
  v45 = v29;
  v29(v10, v15, v52);
  sub_259A81DD8();
  sub_259A81DA8();
  sub_259A81DA8();
  if (v18)
  {
    v30 = 0;
    while (1)
    {
      v15 = *(v19 + 16 * v30 + 8);
      sub_259A81F28();
      sub_259A81D98();
      if (*(v15 + 2) != 32)
      {
        break;
      }

      ++v30;
      for (i = 32; i != 64; ++i)
      {
        sub_259A81D88();
      }

      if (v30 == v18)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v53 = *(v15 + 2);
    v43 = sub_259A82008();
    MEMORY[0x259CAA420](v43);

    while (1)
    {
LABEL_29:
      sub_259A81FD8();
      __break(1u);
    }
  }

LABEL_19:
  sub_259A81DB8();
  v32 = v49;
  v33 = v47;
  sub_259A81E18();
  if (v33)
  {
LABEL_20:
    v34 = v56;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
    result = swift_allocError();
    *v36 = v34;
  }

  else
  {
    v45(v10, v32, v52);
    v37 = v51;
    sub_259A81D48();
    v38 = sub_259A81D08();
    if (v38)
    {
      v39 = v44;
      v40 = v50;
      if (v38 != 1)
      {
        goto LABEL_29;
      }

      v41 = sub_259A81324();
      LOBYTE(v54) = v41;
      sub_259A7C6FC();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v42 = v41;
      return (*(v40 + 8))(v37, v39);
    }

    else
    {
      return (*(v50 + 8))(v37, v44);
    }
  }

  return result;
}

uint64_t sub_259A7E0B4(unsigned int a1, uint64_t a2)
{
  v43 = a1;
  v4 = sub_259A81D58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_259A81DC8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = sub_259A81DE8();
  v8 = MEMORY[0x28223BE20](v42);
  v9 = MEMORY[0x28223BE20](v8);
  v39 = &v34 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v17 = 0;
  while (v17 != 32)
  {
    v18 = *(a2 + 16);
    v19 = v17 >= v18;
    if (v17 == v18)
    {
      break;
    }

    ++v17;
    if (v19)
    {
      __break(1u);
      break;
    }
  }

  v20 = v14;
  v36 = v4;
  v37 = v5;
  sub_259A81E08();
  if (v2)
  {
    v21 = v45;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
    result = swift_allocError();
    *v23 = v21;
  }

  else
  {
    v24 = v16;
    v25 = v42;
    v35 = *(v20 + 32);
    v35(v13, v24, v42);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v43, a2);
    v26 = v25;
    v27 = v35;
    sub_259A81DB8();
    v28 = v39;
    sub_259A81E18();
    v27(v13, v28, v26);
    v29 = v38;
    sub_259A81D48();
    v30 = sub_259A81D08();
    if (v30)
    {
      v31 = v37;
      if (v30 == 1)
      {
        v32 = sub_259A81324();
        v44 = v32;
        sub_259A7C6FC();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v33 = v32;
        return (*(v31 + 8))(v29, v36);
      }

      else
      {
        result = sub_259A81FD8();
        __break(1u);
      }
    }

    else
    {
      return (*(v37 + 8))(v29, v36);
    }
  }

  return result;
}

uint64_t sub_259A7E630(unsigned int a1, uint64_t a2)
{
  v43 = a1;
  v4 = sub_259A81D58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_259A81DC8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = sub_259A81DE8();
  v8 = MEMORY[0x28223BE20](v42);
  v9 = MEMORY[0x28223BE20](v8);
  v39 = &v34 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v17 = 0;
  while (v17 != 32)
  {
    v18 = *(a2 + 16);
    v19 = v17 >= v18;
    if (v17 == v18)
    {
      break;
    }

    ++v17;
    if (v19)
    {
      __break(1u);
      break;
    }
  }

  v20 = v14;
  v36 = v4;
  v37 = v5;
  sub_259A81E08();
  if (v2)
  {
    v21 = v45;
    type metadata accessor for TransportError(0);
    sub_259A81AA8(&unk_27F9E2350, 255, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
    result = swift_allocError();
    *v23 = v21;
  }

  else
  {
    v24 = v16;
    v25 = v42;
    v35 = *(v20 + 32);
    v35(v13, v24, v42);
    sub_259A81DD8();
    sub_259A81DA8();
    sub_259A7ED4C(v43, a2);
    v26 = v25;
    v27 = v35;
    sub_259A81DB8();
    v28 = v39;
    sub_259A81E18();
    v27(v13, v28, v26);
    v29 = v38;
    sub_259A81D48();
    v30 = sub_259A81D08();
    if (v30)
    {
      v31 = v37;
      if (v30 == 1)
      {
        v32 = sub_259A81324();
        v44 = v32;
        sub_259A7C6FC();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v33 = v32;
        return (*(v31 + 8))(v29, v36);
      }

      else
      {
        result = sub_259A81FD8();
        __break(1u);
      }
    }

    else
    {
      return (*(v37 + 8))(v29, v36);
    }
  }

  return result;
}

uint64_t sub_259A7EBD0()
{
  sub_259A82068();
  sub_259A82078();
  return sub_259A82088();
}

uint64_t sub_259A7EC58(uint64_t a1)
{
  sub_259A82068();
  sub_259A82078();
  return sub_259A82088();
}

uint64_t sub_259A7ECA4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_259A8122C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_259A7ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_259A80EC8();
  v5 = sub_259A80F1C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_259A7ED4C(uint64_t a1, uint64_t a2)
{
  sub_259A81D98();
  if (*(a2 + 16) == 32)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      result = sub_259A81D88();
      v3 = v4;
    }

    while (v4 != 32);
  }

  else
  {
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v6 = sub_259A82008();
    MEMORY[0x259CAA420](v6);

    result = sub_259A81FD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_259A7EE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != 32)
  {
    goto LABEL_11;
  }

  v5 = 0;
  do
  {
    v6 = v5 + 1;
    sub_259A81D88();
    v5 = v6;
  }

  while (v6 != 32);
  if (*(a2 + 16) != 32)
  {
    goto LABEL_11;
  }

  v7 = 0;
  do
  {
    v8 = v7 + 1;
    sub_259A81D88();
    v7 = v8;
  }

  while (v8 != 32);
  if (*(a3 + 16) == 32)
  {
    v9 = 0;
    do
    {
      v10 = v9 + 1;
      result = sub_259A81D88();
      v9 = v10;
    }

    while (v10 != 32);
  }

  else
  {
LABEL_11:
    sub_259A81FA8();
    MEMORY[0x259CAA420](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259CAA420](0xD000000000000037, 0x8000000259A83060);
    v12 = sub_259A82008();
    MEMORY[0x259CAA420](v12);

    result = sub_259A81FD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_259A7F148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  sub_259A81DA8();
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      ++v7;
      sub_259A81D88();
      --v6;
    }

    while (v6);
  }

  v8 = *(a2 + 16);
  sub_259A81DA8();
  if (v8)
  {
    v9 = a2 + 32;
    do
    {
      ++v9;
      sub_259A81D88();
      --v8;
    }

    while (v8);
  }

  v10 = *(a3 + 16);
  result = sub_259A81DA8();
  if (v10)
  {
    v12 = a3 + 32;
    do
    {
      ++v12;
      result = sub_259A81D88();
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_259A7F1F4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_259A7F22C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_259A81DF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  sub_259A81E38();
  swift_allocObject();
  v9 = sub_259A81E28();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_259A7F35C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a2;
  v5 = v3;
  v112 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2340, &qword_259A82A60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v109 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v109 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v109 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v111 = &v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v109 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v109 - v25;
  v27 = sub_259A81DC8();
  v116 = *(v27 - 8);
  v117 = v26;
  v28 = *(v116 + 56);
  v118 = v27;
  v113 = v28;
  v114 = v116 + 56;
  (v28)(v26, 1, 1);
  v119 = a1;
  v29 = sub_259A81654();
  if (v29 > 2)
  {
    if (v29 == 3)
    {
      v52 = v119;
      v53 = sub_259A81D18();
      MEMORY[0x28223BE20](v53);
      v107 = v52;
      v54 = sub_259A808A8(sub_259A81B90, (&v109 - 4), 0, 32);
      v55 = v5[6];
      v56 = v5[7];
      __swift_project_boxed_opaque_existential_1(v5 + 3, v55);
      (*(v56 + 48))(v53, v54, v55, v56);
      v40 = v117;
      if (v4)
      {
        v121 = v4;
        v57 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CAA8E0](v121);
          v108 = 0;
          v107 = 387;
          goto LABEL_86;
        }

        MEMORY[0x259CAA8E0](v4);

        v58 = v120;
        MEMORY[0x259CAA8E0](v121);
      }

      else
      {

        v58 = 23;
      }

      sub_259A81D38();
      v119 = 0;
      v82 = v118;
      v113(v10, 0, 1, v118);
      v83 = *(v116 + 48);
      if (v83(v40, 1, v82) != 1)
      {
        sub_259A817F8(v40);
      }

      sub_259A81860(v10, v40);
      if (v83(v40, 1, v82))
      {
        goto LABEL_68;
      }

LABEL_64:
      if (v58 == 23)
      {
LABEL_65:
        sub_259A81D88();
        goto LABEL_68;
      }

LABEL_67:
      sub_259A81D88();
      sub_259A81D78();
      goto LABEL_68;
    }

    if (v29 != 4)
    {
      v64 = v119;
      v65 = sub_259A81D18();
      LODWORD(v111) = v65;
      MEMORY[0x28223BE20](v65);
      v110 = sub_259A808A8(sub_259A81B90, (&v109 - 4), 0, 32);
      v66 = sub_259A81D28();
      MEMORY[0x28223BE20](v66);
      v68 = sub_259A80724(sub_259A81B90, (&v109 - 4), 0, v67);
      v69 = sub_259A81D28();
      MEMORY[0x28223BE20](v69);
      v71 = sub_259A80724(sub_259A81944, (&v109 - 4), 0, v70);
      v72 = sub_259A81D28();
      MEMORY[0x28223BE20](v72);
      v107 = v64;
      v74 = sub_259A80724(sub_259A81B90, (&v109 - 4), 0, v73);
      v76 = v5[6];
      v75 = v5[7];
      v77 = v5 + 3;
      v78 = v110;
      __swift_project_boxed_opaque_existential_1(v77, v76);
      (*(v75 + 24))(v111, v78, v68, v71, v74, v76, v75);
      if (v4)
      {
        v121 = v4;
        v79 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
        v80 = swift_dynamicCast();
        v40 = v117;
        if (!v80)
        {
          MEMORY[0x259CAA8E0](v121);
          v108 = 0;
          v107 = 346;
          goto LABEL_86;
        }

        MEMORY[0x259CAA8E0](v4);

        v81 = v120;
        MEMORY[0x259CAA8E0](v121);
      }

      else
      {

        v81 = 23;
        v40 = v117;
      }

      sub_259A81D38();
      v119 = 0;
      v99 = v118;
      v113(v19, 0, 1, v118);
      v83 = *(v116 + 48);
      if (v83(v40, 1, v99) != 1)
      {
        sub_259A817F8(v40);
      }

      sub_259A81860(v19, v40);
      v82 = v118;
      if (v83(v40, 1, v118))
      {
        goto LABEL_68;
      }

      if (v81 == 23)
      {
        goto LABEL_65;
      }

      goto LABEL_67;
    }

    v35 = v5[6];
    v36 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v35);
    v37 = (*(v36 + 8))(v35, v36);
    v39 = v4;
    v40 = v117;
    if (v4)
    {
      v121 = v4;
      v41 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
      if (swift_dynamicCast())
      {
        MEMORY[0x259CAA8E0](v4);
        v42 = v120;
        MEMORY[0x259CAA8E0](v121);
        v43 = 0;
        goto LABEL_43;
      }

LABEL_82:
      MEMORY[0x259CAA8E0](v121);
      v108 = 0;
      v107 = 311;
      goto LABEL_86;
    }

    v42 = v37;
    v43 = v38;
    v90 = *(v37 + 16);
    v91 = v90 + 8;
    v92 = __OFADD__(v90, 8);
    sub_259A81F28();
    sub_259A81F28();
    if (v92)
    {
      __break(1u);
    }

    else
    {
      v93 = *(v43 + 16);
      v94 = __OFADD__(v93, 8);
      v95 = v93 + 8;
      if (!v94)
      {
        v96 = v91 + v95;
        if (!__OFADD__(v91, v95))
        {
          sub_259A81A68(v42, v43, 0);
          if (!__OFADD__(v96, 1))
          {
LABEL_43:
            sub_259A81D38();
            v119 = 0;
            v82 = v118;
            v113(v24, 0, 1, v118);
            v83 = *(v116 + 48);
            if (v83(v40, 1, v82) != 1)
            {
              sub_259A817F8(v40);
            }

            sub_259A81860(v24, v40);
            if (!v83(v40, 1, v82))
            {
              if (!v39)
              {
                sub_259A81D88();
                v105 = v119;
                v106 = sub_259A80F70(v42, v43);
                if (v105)
                {
                  LODWORD(v34) = v106;
                  sub_259A81A68(v42, v43, 0);
                  result = (v83)(v40, 1, v118);
                  if (result != 1)
                  {
                    result = sub_259A817F8(v40);
                  }

                  goto LABEL_56;
                }

                v119 = 0;
                sub_259A81A68(v42, v43, 0);
                v82 = v118;
                goto LABEL_68;
              }

              goto LABEL_67;
            }

            sub_259A81A68(v42, v43, v39 != 0);
            goto LABEL_68;
          }

          goto LABEL_81;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }
    }

    __break(1u);
    goto LABEL_80;
  }

  if (!v29)
  {
    v44 = v119;
    v45 = sub_259A81D18();
    MEMORY[0x28223BE20](v45);
    v107 = v44;
    v46 = sub_259A808A8(sub_259A81B90, (&v109 - 4), 0, 32);
    v47 = v5[6];
    v48 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v47);
    (*(v48 + 40))(v45, v46, v47, v48);
    if (!v4)
    {

      v51 = 23;
      v40 = v117;
LABEL_25:
      sub_259A81D38();
      v119 = 0;
      v82 = v118;
      v113(v13, 0, 1, v118);
      v83 = *(v116 + 48);
      if (v83(v40, 1, v82) != 1)
      {
        sub_259A817F8(v40);
      }

      sub_259A81860(v13, v40);
      if (v83(v40, 1, v82))
      {
        goto LABEL_68;
      }

      if (v51 == 23)
      {
        goto LABEL_65;
      }

      goto LABEL_67;
    }

    v121 = v4;
    v49 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2348, &qword_259A82A68);
    v50 = swift_dynamicCast();
    v40 = v117;
    if (v50)
    {
      MEMORY[0x259CAA8E0](v4);

      v51 = v120;
      MEMORY[0x259CAA8E0](v121);
      goto LABEL_25;
    }

    MEMORY[0x259CAA8E0](v121);
    v108 = 0;
    v107 = 374;
LABEL_86:
    result = sub_259A81FD8();
    __break(1u);
    return result;
  }

  if (v29 == 1)
  {
    v30 = v119;
    v31 = sub_259A81D18();
    MEMORY[0x28223BE20](v31);
    v107 = v30;
    v32 = sub_259A808A8(sub_259A81B90, (&v109 - 4), 0, 32);
    v33 = sub_259A81980();
    v34 = v33;
    if (v4)
    {

LABEL_18:
      v61 = v117;
      if ((*(v116 + 48))(v117, 1, v118) != 1)
      {
        sub_259A817F8(v61);
      }

      v62 = sub_259A81D58();
      result = (*(*(v62 - 8) + 8))(v30, v62);
LABEL_56:
      *v115 = v34;
      return result;
    }

    MEMORY[0x28223BE20](v33);
    v110 = sub_259A808A8(sub_259A81B90, (&v109 - 4), 0, 32);
    MEMORY[0x28223BE20](v110);
    v109 = sub_259A808A8(sub_259A81B90, (&v109 - 4), 0, 32);
    MEMORY[0x28223BE20](v109);
    v107 = v30;
    v84 = sub_259A808A8(sub_259A81B90, (&v109 - 4), 0, 32);
    v85 = v31;
    v86 = v5[6];
    v87 = v5[7];
    v88 = v5 + 3;
    v89 = v110;
    __swift_project_boxed_opaque_existential_1(v88, v86);
    (*(v87 + 16))(v85, v32, v34, v89, v109, v84, v86, v87);

    v100 = v111;
    sub_259A81D38();
    v119 = 0;
    v82 = v118;
    v113(v100, 0, 1, v118);
    v40 = v117;
    v83 = *(v116 + 48);
    if (v83(v117, 1, v82) != 1)
    {
      sub_259A817F8(v40);
    }

    sub_259A81860(v100, v40);
    if (!v83(v40, 1, v82))
    {
      sub_259A81D88();
      sub_259A81D68();
    }

    goto LABEL_68;
  }

  v30 = v119;
  v59 = sub_259A81D28();
  MEMORY[0x28223BE20](v59);
  v107 = v30;
  v34 = sub_259A80A1C(sub_259A818D0, (&v109 - 4), 0, v60);
  if (v4)
  {
    goto LABEL_18;
  }

  v97 = v5[6];
  v98 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v97);
  (*(v98 + 32))(v34, v97, v98);
  v40 = v117;

  v58 = 23;
  sub_259A81D38();
  v119 = 0;
  v82 = v118;
  v113(v16, 0, 1, v118);
  v83 = *(v116 + 48);
  if (v83(v40, 1, v82) != 1)
  {
    sub_259A817F8(v40);
  }

  sub_259A81860(v16, v40);
  if (!v83(v40, 1, v82))
  {
    goto LABEL_64;
  }

LABEL_68:
  v101 = (v83)(v40, 1, v82);
  v102 = v101;
  if (v101 == 1)
  {
    v103 = v112;
  }

  else
  {
    v103 = v112;
    if (v101)
    {
      sub_259A817F8(v40);
      v102 = 1;
    }

    else
    {
      sub_259A81DB8();
    }
  }

  v104 = sub_259A81DE8();
  return (*(*(v104 - 8) + 56))(v103, v102, 1, v104);
}

uint64_t sub_259A80724(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    sub_259A80FEC(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          sub_259A80FEC((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_259A808A8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_259A80FEC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_259A80FEC((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

char *sub_259A80A1C(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v21 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v25 = MEMORY[0x277D84F90];
    result = sub_259A8100C(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v25;
      v10 = v5 - v6;
      if (v5 < v6)
      {
        v10 = 0;
      }

      v19 = v10 + 1;
      v20 = v6;
      v18 = v7;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v23 = v6 + v9;
        result = (v21)(v24, &v23, &v22);
        if (v4)
        {

          return v22;
        }

        v12 = v5;
        v13 = v24[0];
        v14 = v24[1];
        v25 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_259A8100C((v15 > 1), v16 + 1, 1);
          v8 = v25;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v5 = v12;
        v6 = v20;
        if (v5 < v20)
        {
          goto LABEL_21;
        }

        if (v19 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v18)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_259A80BB4()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_259A80BF4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_259A7F35C(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAStorageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAStorageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_259A80E2C()
{
  result = qword_27F9E2320;
  if (!qword_27F9E2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2320);
  }

  return result;
}

unint64_t sub_259A80EC8()
{
  result = qword_27F9E2330;
  if (!qword_27F9E2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2330);
  }

  return result;
}

unint64_t sub_259A80F1C()
{
  result = qword_27F9E2338;
  if (!qword_27F9E2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9E2338);
  }

  return result;
}

uint64_t sub_259A80F70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  sub_259A81DA8();
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      ++v5;
      sub_259A81D88();
      --v4;
    }

    while (v4);
  }

  v6 = *(a2 + 16);
  result = sub_259A81DA8();
  if (v6)
  {
    v8 = a2 + 32;
    do
    {
      ++v8;
      result = sub_259A81D88();
      --v6;
    }

    while (v6);
  }

  return result;
}

char *sub_259A80FEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_259A8102C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_259A8100C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_259A81120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_259A8102C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2218, &qword_259A82820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_259A81120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2210, &qword_259A82818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_259A8122C(int a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 31:
    case 32:
    case 33:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
      goto LABEL_5;
    case 5:
      result = 3;
      break;
    case 9:
      result = 4;
      break;
    case 12:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 17:
      result = 7;
      break;
    case 20:
      result = 8;
      break;
    case 21:
      result = 9;
      break;
    case 22:
      result = 10;
      break;
    case 28:
      result = 11;
      break;
    case 30:
      result = 12;
      break;
    case 34:
      result = 13;
      break;
    case 35:
      result = 14;
      break;
    case 45:
      result = 15;
      break;
    case 55:
      result = 16;
      break;
    case 63:
      result = 17;
      break;
    case 70:
      result = 18;
      break;
    case 80:
      result = 19;
      break;
    case 128:
      result = 20;
      break;
    case 129:
      result = 21;
      break;
    default:
      if (a1 == 9999)
      {
        result = 22;
      }

      else
      {
LABEL_5:
        result = 23;
      }

      break;
  }

  return result;
}

uint64_t sub_259A81324()
{
  v0 = sub_259A81CF8();
  result = sub_259A8122C(v0);
  if (result == 23)
  {
    sub_259A81FA8();

    v2 = sub_259A82008();
    MEMORY[0x259CAA420](v2);

    result = sub_259A81FD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_259A81410(uint64_t a1)
{
  v3 = sub_259A81D08();
  if (v3 == 1)
  {
    LODWORD(result) = sub_259A81324();
    if (v2)
    {
      return result;
    }

    else
    {
      return result;
    }
  }

  else if (v3)
  {
    result = sub_259A81FD8();
    __break(1u);
  }

  else
  {
    v5 = sub_259A81D28();
    MEMORY[0x28223BE20](v5);
    v11 = v1;
    v7 = sub_259A80724(sub_259A81B90, v10, 0, v6);
    v8 = sub_259A81D28();
    MEMORY[0x28223BE20](v8);
    v11 = v1;
    sub_259A80724(sub_259A81B90, v10, 0, v9);
    return v7;
  }

  return result;
}

unint64_t sub_259A81588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  while (v3 != 32)
  {
    v4 = *(a1 + 16);
    v5 = v3 >= v4;
    if (v3 == v4)
    {
      break;
    }

    ++v3;
    if (v5)
    {
      __break(1u);
      break;
    }
  }

  v6 = 0;
  while (v6 != 32)
  {
    v7 = *(a2 + 16);
    v8 = v6 >= v7;
    if (v6 == v7)
    {
      break;
    }

    ++v6;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  result = v3 + v6;
  v10 = -1;
  while (v10 != 31)
  {
    v11 = *(a3 + 16);
    if (v10 + 1 == v11)
    {
      break;
    }

    ++result;
    if (++v10 >= v11)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_259A81608(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(a2 + 16);
  v4 = __OFADD__(v6, 8);
  v7 = v6 + 8;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = __OFADD__(v5, v7);
  v8 = v5 + v7;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = *(a3 + 16);
  v4 = __OFADD__(v9, 8);
  v10 = v9 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_259A81654()
{
  v0 = sub_259A81D28();
  if (v0 <= 0x29173956A6EF0793)
  {
    switch(v0)
    {
      case 0xFC7D3E57AEBC3257:
        return 0;
      case 0x1966A8294C6FBDD8:
        return 1;
      case 0x2301E5CED9E3886ALL:
        return 5;
    }

    goto LABEL_15;
  }

  if (v0 == 0x29173956A6EF0794)
  {
    return 3;
  }

  if (v0 == 0x422BFAA998E697FELL)
  {
    return 4;
  }

  if (v0 != 0x50F6D7246ECB4BA2)
  {
LABEL_15:
    sub_259A81FA8();
    MEMORY[0x259CAA420](0xD00000000000003ELL, 0x8000000259A82FA0);
    v2 = sub_259A82008();
    MEMORY[0x259CAA420](v2);

    result = sub_259A81FD8();
    __break(1u);
    return result;
  }

  return 2;
}

uint64_t sub_259A817F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2340, &qword_259A82A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_259A81860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E2340, &qword_259A82A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_259A818D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_259A81D18();
  v6[2] = v3;
  result = sub_259A808A8(sub_259A81B90, v6, 0, 32);
  *a1 = v4;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_259A81944@<X0>(_BYTE *a2@<X8>)
{
  result = sub_259A81D08();
  *a2 = result;
  return result;
}

uint64_t sub_259A81980()
{
  v0 = sub_259A81D18();
  if ((v0 - 1) <= 2)
  {
    return (v0 - 1);
  }

  sub_259A81FA8();
  MEMORY[0x259CAA420](0xD000000000000035, 0x8000000259A82F60);
  v2 = sub_259A82008();
  MEMORY[0x259CAA420](v2);

  result = sub_259A81FD8();
  __break(1u);
  return result;
}

uint64_t sub_259A81A68(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v4;
}

uint64_t sub_259A81AA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_259A81AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_259A81B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}