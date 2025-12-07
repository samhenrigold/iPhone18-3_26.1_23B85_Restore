uint64_t sub_228786618(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2287CAA50();
  v81 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v78 - v10;
  v12 = [a1 managedObjectContext];
  if (!v12)
  {
    sub_2287CBB90();
    __break(1u);

    __break(1u);
    return result;
  }

  sub_2287CA9E0();
  v13 = a1;
  v14 = sub_2287CAA40();
  v15 = sub_2287CB610();
  v16 = os_log_type_enabled(v14, v15);
  v17 = &unk_278607000;
  v79 = a2;
  v80 = v3;
  if (v16)
  {
    v18 = swift_slowAlloc();
    v78 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v82 = v20;
    *v19 = 136315650;
    v21 = sub_2287CBE60();
    v23 = v6;
    v24 = sub_2287031D8(v21, v22, &v82);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = [v13 identifier];
    v26 = sub_2287CB220();
    v28 = v27;

    v29 = v26;
    v6 = v23;
    v30 = v81;
    v31 = sub_2287031D8(v29, v28, &v82);

    *(v19 + 14) = v31;
    *(v19 + 22) = 2050;
    v32 = [v13 feedItems];
    v33 = [v32 count];

    *(v19 + 24) = v33;
    _os_log_impl(&dword_2286FF000, v14, v15, "[%s]: Before curation, section %{public}s has %{public}ld feedItems", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v20, -1, -1);
    v34 = v19;
    v9 = v78;
    v17 = &unk_278607000;
    MEMORY[0x22AABFD90](v34, -1, -1);

    v35 = v30;
  }

  else
  {

    v35 = v81;
  }

  v36 = *(v35 + 8);
  v36(v11, v6);
  v37 = [v13 v17[89]];
  v38 = sub_2287CB220();
  v40 = v39;

  v41 = MEMORY[0x22AABD640](v38, v40);
  if (v41 <= 1)
  {
    if (!v41)
    {
      v45 = sub_22878AFA8();
      if (v45)
      {
      }

      v46 = v45 == 0;
      v47 = [v13 feedItems];
      sub_2287CA800();
      v48 = sub_2287CB580();

      v49 = sub_228786F4C(v48, v46);

      sub_228784C48(v49, MEMORY[0x277D121F8]);
      goto LABEL_17;
    }
  }

  else if (v41 != 2)
  {
    if (v41 != 3)
    {
      v50 = [v13 feedItems];
      sub_2287CA800();
      sub_2287CB580();

      v82 = sub_22878A378(v51);
      sub_2287891A0(&v82);

      sub_228784C48(v82, MEMORY[0x277D121F8]);

      goto LABEL_18;
    }

    v42 = [v13 feedItems];
    sub_2287CA800();
    v43 = sub_2287CB580();

    v44 = sub_22878C46C(v43, v79);
    goto LABEL_16;
  }

  v52 = [v13 feedItems];
  sub_2287CA800();
  v53 = sub_2287CB580();

  v44 = sub_22878C248(v53);
LABEL_16:
  v54 = v44;

  sub_228784C48(v54, MEMORY[0x277D121F8]);
LABEL_17:

LABEL_18:
  v55 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v56 = sub_2287CB390();

  v57 = [v55 initWithArray_];

  [v13 setFeedItems_];
  sub_22878441C();
  sub_2287CA9E0();
  v58 = v13;
  v59 = sub_2287CAA40();
  v60 = sub_2287CB610();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79 = v36;
    v63 = v17;
    v64 = v62;
    v82 = v62;
    *v61 = 136315650;
    v65 = sub_2287CBE60();
    v67 = sub_2287031D8(v65, v66, &v82);
    v80 = v6;
    v68 = v67;

    *(v61 + 4) = v68;
    *(v61 + 12) = 2082;
    v69 = [v58 v63 + 1656];
    v70 = sub_2287CB220();
    v71 = v9;
    v73 = v72;

    v74 = sub_2287031D8(v70, v73, &v82);

    *(v61 + 14) = v74;
    *(v61 + 22) = 2050;
    v75 = [v58 feedItems];
    v76 = [v75 count];

    *(v61 + 24) = v76;
    _os_log_impl(&dword_2286FF000, v59, v60, "[%s]: Curated section %{public}s has %{public}ld feedItems", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v64, -1, -1);
    MEMORY[0x22AABFD90](v61, -1, -1);

    return (v79)(v71, v80);
  }

  else
  {

    return (v36)(v9, v6);
  }
}

void sub_228786DE8()
{
  v1 = v0;
  v2 = [v0 sections];
  sub_2287C9B40();
  v3 = sub_2287CB570();
  v5 = v4;
  v7 = v6;

  v11 = sub_22878A92C(v3, v5, v7);
  sub_22878D840(&v11, &unk_283BC03B0);

  sub_228784C48(v11, MEMORY[0x277D11E58]);

  v8 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v9 = sub_2287CB390();

  v10 = [v8 initWithArray_];

  [v1 setSections_];
}

uint64_t sub_228786F4C(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v4 = sub_2287CA040();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3370, MEMORY[0x277D12198], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v88 - v10;
  sub_228705B74(0, &qword_280DE3398, MEMORY[0x277D12080], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v88 - v12;
  v14 = sub_2287CAA50();
  v103 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v101 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v95 = &v88 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v88 - v19;
  v21 = (a1 >> 62);
  v93 = v5;
  if (a1 >> 62)
  {
    goto LABEL_95;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
    return v23;
  }

  v98 = v4;

  v107[0] = sub_22878A378(v24);
  sub_2287891A0(v107);
  v109 = v107[0];
  v108 = v23;
  v25 = swift_allocObject();
  v104 = v25;
  *(v25 + 16) = MEMORY[0x277D84FA0];
  v94 = v25 + 16;
  if ((v2 & 1) == 0)
  {
    v100 = 8;
    v4 = v98;
LABEL_17:
    sub_2287CA9E0();
    swift_bridgeObjectRetain_n();
    v29 = sub_2287CAA40();
    v30 = sub_2287CB610();
    v31 = os_log_type_enabled(v29, v30);
    v105 = v13;
    if (v31)
    {
      v102 = v20;
      v32 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v107[0] = v99;
      *v32 = 136315650;
      v33 = sub_2287CBE60();
      v35 = sub_2287031D8(v33, v34, v107);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2050;
      *(v32 + 14) = v100;
      *(v32 + 22) = 2050;
      if (v21)
      {
        v21 = sub_2287CB920();
      }

      else
      {
        v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v105;

      *(v32 + 24) = v21;

      _os_log_impl(&dword_2286FF000, v29, v30, "[%s]: Will curate %{public}ld highlights from %{public}ld ranked highlights", v32, 0x20u);
      v20 = v99;
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x22AABFD90](v20, -1, -1);
      MEMORY[0x22AABFD90](v32, -1, -1);

      v38 = *(v103 + 8);
      v103 += 8;
      v99 = v38;
      (v38)(v102, v14);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v36 = *(v103 + 8);
      v103 += 8;
      v99 = v36;
      (v36)(v20, v14);
    }

    v23 = MEMORY[0x277D84F90];
    *&v37 = 136315650;
    v92 = v37;
    a1 = v101;
    v97 = v14;
    while (1)
    {
      v102 = (v23 >> 62);
      if (v23 >> 62)
      {
        if (sub_2287CB920() >= v100)
        {
LABEL_86:

          if (!v102)
          {
            goto LABEL_78;
          }

          goto LABEL_87;
        }

        v39 = sub_2287CB920();
        if (v39)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v39 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39 >= v100)
        {
          goto LABEL_86;
        }

        if (v39)
        {
LABEL_27:
          v2 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          if ((v23 & 0xC000000000000001) == 0)
          {
            if ((v2 & 0x8000000000000000) == 0)
            {
              if (v2 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                a1 = *(v23 + 8 * v2 + 32);
                goto LABEL_32;
              }

LABEL_94:
              __break(1u);
LABEL_95:
              v22 = sub_2287CB920();
              goto LABEL_3;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          a1 = MEMORY[0x22AABF120](v2, v23);

LABEL_32:
          v40 = sub_2287CA500();
          v41 = v96;
          sub_2287CA700();
          v42 = *(v40 - 8);
          if ((*(v42 + 48))(v41, 1, v40) == 1)
          {
            sub_22878DA04(v41, &qword_280DE3370, MEMORY[0x277D12198]);
            v43 = 1;
          }

          else
          {
            sub_2287CA4F0();
            (*(v42 + 8))(v41, v40);
            v43 = 0;
          }

          v44 = sub_2287CA2E0();
          (*(*(v44 - 8) + 56))(v13, v43, 1, v44);
          v2 = v109;
          if (v109 >> 62)
          {
            v20 = sub_2287CB920();
            if (v20)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v20 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v20)
            {
LABEL_37:
              v45 = 0;
              v4 = (v2 & 0xC000000000000001);
              v14 = v2 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v4)
                {
                  v46 = MEMORY[0x22AABF120](v45, v2);
                }

                else
                {
                  if (v45 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_91;
                  }

                  v46 = *(v2 + 8 * v45 + 32);
                }

                v21 = v46;
                v13 = (v45 + 1);
                if (__OFADD__(v45, 1))
                {
                  break;
                }

                if (sub_22878B078(v46, v105, v104, a1, v106))
                {
                  v47 = v21;

                  v13 = v105;
                  sub_22878DA04(v105, &qword_280DE3398, MEMORY[0x277D12080]);
                  v14 = v97;
                  v4 = v98;
                  a1 = v101;
                  goto LABEL_50;
                }

                ++v45;
                if (v13 == v20)
                {
                  goto LABEL_71;
                }
              }

              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }
          }

LABEL_71:

          v73 = v95;
          sub_2287CA9E0();
          swift_bridgeObjectRetain_n();
          v74 = sub_2287CAA40();
          v75 = sub_2287CB610();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v107[0] = v77;
            *v76 = 136315394;
            v78 = sub_2287CBE60();
            v80 = sub_2287031D8(v78, v79, v107);

            *(v76 + 4) = v80;
            *(v76 + 12) = 2050;
            v4 = v98;
            if (v102)
            {
              v81 = sub_2287CB920();
            }

            else
            {
              v81 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v76 + 14) = v81;

            _os_log_impl(&dword_2286FF000, v74, v75, "[%s]: No more eligible highlights; curation is complete at %{public}ld elements", v76, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v77);
            MEMORY[0x22AABFD90](v77, -1, -1);
            MEMORY[0x22AABFD90](v76, -1, -1);

            (v99)(v95, v97);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            (v99)(v73, v97);
            v4 = v98;
          }

          sub_22878DA04(v105, &qword_280DE3398, MEMORY[0x277D12080]);
          if (!v102)
          {
LABEL_78:
            v82 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v82)
            {
              goto LABEL_79;
            }

LABEL_88:

            return v23;
          }

LABEL_87:
          v82 = sub_2287CB920();
          if (!v82)
          {
            goto LABEL_88;
          }

LABEL_79:
          if (v82 >= 1)
          {
            v83 = (v93 + 8);

            v84 = 0;
            do
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v85 = MEMORY[0x22AABF120](v84, v23);
              }

              else
              {
                v85 = *(v23 + 8 * v84 + 32);
              }

              ++v84;
              v86 = v85;
              sub_2287CA020();
              sub_228781484();

              (*v83)(v7, v4);
            }

            while (v82 != v84);

            return v23;
          }

          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }
      }

      sub_228784A44();
      v47 = v48;
LABEL_50:
      sub_2287CA9E0();
      v49 = v47;
      v50 = sub_2287CAA40();
      v51 = sub_2287CB610();

      if (os_log_type_enabled(v50, v51))
      {
        v90 = v51;
        v52 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v107[0] = v89;
        *v52 = v92;
        v53 = sub_2287CBE60();
        v55 = sub_2287031D8(v53, v54, v107);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        v91 = v49;
        v56 = [v49 uniqueIdentifier];
        v21 = sub_2287CB220();
        v58 = v57;

        v59 = sub_2287031D8(v21, v58, v107);

        *(v52 + 14) = v59;
        *(v52 + 22) = 2080;
        if (v102)
        {
          v60 = sub_2287CB920();
        }

        else
        {
          v60 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v101;
        if (v60)
        {
          v61 = v60 - 1;
          v14 = v97;
          if (__OFSUB__(v60, 1))
          {
            goto LABEL_97;
          }

          if ((v23 & 0xC000000000000001) != 0)
          {

            v62 = MEMORY[0x22AABF120](v61, v23);
          }

          else
          {
            if ((v61 & 0x8000000000000000) != 0)
            {
              goto LABEL_98;
            }

            if (v61 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v62 = *(v23 + 8 * v61 + 32);
          }

          v63 = [v62 uniqueIdentifier];

          v64 = sub_2287CB220();
          v66 = v65;

          a1 = v101;
        }

        else
        {
          v66 = 0xE300000000000000;
          v64 = 7104878;
          v14 = v97;
        }

        v67 = sub_2287031D8(v64, v66, v107);

        *(v52 + 24) = v67;
        _os_log_impl(&dword_2286FF000, v50, v90, "[%s]: Adding highlight %s to curated list after %s", v52, 0x20u);
        v68 = v89;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v68, -1, -1);
        MEMORY[0x22AABFD90](v52, -1, -1);

        (v99)(a1, v14);
        v49 = v91;
      }

      else
      {

        (v99)(a1, v14);
      }

      swift_beginAccess();
      v69 = v49;
      MEMORY[0x22AABEA50]();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2287CB3E0();
        v4 = v98;
      }

      sub_2287CB420();
      v23 = v108;
      swift_endAccess();
      v70 = sub_2287CA750();

      v71 = v94;
      swift_beginAccess();
      v72 = v70;
      v20 = v71;
      sub_228787E14(v72);
      swift_endAccess();
    }
  }

  v4 = v98;
  if (v21)
  {
    v26 = sub_2287CB920();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v26 * 0.4;
  if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_100;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_101:
    __break(1u);
  }

  else if (v27 < 9.22337204e18)
  {
    v28 = v27;
    if (v27 >= 8)
    {
      v28 = 8;
    }

    if (v28 <= 3)
    {
      v28 = 3;
    }

    v100 = v28;
    goto LABEL_17;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_228787D84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_22878A2EC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_228787E14(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    sub_22873A2A8(&qword_280DE3630, &qword_280DE3638, 0x277CCD720, MEMORY[0x277D85378]);
    sub_2287CB4C0();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_22870B3D4(v1);
      return;
    }

    while (1)
    {
      sub_228724218(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2287CB950())
      {
        sub_228703004(0, &qword_280DE3638, 0x277CCD720);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_228788020(void **a1, uint64_t a2, uint64_t *a3)
{
  v90 = sub_2287CAA50();
  v6 = *(v90 - 8);
  v7 = MEMORY[0x28223BE20](v90);
  v9 = &v86[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v86[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v86[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v86[-v16];
  v18 = *a1;
  v19 = sub_2287CA750();
  v20 = sub_228784920(v19, sub_2287BFFF0);

  if (!v20)
  {
    sub_2287CA9E0();
    v41 = v18;
    v42 = sub_2287CAA40();
    v43 = sub_2287CB5F0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v93[0] = v45;
      *v44 = 136446210;
      v46 = [v41 uniqueIdentifier];
      v47 = sub_2287CB220();
      v49 = v48;

      v50 = sub_2287031D8(v47, v49, v93);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_2286FF000, v42, v43, "Ignoring ranked app that has no object type %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AABFD90](v45, -1, -1);
      MEMORY[0x22AABFD90](v44, -1, -1);
    }

    (*(v6 + 8))(v17, v90);
    return 0;
  }

  v21 = [v20 hk:a2 metadataValueDisplayTypeInStore:?];
  if (!v21)
  {
    sub_2287CA9E0();
    v51 = v18;
    v52 = v20;
    v53 = sub_2287CAA40();
    v54 = sub_2287CB5F0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v93[0] = v56;
      *v55 = 136446466;
      v57 = [v51 uniqueIdentifier];
      v58 = sub_2287CB220();
      v60 = v59;

      v61 = sub_2287031D8(v58, v60, v93);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2082;
      v62 = [v52 identifier];
      v63 = sub_2287CB220();
      v65 = v64;

      v66 = sub_2287031D8(v63, v65, v93);

      *(v55 + 14) = v66;
      _os_log_impl(&dword_2286FF000, v53, v54, "Ignoring ranked app %{public}s that has an object type %{public}s with no display type", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v56, -1, -1);
      MEMORY[0x22AABFD90](v55, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v15, v90);
    return 0;
  }

  v22 = v21;
  v23 = [v21 categoryIdentifier];
  swift_beginAccess();
  if (sub_228784724(v23, *a3))
  {
    sub_2287CA9E0();
    v24 = v18;
    v25 = v22;
    v26 = sub_2287CAA40();
    v27 = sub_2287CB610();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91[0] = v89;
      *v28 = 136315394;
      v29 = [v24 uniqueIdentifier];
      v30 = sub_2287CB220();
      v32 = v31;

      v33 = sub_2287031D8(v30, v32, v91);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      v34 = [v25 displayCategory];
      v35 = [v34 categoryName];

      v36 = sub_2287CB220();
      v38 = v37;

      v39 = sub_2287031D8(v36, v38, v91);

      *(v28 + 14) = v39;
      _os_log_impl(&dword_2286FF000, v26, v27, "Ignoring ranked app that has already been picked %s with category %{public}s", v28, 0x16u);
      v40 = v89;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v40, -1, -1);
      MEMORY[0x22AABFD90](v28, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v12, v90);
    return 0;
  }

  sub_2287CA9E0();
  v67 = v18;
  v68 = v22;
  v69 = sub_2287CAA40();
  v70 = sub_2287CB610();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91[0] = v88;
    *v71 = 136446466;
    v72 = [v67 uniqueIdentifier];
    v73 = sub_2287CB220();
    v89 = v68;
    v74 = v73;
    v87 = v70;
    v76 = v75;

    v77 = sub_2287031D8(v74, v76, v91);

    *(v71 + 4) = v77;
    *(v71 + 12) = 2082;
    v78 = [v89 displayCategory];
    v79 = [v78 categoryName];

    v80 = sub_2287CB220();
    v82 = v81;

    v83 = sub_2287031D8(v80, v82, v91);

    *(v71 + 14) = v83;
    v68 = v89;
    _os_log_impl(&dword_2286FF000, v69, v87, "Adding app %{public}s with category %{public}s to curated list", v71, 0x16u);
    v84 = v88;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v84, -1, -1);
    MEMORY[0x22AABFD90](v71, -1, -1);
  }

  (*(v6 + 8))(v9, v90);
  swift_beginAccess();
  sub_228724DFC(&v92, v23);
  swift_endAccess();

  return 1;
}

void *sub_22878883C()
{
  v1 = v0;
  v2 = sub_2287C9B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    sub_2287CA710();
    v8 = sub_2287C9F60();
    (*(v3 + 8))(v5, v2);
    if (v8 == 4)
    {

      return 0;
    }

    else
    {
      sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
      sub_228705B74(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2287CCFF0;
      *(v10 + 56) = sub_2287CA640();
      *(v10 + 64) = sub_22878DBFC(&qword_280DE1188, MEMORY[0x277D121D0], MEMORY[0x277D85388]);
      *(v10 + 32) = v1;
      v11 = v1;
      v12 = sub_2287C9F80();
      v14 = v13;
      *(v10 + 96) = MEMORY[0x277D837D0];
      *(v10 + 104) = sub_2287043F8();
      *(v10 + 72) = v12;
      *(v10 + 80) = v14;
      v15 = sub_2287CB550();
      sub_2287C9B40();
      v16 = sub_2287CA2F0();
      sub_2287C9F80();
      v17 = sub_2287CB210();

      [v16 setIdentifier_];

      [v16 setFeed_];
      return v16;
    }
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

BOOL sub_228788B38(void **a1, id *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [*a2 identifier];
  v6 = sub_2287CB220();
  v8 = v7;

  if (MEMORY[0x22AABD640](v6, v8) == 4)
  {
    return 1;
  }

  v9 = *(a3 + 16);
  if (!v9)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = sub_2287C9F80();
    v13 = v12;
    if (v11 == sub_2287C9F80() && v13 == v14)
    {
      break;
    }

    v16 = sub_2287CBD00();

    if (v16)
    {
      goto LABEL_13;
    }

    if (v9 == ++v10)
    {
      return 1;
    }
  }

LABEL_13:
  v18 = [v4 identifier];
  v19 = sub_2287CB220();
  v21 = v20;

  if (MEMORY[0x22AABD640](v19, v21) == 4)
  {
    return 0;
  }

  v22 = 0;
  while (1)
  {
    v23 = sub_2287C9F80();
    v25 = v24;
    if (v23 == sub_2287C9F80() && v25 == v26)
    {
      break;
    }

    v28 = sub_2287CBD00();

    if (v28)
    {
      return v22 < v10;
    }

    if (v9 == ++v22)
    {
      return 0;
    }
  }

  return v22 < v10;
}

uint64_t static SummaryTabFeedPopulationManager.highlightsFeedStalenessTimeout.getter()
{
  v0 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3958, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v16 - v2;
  sub_228705B74(0, &unk_280DE3960, MEMORY[0x277CC99E8], v0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  sub_228705BD8(0, &qword_280DE17C0, MEMORY[0x277D83B88], MEMORY[0x277D11E70]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  if (qword_280DE1430 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280DE1438);
  (*(v9 + 16))(v11, v12, v8);
  sub_2287C9B80();
  result = (*(v9 + 8))(v11, v8);
  if (__OFSUB__(0, v16[1]))
  {
    __break(1u);
  }

  else
  {
    sub_2287C9850();
    v14 = sub_2287C9870();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    v15 = sub_2287C98A0();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    return sub_2287C9600();
  }

  return result;
}

void sub_2287890A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2287CA800();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2287891A0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_228709550(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22878921C(v6);
  return sub_2287CBAA0();
}

void sub_22878921C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2287CBCB0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2287CA800();
        v6 = sub_2287CB400();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_228789418(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_228789320(0, v2, 1, a1);
  }
}

void sub_228789320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 sortOrder];
      v13 = [v11 sortOrder];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_228789418(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_22878A1B0(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_228789E40((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_22878A1B0(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_22878A124(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 sortOrder];
      v104 = [v14 sortOrder];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 sortOrder];
        v7 = [v18 sortOrder];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_228722F14(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_228722F14((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_228789E40((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22878A1B0(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_22878A124(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 sortOrder];
    v41 = [v39 sortOrder];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_228789A80(void **__src, void **a2, void **a3, unint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = v16 + v29;
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *--v32;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_228788B38(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = v6 + 1;
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_228788B38(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if ((v18 - v20) >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_228789E40(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 sortOrder];
          v35 = [v33 sortOrder];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 sortOrder];
          v20 = [v18 sortOrder];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_22878A124(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22878A1B0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_22878A1C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_228705B74(0, &qword_280DE1820, sub_22878D8EC, MEMORY[0x277D84560]);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_22878A2EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2287CB920();
  }

  return sub_2287CBA60();
}

void *sub_22878A378(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2287CB920();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_228723B70(v3, 0);
  sub_22878A774((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22878A40C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2287CB920();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2287CB920();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22878DD68(0, &qword_27D850B70, &qword_280DE1960, 0x277D44488);
          sub_22878DDC0(&qword_27D850B78, &qword_27D850B70, &qword_280DE1960, 0x277D44488);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228799C8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_228703004(0, &qword_280DE1960, 0x277D44488);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22878A5C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2287CB920();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2287CB920();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22878DD68(0, &qword_27D850E40, &qword_280DE35E0, 0x277D44418);
          sub_22878DDC0(&qword_27D850E48, &qword_27D850E40, &qword_280DE35E0, 0x277D44418);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228799C8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_228703004(0, &qword_280DE35E0, 0x277D44418);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22878A774(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2287CB920();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2287CB920();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_228705B74(0, &qword_280DDFFE0, MEMORY[0x277D121F8], MEMORY[0x277D83940]);
          sub_22878DCF4(&qword_280DDFFD0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228799D0C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2287CA800();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22878A92C(void *a1, void (*a2)(uint64_t *__return_ptr, _OWORD *), uint64_t a3)
{
  v42 = a2;
  sub_22878D944(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 count];
  v10 = v9;
  if (v9)
  {
    if (v9 <= 0)
    {
      v11 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v10;
      v11[3] = (2 * (v13 >> 3)) | 1;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11[3];

  result = sub_2287CB560();
  v16 = &v8[*(v6 + 44)];
  *v16 = v42;
  *(v16 + 1) = a3;
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = v11 + 4;
  v18 = v14 >> 1;
  if (v10)
  {
    v18 -= v10;
    sub_2287C9650();
    sub_22878DBFC(&qword_280DE34C0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);

    v19 = v42;
    while (1)
    {
      result = sub_2287CB830();
      v45 = v47;
      v46 = v48;
      if (!*(&v48 + 1))
      {
        goto LABEL_41;
      }

      sub_22873E2D8(&v45, v44);
      v19(&v43, v44);
      __swift_destroy_boxed_opaque_existential_0(v44);
      *v17++ = v43;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }
  }

  v19 = v42;
LABEL_16:
  v20 = sub_2287C9650();
  v21 = sub_22878DBFC(&qword_280DE34C0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_2287CB830();
  v45 = v47;
  v46 = v48;
  if (*(&v48 + 1))
  {
    v41 = v8;
    while (1)
    {
      sub_22873E2D8(&v45, v44);
      v19(&v43, v44);
      result = __swift_destroy_boxed_opaque_existential_0(v44);
      v22 = v43;
      if (!v18)
      {
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v24 = v21;
        v25 = v20;
        v26 = a3;
        v27 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v29 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v29);
        v31 = v30 - 32;
        if (v30 < 32)
        {
          v31 = v30 - 25;
        }

        v32 = v31 >> 3;
        v29[2] = v28;
        v29[3] = (2 * (v31 >> 3)) | 1;
        v33 = (v29 + 4);
        v34 = v11[3] >> 1;
        if (v11[2])
        {
          v35 = v11 + 4;
          if (v29 != v11 || v33 >= v35 + 8 * v34)
          {
            memmove(v29 + 4, v35, 8 * v34);
          }

          v11[2] = 0;
        }

        v17 = (v33 + 8 * v34);
        v18 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v11 = v29;
        a3 = v26;
        v20 = v25;
        v21 = v24;
        v8 = v41;
        v19 = v42;
      }

      v36 = __OFSUB__(v18--, 1);
      if (v36)
      {
        break;
      }

      *v17++ = v22;
      sub_2287CB830();
      v45 = v47;
      v46 = v48;
      if (!*(&v48 + 1))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_33:
  result = sub_22878DB9C(v8, sub_22878D944);
  v37 = v11[3];
  if (v37 < 2)
  {
    return v11;
  }

  v38 = v37 >> 1;
  v36 = __OFSUB__(v38, v18);
  v39 = v38 - v18;
  if (!v36)
  {
    v11[2] = v39;
    return v11;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_22878AD68(uint64_t a1)
{
  v2 = [v1 managedObjectContext];
  if (v2)
  {
    v3 = v2;
    v4 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v6 = v5;
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228705B74(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2287CCFF0;
    *(v7 + 56) = sub_2287CA640();
    *(v7 + 64) = sub_22878DBFC(&qword_280DE1188, MEMORY[0x277D121D0], MEMORY[0x277D85388]);
    *(v7 + 32) = v1;
    *(v7 + 96) = MEMORY[0x277D837D0];
    *(v7 + 104) = sub_2287043F8();
    *(v7 + 72) = v4;
    *(v7 + 80) = v6;
    v8 = v1;

    v9 = sub_2287CB550();
    sub_2287C9B40();
    v10 = sub_2287CA2F0();
    v11 = sub_2287CB210();

    [v10 setIdentifier_];

    [v10 setFeed_];
    return v10;
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t sub_22878AFA8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2287CB210();
  v2 = [v0 arrayForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2287CB3A0();

  v4 = sub_228784298(v3);

  return v4;
}

uint64_t sub_22878B078(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v180 = a5;
  v173 = a3;
  v174 = a4;
  v178 = a2;
  sub_22878DA74(0);
  v170 = v6;
  MEMORY[0x28223BE20](v6);
  v172 = &v156[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v168 = &v156[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v156[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v167 = &v156[-v15];
  MEMORY[0x28223BE20](v14);
  v177 = &v156[-v16];
  v17 = sub_2287CAA50();
  v181 = *(v17 - 8);
  v182 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v169 = &v156[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v175 = &v156[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v179 = &v156[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v156[-v24];
  sub_228705B74(0, &qword_280DE3370, MEMORY[0x277D12198], v8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v156[-v27];
  v29 = sub_2287CA2E0();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v166 = &v156[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v176 = &v156[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v156[-v36];
  MEMORY[0x28223BE20](v35);
  v39 = &v156[-v38];
  v40 = sub_2287CA500();
  v41 = a1;
  sub_2287CA700();
  v42 = *(v40 - 8);
  if ((*(v42 + 48))(v28, 1, v40) != 1)
  {
    sub_2287CA4F0();
    (*(v42 + 8))(v28, v40);
    v58 = v30[4];
    v161 = v30 + 4;
    v160 = v58;
    v58(v39, v37, v29);
    sub_2287CA9E0();
    v59 = v30[2];
    v163 = v30 + 2;
    v162 = v59;
    (v59)(v176, v39, v29);
    sub_22878DB08(v178, v177);
    v60 = v41;
    v61 = sub_2287CAA40();
    v62 = sub_2287CB5E0();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v30;
    v169 = v39;
    v164 = v60;
    if (v63)
    {
      v157 = v62;
      v158 = v61;
      v159 = v25;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v184[0] = v66;
      *v65 = 136315906;
      v67 = sub_2287CBE60();
      v69 = sub_2287031D8(v67, v68, v184);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = [v60 uniqueIdentifier];
      v71 = sub_2287CB220();
      v73 = v72;

      v74 = sub_2287031D8(v71, v73, v184);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2080;
      v75 = v176;
      v76 = sub_2287CA2D0();
      v78 = v77;
      v79 = v30[1];
      (v79)(v75, v29);
      v80 = sub_2287031D8(v76, v78, v184);

      *(v65 + 24) = v80;
      *(v65 + 32) = 2080;
      v81 = v177;
      v82 = v167;
      sub_22878DB08(v177, v167);
      if ((v64[6])(v82, 1, v29) == 1)
      {
        sub_22878DA04(v82, &qword_280DE3398, MEMORY[0x277D12080]);
        v83 = 0xE300000000000000;
        v84 = 7104878;
      }

      else
      {
        v84 = sub_2287CA2D0();
        v83 = v87;
        (v79)(v82, v29);
      }

      v86 = v178;
      sub_22878DA04(v81, &qword_280DE3398, MEMORY[0x277D12080]);
      v88 = sub_2287031D8(v84, v83, v184);

      *(v65 + 34) = v88;
      v89 = v158;
      _os_log_impl(&dword_2286FF000, v158, v157, "[%s]: Comparing highlight %s DVK %s to previous of kind %s", v65, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v66, -1, -1);
      MEMORY[0x22AABFD90](v65, -1, -1);

      v177 = *(v181 + 8);
      (v177)(v159, v182);
      v85 = v179;
    }

    else
    {

      sub_22878DA04(v177, &qword_280DE3398, MEMORY[0x277D12080]);
      v79 = v30[1];
      (v79)(v176, v29);
      v177 = *(v181 + 8);
      (v177)(v25, v182);
      v86 = v178;
      v85 = v179;
    }

    v90 = v171;
    v162();
    (v64[7])(v90, 0, 1, v29);
    v91 = *(v170 + 48);
    v92 = v172;
    sub_22878DB08(v90, v172);
    sub_22878DB08(v86, &v92[v91]);
    v178 = v64;
    v93 = v64[6];
    if (v93(v92, 1, v29) == 1)
    {
      sub_22878DA04(v90, &qword_280DE3398, MEMORY[0x277D12080]);
      v94 = v93(&v92[v91], 1, v29);
      v95 = v164;
      if (v94 == 1)
      {
        sub_22878DA04(v92, &qword_280DE3398, MEMORY[0x277D12080]);
        LODWORD(v92) = 0;
LABEL_18:
        v103 = sub_2287CA750();
        swift_beginAccess();

        v105 = sub_228784538(v104, v103);

        sub_2287CA9E0();
        v106 = v95;

        v107 = sub_2287CAA40();
        v108 = sub_2287CB5E0();

        v109 = os_log_type_enabled(v107, v108);
        v165 = v29;
        v176 = v79;
        if (v109)
        {
          v110 = swift_slowAlloc();
          LODWORD(v173) = v92;
          v92 = v110;
          v172 = swift_slowAlloc();
          v183 = v172;
          *v92 = 136315906;
          v111 = sub_2287CBE60();
          LODWORD(v171) = v108;
          v113 = sub_2287031D8(v111, v112, &v183);

          *(v92 + 4) = v113;
          *(v92 + 6) = 2080;
          v114 = [v106 uniqueIdentifier];
          v115 = sub_2287CB220();
          v117 = v116;

          v118 = sub_2287031D8(v115, v117, &v183);

          *(v92 + 14) = v118;
          *(v92 + 11) = 2080;
          sub_2287CA750();
          sub_228703004(0, &qword_280DE3638, 0x277CCD720);
          sub_22873A2A8(&qword_280DE3630, &qword_280DE3638, 0x277CCD720, MEMORY[0x277D85378]);
          v119 = sub_2287CB480();
          v121 = v120;

          v122 = sub_2287031D8(v119, v121, &v183);

          *(v92 + 3) = v122;
          *(v92 + 16) = 2080;
          swift_beginAccess();

          v123 = sub_2287CB480();
          v125 = v124;

          v126 = sub_2287031D8(v123, v125, &v183);

          *(v92 + 34) = v126;
          _os_log_impl(&dword_2286FF000, v107, v171, "[%s]: Highlight %s has HKTypes %s compared to existing pool of %s", v92, 0x2Au);
          v127 = v172;
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v127, -1, -1);
          v128 = v92;
          LOBYTE(v92) = v173;
          MEMORY[0x22AABFD90](v128, -1, -1);

          v129 = v179;
        }

        else
        {

          v129 = v85;
        }

        (v177)(v129, v182);
        v130 = v175;
        if ((v105 & 0xC000000000000001) != 0)
        {
          v131 = sub_2287CB920();
        }

        else
        {
          v131 = *(v105 + 16);
        }

        v57 = v92 & (v131 != 0);
        sub_2287CA9E0();
        v132 = v106;
        v133 = v174;
        v134 = sub_2287CAA40();
        v135 = sub_2287CB610();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v183 = v137;
          *v136 = 136315906;
          v138 = sub_2287CBE60();
          v140 = sub_2287031D8(v138, v139, &v183);

          *(v136 + 4) = v140;
          *(v136 + 12) = 2080;
          v141 = [v132 uniqueIdentifier];
          v142 = sub_2287CB220();
          v144 = v143;

          v145 = sub_2287031D8(v142, v144, &v183);

          *(v136 + 14) = v145;
          *(v136 + 22) = 2080;
          v146 = [v133 uniqueIdentifier];
          v147 = sub_2287CB220();
          v149 = v148;

          v150 = sub_2287031D8(v147, v149, &v183);

          *(v136 + 24) = v150;
          *(v136 + 32) = 2080;
          if (v57)
          {
            v151 = 5457241;
          }

          else
          {
            v151 = 20302;
          }

          if (v57)
          {
            v152 = 0xE300000000000000;
          }

          else
          {
            v152 = 0xE200000000000000;
          }

          v153 = sub_2287031D8(v151, v152, &v183);

          *(v136 + 34) = v153;
          _os_log_impl(&dword_2286FF000, v134, v135, "[%s]: Highlight %s eligibility for placement after %s: %s", v136, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v137, -1, -1);
          MEMORY[0x22AABFD90](v136, -1, -1);

          v154 = v175;
        }

        else
        {

          v154 = v130;
        }

        (v177)(v154, v182);
        (v176)(v169, v165);
        return v57;
      }
    }

    else
    {
      v96 = v79;
      v97 = v168;
      sub_22878DB08(v92, v168);
      if (v93(&v92[v91], 1, v29) != 1)
      {
        v99 = v166;
        v160(v166, &v92[v91], v29);
        sub_22878DBFC(&unk_280DE33B0, MEMORY[0x277D12080], MEMORY[0x277D12088]);
        v100 = sub_2287CB200();
        (v96)(v99, v29);
        v101 = MEMORY[0x277D12080];
        sub_22878DA04(v90, &qword_280DE3398, MEMORY[0x277D12080]);
        v102 = v97;
        v79 = v96;
        (v96)(v102, v29);
        sub_22878DA04(v92, &qword_280DE3398, v101);
        LODWORD(v92) = v100 ^ 1;
        v95 = v164;
        v85 = v179;
        goto LABEL_18;
      }

      sub_22878DA04(v90, &qword_280DE3398, MEMORY[0x277D12080]);
      v98 = v97;
      v79 = v96;
      (v96)(v98, v29);
      v95 = v164;
      v85 = v179;
    }

    sub_22878DB9C(v92, sub_22878DA74);
    LODWORD(v92) = 1;
    goto LABEL_18;
  }

  sub_22878DA04(v28, &qword_280DE3370, MEMORY[0x277D12198]);
  v43 = v169;
  sub_2287CA9E0();
  v44 = v41;
  v45 = sub_2287CAA40();
  v46 = sub_2287CB5F0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v184[0] = v48;
    *v47 = 136315394;
    v49 = sub_2287CBE60();
    v51 = sub_2287031D8(v49, v50, v184);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = [v44 uniqueIdentifier];
    v53 = sub_2287CB220();
    v55 = v54;

    v56 = sub_2287031D8(v53, v55, v184);

    *(v47 + 14) = v56;
    _os_log_impl(&dword_2286FF000, v45, v46, "[%s]: Highlight %s has no data visualization kind; leaving it alone", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v48, -1, -1);
    MEMORY[0x22AABFD90](v47, -1, -1);
  }

  (*(v181 + 8))(v43, v182);
  return 1;
}

unint64_t sub_22878C248(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    v15 = sub_2287CB920();
    if (!v15)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = v15;
    if (sub_2287CB920() >= 5)
    {
      goto LABEL_4;
    }

LABEL_34:

    return v2;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  if (v4 < 5)
  {
    goto LABEL_34;
  }

LABEL_4:
  if (v4 < 0)
  {
    v5 = 4;
    if (!v3)
    {
LABEL_9:
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 >= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    if (!v3)
    {
      goto LABEL_9;
    }
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_2287CB920() < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v6 = sub_2287CB920();
LABEL_16:
  if (v6 < v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_2287CA800();

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_2287CBA30();
      v7 = v8;
    }

    while (v5 != v8);
    if (!v3)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!v3)
    {
LABEL_21:
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      v9 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      v2 = (2 * v5) | 1;
      goto LABEL_25;
    }
  }

  v4 = sub_2287CBBB0();
  v3 = v10;
  v2 = v11;
  if ((v11 & 1) == 0)
  {
LABEL_24:
    sub_2287890A0(v4, v9, v3, v2);
    v2 = v12;
    swift_unknownObjectRelease();
    return v2;
  }

LABEL_25:
  v1 = v9;
  sub_2287CBD10();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);

  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_38;
  }

  if (v14 != (v2 >> 1) - v3)
  {
LABEL_39:
    swift_unknownObjectRelease();
    v9 = v1;
    goto LABEL_24;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v2;
}

unint64_t sub_22878C46C(uint64_t a1, void *a2)
{
  v4 = sub_2287CAA50();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x277D84FA0];

  v44 = sub_22878A378(v6);
  sub_2287891A0(&v44);
  v7 = v44;
  sub_22878DC44(0);
  inited = swift_initStackObject();
  *(inited + 16) = v7;
  v9 = v7 < 0 || (v7 & 0x4000000000000000) != 0;
  v10 = (v7 & 0xC000000000000001);
  swift_retain_n();
  v11 = a2;
  v41 = inited;

  v12 = 0;
  v13 = 0;
  v43 = MEMORY[0x277D84F90];
  v14 = (MEMORY[0x277D84F90] + 32);
  v15 = 5;
  while (1)
  {
    while (1)
    {
      if (v9)
      {
        if (v12 == sub_2287CB920())
        {
          goto LABEL_33;
        }
      }

      else if (v12 == *(v7 + 16))
      {
        goto LABEL_33;
      }

      if (v10)
      {
        v16 = MEMORY[0x22AABF120](v12, v7);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v12 >= *(v7 + 16))
        {
          goto LABEL_47;
        }

        v16 = *(v7 + 8 * v12 + 32);
      }

      v2 = v16;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_46;
      }

      v44 = v16;
      if (sub_228788020(&v44, v11, &v45))
      {
        break;
      }

      ++v12;
    }

    if (!v13)
    {
      break;
    }

LABEL_29:
    v30 = __OFSUB__(v13--, 1);
    if (v30)
    {
      goto LABEL_48;
    }

    *v14++ = v2;
    v12 = v17;
    if (!--v15)
    {
LABEL_33:

      v15 = v42;
      v31 = v43;
      v32 = *(v43 + 24);
      if (v32 < 2)
      {
        goto LABEL_36;
      }

      v33 = v32 >> 1;
      v30 = __OFSUB__(v33, v13);
      v34 = v33 - v13;
      if (!v30)
      {
        v31 = v43;
        *(v43 + 16) = v34;
LABEL_36:

        sub_2287CA9E0();

        v10 = sub_2287CAA40();
        LOBYTE(v2) = sub_2287CB610();
        if (os_log_type_enabled(v10, v2))
        {
          v12 = swift_slowAlloc();
          *v12 = 134218240;
          if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
          {
            v35 = sub_2287CB920();
          }

          else
          {
            v35 = *(v31 + 16);
          }

          *(v12 + 4) = v35;

          *(v12 + 12) = 2048;
          if (!v9)
          {
            v36 = *(v7 + 16);
            goto LABEL_42;
          }

LABEL_50:
          v36 = sub_2287CB920();
LABEL_42:

          *(v12 + 14) = v36;

          _os_log_impl(&dword_2286FF000, v10, v2, "Picked ranked apps with count %ld from ranked apps count %ld", v12, 0x16u);
          MEMORY[0x22AABFD90](v12, -1, -1);

          v31 = v43;
        }

        else
        {
        }

        (*(v39 + 8))(v15, v40);

        return v31;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  v18 = v43;
  v19 = *(v43 + 24);
  if (((v19 >> 1) + 0x4000000000000000) >= 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    sub_228705BD8(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v22 = _swift_stdlib_malloc_size(v12);
    v23 = v22 - 32;
    if (v22 < 32)
    {
      v23 = v22 - 25;
    }

    v24 = v23 >> 3;
    *(v12 + 16) = v21;
    *(v12 + 24) = (2 * (v23 >> 3)) | 1;
    v25 = v12 + 32;
    v26 = *(v18 + 16);
    v27 = v18;
    v28 = *(v18 + 24) >> 1;
    if (v26)
    {
      v29 = (v27 + 32);
      if (v12 != v27 || v25 >= v29 + 8 * v28)
      {
        v38 = v23 >> 3;
        memmove((v12 + 32), v29, 8 * v28);
        v24 = v38;
      }

      *(v43 + 16) = 0;
    }

    v14 = (v25 + 8 * v28);
    v13 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v28;

    v43 = v12;
    goto LABEL_29;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22878C8EC(void **a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x277D84F90];
LABEL_141:
    v157 = *a1;
    if (!*a1)
    {
      goto LABEL_180;
    }

    swift_bridgeObjectRetain_n();
    v9 = v148;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_173:
      v8 = sub_22878A1B0(v8);
    }

    v160 = v8;
    v128 = *(v8 + 16);
    if (v128 < 2)
    {
LABEL_151:

      swift_bridgeObjectRelease_n();
      return;
    }

    while (1)
    {
      v129 = *a3;
      if (!*a3)
      {
        break;
      }

      v130 = v8;
      v8 = *(v8 + 16 * v128);
      v131 = v130;
      v132 = *&v130[16 * v128 + 24];
      v133 = (v129 + 8 * v8);
      v134 = (v129 + 8 * *&v130[16 * v128 + 16]);
      v135 = (v129 + 8 * v132);

      sub_228789A80(v133, v134, v135, v157, a5);
      if (v9)
      {
        goto LABEL_151;
      }

      if (v132 < v8)
      {
        goto LABEL_167;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_22878A1B0(v131);
      }

      if (v128 - 2 >= *(v131 + 2))
      {
        goto LABEL_168;
      }

      v136 = &v131[16 * v128];
      *v136 = v8;
      v136[1] = v132;
      v160 = v131;
      sub_22878A124(v128 - 1);
      v8 = v160;
      v128 = *(v160 + 16);
      if (v128 <= 1)
      {
        goto LABEL_151;
      }
    }
  }

  else
  {
    v157 = (a5 + 32);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_4:
    v9 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_45;
    }

    v10 = *(*a3 + 8 * v9);
    v146 = *a3;
    v158 = *(*a3 + 8 * v7);
    v11 = v158;
    v159 = v10;
    v12 = v10;
    v13 = v11;
    v150 = sub_228788B38(&v159, &v158, v5);
    if (v148)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    v138 = v8;

    v14 = v7 + 2;
    v152 = v7;
    v142 = v6;
    if (v7 + 2 >= v6)
    {
      goto LABEL_36;
    }

    do
    {
      v16 = *(v146 + 8 * v9);
      v9 = v14;
      __dst = *(v146 + 8 * v14);
      v17 = v16;
      v18 = [v17 identifier];
      v19 = sub_2287CB220();
      v21 = v20;

      if (MEMORY[0x22AABD640](v19, v21) == 4 || (v22 = *(a5 + 16)) == 0)
      {
LABEL_8:

        v7 = v152;
        v15 = v142;
        if (!v150)
        {
          v41 = v9;
          v5 = a5;
          v8 = v138;
          goto LABEL_46;
        }
      }

      else
      {
        v23 = 0;
        while (1)
        {
          v24 = sub_2287C9F80();
          v26 = v25;
          if (v24 == sub_2287C9F80() && v26 == v27)
          {
            break;
          }

          v29 = sub_2287CBD00();

          if (v29)
          {
            goto LABEL_21;
          }

          if (v22 == ++v23)
          {
            goto LABEL_8;
          }
        }

LABEL_21:
        v30 = [__dst identifier];
        v31 = sub_2287CB220();
        v33 = v32;

        if (MEMORY[0x22AABD640](v31, v33) == 4)
        {
LABEL_29:

          v7 = v152;
          v15 = v142;
          if (v150)
          {
            v5 = a5;
            v8 = v138;
            if (v9 < v152)
            {
              goto LABEL_174;
            }

LABEL_38:
            v41 = v9;
            if (v7 < v9)
            {
              v42 = 8 * v9 - 8;
              v43 = 8 * v7;
              v44 = v7;
              while (1)
              {
                if (v44 != --v41)
                {
                  v46 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_178;
                  }

                  v45 = *(v46 + v43);
                  *(v46 + v43) = *(v46 + v42);
                  *(v46 + v42) = v45;
                }

                ++v44;
                v42 -= 8;
                v43 += 8;
                if (v44 >= v41)
                {
                  goto LABEL_45;
                }
              }
            }

LABEL_46:
            v47 = a3[1];
            v143 = v41;
            if (v41 >= v47)
            {
              goto LABEL_86;
            }

            if (__OFSUB__(v41, v7))
            {
              goto LABEL_170;
            }

            if (v41 - v7 >= a4)
            {
              goto LABEL_86;
            }

            v48 = v7 + a4;
            if (__OFADD__(v7, a4))
            {
              goto LABEL_171;
            }

            if (v48 >= v47)
            {
              v48 = a3[1];
            }

            if (v48 < v7)
            {
LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

            if (v41 == v48)
            {
              goto LABEL_86;
            }

            v153 = v7;
            v139 = v8;
            v49 = v41;
            v50 = *a3;
            v141 = v48;
            v151 = *a3;
            while (2)
            {
              v51 = *(v50 + 8 * v49);
              v144 = v49;
              while (2)
              {
                v52 = v49 - 1;
                v53 = *(v50 + 8 * (v49 - 1));
                __dsta = v51;
                v54 = v53;
                v55 = [v54 identifier];
                v56 = sub_2287CB220();
                v58 = v57;

                v59 = MEMORY[0x22AABD640](v56, v58);
                if (v59 == 4 || (v60 = *(a5 + 16)) == 0)
                {
LABEL_67:

                  v50 = v151;
                  goto LABEL_68;
                }

                v9 = v59;
                v61 = 0;
                while (1)
                {
                  v62 = sub_2287C9F80();
                  v64 = v63;
                  if (v62 == sub_2287C9F80() && v64 == v65)
                  {
                    break;
                  }

                  v67 = sub_2287CBD00();

                  if (v67)
                  {
                    goto LABEL_72;
                  }

                  if (v60 == ++v61)
                  {
                    goto LABEL_67;
                  }
                }

LABEL_72:
                v147 = v54;
                v68 = [__dsta identifier];
                v69 = sub_2287CB220();
                v71 = v70;

                if (MEMORY[0x22AABD640](v69, v71) != 4)
                {
                  v72 = 0;
                  while (1)
                  {
                    v73 = sub_2287C9F80();
                    v75 = v74;
                    if (v73 == sub_2287C9F80() && v75 == v76)
                    {

                      goto LABEL_83;
                    }

                    v9 = sub_2287CBD00();

                    if (v9)
                    {
                      break;
                    }

                    if (v60 == ++v72)
                    {
                      goto LABEL_55;
                    }
                  }

LABEL_83:
                  v50 = v151;
                  if (v72 >= v61)
                  {
                    goto LABEL_56;
                  }

LABEL_68:
                  if (!v50)
                  {
                    goto LABEL_175;
                  }

                  v51 = *(v50 + 8 * v49);
                  *(v50 + 8 * v49) = *(v50 + 8 * v52);
                  *(v50 + 8 * v52) = v51;
                  --v49;
                  if (v52 == v153)
                  {
                    goto LABEL_56;
                  }

                  continue;
                }

                break;
              }

LABEL_55:

              v50 = v151;
LABEL_56:
              v49 = v144 + 1;
              if (v144 + 1 != v141)
              {
                continue;
              }

              break;
            }

            v143 = v141;
            v5 = a5;
            v8 = v139;
            v7 = v153;
LABEL_86:
            if (v143 < v7)
            {
              goto LABEL_169;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_228722F14(0, *(v8 + 16) + 1, 1, v8);
            }

            v79 = *(v8 + 16);
            v78 = *(v8 + 24);
            v9 = v79 + 1;
            if (v79 >= v78 >> 1)
            {
              v8 = sub_228722F14((v78 > 1), v79 + 1, 1, v8);
            }

            *(v8 + 16) = v9;
            v80 = v8 + 16 * v79;
            *(v80 + 32) = v7;
            *(v80 + 40) = v143;
            __dstb = *a1;
            if (!*a1)
            {
              goto LABEL_179;
            }

            if (v79)
            {
              while (2)
              {
                v81 = v9 - 1;
                if (v9 >= 4)
                {
                  v86 = v8 + 32 + 16 * v9;
                  v87 = *(v86 - 64);
                  v88 = *(v86 - 56);
                  v92 = __OFSUB__(v88, v87);
                  v89 = v88 - v87;
                  if (v92)
                  {
                    goto LABEL_156;
                  }

                  v91 = *(v86 - 48);
                  v90 = *(v86 - 40);
                  v92 = __OFSUB__(v90, v91);
                  v84 = v90 - v91;
                  v85 = v92;
                  if (v92)
                  {
                    goto LABEL_157;
                  }

                  v93 = (v8 + 16 * v9);
                  v95 = *v93;
                  v94 = v93[1];
                  v92 = __OFSUB__(v94, v95);
                  v96 = v94 - v95;
                  if (v92)
                  {
                    goto LABEL_159;
                  }

                  v92 = __OFADD__(v84, v96);
                  v97 = v84 + v96;
                  if (v92)
                  {
                    goto LABEL_162;
                  }

                  if (v97 >= v89)
                  {
                    v115 = (v8 + 32 + 16 * v81);
                    v117 = *v115;
                    v116 = v115[1];
                    v92 = __OFSUB__(v116, v117);
                    v118 = v116 - v117;
                    if (v92)
                    {
                      goto LABEL_166;
                    }

                    if (v84 < v118)
                    {
                      v81 = v9 - 2;
                    }
                  }

                  else
                  {
LABEL_106:
                    if (v85)
                    {
                      goto LABEL_158;
                    }

                    v98 = (v8 + 16 * v9);
                    v100 = *v98;
                    v99 = v98[1];
                    v101 = __OFSUB__(v99, v100);
                    v102 = v99 - v100;
                    v103 = v101;
                    if (v101)
                    {
                      goto LABEL_161;
                    }

                    v104 = (v8 + 32 + 16 * v81);
                    v106 = *v104;
                    v105 = v104[1];
                    v92 = __OFSUB__(v105, v106);
                    v107 = v105 - v106;
                    if (v92)
                    {
                      goto LABEL_164;
                    }

                    if (__OFADD__(v102, v107))
                    {
                      goto LABEL_165;
                    }

                    if (v102 + v107 < v84)
                    {
                      goto LABEL_120;
                    }

                    if (v84 < v107)
                    {
                      v81 = v9 - 2;
                    }
                  }
                }

                else
                {
                  if (v9 == 3)
                  {
                    v82 = *(v8 + 32);
                    v83 = *(v8 + 40);
                    v92 = __OFSUB__(v83, v82);
                    v84 = v83 - v82;
                    v85 = v92;
                    goto LABEL_106;
                  }

                  v108 = (v8 + 16 * v9);
                  v110 = *v108;
                  v109 = v108[1];
                  v92 = __OFSUB__(v109, v110);
                  v102 = v109 - v110;
                  v103 = v92;
LABEL_120:
                  if (v103)
                  {
                    goto LABEL_160;
                  }

                  v111 = v8 + 16 * v81;
                  v113 = *(v111 + 32);
                  v112 = *(v111 + 40);
                  v92 = __OFSUB__(v112, v113);
                  v114 = v112 - v113;
                  if (v92)
                  {
                    goto LABEL_163;
                  }

                  if (v114 < v102)
                  {
                    break;
                  }
                }

                v119 = v81 - 1;
                if (v81 - 1 >= v9)
                {
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:
                  __break(1u);
LABEL_157:
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  __break(1u);
LABEL_164:
                  __break(1u);
LABEL_165:
                  __break(1u);
LABEL_166:
                  __break(1u);
LABEL_167:
                  __break(1u);
LABEL_168:
                  __break(1u);
LABEL_169:
                  __break(1u);
LABEL_170:
                  __break(1u);
LABEL_171:
                  __break(1u);
                  goto LABEL_172;
                }

                v120 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v121 = v8;
                v122 = v8 + 32;
                v8 = *(v8 + 32 + 16 * v119);
                v123 = *(v122 + 16 * v81 + 8);
                v124 = (v120 + 8 * v8);
                v125 = (v120 + 8 * *(v122 + 16 * v81));
                v126 = (v120 + 8 * v123);

                sub_228789A80(v124, v125, v126, __dstb, v5);
                v9 = v148;
                if (v148)
                {
                  swift_bridgeObjectRelease_n();

                  return;
                }

                if (v123 < v8)
                {
                  goto LABEL_154;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v121 = sub_22878A1B0(v121);
                }

                if (v119 >= *(v121 + 2))
                {
                  goto LABEL_155;
                }

                v148 = 0;
                v127 = &v121[16 * v119];
                *(v127 + 4) = v8;
                *(v127 + 5) = v123;
                v160 = v121;
                sub_22878A124(v81);
                v8 = v160;
                v9 = *(v160 + 16);
                if (v9 <= 1)
                {
                  break;
                }

                continue;
              }
            }

            v7 = v143;
            v6 = a3[1];
            if (v143 >= v6)
            {
              goto LABEL_141;
            }

            goto LABEL_4;
          }
        }

        else
        {
          v34 = 0;
          while (1)
          {
            v35 = sub_2287C9F80();
            v37 = v36;
            if (v35 == sub_2287C9F80() && v37 == v38)
            {

              goto LABEL_33;
            }

            v40 = sub_2287CBD00();

            if (v40)
            {
              break;
            }

            if (v22 == ++v34)
            {
              goto LABEL_29;
            }
          }

LABEL_33:
          v7 = v152;
          v15 = v142;
          if (((v150 ^ (v34 >= v23)) & 1) == 0)
          {
            v14 = v9;
            goto LABEL_36;
          }
        }
      }

      v14 = v9 + 1;
    }

    while (v9 + 1 != v15);
    v14 = v15;
LABEL_36:
    v9 = v14;
    v5 = a5;
    v8 = v138;
    if (!v150)
    {
LABEL_45:
      v41 = v9;
      goto LABEL_46;
    }

    if (v14 >= v7)
    {
      goto LABEL_38;
    }

LABEL_174:
    __break(1u);
LABEL_175:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_176:
    swift_bridgeObjectRelease_n();
    __break(1u);
  }

  __break(1u);
LABEL_178:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_180:
  swift_bridgeObjectRelease_n();
  __break(1u);
}

void sub_22878D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = a5;
    v6 = a3;
    v7 = *a4;
    v39 = *a4;
LABEL_6:
    v8 = *(v7 + 8 * v6);
    v36 = v6;
    while (1)
    {
      v9 = v6 - 1;
      v10 = *(v7 + 8 * (v6 - 1));
      v41 = v8;
      v40 = v10;
      v11 = [v40 identifier];
      v12 = sub_2287CB220();
      v14 = v13;

      if (MEMORY[0x22AABD640](v12, v14) == 4 || (v15 = *(v5 + 16)) == 0)
      {
LABEL_16:

        v7 = v39;
      }

      else
      {
        v16 = 0;
        while (1)
        {
          v17 = sub_2287C9F80();
          v19 = v18;
          if (v17 == sub_2287C9F80() && v19 == v20)
          {
            break;
          }

          v22 = sub_2287CBD00();

          if (v22)
          {
            goto LABEL_21;
          }

          if (v15 == ++v16)
          {
            goto LABEL_16;
          }
        }

LABEL_21:
        v23 = [v41 identifier];
        v24 = sub_2287CB220();
        v26 = v25;

        if (MEMORY[0x22AABD640](v24, v26) == 4)
        {
LABEL_4:

          v5 = a5;
          v7 = v39;
LABEL_5:
          v6 = v36 + 1;
          if (v36 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v27 = 0;
        while (1)
        {
          v28 = sub_2287C9F80();
          v30 = v29;
          if (v28 == sub_2287C9F80() && v30 == v31)
          {

            goto LABEL_32;
          }

          v33 = sub_2287CBD00();

          if (v33)
          {
            break;
          }

          if (v15 == ++v27)
          {
            goto LABEL_4;
          }
        }

LABEL_32:
        v7 = v39;
        v34 = v27 >= v16;
        v5 = a5;
        if (v34)
        {
          goto LABEL_5;
        }
      }

      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 8 * v6);
      *(v7 + 8 * v6) = *(v7 + 8 * v9);
      *(v7 + 8 * v9) = v8;
      --v6;
      if (v9 == a1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22878D6E4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_2287CBCB0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2287C9B40();
        v8 = sub_2287CB400();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_22878C8EC(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22878D41C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22878D840(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_228709550(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_22878D6E4(v8, a2);

  sub_2287CBAA0();
  return swift_bridgeObjectRelease_n();
}

void sub_22878D8EC()
{
  if (!qword_280DE19C0)
  {
    v0 = sub_2287CB540();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE19C0);
    }
  }
}

void sub_22878D944(uint64_t a1)
{
  if (!qword_280DDFE68)
  {
    sub_228703004(255, &qword_280DE1998, 0x277CBEB70);
    sub_2287C9B40();
    sub_22873A2A8(&qword_280DE19A0, &qword_280DE1998, 0x277CBEB70, MEMORY[0x277CC9CF0]);
    v1 = sub_2287CBB20();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE68);
    }
  }
}

uint64_t sub_22878DA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228705B74(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22878DA74(uint64_t a1)
{
  if (!qword_280DE3390)
  {
    sub_228705B74(255, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE3390);
    }
  }
}

uint64_t sub_22878DB08(uint64_t a1, uint64_t a2)
{
  sub_228705B74(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22878DB9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22878DBFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22878DC44(uint64_t a1)
{
  if (!qword_280DDFE70)
  {
    sub_228705B74(255, &qword_280DDFFE0, MEMORY[0x277D121F8], MEMORY[0x277D83940]);
    sub_22878DCF4(&qword_280DDFFD8, MEMORY[0x277D83970]);
    v1 = sub_2287CBA70();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE70);
    }
  }
}

uint64_t sub_22878DCF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_228705B74(255, &qword_280DDFFE0, MEMORY[0x277D121F8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22878DD68(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_228703004(255, a3, a4);
    v5 = sub_2287CB450();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22878DDC0(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_22878DD68(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GeneratorPipelineManagerWrapper.init(wrapped:pluginInfo:context:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for GeneratorPipelineManagerWrapper(0, a4, a3, a4);
  sub_2287C9800();
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  sub_228706AD4(a2, a5 + *(v10 + 28));
  v11 = *(v10 + 32);
  v12 = sub_2287C9ED0();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a3, v12);
}

uint64_t GeneratorPipelineManagerWrapper.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_2287C9ED0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GeneratorPipelineManagerWrapper.uuid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2287C9810();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GeneratorPipelineProviderWrapper.init(wrapped:pluginInfo:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = a4 + *(type metadata accessor for GeneratorPipelineProviderWrapper(0, a3, v7, v8) + 28);

  return sub_228706AD4(a2, v9);
}

uint64_t sub_22878E0F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22878E900();
    if (v3 <= 0x3F)
    {
      result = sub_2287C9ED0();
      if (v4 <= 0x3F)
      {
        result = sub_2287C9810();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22878E1B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v35 = sub_2287C9ED0();
  v8 = *(v35 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v7;
  }

  v11 = sub_2287C9810();
  v12 = *(v11 - 8);
  v13 = *(v6 + 64);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v10 <= *(v12 + 84))
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v19 = ((v15 + v16 + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v14)) & ~v16) + *(*(v11 - 8) + 64);
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_13;
  }

  v23 = ((a2 - v18 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

LABEL_21:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v25 = v19;
        }

        else
        {
          v25 = 4;
        }

        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v26 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v26 = *a1;
          }
        }

        else if (v25 == 1)
        {
          v26 = *a1;
        }

        else
        {
          v26 = *a1;
        }
      }

      else
      {
        v26 = 0;
      }

      return v18 + (v26 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v7 == v18)
  {
    v27 = *(v6 + 48);
    v28 = a1;
    v29 = v7;
    v30 = v5;
LABEL_36:

    return v27(v28, v29, v30);
  }

  v31 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v17 & 0x80000000) != 0)
  {
    v28 = ((v31 + v14 + 40) & ~v14);
    if (v9 == v18)
    {
      v27 = *(v8 + 48);
      v29 = v9;
      v30 = v35;
      goto LABEL_36;
    }

    v33 = *(v12 + 48);
    v34 = (v28 + v15 + v16) & ~v16;

    return v33(v34);
  }

  else
  {
    v32 = *(v31 + 24);
    if (v32 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    return (v32 + 1);
  }
}

void sub_22878E50C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v7 = *(v38 - 8);
  v37 = v7;
  v8 = *(v7 + 84);
  v36 = sub_2287C9ED0();
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_2287C9810();
  v13 = *(v12 - 8);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  if (v11 <= *(v13 + 84))
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = ((v16 + v17 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v15)) & ~v17) + *(*(v12 - 8) + 64);
  if (a3 <= v19)
  {
    v22 = 0;
    v21 = a1;
  }

  else
  {
    v21 = a1;
    if (v20 <= 3)
    {
      v25 = ((a3 - v19 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v19 < a2)
  {
    v23 = ~v19 + a2;
    if (v20 < 4)
    {
      v24 = (v23 >> (8 * v20)) + 1;
      if (v20)
      {
        v27 = v23 & ~(-1 << (8 * v20));
        bzero(v21, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *v21 = v27;
            if (v22 > 1)
            {
LABEL_55:
              if (v22 == 2)
              {
                *&v21[v20] = v24;
              }

              else
              {
                *&v21[v20] = v24;
              }

              return;
            }
          }

          else
          {
            *v21 = v23;
            if (v22 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *v21 = v27;
        v21[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(v21, v20);
      *v21 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v22)
    {
      v21[v20] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&v21[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v21[v20] = 0;
  }

  else if (v22)
  {
    v21[v20] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 == v19)
  {
    v28 = v38;
    v29 = *(v37 + 56);
    v30 = v21;
    v31 = a2;
    v32 = v8;
LABEL_39:

    v29(v30, v31, v32, v28);
    return;
  }

  v33 = &v21[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v33 + 8) = 0u;
      *(v33 + 24) = 0u;
      *v33 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v33 + 24) = (a2 - 1);
    }

    return;
  }

  v30 = (v33 + v15 + 40) & ~v15;
  if (v10 == v19)
  {
    v29 = *(v9 + 56);
    v31 = a2;
    v32 = v10;
    v28 = v36;
    goto LABEL_39;
  }

  v34 = *(v13 + 56);
  v35 = (v30 + v16 + v17) & ~v17;

  v34(v35, a2);
}

unint64_t sub_22878E900()
{
  result = qword_280DE3438;
  if (!qword_280DE3438)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3438);
  }

  return result;
}

unint64_t sub_22878E96C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22878E900();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22878E9F4(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
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

double sub_22878EB30(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
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
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

id sub_22878ECFC()
{
  sub_22878FC04(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2287CA280();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_2287CA0A0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22878FD4C(v2, sub_22878FC04);
    return MEMORY[0x277D84F90];
  }

  (*(v4 + 32))(v9, v2, v3);
  sub_22878FE84(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2287CCC50;
  v11 = *(v4 + 16);
  v11(v7, v9, v3);
  v12 = type metadata accessor for DateRangeRelevanceProvider(0);
  v13 = objc_allocWithZone(v12);
  v11(&v13[OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval], v7, v3);
  v17.receiver = v13;
  v17.super_class = v12;
  result = objc_msgSendSuper2(&v17, sel_init);
  if (result)
  {
    v15 = result;
    v16 = *(v4 + 8);
    v16(v7, v3);
    *(v10 + 32) = v15;
    v16(v9, v3);
    return v10;
  }

  __break(1u);
  return result;
}

id sub_22878F134(uint64_t a1)
{
  v3 = sub_2287CA280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22878FBA0(0);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22878FC04(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = *(v4 + 16);
  v40 = v1;
  v17(&v37 - v15, &v1[OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval], v3);
  v43 = v4;
  v18 = *(v4 + 56);
  v18(v16, 0, 1, v3);
  v39 = a1;
  sub_22878FC5C(a1, v46);
  if (v47)
  {
    type metadata accessor for DateRangeRelevanceProvider(0);
    if (swift_dynamicCast())
    {
      v19 = v44;
      v17(v14, &v44[OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval], v3);

      v20 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_228710894(v46);
  }

  v20 = 1;
LABEL_6:
  v18(v14, v20, 1, v3);
  v21 = *(v42 + 48);
  sub_22878FCE8(v16, v8);
  sub_22878FCE8(v14, &v8[v21]);
  v22 = v43;
  v23 = *(v43 + 48);
  if (v23(v8, 1, v3) != 1)
  {
    v24 = v41;
    sub_22878FCE8(v8, v41);
    if (v23(&v8[v21], 1, v3) != 1)
    {
      v26 = v38;
      (*(v22 + 32))(v38, &v8[v21], v3);
      sub_22878FDAC();
      v27 = sub_2287CB200();
      v28 = *(v22 + 8);
      v28(v26, v3);
      sub_22878FD4C(v14, sub_22878FC04);
      sub_22878FD4C(v16, sub_22878FC04);
      v28(v24, v3);
      sub_22878FD4C(v8, sub_22878FC04);
      if (v27)
      {
        goto LABEL_14;
      }

      return 0;
    }

    sub_22878FD4C(v14, sub_22878FC04);
    sub_22878FD4C(v16, sub_22878FC04);
    (*(v22 + 8))(v24, v3);
LABEL_11:
    sub_22878FD4C(v8, sub_22878FBA0);
    return 0;
  }

  sub_22878FD4C(v14, sub_22878FC04);
  sub_22878FD4C(v16, sub_22878FC04);
  if (v23(&v8[v21], 1, v3) != 1)
  {
    goto LABEL_11;
  }

  sub_22878FD4C(v8, sub_22878FC04);
LABEL_14:
  sub_22878FC5C(v39, v46);
  v29 = v47;
  if (v47)
  {
    v30 = __swift_project_boxed_opaque_existential_1(v46, v47);
    v31 = *(v29 - 8);
    MEMORY[0x28223BE20](v30);
    v33 = &v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33);
    v34 = sub_2287CBCF0();
    (*(v31 + 8))(v33, v29);
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    v34 = 0;
  }

  v35 = type metadata accessor for DateRangeRelevanceProvider(0);
  v45.receiver = v40;
  v45.super_class = v35;
  v36 = objc_msgSendSuper2(&v45, sel_isEqual_, v34);
  swift_unknownObjectRelease();
  return v36;
}

uint64_t sub_22878F828()
{
  v1 = sub_2287CA280();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](60, 0xE100000000000000);
  ObjectType = swift_getObjectType();
  sub_22878FB58();
  v5 = sub_2287CB250();
  MEMORY[0x22AABE980](v5);

  MEMORY[0x22AABE980](8250, 0xE200000000000000);
  ObjectType = v0;
  sub_2287CBB30();
  MEMORY[0x22AABE980](0xD000000000000016, 0x80000002287D2AD0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval, v1);
  v6 = sub_2287CB250();
  MEMORY[0x22AABE980](v6);

  MEMORY[0x22AABE980](62, 0xE100000000000000);
  return v10;
}

id sub_22878F9D0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DateRangeRelevanceProvider(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for DateRangeRelevanceProvider(uint64_t a1)
{
  result = qword_280DE3768;
  if (!qword_280DE3768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22878FAC8(uint64_t a1)
{
  result = sub_2287CA280();
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

unint64_t sub_22878FB58()
{
  result = qword_280DE26D8[0];
  if (!qword_280DE26D8[0])
  {
    type metadata accessor for DateRangeRelevanceProvider(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_280DE26D8);
  }

  return result;
}

void sub_22878FBA0(uint64_t a1)
{
  if (!qword_280DE17A8)
  {
    sub_22878FC04(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE17A8);
    }
  }
}

void sub_22878FC04(uint64_t a1)
{
  if (!qword_280DE33C8)
  {
    sub_2287CA280();
    v1 = sub_2287CB820();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE33C8);
    }
  }
}

uint64_t sub_22878FC5C(uint64_t a1, uint64_t a2)
{
  sub_22878FE84(0, &qword_280DE3988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22878FCE8(uint64_t a1, uint64_t a2)
{
  sub_22878FC04(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22878FD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22878FDAC()
{
  result = qword_280DE17B0;
  if (!qword_280DE17B0)
  {
    sub_2287CA280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE17B0);
  }

  return result;
}

void sub_22878FE04()
{
  sub_2287CA0B0();
  sub_2287CA120();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:2];

  qword_280DE63C0 = v1;
}

void sub_22878FE84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22878FED4()
{
  if (qword_280DE37F8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63C0;
  v1 = sub_228795DF8(5);

  qword_280DE63C8 = v1;
}

uint64_t DispatchQueueOrchestrationScheduler.__allocating_init(environment:)(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2287CACC0();
  type metadata accessor for DispatchQueueOrchestrationScheduler();
  v3 = swift_allocObject();
  DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(v1 & 1, v2, 3);
  return v3;
}

uint64_t DispatchQueueOrchestrationScheduler.__allocating_init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(a1 & 1, a2, a3);
  return v6;
}

void *DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v57 = sub_2287CB090();
  v66 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CB6B0();
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  MEMORY[0x28223BE20](v10);
  v55 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CB670();
  MEMORY[0x28223BE20](v13);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v16 - 8);
  *(v4 + 16) = a1 & 1;
  v4[3] = a2;
  v4[4] = a3;
  v63 = v4;
  v64 = v8;
  v70 = sub_2287CBE60();
  v71 = v17;
  MEMORY[0x22AABE980](0x6F6F6C6B726F775FLL, 0xE900000000000070);
  v18 = sub_2287CB280();

  v19 = MEMORY[0x22AABF6B0](v18 + 32);

  v4[5] = v19;
  v62 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v70 = 0;
  v71 = 0xE000000000000000;
  v20 = v19;
  sub_2287CBA20();
  v21 = sub_2287CBE60();
  v23 = v22;

  v70 = v21;
  v71 = v23;
  MEMORY[0x22AABE980](0xD00000000000001CLL, 0x80000002287D2AF0);
  v52[3] = v71;
  v53 = v70;
  sub_2287CB0B0();
  v70 = MEMORY[0x277D84F90];
  v61 = sub_228791B14(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_228791C04(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  v25 = v24;
  v26 = sub_22871EFD0();
  v60 = v20;
  v27 = v20;
  v58 = v25;
  v59 = v13;
  sub_2287CB880();
  v67 = *MEMORY[0x277D85260];
  v28 = v68;
  v29 = *(v69 + 104);
  v69 += 104;
  v65 = v29;
  v30 = v55;
  v29(v55);
  v54 = v27;
  v63[9] = sub_2287CB6D0();
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_2287CBA20();
  v31 = sub_2287CBE60();
  v33 = v32;

  v70 = v31;
  v71 = v33;
  MEMORY[0x22AABE980](0xD000000000000018, 0x80000002287D2B10);
  v34 = *MEMORY[0x277D851B8];
  v35 = *(v66 + 104);
  v66 += 104;
  v53 = v35;
  v35(v56, v34, v57);
  sub_2287CB0D0();
  v70 = MEMORY[0x277D84F90];
  sub_2287CB880();
  v65(v30, v67, v28);
  v63[8] = sub_2287CB6D0();
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_2287CBA20();
  v36 = sub_2287CBE60();
  v38 = v37;

  v70 = v36;
  v71 = v38;
  MEMORY[0x22AABE980](0xD00000000000001ALL, 0x80000002287D2B30);
  sub_2287CB0C0();
  v70 = MEMORY[0x277D84F90];
  v52[1] = v15;
  v52[2] = v26;
  sub_2287CB880();
  v39 = v55;
  v65(v55, v67, v68);
  v40 = v39;
  v41 = sub_2287CB6D0();
  v42 = v63;
  v63[7] = v41;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_2287CBA20();
  v43 = sub_2287CBE60();
  v45 = v44;

  v70 = v43;
  v71 = v45;
  MEMORY[0x22AABE980](0xD000000000000017, 0x80000002287D2B50);
  v53(v56, *MEMORY[0x277D851D0], v57);
  sub_2287CB0D0();
  v70 = MEMORY[0x277D84F90];
  sub_2287CB880();
  v46 = v65;
  v65(v40, v67, v68);
  v42[6] = sub_2287CB6D0();
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_2287CBA20();
  v47 = sub_2287CBE60();
  v49 = v48;

  v70 = v47;
  v71 = v49;
  MEMORY[0x22AABE980](0xD00000000000001FLL, 0x80000002287D2B70);
  sub_2287CB0C0();
  v70 = MEMORY[0x277D84F90];
  sub_2287CB880();
  v46(v40, v67, v68);
  v50 = sub_2287CB6D0();

  result = v42;
  v42[10] = v50;
  return result;
}

uint64_t sub_228790874(uint64_t a1)
{
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228790900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a1;
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v10 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78, MEMORY[0x277D85228]);
  v21 = a2;
  v22 = v9;
  v23 = a3;
  v24 = v10;
  v11 = sub_2287CAC60();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = *(v3 + 64);
  v21 = v15;
  v16 = sub_2287CB680();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = v15;
  sub_2287CAFF0();
  sub_228790874(v8);

  swift_getWitnessTable();
  v18 = sub_2287CAF40();
  (*(v12 + 8))(v14, v11);
  return v18;
}

uint64_t sub_228790B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v12 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78, MEMORY[0x277D85228]);
  v22 = a3;
  v23 = v11;
  v24 = a4;
  v25 = v12;
  v13 = sub_2287CAA90();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v17 = sub_228790DCC(a2, *(v4 + 16));
  v22 = v17;
  v18 = sub_2287CB680();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_2287CB030();
  sub_228790874(v10);
  swift_getWitnessTable();
  v19 = sub_2287CAF40();

  (*(v14 + 8))(v16, v13);
  return v19;
}

id sub_228790DCC(uint64_t a1, char a2)
{
  sub_2287919EC(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287C9DF0();
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2287C9B20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  if (sub_2287CA420())
  {
    v54 = v5;
    v55 = a1;
    v56 = v2;
    v57 = v7;
    sub_228791C04(0, &qword_280DE3858, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
    v19 = *(v13 + 72);
    v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2287CCFF0;
    v22 = *(v13 + 104);
    v22(v21 + v20, *MEMORY[0x277D11DC0], v12);
    v22(v21 + v20 + v19, *MEMORY[0x277D11DD8], v12);
    v23 = sub_22872BCEC(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v60 = v23;
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v25 = result;
      v26 = [result isiPad];

      v27 = v57;
      if (v26)
      {
        v22(v16, *MEMORY[0x277D11E00], v12);
        sub_2287244B0(v18, v16);
        (*(v13 + 8))(v18, v12);
      }

      v28 = sub_2287C9E50();
      sub_2287C9E00();
      v29 = sub_2287C9E20();
      sub_2287C9E60();
      v30 = *(v54 + 48);
      v31 = v11;
      v32 = v58;
      (*(v59 + 32))(&v27[v30], v31, v58);

      v33 = v28;
      v34 = sub_2287C9CA0();
      v35 = sub_2287C9C80();

      if (v35)
      {
        v36 = sub_2287B5474(v60, v29);

        v37 = v36[2];

        if (v37)
        {

          v38 = *(v59 + 8);
          v39 = *(v56 + 72);
          v38(&v27[v30], v32);
          return v39;
        }
      }

      else
      {
      }

      v41 = v59;
      v42 = (*(v59 + 88))(&v27[v30], v32);
      if (v42 == *MEMORY[0x277D11F20])
      {
        v43 = v33;
        v44 = sub_2287C9CA0();
        v45 = sub_2287C9C80();

        if (v45)
        {

          v46 = *(v56 + 56);
LABEL_18:
          v50 = *(v41 + 8);
LABEL_22:
          v39 = v46;
          v50(&v27[v30], v32);
          return v39;
        }
      }

      else if (v42 == *MEMORY[0x277D11F18])
      {
        v47 = v33;
        v48 = sub_2287C9CA0();
        v49 = sub_2287C9C80();

        if (v49)
        {

          v46 = *(v56 + 48);
          goto LABEL_18;
        }
      }

      v51 = sub_2287C9CA0();
      v52 = sub_2287C9C80();

      v50 = *(v41 + 8);
      if (v52)
      {
        v46 = *(v56 + 64);
      }

      else
      {
        v46 = *(v56 + 48);
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v40 = *(v2 + 80);

    return v40;
  }

  return result;
}

uint64_t DispatchQueueOrchestrationScheduler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_2287913F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = sub_2287CACC0();
  type metadata accessor for DispatchQueueOrchestrationScheduler();
  v5 = swift_allocObject();
  result = DispatchQueueOrchestrationScheduler.init(environment:maxConcurrentPipelines:maxConcurrentGenerators:)(v2 & 1, v4, 3);
  *a2 = v5;
  return result;
}

uint64_t sub_22879150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *), void (*a6)(void *, char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v25 = a3;
  v26 = a4;
  v27 = a1;
  sub_228791C04(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_228703004(255, &qword_280DE39D0, 0x277D85C78);
  v15 = sub_22873A2A8(&qword_280DE3620, &qword_280DE39D0, 0x277D85C78, MEMORY[0x277D85228]);
  v30[0] = a3;
  v30[1] = v14;
  v30[2] = a4;
  v30[3] = v15;
  v16 = a5(0, v30);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v20 = sub_2287C9DC0();
  v30[0] = v20;
  v21 = sub_2287CB680();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v28(v30, v13, v25, v14, v26, v15);
  sub_228790874(v13);

  swift_getWitnessTable();
  v22 = sub_2287CAF40();
  (*(v17 + 8))(v19, v16);
  return v22;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22879194C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228791994(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_2287919EC(uint64_t a1)
{
  if (!qword_280DE11E8)
  {
    sub_2287C9DF0();
    sub_228791A80(255);
    sub_228791B5C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280DE11E8);
    }
  }
}

void sub_228791A80(uint64_t a1)
{
  if (!qword_280DE19C8)
  {
    sub_2287C9B20();
    sub_228791B14(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
    v1 = sub_2287CB4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE19C8);
    }
  }
}

uint64_t sub_228791B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228791B5C(uint64_t a1)
{
  if (!qword_280DDFF28)
  {
    sub_228703004(255, &qword_280DE3638, 0x277CCD720);
    sub_22873A2A8(&qword_280DE3630, &qword_280DE3638, 0x277CCD720, MEMORY[0x277D85378]);
    v1 = sub_2287CB4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFF28);
    }
  }
}

void sub_228791C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228791C78(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = MEMORY[0x277D84F90];
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 64);
  v12 = MEMORY[0x277D84F90];
  do
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 3);
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    v15[0] = v6;
    v15[1] = v7;
    v15[2] = v8;
    v15[3] = v9;
    v16 = v10;
    sub_228745E98(v6, v7, v8, v9, v10);
    a1(&v14, v15);
    if (v3)
    {
      sub_228745FAC(v6, v7, v8, v9, v10);

      return v12;
    }

    sub_228745FAC(v6, v7, v8, v9, v10);
    if (v14)
    {
      MEMORY[0x22AABEA50]();
      if (*(v17 + 16) >= *(v17 + 24) >> 1)
      {
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v12 = v17;
    }

    v5 += 40;
    --v4;
  }

  while (v4);
  return v12;
}

uint64_t sub_228791DD8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AABF120](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x22AABEA50]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2287CB3E0();
        }

        sub_2287CB420();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_228791F84(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_228793004(0, &qword_280DE1908, sub_22871511C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  sub_22871511C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v31 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(type metadata accessor for ModelTrainingEvent(0) - 8);
  v26 = v12;
  v18 = (v12 + 48);
  v19 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v17 + 72);
  v20 = MEMORY[0x277D84F90];
  v27 = v11;
  v28 = a2;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v11) == 1)
    {
      sub_228793068(v9);
    }

    else
    {
      v21 = v29;
      sub_2287930F4(v9, v29, sub_22871511C);
      sub_2287930F4(v21, v31, sub_22871511C);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_228723804(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_228723804((v22 > 1), v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_2287930F4(v31, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, sub_22871511C);
      v11 = v27;
    }

    v19 += v30;
    if (!--v16)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_2287922B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_228770F78(0);
    sub_2287C9E80();
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2287C9DD0();
    __swift_destroy_boxed_opaque_existential_0(v5);
    return sub_228792EB4(a1, a2);
  }

  else
  {

    return sub_228792EB4(a1, a2);
  }
}

uint64_t sub_228792408@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  sub_228793004(0, &qword_280DE00B8, sub_228770F78, MEMORY[0x277CBCE78]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  sub_228792A90(0);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770F78(0);
  v41 = v9;
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  sub_228792B00(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228792C00(0);
  v39 = v16;
  v37 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228792C94(0);
  v40 = v19;
  v38 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v42 = a1;
  v45 = a1;
  v23 = sub_228791C78(sub_228792E98, v44, v22);
  if (*(v23 + 16))
  {
    v46 = v23;
    sub_228792B94(0);
    sub_228792F18(0);
    sub_228792FBC(&qword_280DE0140, sub_228792B94, MEMORY[0x277CBCD90]);
    sub_228792FBC(&qword_280DDFFB0, sub_228792F18, MEMORY[0x277D83970]);
    sub_2287CAC40();
    sub_228792FBC(&qword_280DE0308, sub_228792B00, MEMORY[0x277CBCD48]);
    sub_2287CAFC0();
    (*(v13 + 8))(v15, v12);
    sub_228792EB4(v42, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v25 = swift_allocObject();
    sub_2287930F4(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, sub_228770F78);
    sub_228792FBC(&qword_280DE04E8, sub_228792C00, MEMORY[0x277CBCCD0]);
    v26 = v39;
    sub_2287CAF70();

    (*(v37 + 8))(v18, v26);
    sub_228792FBC(&qword_280DE0580, sub_228792C94, MEMORY[0x277CBCC08]);
    v27 = v40;
    v28 = sub_2287CAF40();
    result = (*(v38 + 8))(v21, v27);
  }

  else
  {

    sub_228792EB4(v42, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2287CADB0();
    sub_22874A0A4();
    v30 = v33;
    sub_2287CAD80();
    (*(v32 + 8))(v5, v30);
    sub_228792FBC(&qword_280DDFE30, sub_228792A90, MEMORY[0x277CBCF40]);
    v31 = v35;
    v28 = sub_2287CAF40();
    result = (*(v34 + 8))(v8, v31);
  }

  *v43 = v28;
  return result;
}

void sub_228792A90(uint64_t a1)
{
  if (!qword_280DDFE28)
  {
    sub_228770F78(255);
    sub_22874A0A4();
    v1 = sub_2287CBE00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE28);
    }
  }
}

void sub_228792B00(uint64_t a1)
{
  if (!qword_280DE0300)
  {
    sub_228792B94(255);
    sub_228792FBC(&qword_280DE0140, sub_228792B94, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAC30();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0300);
    }
  }
}

void sub_228792B94(uint64_t a1)
{
  if (!qword_280DE0138)
  {
    sub_22874A0A4();
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0138);
    }
  }
}

void sub_228792C00(uint64_t a1)
{
  if (!qword_280DE04E0)
  {
    sub_228792B00(255);
    sub_228792FBC(&qword_280DE0308, sub_228792B00, MEMORY[0x277CBCD48]);
    v1 = sub_2287CABB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE04E0);
    }
  }
}

void sub_228792C94(uint64_t a1)
{
  if (!qword_280DE0578)
  {
    sub_228792C00(255);
    sub_228770F78(255);
    sub_228792FBC(&qword_280DE04E8, sub_228792C00, MEMORY[0x277CBCCD0]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0578);
    }
  }
}

uint64_t sub_228792D40@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 32);
  if (v3 >> 5 == 1)
  {
    sub_228770F78(0);
    sub_2287C9E80();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_2287C9DB0();
    __swift_destroy_boxed_opaque_existential_0(v7);
    swift_getObjectType();
    v6 = sub_2287CA3A0();
LABEL_10:
    v5 = v6;
    result = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (v3 >> 5 == 5 && v3 == 160 && (*(result + 24) | *(result + 16) | *(result + 8) | *result) == 0)
  {
    sub_228770F78(0);
    sub_2287C9E80();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_2287C9DB0();
    __swift_destroy_boxed_opaque_existential_0(v7);
    swift_getObjectType();
    v6 = sub_2287CA3B0();
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:
  *a2 = v5;
  return result;
}

uint64_t sub_228792EB4(uint64_t a1, uint64_t a2)
{
  sub_228770F78(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228792F4C@<X0>(uint64_t a1@<X8>)
{
  sub_228770F78(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_228792EB4(v4, a1);
}

uint64_t sub_228792FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228793004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228793068(uint64_t a1)
{
  sub_228793004(0, &qword_280DE1908, sub_22871511C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2287930F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id static SharableModelReference.predicateFor(sourceProfile:)(void *a1)
{
  if (a1)
  {
    sub_22870558C(0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2287CCFF0;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_2287043F8();
    *(v2 + 32) = 0xD000000000000011;
    *(v2 + 40) = 0x80000002287D2CC0;
    result = [a1 identifier];
    if (result)
    {
      v4 = result;
      sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
      *(v2 + 96) = sub_228703004(0, &qword_280DE3868, 0x277CCAD78);
      *(v2 + 104) = sub_2287932B0();
      *(v2 + 72) = v4;
      return sub_2287CB550();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = [objc_opt_self() predicateWithValue_];

    return v5;
  }

  return result;
}

unint64_t sub_2287932B0()
{
  result = qword_280DE3860;
  if (!qword_280DE3860)
  {
    sub_228703004(255, &qword_280DE3868, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE3860);
  }

  return result;
}

uint64_t sub_228793318(uint64_t a1, unsigned __int8 a2)
{
  sub_2287CB290();
}

uint64_t sub_228793464(uint64_t a1, unsigned __int8 a2)
{
  sub_2287CBD80();
  sub_2287CB290();

  return sub_2287CBDB0();
}

uint64_t sub_2287935C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65746144206F4ELL;
  if (a1 != 6)
  {
    v5 = 0x61746144206F4ELL;
    v4 = 0xE700000000000000;
  }

  v6 = 0x5920352074736150;
  v7 = 0xEC00000073726165;
  if (a1 != 4)
  {
    v6 = 0x7265646C4FLL;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x2030332074736150;
  v9 = 0xEC00000073796144;
  if (a1 != 2)
  {
    v8 = 0x2032312074736150;
    v9 = 0xEE007368746E6F4DLL;
  }

  v10 = 0x4420372074736150;
  if (a1)
  {
    v3 = 0xEB00000000737961;
  }

  else
  {
    v10 = 0x7961646F54;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xEB00000000737961;
        if (v11 != 0x4420372074736150)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7961646F54)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 != 2)
    {
      v13 = 0xEE007368746E6F4DLL;
      if (v11 != 0x2032312074736150)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x2030332074736150;
    v15 = 1937334596;
LABEL_31:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x7265646C4FLL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x5920352074736150;
    v15 = 1936875877;
    goto LABEL_31;
  }

  v13 = 0xE700000000000000;
  if (a2 == 6)
  {
    if (v11 != 0x65746144206F4ELL)
    {
      goto LABEL_45;
    }
  }

  else if (v11 != 0x61746144206F4ELL)
  {
LABEL_45:
    v16 = sub_2287CBD00();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t AllDataSummarySection.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2287C97C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AllDataSummarySection.identifier.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AllDataSummarySection(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AllDataSummarySection.init(date:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_2287C97C0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AllDataSummarySection(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t AllDataSummarySection.title.getter()
{
  if (*(v0 + *(type metadata accessor for AllDataSummarySection(0) + 20)) > 6u)
  {
    return 0;
  }

  else
  {
    return sub_2287939F4();
  }
}

uint64_t sub_2287939F4()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        if (qword_280DE1280 == -1)
        {
          return sub_2287C9620();
        }
      }

      else if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (*v0)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_24;
  }

  if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      if (qword_280DE1280 == -1)
      {
        return sub_2287C9620();
      }
    }

    else if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_24;
  }

  if (v1 == 6)
  {
    if (qword_280DE1280 == -1)
    {
      return sub_2287C9620();
    }

    goto LABEL_24;
  }

  if (qword_280DE1280 != -1)
  {
LABEL_24:
    swift_once();
  }

  return sub_2287C9620();
}

HealthPlatformCore::AllDataSummarySection::Identifier_optional __swiftcall AllDataSummarySection.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2287CBC10();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AllDataSummarySection.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F54;
  v3 = 0x65746144206F4ELL;
  if (v1 != 6)
  {
    v3 = 0x61746144206F4ELL;
  }

  v4 = 0x5920352074736150;
  if (v1 != 4)
  {
    v4 = 0x7265646C4FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x2030332074736150;
  if (v1 != 2)
  {
    v5 = 0x2032312074736150;
  }

  if (*v0)
  {
    v2 = 0x4420372074736150;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_228793FF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F54;
  v5 = 0xE700000000000000;
  v6 = 0x65746144206F4ELL;
  if (v2 != 6)
  {
    v6 = 0x61746144206F4ELL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEC00000073726165;
  v8 = 0x5920352074736150;
  if (v2 != 4)
  {
    v8 = 0x7265646C4FLL;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000073796144;
  v10 = 0x2030332074736150;
  if (v2 != 2)
  {
    v10 = 0x2032312074736150;
    v9 = 0xEE007368746E6F4DLL;
  }

  if (*v1)
  {
    v4 = 0x4420372074736150;
    v3 = 0xEB00000000737961;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t AllDataSummarySection.DateRange.identifier.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AllDataSummarySection.DateRange(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t static AllDataSummarySection.DateRange.makeDefaultSections(dateRange:)(uint64_t a1)
{
  v44 = sub_2287C97C0();
  v2 = *(v44 - 8);
  v3 = MEMORY[0x28223BE20](v44);
  v46 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v34 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v34 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_2287953E4(0, &qword_27D850E50, type metadata accessor for AllDataSummarySection.DateRange, MEMORY[0x277D84560]);
  v14 = type metadata accessor for AllDataSummarySection.DateRange(0);
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v39 = *(v15 + 72);
  v40 = v14 - 8;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = v39;
  v19 = swift_allocObject();
  v45 = v19;
  *(v19 + 16) = xmmword_2287CED20;
  v20 = v19 + v17;
  v51 = 0;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v51, v19 + v17);
  *(v20 + *(v16 + 28)) = 0;
  v50 = 1;
  v41 = a1;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v50, v20 + v18);
  *(v20 + v18 + *(v16 + 28)) = 1;
  v49 = 2;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v49, v20 + 2 * v18);
  *(v20 + 2 * v18 + *(v16 + 28)) = 2;
  v48 = 3;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v48, v20 + 3 * v18);
  *(v20 + 3 * v18 + *(v16 + 28)) = 3;
  v47 = 5;
  static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)(&v47, v20 + 4 * v18);
  *(v20 + 4 * v18 + *(v16 + 28)) = 5;
  v38 = v20 + 5 * v18;
  static AllDataSummarySection.DateRange.allDataSummaryDate(from:)(v13);
  v21 = v11;
  sub_2287C9760();
  v22 = v42;
  sub_2287C9760();
  v23 = v43;
  sub_2287C9760();
  v24 = v46;
  sub_2287C9760();
  v25 = *(v2 + 8);
  v26 = v44;
  v25(v24, v44);
  v25(v23, v26);
  v25(v22, v26);
  v25(v21, v26);
  v25(v13, v26);
  v36 = sub_2287C9590();
  v27 = *(v36 - 8);
  v35 = *(v27 + 56);
  v37 = v27 + 56;
  v28 = v38;
  v35(v38, 1, 1, v36);
  v29 = v40;
  *(v28 + *(v40 + 28)) = 6;
  v30 = v20 + 6 * v39;
  static AllDataSummarySection.DateRange.allDataSummaryDate(from:)(v13);
  v31 = v21;
  sub_2287C9760();
  sub_2287C9760();
  sub_2287C9760();
  v32 = v46;
  sub_2287C9760();
  v25(v32, v26);
  v25(v23, v26);
  v25(v22, v26);
  v25(v31, v26);
  v25(v13, v26);
  v35(v30, 1, 1, v36);
  *(v30 + *(v29 + 28)) = 7;
  return v45;
}

uint64_t static AllDataSummarySection.DateRange.getInterval(for:sectionIdentifier:)@<X0>(unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v4 = sub_2287C97C0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v35 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - v23;
  v25 = *a2;
  static AllDataSummarySection.DateRange.allDataSummaryDate(from:)(&v35 - v23);
  sub_2287C9760();
  sub_2287C9760();
  sub_2287C9760();
  sub_2287C9760();
  if (v25 <= 3)
  {
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v28 = *(v5 + 16);
        v28(v10, v19, v4);
        v28(v35, v22, v4);
      }

      else
      {
        v31 = *(v5 + 16);
        v31(v10, v16, v4);
        v31(v35, v19, v4);
      }
    }

    else if (v25)
    {
      v30 = *(v5 + 16);
      v30(v10, v22, v4);
      v30(v35, v24, v4);
    }

    else
    {
      (*(v5 + 16))(v10, v24, v4);
      sub_2287C9750();
    }

LABEL_15:
    v27 = v36;
    sub_2287C9550();
    v26 = 0;
    goto LABEL_16;
  }

  if ((v25 - 6) >= 2)
  {
    if (v25 == 4)
    {
      v29 = *(v5 + 16);
      v29(v10, v13, v4);
      v29(v35, v16, v4);
    }

    else
    {
      sub_2287C9740();
      (*(v5 + 16))(v35, v16, v4);
    }

    goto LABEL_15;
  }

  v26 = 1;
  v27 = v36;
LABEL_16:
  v32 = *(v5 + 8);
  v32(v13, v4);
  v32(v16, v4);
  v32(v19, v4);
  v32(v22, v4);
  v32(v24, v4);
  v33 = sub_2287C9590();
  return (*(*(v33 - 8) + 56))(v27, v26, 1, v33);
}

uint64_t static AllDataSummarySection.DateRange.allDataSummaryDate(from:)@<X0>(uint64_t a2@<X8>)
{
  v15[1] = a2;
  v15[0] = sub_2287C97C0();
  v2 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2287C9870();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287C9590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9520();
  v13 = sub_2287C9530();
  (*(v10 + 8))(v12, v9);
  sub_2287C9850();
  if (v13)
  {
    sub_2287C97B0();
  }

  else
  {
    sub_2287C9570();
  }

  sub_2287C9820();
  (*(v2 + 8))(v4, v15[0]);
  return (*(v6 + 8))(v8, v5);
}

uint64_t AllDataSummarySection.DateRange.isDateInSection(_:)(uint64_t a1)
{
  v44 = a1;
  sub_2287952C0(0);
  v43 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = sub_2287C97C0();
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  sub_228795328(0);
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287953E4(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v20 = sub_2287C9590();
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v25 = v24;
  sub_2287044C8(v23, v19);
  if ((*(v25 + 48))(v19, 1, v20) == 1)
  {
    sub_22870455C(v19);
    v26 = 0;
    return v26 & 1;
  }

  v40 = v25;
  (*(v25 + 32))(v22, v19, v20);
  sub_2287C9570();
  v39 = v22;
  sub_2287C9540();
  v27 = sub_22879538C();
  result = sub_2287CB1F0();
  if (result)
  {
    v37 = v27;
    v38 = v20;
    v29 = v41;
    v30 = *(v41 + 32);
    v30(v7, v13, v8);
    v31 = v43;
    v30(&v7[*(v43 + 48)], v11, v8);
    sub_228795448(v7, v5);
    v32 = *(v31 + 48);
    v30(v16, v5, v8);
    v33 = *(v29 + 8);
    v33(&v5[v32], v8);
    sub_2287954AC(v7, v5);
    v34 = v16;
    v30(&v16[*(v42 + 36)], &v5[*(v31 + 48)], v8);
    v33(v5, v8);
    if (sub_2287CB1F0())
    {
      v26 = sub_2287CB1E0();
    }

    else
    {
      v26 = 0;
    }

    v35 = v38;
    v36 = v39;
    sub_228795510(v34);
    (*(v40 + 8))(v36, v35);
    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static AllDataSummarySection.DateRange.dateIntervalCorrespondsToTodaySection(_:)(uint64_t a1)
{
  v1 = sub_2287C9590();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9520();
  v5 = sub_2287C9530();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

void sub_2287952C0(uint64_t a1)
{
  if (!qword_27D850E58)
  {
    sub_2287C97C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D850E58);
    }
  }
}

void sub_228795328(uint64_t a1)
{
  if (!qword_27D850E60)
  {
    sub_2287C97C0();
    sub_22879538C();
    v1 = sub_2287CB540();
    if (!v2)
    {
      atomic_store(v1, &qword_27D850E60);
    }
  }
}

unint64_t sub_22879538C()
{
  result = qword_27D850E68;
  if (!qword_27D850E68)
  {
    sub_2287C97C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850E68);
  }

  return result;
}

void sub_2287953E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228795448(uint64_t a1, uint64_t a2)
{
  sub_2287952C0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2287954AC(uint64_t a1, uint64_t a2)
{
  sub_2287952C0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228795510(uint64_t a1)
{
  sub_228795328(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228795570()
{
  result = qword_280DE2D90;
  if (!qword_280DE2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2D90);
  }

  return result;
}

uint64_t sub_2287955EC(uint64_t a1)
{
  result = sub_2287C97C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AllDataSummarySection.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AllDataSummarySection.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2287957D8(uint64_t a1)
{
  sub_2287953E4(319, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t Array<A>.makeGeneratorPipelineProviderWrappers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2287CB450();
  swift_getWitnessTable();
  return sub_2287CB300();
}

double sub_22879590C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 48))(&v24, a2, a3);
  if (*(&v25 + 1))
  {
    sub_228706AD4(&v24, v28);
    v8 = v29;
    v9 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_2287A2EBC(v8, v9, &v20);
    v10 = *(a3 + 8);
    *(&v26 + 1) = a2;
    v27 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
    v12 = *(*(a2 - 8) + 16);
    v12(boxed_opaque_existential_0, a1, a2);
    v24 = v20;
    v13 = v29;
    v14 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_2287680D8(v13, v14, &v19);
    *(&v22 + 1) = a2;
    v23 = v10;
    v15 = __swift_allocate_boxed_opaque_existential_0(&v21);
    v12(v15, a1, a2);
    v20 = v19;
    v16 = v25;
    *a4 = v24;
    *(a4 + 16) = v16;
    *(a4 + 32) = v26;
    v17 = v21;
    *(a4 + 56) = v20;
    *(a4 + 48) = v27;
    *(a4 + 72) = v17;
    *(a4 + 88) = v22;
    *(a4 + 104) = v23;
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    sub_228795B44(&v24);
    result = 0.0;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_228795B44(uint64_t a1)
{
  sub_228795BA0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228795BA0(uint64_t a1)
{
  if (!qword_280DE1210)
  {
    sub_228795BF8();
    v1 = sub_2287CB820();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1210);
    }
  }
}

unint64_t sub_228795BF8()
{
  result = qword_280DE3440;
  if (!qword_280DE3440)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3440);
  }

  return result;
}

void sub_228795C5C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [v4 hashTransform];
  sub_228711964();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2287CCC50;
  *(v6 + 32) = v1;
  sub_22870BE64();
  v7 = v1;
  v8 = sub_2287CB390();

  v9 = [v3 transformedFeatureWithTransformer:v5 features:v8];

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = [v4 maskTransformWithWidth_];
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2287CCC50;
    *(v11 + 32) = v9;
    v12 = v9;
    v13 = sub_2287CB390();

    [v3 transformedFeatureWithTransformer:v10 features:v13];
  }
}

id sub_228795DF8(uint64_t a1)
{
  v3 = objc_opt_self();
  result = objc_opt_self();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = objc_opt_self();
    v7 = [v6 featureValueWithDouble_];
    v8 = [v6 featureValueWithDouble_];
    v9 = [v5 bucketTransformerWithCount:a1 minValue:v7 maxValue:v8];

    sub_228711964();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2287CCC50;
    *(v10 + 32) = v1;
    sub_22870BE64();
    v11 = v1;
    v12 = sub_2287CB390();

    v13 = [v3 transformedFeatureWithTransformer:v9 features:v12];

    return v13;
  }

  return result;
}

uint64_t MutualExclusionGroupFeatureTag.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_228795FF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_228795FFC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t MutualExclusionGroupFeatureTag.init(dataVisualizationKind:dataType:excludeWithSameCategory:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v18 = sub_2287CA2D0();
  v19 = v8;
  if (a3)
  {
    _s14HealthPlatform7KeywordC0aB4CoreE11identifiers3forSaySSGSo12HKObjectTypeC_tFZ_0();
    sub_22871B354();
    sub_228714B18();
    v9 = sub_2287CB1D0();
    v11 = v10;

    MEMORY[0x22AABE980](v9, v11);
  }

  else
  {
    v12 = [a2 identifier];
    v13 = sub_2287CB220();
    v15 = v14;

    MEMORY[0x22AABE980](v13, v15);
  }

  MEMORY[0x22AABE980](95, 0xE100000000000000);

  v16 = sub_2287CA2E0();
  result = (*(*(v16 - 8) + 8))(a1, v16);
  *a4 = v18;
  a4[1] = v19;
  return result;
}

uint64_t sub_22879617C(uint64_t a1, int a2)
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

uint64_t sub_2287961C4(uint64_t result, int a2, int a3)
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

void sub_228796214()
{
  sub_2287CA500();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE6368 = v1;
}

void sub_228796294()
{
  if (qword_280DE3788 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6368;
  v1 = *(sub_2287CA2C0() + 16);

  sub_228795C5C(v1);
  v3 = v2;

  qword_280DE6370 = v3;
}

uint64_t SummaryTabFeedPopulationManager.collectHighlightsInteractionAnalytics(in:)(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v3;
  sub_228797570(0, &qword_280DE1A58, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics);
  swift_allocObject();
  v6 = a1;
  sub_2287CADF0();
  sub_2287975D4(&qword_280DE1A60, &qword_280DE1A58, &type metadata for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics);
  v7 = sub_2287CAF40();

  return v7;
}

uint64_t SummaryTabFeedPopulationManager.collectModelAnalytics()()
{
  v1 = sub_2287CB6A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CB690();
  v5 = sub_22877D1E4(v4, *(v0 + 104));
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t SummaryTabFeedPopulationManager.collectModelAnalytics<A>(timeout:timeoutScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a1;
  v7 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2287CB820();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v40 - v9;
  sub_228797570(255, &qword_280DE1A48, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics);
  v11 = v10;
  v46 = sub_2287975D4(&qword_280DE1A50, &qword_280DE1A48, &type metadata for AppSessionAnalyticsEvent.ModelAnalytics);
  v47 = v11;
  v59 = v11;
  v60 = a3;
  v61 = v46;
  v62 = a4;
  v12 = sub_2287CAC60();
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = &v40 - v13;
  WitnessTable = swift_getWitnessTable();
  v52 = v12;
  v59 = v12;
  v60 = a3;
  v44 = WitnessTable;
  v61 = WitnessTable;
  v62 = a4;
  v15 = sub_2287CABD0();
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v45 = &v40 - v16;
  v17 = sub_2287CAA50();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  v21 = sub_2287CAA40();
  v22 = sub_2287CB610();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = v17;
    v24 = v7;
    v25 = v23;
    v41 = swift_slowAlloc();
    v58 = v41;
    v59 = v24;
    *v25 = 136446210;
    swift_getMetatypeMetadata();
    v26 = sub_2287CB250();
    v42 = v18;
    v28 = sub_2287031D8(v26, v27, &v58);

    *(v25 + 4) = v28;
    _os_log_impl(&dword_2286FF000, v21, v22, "[%{public}s]: Collecting RelevanceEngine metrics", v25, 0xCu);
    v29 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AABFD90](v29, -1, -1);
    MEMORY[0x22AABFD90](v25, -1, -1);

    (*(v42 + 8))(v20, v43);
  }

  else
  {

    (*(v18 + 8))(v20, v17);
  }

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v59 = sub_2287CADF0();
  v30 = v53;
  v31 = AssociatedTypeWitness;
  v32 = *(AssociatedTypeWitness - 8);
  v42 = *(v32 + 56);
  v43 = v32 + 56;
  (v42)(v53, 1, 1, AssociatedTypeWitness);
  v33 = v50;
  sub_2287CAFF0();
  v34 = v57;
  v56 = *(v56 + 8);
  (v56)(v30, v57);

  (v42)(v30, 1, 1, v31);
  v35 = v45;
  v36 = v52;
  sub_2287CB000();
  (v56)(v30, v34);
  (*(v51 + 8))(v33, v36);
  v37 = v49;
  swift_getWitnessTable();
  v38 = sub_2287CAF40();
  (*(v48 + 8))(v35, v37);
  return v38;
}

uint64_t sub_228796B54(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_2287B016C();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0x128);

    v7(sub_228798BA8, v6);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v11 = 1;
    return a1(v9);
  }
}

void sub_228796C84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();

  v11 = sub_2287CAA40();
  v12 = sub_2287CB610();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = a4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = a5;
    v16 = v15;
    v33 = v15;
    *v14 = 136315138;
    sub_228703004(0, &qword_280DE39C0, 0x277CCABB0);
    v17 = sub_2287CB150();
    v19 = sub_2287031D8(v17, v18, &v33);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2286FF000, v11, v12, "RelevanceEngine analytics collected: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AABFD90](v16, -1, -1);
    v20 = v14;
    a4 = v32;
    MEMORY[0x22AABFD90](v20, -1, -1);
  }

  (*(v8 + 8))(v10, v7);

  AppSessionAnalyticsEvent.ModelAnalytics.init(relevanceEngineMetrics:)(v21, &v33);
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v36;
  v38 = 0;
  v26 = v37;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  a4(&v33);

  sub_228798BB0(v33, v34, v35, v36, v37, v38);
}

uint64_t sub_228796F08@<X0>(void *a1@<X8>)
{
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CAA30();
  v6 = sub_2287CAA40();
  v7 = sub_2287CB5F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2286FF000, v6, v7, "RelevanceEngine analytics never returned; moving on", v8, 2u);
    MEMORY[0x22AABFD90](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *a1 = 1;
  return result;
}

uint64_t sub_228797050(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v49 = a5;
  v50 = a4;
  v7 = sub_2287CB080();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2287CB0E0();
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CAA50();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v43 = a1;
    v44 = a2;
    v45 = v13;
    v46 = v11;
    v47 = v10;
    sub_2287CAA30();
    v19 = sub_2287CAA40();
    v20 = sub_2287CB610();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = v8;
      v22 = v21;
      v23 = swift_slowAlloc();
      *v22 = 136446210;
      v41 = v14;
      v24 = v49;
      v52 = v23;
      aBlock = v49;
      swift_getMetatypeMetadata();
      v25 = sub_2287CB250();
      v27 = v7;
      v28 = sub_2287031D8(v25, v26, &v52);

      *(v22 + 4) = v28;
      v7 = v27;
      v29 = v24;
      _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s]: enqueuing collect highlights interaction analytics", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABFD90](v23, -1, -1);
      v30 = v22;
      v8 = v42;
      MEMORY[0x22AABFD90](v30, -1, -1);

      (*(v48 + 8))(v16, v41);
      v31 = v43;
    }

    else
    {

      (*(v48 + 8))(v16, v14);
      v31 = v43;
      v29 = v49;
    }

    v33 = *(v18 + 104);
    v34 = swift_allocObject();
    v35 = v50;
    v34[2] = v50;
    v34[3] = v18;
    v34[4] = v31;
    v34[5] = v44;
    v34[6] = v29;
    v57 = sub_228798C24;
    v58 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_228712EA8;
    v56 = &block_descriptor_8;
    v36 = _Block_copy(&aBlock);
    v37 = v33;
    v38 = v35;

    v39 = v45;
    sub_2287CB0A0();
    v52 = MEMORY[0x277D84F90];
    sub_228798C4C(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2287723C0(0);
    sub_228798C4C(&qword_280DE3A08, sub_2287723C0, MEMORY[0x277D83970]);
    v40 = v47;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v39, v40, v36);
    _Block_release(v36);

    (*(v8 + 8))(v40, v7);
    (*(v46 + 8))(v39, v51);
  }

  else
  {
    aBlock = 0;
    v54 = 0;
    LOBYTE(v55) = 1;
    return a1(&aBlock);
  }
}

void sub_228797570(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_22877C950();
    v4 = sub_2287CADE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2287975D4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_228797570(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228797624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v31 = a4;
  v8 = sub_2287CB080();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2287CB0E0();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB090();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(v15 + 32) = -1;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v15 + 16;
  v16[5] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_228798CE0;
  *(v17 + 24) = v16;
  v43 = sub_22877E1B8;
  v44 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v29 = &v41;
  v41 = sub_228742C10;
  v42 = &block_descriptor_22_0;
  v18 = _Block_copy(&aBlock);
  v19 = a1;

  [v19 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {

    sub_2287CA670();

    v21 = swift_allocObject();
    v22 = v31;
    v21[2] = v30;
    v21[3] = v22;
    v21[4] = v15;
    sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
    (*(v12 + 104))(v14, *MEMORY[0x277D851B0], v11);

    v23 = sub_2287CB6E0();
    (*(v12 + 8))(v14, v11);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_228798CEC;
    *(v24 + 24) = v21;
    v43 = sub_22877E1B8;
    v44 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_228712EA8;
    v42 = &block_descriptor_31_0;
    v25 = _Block_copy(&aBlock);

    v26 = v32;
    sub_2287CB0A0();
    v38 = MEMORY[0x277D84F90];
    sub_228798C4C(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2287723C0(0);
    sub_228798C4C(&qword_280DE3A08, sub_2287723C0, MEMORY[0x277D83970]);
    v27 = v34;
    v28 = v37;
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v26, v27, v25);
    _Block_release(v25);

    (*(v36 + 8))(v27, v28);
    (*(v33 + 8))(v26, v35);
  }

  return result;
}

void sub_228797BEC(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v57 = a4;
  v6 = sub_2287CAA50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModelTrainingEvent(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA640();
  v13 = [*(a2 + 56) profileIdentifier];
  v14 = sub_2287CA630();

  v15 = sub_2287CA300();
  if (v15)
  {
    v51 = v15;
    v52 = v7;
    v53 = v6;
    v54 = a3;

    sub_2287CA660();

    v16 = v58;
    v58 = MEMORY[0x277D84F90];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v50 = v17 - 1;
      v55 = MEMORY[0x277D84F90];
      v19 = v57;
      while (v18 < *(v16 + 16))
      {
        sub_228798D5C(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v12);
        sub_228798118(v12, a2, v19, &v60);
        v20 = sub_228798DC0(v12);
        if (v60)
        {
          MEMORY[0x22AABEA50](v20);
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v55 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2287CB3E0();
          }

          v49 = v18 + 1;
          sub_2287CB420();
          v19 = v57;
          v55 = v58;
          v21 = v50 == v18;
          v18 = v49;
          if (v21)
          {
            goto LABEL_17;
          }
        }

        else if (v17 == ++v18)
        {
          goto LABEL_17;
        }
      }

      __break(1u);

      sub_228798DC0(v12);

      __break(1u);
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
LABEL_17:

      v25 = v51;
      v26 = v51;
      sub_2287984BC(v25);

      AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.init(averageProbabilityOfPositiveInteractionForThisSession:interactedFeedItems:)(v55, &v58);
      v28 = v58;
      v27 = v59;
      v29 = v56;
      sub_2287CAA30();
      v30 = v28;
      v31 = v27;
      v32 = sub_2287CAA40();
      v33 = sub_2287CB610();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v60 = v35;
        *v34 = 136446466;
        v58 = v57;
        swift_getMetatypeMetadata();
        v36 = sub_2287CB250();
        v38 = sub_2287031D8(v36, v37, &v60);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v58 = v28;
        v59 = v31;
        v39 = v30;
        v40 = v31;
        v41 = sub_2287CB250();
        v43 = sub_2287031D8(v41, v42, &v60);

        *(v34 + 14) = v43;
        _os_log_impl(&dword_2286FF000, v32, v33, "[%{public}s]: highlights interaction analytics collected: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v35, -1, -1);
        MEMORY[0x22AABFD90](v34, -1, -1);

        (*(v52 + 8))(v56, v53);
      }

      else
      {

        (*(v52 + 8))(v29, v53);
      }

      v44 = v54;
      v45 = *v54;
      v46 = v54[1];
      *v54 = v28;
      v44[1] = v31;
      v47 = *(v44 + 16);
      *(v44 + 16) = 0;
      sub_228798D44(v45, v46, v47);
    }
  }

  else
  {
    v22 = *a3;
    v23 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v24 = *(a3 + 16);
    *(a3 + 16) = 1;

    sub_228798D44(v22, v23, v24);
  }
}

uint64_t sub_228798118@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a5;
  v37 = a4;
  v7 = sub_2287CAA50();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModelTrainingEvent(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_228703004(0, &qword_280DE3888, 0x277CBE438);
  v16 = sub_2287C9A00();
  if (v16)
  {
    v17 = v16;
    sub_2287CA800();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      sub_228798D5C(a1, v15);
      type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem(0);
      v20 = swift_allocObject();
      sub_228798D5C(v15, v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
      v21 = [v19 sectionSortOrder];
      *(v20 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank) = v21;
      v22 = AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(v19);
      result = sub_228798DC0(v15);
      goto LABEL_9;
    }
  }

  sub_2287CAA30();
  sub_228798D5C(a1, v13);
  v24 = sub_2287CAA40();
  v25 = sub_2287CB5F0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v26 = 136446466;
    v41[2] = v37;
    swift_getMetatypeMetadata();
    v27 = sub_2287CB250();
    v29 = sub_2287031D8(v27, v28, v41);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    sub_228798D5C(v13, v15);
    v30 = sub_2287CB250();
    v32 = v31;
    sub_228798DC0(v13);
    v33 = sub_2287031D8(v30, v32, v41);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_2286FF000, v24, v25, "[%{public}s]: unable to find feedItem for interaction: %s", v26, 0x16u);
    v34 = v36;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v34, -1, -1);
    MEMORY[0x22AABFD90](v26, -1, -1);
  }

  else
  {

    sub_228798DC0(v13);
  }

  result = (*(v38 + 8))(v9, v39);
  v22 = 0;
LABEL_9:
  *v40 = v22;
  return result;
}

uint64_t sub_2287984BC(void *a1)
{
  v5 = type metadata accessor for ModelTrainingEvent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  if (!a1)
  {
    goto LABEL_18;
  }

  v29 = v1;
  v30 = a1;
  v27 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache;
  v28 = a1;

  sub_2287CA660();

  v12 = v34;
  v13 = *(v34 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v31 = v9;
    v32 = v5;
    while (v14 < *(v12 + 16))
    {
      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v17 = *(v6 + 72);
      sub_228798D5C(v12 + v16 + v17 * v14, v11);
      if (v11[*(v5 + 24)] == 1)
      {
        sub_228798E1C(v11, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22871355C(0, *(v15 + 16) + 1, 1);
          v15 = v33;
        }

        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22871355C((v19 > 1), v20 + 1, 1);
          v15 = v33;
        }

        *(v15 + 16) = v20 + 1;
        v9 = v31;
        sub_228798E1C(v31, v15 + v16 + v20 * v17);
        v5 = v32;
      }

      else
      {
        sub_228798DC0(v11);
      }

      if (v13 == ++v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_14:

    v2 = *(v15 + 16);

    sub_2287CA660();

    v21 = *(v34 + 16);

    v3 = v21;
    v14 = v28;
    v22 = sub_2287CA580();
    v23 = sub_228798878(v22);

    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }
  }

  v24 = sub_2287CB920();
LABEL_16:

  v25 = v3 + v24;
  if (v25 > 0.0)
  {
    *&result = v2 / v25;
    return result;
  }

LABEL_18:
  *&result = 0.0;
  return result;
}

uint64_t sub_2287987BC(void *a1)
{

  *a1 = MEMORY[0x277D84F90];
  return result;
}

void sub_2287987F0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 32);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a3 + 24);
    v7 = *(a3 + 16);
    v8 = v6;
    v9 = v5 & 1;
    sub_228798CF8(v7, v6, v5 & 1);
    a1(&v7);
    sub_228798C94(v7, v8, v9);
  }
}

uint64_t sub_228798878(unint64_t a1)
{
  v29 = sub_2287C9700();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelTrainingEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v10 = 0;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v22 = a1;
    v23 = v9;
    v24 = a1 + 32;
    v25 = OBJC_IVAR____TtC18HealthPlatformCore31SummaryTabFeedPopulationManager_trainingAnalyticsCache;
    v11 = (v2 + 1);
LABEL_6:
    if (v27)
    {
      v12 = MEMORY[0x22AABF120](v10, v22);
    }

    else
    {
      if (v10 >= *(v26 + 16))
      {
        goto LABEL_19;
      }

      v12 = *(v24 + 8 * v10);
    }

    v13 = v12;
    v14 = __OFADD__(v10, 1);
    v15 = v10 + 1;
    if (!v14)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v9 = sub_2287CB920();
    if (!v9)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v28 = v15;

  sub_2287CA660();

  v16 = 0;
  v2 = v30;
  v17 = v30[2];
  do
  {
    if (v17 == v16)
    {

      v2 = &v31;
      sub_2287CBA90();
      a1 = *(v31 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      goto LABEL_5;
    }

    if (v16 >= v2[2])
    {
      __break(1u);
      goto LABEL_18;
    }

    sub_228798D5C(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16++, v8);
    v18 = [v13 objectID];
    v19 = [v18 URIRepresentation];

    sub_2287C96F0();
    a1 = sub_2287C96E0();
    (*v11)(v4, v29);
    sub_228798DC0(v8);
  }

  while ((a1 & 1) == 0);

LABEL_5:
  v10 = v28;
  if (v28 != v23)
  {
    goto LABEL_6;
  }

  return v31;
}

void sub_228798BB0(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  if (a6)
  {

    sub_22877E258(a1);
  }

  else
  {
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228798C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228798C94(void *a1, void *a2, char a3)
{
  if (a3)
  {

    sub_22877E258(a1);
  }

  else
  {
  }
}

id sub_228798CF8(void *a1, void *a2, char a3)
{
  if (a3)
  {

    return sub_22877E1E8(a1);
  }

  else
  {
    v5 = a1;

    return a2;
  }
}

void sub_228798D44(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_228798C94(a1, a2, a3 & 1);
  }
}

uint64_t sub_228798D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelTrainingEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228798DC0(uint64_t a1)
{
  v2 = type metadata accessor for ModelTrainingEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228798E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelTrainingEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228798E90(uint64_t *a1, void *a2, void *a3, int a4)
{
  LODWORD(v34) = a4;
  v7 = sub_2287C9D50();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v35 = sub_2287CA800();
  v14 = MEMORY[0x22AABDDF0]();
  v15 = sub_228799598(a1, a2, a3, v34);
  [v14 setPredicate_];

  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = sub_2287CB210();
  v18 = [v16 initWithKey:v17 ascending:0];

  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2287CCC50;
  *(v19 + 32) = v18;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v20 = v18;
  v21 = sub_2287CB390();

  [v14 setSortDescriptors_];

  v34 = v14;
  v22 = sub_2287CB7B0();
  v23 = v22;
  if (!(v22 >> 62))
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v24 = sub_2287CB920();
  if (!v24)
  {
    goto LABEL_16;
  }

LABEL_3:
  v37 = MEMORY[0x277D84F90];
  sub_22871338C(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v35 = v20;
    v25 = v37;
    if ((v23 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v24; ++i)
      {
        MEMORY[0x22AABF120](i, v23);
        sub_2287C9CF0();
        v37 = v25;
        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22871338C((v27 > 1), v28 + 1, 1);
          v25 = v37;
        }

        *(v25 + 16) = v28 + 1;
        (*(v8 + 32))(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v13, v7);
      }
    }

    else
    {
      v29 = 32;
      do
      {
        v30 = *(v23 + v29);
        sub_2287C9CF0();
        v37 = v25;
        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_22871338C((v31 > 1), v32 + 1, 1);
          v25 = v37;
        }

        *(v25 + 16) = v32 + 1;
        (*(v8 + 32))(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32, v11, v7);
        v29 += 8;
        --v24;
      }

      while (v24);
    }

    return v25;
  }

  __break(1u);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD000000000000022, 0x80000002287D3030);
  v36 = v24;
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CBB30();
  result = sub_2287CBB90();
  __break(1u);
  return result;
}

uint64_t HealthExperienceStoreFeedItemContext.previousFeedItems(predicate:)(void *a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v17 = MEMORY[0x277D84F90];
  v10 = *(v4 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  v11 = swift_allocObject();
  *(v11 + 16) = &v17;
  *(v11 + 24) = v5;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_228799530;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22877E1B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);

  sub_228745F34(a1, a2, a3, a4);

  [v10 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = v17;

    return v15;
  }

  return result;
}

uint64_t sub_228799530()
{
  v1 = *(v0 + 16);
  *v1 = sub_228798E90(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_228799598(uint64_t *a1, void *a2, void *a3, char a4)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_22870558C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2287CCFF0;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2287043F8();
  *(v7 + 64) = v9;
  strcpy((v7 + 32), "pluginPackage");
  *(v7 + 46) = -4864;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v4 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v10 = sub_2287C9A70();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_2287CB550();
  sub_228703640(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2287CCC50;
  *(v13 + 32) = v12;
  v44 = v13;
  if (a4)
  {
    if (a4 == 1)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2287CCFF0;
      sub_2287CA800();
      v15 = v12;

      v16 = sub_2287CA7C0();
      *(v14 + 56) = v8;
      *(v14 + 64) = v9;
      *(v14 + 32) = v16;
      *(v14 + 40) = v17;
      *(v14 + 96) = v8;
      *(v14 + 104) = v9;
      *(v14 + 72) = a1;
      *(v14 + 80) = a2;
      v18 = sub_2287CB550();
      MEMORY[0x22AABEA50]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2287CB3E0();
      }

      sub_2287CB420();
      if (a3 == 1)
      {
      }

      else
      {
        sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_2287CCFE0;
        *(v27 + 32) = a3;
        sub_228745F9C(a3);
        v28 = a3;
        MEMORY[0x22AABDEC0](v27);

        MEMORY[0x22AABEA50](v29);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2287CB3E0();
        }

        sub_2287CB420();
        sub_2287460B0(a3);
      }

      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2287CCFF0;
  sub_2287CA800();
  v20 = v12;

  v21 = sub_2287CA7C0();
  *(v19 + 56) = v8;
  *(v19 + 64) = v9;
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  v23 = a1[2];
  if (v23)
  {
    v24 = sub_2287239AC(a1[2], 0);
    v25 = sub_228729F74(&v43, v24 + 4, v23, a1);
    sub_22872CA2C(v43);
    if (v25 != v23)
    {
      __break(1u);
LABEL_10:
      if (a1 == 1)
      {
        v26 = v12;
      }

      else
      {
        sub_2287CA800();
        sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_2287CCFE0;
        *(v30 + 32) = a1;
        sub_228745F34(a1, a2, a3, 2);
        v31 = v12;
        sub_228745F34(a1, a2, a3, 2);
        MEMORY[0x22AABDEC0](v30);

        MEMORY[0x22AABEA50](v32);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2287CB3E0();
        }

        sub_2287CB420();
        sub_228746048(a1, a2, a3, 2);
      }

      goto LABEL_26;
    }
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_228703640(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v19 + 96) = v33;
  *(v19 + 104) = sub_22870444C();
  *(v19 + 72) = v24;
  v34 = sub_2287CB550();
  MEMORY[0x22AABEA50]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  if (a2 == 1)
  {
  }

  else
  {
    sub_228703640(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2287CCFE0;
    *(v35 + 32) = a2;
    sub_228745F9C(a2);
    v36 = a2;
    MEMORY[0x22AABDEC0](v35);

    MEMORY[0x22AABEA50](v37);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2287CB3E0();
    }

    sub_2287CB420();
    sub_2287460B0(a2);
  }

LABEL_26:
  v38 = sub_2287CB390();

  v39 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v39;
}