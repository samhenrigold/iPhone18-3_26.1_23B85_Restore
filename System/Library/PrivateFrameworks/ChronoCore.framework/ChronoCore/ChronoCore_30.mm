uint64_t sub_224D24720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v30 = &v29 - v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84F98];
    v34 = MEMORY[0x277D84F98];
    v6 = sub_224DAFA68();
    v7 = sub_224DAFB18();
    if (v7)
    {
      v9 = v8;
      v10 = v7;
      sub_224DAF538();
      v11 = v10;
      do
      {
        v32 = v11;
        swift_dynamicCast();
        v31 = v9;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v19 = v33;
        if (!v33)
        {
          break;
        }

        v20 = v32;
        if (*(v32 + 40) || (v21 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace, swift_beginAccess(), v22 = v30, sub_224A3796C(v20 + v21, v30, &qword_27D6F3948, &qword_224DB5C10), v23 = sub_224DAC378(), LODWORD(v21) = (*(*(v23 - 8) + 48))(v22, 1, v23), sub_224A3311C(v22, &qword_27D6F3948, &qword_224DB5C10), v21 != 1))
        {
          v24 = *(v5 + 16);
          if (*(v5 + 24) <= v24)
          {
            sub_224B19B38(v24 + 1, 1);
          }

          v5 = v34;
          result = sub_224DAF698();
          v13 = v5 + 64;
          v14 = -1 << *(v5 + 32);
          v15 = result & ~v14;
          v16 = v15 >> 6;
          if (((-1 << v15) & ~*(v5 + 64 + 8 * (v15 >> 6))) != 0)
          {
            v17 = __clz(__rbit64((-1 << v15) & ~*(v5 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = 0;
            v26 = (63 - v14) >> 6;
            do
            {
              if (++v16 == v26 && (v25 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v27 = v16 == v26;
              if (v16 == v26)
              {
                v16 = 0;
              }

              v25 |= v27;
              v28 = *(v13 + 8 * v16);
            }

            while (v28 == -1);
            v17 = __clz(__rbit64(~v28)) + (v16 << 6);
          }

          *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(*(v5 + 48) + 8 * v17) = v19;
          *(*(v5 + 56) + 8 * v17) = v20;
          ++*(v5 + 16);
        }

        else
        {
        }

        v11 = sub_224DAFB18();
        v9 = v18;
      }

      while (v11);
    }

    sub_224A3B7E4(v6 | 0x8000000000000000);
  }

  else
  {
    v5 = sub_224D2E0B0(a1);
  }

  return v5;
}

uint64_t sub_224D24A88(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x277D84F98];
    v26 = MEMORY[0x277D84F98];
    v2 = sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v5 = v4;
      v6 = v3;
      sub_224DAF538();
      v7 = v6;
      do
      {
        v25 = v7;
        swift_dynamicCast();
        v24[5] = v5;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v9 = v24[0];
        if (!v24[0])
        {
          break;
        }

        v10 = v25;
        v11 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
        swift_beginAccess();
        sub_224A3796C(v10 + v11, v24, &unk_27D6F4700, &unk_224DB3A10);
        v12 = v24[3];
        sub_224A3311C(v24, &unk_27D6F4700, &unk_224DB3A10);
        if (v12)
        {
        }

        else
        {
          v13 = *(v1 + 16);
          if (*(v1 + 24) <= v13)
          {
            sub_224B19B38(v13 + 1, 1);
          }

          v1 = v26;
          result = sub_224DAF698();
          v15 = v1 + 64;
          v16 = -1 << *(v1 + 32);
          v17 = result & ~v16;
          v18 = v17 >> 6;
          if (((-1 << v17) & ~*(v1 + 64 + 8 * (v17 >> 6))) != 0)
          {
            v19 = __clz(__rbit64((-1 << v17) & ~*(v1 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v20 = 0;
            v21 = (63 - v16) >> 6;
            do
            {
              if (++v18 == v21 && (v20 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v22 = v18 == v21;
              if (v18 == v21)
              {
                v18 = 0;
              }

              v20 |= v22;
              v23 = *(v15 + 8 * v18);
            }

            while (v23 == -1);
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          }

          *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          *(*(v1 + 48) + 8 * v19) = v9;
          *(*(v1 + 56) + 8 * v19) = v10;
          ++*(v1 + 16);
        }

        v7 = sub_224DAFB18();
        v5 = v8;
      }

      while (v7);
    }

    sub_224A3B7E4(v2 | 0x8000000000000000);
  }

  else
  {
    v1 = sub_224D2DE28(a1);
  }

  return v1;
}

uint64_t sub_224D24D20(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x277D84F98];
    v40 = MEMORY[0x277D84F98];
    v35 = sub_224DAFA68();
    v2 = sub_224DAFB18();
    if (v2)
    {
      v4 = v3;
      v5 = v2;
      v34 = sub_224DAF538();
      v6 = v5;
      v33 = MEMORY[0x277D84F98];
      do
      {
        v39 = v6;
        swift_dynamicCast();
        v38 = v4;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v8 = v36[0];
        if (!v36[0])
        {
          break;
        }

        v9 = v39;
        v10 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
        swift_beginAccess();
        sub_224A3796C(v9 + v10, v36, &unk_27D6F4700, &unk_224DB3A10);
        v11 = v37;
        if (v37)
        {
          v12 = __swift_project_boxed_opaque_existential_1(v36, v37);
          v13 = *(v11 - 8);
          MEMORY[0x28223BE20](v12, v12);
          v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v13 + 16))(v15);
          v16 = v8;

          sub_224A3311C(v36, &unk_27D6F4700, &unk_224DB3A10);
          v17 = sub_224DAE278();
          (*(v13 + 8))(v15, v11);

          if (v17)
          {
          }

          else
          {
            v18 = *(v33 + 16);
            if (*(v33 + 24) <= v18)
            {
              sub_224B19B38(v18 + 1, 1);
            }

            v19 = v40;
            result = sub_224DAF698();
            v21 = v19 + 64;
            v22 = -1 << *(v19 + 32);
            v23 = result & ~v22;
            v24 = v23 >> 6;
            if (((-1 << v23) & ~*(v19 + 64 + 8 * (v23 >> 6))) != 0)
            {
              v25 = __clz(__rbit64((-1 << v23) & ~*(v19 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v26 = 0;
              v27 = (63 - v22) >> 6;
              do
              {
                if (++v24 == v27 && (v26 & 1) != 0)
                {
                  __break(1u);
                  return result;
                }

                v28 = v24 == v27;
                if (v24 == v27)
                {
                  v24 = 0;
                }

                v26 |= v28;
                v29 = *(v21 + 8 * v24);
              }

              while (v29 == -1);
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            }

            *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
            *(*(v19 + 48) + 8 * v25) = v16;
            *(*(v19 + 56) + 8 * v25) = v9;
            v30 = *(v19 + 16) + 1;
            v33 = v19;
            *(v19 + 16) = v30;
          }
        }

        else
        {
          sub_224A3311C(v36, &unk_27D6F4700, &unk_224DB3A10);
        }

        v6 = sub_224DAFB18();
        v4 = v7;
      }

      while (v6);
    }

    else
    {
      v33 = v1;
    }

    sub_224A3B7E4(v35 | 0x8000000000000000);
    return v33;
  }

  else
  {
    v31 = sub_224D2DA5C(a1);

    return v31;
  }
}

uint64_t sub_224D25124(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
    sub_224A33088(&qword_281350F08, &unk_27D6F5840, &qword_224DBBD70, MEMORY[0x277CBCE20]);
    v4 = sub_224DAB3A8();
    *(v1 + v2) = v4;
  }

  return v4;
}

void sub_224D251F8(uint64_t a1)
{
  v2 = v1;
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364D60);
  v5 = sub_224DAB228();
  v6 = sub_224DAF288();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224A2F000, v5, v6, "[service] simulating timeout fired", v7, 2u);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224D2A1DC(a1);
  v9 = *(v8 + 16);

  os_unfair_lock_unlock(v9);
}

void sub_224D25314(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  MEMORY[0x28223BE20](v7, v8);
  if (*(v1 + 32) == 2)
  {
    __break(1u);
    goto LABEL_60;
  }

  v125 = &v119 - v9;
  v123 = v10;
  v2 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext);
  swift_beginAccess();
  sub_224A3796C(v2, v130, &unk_27D6F4700, &unk_224DB3A10);
  v11 = v131;
  sub_224A3311C(v130, &unk_27D6F4700, &unk_224DB3A10);
  if (!v11)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_8:
    v21 = sub_224DAB258();
    v22 = __swift_project_value_buffer(v21, qword_281364D60);
    swift_retain_n();
    v124 = v22;
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v122 = v24;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v130[0] = v121;
      *v25 = 138543874;
      v27 = *(v3 + 16);
      *(v25 + 4) = v27;
      v120 = v26;
      *v26 = v27;
      *(v25 + 12) = 1026;
      v28 = v2[3];
      if (!v28)
      {
LABEL_65:

        __break(1u);
        goto LABEL_66;
      }

      v29 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v30 = *(v28 - 8);
      MEMORY[0x28223BE20](v29, v29);
      v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v32);
      v33 = v27;
      v34 = sub_224DAE278();
      (*(v30 + 8))(v32, v28);

      *(v25 + 14) = v34 & 1;

      *(v25 + 18) = 2082;
      v35 = v2[3];
      if (!v35)
      {
LABEL_66:

        __break(1u);
        goto LABEL_67;
      }

      v36 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v37 = *(v35 - 8);
      MEMORY[0x28223BE20](v36, v36);
      v39 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v39);

      v40 = sub_224DAE328();
      v42 = v41;
      (*(v37 + 8))(v39, v35);
      v43 = sub_224A33F74(v40, v42, v130);

      *(v25 + 20) = v43;
      _os_log_impl(&dword_224A2F000, v23, v122, "[ext:%{public}@] updated with wantsLocation=%{BOOL,public}d container=%{public}s", v25, 0x1Cu);
      v44 = v120;
      sub_224A3311C(v120, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v44, -1, -1);
      v45 = v121;
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x22AA5EED0](v45, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {
    }

    v46 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
    swift_beginAccess();
    v47 = v125;
    sub_224A3796C(v3 + v46, v125, &qword_27D6F3948, &qword_224DB5C10);
    v48 = sub_224DAC378();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 48))(v47, 1, v48);
    sub_224A3311C(v47, &qword_27D6F3948, &qword_224DB5C10);
    if (v50 == 1)
    {
      goto LABEL_32;
    }

    v51 = v2[3];
    if (!v51)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v52 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v53 = *(v51 - 8);
    MEMORY[0x28223BE20](v52, v52);
    v55 = &v119 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v55);
    v56 = sub_224DAE278();
    (*(v53 + 8))(v55, v51);
    if (v56)
    {
      if (!*(v3 + 48))
      {
LABEL_32:
        v84 = v2[3];
        if (v84)
        {
          v85 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
          v86 = *(v84 - 8);
          MEMORY[0x28223BE20](v85, v85);
          v88 = &v119 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v86 + 16))(v88);
          v89 = sub_224DAE278();
          (*(v86 + 8))(v88, v84);
          v90 = v126;
          if ((v89 & 1) == 0)
          {
            v91 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForSignificantLocationChange;
            if (*(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForSignificantLocationChange) == 1)
            {

              v92 = sub_224DAB228();
              v93 = sub_224DAF2A8();

              if (os_log_type_enabled(v92, v93))
              {
                v94 = swift_slowAlloc();
                v95 = swift_slowAlloc();
                *v94 = 138543362;
                v96 = *(v3 + 16);
                *(v94 + 4) = v96;
                *v95 = v96;
                v97 = v96;
                _os_log_impl(&dword_224A2F000, v92, v93, "[ext:%{public}@] resetting significant location change since updated doesn't want location", v94, 0xCu);
                sub_224A3311C(v95, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v95, -1, -1);
                MEMORY[0x22AA5EED0](v94, -1, -1);
              }

              *(v3 + v91) = 0;
            }

            v98 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange;
            if (*(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange) == 1)
            {

              v99 = sub_224DAB228();
              v100 = sub_224DAF2A8();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                *v101 = 138543362;
                v103 = *(v3 + 16);
                *(v101 + 4) = v103;
                *v102 = v103;
                v104 = v103;
                _os_log_impl(&dword_224A2F000, v99, v100, "[ext:%{public}@] resetting visibility change change since updated doesn't want location", v101, 0xCu);
                sub_224A3311C(v102, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v102, -1, -1);
                MEMORY[0x22AA5EED0](v101, -1, -1);
              }

              *(v3 + v98) = 0;
            }
          }

          sub_224A3796C(v90, v130, &unk_27D6F4700, &unk_224DB3A10);
          v105 = v131;
          if (v131)
          {
            __swift_project_boxed_opaque_existential_1(v130, v131);
            v106 = sub_224DAE328();
            v105 = v107;
            __swift_destroy_boxed_opaque_existential_1(v130);
            v108 = v2[3];
            if (v108)
            {
              goto LABEL_44;
            }
          }

          else
          {
            sub_224A3311C(v130, &unk_27D6F4700, &unk_224DB3A10);
            v106 = 0;
            v108 = v2[3];
            if (v108)
            {
LABEL_44:
              v109 = __swift_project_boxed_opaque_existential_1(v2, v108);
              v110 = *(v108 - 8);
              MEMORY[0x28223BE20](v109, v109);
              v112 = &v119 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v110 + 16))(v112);
              v113 = sub_224DAE328();
              v115 = v114;
              (*(v110 + 8))(v112, v108);
              if (v105)
              {
                if (v106 == v113 && v105 == v115)
                {

                  return;
                }

                v116 = sub_224DAFD88();

                if (v116)
                {
                  return;
                }

                goto LABEL_52;
              }

LABEL_50:

LABEL_52:
              v117 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
              swift_beginAccess();
              sub_224A3796C(v3 + v117, &v127, &qword_27D6F3AE8, &unk_224DB9600);
              if (*(&v128 + 1))
              {
                sub_224A36F98(&v127, v130);
                __swift_project_boxed_opaque_existential_1(v130, v131);
                sub_224DAE1F8();
                v129 = 0;
                v127 = 0u;
                v128 = 0u;
                swift_beginAccess();
                sub_224A838C0(&v127, v3 + v117, &qword_27D6F3AE8, &unk_224DB9600);
                swift_endAccess();
                goto LABEL_54;
              }

              sub_224A3311C(&v127, &qword_27D6F3AE8, &unk_224DB9600);
              return;
            }
          }

          __break(1u);
          goto LABEL_50;
        }

        __break(1u);
        goto LABEL_63;
      }

      if (*(v126 + 24))
      {
LABEL_70:
        __break(1u);
        return;
      }

      v57 = sub_224DAB228();
      v58 = sub_224DAF2A8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138543362;
        v61 = *(v3 + 16);
        *(v59 + 4) = v61;
        *v60 = v61;
        v62 = v61;
        _os_log_impl(&dword_224A2F000, v57, v58, "[ext:%{public}@] resetting grace period after discovering previously unknown", v59, 0xCu);
        sub_224A3311C(v60, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v60, -1, -1);
        v63 = v59;
LABEL_30:
        MEMORY[0x22AA5EED0](v63, -1, -1);
      }
    }

    else
    {
      v76 = *(v126 + 24);

      v57 = sub_224DAB228();
      v77 = sub_224DAF2A8();

      if (os_log_type_enabled(v57, v77))
      {
        if (v76)
        {
          v78 = "[ext:%{public}@] erasing grace period since updated doesn't want location";
        }

        else
        {
          v78 = "[ext:%{public}@] erasing grace period after discovering previously unknown doesn't want location";
        }

        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138543362;
        v81 = *(v3 + 16);
        *(v79 + 4) = v81;
        *v80 = v81;
        v82 = v81;
        _os_log_impl(&dword_224A2F000, v57, v77, v78, v79, 0xCu);
        sub_224A3311C(v80, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v80, -1, -1);
        v63 = v79;
        goto LABEL_30;
      }
    }

    v83 = v123;
    (*(v49 + 56))(v123, 1, 1, v48);
    swift_beginAccess();
    sub_224A838C0(v83, v3 + v46, &qword_27D6F3948, &qword_224DB5C10);
    swift_endAccess();
    goto LABEL_32;
  }

  v12 = *(a1 + 24);
  v126 = a1;
  if (!v12)
  {
    goto LABEL_7;
  }

  sub_224A3796C(a1, v130, &unk_27D6F4700, &unk_224DB3A10);
  if (!v131)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  __swift_project_boxed_opaque_existential_1(v130, v131);
  v13 = sub_224DAE278();
  v14 = v2[3];
  if (!v14)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v15 = v13;
  v16 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v17 = *(v14 - 8);
  MEMORY[0x28223BE20](v16, v16);
  v19 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19);
  v20 = sub_224DAE278();
  (*(v17 + 8))(v19, v14);
  __swift_destroy_boxed_opaque_existential_1(v130);
  if ((v15 ^ v20))
  {
    goto LABEL_7;
  }

  sub_224A3796C(a1, v130, &unk_27D6F4700, &unk_224DB3A10);
  if (!v131)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  __swift_project_boxed_opaque_existential_1(v130, v131);
  v64 = sub_224DAE328();
  v66 = v2[3];
  if (!v66)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v67 = v64;
  v68 = v65;
  v69 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v69, v69);
  v72 = &v119 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v70 + 16))(v72);
  v73 = sub_224DAE328();
  v75 = v74;
  (*(v70 + 8))(v72, v66);
  if (v67 == v73 && v68 == v75)
  {

LABEL_54:
    __swift_destroy_boxed_opaque_existential_1(v130);
    return;
  }

  v118 = sub_224DAFD88();

  __swift_destroy_boxed_opaque_existential_1(v130);
  if ((v118 & 1) == 0)
  {
LABEL_7:
    *(v3 + 32) = 1;
    if (qword_281351430 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }
}

void sub_224D263EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21[-v8];
  if (*(v1 + 32) == 2)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v10 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  sub_224A3796C(v1 + v10, v9, &qword_27D6F3948, &qword_224DB5C10);
  v11 = sub_224DAC378();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  sub_224A3311C(v9, &qword_27D6F3948, &qword_224DB5C10);
  if (v13 == 1)
  {
    return;
  }

  (*(v12 + 56))(v6, 1, 1, v11);
  swift_beginAccess();
  sub_224A838C0(v6, v1 + v10, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();
  if (qword_281351430 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281364D60);

  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    v19 = *(v1 + 16);
    *(v17 + 4) = v19;
    *v18 = v19;
    v20 = v19;
    _os_log_impl(&dword_224A2F000, v15, v16, "[ext:%{public}@] clearing grace", v17, 0xCu);
    sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v18, -1, -1);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  *(v1 + 32) = 1;
}

uint64_t sub_224D266D8()
{
  if (*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
  {
    v1 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
    swift_beginAccess();
    sub_224A3796C(v0 + v1, v4, &qword_27D6F3AE8, &unk_224DB9600);
    v2 = v4[3];
    result = sub_224A3311C(v4, &qword_27D6F3AE8, &unk_224DB9600);
    if (!v2)
    {

      swift_weakDestroy();
      sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace, &qword_27D6F3948, &qword_224DB5C10);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_224A3311C(v0 + v1, &qword_27D6F3AE8, &unk_224DB9600);
      sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext, &unk_27D6F4700, &unk_224DB3A10);
      return v0;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_224D26814()
{
  sub_224D266D8();

  return swift_deallocClassInstance();
}

void sub_224D26890(uint64_t a1)
{
  sub_224B52C2C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_224D26978(void (**a1)(char *, uint64_t, void (*)(void, void))@<X0>, uint64_t *a2@<X8>)
{
  v6 = v3;
  v65 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v60 - v11;
  os_unfair_lock_assert_owner(*(*(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_10;
  }

  v13 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (*(v14 + 16))
  {
    v15 = sub_224A89A08(a1);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();
      v18 = *&v17[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount];
      v19 = __CFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        a1 = v9;
        v4 = v8;
        *&v17[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount] = v20;
        v21 = qword_281351430;
        v8 = v17;
        if (v21 == -1)
        {
LABEL_6:
          v22 = sub_224DAB258();
          __swift_project_value_buffer(v22, qword_281364D60);
          v23 = sub_224DAB228();
          v24 = sub_224DAF278();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = v8;
            v27 = v12;
            v28 = swift_slowAlloc();
            v67[0] = v28;
            *v25 = 136446210;
            (a1)[2](v27, &v26[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v4);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
            v29 = sub_224DAFD28();
            LODWORD(v64) = v24;
            v30 = v29;
            v32 = v31;
            v33 = v27;
            v8 = v26;
            (a1[1])(v33, v4);
            v34 = sub_224A33F74(v30, v32, v67);

            *(v25 + 4) = v34;
            _os_log_impl(&dword_224A2F000, v23, v64, "[mon:%{public}s] added refcount to location authorization monitor", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v28);
            MEMORY[0x22AA5EED0](v28, -1, -1);
            MEMORY[0x22AA5EED0](v25, -1, -1);
          }

          goto LABEL_13;
        }
      }

      swift_once();
      goto LABEL_6;
    }
  }

  swift_endAccess();
  v35 = *(v9 + 16);
  v35(v12, a1, v8);
  v36 = *(v6 + 96);
  v63 = *(v6 + 104);
  v64 = v36;
  v37 = *(v6 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = objc_allocWithZone(type metadata accessor for _LocationAuthorizationMonitorImpl(0));
  v40 = v37;
  v5 = sub_224DA8A08(v12, v64, v63, v40, sub_224D2EDE4, v38);

  v60 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier;
  v61 = v35;
  v62 = v9 + 16;
  v35(v12, &v5[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v8);
  swift_beginAccess();
  v2 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *(v6 + v13);
  *(v6 + v13) = 0x8000000000000000;
  sub_224B2359C(v2, v12, isUniquelyReferenced_nonNull_native);
  v4 = *(v9 + 8);
  v63 = v12;
  v64 = v9 + 8;
  a1 = v8;
  (v4)(v12, v8);
  *(v6 + v13) = v66;
  swift_endAccess();
  if (qword_281351430 != -1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v42 = sub_224DAB258();
  __swift_project_value_buffer(v42, qword_281364D60);
  v43 = sub_224DAB228();
  v44 = sub_224DAF2A8();

  v8 = v2;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v67[0] = v46;
    *v45 = 136446210;
    v47 = &v5[v60];
    v60 = v8;
    v48 = v4;
    v49 = v63;
    v61(v63, v47, a1);
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
    v50 = sub_224DAFD28();
    v52 = v51;
    (v48)(v49, a1);
    v8 = v60;
    v53 = sub_224A33F74(v50, v52, v67);

    *(v45 + 4) = v53;
    _os_log_impl(&dword_224A2F000, v43, v44, "[mon:%{public}s] started monitoring location authorization", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x22AA5EED0](v46, -1, -1);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

LABEL_13:
  v54 = sub_224DAC198();
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v8;
  v57 = sub_224DAC1A8();
  v58 = MEMORY[0x277CF9950];
  v59 = v65;
  v65[3] = v54;
  v59[4] = v58;

  *v59 = v57;
}

uint64_t sub_224D2700C(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = sub_224DAC378();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v37 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v35 - v21;
  v23 = sub_224A71B08(&v35 - v21);
  *(v2 + 32) = 0;
  a2(v23);
  v24 = *(v2 + 32);
  *(v2 + 32) = 2;
  if ((v24 & 1) == 0)
  {
    sub_224A71DBC(v22, a1);
    goto LABEL_6;
  }

  sub_224A6FDF8();
  sub_224A71B08(v19);
  sub_224A3796C(v19, a1, &qword_27D6F3948, &qword_224DB5C10);
  v25 = *(v8 + 48);
  sub_224A3796C(v22, v11, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3796C(v19, &v11[v25], &qword_27D6F3948, &qword_224DB5C10);
  v26 = v38;
  v27 = *(v38 + 48);
  if (v27(v11, 1, v5) != 1)
  {
    v29 = v37;
    sub_224A3796C(v11, v37, &qword_27D6F3948, &qword_224DB5C10);
    if (v27(&v11[v25], 1, v5) != 1)
    {
      v30 = v36;
      (*(v26 + 32))(v36, &v11[v25], v5);
      sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
      v31 = v29;
      v32 = sub_224DAEDD8();
      v33 = *(v26 + 8);
      v33(v30, v5);
      sub_224A3311C(v19, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v22, &qword_27D6F3948, &qword_224DB5C10);
      v33(v31, v5);
      sub_224A3311C(v11, &qword_27D6F3948, &qword_224DB5C10);
      v28 = v32 ^ 1;
      return v28 & 1;
    }

    sub_224A3311C(v19, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3311C(v22, &qword_27D6F3948, &qword_224DB5C10);
    (*(v26 + 8))(v29, v5);
    goto LABEL_9;
  }

  sub_224A3311C(v19, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3311C(v22, &qword_27D6F3948, &qword_224DB5C10);
  if (v27(&v11[v25], 1, v5) != 1)
  {
LABEL_9:
    sub_224A3311C(v11, &qword_27D6F6938, &qword_224DC0A70);
    v28 = 1;
    return v28 & 1;
  }

  sub_224A3311C(v11, &qword_27D6F3948, &qword_224DB5C10);
LABEL_6:
  v28 = 0;
  return v28 & 1;
}

void sub_224D274CC(uint64_t *a1, const char *a2, const char *a3, ...)
{
  v7 = v3;
  v8 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v7 + v8, &v24, &unk_27D6F4700, &unk_224DB3A10);
  if (v25)
  {
    sub_224A36F98(&v24, v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    if (sub_224DAE278())
    {
      v9 = *a1;
      if ((*(v7 + *a1) & 1) == 0)
      {
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v10 = sub_224DAB258();
        __swift_project_value_buffer(v10, qword_281364D60);

        v11 = sub_224DAB228();
        v12 = sub_224DAF2A8();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138543362;
          v15 = *(v7 + 16);
          *(v13 + 4) = v15;
          *v14 = v15;
          v16 = v15;
          _os_log_impl(&dword_224A2F000, v11, v12, a2, v13, 0xCu);
          sub_224A3311C(v14, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v14, -1, -1);
          MEMORY[0x22AA5EED0](v13, -1, -1);
        }

        *(v7 + v9) = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_224A3311C(&v24, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281364D60);

    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = *(v7 + 16);
      *(v20 + 4) = v22;
      *v21 = v22;
      v23 = v22;
      _os_log_impl(&dword_224A2F000, v18, v19, a3, v20, 0xCu);
      sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    *(v7 + *a1) = 1;
  }
}

uint64_t sub_224D277EC()
{
  v1 = OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5958, &qword_224DBBE10);
    sub_224A33088(&qword_281350F70, &qword_27D6F5958, &qword_224DBBE10, MEMORY[0x277CBCE20]);
    v2 = sub_224DAB3A8();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_224D278CC()
{
  v1 = v0;
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v75 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v74 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_224DAC378();
  v73 = *(v77 - 8);
  v11 = MEMORY[0x28223BE20](v77, v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v66 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v66 - v19;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  v21 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceState;
  v22 = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
  swift_beginAccess();
  if (*(*(v22 + 16) + 16))
  {
    v69 = v6;
    v70 = v7;
    v71 = v3;
    v72 = v2;
    v23 = sub_224DA0BF0(MEMORY[0x277D84F90]);
    v66[1] = type metadata accessor for LocationGraceRegistry();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = sub_224DAC338();
    MEMORY[0x28223BE20](v25, v26);
    v76 = v20;
    v66[-4] = v20;
    v66[-3] = v1;
    v66[-2] = v24;

    sub_224CBCF38(sub_224D2EE4C);

    v27 = *(v1 + v21);
    swift_beginAccess();
    v28 = *(v27 + 16);
    swift_beginAccess();
    v29 = *(v24 + 16);

    v30 = sub_224A8D408(v28, v29);

    *(v1 + v21) = v24;
    v68 = v24;

    if (v30)
    {
      v31 = v73;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v32 = sub_224DAB258();
      __swift_project_value_buffer(v32, qword_281364D60);
      v33 = v77;
      (*(v31 + 16))(v13, v76, v77);

      v34 = sub_224DAB228();
      v35 = sub_224DAF278();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136446466;
        sub_224A83A44(&unk_281350DD0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A28]);
        v38 = sub_224DAFD28();
        v39 = v33;
        v41 = v40;
        v67 = *(v31 + 8);
        v67(v13, v39);
        v42 = sub_224A33F74(v38, v41, aBlock);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2082;
        v78 = *(v1 + v21);
        sub_224A83A44(qword_281358688, type metadata accessor for LocationGraceRegistry, &unk_224DBDF58);
        v43 = sub_224DAFD28();
        v45 = sub_224A33F74(v43, v44, aBlock);

        *(v36 + 14) = v45;
        _os_log_impl(&dword_224A2F000, v34, v35, "[service] restored at %{public}s using %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v37, -1, -1);
        MEMORY[0x22AA5EED0](v36, -1, -1);
      }

      else
      {

        v67 = *(v31 + 8);
        v67(v13, v33);
      }
    }

    else
    {
      v46 = v73;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v47 = sub_224DAB258();
      __swift_project_value_buffer(v47, qword_281364D60);
      v48 = v77;
      (*(v46 + 16))(v17, v76, v77);

      v49 = sub_224DAB228();
      v50 = sub_224DAF278();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock[0] = v52;
        *v51 = 136446466;
        sub_224A83A44(&unk_281350DD0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A28]);
        v53 = sub_224DAFD28();
        v54 = v48;
        v56 = v55;
        v67 = *(v46 + 8);
        v67(v17, v54);
        v57 = sub_224A33F74(v53, v56, aBlock);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2082;
        v78 = *(v1 + v21);
        sub_224A83A44(qword_281358688, type metadata accessor for LocationGraceRegistry, &unk_224DBDF58);
        v58 = sub_224DAFD28();
        v60 = sub_224A33F74(v58, v59, aBlock);

        *(v51 + 14) = v60;
        _os_log_impl(&dword_224A2F000, v49, v50, "[service] restored (with adjustments) at %{public}s using %{public}s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v52, -1, -1);
        MEMORY[0x22AA5EED0](v51, -1, -1);
      }

      else
      {

        v67 = *(v46 + 8);
        v67(v17, v48);
      }

      sub_224A83EBC();
    }

    sub_224A843F0();
    v61 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_224D2EE58;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_92;
    v62 = _Block_copy(aBlock);

    v63 = v74;
    sub_224DAB7E8();
    v78 = MEMORY[0x277D84F90];
    sub_224A83A44(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v64 = v69;
    v65 = v72;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v63, v64, v62);
    _Block_release(v62);

    (*(v71 + 8))(v64, v65);
    (*(v75 + 8))(v63, v70);

    v67(v76, v77);
  }
}

double sub_224D28328(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D28380();
  }

  return result;
}

uint64_t sub_224D28380()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224D2BD4C(v0, &v4);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v4;
  if (v4 >> 62)
  {
    if (sub_224DAF838() > 0)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_3:
    v4 = v2;
    sub_224DAB348();
  }
}

void sub_224D28470()
{
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    swift_unknownObjectRelease();
    v1 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushInterval;
    v2 = sub_224DAB798();
    (*(*(v2 - 8) + 8))(v0 + v1, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224D285D0()
{
  sub_224D28470();

  return swift_deallocClassInstance();
}

uint64_t sub_224D28650(uint64_t a1)
{
  result = sub_224DAB798();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224D28760(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  MEMORY[0x28223BE20](v68, v8);
  v10 = v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v63 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v67 = v59 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v70 = v59 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v71 = v59 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = v59 - v25;
  v27 = sub_224DAC378();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = v59 - v34;
  result = sub_224DAC318();
  if (result)
  {
    v59[1] = a5;
    v72 = *(v28 + 16);
    v72(v35, a2, v27);
    sub_224DAC2E8();
    v37 = sub_224DAC328();
    v61 = *(v28 + 8);
    v62 = v28 + 8;
    v61(v32, v27);
    if (v37)
    {
      sub_224DAC358();
      (*(v28 + 40))(v35, v32, v27);
    }

    v66 = v28 + 16;
    v72(v26, v35, v27);
    v64 = *(v28 + 56);
    v65 = v28 + 56;
    v64(v26, 0, 1, v27);
    type metadata accessor for ExtensionInfo(0);
    swift_allocObject();
    v38 = v69;

    v39 = sub_224D2EC44(v38, a4, v26);

    v69 = *(v39 + 16);
    v40 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    v41 = *(a4 + v40);
    v60 = v26;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v59[0] = v10;
      if (v41 < 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFFFFFFFF8;
      }

      v10 = v39;

      v43 = sub_224DAF838();
      v44 = v71;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      *(a4 + v40) = sub_224D2CDF0(v42, v43 + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
      v45 = v10;
      v10 = v59[0];
    }

    else
    {

      v45 = v39;
      v44 = v71;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(a4 + v40);
    sub_224B237E0(v45, v69, isUniquelyReferenced_nonNull_native);
    *(a4 + v40) = v73;
    swift_endAccess();
    v69 = v35;
    v72(v44, v35, v27);
    v64(v44, 0, 1, v27);
    v47 = v70;
    v59[0] = v45;
    sub_224A71B08(v70);
    v48 = *(v68 + 48);
    sub_224A3796C(v44, v10, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3796C(v47, &v10[v48], &qword_27D6F3948, &qword_224DB5C10);
    v49 = v44;
    v50 = *(v28 + 48);
    if (v50(v10, 1, v27) == 1)
    {
      sub_224A3311C(v47, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v49, &qword_27D6F3948, &qword_224DB5C10);
      if (v50(&v10[v48], 1, v27) == 1)
      {
        sub_224A3311C(v10, &qword_27D6F3948, &qword_224DB5C10);
        v51 = v60;
        v52 = v61;
        v53 = v69;
LABEL_16:
        v57 = *(v59[0] + 16);
        v72(v51, v53, v27);
        v64(v51, 0, 1, v27);
        v58 = v67;
        sub_224A3796C(v51, v67, &qword_27D6F3948, &qword_224DB5C10);
        swift_beginAccess();
        sub_224A83A8C(v58, v57);
        swift_endAccess();

        sub_224A3311C(v51, &qword_27D6F3948, &qword_224DB5C10);
        return v52(v53, v27);
      }

      goto LABEL_20;
    }

    v42 = v63;
    sub_224A3796C(v10, v63, &qword_27D6F3948, &qword_224DB5C10);
    v54 = v50(&v10[v48], 1, v27);
    v51 = v60;
    if (v54 != 1)
    {
      (*(v28 + 32))(v32, &v10[v48], v27);
      sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
      v55 = v42;
      v56 = sub_224DAEDD8();
      v52 = v61;
      v61(v32, v27);
      sub_224A3311C(v70, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v71, &qword_27D6F3948, &qword_224DB5C10);
      v52(v55, v27);
      result = sub_224A3311C(v10, &qword_27D6F3948, &qword_224DB5C10);
      v53 = v69;
      if (v56)
      {
        goto LABEL_16;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_19:
    sub_224A3311C(v70, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3311C(v71, &qword_27D6F3948, &qword_224DB5C10);
    v61(v42, v27);
LABEL_20:
    result = sub_224A3311C(v10, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_21;
  }

  return result;
}

double sub_224D28F5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v4 + 16));
    sub_224D28FF8(v3);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

void sub_224D28FF8(void *a1)
{
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v114 = v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v116 = v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v113 = v112 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v115 = v112 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v120 = v112 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v123 = v112 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = v112 - v23;
  v25 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v129 = a1;
  v26 = *(a1 + v25);
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(v26 + 32);
    v28 = ~v31;
    v27 = v26 + 64;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v29 = v33 & *(v26 + 64);
    v30 = v26;
  }

  v124 = v24;
  v122 = v2;

  LODWORD(v126) = 0;
  v34 = 0;
  v125 = v28;
  v35 = (v28 + 64) >> 6;
  v121 = (v3 + 48);
  v118 = (v3 + 32);
  v112[1] = v3 + 40;
  v117 = v3;
  v119 = (v3 + 56);
  v36 = &qword_224DB5C10;
  v127 = v27;
  v128 = v35;
  while (2)
  {
    v37 = v34;
    v38 = v29;
    if ((v30 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v49 = sub_224DAFB18();
        if (!v49)
        {
          goto LABEL_50;
        }

        v51 = v50;
        *&v132 = v49;
        sub_224DAF538();
        swift_dynamicCast();
        v48 = v134[0];
        *&v132 = v51;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v131 = v134[0];
        v34 = v37;
        v41 = v38;
        if (!v48)
        {
          goto LABEL_50;
        }

LABEL_17:
        v130 = v41;
        v52 = v27;
        v53 = v30;
        v54 = v36;

        __swift_project_boxed_opaque_existential_1(v129 + 2, v129[5]);
        v55 = v131;
        v56 = *(v131 + 16);
        sub_224DAC6D8();

        if (v133)
        {
          break;
        }

        sub_224A3311C(&v132, &unk_27D6F4700, &unk_224DB3A10);
        v37 = v34;
        v38 = v130;
        v36 = v54;
        v30 = v53;
        v27 = v52;
        v35 = v128;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v57 = sub_224A36F98(&v132, v134);
      MEMORY[0x28223BE20](v57, v58);
      v112[-2] = v55;
      v112[-1] = v134;
      v59 = v123;
      v60 = sub_224D2700C(v123, sub_224D2EE74);
      v61 = v59;
      v62 = v124;
      sub_224A71DBC(v61, v124);
      if (v60)
      {
        v63 = v62;
        v64 = v122;
        v126 = *v121;
        v65 = v126(v62, 1, v122);
        v66 = *(v129 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
        v67 = *(v55 + 16);
        if (v65 != 1)
        {
          v112[0] = v67;
          v77 = v63;
          v78 = v120;
          sub_224A3796C(v77, v120, &qword_27D6F3948, v54);
          v79 = v78;
          v80 = v115;
          sub_224A3796C(v79, v115, &qword_27D6F3948, v54);
          swift_beginAccess();
          if (v126(v80, 1, v64) == 1)
          {

            sub_224A3311C(v80, &qword_27D6F3948, v54);
            v81 = sub_224A3E7EC(v112[0]);
            v82 = v66;
            if (v83)
            {
              v84 = v81;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v86 = *(v66 + 16);
              v135 = v86;
              *(v66 + 16) = 0x8000000000000000;
              v87 = v122;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_224B29914();
                v86 = v135;
              }

              v88 = v113;
              (*(v117 + 32))(v113, *(v86 + 56) + *(v117 + 72) * v84, v87);
              sub_224B1E1D8(v84, v86);
              *(v82 + 16) = v86;

              v89 = 0;
            }

            else
            {
              v89 = 1;
              v88 = v113;
              v87 = v122;
            }

            (*v119)(v88, v89, 1, v87);
            v103 = v88;
            v36 = v54;
            sub_224A3311C(v103, &qword_27D6F3948, v54);
            v62 = v124;
          }

          else
          {
            v126 = *v118;
            v126(v114, v80, v64);

            v92 = swift_isUniquelyReferenced_nonNull_native();
            v135 = *(v66 + 16);
            v93 = v135;
            *(v66 + 16) = 0x8000000000000000;
            v94 = sub_224A3E7EC(v112[0]);
            v96 = v93[2];
            v97 = (v95 & 1) == 0;
            v98 = __OFADD__(v96, v97);
            v99 = v96 + v97;
            if (v98)
            {
              goto LABEL_54;
            }

            v100 = v95;
            v101 = v66;
            if (v93[3] >= v99)
            {
              if ((v92 & 1) == 0)
              {
                v111 = v94;
                sub_224B29914();
                v94 = v111;
              }
            }

            else
            {
              sub_224B180B4(v99, v92);
              v94 = sub_224A3E7EC(v112[0]);
              if ((v100 & 1) != (v102 & 1))
              {
                goto LABEL_56;
              }
            }

            v104 = v122;
            v105 = v117;
            v62 = v124;
            v106 = v135;
            if (v100)
            {
              (*(v117 + 40))(v135[7] + *(v117 + 72) * v94, v114, v122);
            }

            else
            {
              v135[(v94 >> 6) + 8] |= 1 << v94;
              v107 = v112[0];
              *(v106[6] + 8 * v94) = v112[0];
              v126(v106[7] + *(v105 + 72) * v94, v114, v104);
              v108 = v106[2];
              v98 = __OFADD__(v108, 1);
              v109 = v108 + 1;
              if (v98)
              {
                goto LABEL_55;
              }

              v106[2] = v109;
              v110 = v107;
            }

            v36 = v54;
            *(v101 + 16) = v106;
          }

          v30 = v53;
          swift_endAccess();

          sub_224A3311C(v120, &qword_27D6F3948, v36);
          LODWORD(v126) = 1;
          goto LABEL_49;
        }

        swift_beginAccess();

        v68 = sub_224A3E7EC(v67);
        v69 = v66;
        if (v70)
        {
          v71 = v68;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v73 = *(v66 + 16);
          v135 = v73;
          *(v66 + 16) = 0x8000000000000000;
          v74 = v122;
          if (!v72)
          {
            sub_224B29914();
            v73 = v135;
          }

          v75 = v116;
          (*(v117 + 32))(v116, *(v73 + 56) + *(v117 + 72) * v71, v74);
          sub_224B1E1D8(v71, v73);
          *(v69 + 16) = v73;

          v76 = 0;
        }

        else
        {
          v76 = 1;
          v75 = v116;
          v74 = v122;
        }

        v90 = *v119;
        LODWORD(v126) = 1;
        v90(v75, v76, 1, v74);
        v91 = v75;
        v36 = v54;
        sub_224A3311C(v91, &qword_27D6F3948, v54);
        swift_endAccess();

        v62 = v124;
      }

      else
      {

        v36 = v54;
      }

      v30 = v53;
LABEL_49:
      v27 = v52;
      sub_224A3311C(v62, &qword_27D6F3948, v36);
      __swift_destroy_boxed_opaque_existential_1(v134);
      v35 = v128;
      v29 = v130;
      continue;
    }

    break;
  }

LABEL_9:
  v39 = v37;
  v40 = v38;
  v34 = v37;
  if (v38)
  {
LABEL_13:
    v41 = (v40 - 1) & v40;
    v42 = (v34 << 9) | (8 * __clz(__rbit64(v40)));
    v43 = *(v30 + 56);
    v44 = *(*(v30 + 48) + v42);
    v45 = v30;
    v46 = v36;
    v47 = *(v43 + v42);
    v48 = v44;
    v131 = v47;
    v36 = v46;
    v30 = v45;
    v27 = v127;

    if (v48)
    {
      goto LABEL_17;
    }

LABEL_50:
    sub_224A3B7E4(v30);
    if (v126)
    {
      sub_224A83EBC();
      sub_224A843F0();
    }
  }

  else
  {
    while (1)
    {
      v34 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v34 >= v35)
      {
        goto LABEL_50;
      }

      v40 = *(v27 + 8 * v34);
      ++v39;
      if (v40)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_224DAF538();
    sub_224DAFDD8();
    __break(1u);
  }
}

uint64_t sub_224D29AC8(uint64_t a1, uint64_t a2)
{
  sub_224A3317C(a2, v6);
  v3 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(a1 + v3, v5, &unk_27D6F4700, &unk_224DB3A10);
  swift_beginAccess();
  sub_224C4D398(v6, a1 + v3, &unk_27D6F4700, &unk_224DB3A10);
  swift_endAccess();
  sub_224D25314(v5);
  sub_224A3311C(v5, &unk_27D6F4700, &unk_224DB3A10);
  return sub_224A3311C(v6, &unk_27D6F4700, &unk_224DB3A10);
}

uint64_t sub_224D29BA0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  result = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v26 - v7;
  if ((*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    if (sub_224A71E2C(a2, *(a1 + v9), sub_224A3E7EC, type metadata accessor for ExtensionInfo))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v10 = sub_224DAC378();
      (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
      type metadata accessor for ExtensionInfo(0);
      swift_allocObject();
      v11 = a2;

      v12 = sub_224D2EC44(v11, a1, v8);

      v13 = *(v12 + 16);
      swift_beginAccess();
      v14 = *(a1 + v9);
      if ((v14 & 0xC000000000000001) != 0)
      {
        if (v14 < 0)
        {
          v15 = *(a1 + v9);
        }

        else
        {
          v15 = v14 & 0xFFFFFFFFFFFFFF8;
        }

        swift_retain_n();
        v16 = v13;
        result = sub_224DAF838();
        if (__OFADD__(result, 1))
        {
          __break(1u);
          return result;
        }

        *(a1 + v9) = sub_224D2CDF0(v15, result + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
      }

      else
      {
        swift_retain_n();
        v17 = v13;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(a1 + v9);
      sub_224B237E0(v12, v13, isUniquelyReferenced_nonNull_native);
      *(a1 + v9) = v26;

      swift_endAccess();
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281364D60);

      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138543362;
        v24 = *(v12 + 16);
        *(v22 + 4) = v24;
        *v23 = v24;
        v25 = v24;
        _os_log_impl(&dword_224A2F000, v20, v21, "[ext:%{public}@] started tracking", v22, 0xCu);
        sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v23, -1, -1);
        MEMORY[0x22AA5EED0](v22, -1, -1);
      }
    }

    sub_224D274B0();
  }

  return result;
}

double sub_224D29F5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    sub_224D2A014(v5, a1);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

uint64_t sub_224D2A014(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC378();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v10 = *(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer);
    if (v10 && v10 == a2)
    {
      v12 = result;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281364D60);
      v14 = sub_224DAB228();
      v15 = sub_224DAF278();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_224A2F000, v14, v15, "[service] scheduled timeout fired", v16, 2u);
        MEMORY[0x22AA5EED0](v16, -1, -1);
      }

      sub_224DAC338();
      sub_224D2A1DC(v9);
      return (*(v5 + 8))(v9, v12);
    }
  }

  return result;
}

void sub_224D2A1DC(uint64_t a1)
{
  v2 = v1;
  v134 = a1;
  v3 = sub_224DAC378();
  v130 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v121 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v116 = v115 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  MEMORY[0x28223BE20](v124, v9);
  v11 = v115 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v117 = v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = v115 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v126 = v115 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = v115 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v128 = v115 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v132 = v115 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = v115 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v135 = v115 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v140 = v115 - v41;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if ((*(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v120 = v19;
    v125 = v11;
    v42 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer;
    if (*(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer))
    {

      sub_224DAC5F8();
    }

    v131 = v36;
    *(v2 + v42) = 0;

    v43 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    v133 = v2;
    v44 = *(v2 + v43);
    v142 = v3;
    v119 = v26;
    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = sub_224DAFA68() | 0x8000000000000000;
    }

    else
    {
      v49 = -1 << *(v44 + 32);
      v46 = ~v49;
      v45 = v44 + 64;
      v50 = -v49;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v47 = v51 & *(v44 + 64);
      v48 = v44;
    }

    v52 = 0;
    v127 = v46;
    v53 = (v46 + 64) >> 6;
    v141 = (v130 + 48);
    v136 = (v130 + 8);
    v129 = (v130 + 56);
    v122 = (v130 + 32);
    v115[1] = v130 + 40;
    v139 = v48;
    v138 = v45;
    for (i = v53; ; v53 = i)
    {
      if ((v48 & 0x8000000000000000) != 0)
      {
        v60 = sub_224DAFB18();
        if (!v60 || (v62 = v61, *&v144 = v60, sub_224DAF538(), swift_dynamicCast(), v59 = v146, *&v144 = v62, type metadata accessor for ExtensionInfo(0), swift_dynamicCast(), v58 = v146, v56 = v52, v143 = v47, !v59))
        {
LABEL_69:
          sub_224A3B7E4(v48);
          sub_224A843F0();
          return;
        }
      }

      else
      {
        v54 = v52;
        v55 = v47;
        v56 = v52;
        if (!v47)
        {
          while (1)
          {
            v56 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v56 >= v53)
            {
              goto LABEL_69;
            }

            v55 = *(v45 + 8 * v56);
            ++v54;
            if (v55)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_71;
        }

LABEL_18:
        v143 = (v55 - 1) & v55;
        v57 = (v56 << 9) | (8 * __clz(__rbit64(v55)));
        v58 = *(*(v48 + 56) + v57);
        v59 = *(*(v48 + 48) + v57);

        if (!v59)
        {
          goto LABEL_69;
        }
      }

      v63 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
      swift_beginAccess();
      v64 = v140;
      sub_224A3796C(v58 + v63, v140, &qword_27D6F3948, &qword_224DB5C10);
      v65 = *v141;
      v66 = v142;
      if ((*v141)(v64, 1, v142) != 1)
      {
        break;
      }

      sub_224A3311C(v64, &qword_27D6F3948, &qword_224DB5C10);
      v52 = v56;
      v47 = v143;
      v48 = v139;
LABEL_68:
      v45 = v138;
LABEL_12:
      ;
    }

    sub_224A3311C(v64, &qword_27D6F3948, &qword_224DB5C10);
    v67 = v135;
    sub_224A3796C(v58 + v63, v135, &qword_27D6F3948, &qword_224DB5C10);
    if (v65(v67, 1, v66) == 1)
    {
      goto LABEL_74;
    }

    sub_224A83A44(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
    v68 = sub_224DAEDB8();
    v69 = v67;
    v70 = v68;
    v71 = *v136;
    (*v136)(v69, v66);
    if (v70)
    {

      v52 = v56;
      v47 = v143;
      v48 = v139;
      v45 = v138;
      goto LABEL_12;
    }

    v123 = v71;
    v72 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
    swift_beginAccess();
    sub_224A3796C(v58 + v72, &v144, &unk_27D6F4700, &unk_224DB3A10);
    if (v145)
    {
      sub_224A36F98(&v144, &v146);
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      if (sub_224DAE278())
      {
        v66 = v142;
        v73 = v132;
        if (*(v58 + 48))
        {
          sub_224DAC2E8();
          (*v129)(v73, 0, 1, v66);
        }

        else
        {
          sub_224A3796C(v58 + v63, v132, &qword_27D6F3948, &qword_224DB5C10);
        }
      }

      else
      {
        v73 = v132;
        v66 = v142;
        (*v129)(v132, 1, 1, v142);
      }

      __swift_destroy_boxed_opaque_existential_1(&v146);
    }

    else
    {
      sub_224A3311C(&v144, &unk_27D6F4700, &unk_224DB3A10);
      v73 = v132;
      sub_224A3796C(v58 + v63, v132, &qword_27D6F3948, &qword_224DB5C10);
    }

    *(v58 + 32) = 0;
    sub_224D263EC();
    v74 = *(v58 + 32);
    *(v58 + 32) = 2;
    if ((v74 & 1) == 0)
    {
      v79 = v131;
      sub_224A71DBC(v73, v131);
LABEL_67:
      sub_224A6F4FC(v58);

      sub_224A3311C(v79, &qword_27D6F3948, &qword_224DB5C10);
      v52 = v56;
      v47 = v143;
      v48 = v139;
      goto LABEL_68;
    }

    sub_224A6FDF8();
    sub_224A3796C(v58 + v72, &v144, &unk_27D6F4700, &unk_224DB3A10);
    if (v145)
    {
      sub_224A36F98(&v144, &v146);
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v75 = sub_224DAE278();
      v76 = v131;
      if (v75)
      {
        v66 = v142;
        v77 = v125;
        v78 = v128;
        if (*(v58 + 48))
        {
          sub_224DAC2E8();
          (*v129)(v78, 0, 1, v66);
        }

        else
        {
          sub_224A3796C(v58 + v63, v128, &qword_27D6F3948, &qword_224DB5C10);
        }

        __swift_destroy_boxed_opaque_existential_1(&v146);
      }

      else
      {
        v78 = v128;
        v66 = v142;
        (*v129)(v128, 1, 1, v142);
        __swift_destroy_boxed_opaque_existential_1(&v146);
        v77 = v125;
      }
    }

    else
    {
      sub_224A3311C(&v144, &unk_27D6F4700, &unk_224DB3A10);
      v78 = v128;
      sub_224A3796C(v58 + v63, v128, &qword_27D6F3948, &qword_224DB5C10);
      v77 = v125;
      v76 = v131;
    }

    sub_224A3796C(v78, v76, &qword_27D6F3948, &qword_224DB5C10);
    v80 = v78;
    v81 = *(v124 + 48);
    v82 = v132;
    sub_224A3796C(v132, v77, &qword_27D6F3948, &qword_224DB5C10);
    v118 = v81;
    sub_224A3796C(v80, v77 + v81, &qword_27D6F3948, &qword_224DB5C10);
    if (v65(v77, 1, v66) == 1)
    {
      sub_224A3311C(v80, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v82, &qword_27D6F3948, &qword_224DB5C10);
      v83 = v65(v77 + v118, 1, v66);
      v79 = v131;
      v84 = v133;
      if (v83 == 1)
      {
        sub_224A3311C(v77, &qword_27D6F3948, &qword_224DB5C10);
        goto LABEL_67;
      }
    }

    else
    {
      v85 = v119;
      sub_224A3796C(v77, v119, &qword_27D6F3948, &qword_224DB5C10);
      v86 = v118;
      if (v65(v77 + v118, 1, v66) != 1)
      {
        v106 = v77 + v86;
        v107 = v116;
        (*v122)(v116, v106, v66);
        sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
        v108 = sub_224DAEDD8();
        v109 = v107;
        v110 = v123;
        v123(v109, v66);
        sub_224A3311C(v128, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A3311C(v132, &qword_27D6F3948, &qword_224DB5C10);
        v110(v85, v66);
        sub_224A3311C(v125, &qword_27D6F3948, &qword_224DB5C10);
        v79 = v131;
        v84 = v133;
        if (v108)
        {
          goto LABEL_67;
        }

LABEL_48:
        v87 = *(v84 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
        v123 = *(v58 + 16);
        v88 = v126;
        sub_224A3796C(v79, v126, &qword_27D6F3948, &qword_224DB5C10);
        v89 = v88;
        v90 = v120;
        sub_224A3796C(v89, v120, &qword_27D6F3948, &qword_224DB5C10);
        swift_beginAccess();
        if (v65(v90, 1, v66) == 1)
        {

          sub_224A3311C(v90, &qword_27D6F3948, &qword_224DB5C10);
          v91 = v117;
          sub_224B0E020(v123, v117);
          sub_224A3311C(v91, &qword_27D6F3948, &qword_224DB5C10);
LABEL_66:
          swift_endAccess();

          sub_224A3311C(v126, &qword_27D6F3948, &qword_224DB5C10);
          sub_224A83EBC();
          goto LABEL_67;
        }

        v92 = *v122;
        (*v122)(v121, v90, v66);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v87;
        v95 = *(v87 + 16);
        *&v144 = v95;
        *(v94 + 16) = 0x8000000000000000;
        v96 = v123;
        v98 = sub_224A3E7EC(v123);
        v99 = *(v95 + 16);
        v100 = (v97 & 1) == 0;
        v101 = v99 + v100;
        if (__OFADD__(v99, v100))
        {
          goto LABEL_72;
        }

        v102 = v97;
        if (*(v95 + 24) < v101)
        {
          sub_224B180B4(v101, isUniquelyReferenced_nonNull_native);
          v103 = sub_224A3E7EC(v96);
          if ((v102 & 1) != (v104 & 1))
          {
            goto LABEL_75;
          }

          v98 = v103;
          v105 = v144;
          if ((v102 & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_60:
          (*(v130 + 40))(v105[7] + *(v130 + 72) * v98, v121, v142);
LABEL_65:
          v79 = v131;
          *(v94 + 16) = v105;

          goto LABEL_66;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v105 = v144;
          if (v97)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_224B29914();
          v105 = v144;
          if (v102)
          {
            goto LABEL_60;
          }
        }

LABEL_63:
        v105[(v98 >> 6) + 8] |= 1 << v98;
        *(v105[6] + 8 * v98) = v96;
        v92((v105[7] + *(v130 + 72) * v98), v121, v142);
        v111 = v105[2];
        v112 = __OFADD__(v111, 1);
        v113 = v111 + 1;
        if (v112)
        {
          goto LABEL_73;
        }

        v105[2] = v113;
        v114 = v96;
        goto LABEL_65;
      }

      sub_224A3311C(v128, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v132, &qword_27D6F3948, &qword_224DB5C10);
      v123(v85, v66);
      v79 = v131;
      v84 = v133;
    }

    sub_224A3311C(v77, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_48;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_224DAF538();
  sub_224DAFDD8();
  __break(1u);
}

double sub_224D2B1D4(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v10 + 16));
    sub_224D2B290(v9, a2, a3, a4);
    os_unfair_lock_unlock(*(v10 + 16));
  }

  return result;
}

void sub_224D2B290(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    return;
  }

  v8 = *(a2 + 16);
  v9 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v10 = sub_224A71E2C(v8, *(a1 + v9), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  swift_endAccess();
  if (!v10)
  {
    __break(1u);
    return;
  }

  if (v10 == a2)
  {
    v11 = *(a2 + *a3);
    if (v11)
    {
      v12 = v11 - 1;
      *(a2 + *a3) = v12;
      if (*(a2 + 32) == 2)
      {
        sub_224A6FDF8();
      }

      else if (!v12)
      {
        *(a2 + 32) = 1;
      }

      if (qword_281351430 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_10:
  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_281364D60);

  v14 = sub_224DAB228();
  v15 = sub_224DAF278();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    *(v16 + 4) = v8;
    *v17 = v8;
    v18 = v8;
    _os_log_impl(&dword_224A2F000, v14, v15, a4, v16, 0xCu);
    sub_224A3311C(v17, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  sub_224A6F4FC(a2);
}

double sub_224D2B4CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v6 + 16));
    sub_224D2B9EC(v5, a1);
    os_unfair_lock_unlock(*(v6 + 16));
    sub_224DAB348();
  }

  return result;
}

double sub_224D2B584(uint64_t a1, char *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D2B5E4(a2);
  }

  return result;
}

void sub_224D2B5E4(char *a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if ((*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount;
    if (*&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount])
    {
      v4 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
      swift_beginAccess();
      v5 = *(v1 + v4);
      if (!*(v5 + 16) || (v6 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier, v7 = sub_224A89A08(&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier]), (v8 & 1) == 0))
      {
        swift_endAccess();
        __break(1u);

        os_unfair_lock_unlock(*(v5 + 16));
        __break(1u);
        return;
      }

      v9 = *(*(v5 + 56) + 8 * v7);
      swift_endAccess();
      if (v9 == a1)
      {
        v10 = *&v3[a1];
        v11 = v10 != 0;
        v12 = v10 - 1;
        if (v11)
        {
          *&v3[a1] = v12;
          if (!v12)
          {
            v23 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
            os_unfair_lock_lock(*(v23 + 16));
            sub_224DA7818(a1);
            os_unfair_lock_unlock(*(v23 + 16));
            swift_beginAccess();
            v24 = sub_224B3E35C(&a1[v6]);
            swift_endAccess();

            if (qword_281351430 != -1)
            {
              swift_once();
            }

            v25 = sub_224DAB258();
            __swift_project_value_buffer(v25, qword_281364D60);
            v26 = a1;
            v15 = sub_224DAB228();
            v16 = sub_224DAF2A8();

            if (!os_log_type_enabled(v15, v16))
            {
              goto LABEL_17;
            }

            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v30[0] = v18;
            *v17 = 136446210;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
            v27 = sub_224DAFD28();
            v29 = sub_224A33F74(v27, v28, v30);

            *(v17 + 4) = v29;
            v22 = "[mon:%{public}s] stopped monitoring location authorization";
            goto LABEL_16;
          }

          if (qword_281351430 == -1)
          {
LABEL_10:
            v13 = sub_224DAB258();
            __swift_project_value_buffer(v13, qword_281364D60);
            v14 = a1;
            v15 = sub_224DAB228();
            v16 = sub_224DAF278();

            if (!os_log_type_enabled(v15, v16))
            {
LABEL_17:

              return;
            }

            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v30[0] = v18;
            *v17 = 136446210;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
            v19 = sub_224DAFD28();
            v21 = sub_224A33F74(v19, v20, v30);

            *(v17 + 4) = v21;
            v22 = "[mon:%{public}s] removed refcount to location authorization monitor";
LABEL_16:
            _os_log_impl(&dword_224A2F000, v15, v16, v22, v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v18);
            MEMORY[0x22AA5EED0](v18, -1, -1);
            MEMORY[0x22AA5EED0](v17, -1, -1);
            goto LABEL_17;
          }

LABEL_22:
          swift_once();
          goto LABEL_10;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_224D2B9EC(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v4 = *(a1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  v12 = 0;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v20 = sub_224DAFB18();
    if (!v20 || (v22 = v21, *&v29 = v20, sub_224DAF538(), swift_dynamicCast(), v19 = v31[0], *&v29 = v22, type metadata accessor for ExtensionInfo(0), swift_dynamicCast(), v18 = v31[0], v15 = v12, v16 = v7, !v19))
    {
LABEL_28:
      sub_224A3B7E4(v8);
      return;
    }

LABEL_21:

    v23 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
    swift_beginAccess();
    sub_224A3796C(v18 + v23, &v29, &unk_27D6F4700, &unk_224DB3A10);
    if (v30)
    {
      sub_224A36F98(&v29, v31);
      __swift_project_boxed_opaque_existential_1(v31, v32);
      if (sub_224DAE278())
      {
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v24 = sub_224DAE328();
        v26 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
        if (v24 == sub_224DA9FE8() && v26 == v27)
        {
        }

        else
        {
          v28 = sub_224DAFD88();

          if ((v28 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        sub_224D27494(0xD00000000000002ALL, 0x8000000224DCF1B0);
      }

LABEL_10:

      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_11;
    }

    sub_224A3311C(&v29, &unk_27D6F4700, &unk_224DB3A10);
LABEL_11:
    v12 = v15;
    v7 = v16;
  }

  v13 = v12;
  v14 = v7;
  v15 = v12;
  if (v7)
  {
LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v18 = *(*(v8 + 56) + v17);
    v19 = *(*(v8 + 48) + v17);

    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_224D2BD4C(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v47 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v4);
  v6 = &v46 - v5;
  v59 = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v54 = a1;
  v8 = *(a1 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v10 = ~v13;
    v9 = v8 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v8 + 64);
    v12 = v8;
  }

  v16 = 0;
  v46 = v10;
  v17 = (v10 + 64) >> 6;
  v49 = (v3 + 8);
  v48 = MEMORY[0x277D84F90];
  v51 = v12;
  v52 = v9;
  v50 = v17;
LABEL_8:
  v18 = v16;
  v19 = v11;
  if ((v12 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v25 = v18;
      v26 = v19;
      v16 = v18;
      if (!v19)
      {
        while (1)
        {
          v16 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v16 >= v17)
          {
            goto LABEL_33;
          }

          v26 = *(v9 + 8 * v16);
          ++v25;
          if (v26)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        return;
      }

LABEL_18:
      v55 = (v26 - 1) & v26;
      v27 = (v16 << 9) | (8 * __clz(__rbit64(v26)));
      v24 = *(*(v12 + 56) + v27);
      v23 = *(*(v12 + 48) + v27);

      if (!v23)
      {
        goto LABEL_33;
      }

LABEL_19:

      sub_224D27478();
      v28 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v24 + v28, v57, &unk_27D6F4700, &unk_224DB3A10);
      v29 = v58;
      if (!v58)
      {
        break;
      }

      v30 = __swift_project_boxed_opaque_existential_1(v57, v58);
      v31 = v6;
      v32 = *(v29 - 8);
      MEMORY[0x28223BE20](v30, v30);
      v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v34);
      sub_224A3311C(v57, &unk_27D6F4700, &unk_224DB3A10);
      sub_224DAE328();
      (*(v32 + 8))(v34, v29);
      v6 = v31;
      sub_224DA9FF8();
      v35 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
      v36 = v54;
      swift_beginAccess();
      v37 = *(v36 + v35);
      if (*(v37 + 16) && (v38 = sub_224A89A08(v31), (v39 & 1) != 0))
      {
        v40 = *(*(v37 + 56) + 8 * v38);
        swift_endAccess();
        v41 = *v49;
        v42 = v40;
        v41(v31, v53);
        v43 = *&v42[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
        os_unfair_lock_lock(*(v43 + 16));
        v44 = v42[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status];
        v12 = v51;
        v9 = v52;
        v17 = v50;
        if (v44 == 2)
        {
          os_unfair_lock_unlock(*(v43 + 16));
        }

        else
        {
          os_unfair_lock_unlock(*(v43 + 16));
          if (v44 & 1) != 0 && (sub_224D27494(0x2079646165726C61, 0xEF656C6269736976))
          {
            v45 = *(v24 + 16);
            MEMORY[0x22AA5D350](v45);
            if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v48 = v45;
              sub_224DAF038();
            }

            sub_224DAF078();

            v48 = v59;
            v11 = v55;
            goto LABEL_8;
          }
        }

LABEL_28:
        v18 = v16;
        v19 = v55;
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        swift_endAccess();

        (*v49)(v31, v53);
        v18 = v16;
        v19 = v55;
        v12 = v51;
        v9 = v52;
        v17 = v50;
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_11;
        }
      }
    }

    sub_224A3311C(v57, &unk_27D6F4700, &unk_224DB3A10);
    goto LABEL_28;
  }

LABEL_11:
  v20 = sub_224DAFB18();
  if (v20)
  {
    v22 = v21;
    v56 = v20;
    sub_224DAF538();
    swift_dynamicCast();
    v23 = v57[0];
    v56 = v22;
    type metadata accessor for ExtensionInfo(0);
    swift_dynamicCast();
    v24 = v57[0];
    v16 = v18;
    v55 = v19;
    if (v23)
    {
      goto LABEL_19;
    }
  }

LABEL_33:
  sub_224A3B7E4(v12);
  *v47 = v48;
}

uint64_t sub_224D2C330()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224D2C3A4(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t sub_224D2C3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_224DAC378();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    v10 = 0x6164696C61766E69;
    v11 = 0xEB00000000646574;
  }

  else
  {
    v37 = 0x203A656D6974;
    v38 = 0xE600000000000000;
    sub_224DAC338();
    sub_224A83A44(&unk_281350DD0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A28]);
    v12 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v12);

    (*(v5 + 8))(v9, v4);
    MEMORY[0x22AA5D210](10, 0xE100000000000000);
    if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending))
    {
      v13 = 0x3A676E69646E6570;
    }

    else
    {
      v13 = 0x3A64656873756C66;
    }

    MEMORY[0x22AA5D210](v13, 0xE900000000000020);

    v15 = v37;
    v14 = v38;
    v37 = *(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
    type metadata accessor for LocationGraceRegistry();
    sub_224A83A44(qword_281358688, type metadata accessor for LocationGraceRegistry, &unk_224DBDF58);
    v16 = sub_224DAFD28();
    v18 = v17;
    v37 = v15;
    v38 = v14;

    MEMORY[0x22AA5D210](v16, v18);

    v39 = v37;
    v40 = v38;
    swift_beginAccess();

    v20 = sub_224D24720(v19);

    v22 = sub_224D24A88(v21);
    sub_224D24454(v22);
    v24 = v23;

    if (*(v24 + 16))
    {
      v35 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
      v25 = sub_224DAEDA8();
      v27 = v26;

      v35 = 0xD000000000000012;
      v36 = 0x8000000224DCF190;
      MEMORY[0x22AA5D210](v25, v27);

      MEMORY[0x22AA5D210](v35, v36);
    }

    v28 = sub_224D24D20(v20);
    sub_224D24454(v28);
    v30 = v29;

    if (*(v30 + 16))
    {
      v35 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
      v31 = sub_224DAEDA8();
      v33 = v32;

      v35 = 0xD000000000000013;
      v36 = 0x8000000224DCF170;
      MEMORY[0x22AA5D210](v31, v33);

      MEMORY[0x22AA5D210](v35, v36);
    }

    v10 = v39;
    v11 = v40;
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t sub_224D2C914@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_224D2C944(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3D20, &qword_224DB49C0);
    v2 = sub_224DAFBA8();
    v19 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224DAE8A8();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_224B0F928(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_224DAF698();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_224DAFB18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_224D2CB80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BF8, &qword_224DB48C8);
    v2 = sub_224DAFBA8();
    v19 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224A3B79C(0, &qword_281350970, 0x277CFA418);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetRelevanceRefreshTask();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_224B11970(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_224DAF698();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_224DAFB18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_224D2CDF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_224DAFBA8();
    v25 = v8;
    sub_224DAFA68();
    v9 = sub_224DAFB18();
    if (v9)
    {
      v10 = v9;
      sub_224DAF538();
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = sub_224DAF698();
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = sub_224DAFB18();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v8;
}

uint64_t sub_224D2D01C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B20, &qword_224DB4838);
    v2 = sub_224DAFBA8();
    v19 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetRendererSession(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_224B18340(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_224DAF698();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_224DAFB18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_224D2D28C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AD8, &qword_224DB4810);
    v2 = sub_224DAFBA8();
    v19 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224DAA0F8();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ControlSession(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_224B18B4C(v12 + 1, 1);
        }

        v2 = v19;
        sub_224A83A44(&qword_2813518A8, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FE0]);
        result = sub_224DAED88();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_224DAFB18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_224D2D4FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3AB8, &qword_224DB47F8);
    v2 = sub_224DAFBA8();
    v19 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224DAA6D8();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ActivityRendererSession(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_224B18E44(v12 + 1, 1);
        }

        v2 = v19;
        sub_224A83A44(&qword_2813517C8, MEMORY[0x277D7BB80], MEMORY[0x277D7BB88]);
        result = sub_224DAED88();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_224DAFB18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_224D2D820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v7 = sub_224DAFBA8();
    v22 = v7;
    sub_224DAFA68();
    if (sub_224DAFB18())
    {
      type metadata accessor for EmptyKey();
      do
      {
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          a6(v14 + 1, 1);
        }

        v7 = v22;
        sub_224DAFE68();
        result = sub_224DAFEA8();
        v9 = v22 + 64;
        v10 = -1 << *(v22 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v22 + 64 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v22 + 64 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v22 + 48) + 8 * v13) = v21;
        *(*(v22 + 56) + 8 * v13) = v20;
        ++*(v22 + 16);
      }

      while (sub_224DAFB18());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v7;
}

uint64_t sub_224D2DA5C(uint64_t a1)
{
  v2 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v4;
    v38 = v1;
    v36 = &v36;
    MEMORY[0x28223BE20](a1, v5);
    v39 = &v36 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v6);
    v40 = 0;
    v41 = v2;
    v7 = 0;
    v4 = v2 + 64;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = &unk_27D6F4700;
    v13 = &unk_224DB3A10;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v17 = v14 | (v7 << 6);
      v18 = *(v2 + 56);
      v46 = *(*(v2 + 48) + 8 * v17);
      v42 = v17;
      v19 = *(v18 + 8 * v17);
      v20 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v19 + v20, v47, v12, v13);
      v21 = v48;
      if (v48)
      {
        v43 = v49;
        v22 = __swift_project_boxed_opaque_existential_1(v47, v48);
        v44 = &v36;
        v23 = *(v21 - 8);
        MEMORY[0x28223BE20](v22, v22);
        v45 = v10;
        v25 = v13;
        v26 = v12;
        v27 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v23 + 16))(v27);
        v46 = v46;

        sub_224A3311C(v47, v26, v25);
        LODWORD(v43) = sub_224DAE278();
        v28 = v27;
        v12 = v26;
        v13 = v25;
        v10 = v45;
        (*(v23 + 8))(v28, v21);
        v2 = v41;

        if ((v43 & 1) == 0)
        {
          *&v39[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          if (__OFADD__(v40++, 1))
          {
            __break(1u);
            return sub_224B2EC7C(v39, v37, v40, v2);
          }
        }
      }

      else
      {
        sub_224A3311C(v47, v12, v13);
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_224B2EC7C(v39, v37, v40, v2);
      }

      v16 = *(v4 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v31 = v1;
    v32 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v32;
    v1 = v31;
  }

  v33 = swift_slowAlloc();
  sub_224D2E3F0(v33, v4, v2);
  v35 = v34;
  MEMORY[0x22AA5EED0](v33, -1, -1);
  return v35;
}

uint64_t sub_224D2DE28(uint64_t a1)
{
  v2 = a1;
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v4;
    v27 = v1;
    v25 = &v25;
    MEMORY[0x28223BE20](a1, v5);
    v28 = &v25 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v4 = v12 | (v7 << 6);
      v15 = *(*(v2 + 56) + 8 * v4);
      v16 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v15 + v16, v30, &unk_27D6F4700, &unk_224DB3A10);
      v17 = v31;
      sub_224A3311C(v30, &unk_27D6F4700, &unk_224DB3A10);
      if (!v17)
      {
        *&v28[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_224B2EC7C(v28, v26, v29, v2);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_224B2EC7C(v28, v26, v29, v2);
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v20 = v1;
    v21 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v21;
    v1 = v20;
  }

  v22 = swift_slowAlloc();
  sub_224D2E6E8(v22, v4, v2);
  v24 = v23;
  MEMORY[0x22AA5EED0](v22, -1, -1);
  return v24;
}

uint64_t sub_224D2E0B0(uint64_t a1)
{
  v2 = v1;
  v39 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v37 = v32 - v7;
  LOBYTE(v7) = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v33 = v8;
    v34 = v2;
    v32[1] = v32;
    MEMORY[0x28223BE20](v6, v9);
    v35 = v32 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v10);
    v36 = 0;
    v11 = 0;
    v8 = a1 + 64;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = (v12 + 63) >> 6;
    v2 = a1;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v19 = v16 | (v11 << 6);
      v20 = *(*(v2 + 56) + 8 * v19);
      if (!*(v20 + 40))
      {
        v21 = v2;
        v22 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        v38 = v14;
        swift_beginAccess();
        v23 = v20 + v22;
        v2 = v21;
        a1 = v37;
        sub_224A3796C(v23, v37, &qword_27D6F3948, &qword_224DB5C10);
        v24 = sub_224DAC378();
        v25 = (*(*(v24 - 8) + 48))(a1, 1, v24);
        sub_224A3311C(a1, &qword_27D6F3948, &qword_224DB5C10);
        v14 = v38;
        if (v25 == 1)
        {
          continue;
        }
      }

      *&v35[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_224B2EC7C(v35, v33, v36, v2);
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return sub_224B2EC7C(v35, v33, v36, v2);
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    v28 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v28;
  }

  v29 = swift_slowAlloc();
  sub_224D2E8A0(v29, v8, a1);
  v31 = v30;
  result = MEMORY[0x22AA5EED0](v29, -1, -1);
  if (!v2)
  {
    return v31;
  }

  return result;
}

void sub_224D2E3F0(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v32 = a1;
    v33 = 0;
    v31 = a2;
    v6 = 0;
    v7 = a3 + 64;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = &unk_27D6F4700;
    v34 = a3;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_15:
      v16 = v13 | (v6 << 6);
      v17 = *(a3 + 56);
      v18 = *(*(a3 + 48) + 8 * v16);
      v35 = v16;
      v19 = *(v17 + 8 * v16);
      v20 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v19 + v20, v39, v12, &unk_224DB3A10);
      v21 = v40;
      if (v40)
      {
        v37 = v41;
        v22 = __swift_project_boxed_opaque_existential_1(v39, v40);
        v38 = &v30;
        v23 = v12;
        v24 = *(v21 - 8);
        MEMORY[0x28223BE20](v22, v22);
        v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v26);
        v36 = v18;

        sub_224A3311C(v39, v23, &unk_224DB3A10);
        v27 = sub_224DAE278();
        v28 = v26;
        a3 = v34;
        (*(v24 + 8))(v28, v21);
        v12 = v23;

        v10 = v42;
        if ((v27 & 1) == 0)
        {
          *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_20:
            sub_224B2EC7C(v32, v31, v33, a3);

            return;
          }
        }
      }

      else
      {
        sub_224A3311C(v39, v12, &unk_224DB3A10);
        v10 = v42;
      }
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v42 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_224D2E6E8(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v20 = a1;
    v19 = a2;
    v23 = 0;
    v6 = 0;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a3 + 56) + 8 * v14);
      v16 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v15 + v16, v21, &unk_27D6F4700, &unk_224DB3A10);
      v17 = v22;
      sub_224A3311C(v21, &unk_27D6F4700, &unk_224DB3A10);
      if (!v17)
      {
        *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_18:
          sub_224B2EC7C(v20, v19, v23, a3);

          return;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_18;
      }

      v13 = *(a3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_224D2E8A0(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v24 - v7;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v26 = a1;
    v27 = 0;
    v25 = a2;
    v9 = 0;
    v10 = v28 + 64;
    v11 = 1 << *(v28 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v28 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v28 + 56) + 8 * v18);
      if (!*(v19 + 40))
      {
        v20 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v19 + v20, v8, &qword_27D6F3948, &qword_224DB5C10);
        v21 = sub_224DAC378();
        v22 = (*(*(v21 - 8) + 48))(v8, 1, v21);
        sub_224A3311C(v8, &qword_27D6F3948, &qword_224DB5C10);
        if (v22 == 1)
        {
          continue;
        }
      }

      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_19:
        sub_224B2EC7C(v26, v25, v27, v28);

        return;
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_224D2EAF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_224DAFAA8() == *(a4 + 36))
    {
      sub_224DAFAB8();
      sub_224DAF538();
      swift_dynamicCast();
      sub_224A3E7EC(v6);
      v5 = v4;

      if (v5)
      {
        sub_224DAFA78();
        sub_224DAFAD8();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_224DAF7B8();
}

uint64_t sub_224D2EC44(void *a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + 32) = 2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  v6 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  v7 = sub_224DAC378();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertionCount) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_refreshVisibility) = 0;
  v8 = (v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
  *v9 = 0;
  v9[1] = 0;
  v10 = v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForSignificantLocationChange) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange) = 0;
  v11 = v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v3 + 16) = a1;
  swift_weakAssign();
  v12 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  v13 = a1;
  sub_224C4D398(a3, v3 + v12, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();
  sub_224A6FDF8();
  sub_224A3311C(a3, &qword_27D6F3948, &qword_224DB5C10);
  return v3;
}

uint64_t sub_224D2EE84@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v46 = &v34 - v3;
  v4 = sub_224DAD928();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAE7A8();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAEB68();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAD918();
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v42 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v41 = &v34 - v18;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v40, v19);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v20 = *(v35 - 8);
  v22 = MEMORY[0x28223BE20](v35, v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v36 = &v34 - v26;
  v27 = sub_224DA9908();
  MEMORY[0x28223BE20](v27 - 8, v28);
  v39 = &v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAD988();
  v30 = sub_224DAD938();
  v37 = v31;
  v38 = v30;
  sub_224DAD958();
  sub_224DAA1E8();
  sub_224DA9898();
  sub_224B44F14(&qword_2813519C0, MEMORY[0x277CF9F98]);
  sub_224B44F14(&unk_281351998, MEMORY[0x277CF9FC0]);
  sub_224B44F14(&qword_2813519B8, MEMORY[0x277CF9FA0]);
  sub_224B44F14(&qword_2813519B0, MEMORY[0x277CF9FA8]);
  sub_224DAA1D8();
  (*(v20 + 8))(v24, v35);
  v32 = v42;
  sub_224DAD968();
  sub_224DAD908();
  sub_224D2F33C(v32);
  sub_224DAD9B8();
  sub_224DAD9A8();
  sub_224DAD978();
  sub_224DAD948();
  return sub_224DAD998();
}

uint64_t sub_224D2F33C(uint64_t a1)
{
  v2 = sub_224DAD918();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224D2F410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (*(a3 + 8))(a2, a3);
  if (*(v6 + 16) && (v7 = sub_224A438E8(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_224DAD9C8();
    v18 = *(v11 - 8);
    (*(v18 + 16))(a4, v10 + *(v18 + 72) * v9, v11);

    v12 = *(v18 + 56);
    v13 = a4;
    v14 = 0;
    v15 = v11;
  }

  else
  {

    v16 = sub_224DAD9C8();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a4;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

void *sub_224D2F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a7 + 8))(a6, a7);
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v13 = sub_224BA0870(sub_224D30530, v15, v12);

  return v13;
}

uint64_t sub_224D2F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8))(a3, a4);

  v7 = sub_224D3028C(v6, a1, a2);

  return v7;
}

BOOL sub_224D2F6B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a4;
  v67 = a7;
  v71 = a6;
  v76 = a5;
  v77 = a3;
  v66 = sub_224DAE7A8();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v9);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAEB68();
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v87 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v72 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v73 = &v63 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v63 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v63 - v29;
  v31 = sub_224DA9908();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a1, v31);
  v33 = *(v17 + 48);
  v34 = sub_224DAD9C8();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&v30[v33], a2, v34);
  sub_224D30458(v30, v27);
  v82 = v17;
  v36 = *(v17 + 48);
  v37 = sub_224DAD938();
  v39 = v38;
  v40 = *(v35 + 8);
  v80 = v34;
  v81 = v40;
  v40(&v27[v36], v34);
  if (v37 == v77 && v39 == v78)
  {

    v43 = *(v32 + 8);
    v43(v27, v31);
  }

  else
  {
    v42 = sub_224DAFD88();

    v43 = *(v32 + 8);
    v43(v27, v31);
    if ((v42 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v78 = v43;
  v79 = v31;
  v44 = v73;
  sub_224D30458(v30, v73);
  v45 = *(v82 + 48);
  sub_224DAD958();
  v81(v44 + v45, v80);
  sub_224D30558();
  v46 = v75;
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v85 == v83 && v86 == v84)
  {
    v47 = 1;
  }

  else
  {
    v47 = sub_224DAFD88();
  }

  v48 = v79;
  (*(v74 + 8))(v87, v46);

  v49 = v44;
  v50 = v78;
  v78(v49, v48);
  if (v47)
  {
    v51 = v72;
    sub_224D30458(v30, v72);
    v52 = *(v82 + 48);
    v53 = v68;
    sub_224DAD9B8();
    v54 = v51 + v52;
    v55 = v79;
    v81(v54, v80);
    v56 = MEMORY[0x22AA5CEB0](v53, v71);
    (*(v69 + 8))(v53, v70);
    v50(v51, v55);
    if (v56)
    {
      v57 = v72;
      sub_224D30458(v30, v72);
      v58 = *(v82 + 48);
      v59 = v64;
      sub_224DAD9A8();
      v81(v57 + v58, v80);
      sub_224D305BC();
      v60 = v66;
      sub_224DAEFA8();
      sub_224DAEFA8();
      (*(v65 + 8))(v59, v60);
      sub_224D304C8(v30);
      v61 = v85 == v83;
      v50(v57, v79);
      return v61;
    }
  }

LABEL_15:
  sub_224D304C8(v30);
  return 0;
}

unint64_t *sub_224D2FD04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_224D2FDA8(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_224D2FDA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v53 = a2;
  v54 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  v8 = MEMORY[0x28223BE20](v66, v7);
  v76 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v52 - v11;
  v75 = sub_224DAD9C8();
  v13 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v14);
  v73 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_224DA9908();
  result = MEMORY[0x28223BE20](v72, v16);
  v71 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v67 = a3;
  v21 = *(a3 + 64);
  v57 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v55 = 0;
  v56 = (v22 + 63) >> 6;
  v61 = v13 + 2;
  v62 = v18 + 16;
  v74 = v13;
  v63 = v18;
  v64 = v12;
  v59 = (v18 + 8);
  v60 = v13 + 1;
  v65 = a4;
  while (v24)
  {
    v28 = v12;
    v29 = __clz(__rbit64(v24));
    v70 = (v24 - 1) & v24;
LABEL_12:
    v32 = v29 | (v20 << 6);
    v33 = v67;
    v34 = v67[6] + *(v63 + 72) * v32;
    v69 = *(v63 + 16);
    v35 = v71;
    v36 = v72;
    v69(v71, v34, v72);
    v37 = v33[7];
    v38 = v73;
    v39 = v74[9];
    v58 = v32;
    v40 = v74[2];
    v41 = v75;
    v40(v73, v37 + v39 * v32, v75);
    v69(v28, v35, v36);
    v42 = v66;
    v40((v28 + *(v66 + 48)), v38, v41);
    v43 = v76;
    sub_224D30458(v28, v76);
    v44 = *(v42 + 48);
    v45 = sub_224DAD938();
    v47 = v46;
    v48 = v74[1];
    v48(v43 + v44, v41);
    if (v45 == v65 && v47 == v68)
    {

      v12 = v64;
      sub_224D304C8(v64);
      v49 = *v59;
      v50 = v72;
      (*v59)(v76, v72);
      v48(v73, v75);
      result = (v49)(v71, v50);
      v24 = v70;
      goto LABEL_15;
    }

    v25 = sub_224DAFD88();

    v12 = v64;
    sub_224D304C8(v64);
    v26 = *v59;
    v27 = v72;
    (*v59)(v76, v72);
    v48(v73, v75);
    result = (v26)(v71, v27);
    v24 = v70;
    if (v25)
    {
LABEL_15:
      *(v54 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      if (__OFADD__(v55++, 1))
      {
        __break(1u);
        return sub_224B2DC20(v54, v53, v55, v67);
      }
    }
  }

  v30 = v20;
  while (1)
  {
    v20 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v20 >= v56)
    {
      return sub_224B2DC20(v54, v53, v55, v67);
    }

    v31 = *(v57 + 8 * v20);
    ++v30;
    if (v31)
    {
      v28 = v12;
      v29 = __clz(__rbit64(v31));
      v70 = (v31 - 1) & v31;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D3028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_224D2FD04(v15, v9, a1, a2, a3);
      MEMORY[0x22AA5EED0](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x28223BE20](v11, v12);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v13 = sub_224D2FDA8((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_224D30458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D304C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224D30558()
{
  result = qword_281351868;
  if (!qword_281351868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351868);
  }

  return result;
}

unint64_t sub_224D305BC()
{
  result = qword_281350C48;
  if (!qword_281350C48)
  {
    sub_224DAE7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350C48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags.Widgets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags.Widgets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224D30778()
{
  result = qword_27D6F6950;
  if (!qword_27D6F6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6950);
  }

  return result;
}

unint64_t sub_224D307D0()
{
  result = qword_27D6F6958;
  if (!qword_27D6F6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6958);
  }

  return result;
}

uint64_t sub_224D3085C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F6960);
  __swift_project_value_buffer(v0, qword_27D6F6960);
  return sub_224DAB238();
}

unint64_t sub_224D308DC(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v12 = 0;
      sub_224DAF938();
      MEMORY[0x22AA5D210](0xD00000000000001CLL, 0x8000000224DCF560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224DAFA48();
    }

    else
    {
      sub_224DAF938();

      v12 = 0xD000000000000012;
      v3 = [a1 description];
      v4 = sub_224DAEE18();
      v6 = v5;

      MEMORY[0x22AA5D210](v4, v6);

      MEMORY[0x22AA5D210](0x63414E4C206F7420, 0xEC0000006E6F6974);
    }

    return v12;
  }

  if (a2 == 2)
  {
    sub_224DAF938();

    v12 = 0xD00000000000001CLL;
    v7 = [a1 description];
    v8 = sub_224DAEE18();
    v10 = v9;

    MEMORY[0x22AA5D210](v8, v10);

    return v12;
  }

  return 0xD00000000000001ALL;
}

unint64_t sub_224D30AE4(void *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v5;
  v6 = sub_224D308DC(a1, a2);
  *(inited + 72) = MEMORY[0x277D837D0];
  v8 = 0x206E776F6E6B6E55;
  if (v7)
  {
    v8 = v6;
  }

  v9 = 0xED0000726F727265;
  if (v7)
  {
    v9 = v7;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  return v10;
}

uint64_t sub_224D30BD8(uint64_t a1)
{
  v2 = sub_224D31908();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224D30C14(uint64_t a1)
{
  v2 = sub_224D31908();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_224D30C80(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    sub_224D3177C();
    v4 = swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 1;
  }

  else
  {
    v4 = 0;
  }

  v6 = a1;
  v7 = a1;
  a2(v4);
}

void sub_224D30D20(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v86 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v86 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    v24 = v4[6];
    sub_224D3177C();
    v25 = swift_allocError();
    *v26 = a1;
    *(v26 + 8) = 0;
    v27 = a1;

    v24(v25);

    goto LABEL_5;
  }

  v18 = v17;
  v93 = a3;
  v19 = v4[4];
  v20 = a1;
  if ([v19 isRemote])
  {
    v21 = v4[6];
    sub_224D3177C();
    v22 = swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 3;

    v21(v22);

LABEL_5:

    return;
  }

  v94 = v13;
  v28 = v4[4];
  v29 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v30 = v28 + v29;
  v31 = v94;
  sub_224AFD468(v30, v11);
  if ((*(v31 + 48))(v11, 1, v12) == 1)
  {
    sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
    v32 = v4[6];
    v33 = v4[4];
    sub_224D3177C();
    v34 = swift_allocError();
    *v35 = v33;
    *(v35 + 8) = 2;

    v36 = v33;
    v32(v34);

    if (qword_27D6F2D10 != -1)
    {
      swift_once();
    }

    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_27D6F6960);
    v38 = v20;

    v39 = sub_224DAB228();
    v40 = sub_224DAF288();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v96[0] = v43;
      *v41 = 136446466;
      v44 = [v18 identifier];
      v45 = sub_224DAEE18();
      v47 = v46;

      v48 = sub_224A33F74(v45, v47, v96);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2114;
      v49 = v4[4];
      *(v41 + 14) = v49;
      *v42 = v49;
      v50 = v49;
      _os_log_impl(&dword_224A2F000, v39, v40, "Unable to execute LNAction %{public}s for invalid identity: %{public}@", v41, 0x16u);
      sub_224A3311C(v42, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v41, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v31 + 32))(v16, v11, v12);
    v51 = 9;
    if ((a2 & 0xFE) == 0)
    {
      v51 = 2;
    }

    v91 = v51;
    if (qword_27D6F2D10 != -1)
    {
      swift_once();
    }

    v92 = v18;
    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_27D6F6960);
    v53 = v20;

    v54 = sub_224DAB228();
    v55 = sub_224DAF278();

    v90 = v53;

    if (os_log_type_enabled(v54, v55))
    {
      v89 = v55;
      v56 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v96[0] = v88;
      *v56 = 136446978;
      v57 = v92;
      v58 = [v92 identifier];
      v59 = sub_224DAEE18();
      v61 = v60;

      v62 = sub_224A33F74(v59, v61, v96);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2082;
      v63 = [v57 mangledTypeName];
      if (v63)
      {
        v64 = v63;
        v65 = sub_224DAEE18();
        v67 = v66;
      }

      else
      {
        v67 = 0xE200000000000000;
        v65 = 11565;
      }

      v68 = sub_224A33F74(v65, v67, v96);

      *(v56 + 14) = v68;
      *(v56 + 22) = 2114;
      v69 = v4[4];
      *(v56 + 24) = v69;
      v70 = v87;
      *v87 = v69;
      *(v56 + 32) = 2082;
      v95 = a2;
      v71 = v69;
      v72 = sub_224DAEE28();
      v74 = sub_224A33F74(v72, v73, v96);

      *(v56 + 34) = v74;
      _os_log_impl(&dword_224A2F000, v54, v89, "Started executing LNAction %{public}s(%{public}s) in %{public}@ from %{public}s.", v56, 0x2Au);
      sub_224A3311C(v70, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v70, -1, -1);
      v75 = v88;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v75, -1, -1);
      MEMORY[0x22AA5EED0](v56, -1, -1);
    }

    sub_224DA9FE8();
    v76 = v4[4];
    swift_beginAccess();
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    sub_224DA9FE8();
    swift_endAccess();

    v78 = v4[3];

    v79 = v90;
    v80 = sub_224DAEDE8();

    v81 = sub_224DAEDE8();

    if (v78)
    {
      v82 = sub_224DAEDE8();
    }

    else
    {
      v82 = 0;
    }

    v83 = v94;
    v84 = objc_allocWithZone(MEMORY[0x277D7A008]);
    v85 = [v84 initWithLinkAction:v92 appBundleIdentifier:v80 extensionBundleIdentifier:v81 runSource:v91 runSourceOverride:v82 authenticationPolicy:v93];

    [v85 setDelegate_];
    [v85 start];

    (*(v83 + 8))(v16, v12);
  }
}

id sub_224D31698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveWidgetActionRunner.Delegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224D316E4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224D3177C()
{
  result = qword_27D6F69E8;
  if (!qword_27D6F69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F69E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore29InteractiveWidgetActionRunnerC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_224D317FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_224D31844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_224D31888(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_224D318B4()
{
  result = qword_27D6F6A00;
  if (!qword_27D6F6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6A00);
  }

  return result;
}

unint64_t sub_224D31908()
{
  result = qword_27D6F6A08[0];
  if (!qword_27D6F6A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D6F6A08);
  }

  return result;
}

uint64_t sub_224D31960(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_224DAF728();
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

uint64_t sub_224D31A4C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_224D31A9C(a1, a2);
  return v4;
}

char *sub_224D31A9C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v3 = *v2;
  v4 = *(*v2 + 88);
  v19 = sub_224DAF728();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v6);
  v8 = &v17 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 56);
  v10(&v2[*(v3 + 144)], 1, 1, v4);
  v11 = &v2[*(*v2 + 152)];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = *(*v2 + 160);
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *&v2[v12] = v13;
  *(v13 + 16) = v14;
  (*(*(*(v3 + 96) - 8) + 32))(&v2[*(*v2 + 136)], v17);
  (*(v9 + 32))(v8, v18, v4);
  v10(v8, 0, 1, v4);
  v15 = *(*v2 + 144);
  swift_beginAccess();
  (*(v5 + 40))(&v2[v15], v8, v19);
  swift_endAccess();
  return v2;
}

uint64_t sub_224D31D20(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 152);
  swift_beginAccess();
  sub_224D3338C(v1 + v5, v8);
  v6 = v9;
  sub_224D333FC(v8);
  if (v6)
  {
    os_unfair_lock_unlock(*(v4 + 16));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_224DAB2D8();
  }

  else
  {
    sub_224A3317C(a1, v8);
    swift_beginAccess();
    sub_224D33488(v8, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v4 + 16));
    v9 = v3;
    WitnessTable = swift_getWitnessTable();
    v8[0] = v1;

    sub_224DAB2B8();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }
}

void sub_224D31F1C(char *a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F6A90, &qword_224DC1058);
  v4 = sub_224DAF728();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2, v6);
  v9 = &v26 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v7, v11);
  v13 = &v26 - v12;
  v14 = *&v1[*(v3 + 160)];
  os_unfair_lock_lock(*(v14 + 16));
  v15 = *(*v1 + 152);
  swift_beginAccess();
  sub_224D3338C(&v1[v15], v29);
  v16 = v30;
  sub_224D333FC(v29);
  if (v16)
  {
    v17 = *(*v1 + 144);
    swift_beginAccess();
    v26 = v13;
    v27 = a1;
    v18 = *(v10 + 16);
    v18(v13, &v1[v17], v4);
    v19 = TupleTypeMetadata2;
    v20 = *(TupleTypeMetadata2 + 48);
    sub_224D3338C(&v1[v15], v9);
    v21 = (v18)(&v9[v20], &v1[v17], v4);
    MEMORY[0x28223BE20](v21, v22);
    v23 = v27;
    *(&v26 - 4) = v1;
    *(&v26 - 3) = v23;
    v24 = v26;
    *(&v26 - 2) = v26;
    sub_224D328A0(v9, sub_224D33464, (&v26 - 6), v19, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v25);
    (*(v28 + 8))(v9, v19);
    (*(v10 + 8))(v24, v4);
  }

  else
  {
    os_unfair_lock_unlock(*(v14 + 16));
  }
}

uint64_t sub_224D32224(uint64_t *a1, void (*a2)(char *, void *, uint64_t), uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v50 = *a1;
  v4 = v50;
  v5 = *(v50 + 112);
  v6 = *(v50 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, AssociatedTypeWitness);
  v47 = &v42 - v8;
  v44 = v9;
  v10 = sub_224DAF728();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v46 = &v42 - v12;
  v48 = v5;
  v58 = swift_getAssociatedTypeWitness();
  v49 = *(v58 - 8);
  v14 = MEMORY[0x28223BE20](v58, v13);
  v55 = &v42 - v15;
  v16 = *(v6 - 8);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v52 = &v42 - v21;
  v22 = sub_224DAF728();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v42 - v29;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v31 = *(v4 + 152);
  swift_beginAccess();
  sub_224D33488(v56, a1 + v31);
  swift_endAccess();
  (*(v16 + 56))(v30, 1, 1, v6);
  v32 = *(*a1 + 144);
  swift_beginAccess();
  (*(v23 + 40))(a1 + v32, v30, v22);
  swift_endAccess();
  os_unfair_lock_unlock(*(*(a1 + *(*a1 + 160)) + 16));
  sub_224DAB2A8();
  (*(v23 + 16))(v27, v54, v22);
  if ((*(v16 + 48))(v27, 1, v6) == 1)
  {
    return (*(v23 + 8))(v27, v22);
  }

  v34 = v52;
  (*(v16 + 32))(v52, v27, v6);
  v43 = v16;
  (*(v16 + 16))(v45, v34, v6);
  sub_224DAEF38();
  v48 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = v46;
  v54 = AssociatedConformanceWitness;
  sub_224DAF738();
  v37 = *(v51 + 48);
  v38 = v44;
  v39 = v37(v36, 1, v44);
  v40 = v47;
  if (v39 != 1)
  {
    v53 = *(v51 + 32);
    v41 = (v51 + 8);
    do
    {
      v53(v40, v36, v38);
      sub_224DAB2D8();
      (*v41)(v40, v38);
      sub_224DAF738();
    }

    while (v37(v36, 1, v38) != 1);
  }

  (*(v49 + 8))(v55, v58);
  return (*(v43 + 8))(v52, v48);
}

uint64_t sub_224D328A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

void sub_224D32978(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(*v1 + 152);
  swift_beginAccess();
  sub_224D3338C(v1 + v3, &v4);
  if (v5)
  {
    sub_224A36F98(&v4, v6);
    os_unfair_lock_unlock(*(v2 + 16));
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_224DAB2F8();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_224D333FC(&v4);
    os_unfair_lock_unlock(*(v2 + 16));
  }
}

void sub_224D32A58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v43 = &v40 - v7;
  v8 = sub_224DAF728();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v44 = &v40 - v10;
  v45 = v3;
  v51 = swift_getAssociatedTypeWitness();
  v47 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v11);
  v50 = &v40 - v12;
  v49 = sub_224DAF728();
  v13 = *(v49 - 8);
  v15 = MEMORY[0x28223BE20](v49, v14);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v40 - v19;
  v21 = *(v4 - 8);
  v23 = MEMORY[0x28223BE20](v18, v22);
  v41 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v48 = &v40 - v26;
  v27 = *(v0 + *(v1 + 160));
  os_unfair_lock_lock(*(v27 + 16));
  v28 = *(*v0 + 152);
  swift_beginAccess();
  sub_224D3338C(v0 + v28, &v52);
  v29 = *(&v53 + 1);
  sub_224D333FC(&v52);
  if (!v29)
  {
    goto LABEL_4;
  }

  v40 = v2;
  v30 = *(*v0 + 144);
  swift_beginAccess();
  (*(v13 + 16))(v20, v0 + v30, v49);
  if (v21[6](v20, 1, v4) == 1)
  {
    (*(v13 + 8))(v20, v49);
LABEL_4:
    os_unfair_lock_unlock(*(v27 + 16));
    return;
  }

  v31 = v48;
  v21[4](v48, v20, v4);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  swift_beginAccess();
  sub_224D33488(&v52, v0 + v28);
  swift_endAccess();
  v32 = v42;
  (v21[7])(v42, 1, 1, v4);
  swift_beginAccess();
  (*(v13 + 40))(v0 + v30, v32, v49);
  swift_endAccess();
  os_unfair_lock_unlock(*(v27 + 16));
  v42 = v21;
  v21[2](v41, v31, v4);
  sub_224DAEF38();
  v45 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v44;
  v49 = AssociatedConformanceWitness;
  sub_224DAF738();
  v35 = v46;
  v36 = *(v46 + 48);
  v37 = v36(v34, 1, AssociatedTypeWitness);
  v38 = v43;
  if (v37 != 1)
  {
    v39 = *(v35 + 32);
    do
    {
      v39(v38, v34, AssociatedTypeWitness);
      sub_224DAB2D8();
      (*(v35 + 8))(v38, AssociatedTypeWitness);
      sub_224DAF738();
    }

    while (v36(v34, 1, AssociatedTypeWitness) != 1);
  }

  (*(v47 + 8))(v50, v51);
  (*(v42 + 1))(v48, v45);
}

uint64_t *sub_224D330F0()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 136));
  v1 = *(*v0 + 144);
  v2 = sub_224DAF728();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_224D333FC(v0 + *(*v0 + 152));

  return v0;
}

uint64_t sub_224D33208()
{
  sub_224D330F0();

  return swift_deallocClassInstance();
}

uint64_t sub_224D3338C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6A90, &qword_224DC1058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D333FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6A90, &qword_224DC1058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224D33488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6A90, &qword_224DC1058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D334FC(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v74 = a5;
  v75 = a4;
  v8 = sub_224DAE6E8();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC2B8();
  v73 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v65 - v16;
  v18 = sub_224DAB258();
  v19 = *(v18 - 1);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v71 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v65 - v24;
  v26 = sub_224A8689C(a2, sub_224A869E4, sub_224B2FE70);
  v27 = a1;
  v66 = a3;
  v28 = v72;
  if (sub_224D3BE10(a1, v26, a3))
  {
    v71 = v29;

    v30 = v25;
    (*(v19 + 16))(v25, v28 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v18);
    v31 = v73;
    (*(v73 + 16))(v17, v27, v11);
    v32 = sub_224DAB228();
    v33 = sub_224DAF268();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v72 = v18;
      v70 = v19;
      v35 = v34;
      v36 = swift_slowAlloc();
      v76 = v36;
      *v35 = 136446210;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v37 = sub_224DAFD28();
      v39 = v38;
      (*(v31 + 8))(v17, v11);
      v40 = sub_224A33F74(v37, v39, &v76);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_224A2F000, v32, v33, "%{public}s Fetched from cache", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x22AA5EED0](v36, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);

      (*(v70 + 8))(v30, v72);
    }

    else
    {

      (*(v31 + 8))(v17, v11);
      (*(v19 + 8))(v30, v18);
    }

    v75(v71, 0);
  }

  else
  {
    v41 = v28;
    v42 = v73;

    v43 = a1;
    v44 = sub_224DAC2A8();
    v45 = [v44 extensionIdentity];

    LOBYTE(v44) = [v45 isRemote];
    if ((v44 & 1) == 0)
    {
      v62 = sub_224D33C40(v27, v26, v66, v75, v74);

      return v62;
    }

    v46 = v19;
    v47 = v41 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
    v48 = v71;
    v49 = v18;
    (*(v19 + 16))(v71, v47, v18);
    v50 = v42;
    v51 = v67;
    v52 = v11;
    (*(v42 + 16))(v67, v43, v11);
    v53 = sub_224DAB228();
    v54 = sub_224DAF268();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v51;
      v56 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76 = v72;
      *v56 = 136446210;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v57 = sub_224DAFD28();
      v59 = v58;
      (*(v50 + 8))(v55, v52);
      v60 = sub_224A33F74(v57, v59, &v76);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_224A2F000, v53, v54, "%{public}s Failed to fetch from cache", v56, 0xCu);
      v61 = v72;
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x22AA5EED0](v61, -1, -1);
      MEMORY[0x22AA5EED0](v56, -1, -1);

      (*(v46 + 8))(v71, v49);
    }

    else
    {

      (*(v42 + 8))(v51, v52);
      (*(v46 + 8))(v48, v49);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v69 + 104))(v68, *MEMORY[0x277CE3BF0], v70);
    v64 = sub_224DAF638();
    v75(v64, 1);
  }

  return 0;
}

uint64_t sub_224D33C40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v291 = a4;
  v292 = a5;
  v297 = a3;
  v298 = a1;
  v290 = a2;
  v6 = sub_224DAE6E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v243 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACC88();
  v280 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v279 = v243 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_224DAB258();
  v281 = *(v287 - 8);
  MEMORY[0x28223BE20](v287, v14);
  v296 = v243 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAC2B8();
  v294 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v278 = v243 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v277 = v243 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v275 = v243 - v24;
  v274 = sub_224DA9908();
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274, v25);
  v272 = v243 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for ExtensionTask.Identifier(0);
  v28 = MEMORY[0x28223BE20](v271, v27);
  v293 = v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v295 = (v243 - v31);
  v262 = sub_224DACB08();
  v261 = *(v262 - 8);
  MEMORY[0x28223BE20](v262, v32);
  v34 = v243 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v36 = *(v35 - 8);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v269 = (v243 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = v243 - v42;
  v45 = MEMORY[0x28223BE20](v41, v44);
  v253 = v243 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v248 = v243 - v48;
  v267 = sub_224DACB98();
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267, v49);
  v265 = v243 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_224DACB28();
  v282 = *(v268 - 8);
  v52 = MEMORY[0x28223BE20](v268, v51);
  v259 = v243 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52, v54);
  v249 = v243 - v56;
  MEMORY[0x28223BE20](v55, v57);
  v260 = v243 - v58;
  v289 = sub_224DA9878();
  v288 = *(v289 - 8);
  v60 = MEMORY[0x28223BE20](v289, v59);
  v270 = v243 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v247 = v243 - v64;
  MEMORY[0x28223BE20](v63, v65);
  v254 = v243 - v66;
  v67 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v69 = MEMORY[0x28223BE20](v67 - 8, v68);
  MEMORY[0x28223BE20](v69, v70);
  v73 = v243 - v72;
  v299 = v5;
  if (!v5[2])
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v7 + 104))(v10, *MEMORY[0x277CE3C38], v6);
    v300[0] = 0;
    v300[1] = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000051, 0x8000000224DCF750);
    v104 = type metadata accessor for EmptyKey();
    v105 = MEMORY[0x22AA5D380](v290, v104);
    MEMORY[0x22AA5D210](v105);

    MEMORY[0x22AA5D210](0x747865746E6F6320, 0xE90000000000003ALL);
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v106 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v106);

    MEMORY[0x22AA5D210](0x756769666E6F6320, 0xEF3A6E6F69746172);
    sub_224D407A8(&qword_27D6F6AA8, MEMORY[0x277CF9C08], MEMORY[0x277CF9C10]);
    v107 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v107);

    v108 = sub_224DAF638();
    v291(v108, 1);

    return 0;
  }

  v244 = v34;
  v245 = v43;
  v284 = v71;
  v257 = v16;
  v286 = v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v75 = *(v36 + 72);
  v76 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v243[1] = v74;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_224DB3100;
  v78 = *MEMORY[0x277CE3D28];
  v79 = sub_224DAE8B8();
  v80 = *(v79 - 8);
  v81 = *(v80 + 104);
  v81(v77 + v76, v78, v79);
  v82 = *(v80 + 56);
  v82(v77 + v76, 0, 5, v79);
  v255 = v77;
  v302 = v77;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v84 = *(v83 - 8);
  v85 = *(v84 + 56);
  v285 = v73;
  v251 = v83;
  v252 = v85;
  v250 = v84 + 56;
  (v85)(v73, 1, 1);
  v86 = MEMORY[0x277CF9B58];
  v283 = *(v299 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview);
  v258 = v82;
  v256 = v76;
  v264 = v80 + 56;
  v263 = (v80 + 104);
  v246 = v81;
  if (v283 != 1)
  {
    v260 = v79;
    v110 = v75;
    v111 = v259;
    sub_224DACC58();
    v112 = v282;
    v113 = v268;
    v114 = (*(v282 + 88))(v111, v268);
    if (v114 == *v86)
    {
      v102 = v285;
      sub_224A3D238(v285, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      (*(v112 + 96))(v111, v113);
      v115 = v251;
      v116 = *(v251 + 48);
      (v288)[4](v102, v111, v289);
      *(v102 + v116) = 0x408C200000000000;
      v252(v102, 0, 1, v115);
      v117 = v299;
      v103 = v110;
      v94 = v260;
    }

    else
    {
      v117 = v299;
      v94 = v260;
      v130 = v258;
      if (v114 == *MEMORY[0x277CF9B50])
      {
        v131 = v248;
        v246(v248, *MEMORY[0x277CE3D18], v260);
        v130(v131, 0, 5, v94);
        v133 = v255[2];
        v132 = v255[3];
        v103 = v110;
        if (v133 >= v132 >> 1)
        {
          v255 = sub_224AD946C((v132 > 1), v133 + 1, 1, v255);
        }

        v102 = v285;
        v134 = v255;
        v255[2] = v133 + 1;
        sub_224B442EC(v131, v134 + v256 + v133 * v103);
        v302 = v134;
      }

      else
      {
        (*(v282 + 8))(v111, v113);
        v102 = v285;
        v103 = v110;
      }
    }

    __swift_project_boxed_opaque_existential_1(v117 + 9, v117[12]);
    if (sub_224DADA48())
    {
      v135 = sub_224DAC2A8();
      v136 = sub_224DACFB8();

      if (v136)
      {
        v137 = [v136 supportsPush];
        v94 = v260;
        if (v137)
        {
          v258(v253, 2, 5, v260);
          v139 = v255[2];
          v138 = v255[3];
          if (v139 >= v138 >> 1)
          {
            v255 = sub_224AD946C((v138 > 1), v139 + 1, 1, v255);
          }

          v140 = v255;
          v255[2] = v139 + 1;
          sub_224B442EC(v253, v140 + v256 + v139 * v103);
          v302 = v140;
        }

        else
        {
        }
      }

      else
      {
        v94 = v260;
      }
    }

    v141 = v244;
    sub_224DACC08();
    v142 = v261;
    v143 = v262;
    if ((*(v261 + 88))(v141, v262) == *MEMORY[0x277CF9B40])
    {
      v258(v245, 3, 5, v94);
      v145 = v255[2];
      v144 = v255[3];
      if (v145 >= v144 >> 1)
      {
        v255 = sub_224AD946C((v144 > 1), v145 + 1, 1, v255);
      }

      v146 = v255;
      v255[2] = v145 + 1;
      sub_224B442EC(v245, v146 + v256 + v145 * v103);
      v268 = 0;
      v302 = v146;
      LODWORD(v282) = 1;
    }

    else
    {
      (*(v142 + 8))(v141, v143);
      LODWORD(v282) = 0;
      v268 = 1;
    }

    goto LABEL_31;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_224DB30F0;
  v82(v87 + v76, 3, 5, v79);
  v81(v87 + v76 + v75, *MEMORY[0x277CE3D18], v79);
  v262 = v75;
  v82(v87 + v76 + v75, 0, 5, v79);
  sub_224B42B34(v87);
  v88 = v260;
  sub_224DACC58();
  v89 = v282;
  v90 = *(v282 + 88);
  v91 = v268;
  v92 = v90(v88, v268);
  v93 = *v86;
  v94 = v79;
  if (v92 != v93)
  {
    v118 = *(v89 + 8);
    v118(v88, v91);
    v119 = v265;
    sub_224DACC68();
    v120 = sub_224DACB48();
    (*(v266 + 8))(v119, v267);
    if (v120)
    {
      v121 = v249;
      sub_224DACC58();
      v102 = v285;
      sub_224A3D238(v285, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      if (v90(v121, v91) == v93)
      {
        (*(v282 + 96))(v121, v91);
        v122 = v288[4];
        v123 = v247;
        v124 = v121;
        v125 = v94;
        v126 = v289;
        v122(v247, v124, v289);
        v127 = v251;
        v128 = *(v251 + 48);
        v129 = v126;
        v94 = v125;
        v122(v102, v123, v129);
        *(v102 + v128) = 0x408C200000000000;
        LODWORD(v282) = 1;
        v252(v102, 0, 1, v127);
        v268 = 0;
        goto LABEL_6;
      }

      v118(v121, v91);
    }

    else
    {
      v102 = v285;
      sub_224A3D238(v285, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    }

    LODWORD(v282) = 1;
    v252(v102, 1, 1, v251);
    v268 = 0;
    v103 = v262;
    goto LABEL_31;
  }

  v95 = v285;
  sub_224A3D238(v285, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  (*(v89 + 96))(v88, v91);
  v96 = v288[4];
  v97 = v254;
  v98 = v289;
  v96(v254, v88, v289);
  v99 = v251;
  v100 = *(v251 + 48);
  v101 = v98;
  v94 = v79;
  v96(v95, v97, v101);
  *(v95 + v100) = 0x408C200000000000;
  LODWORD(v282) = 1;
  v252(v95, 0, 1, v99);
  v268 = 0;
  v102 = v95;
LABEL_6:
  v103 = v262;
LABEL_31:
  if (sub_224DACBC8())
  {
    v147 = v269;
    v246(v269, *MEMORY[0x277CE3D20], v94);
    v258(v147, 0, 5, v94);
    v148 = v302;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v148 = sub_224AD946C(0, v148[2] + 1, 1, v148);
    }

    v149 = v256;
    v151 = v148[2];
    v150 = v148[3];
    if (v151 >= v150 >> 1)
    {
      v148 = sub_224AD946C((v150 > 1), v151 + 1, 1, v148);
    }

    v148[2] = v151 + 1;
    sub_224B442EC(v269, v148 + v149 + v151 * v103);
    v302 = v148;
  }

  v152 = sub_224DAC2A8();
  v153 = v152;
  if (v283)
  {
    v154 = v295;
    *v295 = v152;
  }

  else
  {
    v156 = sub_224D361A0();
    v154 = v295;
    *v295 = v153;
    v154[1] = v156;
  }

  v155 = v154;
  swift_storeEnumTagMultiPayload();
  v157 = v293;
  sub_224A4152C(v155, v293, type metadata accessor for ExtensionTask.Identifier);
  v158 = sub_224DAC2A8();
  v159 = [v158 extensionIdentity];

  v160 = v102;
  v161 = v284;
  sub_224A4152C(v160, v284, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v262 = v302;
  LODWORD(v264) = sub_224DACBD8();
  v263 = type metadata accessor for ExtensionTask(0);
  v162 = objc_allocWithZone(v263);
  sub_224DAE908();
  v163 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v164 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v165 = sub_224DAC938();
  v261 = *(v165 - 8);
  v166 = *(v261 + 56);
  v271 = v165;
  v269 = v166;
  (v166)(&v162[v164], 1, 1);
  v167 = &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v167 = 0;
  v167[1] = 0;
  v168 = &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v168 = 0;
  v168[1] = 0;
  v169 = &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v169 = 0;
  v169[1] = 0;
  v170 = &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v170 = 0;
  v170[1] = 0;
  v171 = v270;
  sub_224DA9868();
  (v288)[4](&v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v171, v289);
  *&v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v159;
  sub_224A4152C(v161, &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  *&v162[v163] = v262;
  v288 = v159;

  v172 = &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v172 = v268;
  v172[8] = v282;
  sub_224A4152C(v157, &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v173 = v272;
  sub_224DA98F8();
  v174 = v273;
  v175 = v274;
  (*(v273 + 16))(&v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v173, v274);
  v300[0] = sub_224DA98E8();
  sub_224A3F6A4();
  v176 = sub_224DAEF18();
  v178 = sub_224A3D19C(8, v176, v177);
  v180 = v179;
  v182 = v181;
  v184 = v183;

  v185 = MEMORY[0x22AA5D1C0](v178, v180, v182, v184);
  v187 = v186;

  v188 = &v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v188 = v185;
  v188[1] = v187;
  v162[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = v264 & 1;
  v301.receiver = v162;
  v301.super_class = v263;
  v289 = objc_msgSendSuper2(&v301, sel_init);

  (*(v174 + 8))(v173, v175);
  sub_224A3D238(v284, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D238(v293, type metadata accessor for ExtensionTask.Identifier);
  if (v283)
  {
    v189 = v275;
    v190 = v271;
    (*(v261 + 104))(v275, *MEMORY[0x277CF9B00], v271);
    v191 = v257;
    v192 = v294;
    v193 = v190;
  }

  else
  {
    v194 = v265;
    sub_224DACC68();
    v189 = v275;
    sub_224DACB38();
    (*(v266 + 8))(v194, v267);
    v191 = v257;
    v192 = v294;
    v193 = v271;
  }

  (v269)(v189, 0, 1, v193);
  v195 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v196 = v289;
  swift_beginAccess();
  sub_224A838C0(v189, v196 + v195, &qword_27D6F4030, &unk_224DB5630);
  swift_endAccess();
  v197 = swift_allocObject();
  *(v197 + 16) = 0;
  v198 = v192;
  v199 = *(v192 + 16);
  v284 = v192 + 16;
  v288 = v199;
  v200 = v277;
  (v199)(v277, v298, v191);
  v201 = (*(v192 + 80) + 24) & ~*(v192 + 80);
  v202 = (v276 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
  v203 = swift_allocObject();
  v204 = v299;
  *(v203 + 16) = v299;
  (*(v198 + 32))(v203 + v201, v200, v191);
  *(v203 + v202) = v290;
  *(v203 + ((v202 + 15) & 0xFFFFFFFFFFFFFFF8)) = v197;
  v205 = (v196 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v206 = *(v196 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v207 = *(v196 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v205 = sub_224D406D4;
  v205[1] = v203;

  sub_224A3D418(v206, v207);
  v208 = swift_allocObject();
  v209 = v292;
  *(v208 + 2) = v291;
  *(v208 + 3) = v209;
  *(v208 + 4) = v197;
  v210 = (v196 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v211 = *(v196 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v212 = *(v196 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v210 = sub_224A8B280;
  v210[1] = v208;
  v293 = v197;

  sub_224A3D418(v211, v212);
  v213 = v281;
  v214 = v287;
  (*(v281 + 16))(v296, v204 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v287);
  v215 = v278;
  (v288)(v278, v298, v191);
  v216 = v280;
  v217 = v279;
  (*(v280 + 16))(v279, v297, v286);
  v218 = sub_224DAB228();
  v219 = sub_224DAF2A8();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v298 = swift_slowAlloc();
    v300[0] = v298;
    *v220 = 136446466;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v221 = sub_224DAFD28();
    v222 = v213;
    v224 = v223;
    (*(v294 + 8))(v215, v191);
    v225 = sub_224A33F74(v221, v224, v300);

    *(v220 + 4) = v225;
    *(v220 + 12) = 2082;
    v226 = sub_224DACBA8();
    v228 = v227;
    (*(v216 + 8))(v217, v286);
    v229 = sub_224A33F74(v226, v228, v300);

    *(v220 + 14) = v229;
    _os_log_impl(&dword_224A2F000, v218, v219, "%{public}s scheduled %{public}s", v220, 0x16u);
    v230 = v298;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v230, -1, -1);
    MEMORY[0x22AA5EED0](v220, -1, -1);

    (*(v222 + 8))(v296, v287);
  }

  else
  {

    (*(v216 + 8))(v217, v286);
    (*(v294 + 8))(v215, v191);
    (*(v213 + 8))(v296, v214);
  }

  sub_224DAD358();
  v231 = v299[21];
  v232 = v299[22];
  __swift_project_boxed_opaque_existential_1(v299 + 18, v231);
  v233 = v289;
  v234 = (*(v232 + 16))(v289, v231, v232);
  v236 = v235;
  v238 = v237;
  v240 = v239;
  v300[3] = &type metadata for TaskCancellable;
  v300[4] = sub_224A8B0FC();
  v241 = swift_allocObject();
  v300[0] = v241;
  v241[2] = v234;
  v241[3] = v236;
  v241[4] = v238;
  v241[5] = v240;
  v109 = sub_224DAD368();

  sub_224A3D238(v295, type metadata accessor for ExtensionTask.Identifier);
  sub_224A3D238(v285, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v109;
}

double sub_224D35C04(uint64_t a1, void (*a2)(void), uint64_t a3, char *a4, unint64_t a5, char *a6, uint64_t a7)
{
  v44 = a6;
  v49 = a4;
  v50 = a5;
  v11 = sub_224DAE6E8();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAC2B8();
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_224DAB258();
  v19 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v52 = a3;
  v53 = a7;
  v23[2] = a7;
  v23[3] = a2;
  v48 = a2;
  v23[4] = a3;
  sub_224A3796C(a1, v55, &qword_27D6F4760, &unk_224DB3680);
  if (v55[3])
  {
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v24 = v54;
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_224B819F8;
      v25[4] = v23;
      swift_unknownObjectRetain();

      sub_224D365D0(v24, v50, v44, sub_224B7F144, v25);

      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    v44 = v14;
  }

  else
  {
    v44 = v14;
    swift_retain_n();
    swift_retain_n();
    sub_224A3311C(v55, &qword_27D6F4760, &unk_224DB3680);
  }

  v26 = v19;
  (*(v19 + 16))(v22, &v49[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v51);
  v27 = v45;
  v28 = v46;
  (*(v45 + 16))(v18, v50, v46);
  v29 = sub_224DAB228();
  v30 = sub_224DAF288();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v50 = v11;
    v32 = v31;
    v49 = swift_slowAlloc();
    v55[0] = v49;
    *v32 = 136446210;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v33 = sub_224DAFD28();
    v34 = v28;
    v35 = v22;
    v37 = v36;
    (*(v27 + 8))(v18, v34);
    v38 = sub_224A33F74(v33, v37, v55);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_224A2F000, v29, v30, "%{public}s No extension session", v32, 0xCu);
    v39 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    v40 = v32;
    v11 = v50;
    MEMORY[0x22AA5EED0](v40, -1, -1);

    (*(v26 + 8))(v35, v51);
  }

  else
  {

    (*(v27 + 8))(v18, v28);
    (*(v19 + 8))(v22, v51);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v47 + 104))(v44, *MEMORY[0x277CE3C28], v11);
  v41 = sub_224DAF638();
  v48();

LABEL_10:

  return result;
}

uint64_t sub_224D361A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - v9;
  v36 = 0;
  v11 = sub_224DAC2A8();
  v12 = [v11 extensionIdentity];

  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v12 + v13, v5, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_224A3311C(v5, &unk_27D6F5060, &qword_224DB5620);
    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  v15 = v1[26];
  v16 = v1[27];
  __swift_project_boxed_opaque_existential_1(v1 + 23, v15);
  v17 = (*(v16 + 24))(768, v15, v16);
  if (!v17)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v35 = v7;
  v18 = sub_224A7B208(v17);
  MEMORY[0x28223BE20](v18, v19);
  *(&v33 - 2) = v10;
  v21 = sub_224A4ECE8(sub_224C8F404, (&v33 - 4), v20);

  if (v21 >> 62)
  {
    v22 = sub_224DAF838();
    v23 = v35;
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_21:

    v32 = 0;
    goto LABEL_22;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = v35;
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_6:
  v33 = v10;
  v34 = v6;
  result = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  if (v22 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v22; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x22AA5DCC0](i, v21);
    }

    else
    {
      v25 = *(v21 + 8 * i + 32);
    }

    v26 = v25;
    v27 = sub_224DAC2A8();
    v28 = [v26 controlIdentity];
    v29 = sub_224DAF6A8();

    if (v29)
    {
      v30 = v36;
      if (!v36)
      {
        v30 = MEMORY[0x277D84F90];
      }

      v36 = v30;
      v31 = v26;
      MEMORY[0x22AA5D350]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
    }
  }

  v32 = v36;
  v6 = v34;
  v23 = v35;
  v10 = v33;
LABEL_22:
  (*(v23 + 8))(v10, v6);
  return v32;
}

void sub_224D365D0(void *a1, unint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v228 = a5;
  v227 = a4;
  v242 = a3;
  v217 = a1;
  v216 = *v5;
  v223 = sub_224DAE6E8();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v7);
  v224 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_224DAB1F8();
  v245 = *(v247 - 8);
  MEMORY[0x28223BE20](v247, v9);
  v230 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v236 = &v206 - v13;
  v241 = sub_224DAE4F8();
  v229 = *(v241 - 8);
  v15 = MEMORY[0x28223BE20](v241, v14);
  v244 = &v206 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v238 = &v206 - v18;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v20 = MEMORY[0x28223BE20](v233, v19);
  v232 = &v206 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v207 = (&v206 - v24);
  MEMORY[0x28223BE20](v23, v25);
  v206 = &v206 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v246 = &v206 - v29;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v239 = *(v243 - 8);
  MEMORY[0x28223BE20](v243, v30);
  v234 = &v206 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v34 = MEMORY[0x28223BE20](v32 - 8, v33);
  v237 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v231 = (&v206 - v37);
  v38 = sub_224DAC2B8();
  v39 = *(v38 - 8);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v219 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v46 = &v206 - v45;
  v214 = v47;
  MEMORY[0x28223BE20](v44, v48);
  v50 = &v206 - v49;
  v51 = sub_224DAB258();
  v52 = *(v51 - 8);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v218 = &v206 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v58 = &v206 - v57;
  v59 = *(v52 + 16);
  v240 = v5;
  v209 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v60 = v39;
  v211 = v52 + 16;
  v210 = v59;
  v59(&v206 - v57, v5 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v51);
  v61 = *(v39 + 16);
  v61(v50, a2, v38);
  v248 = a2;
  v213 = v39 + 16;
  v212 = v61;
  v61(v46, a2, v38);
  v62 = sub_224DAB228();
  v63 = sub_224DAF2A8();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v242;
  v235 = v38;
  v221 = v51;
  v220 = v52;
  v215 = v60;
  if (v64)
  {
    LODWORD(v225) = v63;
    v226 = v62;
    v66 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    v257 = v208;
    *v66 = 136446466;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v67 = sub_224DAFD28();
    v68 = v60;
    v70 = v69;
    v71 = *(v68 + 8);
    v71(v50, v38);
    v72 = sub_224A33F74(v67, v70, &v257);

    *(v66 + 4) = v72;
    *(v66 + 12) = 2080;
    v73 = v231;
    sub_224DAC288();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_224A3311C(v73, &qword_27D6F56C0, &unk_224DB3580);
      v76 = 0;
      v77 = 1;
    }

    else
    {
      v76 = sub_224DAA1F8();
      v77 = v80;
      (*(v75 + 8))(v73, v74);
    }

    aBlock = v76;
    v250 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6AA0, &qword_224DC11A0);
    v81 = sub_224DAEE28();
    v83 = v82;
    v71(v46, v235);
    v84 = sub_224A33F74(v81, v83, &v257);

    *(v66 + 14) = v84;
    v85 = v226;
    _os_log_impl(&dword_224A2F000, v226, v225, "%{public}s reload: begin for host %s", v66, 0x16u);
    v86 = v208;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v86, -1, -1);
    MEMORY[0x22AA5EED0](v66, -1, -1);

    v208 = *(v220 + 8);
    v208(v58, v221);
    v79 = v242;
  }

  else
  {

    v78 = *(v60 + 8);
    v78(v46, v38);
    v78(v50, v38);
    v208 = *(v52 + 8);
    v208(v58, v51);
    v79 = v65;
  }

  v87 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v250 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000010;
  v250 = 0x8000000224DCF6C0;
  v88 = sub_224DAC2A8();
  v89 = [v88 extensionIdentity];

  v90 = [v89 description];
  v91 = sub_224DAEE18();
  v93 = v92;

  MEMORY[0x22AA5D210](v91, v93);

  v94 = sub_224DAD188();
  v226 = v87;
  v87[2].isa = v94;
  v225 = swift_allocBox();
  v96 = v95;
  v97 = *(v245 + 56);
  (v97)(v95, 1, 1, v247);
  v98 = sub_224DAC2A8();
  v99 = [v98 extensionIdentity];

  v100 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v101 = v246;
  sub_224A3796C(v99 + v100, v246, &unk_27D6F5060, &qword_224DB5620);

  v102 = v239;
  v103 = v243;
  v104 = (*(v239 + 48))(v101, 1, v243);
  v105 = v241;
  if (v104 == 1)
  {
    sub_224A3311C(v101, &unk_27D6F5060, &qword_224DB5620);
    v106 = 0;
    goto LABEL_9;
  }

  (*(v102 + 32))(v234, v101, v103);
  v110 = sub_224DA9FE8();
  v112 = v111;
  v113 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v106 = 0;
  v114 = sub_224A921B4(v110, v112, 0);
  if (v114)
  {
    v154 = v114;
    if ([v114 developerType] == 1)
    {
      v246 = 0;
      if (qword_2813507E8 != -1)
      {
        swift_once();
      }

      v155 = qword_281364CC0;
      v156 = v206;
      v233 = v155;
      sub_224DAB1E8();
      v157 = v247;
      (v97)(v156, 0, 1, v247);
      sub_224A838C0(v156, v96, &qword_27D6F4270, &qword_224DB6580);
      LODWORD(v231) = sub_224DAF4B8();
      v158 = v207;
      sub_224A3796C(v96, v207, &qword_27D6F4270, &qword_224DB6580);
      v159 = v245;
      if ((*(v245 + 48))(v158, 1, v157) == 1)
      {
        __break(1u);
LABEL_89:
        type metadata accessor for EmptyKey();
        sub_224DAFDD8();
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_224DB3100;
      v160 = sub_224DAC2A8();
      v161 = [v160 extensionIdentity];

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v162 = sub_224DA9FE8();
      v164 = v163;
      *(v97 + 56) = MEMORY[0x277D837D0];
      *(v97 + 64) = sub_224A92300();
      *(v97 + 32) = v162;
      *(v97 + 40) = v164;
      swift_endAccess();

      sub_224DAB1D8(v231, &dword_224A2F000, v233, "ControlReload", 13, 2, v158, "enableTelemetry=YES Performing reload task. BundleIdOverride=%{public, signpost.description:attribute}@", 103, 2, v97);

      (*(v239 + 8))(v234, v243);
      (*(v159 + 8))(v158, v157);
      v107 = v240;
      v105 = v241;
      v106 = v246;
LABEL_10:
      v108 = v236;
      v109 = v107[2];
      if (!v109)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    (*(v239 + 8))(v234, v243);

LABEL_9:
    v107 = v240;
    goto LABEL_10;
  }

  v108 = v236;
  (*(v239 + 8))(v234, v243);
  v107 = v240;
  v109 = v240[2];
  if (!v109)
  {
LABEL_16:
    v118 = v232;
    sub_224A3796C(v96, v232, &qword_27D6F4270, &qword_224DB6580);
    v119 = v245;
    p_aBlock = v247;
    if ((*(v245 + 48))(v118, 1, v247) == 1)
    {
      sub_224A3311C(v118, &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      v97 = v230;
      (*(v119 + 32))(v230, v118, p_aBlock);
      v120 = sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
LABEL_86:
        v204 = v120;
        swift_once();
        v120 = v204;
      }

      LOBYTE(v205) = 2;
      sub_224DAB1D8(v120, &dword_224A2F000, qword_281364CC0, "ControlReload", 13, 2, v97, "Reload failed.", 14, v205, MEMORY[0x277D84F90]);
      (*(v119 + 8))(v97, p_aBlock);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v222 + 104))(v224, *MEMORY[0x277CE3C38], v223);
    aBlock = 0;
    v250 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000052, 0x8000000224DCF6E0);
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v121 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v121);

    MEMORY[0x22AA5D210](0x746E616972617620, 0xED00003A7379654BLL);
    v122 = type metadata accessor for EmptyKey();
    v123 = MEMORY[0x22AA5D380](v79, v122);
    MEMORY[0x22AA5D210](v123);

    v124 = sub_224DAF638();
    v227(v124, 1);

    return;
  }

LABEL_14:
  v246 = v106;
  v115 = v107[3];

  (v109)(v248);
  p_aBlock = v109;
  v117 = v229;
  if ((*(v229 + 48))(v108, 1, v105) == 1)
  {
    sub_224A3D418(p_aBlock, v115);
    sub_224A3311C(v108, &qword_27D6F4808, &unk_224DB7990);
    goto LABEL_16;
  }

  v207 = p_aBlock;
  (*(v117 + 32))(v238, v108, v105);
  v125 = MEMORY[0x277D84F90];
  v256 = MEMORY[0x277D84F90];
  v126 = sub_224DA2B24(MEMORY[0x277D84F90]);
  v120 = sub_224DA2C34(v125);
  v245 = v120;
  if (v79 >> 62)
  {
    v120 = sub_224DAF838();
    v119 = v120;
  }

  else
  {
    v119 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v206 = v115;
  if (v119)
  {
    v127 = 0;
    v232 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview;
    v234 = (v79 & 0xC000000000000001);
    v233 = (v79 & 0xFFFFFFFFFFFFFF8);
    v236 = MEMORY[0x277D84F90];
    v231 = (v229 + 16);
    v230 = v119;
    while (1)
    {
      if (v234)
      {
        v120 = MEMORY[0x22AA5DCC0](v127, v79);
        v97 = v120;
        v129 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v127 >= v233[2])
        {
          goto LABEL_82;
        }

        v97 = *(v79 + 8 * v127 + 32);

        v129 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }
      }

      v239 = v129;
      swift_getObjectType();
      v130 = v246;
      v79 = sub_224DAC438();
      v132 = v130;
      v243 = v97;
      if (v130)
      {
        break;
      }

      v133 = v131;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v134 = sub_224DABCE8();
      v246 = 0;
      v135 = v134;
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v247 = v135;

      v136 = v245;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v136;
      sub_224B237F4(v79, v133, v97, isUniquelyReferenced_nonNull_native);

      v245 = aBlock;
      sub_224DAC2A8();
      (*v231)(v244, v238, v105);
      v138 = v237;
      sub_224DAC288();
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v140 = *(v139 - 8);
      if ((*(v140 + 48))(v138, 1, v139) == 1)
      {
        sub_224A3311C(v138, &qword_27D6F56C0, &unk_224DB3580);
        v97 = 0;
      }

      else
      {
        sub_224DAA1F8();
        v97 = v141;
        (*(v140 + 8))(v138, v139);
      }

      sub_224DAEA38();
      v107 = v240;
      v142 = sub_224DAEA08();
      MEMORY[0x22AA5D350](v142);
      if (*((v256 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v256 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
        v107 = v240;
      }

      sub_224DAF078();
      v119 = v256;
      v236 = v256;
      if ((v126 & 0xC000000000000001) != 0)
      {
        if (v126 < 0)
        {
          p_aBlock = v126;
        }

        else
        {
          p_aBlock = (v126 & 0xFFFFFFFFFFFFFF8);
        }

        v143 = v142;
        v120 = sub_224DAF838();
        if (__OFADD__(v120, 1))
        {
          goto LABEL_84;
        }

        v126 = sub_224D2D7A8(p_aBlock, v120 + 1);
      }

      else
      {
        v144 = v142;
      }

      v145 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v126;
      p_aBlock = v126;
      v97 = sub_224B304F8();
      v147 = *(v126 + 16);
      v148 = (v146 & 1) == 0;
      v120 = v147 + v148;
      if (__OFADD__(v147, v148))
      {
        goto LABEL_83;
      }

      v119 = v146;
      if (*(v126 + 24) >= v120)
      {
        if ((v145 & 1) == 0)
        {
          p_aBlock = &aBlock;
          sub_224B2A6C8();
        }
      }

      else
      {
        sub_224B19B4C(v120, v145);
        p_aBlock = aBlock;
        v149 = sub_224B304F8();
        if ((v119 & 1) != (v150 & 1))
        {
          goto LABEL_89;
        }

        v97 = v149;
      }

      v105 = v241;
      v126 = aBlock;
      if (v119)
      {
        v128 = aBlock[7];
        p_aBlock = *(v128 + 8 * v97);
        *(v128 + 8 * v97) = v142;
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock[(v97 >> 6) + 8] |= 1 << v97;
        *(*(v126 + 48) + 8 * v97) = v243;
        *(*(v126 + 56) + 8 * v97) = v142;
        swift_unknownObjectRelease();

        v151 = *(v126 + 16);
        v152 = __OFADD__(v151, 1);
        v153 = v151 + 1;
        if (v152)
        {
          goto LABEL_85;
        }

        *(v126 + 16) = v153;
      }

      ++v127;
      v119 = v230;
      v79 = v242;
      if (v239 == v230)
      {
        goto LABEL_62;
      }
    }

    v176 = v97;

    v244 = 0;
    v177 = v130;

    v97 = v218;
    v178 = v221;
    v210(v218, v240 + v209, v221);

    v179 = v177;
    p_aBlock = v97;
    v180 = sub_224DAB228();
    v181 = sub_224DAF288();

    v182 = os_log_type_enabled(v180, v181);
    v246 = v177;
    if (v182)
    {
      p_aBlock = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      aBlock = v184;
      *p_aBlock = 136446466;
      v185 = *(v176 + 16);
      v186 = *(v176 + 24);

      v97 = sub_224A33F74(v185, v186, &aBlock);

      *(p_aBlock + 4) = v97;
      *(p_aBlock + 6) = 2114;
      v187 = v177;
      v188 = _swift_stdlib_bridgeErrorToNSError();
      *(p_aBlock + 14) = v188;
      *v183 = v188;
      _os_log_impl(&dword_224A2F000, v180, v181, "%{public}s reload: could not create file handle because %{public}@", p_aBlock, 0x16u);
      sub_224A3311C(v183, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v183, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v184);
      MEMORY[0x22AA5EED0](v184, -1, -1);
      MEMORY[0x22AA5EED0](p_aBlock, -1, -1);

      v189 = v218;
      v190 = v221;
    }

    else
    {

      v189 = v97;
      v190 = v178;
    }

    v120 = (v208)(v189, v190);
    v191 = 0;
    v193 = v245 + 64;
    v192 = *(v245 + 64);
    v194 = 1 << *(v245 + 32);
    v195 = -1;
    if (v194 < 64)
    {
      v195 = ~(-1 << v194);
    }

    v196 = v195 & v192;
    v197 = (v194 + 63) >> 6;
    v247 = "MobileTimelineReload";
    v119 = v243;
    if ((v195 & v192) != 0)
    {
      while (1)
      {
        v198 = v191;
LABEL_74:
        v199 = __clz(__rbit64(v196));
        v196 &= v196 - 1;
        v200 = (*(v245 + 56) + ((v198 << 10) | (16 * v199)));
        v97 = *v200;
        v248 = v200[1];
        swift_getObjectType();
        aBlock = 0;
        v250 = 0xE000000000000000;
        swift_unknownObjectRetain();
        sub_224DAF938();
        MEMORY[0x22AA5D210](0xD00000000000001FLL, v247 | 0x8000000000000000);
        v255 = v246;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        sub_224DAFA48();
        p_aBlock = v97;
        sub_224DABD08();
        swift_unknownObjectRelease();

        v119 = v243;
        if (!v196)
        {
          goto LABEL_70;
        }
      }
    }

    while (1)
    {
LABEL_70:
      v198 = v191 + 1;
      if (__OFADD__(v191, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v198 >= v197)
      {
        break;
      }

      v196 = *(v193 + 8 * v198);
      ++v191;
      if (v196)
      {
        v191 = v198;
        goto LABEL_74;
      }
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v222 + 104))(v224, *MEMORY[0x277CE3C10], v223);
    v201 = v246;
    v202 = v246;
    v203 = sub_224DAF638();
    v227(v203, 1);
    sub_224A3D418(v207, v206);

    (*(v229 + 8))(v238, v241);

    if (!v132)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v236 = MEMORY[0x277D84F90];
LABEL_62:
    sub_224DAEA38();
    v247 = sub_224DAEFF8();

    v212(v219, v248, v235);
    v165 = v215;
    v166 = (*(v215 + 80) + 40) & ~*(v215 + 80);
    v167 = (v214 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
    v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
    v169 = (v168 + 23) & 0xFFFFFFFFFFFFFFF8;
    v170 = swift_allocObject();
    v171 = v245;
    *(v170 + 2) = v126;
    *(v170 + 3) = v171;
    *(v170 + 4) = v107;
    (*(v165 + 32))(&v170[v166], v219, v235);
    *&v170[v167] = v225;
    v172 = &v170[v168];
    v173 = v228;
    *v172 = v227;
    v172[1] = v173;
    *&v170[v169] = v226;
    *&v170[(v169 + 15) & 0xFFFFFFFFFFFFFFF8] = v216;
    v253 = sub_224D40608;
    v254 = v170;
    aBlock = MEMORY[0x277D85DD0];
    v250 = 1107296256;
    v251 = sub_224BC6D2C;
    v252 = &block_descriptor_54;
    v174 = _Block_copy(&aBlock);

    v175 = v247;
    [v217 getControlTemplatesWithRequests:v247 completion:v174];
    sub_224A3D418(v207, v206);
    _Block_release(v174);

    (*(v229 + 8))(v238, v105);
  }
}

double sub_224D38464(void *a1, unint64_t a2, uint64_t a3, char *a4, NSObject *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v184 = a5;
  v186 = a4;
  v185 = a3;
  v182 = a1;
  v13 = sub_224DAE6E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v152[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v152[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v23);
  v164 = &v152[-v24];
  v176 = sub_224DAB1F8();
  v175 = *(v176 - 8);
  v26 = MEMORY[0x28223BE20](v176, v25);
  v161 = &v152[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v28);
  v160 = &v152[-v29];
  v173 = sub_224DAC2B8();
  v172 = *(v173 - 8);
  v31 = MEMORY[0x28223BE20](v173, v30);
  v163 = &v152[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31, v33);
  v162 = &v152[-v34];
  v187 = sub_224DAB258();
  v35 = *(v187 - 8);
  v37 = MEMORY[0x28223BE20](v187, v36);
  v170 = &v152[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v37, v39);
  v169 = &v152[-v41];
  v43 = MEMORY[0x28223BE20](v40, v42);
  v190 = &v152[-v44];
  MEMORY[0x28223BE20](v43, v45);
  v159 = &v152[-v46];
  v47 = swift_projectBox();
  v202 = sub_224DA2A0C(MEMORY[0x277D84F90]);
  v179 = a9;
  v178 = a7;
  v177 = a8;
  v168 = v13;
  v167 = v14;
  v166 = v17;
  v174 = v47;
  v165 = v22;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v52 = -1 << *(a2 + 32);
    v49 = ~v52;
    v48 = a2 + 64;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v50 = v54 & *(a2 + 64);
    v51 = a2;
  }

  v181 = a10;

  LODWORD(ObjectType) = 0;
  v56 = 0;
  v188 = 0;
  v171 = v49;
  v57 = (v49 + 64) >> 6;
  v191 = (v35 + 8);
  v192 = (v35 + 16);
  v158 = 0x8000000224DC7DB0;
  *&v58 = 136446210;
  v183 = v58;
  *&v58 = 136446466;
  v157 = v58;
  v59 = v187;
  v60 = v186;
  v61 = v185;
  v189 = v48;
  v193 = v57;
  v194 = v51;
LABEL_8:
  v62 = v56;
  if ((v51 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v63 = v62;
      v64 = v50;
      v56 = v62;
      if (!v50)
      {
        break;
      }

LABEL_16:
      v196 = (v64 - 1) & v64;
      v65 = (v56 << 9) | (8 * __clz(__rbit64(v64)));
      v66 = *(v51 + 56);
      v67 = *(*(v51 + 48) + v65);
      v68 = *(v66 + v65);

      v69 = v68;
      if (!v67)
      {
        goto LABEL_31;
      }

LABEL_20:
      v195 = v69;
      if (*(v61 + 16) && (v73 = sub_224B304F8(), (v74 & 1) != 0))
      {
        v75 = v60;
        v76 = v59;
        v77 = (*(v61 + 56) + 16 * v73);
        v78 = *v77;
        v79 = v77[1];
        v80 = swift_unknownObjectRetain();
        a2 = MEMORY[0x22AA5E4C0](v80);
        v81 = v75;
        v82 = v75;
        v83 = v195;
        v84 = v188;
        sub_224D39784(v182, v82, v195, v184, v78, v79, v67, &v202, v181, &v200);
        if (v84)
        {
          v96 = v200;
          objc_autoreleasePoolPop(a2);
          v188 = v96;
          swift_getErrorValue();
          v97 = sub_224D1680C(v197, v198);
          v99 = v98;
          v156 = v98;
          ObjectType = swift_getObjectType();
          v200 = 0;
          v201 = 0xE000000000000000;
          sub_224DAF938();

          v200 = 0xD000000000000020;
          v201 = v158;
          v155 = v97;
          MEMORY[0x22AA5D210](v97, v99);
          sub_224DABD08();

          v100 = v159;
          v59 = v76;
          v101 = v156;
          (*v192)(v159, &v81[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v59);

          a2 = sub_224DAB228();
          v102 = sub_224DAF288();

          if (os_log_type_enabled(a2, v102))
          {
            v103 = swift_slowAlloc();
            v154 = a2;
            a2 = v103;
            ObjectType = swift_slowAlloc();
            v200 = ObjectType;
            *a2 = v157;
            v153 = v102;
            v104 = *(v67 + 16);
            v105 = *(v67 + 24);

            v106 = sub_224A33F74(v104, v105, &v200);

            *(a2 + 4) = v106;
            *(a2 + 12) = 2082;
            v107 = sub_224A33F74(v155, v101, &v200);

            *(a2 + 14) = v107;
            v108 = v154;
            _os_log_impl(&dword_224A2F000, v154, v153, "%{public}s reload: failed with error %{public}s)", a2, 0x16u);
            v109 = ObjectType;
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v109, -1, -1);
            MEMORY[0x22AA5EED0](a2, -1, -1);
            swift_unknownObjectRelease();

            v55 = (*v191)(v159, v59);
          }

          else
          {

            swift_unknownObjectRelease();

            v55 = (*v191)(v100, v59);
          }

          v188 = 0;
          LODWORD(ObjectType) = 1;
          v48 = v189;
          v57 = v193;
          v51 = v194;
          v50 = v196;
          v60 = v81;
          goto LABEL_8;
        }

        v188 = 0;
        objc_autoreleasePoolPop(a2);

        swift_unknownObjectRelease();

        v62 = v56;
        v50 = v196;
        v48 = v189;
        v57 = v193;
        v51 = v194;
        v59 = v76;
        v60 = v81;
        if ((v194 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v85 = v190;
        (*v192)(v190, &v60[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v59);

        a2 = sub_224DAB228();
        v86 = sub_224DAF288();

        if (os_log_type_enabled(a2, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v200 = v88;
          *v87 = v183;
          v89 = v85;
          v91 = *(v67 + 16);
          v90 = *(v67 + 24);

          v92 = sub_224A33F74(v91, v90, &v200);

          *(v87 + 4) = v92;
          v60 = v186;
          _os_log_impl(&dword_224A2F000, a2, v86, "%{public}s reload: missing file promise", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          v93 = v88;
          v59 = v187;
          MEMORY[0x22AA5EED0](v93, -1, -1);
          v94 = v191;
          v61 = v185;
          MEMORY[0x22AA5EED0](v87, -1, -1);

          v95 = v89;
          v48 = v189;
          v55 = (*v94)(v95, v59);
        }

        else
        {

          v55 = (*v191)(v85, v59);
        }

        v62 = v56;
        v50 = v196;
        v57 = v193;
        v51 = v194;
        if ((v194 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v56 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v56 >= v57)
      {
        goto LABEL_31;
      }

      v64 = *(v48 + 8 * v56);
      ++v63;
      if (v64)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_18:
  v70 = sub_224DAFB18();
  if (v70)
  {
    v72 = v71;
    v199 = v70;
    type metadata accessor for EmptyKey();
    swift_dynamicCast();
    v67 = v200;
    v199 = v72;
    sub_224DAEA38();
    swift_dynamicCast();
    v69 = v200;
    v56 = v62;
    v196 = v50;
    if (v67)
    {
      goto LABEL_20;
    }
  }

LABEL_31:
  sub_224A3B7E4(v194);
  v110 = *v192;
  v111 = v172;
  v112 = (v172 + 16);
  if (ObjectType)
  {
    v113 = v169;
    v110(v169, &v60[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v59);
    v114 = v162;
    v115 = v173;
    (*v112)(v162, v184, v173);
    v116 = sub_224DAB228();
    v117 = sub_224DAF2A8();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v120 = v191;
      v121 = v119;
      v200 = v119;
      *v118 = v183;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v122 = sub_224DAFD28();
      v123 = v114;
      v125 = v124;
      (*(v111 + 8))(v123, v115);
      v126 = sub_224A33F74(v122, v125, &v200);

      *(v118 + 4) = v126;
      _os_log_impl(&dword_224A2F000, v116, v117, "%{public}s reload: failed", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x22AA5EED0](v121, -1, -1);
      MEMORY[0x22AA5EED0](v118, -1, -1);

      (*v120)(v169, v59);
    }

    else
    {

      (*(v111 + 8))(v114, v115);
      (*v191)(v113, v59);
    }

    v48 = v179;
    v60 = v178;
    a2 = v176;
    v61 = v175;
    v59 = v168;
    v51 = v167;
    v50 = v166;
    v138 = v164;
    v139 = v174;
    swift_beginAccess();
    sub_224A3796C(v139, v138, &qword_27D6F4270, &qword_224DB6580);
    if ((*(v61 + 48))(v138, 1, a2) == 1)
    {
      sub_224A3311C(v138, &qword_27D6F4270, &qword_224DB6580);
LABEL_44:
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v51 + 104))(v50, *MEMORY[0x277CE3C28], v59);
      v146 = sub_224DAF638();
      (v60)(v146, 1);

      goto LABEL_49;
    }

    v145 = v160;
    (*(v61 + 32))(v160, v138, a2);
    v55 = sub_224DAF4A8();
    if (qword_2813507E8 == -1)
    {
LABEL_43:
      sub_224DAB1D8(v55, &dword_224A2F000, qword_281364CC0, "ControlReload", 13, 2, v145, "Reload failed.", 14, 2, MEMORY[0x277D84F90]);
      (*(v61 + 8))(v145, a2);
      goto LABEL_44;
    }

LABEL_51:
    v150 = v55;
    swift_once();
    v55 = v150;
    v145 = v160;
    goto LABEL_43;
  }

  v127 = v170;
  v110(v170, &v60[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v59);
  v128 = v163;
  v129 = v173;
  (*v112)(v163, v184, v173);
  v130 = sub_224DAB228();
  v131 = sub_224DAF2A8();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v200 = v133;
    *v132 = v183;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v134 = sub_224DAFD28();
    v136 = v135;
    (*(v111 + 8))(v128, v129);
    v137 = sub_224A33F74(v134, v136, &v200);

    *(v132 + 4) = v137;
    _os_log_impl(&dword_224A2F000, v130, v131, "%{public}s reload: succeeded", v132, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v133);
    MEMORY[0x22AA5EED0](v133, -1, -1);
    MEMORY[0x22AA5EED0](v132, -1, -1);

    (*v191)(v170, v59);
  }

  else
  {

    (*(v111 + 8))(v128, v129);
    (*v191)(v127, v59);
  }

  v48 = v179;
  v140 = v178;
  v141 = v176;
  v142 = v175;
  v143 = v165;
  v144 = v174;
  swift_beginAccess();
  sub_224A3796C(v144, v143, &qword_27D6F4270, &qword_224DB6580);
  if ((*(v142 + 48))(v143, 1, v141) == 1)
  {
    sub_224A3311C(v143, &qword_27D6F4270, &qword_224DB6580);
  }

  else
  {
    v147 = v161;
    (*(v142 + 32))(v161, v143, v141);
    v148 = sub_224DAF4A8();
    if (qword_2813507E8 != -1)
    {
      v151 = v148;
      swift_once();
      v148 = v151;
      v147 = v161;
    }

    sub_224DAB1D8(v148, &dword_224A2F000, qword_281364CC0, "ControlReload", 13, 2, v147, "Reload succeeded.", 17, 2, MEMORY[0x277D84F90]);
    (*(v142 + 8))(v147, v141);
  }

  (v140)(v202, 0);
LABEL_49:
  swift_beginAccess();
  *(v48 + 16) = 0;

  return result;
}

double sub_224D39784(id a1, char *a2, void *a3, NSObject *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t a9, void *a10)
{
  v200 = a8;
  v205 = a7;
  v208 = a5;
  v209 = a6;
  v207 = a4;
  v202 = a3;
  v215 = a2;
  v222 = *MEMORY[0x277D85DE8];
  v11 = sub_224DA9688();
  v204 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v194 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v194 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v194 - v25;
  v203 = sub_224DAE4F8();
  v206 = *(v203 - 8);
  v28 = MEMORY[0x28223BE20](v203, v27);
  v198 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v201 = &v194 - v31;
  v32 = sub_224DAB258();
  v216 = *(v32 - 8);
  v217 = v32;
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = &v194 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v194 - v39;
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = &v194 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v199 = (&v194 - v47);
  MEMORY[0x28223BE20](v46, v48);
  v210 = &v194 - v49;
  v50 = sub_224DAE6E8();
  v212 = *(v50 - 8);
  v213 = v50;
  MEMORY[0x28223BE20](v50, v51);
  v211 = &v194 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v206 = v19;
    v62 = v23;
    v203 = v40;
    v201 = v36;
    v210 = v11;
    swift_getObjectType();
    v63 = v214;
    sub_224DABCF8();
    if (v63)
    {
      a1 = v63;
LABEL_16:
      *a10 = a1;
      return result;
    }

    v209 = 0;
    v87 = *(v216 + 16);
    v196 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
    v88 = v44;
    v89 = v217;
    v198 = (v216 + 16);
    v197 = v87;
    v87(v44, &v215[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v217);
    v90 = v204;
    v91 = *(v204 + 16);
    v92 = v62;
    v208 = v26;
    v93 = v210;
    v91(v62, v26, v210);
    v94 = v205;

    v95 = sub_224DAB228();
    v96 = sub_224DAF278();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v219[0] = v214;
      *v97 = 136446466;
      v199 = v95;
      v99 = *(v94 + 16);
      v98 = *(v94 + 24);

      v100 = sub_224A33F74(v99, v98, v219);

      *(v97 + 4) = v100;
      *(v97 + 12) = 2082;
      sub_224DA9548();
      LODWORD(v195) = v96;
      v101 = v206;
      sub_224DA9568();
      v102 = *(v90 + 8);
      v102(v15, v93);
      sub_224D407A8(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v103 = sub_224DAFD28();
      v104 = v88;
      v106 = v105;
      v102(v101, v93);
      v102(v92, v93);
      v94 = v205;
      v107 = sub_224A33F74(v103, v106, v219);

      *(v97 + 14) = v107;
      v108 = v199;
      _os_log_impl(&dword_224A2F000, v199, v195, "%{public}s: %{public}s", v97, 0x16u);
      v109 = v214;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v109, -1, -1);
      v110 = v97;
      v89 = v217;
      MEMORY[0x22AA5EED0](v110, -1, -1);

      v111 = *(v216 + 8);
      v112 = v104;
    }

    else
    {

      v102 = *(v90 + 8);
      v102(v92, v93);
      v111 = *(v216 + 8);
      v112 = v88;
    }

    v199 = v111;
    (v111)(v112, v89);
    v214 = objc_opt_self();
    v121 = [v214 defaultManager];
    v122 = v208;
    sub_224DA9658();
    v123 = sub_224DAEDE8();

    v219[0] = 0;
    v124 = [v121 attributesOfItemAtPath:v123 error:v219];

    v125 = v219[0];
    a1 = v209;
    if (!v124)
    {
      v150 = v219[0];
      a1 = sub_224DA9528();

      swift_willThrow();
      v102(v122, v210);
      goto LABEL_16;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_224D407A8(&qword_281350A08, type metadata accessor for FileAttributeKey, &unk_224DB3068);
    v126 = sub_224DAECE8();
    v127 = v125;

    v128 = *(v126 + 16);
    v206 = v102;
    if (v128 && (v129 = sub_224B0BA4C(*MEMORY[0x277CCA1C0]), (v130 & 1) != 0))
    {
      sub_224A33E0C(*(v126 + 56) + 32 * v129, v219);

      sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v131 = v218;
        if ([v218 unsignedLongLongValue] > 0x100000)
        {
          v132 = v203;
          v197(v203, &v215[v196], v89);

          v133 = v131;
          v134 = sub_224DAB228();
          v135 = sub_224DAF288();

          v136 = os_log_type_enabled(v134, v135);
          v215 = v133;
          if (v136)
          {
            v137 = swift_slowAlloc();
            v209 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v219[0] = v138;
            *v137 = 136446466;
            v140 = *(v94 + 16);
            v139 = *(v94 + 24);

            v141 = v89;
            v142 = sub_224A33F74(v140, v139, v219);

            *(v137 + 4) = v142;
            *(v137 + 12) = 2114;
            *(v137 + 14) = v133;
            v143 = v209;
            *v209 = v133;
            v144 = v133;
            _os_log_impl(&dword_224A2F000, v134, v135, "%{public}s reload: failed with too large archive %{public}@", v137, 0x16u);
            sub_224A3311C(v143, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v143, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v138);
            MEMORY[0x22AA5EED0](v138, -1, -1);
            MEMORY[0x22AA5EED0](v137, -1, -1);

            v145 = v132;
            v146 = v141;
          }

          else
          {

            v145 = v132;
            v146 = v89;
          }

          (v199)(v145, v146);
          v186 = v210;
          v187 = [v214 defaultManager];
          v188 = v208;
          v189 = sub_224DA95F8();
          v219[0] = 0;
          v190 = [v187 removeItemAtURL:v189 error:v219];

          if (v190)
          {
            v191 = v219[0];
          }

          else
          {
            v192 = v219[0];
            v193 = sub_224DA9528();

            swift_willThrow();
          }

          sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
          (*(v212 + 104))(v211, *MEMORY[0x277CE3C28], v213);
          a1 = sub_224DAF638();
          swift_willThrow();

          v148 = v188;
          v149 = v186;
          goto LABEL_32;
        }
      }
    }

    else
    {
    }

    v147 = v215;
    swift_getObjectType();
    sub_224DAC418();
    if (!a1)
    {
      v157 = v219[0];
      sub_224DAC9F8();
      v158 = v220;
      v159 = v221;
      v160 = __swift_project_boxed_opaque_existential_1(v219, v220);
      v161 = sub_224DAC2A8();
      v162 = [v161 extensionIdentity];

      sub_224D3AB88(v160, v162, v158, v159);
      __swift_destroy_boxed_opaque_existential_1(v219);
      sub_224D3F078(v207);
      v214 = 0;
      v195 = v157;
      v177 = &v147[v196];
      v178 = v201;
      v179 = v217;
      v197(v201, v177, v217);
      v180 = v202;
      v181 = sub_224DAB228();
      v182 = sub_224DAF2A8();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        *v183 = 138543362;
        v185 = sub_224DAEA28();
        *(v183 + 4) = v185;
        *v184 = v185;
        _os_log_impl(&dword_224A2F000, v181, v182, "Reload %{public}@: succeeded", v183, 0xCu);
        sub_224A3311C(v184, &unk_27D6F69F0, &unk_224DB3900);
        v179 = v217;
        MEMORY[0x22AA5EED0](v184, -1, -1);
        MEMORY[0x22AA5EED0](v183, -1, -1);
      }

      (v199)(v178, v179);
      (v206)(v208, v210);
      v171 = v200;
      goto LABEL_43;
    }

    v148 = v208;
    v149 = v210;
LABEL_32:
    (v206)(v148, v149);
    goto LABEL_16;
  }

  v53 = a1;
  v54 = sub_224DA9518();
  v55 = [v54 domain];
  v56 = sub_224DAEE18();
  v58 = v57;

  if (v56 == sub_224DAEE18() && v58 == v59)
  {

    v60 = v217;
    v61 = v215;
  }

  else
  {
    v65 = sub_224DAFD88();

    v60 = v217;
    v61 = v215;
    if ((v65 & 1) == 0)
    {
LABEL_15:
      swift_willThrow();

      goto LABEL_16;
    }
  }

  v66 = [v54 code];
  v67 = v211;
  v68 = v212;
  v69 = v213;
  (*(v212 + 104))(v211, *MEMORY[0x277CE3C50], v213);
  v70 = sub_224DAE6D8();
  v215 = v54;
  v71 = v70;
  (*(v68 + 8))(v67, v69);
  v72 = v66 == v71;
  v54 = v215;
  if (!v72)
  {
    goto LABEL_15;
  }

  v73 = *(v216 + 16);
  v208 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v209 = a1;
  v211 = v73;
  v212 = v216 + 16;
  (v73)(v210, v61 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v60);
  v74 = v202;
  v75 = sub_224DAB228();
  v76 = sub_224DAF2A8();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138543362;
    v79 = sub_224DAEA28();
    *(v77 + 4) = v79;
    *v78 = v79;
    _os_log_impl(&dword_224A2F000, v75, v76, "Reload %{public}@: error'd due to developer value provider - noting error and continuing.", v77, 0xCu);
    sub_224A3311C(v78, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v78, -1, -1);
    v60 = v217;
    MEMORY[0x22AA5EED0](v77, -1, -1);
  }

  v80 = v216 + 8;
  v213 = *(v216 + 8);
  v213(v210, v60);
  v82 = v61[14];
  v81 = v61[15];
  ObjectType = swift_getObjectType();
  v84 = v201;
  sub_224DAEA18();
  v85 = v214;
  v86 = sub_224D3E918(v82, v207, v84, ObjectType, v81);
  v214 = v85;
  if (v85)
  {
    (*(v206 + 1))(v84, v203);

LABEL_14:
    a1 = v214;
    goto LABEL_16;
  }

  v113 = v86;
  v114 = v74;
  v115 = v217;
  v116 = v84;
  v117 = v206 + 8;
  v118 = *(v206 + 1);
  v118(v116, v203);
  v119 = *(v61 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview);
  v216 = v80;
  if (v119)
  {
    v120 = v209;
  }

  else
  {
    v195 = v113;
    v151 = v61;
    v152 = v61[16];
    if (v152)
    {
      v206 = v117;
      v153 = v61[17];
      v154 = swift_getObjectType();
      swift_unknownObjectRetain();
      v155 = v198;
      sub_224DAEA18();
      v156 = v214;
      sub_224D3E918(v152, v207, v155, v154, v153);
      v214 = v156;
      v120 = v209;
      if (v156)
      {

        swift_unknownObjectRelease();

        v118(v155, v203);
        goto LABEL_14;
      }

      swift_unknownObjectRelease();

      v118(v155, v203);
      v61 = v151;
    }

    else
    {
      v120 = v209;
    }
  }

  v163 = v199;
  (v211)(v199, v61 + v208, v115);
  v164 = v114;
  v165 = sub_224DAB228();
  v166 = sub_224DAF2A8();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *v167 = 138543362;
    v169 = sub_224DAEA28();
    *(v167 + 4) = v169;
    *v168 = v169;
    _os_log_impl(&dword_224A2F000, v165, v166, "Reload %{public}@: error'd due to developer value provider - noted error and continuing.", v167, 0xCu);
    sub_224A3311C(v168, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v168, -1, -1);
    v170 = v167;
    v115 = v217;
    MEMORY[0x22AA5EED0](v170, -1, -1);
  }

  v213(v163, v115);
  v94 = v205;
  v171 = v200;
LABEL_43:
  v172 = sub_224DAC9D8();
  v173 = *v171;
  if ((*v171 & 0xC000000000000001) != 0)
  {
    if (v173 < 0)
    {
      v174 = *v171;
    }

    else
    {
      v174 = v173 & 0xFFFFFFFFFFFFFF8;
    }

    v175 = sub_224DAF838();
    if (__OFADD__(v175, 1))
    {
      __break(1u);
    }

    *v171 = sub_224D2D7E4(v174, v175 + 1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v219[0] = *v171;
  sub_224B23960(v172, v94, isUniquelyReferenced_nonNull_native);
  *v171 = v219[0];

  return result;
}

uint64_t sub_224D3AB88(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v23[2] = a3;
  v24 = a4;
  v23[1] = a1;
  v6 = sub_224DAE6E8();
  v23[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB258();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 32), *(v4 + 56));
  sub_224DAC6D8();
  if (v26)
  {
    sub_224A36F98(&v25, v27);
    v15 = sub_224DAE828();
    sub_224D3AEF8(v27, v15);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v24 = v9;
    v28 = v6;
    sub_224A3311C(&v25, &unk_27D6F4700, &unk_224DB3A10);
    (*(v11 + 16))(v14, v4 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v10);
    v17 = a2;
    v18 = sub_224DAB228();
    v19 = sub_224DAF288();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_224A2F000, v18, v19, "Couldn't find extension for %{public}@", v20, 0xCu);
      sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v23[0] + 104))(v24, *MEMORY[0x277CE3C10], v28);
    sub_224DAF638();
    return swift_willThrow();
  }
}

uint64_t sub_224D3AEF8(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v20 = a1;
  v4 = sub_224DAE8E8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v19 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v16 = v19(v9, v14, v4);
      MEMORY[0x28223BE20](v16, v17);
      v18 = v21;
      *(&v19 - 4) = v9;
      *(&v19 - 3) = v18;
      *(&v19 - 2) = v20;
      sub_224DAE8D8();
      if (v2)
      {
        break;
      }

      result = (*v13)(v9, v4);
      v14 += v15;
      if (!--v10)
      {
        return result;
      }
    }

    return (*v13)(v9, v4);
  }

  return result;
}

uint64_t sub_224D3B0A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v124 = a4;
  v128 = a3;
  v135 = a2;
  v5 = sub_224DAE6E8();
  v129 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v130 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB258();
  v140 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v122 = &v119 - v14;
  v15 = sub_224DAB748();
  v131 = *(v15 - 8);
  v132 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_224DA9688();
  v19 = *(v136 - 8);
  v21 = MEMORY[0x28223BE20](v136, v20);
  v120 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v125 = &v119 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v126 = &v119 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v123 = &v119 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v134 = &v119 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v133 = &v119 - v36;
  v37 = sub_224DAB788();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v127 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v119 = &v119 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v119 - v46;
  v48 = sub_224DAB768();
  v138 = *(v48 - 8);
  v139 = v48;
  MEMORY[0x28223BE20](v48, v49);
  v137 = &v119 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = a1;
  if (sub_224DAB778() & 1) != 0 || (sub_224DAE8C8(), v141 = v19, v121 = v12, __swift_project_boxed_opaque_existential_1(v143, v143[3]), v51 = v121, v19 = v141, v52 = sub_224DAE848(), __swift_destroy_boxed_opaque_existential_1(v143), (v52))
  {
    v135 = v5;
    v53 = *(v38 + 16);
    v53(v47, v144, v37);
    if ((*(v38 + 88))(v47, v37) == *MEMORY[0x277CDE3E0])
    {
      v121 = v53;
      v127 = v8;
      v141 = v19;
      (*(v38 + 96))(v47, v37);
      v54 = v137;
      v55 = v138;
      v56 = v47;
      v57 = v139;
      (*(v138 + 32))(v137, v56, v139);
      sub_224DAB758();
      v58 = v18;
      v60 = v131;
      v59 = v132;
      if ((*(v131 + 88))(v58, v132) == *MEMORY[0x277CDE3D0])
      {
        (*(v60 + 96))(v58, v59);
        v61 = v141;
        v62 = v58;
        v63 = v136;
        (v141[4].isa)(v133, v62, v136);
        v64 = v124[3];
        v132 = v124[4];
        __swift_project_boxed_opaque_existential_1(v124, v64);
        v65 = v123;
        sub_224DAE2C8();
        sub_224DA9618();
        isa = v61[1].isa;
        v66 = v61 + 1;
        v132 = isa;
        isa(v65, v63);
        v68 = v126;
        sub_224DA9618();
        sub_224DA95A8();
        sub_224DA95A8();
        LOBYTE(v64) = sub_224DAEEE8();

        if (v64)
        {
          v69 = v136;
          v70 = v132;
          v132(v68, v136);
          v70(v134, v69);
          v70(v133, v69);
          return (*(v138 + 8))(v137, v139);
        }

        else
        {
          v142 = v66;
          v86 = v122;
          (*(v140 + 16))(v122, v128 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v127);
          v87 = v119;
          v121(v119, v144, v37);
          v88 = v141[2].isa;
          v89 = v136;
          (v88)(v125, v68, v136);
          v90 = v120;
          (v88)(v120, v134, v89);
          v91 = sub_224DAB228();
          LODWORD(v144) = sub_224DAF288();
          if (os_log_type_enabled(v91, v144))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v143[0] = v93;
            *v92 = 136446722;
            v94 = sub_224DAB738();
            v141 = v91;
            v95 = v94;
            v97 = v96;
            (*(v38 + 8))(v87, v37);
            v98 = sub_224A33F74(v95, v97, v143);

            *(v92 + 4) = v98;
            *(v92 + 12) = 2082;
            v99 = v125;
            v100 = sub_224DA95A8();
            v102 = v101;
            v103 = v99;
            v104 = v132;
            v132(v103, v136);
            v105 = sub_224A33F74(v100, v102, v143);

            *(v92 + 14) = v105;
            *(v92 + 22) = 2082;
            v106 = sub_224DA95A8();
            v108 = v107;
            v109 = v90;
            v110 = v104;
            v104(v109, v136);
            v111 = sub_224A33F74(v106, v108, v143);

            *(v92 + 24) = v111;
            v112 = v141;
            _os_log_impl(&dword_224A2F000, v141, v144, "Invalid control icon URL for %{public}s: %{public}s - outside the container's bundle path: %{public}s", v92, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v93, -1, -1);
            v113 = v92;
            v114 = v126;
            v89 = v136;
            MEMORY[0x22AA5EED0](v113, -1, -1);

            (*(v140 + 8))(v122, v127);
          }

          else
          {
            v114 = v68;

            v115 = v90;
            v110 = v132;
            v132(v115, v89);
            v110(v125, v89);
            (*(v38 + 8))(v87, v37);
            (*(v140 + 8))(v86, v127);
          }

          v116 = v135;
          v117 = v133;
          v118 = v137;
          sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
          (*(v129 + 104))(v130, *MEMORY[0x277CE3C20], v116);
          sub_224DAF638();
          swift_willThrow();
          v110(v114, v89);
          v110(v134, v89);
          v110(v117, v89);
          return (*(v138 + 8))(v118, v139);
        }
      }

      else
      {
        (*(v55 + 8))(v54, v57);
        return (*(v60 + 8))(v58, v59);
      }
    }

    else
    {
      return (*(v38 + 8))(v47, v37);
    }
  }

  else
  {
    v72 = v140;
    (*(v140 + 16))(v51, v128 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v8);
    v73 = v127;
    (*(v38 + 16))(v127, v144, v37);
    v74 = v51;
    v75 = sub_224DAB228();
    v76 = sub_224DAF288();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v135 = v5;
      v78 = v77;
      v79 = swift_slowAlloc();
      v143[0] = v79;
      *v78 = 136446210;
      v80 = sub_224DAB738();
      v81 = v73;
      v83 = v82;
      (*(v38 + 8))(v81, v37);
      v84 = sub_224A33F74(v80, v83, v143);

      *(v78 + 4) = v84;
      _os_log_impl(&dword_224A2F000, v75, v76, "Control icon %{public}s can have only symbols and not images", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x22AA5EED0](v79, -1, -1);
      v85 = v78;
      v5 = v135;
      MEMORY[0x22AA5EED0](v85, -1, -1);

      (*(v140 + 8))(v121, v8);
    }

    else
    {

      (*(v38 + 8))(v73, v37);
      (*(v72 + 8))(v74, v8);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v129 + 104))(v130, *MEMORY[0x277CE3C20], v5);
    sub_224DAF638();
    return swift_willThrow();
  }
}

BOOL sub_224D3BE10(char *a1, unint64_t a2, uint64_t a3)
{
  v55 = a3;
  v6 = sub_224DAC2B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_224DAB258();
  v12 = *(v11 - 1);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v54 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v47[-v17];
  v60 = 0;
  v19 = *(v12 + 16);
  v51 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v52 = v19;
  v56 = v3;
  v53 = v12 + 16;
  v19(&v47[-v17], &v3[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v11);
  v20 = *(v7 + 16);
  v57 = a1;
  v20(v10, a1, v6);
  v21 = sub_224DAB228();
  v22 = sub_224DAF268();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v49 = v23;
    v50 = swift_slowAlloc();
    v59 = v50;
    *v23 = 136446210;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v48 = v22;
    v24 = sub_224DAFD28();
    v25 = v12;
    v26 = a2;
    v28 = v27;
    (*(v7 + 8))(v10, v6);
    v29 = sub_224A33F74(v24, v28, &v59);
    a2 = v26;

    v30 = v49;
    *(v49 + 1) = v29;
    v31 = v30;
    _os_log_impl(&dword_224A2F000, v21, v48, "%{public}s Trying cache", v30, 0xCu);
    v32 = v50;
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x22AA5EED0](v32, -1, -1);
    MEMORY[0x22AA5EED0](v31, -1, -1);

    v33 = v25;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    v33 = v12;
  }

  v34 = *(v33 + 8);
  (v34)(v18, v11);
  v59 = sub_224DA2A0C(MEMORY[0x277D84F90]);
  if ((sub_224D3DD2C(v57, v55) & 1) == 0)
  {
LABEL_17:
    v60 = 1;
    v42 = v11;
    v52(v54, &v56[v51], v11);
    v43 = sub_224DAB228();
    v44 = sub_224DAF268();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "Cache should not be consulted", v45, 2u);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    (v34)(v54, v42);
    return (v60 & 1) == 0;
  }

  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  v11 = v56;
  v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v35)
  {
    while (1)
    {
      v34 = 0;
      v36 = a2 & 0xC000000000000001;
      v37 = a2 & 0xFFFFFFFFFFFFFF8;
      while (v36)
      {
        v38 = a2;
        v39 = MEMORY[0x22AA5DCC0](v34, a2);
        v40 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_11:
        v58 = 0;
        v41 = MEMORY[0x22AA5E4C0]();
        sub_224D3C334(v11, v57, v39, &v60, &v59, &v58);
        objc_autoreleasePoolPop(v41);

        if ((v58 & 1) == 0)
        {
          a2 = v38;
          ++v34;
          if (v40 != v35)
          {
            continue;
          }
        }

        return (v60 & 1) == 0;
      }

      if (v34 < *(v37 + 16))
      {
        break;
      }

      __break(1u);
LABEL_22:
      v11 = v56;
      v35 = sub_224DAF838();
      if (!v35)
      {
        return (v60 & 1) == 0;
      }
    }

    v38 = a2;
    v39 = *(a2 + 8 * v34 + 32);

    v40 = (v34 + 1);
    if (__OFADD__(v34, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  return (v60 & 1) == 0;
}

uint64_t sub_224D3C334(char *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5, uint64_t *a6)
{
  v238 = a6;
  v223 = a5;
  v239 = a4;
  v243 = a3;
  v248[5] = *MEMORY[0x277D85DE8];
  v220 = sub_224DAC2B8();
  v228 = *(v220 - 8);
  v9 = MEMORY[0x28223BE20](v220, v8);
  v222 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v217 = &v212 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v224 = &v212 - v15;
  v231 = sub_224DAE6C8();
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231, v16);
  v229 = &v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_224DAB258();
  v241 = *(v245 - 8);
  v19 = MEMORY[0x28223BE20](v245, v18);
  v227 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v244 = &v212 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v226 = &v212 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v219 = &v212 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v225 = &v212 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v218 = &v212 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v232 = &v212 - v37;
  v236 = sub_224DA9878();
  v235 = *(v236 - 1);
  v39 = MEMORY[0x28223BE20](v236, v38);
  v221 = &v212 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v233 = &v212 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v45 = MEMORY[0x28223BE20](v43 - 8, v44);
  v47 = &v212 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v212 - v49;
  v51 = sub_224DA9688();
  v234 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v212 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a1 + 14);
  v56 = *(a1 + 15);
  v242 = a1;
  swift_getObjectType();
  v237 = a2;
  v57 = v240;
  sub_224DAC418();
  v58 = v57;
  if (v57)
  {
    v60 = v243;
LABEL_4:
    v61 = v241;
    v62 = v244;
    v63 = v245;
    (*(v241 + 16))(v244, &v242[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v245);

    v64 = v58;
    v65 = sub_224DAB228();
    v66 = sub_224DAF2A8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v240 = 0;
      v69 = v68;
      v70 = swift_slowAlloc();
      v248[0] = v70;
      *v67 = 136446466;
      v71 = *(v60 + 16);
      v72 = *(v60 + 24);

      v73 = v61;
      v74 = sub_224A33F74(v71, v72, v248);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2114;
      v75 = v58;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v76;
      *v69 = v76;
      _os_log_impl(&dword_224A2F000, v65, v66, "%{public}s Cache miss: %{public}@", v67, 0x16u);
      sub_224A3311C(v69, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v69, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x22AA5EED0](v70, -1, -1);
      MEMORY[0x22AA5EED0](v67, -1, -1);

      result = (*(v73 + 8))(v244, v245);
    }

    else
    {

      result = (*(v61 + 8))(v62, v63);
    }

    v78 = v238;
    *v239 = 1;
    *v78 = 1;
    return result;
  }

  v213 = v47;
  v214 = v56;
  v215 = v51;
  v216 = v50;
  v59 = v248[0];
  sub_224DAC3F8();
  v79 = v55;
  v80 = [objc_opt_self() defaultManager];
  sub_224DA9658();
  v81 = sub_224DAEDE8();

  *&v246 = 0;
  v82 = [v80 attributesOfItemAtPath:v81 error:&v246];

  v83 = v246;
  v60 = v243;
  if (!v82)
  {
    v103 = v246;
    v58 = sub_224DA9528();

    swift_willThrow();

    (*(v234 + 8))(v54, v215);
    goto LABEL_4;
  }

  v240 = 0;
  type metadata accessor for FileAttributeKey(0);
  sub_224D407A8(&qword_281350A08, type metadata accessor for FileAttributeKey, &unk_224DB3068);
  v84 = sub_224DAECE8();
  v85 = v83;

  if (*(v84 + 16) && (v86 = sub_224B0BA4C(*MEMORY[0x277CCA108]), (v87 & 1) != 0))
  {
    sub_224A33E0C(*(v84 + 56) + 32 * v86, v248);

    v88 = v216;
    v89 = v236;
    v90 = swift_dynamicCast();
    (*(v235 + 56))(v88, v90 ^ 1u, 1, v89);
  }

  else
  {

    v88 = v216;
    (*(v235 + 56))(v216, 1, 1, v236);
  }

  v91 = v242;
  v92 = v242[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_expirationDuration + 8];
  v93 = v233;
  v212 = v59;
  if (v92)
  {
    goto LABEL_14;
  }

  v104 = *(v235 + 48);
  if (v104(v88, 1, v236) == 1)
  {
LABEL_22:
    v109 = v241;
    v110 = v232;
    v111 = v245;
    (*(v241 + 16))(v232, v91 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v245);
    v112 = v243;

    v113 = sub_224DAB228();
    v114 = sub_224DAF2A8();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v248[0] = v116;
      *v115 = 136446210;
      v117 = *(v112 + 16);
      v118 = *(v112 + 24);

      v119 = sub_224A33F74(v117, v118, v248);

      *(v115 + 4) = v119;
      _os_log_impl(&dword_224A2F000, v113, v114, "%{public}s Cache miss due to expired content", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x22AA5EED0](v116, -1, -1);
      MEMORY[0x22AA5EED0](v115, -1, -1);

      (*(v109 + 8))(v232, v111);
    }

    else
    {

      (*(v109 + 8))(v110, v111);
    }

    goto LABEL_40;
  }

  v244 = v54;
  v105 = v213;
  sub_224A3796C(v88, v213, &qword_27D6F32B0, &qword_224DB3EA0);
  v106 = v236;
  result = (v104)(v105, 1, v236);
  if (result != 1)
  {
    v107 = v221;
    sub_224DA9808();
    sub_224DA9768();
    v108 = *(v235 + 8);
    v108(v107, v106);
    LOBYTE(v107) = sub_224DA9788();
    v108(v93, v106);
    v108(v105, v106);
    v54 = v244;
    v91 = v242;
    if ((v107 & 1) == 0)
    {
LABEL_14:
      v238 = v79;
      __swift_project_boxed_opaque_existential_1(v91 + 4, v91[7]);
      v94 = sub_224DAC2A8();
      v95 = [v94 extensionIdentity];

      sub_224DAC6D8();
      if (v247)
      {
        sub_224A36F98(&v246, v248);
        sub_224DAC9F8();
        __swift_project_boxed_opaque_existential_1(&v246, v247);
        v96 = v229;
        sub_224DAE808();
        v97 = sub_224DAE6B8();
        v99 = v98;
        (*(v230 + 8))(v96, v231);
        __swift_project_boxed_opaque_existential_1(v248, v248[3]);
        if (v97 == sub_224DAE398() && v99 == v100)
        {

          __swift_destroy_boxed_opaque_existential_1(&v246);
          v101 = v245;
          v102 = v241;
          goto LABEL_26;
        }

        v121 = sub_224DAFD88();

        __swift_destroy_boxed_opaque_existential_1(&v246);
        v101 = v245;
        v102 = v241;
        if (v121)
        {
LABEL_26:
          v244 = v54;
          v122 = v224;
          sub_224DAC288();
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v124 = *(v123 - 8);
          if ((*(v124 + 48))(v122, 1, v123) == 1)
          {
            sub_224A3311C(v122, &qword_27D6F56C0, &unk_224DB3580);
            v125 = v225;
          }

          else
          {
            sub_224DAA1F8();
            v127 = v126;
            (*(v124 + 8))(v122, v123);
            v125 = v225;
            if (v127)
            {

              sub_224DAC9F8();
              __swift_project_boxed_opaque_existential_1(&v246, v247);
              v128 = *(sub_224DAE818() + 16);

              __swift_destroy_boxed_opaque_existential_1(&v246);
              if (!v128)
              {
                v194 = v218;
                (*(v102 + 16))(v218, v91 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v101);
                v195 = v243;

                v196 = sub_224DAB228();
                v197 = sub_224DAF2A8();

                if (os_log_type_enabled(v196, v197))
                {
                  v198 = swift_slowAlloc();
                  v199 = swift_slowAlloc();
                  *&v246 = v199;
                  *v198 = 136446210;
                  v200 = *(v195 + 16);
                  v201 = *(v195 + 24);

                  v202 = sub_224A33F74(v200, v201, &v246);

                  *(v198 + 4) = v202;
                  _os_log_impl(&dword_224A2F000, v196, v197, "%{public}s Cache miss because existing archive is local only and we need remote-capable", v198, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v199);
                  MEMORY[0x22AA5EED0](v199, -1, -1);
                  MEMORY[0x22AA5EED0](v198, -1, -1);
                }

                (*(v102 + 8))(v194, v101);
                (*(v234 + 8))(v244, v215);
                *v239 = 1;
                goto LABEL_63;
              }
            }
          }

          v129 = *(v102 + 16);
          v235 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
          v239 = (v102 + 16);
          v236 = v129;
          (v129)(v125, v91 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v101);
          v130 = v243;

          v131 = sub_224DAB228();
          v132 = sub_224DAF268();

          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            *&v246 = v134;
            *v133 = 136446210;
            v135 = *(v130 + 16);
            v136 = *(v130 + 24);

            v137 = sub_224A33F74(v135, v136, &v246);

            *(v133 + 4) = v137;
            _os_log_impl(&dword_224A2F000, v131, v132, "%{public}s Cache hit", v133, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v134);
            MEMORY[0x22AA5EED0](v134, -1, -1);
            MEMORY[0x22AA5EED0](v133, -1, -1);
          }

          v233 = *(v102 + 8);
          (v233)(v125, v101);
          v138 = v240;
          v139 = v228;
          sub_224DAEC08();
          sub_224D407A8(&qword_281350C08, MEMORY[0x277CE3EC8], MEMORY[0x277CE3EC0]);
          v140 = v237;
          sub_224DAE7D8();
          v141 = v227;
          v142 = v222;
          if (v138)
          {
            v143 = 0;
            (v236)(v227, &v242[v235], v101);
            v144 = v220;
            (*(v139 + 16))(v142, v140, v220);
            v145 = v138;
            v146 = sub_224DAB228();
            v147 = sub_224DAF288();

            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v238 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v240 = 0;
              v150 = v149;
              *&v246 = v149;
              *v148 = 136446466;
              sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
              v151 = sub_224DAFD28();
              v153 = v152;
              (*(v228 + 8))(v142, v144);
              v154 = sub_224A33F74(v151, v153, &v246);
              v101 = v245;

              *(v148 + 4) = v154;
              *(v148 + 12) = 2114;
              v155 = v138;
              v156 = _swift_stdlib_bridgeErrorToNSError();
              *(v148 + 14) = v156;
              v157 = v238;
              *v238 = v156;
              _os_log_impl(&dword_224A2F000, v146, v147, "%{public}s failed to save encoded vector glyph asset libs for control: %{public}@", v148, 0x16u);
              sub_224A3311C(v157, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v157, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v150);
              v158 = v150;
              v143 = v240;
              MEMORY[0x22AA5EED0](v158, -1, -1);
              MEMORY[0x22AA5EED0](v148, -1, -1);

              v159 = v227;
            }

            else
            {

              (*(v139 + 8))(v142, v144);
              v159 = v141;
            }

            (v233)(v159, v101);
          }

          else
          {
            v143 = 0;
          }

          v169 = v242;
          v170 = v243;
          if ((v242[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview] & 1) == 0 && *(v242 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v171 = v237;
            if ((sub_224DAC3D8() & 1) != 0 || (sub_224D3F078(v171), !v143))
            {
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
              v172 = v219;
              (v236)(v219, v169 + v235, v101);
              v173 = v228;
              v174 = v217;
              v175 = v171;
              v176 = v220;
              (*(v228 + 16))(v217, v175, v220);
              v177 = v143;
              v178 = sub_224DAB228();
              v179 = sub_224DAF288();

              if (os_log_type_enabled(v178, v179))
              {
                v180 = swift_slowAlloc();
                LODWORD(v239) = v179;
                v181 = v174;
                v182 = v180;
                v183 = swift_slowAlloc();
                v240 = v143;
                v184 = v183;
                v242 = swift_slowAlloc();
                *&v246 = v242;
                *v182 = 136446466;
                sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
                v185 = sub_224DAFD28();
                v187 = v186;
                (*(v173 + 8))(v181, v176);
                v188 = sub_224A33F74(v185, v187, &v246);
                v170 = v243;

                *(v182 + 4) = v188;
                *(v182 + 12) = 2114;
                v189 = v240;
                v190 = v240;
                v191 = _swift_stdlib_bridgeErrorToNSError();
                *(v182 + 14) = v191;
                *v184 = v191;
                _os_log_impl(&dword_224A2F000, v178, v239, "%{public}s Unable to write out placeholder archive for cached control: %{public}@", v182, 0x16u);
                sub_224A3311C(v184, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v184, -1, -1);
                v192 = v242;
                __swift_destroy_boxed_opaque_existential_1(v242);
                MEMORY[0x22AA5EED0](v192, -1, -1);
                MEMORY[0x22AA5EED0](v182, -1, -1);

                v193 = v219;
              }

              else
              {

                (*(v173 + 8))(v174, v176);
                v193 = v172;
              }

              (v233)(v193, v101);
            }
          }

          v203 = sub_224DAC9D8();
          v204 = v223;
          v205 = *v223;
          v206 = v234;
          v207 = v215;
          v208 = v244;
          if ((*v223 & 0xC000000000000001) != 0)
          {
            if (v205 < 0)
            {
              v209 = *v223;
            }

            else
            {
              v209 = v205 & 0xFFFFFFFFFFFFFF8;
            }

            v210 = sub_224DAF838();
            if (__OFADD__(v210, 1))
            {
              __break(1u);
            }

            *v204 = sub_224D2D7E4(v209, v210 + 1);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v246 = *v204;
          sub_224B23960(v203, v170, isUniquelyReferenced_nonNull_native);
          *v204 = v246;

          (*(v206 + 8))(v208, v207);
LABEL_63:
          __swift_destroy_boxed_opaque_existential_1(v248);
          return sub_224A3311C(v216, &qword_27D6F32B0, &qword_224DB3EA0);
        }

        __swift_destroy_boxed_opaque_existential_1(v248);
        v120 = v101;
      }

      else
      {
        sub_224A3311C(&v246, &unk_27D6F4700, &unk_224DB3A10);
        v120 = v245;
        v102 = v241;
      }

      v160 = v226;
      (*(v102 + 16))(v226, v91 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v120);
      v161 = v243;

      v162 = sub_224DAB228();
      v163 = sub_224DAF2A8();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v248[0] = v165;
        *v164 = 136446210;
        v166 = *(v161 + 16);
        v167 = *(v161 + 24);

        v168 = sub_224A33F74(v166, v167, v248);

        *(v164 + 4) = v168;
        _os_log_impl(&dword_224A2F000, v162, v163, "%{public}s Cache miss for extension bundle version difference (or extension didn't exist)", v164, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v165);
        MEMORY[0x22AA5EED0](v165, -1, -1);
        MEMORY[0x22AA5EED0](v164, -1, -1);

        (*(v102 + 8))(v160, v245);
      }

      else
      {

        (*(v102 + 8))(v160, v120);
      }

LABEL_40:
      (*(v234 + 8))(v54, v215);
      *v239 = 1;
      return sub_224A3311C(v216, &qword_27D6F32B0, &qword_224DB3EA0);
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}