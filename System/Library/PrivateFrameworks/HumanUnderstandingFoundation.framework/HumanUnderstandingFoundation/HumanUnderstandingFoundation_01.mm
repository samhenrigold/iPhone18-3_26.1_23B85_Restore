void *sub_2546ACDA4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2546ACF78(uint64_t a1)
{

  return MEMORY[0x2821FE398](a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

__n128 sub_2546ACF98(__n128 *a1)
{
  result = *(v2 - 144);
  a1[1] = result;
  a1[3].n128_u64[1] = v1;
  return result;
}

__n128 sub_2546ACFB0@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(v4 - 192);
  a1[1] = result;
  a1[3].n128_u64[1] = v2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_2546ACFDC()
{

  return swift_allocObject();
}

uint64_t sub_2546AD00C()
{

  return swift_allocObject();
}

__n128 sub_2546AD028(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

uint64_t sub_2546AD034(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

__n128 sub_2546AD064(__n128 *a1)
{
  result = *(v1 - 144);
  a1[1] = result;
  return result;
}

uint64_t sub_2546AD0C8()
{

  return swift_allocObject();
}

uint64_t FeatureRegistry.__allocating_init()()
{
  v0 = sub_2546B5354();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Paths.featureManagerBaseDirectory()();
  v3 = swift_allocObject();
  FeatureRegistry.init(with:)(v2);
  return v3;
}

uint64_t FeatureRegistry.feature(for:)@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16) && (v4 = sub_2546B01B4(), v6 = sub_2546A5044(v4, v5), (v7 & 1) != 0))
  {
    v8 = *(v3 + 56) + 32 * v6;
    v9 = *(v8 + 8);
    *a1 = *v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = *(v8 + 16);

    swift_unknownObjectRetain();
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t FeatureRegistry.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FeatureRegistry.init(with:)(a1);
  return v2;
}

char *FeatureRegistry.init(with:)(uint64_t a1)
{
  sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
  sub_2546B01B4();
  *(v1 + 2) = sub_2546B54A4();
  type metadata accessor for Transformer();
  sub_2546B01B4();
  *(v1 + 3) = sub_2546B54A4();
  sub_2546B01B4();
  *(v1 + 4) = sub_2546B54A4();
  v3 = OBJC_IVAR____TtC28HumanUnderstandingFoundation15FeatureRegistry_baseDir;
  v4 = sub_2546B5354();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 16))(&v1[v3], a1, v4);
  v8 = sub_2546AD430(v6, v7);
  *(v1 + 2) = v8;

  v9 = sub_2546AD860(v8);

  *(v1 + 3) = v9;

  sub_2546AE50C(v10, v9);
  v12 = v11;

  (*(v5 + 8))(a1, v4);
  swift_beginAccess();
  *(v1 + 4) = v12;

  return v1;
}

uint64_t sub_2546AD430(uint64_t a1, uint64_t a2)
{
  if (qword_27F60F4C8 != -1)
  {
LABEL_50:
    swift_once();
  }

  v2 = 0;
  v36 = qword_27F60FCF8;
  v37 = *(qword_27F60FCF8 + 16);
  v35 = qword_27F60FCF8 + 32;
  v3 = MEMORY[0x277D84F90];
  while (v2 != v37)
  {
    if (v2 >= *(v36 + 16))
    {
      goto LABEL_46;
    }

    v42 = *(v35 + 16 * v2);
    v4 = [swift_unknownObjectRetain() featureNames];
    v5 = sub_2546B55D4();

    v6 = *(v5 + 16);
    if (v6)
    {
      v38 = v3;
      v46 = MEMORY[0x277D84F90];
      sub_2546B1680(0, v6, 0);
      v9 = sub_2546B1CF0(v5);
      v10 = 0;
      v45 = v5 + 56;
      v39 = v5 + 64;
      v40 = v6;
      v41 = v5;
      if ((v9 & 0x8000000000000000) == 0)
      {
        while (v9 < 1 << *(v5 + 32))
        {
          v11 = v9 >> 6;
          if ((*(v45 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
          {
            goto LABEL_41;
          }

          if (*(v5 + 36) != v7)
          {
            goto LABEL_42;
          }

          v44 = v8;
          v43 = v7;
          v12 = (*(v5 + 48) + 16 * v9);
          v14 = *v12;
          v13 = v12[1];
          v16 = *(v46 + 16);
          v15 = *(v46 + 24);
          swift_unknownObjectRetain();

          if (v16 >= v15 >> 1)
          {
            result = sub_2546B1680((v15 > 1), v16 + 1, 1);
          }

          *(v46 + 16) = v16 + 1;
          v18 = v46 + 32 * v16;
          *(v18 + 32) = v14;
          *(v18 + 40) = v13;
          *(v18 + 48) = v42;
          if (v44)
          {
            __break(1u);
            return result;
          }

          v5 = v41;
          v19 = 1 << *(v41 + 32);
          if (v9 >= v19)
          {
            goto LABEL_43;
          }

          v20 = *(v45 + 8 * v11);
          if ((v20 & (1 << v9)) == 0)
          {
            goto LABEL_44;
          }

          if (*(v41 + 36) != v43)
          {
            goto LABEL_45;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v19 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v11 << 6;
            v23 = v11 + 1;
            v24 = (v39 + 8 * v11);
            while (v23 < (v19 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_2546B0128(v9, v43, 0);
                v19 = __clz(__rbit64(v25)) + v22;
                goto LABEL_23;
              }
            }

            sub_2546B0128(v9, v43, 0);
          }

LABEL_23:
          if (++v10 == v40)
          {
            swift_unknownObjectRelease();

            v27 = v46;
            v3 = v38;
            goto LABEL_28;
          }

          v8 = 0;
          v7 = *(v41 + 36);
          v9 = v19;
          if (v19 < 0)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    swift_unknownObjectRelease();

    v27 = MEMORY[0x277D84F90];
LABEL_28:
    v28 = *(v27 + 16);
    v29 = *(v3 + 16);
    if (__OFADD__(v29, v28))
    {
      goto LABEL_47;
    }

    v30 = v27;
    if (!swift_isUniquelyReferenced_nonNull_native() || v29 + v28 > *(v3 + 24) >> 1)
    {
      sub_2546A88B4();
      v3 = v31;
    }

    ++v2;
    if (*(v30 + 16))
    {
      if ((*(v3 + 24) >> 1) - *(v3 + 16) < v28)
      {
        goto LABEL_48;
      }

      sub_2546A2DF4(&qword_27F60F718, &qword_2546B65B0);
      swift_arrayInitWithCopy();

      if (v28)
      {
        v32 = *(v3 + 16);
        v33 = __OFADD__(v32, v28);
        v34 = v32 + v28;
        if (v33)
        {
          goto LABEL_49;
        }

        *(v3 + 16) = v34;
      }
    }

    else
    {

      if (v28)
      {
        __break(1u);
        return sub_2546AE7E0(v3, &qword_27F60F7B8, &qword_2546B65B8, sub_2546AF70C);
      }
    }
  }

  return sub_2546AE7E0(v3, &qword_27F60F7B8, &qword_2546B65B8, sub_2546AF70C);
}

void *sub_2546AD860(uint64_t a1)
{
  v129 = a1;
  v135[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2546B5354();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  isUniquelyReferenced_nonNull_native = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v112 = &v111 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v111 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v111 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v111 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v111 - v17;
  v113 = type metadata accessor for Transformer();
  v19 = sub_2546B54A4();
  v125 = *(v4 + 16);
  v126 = v4 + 16;
  v125(v16, v1 + OBJC_IVAR____TtC28HumanUnderstandingFoundation15FeatureRegistry_baseDir, v3);
  sub_2546B5324();
  v124 = v4;
  v127 = *(v4 + 8);
  v128 = v4 + 8;
  v127(v16, v3);
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_2546B5304();
  v135[0] = 0;
  v22 = [v20 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:1 error:v135];

  v23 = v135[0];
  v24 = &off_2546B6000;
  if (!v22)
  {
    v93 = v135[0];
    v2 = sub_2546B52D4();

    swift_willThrow();
    if (qword_27F60F4C0 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  v25 = sub_2546B5574();
  v26 = v23;

  v122 = *(v25 + 16);
  if (v122)
  {
    v121 = sub_2546A1AC4(0, &qword_27F60F7A0, 0x277CBFF20);
    v27 = 0;
    v133 = 0;
    v120 = v25 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    *&v28 = 136315394;
    v111 = v28;
    isUniquelyReferenced_nonNull_native = v116;
    v115 = v3;
    v114 = v18;
    v119 = v25;
    while (v27 < *(v25 + 16))
    {
      v29 = v125;
      v30 = *(v124 + 72);
      v131 = v27;
      v125(isUniquelyReferenced_nonNull_native, v120 + v30 * v27, v3);
      v31 = v123;
      v32 = sub_2546B01B4();
      v29(v32);
      v33 = v31;
      v34 = v133;
      v35 = sub_2546AE894(v33);
      if (!v34)
      {
        v133 = 0;
        v130 = v35;
        v37 = [v35 modelDescription];
        v38 = [v37 inputDescriptionsByName];

        v118 = sub_2546A1AC4(0, &qword_27F60F6E8, 0x277CBFEE0);
        v39 = sub_2546B5494();

        v3 = 0;
        v40 = v39 + 64;
        v132 = v39;
        sub_2546B0134();
        v2 = v42 & v41;
        v24 = ((v43 + 63) >> 6);
        v18 = MEMORY[0x277D84F90];
        if ((v42 & v41) == 0)
        {
          goto LABEL_8;
        }

        do
        {
LABEL_12:
          sub_2546B01F0();
          v47 = *v45;
          v46 = v45[1];
          v48 = v129;
          v49 = *(v129 + 16);

          if (!v49 || (v50 = sub_2546A5044(v47, v46), (v51 & 1) == 0))
          {
            if (qword_27F60F4C0 != -1)
            {
              sub_2546B0150();
              swift_once();
            }

            v80 = sub_2546B53D4();
            sub_2546A1C48(v80, qword_27F60FCE0);
            v81 = v112;
            isUniquelyReferenced_nonNull_native = v116;
            v3 = v115;
            v125(v112, v116, v115);

            v82 = sub_2546B53B4();
            v2 = sub_2546B5604();

            if (os_log_type_enabled(v82, v2))
            {
              v24 = swift_slowAlloc();
              *&v134 = swift_slowAlloc();
              v135[0] = v134;
              *v24 = v111;
              sub_2546B00D0();
              v118 = v82;
              v83 = sub_2546B5804();
              v85 = v84;
              sub_2546B01C0();
              v86();
              v87 = sub_2546A4A68(v83, v85, v135);

              *(v24 + 1) = v87;
              *(v24 + 6) = 2080;
              v88 = sub_2546A4A68(v47, v46, v135);

              *(v24 + 14) = v88;
              v89 = v118;
              _os_log_impl(&dword_2546A0000, v118, v2, "Could not find corresponding Signal for Transformer: %s with input: %s", v24, 0x16u);
              swift_arrayDestroy();
              sub_2546B0274();
              sub_2546B0274();

              sub_2546B01C0();
              v90();
            }

            else
            {

              v91 = v127;
              v127(v81, v3);
              v91(isUniquelyReferenced_nonNull_native, v3);
            }

LABEL_42:
            v18 = v114;
            goto LABEL_43;
          }

          isUniquelyReferenced_nonNull_native = v50;

          v134 = *(*(v48 + 56) + 16 * isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2546B018C();
            sub_2546A8A8C();
            v18 = v53;
          }

          v52 = *(v18 + 2);
          if (v52 >= *(v18 + 3) >> 1)
          {
            sub_2546A8A8C();
            v18 = v54;
          }

          v2 &= v2 - 1;
          *(v18 + 2) = v52 + 1;
          *&v18[16 * v52 + 32] = v134;
        }

        while (v2);
        while (1)
        {
LABEL_8:
          v44 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v44 >= v24)
          {
            break;
          }

          v2 = *(v40 + 8 * v44);
          ++v3;
          if (v2)
          {
            v3 = v44;
            goto LABEL_12;
          }
        }

        swift_allocObject();
        v55 = v130;
        v2 = sub_2546B4130(v55, v18);
        v117 = v55;
        v56 = [v55 modelDescription];
        v57 = [v56 outputDescriptionsByName];

        v58 = sub_2546B5494();
        v3 = 0;
        *&v134 = v58;
        sub_2546B0134();
        v62 = v61 & v60;
        v18 = ((v63 + 63) >> 6);
        v130 = v59;
        v132 = v2;
        if ((v61 & v60) != 0)
        {
          goto LABEL_25;
        }

LABEL_21:
        while (1)
        {
          v64 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v64 >= v18)
          {
            isUniquelyReferenced_nonNull_native = v116;
            v3 = v115;
            sub_2546B01C0();
            v79();

            goto LABEL_42;
          }

          v62 = *(v59 + v64);
          ++v3;
          if (v62)
          {
            v3 = v64;
LABEL_25:
            while (1)
            {
              sub_2546B01F0();
              v24 = *v65;
              v66 = *(v65 + 8);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v135[0] = v19;
              v67 = sub_2546A5044(v24, v66);
              v69 = v19[2];
              v70 = (v68 & 1) == 0;
              v19 = (v69 + v70);
              if (__OFADD__(v69, v70))
              {
                goto LABEL_52;
              }

              v71 = v67;
              v72 = v68;
              sub_2546A2DF4(&qword_27F60F7A8, &unk_2546B6598);
              if (sub_2546B5764())
              {
                v73 = sub_2546A5044(v24, v66);
                if ((v72 & 1) != (v74 & 1))
                {
                  result = sub_2546B5834();
                  __break(1u);
                  return result;
                }

                v71 = v73;
              }

              if (v72)
              {

                v19 = v135[0];
                v2 = v132;
                *(*(v135[0] + 7) + 8 * v71) = v132;
              }

              else
              {
                v19 = v135[0];
                *(v135[0] + (v71 >> 6) + 8) |= 1 << v71;
                v75 = (v19[6] + 16 * v71);
                *v75 = v24;
                v75[1] = v66;
                v2 = v132;
                *(v19[7] + 8 * v71) = v132;
                v76 = v19[2];
                v77 = __OFADD__(v76, 1);
                v78 = v76 + 1;
                if (v77)
                {
                  goto LABEL_54;
                }

                v19[2] = v78;
              }

              v62 &= v62 - 1;
              v59 = v130;
              if (!v62)
              {
                goto LABEL_21;
              }
            }
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        break;
      }

      sub_2546B01C0();
      v36();

      v133 = 0;
LABEL_43:
      v27 = v131 + 1;
      v25 = v119;
      if (v131 + 1 == v122)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_2546B0150();
    swift_once();
LABEL_46:
    v94 = sub_2546B53D4();
    sub_2546A1C48(v94, qword_27F60FCE0);
    v125(isUniquelyReferenced_nonNull_native, v18, v3);
    v95 = v2;
    v96 = sub_2546B53B4();
    v97 = v18;
    v98 = sub_2546B5604();

    if (os_log_type_enabled(v96, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v114 = v97;
      v115 = v3;
      v135[0] = v100;
      *v99 = *(v24 + 162);
      sub_2546B00D0();
      v101 = sub_2546B5804();
      v103 = v102;
      v104 = v127;
      v127(isUniquelyReferenced_nonNull_native, v3);
      v105 = sub_2546A4A68(v101, v103, v135);

      *(v99 + 4) = v105;
      *(v99 + 12) = 2080;
      swift_getErrorValue();
      v106 = sub_2546B5844();
      v108 = sub_2546A4A68(v106, v107, v135);

      *(v99 + 14) = v108;
      _os_log_impl(&dword_2546A0000, v96, v98, "Could not enumerate files in directory: %s with error: %s", v99, 0x16u);
      swift_arrayDestroy();
      sub_2546B0274();
      sub_2546B0274();

      v104(v114, v115);
    }

    else
    {

      v109 = v127;
      v127(isUniquelyReferenced_nonNull_native, v3);
      v109(v97, v3);
    }

    return v19;
  }

LABEL_44:

  sub_2546B01C0();
  v92();
  return v19;
}

void sub_2546AE50C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_2546A1CA0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v10 >= v7)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_6:
        v11 = __clz(__rbit64(v5)) | (v8 << 6);
        v12 = (*(a2 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(*(a2 + 56) + 8 * v11);
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2546B018C();
          sub_2546A8B70();
          v9 = v18;
        }

        v16 = *(v9 + 16);
        if (v16 >= *(v9 + 24) >> 1)
        {
          sub_2546B01CC();
          v9 = v19;
        }

        v5 &= v5 - 1;
        *(v9 + 16) = v16 + 1;
        v17 = (v9 + 48 * v16);
        v17[4] = v13;
        v17[5] = v14;
        v17[6] = v13;
        v17[7] = v14;
        v17[8] = v15;
        v17[9] = &protocol witness table for Transformer;
      }

      while (v5);
    }
  }

  v42 = sub_2546B0164(v20, &qword_27F60F788, &qword_2546B6588);
  sub_2546A1CA0();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  if (v23)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      v41 = sub_2546B0164(v40, &qword_27F60F788, &qword_2546B6588);
      sub_2546AE9EC(v41, v42);
      return;
    }

    v23 = *(a1 + 64 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      do
      {
LABEL_17:
        v29 = (v26 << 10) | (16 * __clz(__rbit64(v23)));
        v30 = (*(a1 + 48) + v29);
        v32 = *v30;
        v31 = v30[1];
        v33 = (*(a1 + 56) + v29);
        v34 = *v33;
        v35 = *(v33[1] + 8);
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v45 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2546B018C();
          sub_2546A8B70();
          v27 = v38;
        }

        v36 = *(v27 + 16);
        if (v36 >= *(v27 + 24) >> 1)
        {
          sub_2546B01CC();
          v27 = v39;
        }

        v23 &= v23 - 1;
        *(v27 + 16) = v36 + 1;
        v37 = (v27 + 48 * v36);
        v37[4] = v32;
        v37[5] = v31;
        v37[6] = v32;
        v37[7] = v31;
        v37[8] = v34;
        v37[9] = v45;
      }

      while (v23);
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t FeatureRegistry.featureNames.getter()
{
  swift_beginAccess();

  return sub_2546A6B94();
}

uint64_t sub_2546AE7E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(a2, a3);
    v5 = sub_2546B57D4();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

id sub_2546AE894(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2546B5304();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2546B5354();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2546B52D4();

    swift_willThrow();
    v9 = sub_2546B5354();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_2546AE9EC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2546AFA00(a1, sub_2546B0098, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

char *FeatureRegistry.deinit()
{

  v1 = OBJC_IVAR____TtC28HumanUnderstandingFoundation15FeatureRegistry_baseDir;
  v2 = sub_2546B5354();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FeatureRegistry.__deallocating_deinit()
{
  FeatureRegistry.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FeatureRegistry(uint64_t a1)
{
  result = qword_27F60F770;
  if (!qword_27F60F770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2546AEB94(uint64_t a1)
{
  result = sub_2546B5354();
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

void sub_2546AEC64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2546A2DF4(&qword_27F60F6A0, &qword_2546B65D0);
  v38 = v4;
  v6 = sub_2546B57C4();
  if (!*(v5 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v6;
    return;
  }

  v7 = 0;
  v8 = (v5 + 64);
  sub_2546B0134();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_30;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      sub_2546B0254(v37);
    }

    else
    {
      *v8 = -1 << v37;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v38)
    {
      v23 = v22[1];
      v39 = *v22;
      v40 = v23;
    }

    else
    {
      sub_2546A49D0(v22, &v39);
    }

    sub_2546B5864();
    sub_2546B5524();
    sub_2546B5884();
    sub_2546B019C();
    if (((v26 << v25) & ~v14[v24]) == 0)
    {
      break;
    }

    sub_2546B0240();
LABEL_21:
    sub_2546B0204();
    *(v14 + v31) |= v32;
    v34 = (v6[6] + 16 * v33);
    *v34 = v20;
    v34[1] = v21;
    v35 = (v6[7] + 32 * v33);
    v36 = v40;
    *v35 = v39;
    v35[1] = v36;
    ++v6[2];
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_2546B022C();
  while (++v27 != v29 || (v28 & 1) == 0)
  {
    v30 = v27 == v29;
    if (v27 == v29)
    {
      v27 = 0;
    }

    v28 |= v30;
    if (v14[v27] != -1)
    {
      sub_2546B0218();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_2546AEEB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2546A2DF4(&qword_27F60F7B8, &qword_2546B65B8);
  v32 = v4;
  result = sub_2546B57C4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      sub_2546A51D0(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v33 = *(*(v5 + 56) + 16 * v18);
    if ((v32 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_2546B5864();
    sub_2546B5524();
    result = sub_2546B5884();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v7 + 48) + 16 * v25);
    *v30 = v20;
    v30[1] = v21;
    *(*(v7 + 56) + 16 * v25) = v33;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_2546AF160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2546A2DF4(&qword_27F60F7B0, &qword_2546B65A8);
  v36 = v4;
  v6 = sub_2546B57C4();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v35 = v5;
  v7 = 0;
  v8 = (v5 + 64);
  sub_2546B0134();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_2546B0254(v34);
    }

    else
    {
      *v8 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v36 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_2546B5864();
    sub_2546B5524();
    sub_2546B5884();
    sub_2546B019C();
    if (((v25 << v24) & ~v14[v23]) == 0)
    {
      break;
    }

    sub_2546B0240();
LABEL_20:
    sub_2546B0204();
    *(v14 + v30) |= v31;
    v33 = (v6[6] + 16 * v32);
    *v33 = v20;
    v33[1] = v21;
    *(v6[7] + 8 * v32) = v22;
    ++v6[2];
    v5 = v35;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_2546B022C();
  while (++v26 != v28 || (v27 & 1) == 0)
  {
    v29 = v26 == v28;
    if (v26 == v28)
    {
      v26 = 0;
    }

    v27 |= v29;
    if (v14[v26] != -1)
    {
      sub_2546B0218();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_2546AF3A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2546A2DF4(&qword_27F60F788, &qword_2546B6588);
  v36 = v4;
  result = sub_2546B57C4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_2546A51D0(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 32 * v18;
    v23 = *(v22 + 8);
    v37 = *v22;
    v38 = *(v22 + 16);
    if ((v36 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_2546B5864();
    sub_2546B5524();
    result = sub_2546B5884();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = *(v7 + 56) + 32 * v27;
    *v33 = v37;
    *(v33 + 8) = v23;
    *(v33 + 16) = v38;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2546AF670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2546A49D0(a4, a1);

  return a2;
}

uint64_t sub_2546AF6B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;

  swift_unknownObjectRetain();
  return a2;
}

void sub_2546AF70C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v24 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2546B5834();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v27 = *i;
    v8 = *a3;

    swift_unknownObjectRetain();
    v10 = sub_2546A5044(v7, v6);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    v14 = v9;
    if (v8[3] < v13)
    {
      break;
    }

    if (a2)
    {
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2546A2DF4(&qword_27F60F7C0, &unk_2546B65C0);
      sub_2546B5774();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v18 = (v17[6] + 16 * v10);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + 16 * v10) = v27;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v17[2] = v21;
    ++v4;
    a2 = 1;
  }

  sub_2546AEEB4(v13, a2 & 1);
  v15 = sub_2546A5044(v7, v6);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v10 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();
  v23 = v22;
  sub_2546A2DF4(&qword_27F60F790, &qword_2546B6590);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    return;
  }

LABEL_22:
  sub_2546B56D4();
  MEMORY[0x259C16190](0xD00000000000001BLL, 0x80000002546B76C0);
  sub_2546B5754();
  MEMORY[0x259C16190](39, 0xE100000000000000);
  sub_2546B5794();
  __break(1u);
}

uint64_t sub_2546AFA00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v59 = a5;
  sub_2546B005C(a1, a2, a3, v58);
  v5 = v58[1];
  v6 = v58[3];
  v7 = v58[4];
  v45 = v58[5];
  v46 = v58[0];
  v8 = (v58[2] + 64) >> 6;

  v43 = v8;
  v44 = v5;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v46 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v46 + 56) + 32 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v51[0] = v15;
    v51[1] = v14;
    v51[2] = v17;
    v51[3] = v18;
    v52 = *(v16 + 16);

    swift_unknownObjectRetain();
    v45(&v53, v51);
    swift_unknownObjectRelease();

    v19 = v54;
    if (!v54)
    {
LABEL_19:
      sub_2546A1D98(v46);
    }

    v20 = v53;
    v22 = v55;
    v21 = v56;
    v48 = v57;
    v23 = *v59;
    v25 = sub_2546A5044(v53, v54);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_21;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_2546A2DF4(&qword_27F60F780, &qword_2546B6580);
        sub_2546B5774();
      }
    }

    else
    {
      sub_2546AF3A0(v28, a4 & 1);
      v30 = sub_2546A5044(v20, v19);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_23;
      }

      v25 = v30;
    }

    v47 = (v9 - 1) & v9;
    v32 = *v59;
    if (v29)
    {
      v33 = v32[7] + 32 * v25;
      v35 = *v33;
      v34 = *(v33 + 8);

      v50 = *(v33 + 16);
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();

      v36 = v32[7] + 32 * v25;
      *v36 = v35;
      *(v36 + 8) = v34;
      *(v36 + 16) = v50;
      swift_unknownObjectRelease();
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v37 = (v32[6] + 16 * v25);
      *v37 = v20;
      v37[1] = v19;
      v38 = v32[7] + 32 * v25;
      *v38 = v22;
      *(v38 + 8) = v21;
      *(v38 + 16) = v48;
      v39 = v32[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_22;
      }

      v32[2] = v41;
    }

    a4 = 1;
    v6 = v10;
    v8 = v43;
    v5 = v44;
    v7 = v47;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

void sub_2546AFD38(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 3)
  {
    if (v27 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_2546B5834();
      __break(1u);
      goto LABEL_23;
    }

    v31 = *i;
    v7 = *(i - 2);
    v6 = *(i - 1);
    v9 = *(i - 4);
    v8 = *(i - 3);

    swift_unknownObjectRetain();
    if (!v8)
    {
      goto LABEL_17;
    }

    v29 = v6;
    v10 = *a3;
    v12 = sub_2546A5044(v9, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_2546A2DF4(&qword_27F60F780, &qword_2546B6580);
      sub_2546B5774();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v19[7] + 32 * v12;
    *v21 = v7;
    *(v21 + 8) = v29;
    *(v21 + 16) = v31;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v19[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_2546AF3A0(v15, a2 & 1);
  v17 = sub_2546A5044(v9, v8);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_2546A2DF4(&qword_27F60F790, &qword_2546B6590);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  sub_2546B56D4();
  MEMORY[0x259C16190](0xD00000000000001BLL, 0x80000002546B76C0);
  sub_2546B5754();
  MEMORY[0x259C16190](39, 0xE100000000000000);
  sub_2546B5794();
  __break(1u);
}

uint64_t sub_2546B005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_2546B0098@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2546AF6B0(a2 + 2, *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_2546B00D0()
{
  result = qword_27F60F798;
  if (!qword_27F60F798)
  {
    sub_2546B5354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F798);
  }

  return result;
}

uint64_t sub_2546B0128(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2546B0164(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2546AE7E0(v3, a2, a3, sub_2546AFD38);
}

void sub_2546B01CC()
{

  sub_2546A8B70();
}

uint64_t sub_2546B0254@<X0>(uint64_t a1@<X8>)
{

  return sub_2546A51D0(0, (a1 + 63) >> 6, v1);
}

void sub_2546B0274()
{

  JUMPOUT(0x259C16A90);
}

uint64_t *sub_2546B02A4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2546B0354(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2546B53D4();
  sub_2546B02A4(v5, a2);
  sub_2546A1C48(v5, a2);
  return sub_2546B53C4();
}

uint64_t MLFeatureProvider.toDict()(uint64_t a1)
{
  v2 = [v1 featureNames];
  v3 = sub_2546B55D4();

  v14 = sub_2546B54A4();
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = (*(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;

    sub_2546B0570(&v14, v13, v1);
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v14;
    }

    v6 = *(v3 + 56 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2546B0570(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_2546B54B4();
  v8 = [a3 featureValueForName_];

  if (v8 && (v9 = MLFeatureValue.toString()(), v8, v9.value._object))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    result = sub_2546B3980(v9.value._countAndFlagsBits, v9.value._object, v5, v6, isUniquelyReferenced_nonNull_native);
    *a1 = v12;
  }

  else
  {
    sub_2546B37C4(v5, v6);
  }

  return result;
}

Swift::String __swiftcall MLFeatureProvider.toJSONString()()
{
  v1 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2546B54F4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = objc_opt_self();
  MLFeatureProvider.toDict()(v1);
  v4 = sub_2546B5484();

  v19[0] = 0;
  v5 = [v3 dataWithJSONObject:v4 options:1 error:v19];

  v6 = v19[0];
  if (!v5)
  {
    v14 = v6;
    v15 = sub_2546B52D4();

    swift_willThrow();
LABEL_6:
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_7;
  }

  v7 = sub_2546B5364();
  v9 = v8;

  sub_2546B54E4();
  v10 = sub_2546B54D4();
  if (!v11)
  {
    sub_2546B07F8(v7, v9);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = v11;
  sub_2546B07F8(v7, v9);
LABEL_7:
  v16 = v12;
  v17 = v13;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_2546B07F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

Swift::String_optional __swiftcall MLFeatureValue.toString()()
{
  v1 = v0;
  v2 = [v0 type];
  v3 = 0;
  v4 = 0;
  switch(v2)
  {
    case 1uLL:
      [v1 int64Value];
      v5 = sub_2546B5804();
      goto LABEL_5;
    case 2uLL:
      [v1 doubleValue];
      v5 = sub_2546B55B4();
LABEL_5:
      v3 = v5;
      v4 = v6;
      goto LABEL_9;
    case 3uLL:
      v7 = [v1 stringValue];
      v8 = sub_2546B54C4();
      goto LABEL_8;
    case 5uLL:
      v10 = [v1 multiArrayValue];
      if (v10)
      {
        v7 = v10;
        v8 = sub_2546B0980();
LABEL_8:
        v3 = v8;
        v4 = v9;
      }

      else
      {
        v3 = 0;
        v4 = 0;
      }

LABEL_9:
      v11 = v3;
      v12 = v4;
      result.value._object = v12;
      result.value._countAndFlagsBits = v11;
      return result;
    default:
      goto LABEL_9;
  }
}

uint64_t sub_2546B0980()
{
  v1 = sub_2546A2DF4(&qword_27F60F7C8, &qword_2546B65D8);
  sub_2546A324C();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = sub_2546A2DF4(&qword_27F60F7D0, &qword_2546B65E0);
  sub_2546A324C();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = sub_2546A2DF4(&qword_27F60F7D8, &qword_2546B65E8);
  sub_2546A324C();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = [v0 dataType];
  if (v19 == 65568)
  {
    v28 = v0;
    v21 = MEMORY[0x277D83A90];
    sub_2546B53E4();
    sub_2546B0CD0(&qword_27F60F7E8, &qword_27F60F7D0, &qword_2546B65E0);
    v22 = sub_2546B53F4();
    (*(v9 + 8))(v12, v7);
LABEL_7:
    v26 = v22;
    v27 = v21;
    goto LABEL_8;
  }

  if (v19 != 65600)
  {
    if (v19 != 131104)
    {
      return 0;
    }

    v20 = v0;
    v21 = MEMORY[0x277D849A8];
    sub_2546B53E4();
    sub_2546B0CD0(&qword_27F60F7F0, &qword_27F60F7D8, &qword_2546B65E8);
    v22 = sub_2546B53F4();
    (*(v15 + 8))(v18, v13);
    goto LABEL_7;
  }

  v23 = v0;
  v24 = MEMORY[0x277D839F8];
  sub_2546B53E4();
  sub_2546B0CD0(&qword_27F60F7E0, &qword_27F60F7C8, &qword_2546B65D8);
  v25 = sub_2546B53F4();
  (*(v3 + 8))(v6, v1);
  v26 = v25;
  v27 = v24;
LABEL_8:
  v29 = MEMORY[0x259C161E0](v26, v27);

  return v29;
}

uint64_t sub_2546B0CD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2546A2E3C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2546B0D24(uint64_t a1)
{
  v3 = 0;
  v39 = a1 & 0xC000000000000001;
  v40 = sub_2546A4A40(a1);
  v36 = a1;
  v37 = a1 + 32;
  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v40)
    {

      *(v35 + 16) = sub_2546B1190(v4);
      return v35;
    }

    if (v39)
    {
      v1 = MEMORY[0x259C16340](v3, v36);
    }

    else
    {
      if (v3 >= *(v38 + 16))
      {
        goto LABEL_50;
      }

      v1 = *(v37 + 8 * v3);
      swift_unknownObjectRetain();
    }

    v5 = __OFADD__(v3++, 1);
    if (v5)
    {
      break;
    }

    v6 = [v1 featureNames];
    v7 = sub_2546B55D4();

    v8 = *(v7 + 16);
    if (v8)
    {
      v41 = v4;
      v42 = v3;
      v50 = MEMORY[0x277D84F90];
      sub_2546B16A0(0, v8, 0);
      v9 = v50;
      v12 = sub_2546B1CF0(v7);
      v13 = 0;
      v14 = v7 + 56;
      v43 = v7 + 64;
      v44 = v8;
      v45 = v7;
      v46 = v7 + 56;
      if ((v12 & 0x8000000000000000) == 0)
      {
        while (v12 < 1 << *(v7 + 32))
        {
          v15 = v12 >> 6;
          if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
          {
            goto LABEL_44;
          }

          if (*(v7 + 36) != v10)
          {
            goto LABEL_45;
          }

          v49 = v11;
          v47 = v13;
          v48 = v10;
          v16 = (*(v7 + 48) + 16 * v12);
          v18 = *v16;
          v17 = v16[1];
          v19 = v50[2];
          v20 = v50[3];

          swift_unknownObjectRetain();
          if (v19 >= v20 >> 1)
          {
            sub_2546B16A0((v20 > 1), v19 + 1, 1);
          }

          v50[2] = v19 + 1;
          v21 = &v50[3 * v19];
          v21[4] = v18;
          v21[5] = v17;
          v21[6] = v1;
          v14 = v46;
          if (v49)
          {
            goto LABEL_55;
          }

          v7 = v45;
          v22 = 1 << *(v45 + 32);
          if (v12 >= v22)
          {
            goto LABEL_46;
          }

          v23 = *(v46 + 8 * v15);
          if ((v23 & (1 << v12)) == 0)
          {
            goto LABEL_47;
          }

          if (*(v45 + 36) != v48)
          {
            goto LABEL_48;
          }

          v24 = v23 & (-2 << (v12 & 0x3F));
          if (v24)
          {
            v22 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v15 << 6;
            v26 = v15 + 1;
            v27 = (v43 + 8 * v15);
            while (v26 < (v22 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_2546B0128(v12, v48, 0);
                v22 = __clz(__rbit64(v28)) + v25;
                goto LABEL_25;
              }
            }

            sub_2546B0128(v12, v48, 0);
          }

LABEL_25:
          v13 = v47 + 1;
          if (v47 + 1 == v44)
          {
            swift_unknownObjectRelease();

            v4 = v41;
            v3 = v42;
            goto LABEL_30;
          }

          v11 = 0;
          v10 = *(v45 + 36);
          v12 = v22;
          if (v22 < 0)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      break;
    }

    swift_unknownObjectRelease();

    v9 = MEMORY[0x277D84F90];
LABEL_30:
    v30 = v9[2];
    v1 = *(v4 + 16);
    if (__OFADD__(v1, v30))
    {
      goto LABEL_51;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v1 + v30 > *(v4 + 24) >> 1)
    {
      sub_2546A8998();
      v4 = v31;
    }

    if (v9[2])
    {
      if ((*(v4 + 24) >> 1) - *(v4 + 16) < v30)
      {
        goto LABEL_53;
      }

      v1 = v9;
      sub_2546A2DF4(&qword_27F60F708, &unk_2546B6630);
      swift_arrayInitWithCopy();

      if (v30)
      {
        v32 = *(v4 + 16);
        v5 = __OFADD__(v32, v30);
        v33 = v32 + v30;
        if (v5)
        {
          goto LABEL_54;
        }

        *(v4 + 16) = v33;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_52;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_2546B1190(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(&qword_27F60F7B0, &qword_2546B65A8);
    v3 = sub_2546B57D4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2546B14A4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t MultiFeatureProvider.featureNames.getter()
{
  swift_beginAccess();

  return sub_2546A6B94();
}

MLFeatureValue_optional __swiftcall MultiFeatureProvider.featureValue(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_2546A5044(countAndFlagsBits, object), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    swift_unknownObjectRetain();
    v8 = sub_2546B54B4();
    v9 = [v7 featureValueForName_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    v9 = 0;
  }

  v11 = v9;
  result.value.super.isa = v11;
  result.is_nil = v10;
  return result;
}

uint64_t MultiFeatureProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2546B14A4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    swift_unknownObjectRetain();
    v11 = sub_2546A5044(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        sub_2546A2DF4(&qword_27F60F7F8, &unk_2546B6640);
        sub_2546B5774();
      }
    }

    else
    {
      sub_2546AF160(v14, a2 & 1);
      v16 = sub_2546A5044(v7, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v15)
    {
      v19 = *(v18[7] + 8 * v11);
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      *(v18[7] + 8 * v11) = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v20 = (v18[6] + 16 * v11);
      *v20 = v7;
      v20[1] = v6;
      *(v18[7] + 8 * v11) = v8;
      v21 = v18[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_18;
      }

      v18[2] = v23;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

void *sub_2546B1680(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2546B1788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2546B16A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2546B1898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2546B16C0()
{
  sub_2546AD088();
  if ((v3 & 1) == 0 || (sub_2546A1CDC(), v4 == v5))
  {
LABEL_6:
    sub_2546AD054();
    if (v2)
    {
      sub_2546A2DF4(&qword_27F60F6D8, &unk_2546B6660);
      v6 = swift_allocObject();
      sub_2546AD0AC(v6);
      sub_2546B1D60(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_2546B1D30();
        sub_2546A8E50(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_2546AD07C();
  if (!v4)
  {
    sub_2546ACFCC();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_2546B1788(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2546A2DF4(&qword_27F60F710, &unk_2546B6650);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_2546ACF64(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2546A2DF4(&qword_27F60F718, &qword_2546B65B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2546B1898(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2546A2DF4(&qword_27F60F700, &qword_2546B64D8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2546A8E70((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2546A2DF4(&qword_27F60F708, &unk_2546B6630);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2546B19B0()
{
  sub_2546AD088();
  if ((v4 & 1) == 0 || (sub_2546A1CDC(), v5 == v6))
  {
LABEL_6:
    sub_2546AD054();
    if (v3)
    {
      sub_2546A2DF4(&qword_27F60F730, &qword_2546B64E8);
      v7 = swift_allocObject();
      sub_2546AD0AC(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 48);
      if (v1)
      {
LABEL_8:
        v9 = sub_2546B1D30();
        sub_2546A8E98(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_2546A2DF4(&qword_27F60F738, &unk_2546B6670);
    sub_2546B1D40(v12);
    goto LABEL_11;
  }

  sub_2546AD07C();
  if (!v5)
  {
    sub_2546ACFCC();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2546B1A88()
{
  sub_2546AD088();
  if ((v4 & 1) == 0 || (sub_2546A1CDC(), v5 == v6))
  {
LABEL_6:
    sub_2546AD054();
    if (v3)
    {
      sub_2546A2DF4(&qword_27F60F740, &qword_2546B64F0);
      v7 = swift_allocObject();
      sub_2546AD0AC(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 24);
      if (v1)
      {
LABEL_8:
        v9 = sub_2546B1D30();
        sub_2546A8E70(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_2546A2DF4(&qword_27F60F748, &unk_2546B6680);
    sub_2546B1D40(v12);
    goto LABEL_11;
  }

  sub_2546AD07C();
  if (!v5)
  {
    sub_2546ACFCC();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2546B1B60()
{
  sub_2546AD088();
  if ((v3 & 1) == 0 || (sub_2546A1CDC(), v4 == v5))
  {
LABEL_6:
    sub_2546AD054();
    if (v2)
    {
      sub_2546A2DF4(&qword_27F60F750, &qword_2546B64F8);
      v6 = swift_allocObject();
      sub_2546AD0AC(v6);
      sub_2546B1D60(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_2546B1D30();
        sub_2546ACF64(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_2546A2DF4(&qword_27F60F758, &unk_2546B6690);
    sub_2546B1D40(v11);
    goto LABEL_11;
  }

  sub_2546AD07C();
  if (!v4)
  {
    sub_2546ACFCC();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2546B1C28()
{
  sub_2546AD088();
  if ((v3 & 1) == 0 || (sub_2546A1CDC(), v4 == v5))
  {
LABEL_6:
    sub_2546AD054();
    if (v2)
    {
      sub_2546A2DF4(&qword_27F60F6E0, &qword_2546B64C0);
      v6 = swift_allocObject();
      sub_2546AD0AC(v6);
      sub_2546B1D60(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_2546B1D30();
        sub_2546A8E50(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
    sub_2546B1D40(v11);
    goto LABEL_11;
  }

  sub_2546AD07C();
  if (!v4)
  {
    sub_2546ACFCC();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2546B1D40(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_2546B1D70(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6F74616C756D6973;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7473655474696E75;
    }

    else
    {
      v5 = 0x656369766564;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x6F74616C756D6973;
    v6 = 0xE900000000000072;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7473655474696E75;
    }

    else
    {
      v3 = 0x656369766564;
    }

    if (a2 == 1)
    {
      v2 = 0xE900000000000073;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2546B5814();
  }

  return v8 & 1;
}

uint64_t sub_2546B1E70(unsigned __int8 a1)
{
  sub_2546B5864();
  MEMORY[0x259C164D0](a1);
  return sub_2546B5884();
}

uint64_t sub_2546B1EC4(uint64_t a1, unsigned __int8 a2)
{
  sub_2546B5524();
}

uint64_t sub_2546B1F74(uint64_t a1, unsigned __int8 a2)
{
  sub_2546B5864();
  MEMORY[0x259C164D0](a2);
  return sub_2546B5884();
}

uint64_t sub_2546B1FB8(uint64_t a1, char a2)
{
  sub_2546B5864();
  sub_2546B5524();

  return sub_2546B5884();
}

HumanUnderstandingFoundation::Paths::Environment_optional __swiftcall Paths.Environment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2546B57E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paths.Environment.rawValue.getter()
{
  v1 = 0x7473655474696E75;
  if (*v0 != 1)
  {
    v1 = 0x656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F74616C756D6973;
  }
}

uint64_t sub_2546B2168@<X0>(uint64_t *a1@<X8>)
{
  result = Paths.Environment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *static Paths.baseDirectory(with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2546B53A4();
  sub_2546A324C();
  v32 = v5;
  MEMORY[0x28223BE20](v6);
  sub_2546A3260();
  v9 = v8 - v7;
  v10 = sub_2546B5354();
  sub_2546A324C();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v32 - v23;
  v25 = *a1;
  v33 = a2;
  sub_2546B2A50(a2, 1, 1, v10);
  if (v25)
  {
    if (v25 == 1)
    {
      v26 = NSTemporaryDirectory();
      sub_2546B54C4();

      sub_2546B52E4();

      sub_2546B5394();
      sub_2546B5384();
      (*(v32 + 8))(v9, v4);
      sub_2546B5324();
    }

    else
    {
      v28 = [objc_opt_self() defaultManager];
      v29 = [v28 URLsForDirectory:5 inDomains:1];

      v30 = sub_2546B5574();
      sub_2546B25C0(v30, v22);

      if (sub_2546B2A78(v22, 1, v10) == 1)
      {
        sub_2546B2AA0(v22);
        result = sub_2546B5794();
        __break(1u);
        return result;
      }

      (*(v12 + 32))(v16, v22, v10);
      sub_2546B5314();
      v18 = v16;
    }
  }

  else
  {
    result = getenv("SIMULATOR_SHARED_RESOURCES_DIRECTORY");
    if (!result)
    {
      return result;
    }

    sub_2546B5544();
    sub_2546B52E4();

    sub_2546B5324();
  }

  (*(v12 + 8))(v18, v10);
  v31 = v33;
  sub_2546B2AA0(v33);
  sub_2546B2A50(v24, 0, 1, v10);
  return sub_2546B2B08(v24, v31);
}

uint64_t sub_2546B25C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2546B5354();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_2546B2A50(a2, v7, 1, v6);
}

uint64_t sub_2546B2668()
{
  v0 = sub_2546B5354();
  sub_2546B02A4(v0, qword_281369678);
  v1 = sub_2546A1C48(v0, qword_281369678);
  return sub_2546B26B4(v1);
}

uint64_t sub_2546B26B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = 2;
  static Paths.baseDirectory(with:)(&v11, &v10[-v6]);
  sub_2546B31CC(v7, v5);
  v8 = sub_2546B5354();
  result = sub_2546B2A78(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2546B2AA0(v7);
    return (*(*(v8 - 8) + 32))(a1, v5, v8);
  }

  return result;
}

uint64_t static Paths.baseDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281369670 != -1)
  {
    sub_2546B323C(&qword_281369670);
  }

  v2 = sub_2546B5354();
  v3 = sub_2546A1C48(v2, qword_281369678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static Paths.baseDirectory(with:createIfNeeded:)(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_281369670 != -1)
  {
    sub_2546B323C(&qword_281369670);
  }

  v5 = sub_2546B5354();
  sub_2546A1C48(v5, qword_281369678);
  sub_2546B5324();
  if (a3)
  {

    sub_2546B2918();
  }
}

void sub_2546B2918()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_2546B5344();
  v1 = sub_2546B54B4();

  v7[0] = 0;
  v2 = [v0 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_2546B52D4();

    swift_willThrow();
  }
}

uint64_t sub_2546B2AA0(uint64_t a1)
{
  v2 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2546B2B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static Paths.topDirectory()()
{
  if (qword_281369670 != -1)
  {
    sub_2546B323C(&qword_281369670);
  }

  v0 = sub_2546B5354();
  sub_2546A1C48(v0, qword_281369678);
  sub_2546B5324();

  sub_2546B2918();
}

uint64_t sub_2546B2C2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2546B5354();
  sub_2546A324C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_2546A3260();
  v8 = v7 - v6;
  if (qword_281369670 != -1)
  {
    sub_2546B323C(&qword_281369670);
  }

  sub_2546A1C48(v2, qword_281369678);
  sub_2546B5324();
  sub_2546B2918();
  sub_2546B5324();
  sub_2546B2918();
  return (*(v4 + 8))(v8, v2);
}

uint64_t static Paths.humanUnderstandingEvidenceBaseDirectory()()
{
  v0 = sub_2546B5354();
  sub_2546A324C();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_2546A3260();
  v6 = v5 - v4;
  if (qword_281369670 != -1)
  {
    sub_2546B323C(&qword_281369670);
  }

  sub_2546A1C48(v0, qword_281369678);
  sub_2546B5324();
  sub_2546B2918();
  sub_2546B5324();
  sub_2546B2918();
  return (*(v2 + 8))(v6, v0);
}

unint64_t sub_2546B2EAC()
{
  result = qword_27F60F808;
  if (!qword_27F60F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F808);
  }

  return result;
}

unint64_t sub_2546B2F04()
{
  result = qword_27F60F810;
  if (!qword_27F60F810)
  {
    sub_2546A2E3C(&qword_27F60F818, &qword_2546B6748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Paths(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Paths(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Paths.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Paths.Environment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2546B31CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F800, &qword_2546B66A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2546B323C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2546B3270(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t BackfillableSignal.allFeatures(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 featureNames];
  v8 = sub_2546B55D4();

  sub_2546B34B0();
  v9 = sub_2546B54A4();
  v14[2] = a2;
  v14[3] = a3;
  v15 = v3;
  v16 = a1;
  v10 = sub_2546B3270(v9, sub_2546B35B4, v14, v8);

  sub_2546A4338(v10);
  v12 = v11;

  return v12;
}

unint64_t sub_2546B34B0()
{
  result = qword_27F60F688;
  if (!qword_27F60F688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60F688);
  }

  return result;
}

void sub_2546B34F4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = (*(a6 + 16))(*a2, v8, a4, a5, a6);
  if (v9)
  {
    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_2546B3AD4(v10, v7, v8, isUniquelyReferenced_nonNull_native);
    *a1 = v12;
  }

  else
  {
  }
}

void BackfillableSignal.allFeatures(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = BackfillableSignal.allFeatures(for:)(a1, a2, a3);
  sub_2546A2DF4(&qword_27F60F820, qword_2546B67C0);
  v4 = sub_2546B57B4();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v3 + 64;
  v10 = v8 & *(v3 + 64);
  v11 = (v7 + 63) >> 6;
  v28 = v4 + 64;
  v29 = v3;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = (*(v29 + 48) + 16 * v15);
      v17 = v16[1];
      v30 = *v16;
      v18 = *(*(v29 + 56) + 8 * v15);
      if (!v18)
      {
        break;
      }

      v19 = v18;
      v20 = MLFeatureValue.toString()();
      if (!v20.value._object)
      {
        goto LABEL_14;
      }

      countAndFlagsBits = v20.value._countAndFlagsBits;
      object = v20.value._object;

LABEL_15:
      *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v23 = (v5[6] + 16 * v15);
      *v23 = v30;
      v23[1] = v17;
      v24 = (v5[7] + 16 * v15);
      *v24 = countAndFlagsBits;
      v24[1] = object;
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      v5[2] = v27;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v19 = 0;
LABEL_14:

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_15;
  }

LABEL_5:
  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      return;
    }

    v14 = *(v9 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_2546B37C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2546A5044(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  sub_2546A2DF4(qword_27F60F830, &unk_2546B6810);
  sub_2546B5764();

  v7 = *(*(v9 + 56) + 16 * v6);
  sub_2546B5784();
  *v3 = v9;
  return v7;
}

uint64_t sub_2546B38A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2546A5044(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  sub_2546A2DF4(&qword_27F60F828, &qword_2546B6808);
  sub_2546B5764();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_2546B34B0();
  sub_2546B5784();
  *v3 = v9;
  return v7;
}

uint64_t sub_2546B3980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_2546A5044(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  sub_2546A2DF4(qword_27F60F830, &unk_2546B6810);
  if ((sub_2546B5764() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_2546A5044(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_2546B5834();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_2546B3C10(v14, a3, a4, a1, a2, v18);
  }
}

void sub_2546B3AD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2546A5044(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_2546A2DF4(&qword_27F60F828, &qword_2546B6808);
  if ((sub_2546B5764() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2546A5044(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2546B5834();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_2546B3C5C(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_2546B3C10(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_2546B3C5C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t TimestampedItem.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F60FD00;
  sub_2546B5374();
  sub_2546B4120();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t TimestampedItem.__allocating_init(timestamp:value:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TimestampedItem.init(timestamp:value:)(a1, a2);
  return v4;
}

uint64_t *TimestampedItem.init(timestamp:value:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = qword_27F60FD00;
  sub_2546B5374();
  sub_2546B4120();
  (*(v7 + 32))(v2 + v6, a1);
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 96), a2);
  return v2;
}

uint64_t *TimestampedItem.deinit()
{
  v1 = *v0;
  v2 = qword_27F60FD00;
  sub_2546B5374();
  sub_2546B4120();
  (*(v3 + 8))(v0 + v2);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t TimestampedItem.__deallocating_deinit()
{
  TimestampedItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2546B3FDC(uint64_t a1)
{
  result = sub_2546B5374();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2546B4130(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  v5 = a1;
  v6 = sub_2546B41AC(a2);

  type metadata accessor for MultiFeatureProvider();
  swift_allocObject();
  v7 = sub_2546B0D24(v6);

  *(v3 + 24) = v7;
  return v3;
}

uint64_t sub_2546B41AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_2546B5724();
    v4 = a1 + 32;
    do
    {
      v4 += 16;
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
      sub_2546A2DF4(&qword_27F60F8B8, &unk_2546B68E0);
      swift_dynamicCast();
      sub_2546B5704();
      sub_2546B5734();
      sub_2546B5744();
      sub_2546B5714();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t Transformer.featureNames.getter()
{
  v1 = [*(v0 + 16) modelDescription];
  v2 = [v1 outputDescriptionsByName];

  sub_2546AC8B0();
  sub_2546B5494();

  return sub_2546A6B94();
}

MLFeatureValue_optional __swiftcall Transformer.featureValue(for:)(Swift::String a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v13[0] = 0;
  v4 = [v2 predictionFromFeatures:v3 error:v13];
  if (v4)
  {
    v5 = v4;
    v6 = v13[0];
    v7 = sub_2546B54B4();
    v8 = [v5 featureValueForName_];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v13[0];
    v11 = sub_2546B52D4();

    swift_willThrow();
    v8 = 0;
  }

  v12 = v8;
  result.value.super.isa = v12;
  result.is_nil = v9;
  return result;
}

uint64_t Transformer.__deallocating_deinit()
{
  Transformer.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2546B45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0xD00000000000001DLL;
  v11 = 0x80000002546B7970;
  MEMORY[0x259C16190](a1, a2);
  v6 = *MEMORY[0x277D86238];
  v7 = swift_allocObject();
  v7[2] = 0xD00000000000001DLL;
  v7[3] = 0x80000002546B7970;
  v7[4] = a3;
  v7[5] = a4;
  v14 = sub_2546B50A0;
  v15 = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2546B4A58;
  v13 = &unk_2866840C8;
  v8 = _Block_copy(&v10);

  v9 = sub_2546B5514();

  xpc_activity_register((v9 + 32), v6, v8);

  _Block_release(v8);
}

void sub_2546B4718(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  if (xpc_activity_get_state(a1) == 2 && xpc_activity_should_defer(a1))
  {
    if (!xpc_activity_set_state(a1, 3))
    {
      if (qword_27F60F4B8 != -1)
      {
        swift_once();
      }

      v8 = sub_2546B53D4();
      sub_2546A1C48(v8, qword_27F60FCC8);
      v9 = sub_2546B55F4();

      oslog = sub_2546B53B4();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_2546A4A68(a2, a3, &v19);
        _os_log_impl(&dword_2546A0000, oslog, v9, "%s should defer before task start, but failed to set state to XPC_ACTIVITY_STATE_DEFER", v10, 0xCu);
        sub_2546A55B8(v11);
        MEMORY[0x259C16A90](v11, -1, -1);
        MEMORY[0x259C16A90](v10, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_27F60F4B8 != -1)
    {
      swift_once();
    }

    v12 = sub_2546B53D4();
    sub_2546A1C48(v12, qword_27F60FCC8);
    v13 = sub_2546B5614();

    v14 = sub_2546B53B4();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2546A4A68(a2, a3, &v19);
      _os_log_impl(&dword_2546A0000, v14, v13, "%s started running XPC Activity task block", v15, 0xCu);
      sub_2546A55B8(v16);
      MEMORY[0x259C16A90](v16, -1, -1);
      MEMORY[0x259C16A90](v15, -1, -1);
    }

    type metadata accessor for XPCActivity();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = 0;

    swift_unknownObjectRetain();
    a4(v17);
  }
}

uint64_t sub_2546B4A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall XPCActivity.deferIfNecessary()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  should_defer = xpc_activity_should_defer(v2);
  if (should_defer && xpc_activity_set_state(v2, 3))
  {
    if (qword_27F60F4B8 != -1)
    {
      sub_2546B50B4(&qword_27F60F4B8);
    }

    v4 = sub_2546B53D4();
    sub_2546A1C48(v4, qword_27F60FCC8);
    v5 = sub_2546B55F4();

    v6 = sub_2546B53B4();

    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2546A4A68(*(v1 + 24), *(v1 + 32), &v15);
      _os_log_impl(&dword_2546A0000, v6, v5, "%s XPC Activity should defer, but failed to set state to XPC_ACTIVITY_STATE_DEFER", v7, 0xCu);
      sub_2546A55B8(v8);
      sub_2546B0274();
      sub_2546B0274();
    }
  }

  if (qword_27F60F4B8 != -1)
  {
    sub_2546B50B4(&qword_27F60F4B8);
  }

  v9 = sub_2546B53D4();
  sub_2546A1C48(v9, qword_27F60FCC8);
  v10 = sub_2546B5614();

  v11 = sub_2546B53B4();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2546A4A68(*(v1 + 24), *(v1 + 32), &v15);
    *(v12 + 12) = 1024;
    *(v12 + 14) = should_defer;
    _os_log_impl(&dword_2546A0000, v11, v10, "%s XPC Activity deferIfNecessary returned %{BOOL}d", v12, 0x12u);
    sub_2546A55B8(v13);
    sub_2546B0274();
    sub_2546B0274();
  }

  return should_defer;
}

void XPCActivity.register(deferralBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v8[4] = sub_2546B5018;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2546B4A58;
  v8[3] = &unk_286684060;
  v6 = _Block_copy(v8);

  v7 = xpc_activity_add_eligibility_changed_handler();
  _Block_release(v6);
  *(v2 + 40) = v7;
}

uint64_t sub_2546B4E0C(_xpc_activity_s *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    if (qword_27F60F4B8 != -1)
    {
      swift_once();
    }

    v6 = sub_2546B53D4();
    sub_2546A1C48(v6, qword_27F60FCC8);
    v7 = sub_2546B5614();

    v8 = sub_2546B53B4();

    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2546A4A68(*(a2 + 24), *(a2 + 32), &v11);
      _os_log_impl(&dword_2546A0000, v8, v7, "%s XPC Activity registered deferral block will be invoked", v9, 0xCu);
      sub_2546A55B8(v10);
      MEMORY[0x259C16A90](v10, -1, -1);
      MEMORY[0x259C16A90](v9, -1, -1);
    }

    return a3();
  }

  return result;
}

uint64_t XPCActivity.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{
  XPCActivity.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2546B5024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2546B50B4(uint64_t a1)
{

  return swift_once();
}

void sub_2546B5244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2546B525C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2546B5274(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}