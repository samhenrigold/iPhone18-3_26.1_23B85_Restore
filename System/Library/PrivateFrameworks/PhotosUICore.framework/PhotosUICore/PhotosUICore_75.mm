uint64_t sub_1A45BA3EC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v32 - v4;
  v5 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 472))(KeyPath);

  v20 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  sub_1A3C5DBA4(v1 + v20, v11, &qword_1EB12AFE0, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1A3C42DA0(v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  }

  (*(v13 + 32))(v18, v11, v12);
  sub_1A5241104();
  sub_1A5241054();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v15, v12);
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_expirationInterval) < v23)
  {
    (*(v13 + 56))(v8, 1, 1, v12);
    sub_1A45B85B4(v8);
    v25 = sub_1A5246F04();
    v26 = sub_1A524D264();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1A3C1C000, v25, v26, "Previously fetched suggestions have expired", v27, 2u);
      MEMORY[0x1A590EEC0](v27, -1, -1);
    }

    v28 = sub_1A524CCB4();
    v29 = v32;
    (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    sub_1A3D4D930(0, 0, v29, &unk_1A534DEB8, v31);
  }

  return (v24)(v18, v12);
}

uint64_t sub_1A45BA89C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    *(v0 + 64) = 2;
    v5 = (*(*Strong + 400) + **(*Strong + 400));
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1A45BAA2C;

    return v5(v0 + 64);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A45BAA2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4341028, 0, 0);
}

uint64_t sub_1A45BAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5[7] = swift_task_alloc();
  sub_1A524CC54();
  v5[8] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45BAC1C, v7, v6);
}

uint64_t sub_1A45BAC1C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[6];
    v3 = v0[7];
    sub_1A5241134();
    v5 = sub_1A5241144();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = sub_1A45B85B4(v3);
    v7 = (*(*v2 + 200))(v6);
    LOBYTE(v4) = sub_1A45BD3E8(v4, v7);

    if (v4)
    {
    }

    else
    {
      v8 = v0[6];
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      sub_1A524BD24();
      sub_1A45C0DF0(0, &qword_1EB126120, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
      sub_1A52483D4();
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A45BAE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45BAEB4, v7, v6);
}

uint64_t sub_1A45BAEB4()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for GenerativeStoryPromptSuggestionManager(0);
    sub_1A5244F54();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45BAF5C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_1A5244924();
  v2[11] = swift_task_alloc();
  v3 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2[12] = swift_task_alloc();
  v4 = sub_1A5244A24();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_1A5245494();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_1A45C0E40(0, &qword_1EB124BD8, MEMORY[0x1E69C14D0], v3);
  v2[19] = swift_task_alloc();
  sub_1A45C0E40(0, &qword_1EB124BE0, MEMORY[0x1E69C14C8], v3);
  v2[20] = swift_task_alloc();
  v6 = sub_1A5241144();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = sub_1A52411C4();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = sub_1A524BFF4();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v9 = sub_1A5244984();
  v2[30] = v9;
  v2[31] = *(v9 - 8);
  v2[32] = swift_task_alloc();
  v10 = sub_1A524E5E4();
  v2[33] = v10;
  v2[34] = *(v10 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45BB368, 0, 0);
}

uint64_t sub_1A45BB368()
{
  v52 = v0;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 288) = ObjCClassFromMetadata;
  v2 = [ObjCClassFromMetadata sharedInstance];
  v3 = [v2 simulateSlowFetchForPromptSuggestion];

  if (!v3)
  {
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    *v9 = sub_1A524D474();
    (*(v10 + 104))(v9, *MEMORY[0x1E69E8018], v11);
    v12 = sub_1A524C024();
    (*(v10 + 8))(v9, v11);
    if (v12)
    {
      v13 = [*(v0 + 288) sharedInstance];
      v14 = [v13 promptSuggestionRefreshOnReload];

      if (v14)
      {
        v16 = *(v0 + 200);
        v15 = *(v0 + 208);
        v17 = *(v0 + 192);
        sub_1A52411B4();
        v18 = sub_1A52411A4();
        (*(v16 + 8))(v15, v17);
        v19 = 0;
        goto LABEL_76;
      }

      v21 = *(v0 + 176);
      v20 = *(v0 + 184);
      v22 = *(v0 + 168);
      v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v23 = sub_1A524C634();
      [v9 setDateFormat_];

      sub_1A5241134();
      v24 = sub_1A5241074();
      (*(v21 + 8))(v20, v22);
      v25 = [v9 stringFromDate_];

      v26 = sub_1A524C674();
      v28 = v27;

      v32 = HIBYTE(v28) & 0xF;
      v33 = v26 & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v28) & 0xF;
      }

      else
      {
        v34 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        if ((v28 & 0x1000000000000000) != 0)
        {
          sub_1A45BD8F8(v26, v28, 10);
        }

        if ((v28 & 0x2000000000000000) != 0)
        {
          v51[0] = v26;
          v51[1] = v28 & 0xFFFFFFFFFFFFFFLL;
          if (v26 == 43)
          {
            if (v32)
            {
              if (--v32)
              {
                v36 = 0;
                v44 = v51 + 1;
                while (1)
                {
                  v45 = *v44 - 48;
                  if (v45 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v36, 0xAuLL))
                  {
                    break;
                  }

                  v39 = __CFADD__(10 * v36, v45);
                  v36 = 10 * v36 + v45;
                  if (v39)
                  {
                    break;
                  }

                  ++v44;
                  if (!--v32)
                  {
                    goto LABEL_73;
                  }
                }
              }

              goto LABEL_72;
            }

LABEL_86:
            __break(1u);
            return MEMORY[0x1EEE2A1B8](v29, v33, v30, v31);
          }

          if (v26 != 45)
          {
            if (v32)
            {
              v36 = 0;
              v47 = v51;
              while (1)
              {
                v48 = *v47 - 48;
                if (v48 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v36, 0xAuLL))
                {
                  break;
                }

                v39 = __CFADD__(10 * v36, v48);
                v36 = 10 * v36 + v48;
                if (v39)
                {
                  break;
                }

                ++v47;
                if (!--v32)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }

          if (v32)
          {
            if (--v32)
            {
              v36 = 0;
              v40 = v51 + 1;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v36, 0xAuLL))
                {
                  break;
                }

                v39 = 10 * v36 >= v41;
                v36 = 10 * v36 - v41;
                if (!v39)
                {
                  break;
                }

                ++v40;
                if (!--v32)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }
        }

        else
        {
          if ((v26 & 0x1000000000000000) != 0)
          {
            v29 = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v29 = sub_1A524E4F4();
          }

          v35 = *v29;
          if (v35 == 43)
          {
            if (v33 >= 1)
            {
              v32 = v33 - 1;
              if (v33 != 1)
              {
                v36 = 0;
                if (v29)
                {
                  v42 = (v29 + 1);
                  while (1)
                  {
                    v43 = *v42 - 48;
                    if (v43 > 9)
                    {
                      goto LABEL_72;
                    }

                    if (!is_mul_ok(v36, 0xAuLL))
                    {
                      goto LABEL_72;
                    }

                    v39 = __CFADD__(10 * v36, v43);
                    v36 = 10 * v36 + v43;
                    if (v39)
                    {
                      goto LABEL_72;
                    }

                    ++v42;
                    if (!--v32)
                    {
                      goto LABEL_73;
                    }
                  }
                }

                goto LABEL_64;
              }

              goto LABEL_72;
            }

            goto LABEL_85;
          }

          if (v35 != 45)
          {
            if (v33)
            {
              v36 = 0;
              if (v29)
              {
                while (1)
                {
                  v46 = *v29 - 48;
                  if (v46 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v36, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v39 = __CFADD__(10 * v36, v46);
                  v36 = 10 * v36 + v46;
                  if (v39)
                  {
                    goto LABEL_72;
                  }

                  ++v29;
                  if (!--v33)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_64;
            }

LABEL_72:
            v36 = 0;
            LOBYTE(v32) = 1;
LABEL_73:
            v19 = v32;

            if (v19)
            {
              v18 = 0;
            }

            else
            {
              v18 = v36;
            }

LABEL_76:
            v49 = PXSharingFilterFromPhotoLibrary(*(*(v0 + 80) + 24));
            v50 = swift_task_alloc();
            *(v0 + 304) = v50;
            *v50 = v0;
            v50[1] = sub_1A45BC0F0;
            v31 = v19 & 1;
            v29 = 3;
            v33 = v49;
            v30 = v18;

            return MEMORY[0x1EEE2A1B8](v29, v33, v30, v31);
          }

          if (v33 >= 1)
          {
            v32 = v33 - 1;
            if (v33 != 1)
            {
              v36 = 0;
              if (v29)
              {
                v37 = (v29 + 1);
                while (1)
                {
                  v38 = *v37 - 48;
                  if (v38 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v36, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v39 = 10 * v36 >= v38;
                  v36 = 10 * v36 - v38;
                  if (!v39)
                  {
                    goto LABEL_72;
                  }

                  ++v37;
                  if (!--v32)
                  {
                    goto LABEL_73;
                  }
                }
              }

LABEL_64:
              LOBYTE(v32) = 0;
              goto LABEL_73;
            }

            goto LABEL_72;
          }

          __break(1u);
        }

        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    else
    {
      __break(1u);
    }

    v18 = 0;
    v19 = 1;
    goto LABEL_76;
  }

  v4 = sub_1A5246F04();
  v5 = sub_1A524D264();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Simulating slow fetch for prompt suggestions", v6, 2u);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  sub_1A524EBB4();
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_1A45BBA1C;

  return sub_1A3DCFAB0(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1A45BBA1C()
{
  v2 = *v1;

  v3 = v2[35];
  v4 = v2[34];
  v5 = v2[33];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A45C1030;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A45BBBB4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A45BBBB4()
{
  v45 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  *v1 = sub_1A524D474();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1A524C024();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
LABEL_74:

    v10 = 0;
    v11 = 1;
    goto LABEL_70;
  }

  v5 = [*(v0 + 288) sharedInstance];
  v6 = [v5 promptSuggestionRefreshOnReload];

  if (v6)
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    sub_1A52411B4();
    v10 = sub_1A52411A4();
    (*(v8 + 8))(v7, v9);
    v11 = 0;
    goto LABEL_70;
  }

  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 168);
  v1 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v15 = sub_1A524C634();
  [v1 setDateFormat_];

  sub_1A5241134();
  v16 = sub_1A5241074();
  (*(v13 + 8))(v12, v14);
  v17 = [v1 stringFromDate_];

  v18 = sub_1A524C674();
  v20 = v19;

  v24 = HIBYTE(v20) & 0xF;
  v25 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v26 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_74;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    sub_1A45BD8F8(v18, v20, 10);
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    v44[0] = v18;
    v44[1] = v20 & 0xFFFFFFFFFFFFFFLL;
    if (v18 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v28 = 0;
          v36 = v44 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              break;
            }

            v31 = __CFADD__(10 * v28, v37);
            v28 = 10 * v28 + v37;
            if (v31)
            {
              break;
            }

            ++v36;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_80:
      __break(1u);
      return MEMORY[0x1EEE2A1B8](v21, v25, v22, v23);
    }

    if (v18 != 45)
    {
      if (v24)
      {
        v28 = 0;
        v39 = v44;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            break;
          }

          v31 = __CFADD__(10 * v28, v40);
          v28 = 10 * v28 + v40;
          if (v31)
          {
            break;
          }

          ++v39;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v32 = v44 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            break;
          }

          v31 = 10 * v28 >= v33;
          v28 = 10 * v28 - v33;
          if (!v31)
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_78;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v21 = sub_1A524E4F4();
  }

  v27 = *v21;
  if (v27 == 43)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (v21)
        {
          v34 = (v21 + 1);
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_66;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              goto LABEL_66;
            }

            v31 = __CFADD__(10 * v28, v35);
            v28 = 10 * v28 + v35;
            if (v31)
            {
              goto LABEL_66;
            }

            ++v34;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_58;
      }

      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (v27 == 45)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (v21)
        {
          v29 = (v21 + 1);
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_66;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              goto LABEL_66;
            }

            v31 = 10 * v28 >= v30;
            v28 = 10 * v28 - v30;
            if (!v31)
            {
              goto LABEL_66;
            }

            ++v29;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v24) = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v25)
  {
    v28 = 0;
    if (v21)
    {
      while (1)
      {
        v38 = *v21 - 48;
        if (v38 > 9)
        {
          goto LABEL_66;
        }

        if (!is_mul_ok(v28, 0xAuLL))
        {
          goto LABEL_66;
        }

        v31 = __CFADD__(10 * v28, v38);
        v28 = 10 * v28 + v38;
        if (v31)
        {
          goto LABEL_66;
        }

        ++v21;
        if (!--v25)
        {
          goto LABEL_58;
        }
      }
    }

    goto LABEL_58;
  }

LABEL_66:
  v28 = 0;
  LOBYTE(v24) = 1;
LABEL_67:
  v11 = v24;

  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = v28;
  }

LABEL_70:
  v41 = PXSharingFilterFromPhotoLibrary(*(*(v0 + 80) + 24));
  v42 = swift_task_alloc();
  *(v0 + 304) = v42;
  *v42 = v0;
  v42[1] = sub_1A45BC0F0;
  v23 = v11 & 1;
  v21 = 3;
  v25 = v41;
  v22 = v10;

  return MEMORY[0x1EEE2A1B8](v21, v25, v22, v23);
}

uint64_t sub_1A45BC0F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {
    v5 = sub_1A45BC768;
  }

  else
  {
    v5 = sub_1A45BC208;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A45BC768()
{
  v14 = v0;
  v1 = *(v0 + 328);
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 328);
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315138;
    *(v0 + 64) = v5;
    v7 = v5;
    sub_1A3DBD9A0();
    v8 = sub_1A524C714();
    sub_1A3C2EF94(v8, v9, &v13);
  }

  v10 = *(v0 + 8);
  v11 = MEMORY[0x1E69E7CC0];

  return v10(v11);
}

void sub_1A45BC974(uint64_t a1@<X0>, _BYTE *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28 = a4;
  v29 = a5;
  v27 = sub_1A5244984();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45C0E40(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_1A5244A24();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1 && (sub_1A5244994(), v17) && (, sub_1A52448F4(), v18 = sub_1A524C7A4(), , v18 <= a3))
  {
    v19 = sub_1A52448D4();
    *a2 = 0;
  }

  else
  {
    v19 = sub_1A52448E4();
  }

  v20 = v19;
  v21 = sub_1A52449E4();
  v23 = v22;
  sub_1A5244A34();
  v24 = sub_1A5244A54();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, a1, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  (*(v8 + 16))(v10, v28, v27);
  sub_1A417DAEC(v21, v23, v20, v16, v13, v10, 0, 0, v29);
}

void sub_1A45BCC14(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for GenerativeStorySuggestion(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1A45BDE7C(0, v10, 0);
    v11 = v20;
    v12 = *(sub_1A5244A54() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A45BDE7C((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_1A417F008(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t GenerativeStoryPromptSuggestionManager.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest), *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest + 8));
  sub_1A41B617C(*(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider));

  sub_1A3C42DA0(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryPromptSuggestionManager.__deallocating_deinit()
{
  GenerativeStoryPromptSuggestionManager.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall GenerativeStoryPromptSuggestionManager.suggestionsDidGetInvalidated()()
{
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "suggestionsDidGetInvalidated, reloading", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_1A3D4D930(0, 0, v2, &unk_1A534DD10, v8);
}

uint64_t sub_1A45BD2B8(uint64_t a1)
{
  if (qword_1EB15EC90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB15EC98;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1A45C058C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

uint64_t static GenerativeStoryPromptSuggestionManager.managerForTest(for:fetchSuggestions:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GenerativeStoryPromptSuggestionManager(0);
  v6 = swift_allocObject();

  v7 = a1;
  sub_1A45BF774(v7, a2, a3);

  return v6;
}

uint64_t sub_1A45BD3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A417EFA4(v13, v10);
        sub_1A417EFA4(v14, v6);
        sub_1A45C0FE8(&qword_1EB1257A0, type metadata accessor for GenerativeStorySuggestion, &unk_1A531FCE8);
        v16 = sub_1A524C594();
        sub_1A45C0C04(v6, type metadata accessor for GenerativeStorySuggestion);
        sub_1A45C0C04(v10, type metadata accessor for GenerativeStorySuggestion);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1A45BD5C8(uint64_t a1)
{
  if (!qword_1EB1204E8)
  {
    sub_1A45C0E40(255, &qword_1EB120B90, sub_1A45BD660, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1A524E4E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1204E8);
    }
  }
}

void sub_1A45BD660(uint64_t a1)
{
  if (!qword_1EB120B98)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524CDB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120B98);
    }
  }
}

void *sub_1A45BD6FC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A45C0E40(0, &qword_1EB120350, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void sub_1A45BD8F8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v3 = a1;
  v4 = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void *sub_1A45BDE7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A45BDE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A45BDE9C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A45C0E40(0, &qword_1EB120350, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void sub_1A45BE098(uint64_t *a1)
{
  v2 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A45BF3FC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1A45BE140(v5);
  *a1 = v3;
}

void sub_1A45BE140(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GenerativeStorySuggestion(0);
        v6 = sub_1A524CAC4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A45BE4BC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1A45BE26C(0, v2, 1, a1);
  }
}

void sub_1A45BE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for GenerativeStorySuggestion(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v33 = *a4;
    v27 = v16;
    v20 = v33 + v16 * a3;
LABEL_5:
    v31 = v17;
    v32 = a3;
    v29 = v20;
    v30 = v19;
    v21 = v17;
    while (1)
    {
      sub_1A417EFA4(v20, v15);
      sub_1A417EFA4(v21, v11);
      sub_1A417DA38();
      v22 = sub_1A524C7A4();

      sub_1A417DA38();
      v23 = sub_1A524C7A4();

      sub_1A45C0C04(v11, type metadata accessor for GenerativeStorySuggestion);
      sub_1A45C0C04(v15, type metadata accessor for GenerativeStorySuggestion);
      if (v22 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v17 = v31 + v27;
        v19 = v30 - 1;
        v20 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1A417F008(v20, v34);
      swift_arrayInitWithTakeFrontToBack();
      sub_1A417F008(v24, v21);
      v21 += v18;
      v20 += v18;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A45BE4BC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a1;
  v119 = type metadata accessor for GenerativeStorySuggestion(0);
  v114 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v102 - v14;
  v115 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_95:
    a3 = *v106;
    if (!*v106)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_127:
      v17 = sub_1A3D86884(v17);
    }

    v122 = v17;
    v98 = *(v17 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v17[16 * v98];
        v100 = *&v17[16 * v98 + 24];
        sub_1A45BEDD0(*v115 + *(v114 + 72) * v99, *v115 + *(v114 + 72) * *&v17[16 * v98 + 16], *v115 + *(v114 + 72) * v100, a3);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v100 < v99)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A3D86884(v17);
        }

        if (v98 - 2 >= *(v17 + 2))
        {
          goto LABEL_121;
        }

        v101 = &v17[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v122 = v17;
        sub_1A3D867F8(v98 - 1);
        v17 = v122;
        v98 = *(v122 + 2);
        if (v98 <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_131;
    }

LABEL_105:

    return;
  }

  v103 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    if (v16 + 1 >= v15)
    {
      v35 = v16 + 1;
    }

    else
    {
      v116 = v15;
      v104 = v5;
      v20 = *v115;
      v21 = *(v114 + 72);
      v22 = *v115 + v21 * v19;
      v23 = v120;
      sub_1A417EFA4(v22, v120);
      v24 = v20 + v21 * v18;
      v25 = v18;
      v26 = v121;
      sub_1A417EFA4(v24, v121);
      sub_1A417DA38();
      a3 = v27;
      v113 = sub_1A524C7A4();

      sub_1A417DA38();
      v112 = sub_1A524C7A4();

      sub_1A45C0C04(v26, type metadata accessor for GenerativeStorySuggestion);
      sub_1A45C0C04(v23, type metadata accessor for GenerativeStorySuggestion);
      v105 = v25;
      v28 = v25 + 2;
      v117 = v21;
      v29 = v20 + v21 * (v25 + 2);
      v111 = v17;
      while (v116 != v28)
      {
        v30 = v113 < v112;
        v31 = v120;
        sub_1A417EFA4(v29, v120);
        v32 = v121;
        sub_1A417EFA4(v22, v121);
        sub_1A417DA38();
        a3 = sub_1A524C7A4();

        sub_1A417DA38();
        v33 = sub_1A524C7A4();

        sub_1A45C0C04(v32, type metadata accessor for GenerativeStorySuggestion);
        sub_1A45C0C04(v31, type metadata accessor for GenerativeStorySuggestion);
        v34 = v30 ^ (a3 >= v33);
        v17 = v111;
        ++v28;
        v29 += v117;
        v22 += v117;
        if ((v34 & 1) == 0)
        {
          v35 = v28 - 1;
          goto LABEL_11;
        }
      }

      v35 = v116;
LABEL_11:
      v5 = v104;
      v18 = v105;
      if (v113 < v112)
      {
        if (v35 < v105)
        {
          goto LABEL_124;
        }

        if (v105 < v35)
        {
          v36 = v117 * (v35 - 1);
          v37 = v35 * v117;
          v38 = v35;
          v39 = v105 * v117;
          do
          {
            if (v18 != --v35)
            {
              v40 = *v115;
              if (!*v115)
              {
                goto LABEL_130;
              }

              a3 = v40 + v39;
              sub_1A417F008(v40 + v39, v109);
              if (v39 < v36 || a3 >= v40 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1A417F008(v109, v40 + v36);
            }

            ++v18;
            v36 -= v117;
            v37 -= v117;
            v39 += v117;
          }

          while (v18 < v35);
          v17 = v111;
          v18 = v105;
          v35 = v38;
        }
      }
    }

    v41 = v115[1];
    if (v35 < v41)
    {
      if (__OFSUB__(v35, v18))
      {
        goto LABEL_123;
      }

      if (v35 - v18 < v103)
      {
        if (__OFADD__(v18, v103))
        {
          goto LABEL_125;
        }

        if (v18 + v103 >= v41)
        {
          v42 = v115[1];
        }

        else
        {
          v42 = v18 + v103;
        }

        if (v42 < v18)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v35 != v42)
        {
          break;
        }
      }
    }

    v16 = v35;
    if (v35 < v18)
    {
      goto LABEL_122;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1A3D8598C(0, *(v17 + 2) + 1, 1, v17);
    }

    a3 = *(v17 + 2);
    v43 = *(v17 + 3);
    v44 = a3 + 1;
    if (a3 >= v43 >> 1)
    {
      v17 = sub_1A3D8598C((v43 > 1), a3 + 1, 1, v17);
    }

    *(v17 + 2) = v44;
    v45 = &v17[16 * a3];
    *(v45 + 4) = v18;
    *(v45 + 5) = v16;
    v46 = *v106;
    if (!*v106)
    {
      goto LABEL_132;
    }

    if (a3)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v17 + 4);
          v49 = *(v17 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_54:
          if (v51)
          {
            goto LABEL_111;
          }

          v64 = &v17[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_114;
          }

          v70 = &v17[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_118;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v74 = &v17[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_68:
        if (v69)
        {
          goto LABEL_113;
        }

        v77 = &v17[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_116;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_75:
        a3 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
          goto LABEL_126;
        }

        if (!*v115)
        {
          goto LABEL_129;
        }

        v85 = *&v17[16 * a3 + 32];
        v86 = *&v17[16 * v47 + 40];
        sub_1A45BEDD0(*v115 + *(v114 + 72) * v85, *v115 + *(v114 + 72) * *&v17[16 * v47 + 32], *v115 + *(v114 + 72) * v86, v46);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v86 < v85)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A3D86884(v17);
        }

        if (a3 >= *(v17 + 2))
        {
          goto LABEL_108;
        }

        v87 = &v17[16 * a3];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        v122 = v17;
        sub_1A3D867F8(v47);
        v17 = v122;
        v44 = *(v122 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v17[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_109;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_110;
      }

      v59 = &v17[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_112;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_115;
      }

      if (v63 >= v55)
      {
        v81 = &v17[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_119;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v15 = v115[1];
    if (v16 >= v15)
    {
      goto LABEL_95;
    }
  }

  v111 = v17;
  v104 = v5;
  v105 = v18;
  v88 = *(v114 + 72);
  v89 = *v115 + v88 * (v35 - 1);
  v90 = -v88;
  v91 = v18 - v35;
  v117 = *v115;
  v107 = v88;
  v108 = v42;
  a3 = v117 + v35 * v88;
LABEL_86:
  v116 = v35;
  v110 = a3;
  v112 = v91;
  v113 = v89;
  while (1)
  {
    v92 = v120;
    sub_1A417EFA4(a3, v120);
    v93 = v121;
    sub_1A417EFA4(v89, v121);
    sub_1A417DA38();
    v94 = sub_1A524C7A4();

    sub_1A417DA38();
    v95 = sub_1A524C7A4();

    sub_1A45C0C04(v93, type metadata accessor for GenerativeStorySuggestion);
    sub_1A45C0C04(v92, type metadata accessor for GenerativeStorySuggestion);
    if (v94 >= v95)
    {
LABEL_85:
      v35 = v116 + 1;
      v16 = v108;
      v89 = v113 + v107;
      v91 = v112 - 1;
      a3 = v110 + v107;
      if (v116 + 1 != v108)
      {
        goto LABEL_86;
      }

      v5 = v104;
      v18 = v105;
      v17 = v111;
      if (v108 < v105)
      {
        goto LABEL_122;
      }

      goto LABEL_35;
    }

    if (!v117)
    {
      break;
    }

    v96 = v118;
    sub_1A417F008(a3, v118);
    swift_arrayInitWithTakeFrontToBack();
    sub_1A417F008(v96, v89);
    v89 += v90;
    a3 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_1A45BEDD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for GenerativeStorySuggestion(0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v38 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v51 = a1;
  v50 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v27 = v25;
      v41 = -v12;
      v42 = a1;
      while (2)
      {
        while (1)
        {
          v39 = v25;
          v28 = a2;
          v29 = a2 + v26;
          v43 = v28;
          v44 = v29;
          while (1)
          {
            if (v28 <= a1)
            {
              v51 = v28;
              v49 = v39;
              goto LABEL_59;
            }

            v40 = v25;
            v31 = a3 + v26;
            v32 = v27 + v26;
            v33 = v47;
            sub_1A417EFA4(v32, v47);
            v34 = v29;
            v35 = v48;
            sub_1A417EFA4(v34, v48);
            sub_1A417DA38();
            v45 = sub_1A524C7A4();

            sub_1A417DA38();
            v36 = sub_1A524C7A4();

            sub_1A45C0C04(v35, type metadata accessor for GenerativeStorySuggestion);
            sub_1A45C0C04(v33, type metadata accessor for GenerativeStorySuggestion);
            if (v45 < v36)
            {
              break;
            }

            v25 = v32;
            if (a3 < v27 || v31 >= v27)
            {
              a3 = v31;
              swift_arrayInitWithTakeFrontToBack();
              a1 = v42;
            }

            else
            {
              v37 = a3 == v27;
              a3 = v31;
              a1 = v42;
              if (!v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v27 = v32;
            v30 = v32 > a4;
            v28 = v43;
            v29 = v44;
            v26 = v41;
            if (!v30)
            {
              a2 = v43;
              goto LABEL_58;
            }
          }

          if (a3 < v43 || v31 >= v43)
          {
            break;
          }

          v37 = a3 == v43;
          a3 = v31;
          a2 = v44;
          v26 = v41;
          a1 = v42;
          v25 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v27 <= a4)
          {
            goto LABEL_58;
          }
        }

        a3 = v31;
        a2 = v44;
        swift_arrayInitWithTakeFrontToBack();
        v26 = v41;
        a1 = v42;
        v25 = v40;
        if (v27 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v51 = a2;
    v49 = v25;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v15;
    v49 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v44 = a3;
      do
      {
        v18 = v47;
        sub_1A417EFA4(a2, v47);
        v19 = a2;
        v20 = v48;
        sub_1A417EFA4(a4, v48);
        v21 = a4;
        sub_1A417DA38();
        v22 = sub_1A524C7A4();

        sub_1A417DA38();
        v23 = sub_1A524C7A4();

        sub_1A45C0C04(v20, type metadata accessor for GenerativeStorySuggestion);
        sub_1A45C0C04(v18, type metadata accessor for GenerativeStorySuggestion);
        if (v22 >= v23)
        {
          a4 = v21 + v12;
          if (a1 < v21 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v44;
            a2 = v19;
          }

          else
          {
            v24 = v44;
            a2 = v19;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v21 + v12;
        }

        else
        {
          a2 = v19 + v12;
          a4 = v21;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v44;
          }

          else
          {
            v24 = v44;
            if (a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v12;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v24);
    }
  }

LABEL_59:
  sub_1A45BF318(&v51, &v50, &v49);
}

uint64_t sub_1A45BF318(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for GenerativeStorySuggestion(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1A45BF410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1A3E99834(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_1A3C5DBA4(a1, v14, &qword_1EB12AFE0, v8);
  sub_1A3C5DBA4(a2, &v14[v16], &qword_1EB12AFE0, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A3C5DBA4(v14, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A45C0FE8(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
      sub_1A3C42DA0(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A45C0C04(v14, sub_1A3E99834);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A3C42DA0(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A45BF774(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
  v10 = sub_1A3C4A780();
  v11 = sub_1A5246F24();
  (*(*(v11 - 8) + 16))(v4 + v9, v10, v11);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider) = 1;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__initialSuggestions) = v8;
  sub_1A45BD5C8(0);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask) = v12;
  v13 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  v14 = sub_1A5241144();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  sub_1A5241604();
  *(v4 + 24) = a1;
  v15 = (v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest);
  *v15 = a2;
  v15[1] = a3;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = a1;
  v18 = [ObjCClassFromMetadata sharedInstance];
  v19 = [ObjCClassFromMetadata sharedInstance];
  v20 = [v19 preferMockSuggestionsData];

  v21 = [objc_opt_self() sharedState];
  LODWORD(ObjCClassFromMetadata) = [v21 isLaunchedForTesting];

  v22 = 0;
  if (ObjCClassFromMetadata)
  {
    sub_1A5245574();
    v22 = sub_1A5245564();
  }

  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_wantsMockSuggestions) = (v20 | v22) & 1;
  [v18 promptSuggestionCacheExpirationInMinutes];
  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_expirationInterval) = v23 * 60.0;
  [v18 promptSuggestionRefetchCooldown];
  v25 = v24;

  *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_refetchCooldownInterval) = v25;
  return v4;
}

void *sub_1A45BF9F4()
{
  v0 = sub_1A5244984();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v80 = v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = v57 - v4;
  v5 = type metadata accessor for GenerativeStorySuggestion(0);
  v78 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v57 - v9;
  v11 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1A5241284();
  v13 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5244944();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A5244904();
  v17 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45C0E40(0, &qword_1EB13E4F0, MEMORY[0x1E69C1080], v2);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = v57 - v20;
  sub_1A45C0E40(0, &qword_1EB13E4F8, MEMORY[0x1E69C1298], v2);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v68 = v57 - v22;
  v89 = sub_1A5244A24();
  v23 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v67 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A52411C4();
  v25 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A5244A54();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v64 = (v25 + 8);
  v88 = *MEMORY[0x1E69C1098];
  v87 = (v23 + 104);
  v63 = *MEMORY[0x1E69C1058];
  v62 = (v17 + 104);
  v61 = (v13 + 8);
  v60 = (v31 + 16);
  v59 = (v31 + 56);
  v58 = (v31 + 8);
  v32 = MEMORY[0x1E69E7CC0];
  v57[2] = "the last decade.";
  v57[1] = "y.suggestion.summary";
  v77 = v7;
  v73 = v10;
  v33 = v67;
  do
  {
    v85 = v32;
    v86 = v30;
    v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v35 = sub_1A524C634();

    v36 = [v34 initWithString_];

    v84 = v36;
    v37 = v65;
    sub_1A52411B4();
    v38 = sub_1A5241164();
    v81 = v39;
    v82 = v38;
    (*v64)(v37, v66);
    v83 = *v87;
    v83(v33, v88, v89);
    v40 = sub_1A5244EC4();
    (*(*(v40 - 8) + 56))(v68, 1, 1, v40);
    v41 = sub_1A52449D4();
    (*(*(v41 - 8) + 56))(v69, 1, 1, v41);
    (*v62)(v70, v63, v71);
    sub_1A5244934();
    v42 = v27;
    v43 = v74;
    sub_1A5241244();
    sub_1A52411F4();
    (*v61)(v43, v75);
    sub_1A5241104();
    v27 = v42;
    v32 = v85;
    v44 = v84;
    v45 = v73;
    sub_1A52449A4();
    v46 = sub_1A52449E4();
    v48 = v47;
    v83(v33, v88, v89);
    v49 = v79;
    (*v60)(v79, v29, v27);
    (*v59)(v49, 0, 1, v27);
    v50 = v44;
    v51 = v80;
    sub_1A5244954();
    v52 = v51;
    v53 = v77;
    sub_1A417DAEC(v46, v48, v50, v33, v49, v52, 0, 0, v45);
    sub_1A417EFA4(v45, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1A45BD6FC(0, v32[2] + 1, 1, v32);
    }

    v55 = v32[2];
    v54 = v32[3];
    if (v55 >= v54 >> 1)
    {
      v32 = sub_1A45BD6FC((v54 > 1), v55 + 1, 1, v32);
    }

    sub_1A45C0C04(v45, type metadata accessor for GenerativeStorySuggestion);
    (*v58)(v29, v27);
    v32[2] = v55 + 1;
    sub_1A417F008(v53, v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v55);
    v30 = v86 + 1;
  }

  while (v86 != 2);
  return v32;
}

uint64_t sub_1A45C0414()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A45BAB28(v4, v5, v6, v2, v3);
}

uint64_t type metadata accessor for GenerativeStoryPromptSuggestionManager(uint64_t a1)
{
  result = qword_1EB15EC48;
  if (!qword_1EB15EC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A45C04F8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A45BA87C(v3, v4, v5, v2);
}

id sub_1A45C058C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = [*a1 objectForKey_];
  if (!result)
  {
    type metadata accessor for GenerativeStoryPromptSuggestionManager(0);
    v7 = swift_allocObject();
    v8 = v4;
    sub_1A45BF774(v8, 0, 0);

    [v5 setObject:v7 forKey:v8];
    result = v7;
  }

  *a2 = result;
  return result;
}

unint64_t sub_1A45C0640()
{
  result = qword_1EB13E4E8;
  if (!qword_1EB13E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E4E8);
  }

  return result;
}

void sub_1A45C069C(uint64_t a1)
{
  sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    sub_1A45C0E40(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A5241614();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of GenerativeStoryPromptSuggestionManager.loadSuggestions(cache:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return v6(a1);
}

void sub_1A45C0978()
{
  sub_1A5245054();
  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v2 = sub_1A524C3D4();
  [v0 sendEvent:v1 withPayload:v2];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45C0C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45C0CD4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A45BAE1C(v4, v5, v6, v2, v3);
}

void sub_1A45C0D6C(BOOL *a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *a1 = 1;
}

void sub_1A45C0DF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A45C0E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45C0EA4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A45B93A4(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_6Tm_1(void (*a1)(void, __n128))
{
  swift_unknownObjectRelease();

  (a1)(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1A45C0FA4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask) = *(v0 + 24);
}

uint64_t sub_1A45C0FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A45C12C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXTipsHelper_Swift_presentedTipID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1A45C1484(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A45C14E0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXTipsHelper_Swift_tipPopover;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

void sub_1A45C16A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A3CB5580(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v9 = sub_1A3C5DCA4(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_1A45C24AC();
        v13 = v16;
      }

      sub_1A3D74B38(v9, v13, v14);
      *v4 = v13;
    }
  }
}

uint64_t sub_1A45C1798()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A45C1A8C;
  }

  else
  {
    (*(v2 + 288))();
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A45C18C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45C18C0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1A3CB4E58(v3, &qword_1EB128B68, MEMORY[0x1E6982B80]);
    v4 = v0[31];
    v5 = v0[32];

    return MEMORY[0x1EEE6DFA0](sub_1A45C1DCC, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
    v6 = sub_1A524E654();
    v0[38] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_1A45C1AA4;
    v9 = v0[18];

    return (v11)(v0 + 40, v9);
  }
}

uint64_t sub_1A45C1AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  *(v1 + 321) = *(v1 + 320);
  v5 = *(v1 + 280);
  v6 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1A45C1C50, v6, v5);
}

uint64_t sub_1A45C1C50()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1A45C1CB4, v1, v2);
}

uint64_t sub_1A45C1CB4()
{
  if (*(v0 + 321))
  {
    sub_1A48FC6C0(*(v0 + 88), *(v0 + 104), *(v0 + 112));
  }

  else
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 104);
    *(v0 + 40) = v2;
    v3 = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v1, v3);
    sub_1A48FD084((v0 + 16), 0, 0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v5 = sub_1A524CC44();
  *(v0 + 264) = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = sub_1A524CBC4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v0 + 272) = v6;
  *(v0 + 280) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A3CB849C, v6, v8);
}

uint64_t sub_1A45C1DCC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45C1EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v3 = qword_1EB1EB7D8;
  if (!qword_1EB1EB7D8)
  {
    goto LABEL_7;
  }

  v4 = sub_1A5247414();
  if (!*(v3 + 16))
  {
    swift_endAccess();

    goto LABEL_9;
  }

  sub_1A3C5DCA4(v4, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();

  sub_1A524CD94();
  swift_beginAccess();
  if (qword_1EB1EB7D8)
  {
    v8 = sub_1A5247414();
    sub_1A45C16A0(0, v8, v9);
  }

  swift_endAccess();

LABEL_9:
  swift_beginAccess();
  if (qword_1EB1EB798)
  {
    v10 = sub_1A5247414();
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1A3CB4FB4(v13, v10, v11);
  }

  return swift_endAccess();
}

id PXTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXTipsHelper.init()()
{
  v1 = &v0[OBJC_IVAR___PXTipsHelper_Swift_presentedTipID];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = swift_unknownObjectWeakInit();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PXTipsHelper(v2, v3);
  return objc_msgSendSuper2(&v5, sel_init);
}

id PXTipsHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXTipsHelper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1A45C2244@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A45C262C();
      v10 = v13;
    }

    sub_1A3C34460((*(v10 + 56) + 40 * v8), a3);
    sub_1A45C22F0(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_1A45C22F0(unint64_t a1, uint64_t a2, __n128 a3)
{
  if ((*(a2 + 64 + ((((a1 + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v3 = *(a2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v5;
    ++*(a2 + 36);
  }
}

void sub_1A45C24AC()
{
  v1 = v0;
  sub_1A3C926A0(0, &qword_1EB12B128, sub_1A3CB59B4);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A45C262C()
{
  v1 = v0;
  sub_1A3C926A0(0, &qword_1EB126448, sub_1A3CB4F50);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 16 * v16;
        v18 = (*(v2 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v21 = 40 * v16;
        sub_1A3C341C8(*(v2 + 56) + 40 * v16, v23);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        sub_1A3C34460(v23, *(v4 + 56) + v21);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A45C27E4()
{
  v1 = v0;
  sub_1A3C926A0(0, &unk_1EB12B130, sub_1A3C92704);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

uint64_t sub_1A45C297C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  sub_1A45C29CC(a1, v2);
  return v4;
}

uint64_t sub_1A45C29CC(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_cellSpecs;
  v6 = sub_1A5244084();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_zoomLevel;
  *(v2 + v7) = *sub_1A44DAFD8();
  v8 = (v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = (v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass) = 2;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation) = 1;
  sub_1A5241604();
  *(v2 + 16) = a1;
  v10 = 17.0;
  if (a2)
  {
    v10 = 0.0;
  }

  *(v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_verticalMargin) = v10;
  if (a1)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v19[4] = sub_1A45C3234;
    v19[5] = v11;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1A3C2E0D0;
    v19[3] = &block_descriptor_219;
    v12 = _Block_copy(v19);
    v13 = a1;

    [v13 setContainerSizeDidChange_];
    _Block_release(v12);
    [v13 containerSize];
    v15 = v14;
    v17 = v16;
    type metadata accessor for LemonadeSearchSpec(0);
    sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec, &unk_1A534E128);
    v20.top = 0.0;
    v20.left = 0.0;
    v20.bottom = 0.0;
    v20.right = 0.0;
    LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v17, v15), v20);
  }

  return v2;
}

double sub_1A45C2C2C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v12 = a3.n128_u64[0];
  v13 = a4.n128_f64[0];
  v10 = a1.n128_u64[0];
  v11 = a2.n128_u64[0];
  v5 = v4 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets;
  swift_beginAccess();
  *&v6.f64[0] = v10;
  *&v6.f64[1] = v11;
  *&v7.f64[0] = v12;
  v7.f64[1] = v13;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(*(v5 + 16), v7)))))
  {
    *v5 = v10;
    *(v5 + 8) = v11;
    result = v13;
    *(v5 + 16) = v12;
    *(v5 + 24) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 424))();
  }

  return result;
}

void sub_1A45C2D74(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 424))(v8);
  }
}

double sub_1A45C2E8C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 424))(v6);
  }

  return result;
}

double sub_1A45C2FC4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 424))(v6);
  }

  return result;
}

double sub_1A45C30FC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 424))(v6);
  }

  return result;
}

void sub_1A45C3234()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);
    if (v1)
    {
      v2 = type metadata accessor for LemonadeSearchSpec(0);
      v3 = sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec, &unk_1A534E128);
      v4 = v1;
      LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(v2, v3);
      v6 = v5;
      v8 = v7;
      [v4 containerSize];
      if (v6 != v10 || v8 != v9)
      {
        [v4 containerSize];
        v13 = v12;
        v15 = v14;
        LemonadeMutableContainerSizeSpecsProviderModel.containerSafeAreaInsets.getter(v2, v3);
        v17 = v16;
        v19 = v18;
        v22.top = v20;
        v22.left = v21;
        v22.bottom = v17;
        v22.right = v19;
        LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v15, v13), v22);
      }
    }
  }
}

uint64_t type metadata accessor for LemonadeSearchSpec(uint64_t a1)
{
  result = qword_1EB189BC0;
  if (!qword_1EB189BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A45C3424()
{
  swift_getKeyPath();
  (*(*v0 + 416))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1A45C34B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 192))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

__n128 sub_1A45C3550()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

uint64_t (*sub_1A45C35B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec, &unk_1A534E1F4);
  sub_1A52415F4();

  v4[7] = sub_1A45C33C4(v4);
  return sub_1A45C3704;
}

double sub_1A45C3770()
{
  swift_getKeyPath();
  (*(*v0 + 416))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize;
  swift_beginAccess();
  return *v1;
}

void sub_1A45C3890()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
}

uint64_t (*sub_1A45C38F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec, &unk_1A534E1F4);
  sub_1A52415F4();

  v4[7] = sub_1A45C3710(v4);
  return sub_1A45C3A40;
}

void sub_1A45C3AAC(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 416))();

  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A45C3B44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A45C3BA8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 296))(&v4);
}

uint64_t (*sub_1A45C3C28(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec, &unk_1A534E1F4);
  sub_1A52415F4();

  v4[7] = sub_1A45C3A4C(v4);
  return sub_1A45C3D78;
}

void sub_1A45C3DE4(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 416))();

  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A45C3E7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A45C3EE0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 344))(&v4);
}

uint64_t (*sub_1A45C3F60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec, &unk_1A534E1F4);
  sub_1A52415F4();

  v4[7] = sub_1A45C3D84(v4);
  return sub_1A45C40B0;
}

void sub_1A45C411C(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 416))();

  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A45C41B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A45C4218(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 392))(&v4);
}

void sub_1A45C4278()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A45C42D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_1A45C431C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 416))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec, &unk_1A534E1F4);
  sub_1A52415F4();

  v4[7] = sub_1A45C40BC(v4);
  return sub_1A45C446C;
}

uint64_t sub_1A45C45B8()
{
  sub_1A45C9BF4(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_cellSpecs, sub_1A3C39450);
  v1 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A45C46C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return sub_1A3E62A10;
}

void (*sub_1A45C47A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 208))();
  return sub_1A3E658B0;
}

void (*sub_1A45C48B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 304))();
  return sub_1A3E658B0;
}

void (*sub_1A45C49D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 352))();
  return sub_1A3E658B0;
}

void (*sub_1A45C4AE8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 400))();
  return sub_1A3E658B0;
}

double sub_1A45C4B80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(a1, WitnessTable);
  return result;
}

double sub_1A45C4BCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  LemonadeMutableContainerSizeSpecsProviderModel.containerSafeAreaInsets.getter(a1, WitnessTable);
  return result;
}

uint64_t sub_1A45C4D98@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_1A45C4DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A45C4E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for LemonadeSearchCollectionResultShelfView(0, a6, a7, a4);
  v16 = a8 + v15[13];
  sub_1A5247BA4();
  sub_1A524B694();
  *v16 = v20;
  *(v16 + 16) = v21;
  *(v16 + 32) = v22;
  v17 = v15[14];
  *(a8 + v17) = swift_getKeyPath();
  sub_1A45C4DC8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v18 = *(a6 - 8);
  (*(v18 + 16))(a8, a1, a6);
  *(a8 + v15[9]) = a2;
  *(a8 + v15[10]) = a4;
  *(a8 + v15[11]) = a3;
  *(swift_allocObject() + 16) = a5;
  type metadata accessor for LemonadeSearchSpec(0);
  sub_1A5247C74();
  return (*(v18 + 8))(a1, a6);
}

uint64_t sub_1A45C5010@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadeSearchSpec(0);
  v4 = swift_allocObject();
  v5 = v3;
  result = sub_1A45C29CC(v3, 0);
  *a1 = v4;
  return result;
}

uint64_t sub_1A45C506C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v97 = a2;
  v96 = sub_1A5242D14();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v72 - v5;
  v6 = *(a1 - 8);
  v91 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeSearchSpec(255);
  v10 = *(a1 + 24);
  v73 = *(a1 + 16);
  v11 = v73;
  v72 = v10;
  v13 = type metadata accessor for LemonadeShelf(255, v73, v10, v12);
  WitnessTable = swift_getWitnessTable();
  *&v110 = v9;
  *(&v110 + 1) = v13;
  *&v111 = &off_1F1718340;
  *(&v111 + 1) = WitnessTable;
  type metadata accessor for LemonadeSpecsProviderView(255, &v110);
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A44DA2F0(255);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  v15 = swift_getWitnessTable();
  v16 = sub_1A4010C90();
  v121 = v15;
  v122 = v16;
  v17 = MEMORY[0x1E697E858];
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x1E6980A18];
  v20 = sub_1A45C42D4(&qword_1EB122198, sub_1A44DA2F0, MEMORY[0x1E6980A18]);
  v119 = v18;
  v120 = v20;
  v98 = v17;
  v21 = swift_getWitnessTable();
  v92 = v19;
  v22 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334, v19);
  v117 = v21;
  v118 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24, v19);
  v115 = v23;
  v116 = v24;
  swift_getWitnessTable();
  sub_1A524B894();
  v25 = sub_1A5248804();
  v76 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v72 - v26;
  sub_1A45C5CC4(255);
  v28 = sub_1A5248804();
  v82 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v74 = &v72 - v29;
  v78 = type metadata accessor for LemonadeSearchCollectionResultShelfView.AdjustedClipShape(255, v11, v10, v30);
  v79 = swift_getWitnessTable();
  v81 = sub_1A5247FC4();
  v80 = sub_1A5248804();
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v75 = &v72 - v31;
  sub_1A45C5D8C(255);
  v85 = sub_1A5248804();
  v89 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v77 = &v72 - v32;
  v88 = sub_1A5248804();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v86 = &v72 - v35;
  v36 = a1;
  v37 = a1;
  v38 = v99;
  sub_1A45C5DF4(v37, v27);
  v39 = v90;
  (*(v6 + 16))(v90, v38, v36);
  v40 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v41 = swift_allocObject();
  v42 = v72;
  *(v41 + 16) = v73;
  *(v41 + 24) = v42;
  (*(v6 + 32))(v41 + v40, v39, v36);
  v113 = swift_getWitnessTable();
  v114 = MEMORY[0x1E697EBE0];
  v43 = swift_getWitnessTable();
  sub_1A45C5D20();
  v44 = MEMORY[0x1E697DA60];
  v45 = v74;
  sub_1A524ABE4();

  (*(v76 + 8))(v27, v25);
  v46 = v99;
  v47 = (v99 + *(v36 + 52));
  v48 = *(v47 + 4);
  v49 = v47[1];
  v110 = *v47;
  v111 = v49;
  v112 = v48;
  sub_1A45CBA60(0, &qword_1EB13E540, v44, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v110 = v108;
  v111 = v109;
  v50 = sub_1A45C42D4(&qword_1EB13E548, sub_1A45C5CC4, MEMORY[0x1E69802E0]);
  v106 = v43;
  v107 = v50;
  v51 = swift_getWitnessTable();
  v52 = v75;
  sub_1A524B194();
  (*(v82 + 8))(v45, v28);
  swift_getKeyPath();
  *&v110 = *(v46 + *(v36 + 40));

  v53 = swift_getWitnessTable();
  v104 = v51;
  v105 = v53;
  v54 = v80;
  v55 = swift_getWitnessTable();
  v56 = v77;
  sub_1A524A964();

  (*(v83 + 8))(v52, v54);
  sub_1A524A074();
  v57 = v93;
  sub_1A45C99DC(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v93);
  v58 = v95;
  v59 = v94;
  v60 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x1E69C21F8], v96);
  sub_1A5242D04();
  v61 = *(v58 + 8);
  v61(v59, v60);
  v61(v57, v60);
  v62 = sub_1A45C42D4(&qword_1EB13E550, sub_1A45C5D8C, v92);
  v102 = v55;
  v103 = v62;
  v63 = v85;
  v64 = swift_getWitnessTable();
  v65 = v84;
  sub_1A524B0D4();
  (*(v89 + 8))(v56, v63);
  v100 = v64;
  v101 = MEMORY[0x1E697E5D8];
  v66 = v88;
  swift_getWitnessTable();
  v67 = v87;
  v68 = *(v87 + 16);
  v69 = v86;
  v68(v86, v65, v66);
  v70 = *(v67 + 8);
  v70(v65, v66);
  v68(v97, v69, v66);
  return (v70)(v69, v66);
}

void sub_1A45C5CC4(uint64_t a1)
{
  if (!qword_1EB13E520)
  {
    sub_1A45C5D20();
    v1 = sub_1A5249BB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E520);
    }
  }
}

unint64_t sub_1A45C5D20()
{
  result = qword_1EB128AF0;
  if (!qword_1EB128AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128AF0);
  }

  return result;
}

uint64_t sub_1A45C5DF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for LemonadeSearchSpec(255);
  v4 = *(a1 + 24);
  v24 = *(a1 + 16);
  v23 = v4;
  v40[0] = v3;
  v40[1] = type metadata accessor for LemonadeShelf(255, v24, v4, v5);
  v40[2] = &off_1F1718340;
  v40[3] = swift_getWitnessTable();
  type metadata accessor for LemonadeSpecsProviderView(255, v40);
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A44DA2F0(255);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  v39 = sub_1A4010C90();
  v6 = swift_getWitnessTable();
  v7 = MEMORY[0x1E6980A18];
  v36 = v6;
  v37 = sub_1A45C42D4(&qword_1EB122198, sub_1A44DA2F0, MEMORY[0x1E6980A18]);
  v34 = swift_getWitnessTable();
  v35 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334, v7);
  v32 = swift_getWitnessTable();
  v33 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24, v7);
  swift_getWitnessTable();
  v8 = sub_1A524B894();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = sub_1A5248804();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v27 = v24;
  v28 = v23;
  v29 = v25;
  sub_1A5249574();
  sub_1A524B884();
  v19 = swift_getWitnessTable();
  sub_1A524B1A4();
  (*(v9 + 8))(v11, v8);
  v30 = v19;
  v31 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v20 = *(v13 + 16);
  v20(v18, v15, v12);
  v21 = *(v13 + 8);
  v21(v15, v12);
  v20(v26, v18, v12);
  return (v21)(v18, v12);
}

uint64_t sub_1A45C6294(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LemonadeSearchCollectionResultShelfView(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1A45CBA60(0, &qword_1EB13E540, MEMORY[0x1E697DA60], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A45C6358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248D54();
  *a1 = result;
  return result;
}

void sub_1A45C63B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v50 = a4;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeSearchSpec(255);
  v37 = v9;
  v11 = type metadata accessor for LemonadeShelf(255, a2, a3, v10);
  WitnessTable = swift_getWitnessTable();
  v59[0] = v9;
  v59[1] = v11;
  v59[2] = &off_1F1718340;
  v59[3] = WitnessTable;
  v12 = type metadata accessor for LemonadeSpecsProviderView(0, v59);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  v15 = sub_1A5248804();
  v41 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v33 - v16;
  sub_1A44DA2F0(255);
  v40 = sub_1A5248804();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v35 = &v33 - v17;
  sub_1A3E7D334(255);
  v44 = sub_1A5248804();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v33 - v18;
  sub_1A3D63A24(255);
  v47 = sub_1A5248804();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v45 = &v33 - v21;
  v23 = type metadata accessor for LemonadeSearchCollectionResultShelfView(0, a2, a3, v22);
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v58 = 4;
  v51 = a2;
  v52 = a3;
  v53 = a1;
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(v59, &v58, sub_1A45CBC60, v37, v11, &off_1F1718340, WitnessTable, v14);
  swift_getKeyPath();
  v59[0] = 0x4024000000000000;
  v24 = swift_getWitnessTable();
  v25 = v34;
  sub_1A524A964();

  (*(v38 + 8))(v14, v12);
  swift_getKeyPath();
  v59[0] = *(a1 + *(v23 + 44));
  v26 = sub_1A4010C90();
  v56 = v24;
  v57 = v26;

  v38 = MEMORY[0x1E697E858];
  v27 = swift_getWitnessTable();
  v28 = v35;
  sub_1A524A964();

  (*(v41 + 8))(v25, v15);
  swift_getKeyPath();
  v29 = *(*(*(a1 + *(v23 + 36)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v59[0] = v29;
  v30 = sub_1A45C42D4(&qword_1EB122198, sub_1A44DA2F0, MEMORY[0x1E6980A18]);
  v54 = v27;
  v55 = v30;
  v31 = v29;
  v32 = v40;
  swift_getWitnessTable();
  sub_1A524A964();

  (*(v43 + 8))(v28, v32);
  swift_getKeyPath();
  sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  sub_1A4654ADC();
  sub_1A3EED838();
  sub_1A52459A4();
}

uint64_t sub_1A45C6C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeShelf(0, v11, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - v20;
  (*(v8 + 16))(v10, a1, a2, v19);
  v23 = *(a1 + *(type metadata accessor for LemonadeSearchCollectionResultShelfView(0, a2, a3, v22) + 36));

  LODWORD(v8) = sub_1A3C5A374();
  v24 = sub_1A3C5A374();
  sub_1A3EFC060(v10, v23, v8, v24 & 1, 1, a2, a3, v17);
  swift_getWitnessTable();
  v25 = *(v15 + 16);
  v25(v21, v17, v14);
  v26 = *(v15 + 8);
  v26(v17, v14);
  v25(a4, v21, v14);
  return (v26)(v21, v14);
}

double sub_1A45C6EC4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1A524A314();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetHeight(v17);
  sub_1A524A304();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

double sub_1A45C6FB0@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1A45C6EC4(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1A45C7028(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A5247AC4();
  return sub_1A3E658B0;
}

uint64_t sub_1A45C70B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A45C7130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A45C71AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t sub_1A45C7214(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for LemonadeSearchSpec(0);

  return sub_1A5247C74();
}

uint64_t sub_1A45C7298()
{
  type metadata accessor for LemonadeSearchSpec(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_cellSpecs;
  v2 = sub_1A5244084();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_zoomLevel;
  *(v0 + v3) = *sub_1A44DAFD8();
  v4 = (v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSafeAreaInsets);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___containerSize);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___horizontalSizeClass) = 2;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___verticalSizeClass) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec___orientation) = 1;
  sub_1A5241604();
  *(v0 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore18LemonadeSearchSpec_verticalMargin) = 0;
  return v0;
}

void sub_1A45C73A4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v108 = a2;
  v113 = a1;
  v2 = (a1 - 8);
  v109 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v116 = v3;
  v114 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1A5247E04();
  v95 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v92 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = v71 - v8;
  v9 = type metadata accessor for LemonadeSearchSpec(255);
  v84 = v9;
  v10 = v2[4];
  v118 = v2[3];
  v115 = v10;
  v117 = v2[5];
  v11 = type metadata accessor for LemonadeSectionedFeedView(255, v118, v10, v117);
  v83 = v11;
  WitnessTable = swift_getWitnessTable();
  v140 = v9;
  v141 = v11;
  v142 = &off_1F1718340;
  v143 = WitnessTable;
  v12 = type metadata accessor for LemonadeSpecsProviderView(0, &v140);
  v97 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v71 - v13;
  sub_1A3DA3064();
  v15 = sub_1A5248804();
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v91 = v71 - v16;
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  v17 = sub_1A5248804();
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v94 = v71 - v18;
  sub_1A3E7D334(255);
  v19 = sub_1A5248804();
  v104 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v103 = v71 - v20;
  sub_1A3D63A24(255);
  v21 = sub_1A5248804();
  v107 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v105 = v71 - v22;
  sub_1A45C9968(255);
  sub_1A5248804();
  sub_1A45C999C(255);
  v23 = sub_1A5248804();
  v101 = v12;
  v24 = swift_getWitnessTable();
  v25 = sub_1A45C42D4(&qword_1EB127B20, sub_1A3DA3064, MEMORY[0x1E6980468]);
  v71[2] = v24;
  v138 = v24;
  v139 = v25;
  v100 = v15;
  v26 = swift_getWitnessTable();
  v27 = sub_1A4010C90();
  v71[3] = v26;
  v136 = v26;
  v137 = v27;
  v102 = v17;
  v28 = swift_getWitnessTable();
  v29 = MEMORY[0x1E6980A18];
  v30 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334, MEMORY[0x1E6980A18]);
  v71[5] = v28;
  v134 = v28;
  v135 = v30;
  v106 = v19;
  v31 = v14;
  v32 = swift_getWitnessTable();
  v33 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24, v29);
  v74 = v32;
  v132 = v32;
  v133 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1A45C42D4(&qword_1EB13E568, sub_1A45C9968, v29);
  v130 = v34;
  v131 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_1A45C42D4(&qword_1EB13E570, sub_1A45C999C, v29);
  v128 = v36;
  v129 = v37;
  v38 = swift_getWitnessTable();
  v140 = v21;
  v141 = v23;
  v142 = v34;
  v143 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v78 = v71 - v40;
  sub_1A45C5CC4(255);
  v81 = OpaqueTypeMetadata2;
  v41 = sub_1A5248804();
  v85 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v112 = v71 - v42;
  sub_1A410AB24(255);
  v43 = sub_1A5248804();
  v88 = *(v43 - 1);
  MEMORY[0x1EEE9AC00](v43);
  v86 = v71 - v44;
  v140 = v21;
  v141 = v23;
  v93 = v23;
  v79 = v34;
  v142 = v34;
  v143 = v38;
  v71[10] = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = MEMORY[0x1E69802E0];
  v47 = sub_1A45C42D4(&qword_1EB13E548, sub_1A45C5CC4, MEMORY[0x1E69802E0]);
  v71[1] = OpaqueTypeConformance2;
  v126 = OpaqueTypeConformance2;
  v127 = v47;
  v87 = v41;
  v48 = swift_getWitnessTable();
  v49 = sub_1A45C42D4(&unk_1EB127B30, sub_1A410AB24, v46);
  v71[8] = v48;
  v124 = v48;
  v125 = v49;
  v50 = swift_getWitnessTable();
  v140 = v43;
  v141 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v76 = *(v51 - 1);
  MEMORY[0x1EEE9AC00](v51);
  v73 = v71 - v52;
  v89 = v43;
  v140 = v43;
  v141 = v50;
  v75 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v77 = v51;
  v140 = v51;
  v141 = v53;
  v71[7] = v53;
  v72 = swift_getOpaqueTypeMetadata2();
  v71[9] = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71[4] = v71 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v71[6] = v71 - v56;
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  v57 = v111;
  sub_1A5247C84();
  v123 = 4;
  v119 = v118;
  v120 = v115;
  v121 = v117;
  v122 = v57;
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v140, &v123, sub_1A45C99D0, v84, v83, &off_1F1718340, WitnessTable, v31);
  v58 = v57;
  v59 = v90;
  sub_1A45C99DC(&qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBD0], v90);
  v60 = v95;
  v61 = v92;
  v62 = v99;
  (*(v95 + 104))(v92, *MEMORY[0x1E697DBA8], v99);
  LOBYTE(v24) = sub_1A5247DF4();
  v63 = *(v60 + 8);
  v63(v61, v62);
  v63(v59, v62);
  if (v24)
  {
    v64 = sub_1A524B404();
  }

  else
  {
    v64 = sub_1A524B414();
  }

  v140 = v64;
  sub_1A524A064();
  v65 = v91;
  v66 = v101;
  sub_1A524A8D4();

  (*(v97 + 8))(v31, v66);
  swift_getKeyPath();
  v140 = 0x4024000000000000;
  v67 = v94;
  v68 = v100;
  sub_1A524A964();

  (*(v96 + 8))(v65, v68);
  swift_getKeyPath();
  v140 = *(*(*(v58 + *(v113 + 44)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v69 = v140;
  v70 = v102;
  sub_1A524A964();

  (*(v98 + 8))(v67, v70);
  swift_getKeyPath();
  sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  sub_1A4654ADC();
  sub_1A3EED838();
  sub_1A52459A4();
}

uint64_t sub_1A45C88A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28 = a5;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeSectionedFeedView(0, v12, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  (*(v9 + 16))(v11, a1, a2, v20);
  v23 = *(a1 + *(type metadata accessor for LemonadeSearchCollectionResultFeedView(0, a2, a3, a4) + 44));

  sub_1A3F75F48(v11, v23, a2, a3, a4, v18);
  swift_getWitnessTable();
  v24 = *(v16 + 16);
  v24(v22, v18, v15);
  v25 = *(v16 + 8);
  v25(v18, v15);
  v24(v28, v22, v15);
  return (v25)(v22, v15);
}

uint64_t sub_1A45C8AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a5;
  v77 = a4;
  v76 = a3;
  v83 = a2;
  v84 = a1;
  v91 = a6;
  v72 = sub_1A5249A94();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v67 - v17;
  v82 = sub_1A5242D14();
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v67 - v20;
  v21 = sub_1A52440D4();
  v89 = *(v21 - 8);
  v90 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1A5243A24();
  v23 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LemonadeSearchSpec(255);
  v27 = type metadata accessor for LemonadeSectionedFeedView(255, a3, a4, a5);
  WitnessTable = swift_getWitnessTable();
  v102[0] = v26;
  v102[1] = v27;
  v102[2] = &off_1F1718340;
  v102[3] = WitnessTable;
  type metadata accessor for LemonadeSpecsProviderView(255, v102);
  sub_1A3DA3064();
  sub_1A5248804();
  sub_1A45CBA60(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E7D334(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  sub_1A45C9968(255);
  v29 = sub_1A5248804();
  v86 = *(v29 - 8);
  v87 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v67 - v30;
  swift_getKeyPath();
  v32 = v75;
  (*(v23 + 104))(v25, *MEMORY[0x1E69C2780], v75);
  v33 = swift_getWitnessTable();
  v34 = sub_1A45C42D4(&qword_1EB127B20, sub_1A3DA3064, MEMORY[0x1E6980468]);
  v100 = v33;
  v101 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_1A4010C90();
  v98 = v35;
  v99 = v36;
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x1E6980A18];
  v39 = sub_1A45C42D4(&qword_1EB127780, sub_1A3E7D334, MEMORY[0x1E6980A18]);
  v96 = v37;
  v97 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_1A45C42D4(&qword_1EB1278C0, sub_1A3D63A24, v38);
  v94 = v40;
  v95 = v41;
  v42 = swift_getWitnessTable();
  v85 = v31;
  sub_1A524A964();

  (*(v23 + 8))(v25, v32);
  swift_getKeyPath();
  type metadata accessor for LemonadeSearchCollectionResultFeedView(0, v76, v77, v78);
  v43 = v80;
  sub_1A45C99DC(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v80);
  v44 = v79;
  v45 = v81;
  v46 = v82;
  (*(v79 + 104))(v81, *MEMORY[0x1E69C21F8], v82);
  LOBYTE(v27) = sub_1A5242D04();
  v47 = *(v44 + 8);
  v47(v45, v46);
  v47(v43, v46);
  if ((v27 & 1) == 0)
  {
    goto LABEL_10;
  }

  v48 = v74;
  sub_1A3DC7F98(v74);
  v49 = v71;
  v50 = v73;
  v51 = v72;
  (*(v71 + 104))(v73, *MEMORY[0x1E697FF38], v72);
  (*(v49 + 56))(v50, 0, 1, v51);
  v52 = *(v69 + 48);
  v53 = v70;
  sub_1A3F188F8(v48, v70);
  sub_1A3F188F8(v50, v53 + v52);
  v54 = *(v49 + 48);
  if (v54(v53, 1, v51) == 1)
  {
    sub_1A45C9BF4(v50, sub_1A3DC7D88);
    sub_1A45C9BF4(v48, sub_1A3DC7D88);
    if (v54(v53 + v52, 1, v51) == 1)
    {
      sub_1A45C9BF4(v53, sub_1A3DC7D88);
LABEL_10:
      v56 = MEMORY[0x1E69C2978];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v55 = v68;
  sub_1A3F188F8(v53, v68);
  if (v54(v53 + v52, 1, v51) == 1)
  {
    sub_1A45C9BF4(v73, sub_1A3DC7D88);
    sub_1A45C9BF4(v74, sub_1A3DC7D88);
    (*(v49 + 8))(v55, v51);
LABEL_7:
    sub_1A45C9BF4(v53, sub_1A3DD0DCC);
    goto LABEL_8;
  }

  v57 = v67;
  (*(v49 + 32))(v67, v53 + v52, v51);
  sub_1A45C42D4(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v58 = sub_1A524C594();
  v59 = *(v49 + 8);
  v59(v57, v51);
  sub_1A45C9BF4(v73, sub_1A3DC7D88);
  sub_1A45C9BF4(v74, sub_1A3DC7D88);
  v59(v55, v51);
  sub_1A45C9BF4(v53, sub_1A3DC7D88);
  if (v58)
  {
    goto LABEL_10;
  }

LABEL_8:
  v56 = MEMORY[0x1E69C2988];
LABEL_11:
  v61 = v88;
  v60 = v89;
  v62 = v90;
  (*(v89 + 104))(v88, *v56, v90);
  v63 = sub_1A45C42D4(&qword_1EB13E568, sub_1A45C9968, MEMORY[0x1E6980A18]);
  v92 = v42;
  v93 = v63;
  v64 = v87;
  swift_getWitnessTable();
  v65 = v85;
  sub_1A524A964();

  (*(v60 + 8))(v61, v62);
  return (*(v86 + 8))(v65, v64);
}

uint64_t sub_1A45C9698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void sub_1A45C9768(void *a1@<X8>)
{
  sub_1A52482A4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1A45C9798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v15 = type metadata accessor for LemonadeSearchCollectionResultFeedView(0, a5, a6, a7);
  *(a8 + v15[11]) = a2;
  v16 = (a8 + v15[12]);
  *v16 = a3;
  v16[1] = a4;
  v17 = v15[13];
  *(a8 + v17) = swift_getKeyPath();
  v18 = MEMORY[0x1E697DCB8];
  sub_1A45C4DC8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v19 = v15[14];
  *(a8 + v19) = swift_getKeyPath();
  sub_1A45C4DC8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v18);
  swift_storeEnumTagMultiPayload();
  v20 = v15[15];
  *(a8 + v20) = swift_getKeyPath();
  sub_1A45C4DC8(0, &unk_1EB128A40, sub_1A3DC7D88, v18);
  swift_storeEnumTagMultiPayload();
  return sub_1A45C7214(sub_1A45C7298, 0);
}

uint64_t sub_1A45C99DC@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45C4DC8(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A45CBBD4(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A45C9BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45C9C78(CGFloat *a1)
{
  type metadata accessor for LemonadeSearchCollectionResultFeedView(0, v1[2], v1[3], v1[4]);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A5247C84();
  v7 = type metadata accessor for LemonadeSearchSpec(0);
  v8 = sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec, &unk_1A534E128);
  LemonadeMutableContainerSizeSpecsProviderModel.containerSize.getter(v7, v8);
  v10 = v9;
  v12 = v11;

  v13.top = v3;
  v13.left = v4;
  v13.bottom = v5;
  v13.right = v6;
  LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v12, v10), v13);
}

void sub_1A45C9E08(unint64_t *a1)
{
  type metadata accessor for LemonadeSearchCollectionResultFeedView(0, v1[2], v1[3], v1[4]);
  v3 = *a1;
  v4 = a1[1];
  sub_1A45C4DC8(0, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A5247C84();
  v5 = type metadata accessor for LemonadeSearchSpec(0);
  v6 = sub_1A45C42D4(&qword_1EB13E510, type metadata accessor for LemonadeSearchSpec, &unk_1A534E128);
  LemonadeMutableContainerSizeSpecsProviderModel.containerSafeAreaInsets.getter(v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15.top = v8;
  v15.left = v10;
  v15.bottom = v12;
  v15.right = v14;
  LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v4, v3), v15);
}

uint64_t objectdestroy_37Tm()
{
  v1 = v0[2];
  v2 = type metadata accessor for LemonadeSearchCollectionResultFeedView(0, v1, v0[3], v0[4]);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 40) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  if (*&v3[v2[12]])
  {
  }

  v4 = v2[13];
  sub_1A45C4DC8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5247E04();
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  else
  {
  }

  v6 = v2[14];
  sub_1A45C4DC8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5242D14();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  else
  {
  }

  v8 = v2[15];
  sub_1A45C4DC8(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5249A94();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v3[v8], 1, v9))
    {
      (*(v10 + 8))(&v3[v8], v9);
    }
  }

  else
  {
  }

  v11 = &v3[v2[16]];
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A45C4DC8(0, &qword_1EB127278, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A45CA368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchCollectionResultFeedView(0, v2[2], v2[3], v2[4]);
  v5 = *(*(v4 - 8) + 80);
  result = sub_1A5247EA4();
  if ((result & 1) == 0)
  {
    v7 = (v2 + *(v4 + 48) + ((v5 + 40) & ~v5));
    if (*v7)
    {
      return (*v7)(a2);
    }
  }

  return result;
}

uint64_t sub_1A45CA414(uint64_t a1)
{
  result = sub_1A45C42D4(&qword_1EB13E518, type metadata accessor for LemonadeSearchSpec, &unk_1A534E1F4);
  *(a1 + 8) = result;
  return result;
}

void sub_1A45CA504(uint64_t a1)
{
  sub_1A3C39450(319);
  if (v1 <= 0x3F)
  {
    sub_1A5241614();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A45CA620(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      sub_1A52429E4();
      if (v3 <= 0x3F)
      {
        sub_1A5244244();
        if (v4 <= 0x3F)
        {
          sub_1A45C4DC8(319, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
          if (v5 <= 0x3F)
          {
            sub_1A45CBA60(319, &qword_1EB13E540, MEMORY[0x1E697DA60], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1A45C4DC8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A45CA7A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v5 = *(v32 - 8);
  v6 = *(v5 + 84);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v31 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_1A5242D14();
  v13 = 8;
  v14 = *(v5 + 64);
  if (*(*(v12 - 8) + 64) > 8uLL)
  {
    v13 = *(*(v12 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v8 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 15;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v18 = *(*(v12 - 8) + 80) & 0xF8 | 7;
  v19 = v13 + ((((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + ((v17 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16) + 48) & ~v18) + 1;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_12;
  }

  v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_31;
      }

LABEL_12:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

LABEL_20:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (v19)
      {
        if (v19 > 3)
        {
          LODWORD(v19) = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v19) = *a1;
          }
        }

        else if (v19 == 1)
        {
          LODWORD(v19) = *a1;
        }

        else
        {
          LODWORD(v19) = *a1;
        }
      }

      return v11 + (v19 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_20;
    }
  }

LABEL_31:
  if (v6 == v11)
  {
    v25 = v32;
    v26 = *(v5 + 48);
    v27 = a1;
    v28 = v6;
LABEL_38:

    return v26(v27, v28, v25);
  }

  v29 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) != 0)
  {
    v26 = *(v8 + 48);
    v27 = ((v17 + ((((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v16);
    v28 = v9;
    v25 = v31;
    goto LABEL_38;
  }

  v30 = *v29;
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  return (v30 + 1);
}

void sub_1A45CAB04(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v39 = *(a4 + 16);
  v5 = *(v39 - 8);
  v38 = v5;
  v6 = *(v5 + 84);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v37 = v7;
  v8 = *(v7 - 8);
  v40 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(sub_1A5242D14() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v5 + 64);
  v16 = *(v8 + 80) & 0xF8;
  v17 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 15;
  v19 = (*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = v14 + ((v19 + v20 + ((v18 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v17) + 48) & ~v20) + 1;
  if (a3 <= v12)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v12 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v12 < a2)
  {
    v24 = ~v12 + a2;
    if (v21 >= 4)
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_20;
      }

      goto LABEL_58;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v21)
    {
      v28 = v24 & ~(-1 << (8 * v21));
      bzero(v22, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *v22 = v28;
          if (v23 > 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          *v22 = v24;
          if (v23 > 1)
          {
LABEL_20:
            if (v23 == 2)
            {
              *&v22[v21] = v25;
            }

            else
            {
              *&v22[v21] = v25;
            }

            return;
          }
        }

LABEL_58:
        if (v23)
        {
          v22[v21] = v25;
        }

        return;
      }

      *v22 = v28;
      v22[2] = BYTE2(v28);
    }

    if (v23 > 1)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *&v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&v22[v21] = 0;
  }

  else if (v23)
  {
    v22[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v6 == v12)
  {
    v29 = v39;
    v30 = *(v38 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v6;
LABEL_43:

    v30(v31, v32, v33, v29);
    return;
  }

  v34 = (&v22[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v35 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v35 = a2 - 1;
    }

    *v34 = v35;
    return;
  }

  v31 = ((v18 + ((((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v17);
  if (v10 >= a2)
  {
    v30 = *(v40 + 56);
    v32 = a2;
    v33 = v9;
    v29 = v37;
    goto LABEL_43;
  }

  if (v19 != -8)
  {
    v36 = ((v18 + ((((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v17);
    bzero(v31, (v19 + 8));
    *v36 = ~v10 + a2;
  }
}

void sub_1A45CAF2C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      sub_1A45C4DC8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A45C4DC8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A45C4DC8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A45C4DC8(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A45C4DC8(319, &qword_1EB13E578, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E697DA80]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A45CB11C(int *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1A5247E04() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v42 = v7;
  v8 = *(sub_1A5242D14() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v41 = v9;
  v10 = *(sub_1A5249A94() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v14 = *(v13 - 8);
  v15 = *(v4 + 64);
  if (*(v14 + 84) <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = v12;
  }

  else
  {
    v18 = v12 + 1;
  }

  if (v18 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 80) & 0xF8 | 7;
  v21 = *(v8 + 80) & 0xF8 | 7;
  v22 = v42 + v21 + 1;
  v23 = *(v10 + 80) & 0xF8 | 7;
  v24 = v41 + v23 + 1;
  v25 = *(v14 + 80) & 0xF8 | 7;
  v26 = v19 + v25 + 1;
  if (v17 >= a2)
  {
    goto LABEL_40;
  }

  v27 = ((*(*(v13 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((v24 + ((v22 + ((v20 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20)) & ~v21)) & ~v23)) & ~v25) + 8;
  v28 = v27 & 0xFFFFFFF8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v17 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v32 = *(a1 + v27);
      if (!v32)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v32 = *(a1 + v27);
      if (!v32)
      {
        goto LABEL_40;
      }
    }

LABEL_37:
    v34 = v32 - 1;
    if (v28)
    {
      v34 = 0;
      v35 = *a1;
    }

    else
    {
      v35 = 0;
    }

    return v17 + (v35 | v34) + 1;
  }

  if (v31)
  {
    v32 = *(a1 + v27);
    if (v32)
    {
      goto LABEL_37;
    }
  }

LABEL_40:
  if (v5 == v17)
  {
    v36 = *(v4 + 48);

    return v36(a1, v5, v40);
  }

  else
  {
    v37 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) != 0)
    {
      v39 = *(v14 + 48);

      return v39((v26 + ((v24 + ((v22 + ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 16) & ~v20)) & ~v21)) & ~v23)) & ~v25);
    }

    else
    {
      v38 = *v37;
      if (v38 >= 0xFFFFFFFF)
      {
        LODWORD(v38) = -1;
      }

      return (v38 + 1);
    }
  }
}

void sub_1A45CB568(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v45 = *(a4 + 16);
  v4 = *(v45 - 8);
  v44 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_1A5247E04() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(sub_1A5242D14() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_1A5249A94() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  sub_1A45C4DC8(0, &qword_1EB13E538, type metadata accessor for LemonadeSearchSpec, MEMORY[0x1E6981E90]);
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = *(v4 + 64);
  v18 = *(v14 + 64);
  if (*(v14 + 84) <= 0x7FFFFFFEu)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v5 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v5;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v6 + 80) & 0xF8 | 7;
  v23 = *(v8 + 80) & 0xF8 | 7;
  v24 = v7 + v23 + 1;
  v25 = *(v10 + 80) & 0xF8 | 7;
  v26 = v9 + v25 + 1;
  if (v11)
  {
    v27 = v12;
  }

  else
  {
    v27 = v12 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v16 & 0xF8 | 7;
  v29 = v27 + v28 + 1;
  v30 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = ((v29 + ((v26 + ((v24 + ((v22 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22)) & ~v23)) & ~v25)) & ~v28) + v30;
  if (v21 >= a3)
  {
    v34 = 0;
  }

  else
  {
    if (v31)
    {
      v32 = 2;
    }

    else
    {
      v32 = a3 - v21 + 1;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  if (a2 > v21)
  {
    if (v31)
    {
      v35 = 1;
    }

    else
    {
      v35 = a2 - v21;
    }

    if (v31)
    {
      v36 = ~v21 + a2;
      bzero(a1, v31);
      *a1 = v36;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v31) = v35;
      }

      else
      {
        *(a1 + v31) = v35;
      }
    }

    else if (v34)
    {
      *(a1 + v31) = v35;
    }

    return;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    *(a1 + v31) = 0;
LABEL_51:
    if (!a2)
    {
      return;
    }

    goto LABEL_52;
  }

  if (!v34)
  {
    goto LABEL_51;
  }

  *(a1 + v31) = 0;
  if (!a2)
  {
    return;
  }

LABEL_52:
  if (v5 == v21)
  {
    v37 = *(v44 + 56);

    v37(a1, a2, v5, v45);
  }

  else
  {
    v38 = ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v20 & 0x80000000) != 0)
    {
      v40 = ((v29 + ((v26 + ((v24 + ((((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + v22 + 16) & ~v22)) & ~v23)) & ~v25)) & ~v28);
      if (v19 >= a2)
      {
        v43 = *(v15 + 56);

        v43(v40, a2);
      }

      else if (v30)
      {
        v41 = ~v19 + a2;
        v42 = v40;
        bzero(v40, v30);
        *v42 = v41;
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v39 = a2 - 1;
      }

      *v38 = v39;
    }
  }
}

uint64_t sub_1A45CBA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A45CBA60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A45CBB08(uint64_t a1, uint64_t a2)
{
  sub_1A3DC7D88(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45CBB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45CBBD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A45C4DC8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A45CBC9C()
{
  v1 = [v0 actionType];
  v2 = sub_1A524C674();
  v4 = v3;

  v5 = sub_1A45CC334(v2, v4);

  if ((v5 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = [v0 actionType];
    v7 = sub_1A524C674();
    v9 = v8;
    if (sub_1A524C674() == v7 && v10 == v9)
    {
      goto LABEL_10;
    }

    v12 = sub_1A524EAB4();

    if (v12)
    {
LABEL_7:

LABEL_11:

      v14 = 0x100000000;
LABEL_12:
      v15 = [v0 collectionList];
      v16 = [objc_allocWithZone(PXSortCollectionAction) initWithCollection:v15 sortType:v14 | v5];

      v17 = [v0 undoManager];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1A45CC480;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_220;
      v19 = _Block_copy(aBlock);

      [v16 executeWithUndoManager:v17 completionHandler:v19];
      _Block_release(v19);

      return;
    }

    if (sub_1A524C674() == v7 && v13 == v9)
    {
LABEL_10:

      goto LABEL_11;
    }

    v20 = sub_1A524EAB4();

    if (v20)
    {
      goto LABEL_7;
    }

    if (sub_1A524C674() == v7 && v21 == v9)
    {

LABEL_19:
      v14 = 0;
      goto LABEL_12;
    }

    v22 = sub_1A524EAB4();

    if (v22)
    {

      goto LABEL_19;
    }
  }

  sub_1A524E6E4();
  __break(1u);
}

BOOL sub_1A45CC0B4(id a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = [a1 customSortKey];
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1A45CC334(a2, a3);
  if ((v7 & 0x100000000) != 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = sub_1A524C634();
    v13.receiver = ObjCClassFromMetadata;
    v13.super_class = &OBJC_METACLASS____TtC12PhotosUICore43PXPhotoKitCollectionListSortActionPerformer;
    v12 = objc_msgSendSuper2(&v13, sel_menuActionStateForCollectionList_actionType_, a1, v11);

    return v12;
  }

  else
  {
    return a1 && v6 == v7;
  }
}

id sub_1A45CC300(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PXPhotoKitCollectionListSortActionPerformer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A45CC334(uint64_t a1, uint64_t a2)
{
  if (sub_1A524C674() == a1 && v4 == a2)
  {

    goto LABEL_19;
  }

  v6 = sub_1A524EAB4();

  if (v6)
  {
LABEL_19:
    v13 = 0;
    v14 = 5;
    return v14 | ((v13 & 1) << 32);
  }

  if (sub_1A524C674() == a1 && v7 == a2)
  {

    goto LABEL_22;
  }

  v9 = sub_1A524EAB4();

  if (v9)
  {
LABEL_22:
    v14 = 0;
    v13 = 0;
    return v14 | ((v13 & 1) << 32);
  }

  if (sub_1A524C674() == a1 && v10 == a2)
  {

    v13 = 0;
    v14 = 2;
  }

  else
  {
    v12 = sub_1A524EAB4();

    v13 = v12 ^ 1;
    v14 = 2;
    if ((v12 & 1) == 0)
    {
      v14 = 0;
    }
  }

  return v14 | ((v13 & 1) << 32);
}

void sub_1A45CC480(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1 & 1;
    *(v6 + 32) = a2;
    aBlock[4] = sub_1A45CC744;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_7_1;
    _Block_copy(aBlock);
    v7 = v5;
    v8 = a2;

    px_dispatch_on_main_queue();
  }
}

uint64_t sub_1A45CC590(uint64_t a1, uint64_t a2)
{
  if (sub_1A524C674() == a1 && v4 == a2)
  {
    goto LABEL_7;
  }

  v6 = sub_1A524EAB4();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1A524C674() == a1 && v11 == a2)
  {
    goto LABEL_7;
  }

  v13 = sub_1A524EAB4();

  if (v13)
  {
    goto LABEL_8;
  }

  if (sub_1A524C674() == a1 && v14 == a2)
  {
LABEL_7:
  }

  else
  {
    v15 = sub_1A524EAB4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_8:
  v7 = sub_1A524C634();
  v8 = PXLocalizedString(v7);

  v9 = sub_1A524C674();
  return v9;
}

void sub_1A45CC744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v3 = sub_1A5240B74();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v1 completeBackgroundTaskWithSuccess:v2 error:?];
}

void *sub_1A45CC7C4()
{
  if (*(v0 + 48))
  {
    v1 = [objc_allocWithZone(PXPlacesMapFetchResultViewController) initWithInitialCoordinateRegion:*(v0 + 65) enableNearbyAssetsAffordance:0 wantsMapOptionsView:*(v0 + 72) photoLibrary:*(v0 + 80) mapFetchResultController:{*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24)}];
  }

  else
  {
    v1 = [objc_allocWithZone(PXPlacesMapFetchResultViewController) initWithInitialCenterCoordinate:*(v0 + 65) enableNearbyAssetsAffordance:0 wantsMapOptionsView:*(v0 + 72) photoLibrary:*(v0 + 80) mapFetchResultController:{*(v0 + 32), *(v0 + 40)}];
  }

  v2 = v1;
  [v1 setPhotosViewConfigurationPresentationDelegate_];
  if ((*(v0 + 64) & 1) == 0)
  {
    v3 = [objc_opt_self() systemWhiteColor];
    [v2 setNavigationBarTintColor_];
  }

  return v2;
}

uint64_t sub_1A45CC8E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = result;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3 & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 65) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a14;
  return result;
}

unint64_t sub_1A45CC924()
{
  result = qword_1EB1257F0;
  if (!qword_1EB1257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257F0);
  }

  return result;
}

uint64_t sub_1A45CC97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45CCB1C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A45CC9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A45CCB1C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A45CCA44(uint64_t a1)
{
  sub_1A45CCB1C();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A45CCA6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A45CCAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A45CCB1C()
{
  result = qword_1EB1257E8;
  if (!qword_1EB1257E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257E8);
  }

  return result;
}

id GenerativeStoryCreationView.photoLibrary.getter(double a1)
{
  v2 = *(v1 + *(type metadata accessor for GenerativeStoryCreationView(0) + 40));

  return v2;
}

uint64_t type metadata accessor for GenerativeStoryCreationView(uint64_t a1)
{
  result = qword_1EB1813A0;
  if (!qword_1EB1813A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A45CCBF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697BF90];
  sub_1A45D5148(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for GenerativeStoryCreationView(0);
  sub_1A45D50C8(v1 + *(v11 + 44), v10, &unk_1EB128A60, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5248284();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A45CCE1C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for GenerativeStoryCreationView(0) + 48);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1A45CCF70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  sub_1A45D5148(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for GenerativeStoryCreationView(0);
  sub_1A45D50C8(v1 + *(v11 + 52), v10, &qword_1EB128AA0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t GenerativeStoryCreationView.init(configuration:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = type metadata accessor for GenerativeStoryCreationView(0);
  v8 = a2 + v7[6];
  LOBYTE(v39) = 1;
  sub_1A524B694();
  v9 = v42;
  *v8 = v41;
  *(v8 + 8) = v9;
  v10 = a2 + v7[7];
  v39 = 0;
  v40 = 1;
  sub_1A45D4F78(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  v11 = v42;
  v12 = v43;
  *v10 = v41;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  v13 = a2 + v7[8];
  v39 = 0;
  v40 = 1;
  sub_1A524B694();
  v14 = v42;
  v15 = v43;
  *v13 = v41;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15;
  v16 = a2 + v7[9];
  LOBYTE(v39) = 1;
  sub_1A524B694();
  v17 = v42;
  *v16 = v41;
  *(v16 + 8) = v17;
  v18 = v7[11];
  *(a2 + v18) = swift_getKeyPath();
  v19 = MEMORY[0x1E697DCB8];
  sub_1A45D5148(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v20 = a2 + v7[12];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v7[13];
  *(a2 + v21) = swift_getKeyPath();
  sub_1A45D5148(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v19);
  swift_storeEnumTagMultiPayload();
  v22 = a2 + v7[14];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v7[15];
  *(a2 + v23) = swift_getKeyPath();
  sub_1A45D5148(0, &qword_1EB128A90, MEMORY[0x1E69C2948], v19);
  swift_storeEnumTagMultiPayload();
  v24 = v7[16];
  *(a2 + v24) = swift_getKeyPath();
  sub_1A45D5148(0, &qword_1EB128A80, sub_1A3D63A58, v19);
  swift_storeEnumTagMultiPayload();
  v25 = a2 + v7[17];
  sub_1A4222EDC();
  sub_1A5247C44();
  v26 = v42;
  v27 = v43;
  *v25 = v41;
  *(v25 + 8) = v26;
  *(v25 + 16) = v27;
  v28 = a2 + v7[18];
  LOBYTE(v39) = 0;
  sub_1A524B694();
  v29 = v42;
  *v28 = v41;
  *(v28 + 8) = v29;
  v30 = v7[19];
  v31 = sub_1A3C4A780();
  v32 = sub_1A5246F24();
  (*(*(v32 - 8) + 16))(a2 + v30, v31, v32);
  v33 = *a1;
  *(a2 + v7[10]) = *a1;
  sub_1A45D5888(a1, a2 + v7[5], type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  sub_1A45D5888(a1, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  v34 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v35 = swift_allocObject();
  sub_1A45D3A40(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  v36 = v33;
  sub_1A5247C74();
  return sub_1A45D56A4(a1, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
}

void sub_1A45CD668(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  sub_1A45D5888(a1, v5, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
  sub_1A450A7BC(v5);
}

void sub_1A45CD718()
{
  v2 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1A45CD668(v3);
}

void GenerativeStoryCreationView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v72 = sub_1A52497B4();
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5247E44();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE240(0, v5);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for GenerativeStoryCreationView(0);
  v9 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v86 = v10;
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE318(0);
  v87 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v85 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF75C(0);
  v76 = v14;
  v75 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5242D14();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  sub_1A45CCF70(&v66 - v21);
  (*(v17 + 104))(v19, *MEMORY[0x1E69C2210], v16);
  v23 = sub_1A5242D04();
  v24 = *(v17 + 8);
  v24(v19, v16);
  v24(v22, v16);
  if (v23)
  {
    v25 = sub_1A524B414();
  }

  else
  {
    v25 = sub_1A524B404();
  }

  v26 = v25;
  v27 = sub_1A524BC74();
  v28 = v85;
  *v85 = v27;
  v28[1] = v29;
  sub_1A45D51AC(0, &qword_1EB13E6C0, sub_1A45CE630, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  v31 = v28 + *(v30 + 44);
  v70 = v26;
  sub_1A45CFD48(v26, v2, v31);
  v32 = sub_1A524BD24();
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v83 = v33;
  v34 = sub_1A5247C84();
  v35 = (*(*v90 + 384))(v34);

  sub_1A45CE4FC(0);
  v37 = v28 + *(v36 + 36);
  *v37 = v32;
  v37[8] = v35;
  v68 = type metadata accessor for GenerativeStoryCreationView;
  sub_1A45D5888(v2, v11, type metadata accessor for GenerativeStoryCreationView);
  v38 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v84 = *(v9 + 80);
  v39 = swift_allocObject();
  v67 = type metadata accessor for GenerativeStoryCreationView;
  sub_1A45D3A40(v11, v39 + v38, type metadata accessor for GenerativeStoryCreationView);
  sub_1A45CE4C0(0);
  v41 = (v28 + *(v40 + 36));
  *v41 = sub_1A45D3AA8;
  v41[1] = v39;
  v41[2] = 0;
  v41[3] = 0;
  sub_1A45D5888(v2, v11, type metadata accessor for GenerativeStoryCreationView);
  v42 = swift_allocObject();
  sub_1A45D3A40(v11, v42 + v38, type metadata accessor for GenerativeStoryCreationView);
  sub_1A45CE484(0);
  v44 = (v28 + *(v43 + 36));
  *v44 = 0;
  v44[1] = 0;
  v44[2] = sub_1A45D4034;
  v44[3] = v42;
  sub_1A5247C84();
  v45 = v69;

  PXDisplayCollectionDetailedCountsMake();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1A45CE3DC(0);
  v55 = v28 + *(v54 + 36);
  *v55 = v47;
  v55[8] = v49;
  *(v55 + 2) = v51;
  v55[24] = v53;
  sub_1A5247C84();
  v56 = v90;
  sub_1A45CF6B4(0, &qword_1EB13E590, sub_1A45CE3DC, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
  sub_1A4A53AA0(v56, v28 + *(v57 + 36));
  sub_1A5247C84();
  v66 = v90;
  v58 = v2 + *(v45 + 36);
  v59 = *v58;
  v60 = *(v58 + 8);
  LOBYTE(v88) = v59;
  v89 = v60;
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v61 = v90;
  LOBYTE(v51) = v91;
  v69 = v2;
  sub_1A45D5888(v2, v11, v68);
  v62 = swift_allocObject();
  sub_1A45D3A40(v11, v62 + v38, v67);
  sub_1A42B1F08(v66, v61, *(&v61 + 1), v51, sub_1A45D41CC, v62, &v90);
  sub_1A45CE34C(0);
  v64 = v28 + *(v63 + 36);
  v65 = v91;
  *v64 = v90;
  *(v64 + 1) = v65;
  *(v64 + 2) = v92;
  *(v64 + 6) = v93;
  sub_1A47E510C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45CE240(uint64_t a1, double a2)
{
  if (!qword_1EB122F78)
  {
    sub_1A5247E44();
    sub_1A45D5704(&qword_1EB1248A8, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
    sub_1A45D5704(&unk_1EB1248B0, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
    v2 = sub_1A5248904();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122F78);
    }
  }
}

void sub_1A45CE34C(uint64_t a1)
{
  if (!qword_1EB13E588)
  {
    sub_1A45CF6B4(255, &qword_1EB13E590, sub_1A45CE3DC, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E588);
    }
  }
}

void sub_1A45CE418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45CE4FC(uint64_t a1)
{
  if (!qword_1EB13E5B0)
  {
    sub_1A45CE59C(255);
    sub_1A45D4B40(255, &qword_1EB122E30, sub_1A3DB95B8, &type metadata for GenerativeStoryCreationViewModel.ViewState, MEMORY[0x1E697F540]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E5B0);
    }
  }
}

void sub_1A45CE59C(uint64_t a1)
{
  if (!qword_1EB13E5B8)
  {
    sub_1A45CE630(255);
    sub_1A45D5704(&qword_1EB13E660, sub_1A45CE630, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E5B8);
    }
  }
}

void sub_1A45CE664(uint64_t a1)
{
  if (!qword_1EB13E5C8)
  {
    sub_1A45CE740(255);
    sub_1A45CE9DC(255);
    sub_1A45CEA4C(255);
    sub_1A45D5148(255, &qword_1EB1215E0, sub_1A45CED50, MEMORY[0x1E69E6720]);
    sub_1A45CF044(255);
    sub_1A45CF728(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13E5C8);
    }
  }
}

void sub_1A45CE77C(uint64_t a1)
{
  if (!qword_1EB13E5D8)
  {
    sub_1A45CE810(255);
    sub_1A45CEEB4(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E5D8);
    }
  }
}

void sub_1A45CE810(uint64_t a1)
{
  if (!qword_1EB123D88)
  {
    sub_1A45CE870(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123D88);
    }
  }
}

void sub_1A45CE870(uint64_t a1)
{
  if (!qword_1EB122F58)
  {
    sub_1A45D5148(255, &qword_1EB125580, type metadata accessor for GenerativeStoryBackgroundView, MEMORY[0x1E69E6720]);
    sub_1A45CE904();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122F58);
    }
  }
}

unint64_t sub_1A45CE904()
{
  result = qword_1EB125578;
  if (!qword_1EB125578)
  {
    sub_1A45D5148(255, &qword_1EB125580, type metadata accessor for GenerativeStoryBackgroundView, MEMORY[0x1E69E6720]);
    sub_1A45D5704(&qword_1EB125588, type metadata accessor for GenerativeStoryBackgroundView, &unk_1A5341870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125578);
  }

  return result;
}

void sub_1A45CEB80(uint64_t a1)
{
  if (!qword_1EB121D40)
  {
    sub_1A45CEC50(255);
    sub_1A45CFB34(&qword_1EB124188, sub_1A45CEC50, sub_1A45CECD4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D40);
    }
  }
}

void sub_1A45CEC50(uint64_t a1)
{
  if (!qword_1EB124180)
  {
    sub_1A45D4F78(255, &qword_1EB122230, MEMORY[0x1E69815C0], MEMORY[0x1E697FEC0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124180);
    }
  }
}

unint64_t sub_1A45CECD4()
{
  result = qword_1EB122238;
  if (!qword_1EB122238)
  {
    sub_1A45D4F78(255, &qword_1EB122230, MEMORY[0x1E69815C0], MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122238);
  }

  return result;
}

void sub_1A45CED50(uint64_t a1)
{
  if (!qword_1EB1215E8)
  {
    sub_1A45CEDEC(255);
    sub_1A45CFB34(&qword_1EB123460, sub_1A45CEDEC, sub_1A45CEF08);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1215E8);
    }
  }
}

void sub_1A45CEE28(uint64_t a1)
{
  if (!qword_1EB1238C8)
  {
    sub_1A45CEEB4(255, &qword_1EB124198, &type metadata for GenerativeStoryPromptInputViewKeyboardLightEffectsGradient, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1238C8);
    }
  }
}

void sub_1A45CEEB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A45CEF44()
{
  result = qword_1EB1241A0;
  if (!qword_1EB1241A0)
  {
    sub_1A45CEEB4(255, &qword_1EB124198, &type metadata for GenerativeStoryPromptInputViewKeyboardLightEffectsGradient, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A45CEFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241A0);
  }

  return result;
}

unint64_t sub_1A45CEFF0()
{
  result = qword_1EB125018;
  if (!qword_1EB125018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125018);
  }

  return result;
}

void sub_1A45CF044(uint64_t a1)
{
  if (!qword_1EB13E5F0)
  {
    sub_1A45CF2BC(255, &qword_1EB13E5F8, sub_1A45CF0DC, &qword_1EB13E650, sub_1A45CF0DC);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E5F0);
    }
  }
}

void sub_1A45CF110(uint64_t a1)
{
  if (!qword_1EB13E608)
  {
    sub_1A45CF198(255);
    sub_1A45CF408(255);
    sub_1A45CF43C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13E608);
    }
  }
}

void sub_1A45CF1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A45D4F78(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    v7 = v6;
    sub_1A45CF24C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A45CF2BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A45D5704(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1A524B894();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A45CF3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A45CF43C(uint64_t a1)
{
  if (!qword_1EB13E648)
  {
    sub_1A45CF4DC(255);
    sub_1A45D4B40(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E648);
    }
  }
}

void sub_1A45CF4DC(uint64_t a1)
{
  if (!qword_1EB123070)
  {
    sub_1A45CF570(255);
    sub_1A45CEEB4(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123070);
    }
  }
}

void sub_1A45CF624(uint64_t a1)
{
  if (!qword_1EB1238E8)
  {
    sub_1A45CF6B4(255, &unk_1EB1241E0, type metadata accessor for GenerativeStoryPromptInputView, type metadata accessor for AppleMusicPrivacyTipModifier);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1238E8);
    }
  }
}

void sub_1A45CF6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45CF75C(uint64_t a1)
{
  if (!qword_1EB13E668)
  {
    sub_1A45CE318(255);
    sub_1A45CE240(255, v1);
    sub_1A45CF830();
    sub_1A45D5704(&qword_1EB122F80, sub_1A45CE240, MEMORY[0x1E697E8D0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E668);
    }
  }
}

unint64_t sub_1A45CF830()
{
  result = qword_1EB13E670;
  if (!qword_1EB13E670)
  {
    sub_1A45CE318(255);
    sub_1A45CF8E0();
    sub_1A45D5704(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker, &unk_1A5362FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E670);
  }

  return result;
}

unint64_t sub_1A45CF8E0()
{
  result = qword_1EB13E678;
  if (!qword_1EB13E678)
  {
    sub_1A45CE34C(255);
    sub_1A45CF960();
    sub_1A42B0F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E678);
  }

  return result;
}

unint64_t sub_1A45CF960()
{
  result = qword_1EB13E680;
  if (!qword_1EB13E680)
  {
    sub_1A45CF6B4(255, &qword_1EB13E590, sub_1A45CE3DC, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier);
    sub_1A45CFA40();
    sub_1A45D5704(&qword_1EB13E6B8, type metadata accessor for GenerativeStoryShortMemoryWarningNavigationViewModifier, &unk_1A537F850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E680);
  }

  return result;
}

unint64_t sub_1A45CFA40()
{
  result = qword_1EB13E688;
  if (!qword_1EB13E688)
  {
    sub_1A45CE3DC(255);
    sub_1A45CFB34(&qword_1EB13E690, sub_1A45CE484, sub_1A45CFAF8);
    sub_1A45CFCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E688);
  }

  return result;
}

uint64_t sub_1A45CFB34(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45CFBB4()
{
  result = qword_1EB13E6A0;
  if (!qword_1EB13E6A0)
  {
    sub_1A45CE4FC(255);
    sub_1A45D5704(&qword_1EB13E6A8, sub_1A45CE59C, MEMORY[0x1E6981880]);
    sub_1A45CFC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6A0);
  }

  return result;
}

unint64_t sub_1A45CFC64()
{
  result = qword_1EB122E38;
  if (!qword_1EB122E38)
  {
    sub_1A45D4B40(255, &qword_1EB122E30, sub_1A3DB95B8, &type metadata for GenerativeStoryCreationViewModel.ViewState, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E38);
  }

  return result;
}

unint64_t sub_1A45CFCF4()
{
  result = qword_1EB13E6B0;
  if (!qword_1EB13E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6B0);
  }

  return result;
}

uint64_t sub_1A45CFD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v187 = a1;
  v185 = a3;
  v183 = type metadata accessor for GenerativeStoryInternalMenuView(0);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v170 = (&v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF728(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v186 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v157 - v8;
  sub_1A45CF2BC(0, &qword_1EB13E5F8, sub_1A45CF0DC, &qword_1EB13E650, sub_1A45CF0DC);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v179 = (&v157 - v10);
  sub_1A45CF044(0);
  v178 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v157 - v16;
  sub_1A45CEA80(0);
  *&v177 = v17;
  v176 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v169 = (&v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CEB08(0);
  v166 = v19;
  v165 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CEAD4(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v168 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v167 = &v157 - v24;
  sub_1A45CEA4C(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v181 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v157 - v28;
  sub_1A45CE418(0, &qword_1EB13E6D8, type metadata accessor for GenerativeStoryProgressAnimationView, MEMORY[0x1E6981148], MEMORY[0x1E697F948]);
  v161 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v164 = (&v157 - v30);
  v163 = type metadata accessor for GenerativeStoryProgressAnimationView(0);
  MEMORY[0x1EEE9AC00](v163);
  v160 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CEA10(0);
  v175 = v32;
  v174 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE9DC(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v189 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v193 = &v157 - v37;
  v158 = sub_1A5242D14();
  v38 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v40 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v157 - v42;
  sub_1A45CE810(0);
  v45 = v44 - 8;
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CE77C(0);
  v172 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v157 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CE740(0);
  v173 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v188 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v157 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v191 = &v157 - v57;
  v58 = sub_1A524BC74();
  v60 = v59;
  v61 = v47 + *(v45 + 44);
  sub_1A45D13CC(v61);
  sub_1A45CE870(0);
  v63 = (v61 + *(v62 + 36));
  *v63 = v58;
  v63[1] = v60;
  *v47 = v187;

  v171 = sub_1A524BD24();
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  *&v187 = v64;
  v65 = a2;
  v66 = sub_1A5247C84();
  v67 = (*(*v205 + 384))(v66);

  if (v67 <= 1u)
  {
    if (v67)
    {
      v68 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v67 == 2)
  {
LABEL_5:
    v68 = 1;
    goto LABEL_7;
  }

  sub_1A45CCF70(v43);
  v69 = v158;
  (*(v38 + 104))(v40, *MEMORY[0x1E69C2210], v158);
  v68 = sub_1A5242D04();
  v70 = *(v38 + 8);
  v70(v40, v69);
  v70(v43, v69);
LABEL_7:
  sub_1A45D3A40(v47, v50, sub_1A45CE810);
  v71 = &v50[*(v172 + 36)];
  *v71 = v171;
  v71[8] = v68 & 1;
  v72 = sub_1A5248874();
  v73 = sub_1A524A064();
  sub_1A45D3A40(v50, v55, sub_1A45CE77C);
  v74 = &v55[*(v173 + 36)];
  *v74 = v72;
  v74[8] = v73;
  sub_1A45D3A40(v55, v191, sub_1A45CE740);
  v75 = sub_1A5247C84();
  LOBYTE(v72) = (*(*v205 + 384))(v75);

  v76 = 1;
  v77 = sub_1A40B1BE4(v72, 1);
  v78 = v190;
  if (v77)
  {
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v80 = [ObjCClassFromMetadata sharedInstance];
    v81 = [v80 isMemoryCreationTextAnimationEnabled];

    if ((v81 & 1) != 0 || (v82 = [ObjCClassFromMetadata sharedInstance], v83 = objc_msgSend(v82, sel_isMemoryCreationImageAnimationEnabled), v82, v83))
    {
      sub_1A5247C84();
      v84 = v160;
      sub_1A405D878(v205, v160);
      sub_1A45D5888(v84, v164, type metadata accessor for GenerativeStoryProgressAnimationView);
      swift_storeEnumTagMultiPayload();
      sub_1A45D5704(&qword_1EB125248, type metadata accessor for GenerativeStoryProgressAnimationView, &unk_1A53153F0);
      v85 = v162;
      sub_1A5249744();
      sub_1A45D56A4(v84, type metadata accessor for GenerativeStoryProgressAnimationView);
    }

    else
    {
      *&v205 = sub_1A524B434();
      v86 = sub_1A524A374();
      v88 = v87;
      v90 = v89;
      v92 = v91;

      v93 = v164;
      *v164 = v86;
      v93[1] = v88;
      *(v93 + 16) = v90 & 1;
      v93[3] = v92;
      swift_storeEnumTagMultiPayload();
      sub_1A45D5704(&qword_1EB125248, type metadata accessor for GenerativeStoryProgressAnimationView, &unk_1A53153F0);
      v85 = v162;
      sub_1A5249744();
    }

    sub_1A45D3A40(v85, v193, sub_1A45CEA10);
    v76 = 0;
  }

  v94 = 1;
  (*(v174 + 56))(v193, v76, 1, v175);
  v95 = sub_1A5247C84();
  v96 = (*(*v205 + 384))(v95);

  v97 = 1;
  if ((v96 - 1) <= 1u)
  {
    sub_1A5247C84();
    v98 = v205;
    v99 = v65 + *(type metadata accessor for GenerativeStoryCreationView(0) + 32);
    v100 = *v99;
    v101 = *(v99 + 8);
    v102 = *(v99 + 16);
    v200 = v100;
    LOBYTE(v201) = v101;
    v202 = v102;
    sub_1A45D4EFC(0);
    sub_1A524B6C4();
    sub_1A3DB960C(v98, v205, *(&v205 + 1), v206, SBYTE8(v206), &v200);
    if (sub_1A45D1948())
    {
      *&v205 = sub_1A524B404();
      v103 = sub_1A524BD24();
      MEMORY[0x1EEE9AC00](v103);
      sub_1A45CEC50(0);
      sub_1A45CFB34(&qword_1EB124188, sub_1A45CEC50, sub_1A45CECD4);
      v104 = v159;
      sub_1A524B184();

      v105 = sub_1A5248874();
      v106 = sub_1A524A064();
      sub_1A45CEB44(0);
      v108 = v104 + *(v107 + 36);
      *v108 = v105;
      *(v108 + 8) = v106;
      v109 = v166;
      *(v104 + *(v166 + 36)) = 0;
      v110 = v167;
      sub_1A45D54C8(v104, v167, sub_1A45CEB08);
      v111 = 0;
    }

    else
    {
      v111 = 1;
      v110 = v167;
      v109 = v166;
    }

    (*(v165 + 56))(v110, v111, 1, v109);
    v112 = v110;
    v113 = v200;
    v114 = v201;
    v115 = v202;
    v116 = v203;
    v117 = v204;
    v118 = v168;
    sub_1A45D52B4(v112, v168, sub_1A45CEAD4);
    v119 = v169;
    *v169 = v113;
    *(v119 + 8) = v114;
    *(v119 + 16) = v115;
    *(v119 + 24) = v116;
    *(v119 + 32) = v117 & 1;
    sub_1A45CEAB4(0);
    sub_1A45D52B4(v118, v119 + *(v120 + 48), sub_1A45CEAD4);

    sub_1A45D531C(v112, sub_1A45CEAD4);
    sub_1A45D531C(v118, sub_1A45CEAD4);

    sub_1A45D54C8(v119, v194, sub_1A45CEA80);
    v97 = 0;
    v78 = v190;
    v94 = 1;
  }

  (*(v176 + 56))(v194, v97, 1, v177);
  sub_1A45D1B98(&v205);
  v187 = v206;
  v177 = v205;
  v175 = *(&v207 + 1);
  v176 = v207;
  v121 = sub_1A5249574();
  v122 = v179;
  *v179 = v121;
  v122[1] = 0;
  *(v122 + 16) = 0;
  sub_1A45D51AC(0, &qword_1EB13E6E0, sub_1A45CF0DC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A45D1F94(v65, v122 + *(v123 + 44));
  sub_1A524BC74();
  sub_1A5248AD4();
  v124 = v122;
  v125 = v180;
  sub_1A45D5218(v124, v180);
  v126 = (v125 + *(v178 + 36));
  v127 = v208;
  v128 = v210;
  v129 = v211;
  v126[4] = v209;
  v126[5] = v128;
  v126[6] = v129;
  v130 = v206;
  *v126 = v205;
  v126[1] = v130;
  v126[2] = v207;
  v126[3] = v127;
  sub_1A45D3A40(v125, v192, sub_1A45CF044);
  sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
  v131 = [swift_getObjCClassFromMetadata() sharedInstance];
  v132 = [v131 canShowInternalUI];

  if (v132)
  {
    v133 = type metadata accessor for GenerativeStoryCreationView(0);
    v134 = *(v65 + *(v133 + 40));
    sub_1A5247C84();
    v135 = v195;
    v136 = v65 + *(v133 + 24);
    v137 = *v136;
    v138 = *(v136 + 8);
    v198 = v137;
    v199 = v138;
    sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v139 = v195;
    v140 = v196;
    v141 = v197;
    sub_1A3C5A374();
    v142 = v170;
    sub_1A462F050(v134, v135, v139, v140, v141, v170);
    sub_1A45D3A40(v142, v78, type metadata accessor for GenerativeStoryInternalMenuView);
    v94 = 0;
  }

  (*(v182 + 56))(v78, v94, 1, v183);
  v143 = v188;
  sub_1A45D5888(v191, v188, sub_1A45CE740);
  v144 = v189;
  sub_1A45D5888(v193, v189, sub_1A45CE9DC);
  v145 = v181;
  sub_1A45D52B4(v194, v181, sub_1A45CEA4C);
  v146 = v184;
  sub_1A45D5888(v192, v184, sub_1A45CF044);
  v147 = v78;
  v148 = v186;
  sub_1A45D5888(v147, v186, sub_1A45CF728);
  v149 = v143;
  v150 = v185;
  sub_1A45D5888(v149, v185, sub_1A45CE740);
  sub_1A45CE664(0);
  v152 = v151;
  sub_1A45D5888(v144, v150 + v151[12], sub_1A45CE9DC);
  sub_1A45D52B4(v145, v150 + v152[16], sub_1A45CEA4C);
  v153 = v150 + v152[20];
  v154 = v187;
  *v153 = v177;
  *(v153 + 16) = v154;
  v155 = v175;
  *(v153 + 32) = v176;
  *(v153 + 40) = v155;
  sub_1A45D5888(v146, v150 + v152[24], sub_1A45CF044);
  sub_1A45D5888(v148, v150 + v152[28], sub_1A45CF728);

  sub_1A45D56A4(v190, sub_1A45CF728);
  sub_1A45D56A4(v192, sub_1A45CF044);
  sub_1A45D531C(v194, sub_1A45CEA4C);
  sub_1A45D56A4(v193, sub_1A45CE9DC);
  sub_1A45D56A4(v191, sub_1A45CE740);
  sub_1A45D56A4(v148, sub_1A45CF728);
  sub_1A45D56A4(v146, sub_1A45CF044);

  sub_1A45D531C(v145, sub_1A45CEA4C);
  sub_1A45D56A4(v189, sub_1A45CE9DC);
  return sub_1A45D56A4(v188, sub_1A45CE740);
}

void sub_1A45D13CC(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = type metadata accessor for GenerativeStoryBackgroundView(0);
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v11 = sub_1A5247C84();
  v12 = (*(*v23 + 384))(v11);

  v13 = v12;
  if (v12 > 1u)
  {
    v14 = v22;
    if (v13 != 2)
    {
      sub_1A45CCF70(v10);
      (*(v5 + 104))(v7, *MEMORY[0x1E69C2210], v4);
      v15 = sub_1A5242D04();
      v16 = *(v5 + 8);
      v16(v7, v4);
      v16(v10, v4);
      v14 = v22;
      if ((v15 & 1) == 0)
      {
        v13 = 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v14 = v22;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  v17 = sub_1A5247C84();
  v18 = (*(*v23 + 1624))(v17);

  if (v18)
  {
    v19 = sub_1A45D171C();
    sub_1A44B5B14(v18, 1, 1, v19, v3);
    sub_1A45D3A40(v3, v14, type metadata accessor for GenerativeStoryBackgroundView);
    v13 = 0;
LABEL_8:
    (*(v1 + 56))(v14, v13, 1, v21);
    return;
  }

  __break(1u);
}

BOOL sub_1A45D171C()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  sub_1A45CCF70(v12 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2210], v0);
  sub_1A45D5704(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v7 = sub_1A524C594();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v9 = sub_1A5247C84();
  v10 = (*(*v12[1] + 384))(v9);

  return ((v10 - 1) & 0xFD) == 0;
}

BOOL sub_1A45D1948()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  sub_1A45CCF70(v14 - v5);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x1E69C2210], v0);
  v8 = sub_1A5242D04();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8)
  {
    return 0;
  }

  sub_1A45CCF70(v6);
  v7(v3, *MEMORY[0x1E69C21F0], v0);
  v11 = sub_1A5242D04();
  v9(v3, v0);
  v9(v6, v0);
  if ((v11 & 1) == 0)
  {
    return 1;
  }

  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v12 = sub_1A5247C84();
  v13 = (*(*v14[1] + 384))(v12);

  return v13 == 1;
}

void sub_1A45D1B98(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  sub_1A45CCF70(&v33 - v12);
  (*(v8 + 104))(v10, *MEMORY[0x1E69C2200], v7);
  v14 = sub_1A5242D04();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  if ((v14 & 1) != 0 && ((v16 = v2 + *(type metadata accessor for GenerativeStoryCreationView(0) + 56), v17 = *v16, *(v16 + 8) != 1) ? (, v18 = sub_1A524D254(), v19 = sub_1A524A014(), sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]), v19, sub_1A5249224(), swift_getAtKeyPath(), sub_1A3C53AEC(v17, 0), (*(v34 + 8))(v6, v4), LOBYTE(v17) = v35) : (LOBYTE(v35) = v17 & 1), v37 = v17 & 1, v36 = 0, static LemonadeRootViewOrientation.== infix(_:_:)(&v37, &v36)))
  {
    v20 = sub_1A524BC64();
    v22 = v21;
    sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    PXDisplayCollectionDetailedCountsMake();
    v24 = v23;
    v25 = sub_1A5248874();
    v26 = sub_1A524A064();
    v27 = sub_1A5247C84();
    v28 = (*(*v35 + 584))(v27);

    if (v28 & 1) != 0 && (v29 = sub_1A5247C84(), v30 = (*(*v35 + 456))(v29), , (v30))
    {
      v31 = 0x3FF0000000000000;
    }

    else
    {
      v31 = 0;
    }

    v32 = v26;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v32 = 0;
    v31 = 0;
  }

  *a1 = v20;
  a1[1] = v22;
  a1[2] = v24;
  a1[3] = v25;
  a1[4] = v32;
  a1[5] = v31;
}

uint64_t sub_1A45D1F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_1A45CF43C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v55 - v6;
  v7 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF408(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - v12;
  sub_1A45CF24C(0);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF1B8(0, &qword_1EB13E6E8, MEMORY[0x1E697F948]);
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = sub_1A5242D14();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  sub_1A45CF198(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v59 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v55 - v29;
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v58 = v31;
  v32 = sub_1A5247C84();
  v33 = (*(*v68 + 384))(v32);

  if ((v33 - 1) > 1u)
  {
    *v15 = sub_1A5249574();
    *(v15 + 1) = 0;
    v15[16] = 1;
    sub_1A45D51AC(0, &qword_1EB13E6F0, sub_1A45CF350, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A45D28AC(a1, &v15[*(v40 + 44)]);
    *&v15[*(v56 + 36)] = 0x3FF0000000000000;
    sub_1A45D5888(v15, v18, sub_1A45CF24C);
    swift_storeEnumTagMultiPayload();
    sub_1A45D4F78(0, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A45D5530();
    sub_1A45D55C4();
    sub_1A5249744();
    sub_1A45D56A4(v15, sub_1A45CF24C);
    v41 = v62;
    v42 = v30;
  }

  else
  {
    sub_1A45CCF70(v25);
    (*(v20 + 104))(v22, *MEMORY[0x1E69C2210], v19);
    sub_1A45D5704(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
    v34 = sub_1A524C594();
    v35 = *(v20 + 8);
    v35(v22, v19);
    v35(v25, v19);
    v36 = 1;
    if (v34)
    {
      v37 = sub_1A5247C84();
      v38 = (*(*v68 + 384))(v37);

      LOBYTE(v68) = v38;
      v67 = 3;
      sub_1A3DB95B8();
      v39 = sub_1A524C594();
      v36 = (v39 & 1) == 0;
    }

    else
    {
      v39 = 0;
    }

    v41 = v62;
    *v18 = 0;
    v18[8] = v36;
    v18[9] = v39 & 1;
    swift_storeEnumTagMultiPayload();
    sub_1A45D4F78(0, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A45D5530();
    sub_1A45D55C4();
    v42 = v30;
    sub_1A5249744();
  }

  if ((sub_1A45D2B9C() & 1) != 0 && (v43 = sub_1A5247C84(), v44 = (*(*v68 + 384))(v43), , (v44 - 1) <= 1u))
  {
    sub_1A5247C84();
    v45 = v55;
    sub_1A486F920(v68, v55);
    sub_1A45D3A40(v45, v41, type metadata accessor for GenerativeStoryPromptSuggestionView);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  (*(v60 + 56))(v41, v46, 1, v61);
  v47 = v64;
  sub_1A45D2CD8(v64);
  v48 = v59;
  sub_1A45D5888(v42, v59, sub_1A45CF198);
  v49 = v63;
  sub_1A45D5888(v41, v63, sub_1A45CF408);
  v50 = v66;
  sub_1A45D5888(v47, v66, sub_1A45CF43C);
  v51 = v65;
  sub_1A45D5888(v48, v65, sub_1A45CF198);
  sub_1A45CF110(0);
  v53 = v52;
  sub_1A45D5888(v49, v51 + *(v52 + 48), sub_1A45CF408);
  sub_1A45D5888(v50, v51 + *(v53 + 64), sub_1A45CF43C);
  sub_1A45D56A4(v47, sub_1A45CF43C);
  sub_1A45D56A4(v41, sub_1A45CF408);
  sub_1A45D56A4(v42, sub_1A45CF198);
  sub_1A45D56A4(v50, sub_1A45CF43C);
  sub_1A45D56A4(v49, sub_1A45CF408);
  return sub_1A45D56A4(v48, sub_1A45CF198);
}

double sub_1A45D28AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45CF408(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v15 = v31;
  v16 = a1 + *(type metadata accessor for GenerativeStoryCreationView(0) + 32);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v28 = v17;
  v29 = v18;
  v30 = v19;
  sub_1A45D4EFC(0);
  sub_1A524B6C4();
  sub_1A3DB960C(v15, v31, v32, v33, v34, &v31);
  if (sub_1A45D2B9C())
  {
    sub_1A5247C84();
    sub_1A486F920(v28, v8);
    sub_1A45D3A40(v8, v14, type metadata accessor for GenerativeStoryPromptSuggestionView);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v6 + 56))(v14, v20, 1, v5);
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  sub_1A45D5888(v14, v11, sub_1A45CF408);
  *a2 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  *(a2 + 32) = v25 & 1;
  sub_1A45CF384(0);
  sub_1A45D5888(v11, a2 + *(v26 + 48), sub_1A45CF408);

  sub_1A45D56A4(v14, sub_1A45CF408);
  sub_1A45D56A4(v11, sub_1A45CF408);

  return result;
}

uint64_t sub_1A45D2B9C()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 autocompleteSuggestionsMode];

  if (v1 == 2)
  {
    sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
    v2 = sub_1A5247C84();
    (*(*v5 + 384))(v2);

    sub_1A3DB95B8();
    v3 = sub_1A524C594() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1A45D2CD8(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for GenerativeStoryCreationView(0);
  v4 = v3 - 8;
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v96 = v5;
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1A5242D14();
  v99 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v94 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - v10;
  sub_1A45CF6B4(0, &unk_1EB1241E0, type metadata accessor for GenerativeStoryPromptInputView, type metadata accessor for AppleMusicPrivacyTipModifier);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v82 - v14;
  sub_1A45CF624(0);
  v84 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF5E8(0);
  v85 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF5AC(0);
  v86 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF570(0);
  v89 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45CF4DC(0);
  v90 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v27 = v1 + *(v4 + 76);
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = *v27;

  sub_1A43791A0(v30, v28, v29, v15);
  sub_1A5247C84();
  sub_1A4150EA8(v101, &v15[*(v13 + 44)]);
  sub_1A45CCF70(v11);
  sub_1A4496374(v11);
  v31 = *(v99 + 8);
  v32 = v11;
  v33 = v83;
  v31(v32, v83);
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A45D574C(v15, v18);
  v34 = &v18[*(v84 + 36)];
  v35 = v106;
  *(v34 + 4) = v105;
  *(v34 + 5) = v35;
  *(v34 + 6) = v107;
  v36 = v102;
  *v34 = v101;
  *(v34 + 1) = v36;
  v37 = v104;
  *(v34 + 2) = v103;
  *(v34 + 3) = v37;
  LOBYTE(v13) = sub_1A524A084();
  sub_1A45D4654();
  sub_1A5247BC4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v87;
  sub_1A45D3A40(v18, v87, sub_1A45CF624);
  v47 = v46 + *(v85 + 36);
  *v47 = v13;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  LOBYTE(v13) = sub_1A524A054();
  sub_1A4491F00();
  sub_1A5247BC4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v88;
  sub_1A45D3A40(v46, v88, sub_1A45CF5E8);
  v57 = v56 + *(v86 + 36);
  *v57 = v13;
  *(v57 + 8) = v49;
  *(v57 + 16) = v51;
  *(v57 + 24) = v53;
  *(v57 + 32) = v55;
  *(v57 + 40) = 0;
  v58 = sub_1A5247C84();
  v59 = v100;
  v60 = (*(*v100 + 1304))(v58);
  if (v60 == 3)
  {
    v61 = (*(*v59 + 800))();

    if (v61)
    {
      v62 = 0.0;
    }

    else
    {
      v62 = 1.0;
    }
  }

  else
  {
    sub_1A3DB9B78(v60);

    v62 = 1.0;
  }

  v63 = v94;
  v64 = v91;
  sub_1A45D3A40(v56, v91, sub_1A45CF5AC);
  *(v64 + *(v89 + 36)) = v62;
  sub_1A524BD24();
  v65 = v92;
  sub_1A45CCF70(v92);
  v66 = v99;
  (*(v99 + 32))(v63, v65, v33);
  if ((*(v66 + 88))(v63, v33) != *MEMORY[0x1E69C2210])
  {
    (v31)(v63, v33, 0.0);
  }

  v67 = sub_1A524BCD4();

  v68 = sub_1A5247C84();
  v69 = v100;
  v70 = (*(*v100 + 1304))(v68);
  if (v70 == 3)
  {
    v71 = (*(*v69 + 800))();

    v72 = v71 ^ 1;
  }

  else
  {
    v73 = v70;

    sub_1A3DB9B78(v73);
    v72 = 1;
  }

  v74 = v93;
  sub_1A45D3A40(v64, v93, sub_1A45CF570);
  v75 = v74 + *(v90 + 36);
  *v75 = v67;
  *(v75 + 8) = v72 & 1;
  v76 = v97;
  sub_1A45D5888(v2, v97, type metadata accessor for GenerativeStoryCreationView);
  v77 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v78 = swift_allocObject();
  sub_1A45D3A40(v76, v78 + v77, type metadata accessor for GenerativeStoryCreationView);
  v79 = v98;
  sub_1A45D3A40(v74, v98, sub_1A45CF4DC);
  sub_1A45CF43C(0);
  v81 = (v79 + *(v80 + 36));
  *v81 = sub_1A428A098;
  v81[1] = 0;
  v81[2] = sub_1A45D57E0;
  v81[3] = v78;
}

double sub_1A45D36AC(uint64_t a1)
{
  sub_1A43C7D38(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeStoryCreationView(0);
  v6 = (a1 + *(v5 + 24));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v27) = *v6;
  v28 = v8;
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v26 == 1)
  {
    LOBYTE(v27) = v7;
    v28 = v8;
    v26 = 0;
    sub_1A524B6B4();
    v10 = a1 + *(v5 + 20);
    v11 = *(v10 + 16);
    if (v11)
    {
      sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
      v12 = v11;
      sub_1A5247C84();
      (*(*v27 + 2136))(v12);

      if (*(v10 + 24) == 1)
      {
        v13 = [v12 string];
        v14 = sub_1A524C674();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          sub_1A5247C84();
          v18 = v27;
          v19 = [v12 string];
          v20 = sub_1A524C674();
          v22 = v21;

          v23 = sub_1A5244854();
          (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
          (*(*v18 + 1896))(v20, v22, v4);

          sub_1A45D56A4(v4, sub_1A43C7D38);
          v24 = 0;
LABEL_10:
          sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
          sub_1A5247C84();
          (*(*v27 + 592))(v24);

          return result;
        }
      }
    }

    v24 = 1;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1A45D3A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1A45D3AA8()
{
  v1 = *(type metadata accessor for GenerativeStoryCreationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A45D36AC(v2);
}

uint64_t objectdestroy_15Tm_1()
{
  v1 = type metadata accessor for GenerativeStoryCreationView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A45D5148(0, &qword_1EB121408, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981E90]);
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_1A45D5148(0, &qword_1EB127208, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981E98]);

  v4 = (v2 + v1[5]);

  v5 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0) + 36);
  v6 = sub_1A5244854();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  v7 = v1[11];
  sub_1A45D5148(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5248284();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  j__swift_release(*(v2 + v1[12]));
  v9 = v1[13];
  sub_1A45D5148(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5242D14();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[14]), *(v2 + v1[14] + 8));
  v11 = v1[15];
  sub_1A45D5148(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5244084();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v1[16];
  sub_1A45D5148(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v15 = v14;
    v16 = *(v14 - 8);
    if (!(*(v16 + 48))(v2 + v13, 1, v14))
    {
      (*(v16 + 8))(v2 + v13, v15);
    }
  }

  else
  {
  }

  v17 = v1[19];
  v18 = sub_1A5246F24();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

void sub_1A45D4034()
{
  type metadata accessor for GenerativeStoryCreationView(0);
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v0 = sub_1A5247C84();
  v1 = (*(*v3 + 1624))(v0);

  if (v1)
  {
    (*(*v1 + 376))(0);

    v2 = sub_1A5247C84();
    (*(*v3 + 1968))(v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A45D4228()
{
  v1 = sub_1A5248284();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5244854();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + *(type metadata accessor for GenerativeStoryCreationView(0) + 72));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v17) = *v8;
  v18 = v10;
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v15 & 1) == 0)
  {
    LOBYTE(v17) = v9;
    v18 = v10;
    LOBYTE(v15) = 1;
    sub_1A524B6B4();
    type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
    (*(v5 + 104))(v7, *MEMORY[0x1E69C1028], v4);
    sub_1A45D5704(&qword_1EB124C90, MEMORY[0x1E69C1030], MEMORY[0x1E69C1040]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v17 == v15 && v18 == v16)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v11 = sub_1A524EAB4();
      (*(v5 + 8))(v7, v4);

      if ((v11 & 1) == 0)
      {
LABEL_9:
        sub_1A45CCBF0(v3);
        sub_1A5248274();
        (*(v13 + 8))(v3, v14);
        return;
      }
    }

    if (sub_1A45CCE1C())
    {
      v12 = sub_1A4654ADC();

      if (v12)
      {
        [v12 dismissViewControllerAnimated:1 completion:0];

        return;
      }
    }

    goto LABEL_9;
  }
}

void sub_1A45D4574()
{
  type metadata accessor for GenerativeStoryCreationView(0);
  sub_1A45D4F78(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v1 & 1) == 0)
  {
    sub_1A5247E34();
    if (v0 > 30.0)
    {
      sub_1A45D4228();
    }
  }
}

double sub_1A45D4654()
{
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeStoryCreationView(0);
  v13 = (v0 + *(v12 + 28));
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v13[2];
  v32 = v14;
  v33 = v15;
  v34 = v16;
  sub_1A45D4EFC(0);
  sub_1A524B6A4();
  if (v31 != 1)
  {
    return v30;
  }

  v17 = v0 + *(v12 + 56);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    LOBYTE(v32) = v18 & 1;
  }

  else
  {

    v20 = sub_1A524D254();
    v21 = sub_1A524A014();
    v29 = v4;
    v22 = v2;
    v23 = v21;
    sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v2 = v22;
    v4 = v29;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v18, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v18) = v32;
  }

  LOBYTE(v30) = v18 & 1;
  sub_1A45CCF70(v7);
  v19 = sub_1A4497F9C(&v30, v7);
  v24 = *(v2 + 8);
  v24(v7, v1);
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v25 = sub_1A5247C84();
  v26 = (*(*v32 + 384))(v25);

  if (v26 == 2)
  {
    sub_1A45CCF70(v7);
    (*(v2 + 104))(v4, *MEMORY[0x1E69C2210], v1);
    v27 = sub_1A5242D04();
    v24(v4, v1);
    v24(v7, v1);
    if (v27)
    {
      return 90.0;
    }
  }

  return v19;
}

uint64_t sub_1A45D4A14()
{
  v1 = (*(*v0 + 1304))();
  if (v1 == 3)
  {
    v2 = (*(*v0 + 800))() ^ 1;
  }

  else
  {
    sub_1A3DB9B78(v1);
    v2 = 1;
  }

  return v2 & 1;
}

void sub_1A45D4AA0(uint64_t a1)
{
  if (!qword_1EB13E6C8)
  {
    sub_1A45CF75C(255);
    sub_1A45D4B40(255, &unk_1EB1221A8, sub_1A4135204, &type metadata for LemonadeDismissButtonPreferenceKey, MEMORY[0x1E6980750]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E6C8);
    }
  }
}

void sub_1A45D4B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45D4BEC(uint64_t a1)
{
  sub_1A45D5148(319, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeGenerativeMemoriesConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_1A45D4F78(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A45D4EFC(319);
        if (v4 <= 0x3F)
        {
          sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
          if (v5 <= 0x3F)
          {
            sub_1A45D5148(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A45D5148(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A45D5148(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1A45D4F78(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A45D5148(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1A45D5148(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
                      if (v11 <= 0x3F)
                      {
                        sub_1A4222DB0(319);
                        if (v12 <= 0x3F)
                        {
                          sub_1A5246F24();
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
  }
}

void sub_1A45D4EFC(uint64_t a1)
{
  if (!qword_1EB121C88)
  {
    sub_1A45D4F78(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v1 = sub_1A524B6D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121C88);
    }
  }
}

void sub_1A45D4F78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A45D4FC8()
{
  result = qword_1EB13E6D0;
  if (!qword_1EB13E6D0)
  {
    sub_1A45D4AA0(255);
    sub_1A45CE318(255);
    sub_1A45CE240(255, v1);
    sub_1A45CF830();
    sub_1A45D5704(&qword_1EB122F80, sub_1A45CE240, MEMORY[0x1E697E8D0]);
    swift_getOpaqueTypeConformance2();
    sub_1A4135438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6D0);
  }

  return result;
}

uint64_t sub_1A45D50C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A45D5148(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A45D5148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A45D51AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A45D5218(uint64_t a1, uint64_t a2)
{
  sub_1A45CF2BC(0, &qword_1EB13E5F8, sub_1A45CF0DC, &qword_1EB13E650, sub_1A45CF0DC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45D52B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45D531C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45D537C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A45D5148(0, &qword_1EB124918, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E697DA80]);
  v4 = sub_1A5247C84();
  v5 = (*(*v9 + 584))(v4);

  if (v5)
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 0.0;
  }

  sub_1A45D4F78(0, &qword_1EB122230, MEMORY[0x1E69815C0], MEMORY[0x1E697FEC0]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  sub_1A45CEC50(0);
  *(a2 + *(v8 + 36)) = v6;
}

uint64_t sub_1A45D54C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A45D5530()
{
  result = qword_1EB141F90;
  if (!qword_1EB141F90)
  {
    sub_1A45D4F78(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141F90);
  }

  return result;
}

unint64_t sub_1A45D55C4()
{
  result = qword_1EB13E6F8;
  if (!qword_1EB13E6F8)
  {
    sub_1A45CF24C(255);
    sub_1A45D5704(&qword_1EB13E700, sub_1A45CF280, MEMORY[0x1E6981870]);
    sub_1A45D5704(&unk_1EB127C50, sub_1A41EF370, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E6F8);
  }

  return result;
}

uint64_t sub_1A45D56A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45D5704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A45D574C(uint64_t a1, uint64_t a2)
{
  sub_1A45CF6B4(0, &unk_1EB1241E0, type metadata accessor for GenerativeStoryPromptInputView, type metadata accessor for AppleMusicPrivacyTipModifier);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45D57E0(uint64_t *a1)
{
  type metadata accessor for GenerativeStoryCreationView(0);
  sub_1A45D4EFC(0);
  return sub_1A524B6B4();
}

uint64_t sub_1A45D5888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45D58F0()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1C9238);
  __swift_project_value_buffer(v6, qword_1EB1C9238);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static RenameAlbumIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1C9230 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1C9238);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A45D5C50()
{
  sub_1A45D6CA0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1C9258);
  __swift_project_value_buffer(v10, qword_1EB1C9258);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static RenameAlbumIntent.description.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1C9250 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240094();
  __swift_project_value_buffer(v2, qword_1EB1C9258);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static RenameAlbumIntent.parameterSummary.getter()
{
  sub_1A45D8220(0, &qword_1EB13E708, sub_1A45D6344, &type metadata for RenameAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A45D8220(0, &qword_1EB13E718, sub_1A45D6344, &type metadata for RenameAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A45D6344();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A45D63E0(0, &qword_1EB13E720, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A45D63E0(0, &qword_1EB13E728, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158]);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A45D6344()
{
  result = qword_1EB13E710;
  if (!qword_1EB13E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E710);
  }

  return result;
}

void sub_1A45D63E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A45D8220(255, a3, a4, a5, MEMORY[0x1E695A1A0]);
    v6 = sub_1A524ED44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t RenameAlbumIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  sub_1A45D6CA0(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = v34 - v2;
  v52 = sub_1A5240334();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45D6CA0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = v34 - v7;
  sub_1A45D6CA0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = v34 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A5240BB4();
  v44 = v16;
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v34[1] = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1E695A1A0];
  sub_1A45D8220(0, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
  v39 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v11 + 104);
  v36 = v10;
  v20(v13, v19, v10);
  v35 = v20;
  v37 = v11 + 104;
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v10);
  v21 = v50;
  sub_1A5240BC4();
  v22 = *(v54 + 56);
  v54 += 56;
  v45 = v22;
  v22(v21, 0, 1, v16);
  v23 = sub_1A523FDB4();
  v38 = v23;
  v56 = 0u;
  v57 = 0u;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v42 = v25;
  v43 = v24 + 56;
  v25(v51, 1, 1, v23);
  v25(v47, 1, 1, v23);
  PXDisplayCollectionDetailedCountsMake();
  v40 = *MEMORY[0x1E695A500];
  v26 = *(v55 + 104);
  v55 += 104;
  v41 = v26;
  v27 = v48;
  v26(v48);
  sub_1A45D6CF4();
  sub_1A3DB3554();
  *v53 = sub_1A523FFA4();
  sub_1A45D8220(0, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], v46);
  v47 = v28;
  sub_1A524C5B4();
  sub_1A5241244();
  v29 = v36;
  v30 = v35;
  v35(v13, v19, v36);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v30(v13, v19, v29);
  v31 = v50;
  sub_1A5240BC4();
  v45(v31, 0, 1, v44);
  v32 = sub_1A524C5A4();
  v56 = 0uLL;
  (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
  v42(v51, 1, 1, v38);
  v41(v27, v40, v52);
  result = sub_1A5240004();
  v53[1] = result;
  return result;
}

void sub_1A45D6CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A45D6CF4()
{
  result = qword_1EB13E730;
  if (!qword_1EB13E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E730);
  }

  return result;
}

uint64_t RenameAlbumIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = *v1;
  sub_1A524CC54();
  *(v2 + 120) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 128) = v4;
  *(v2 + 136) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A45D6DE8, v4, v3);
}

uint64_t sub_1A45D6DE8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  sub_1A523FF44();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  AlbumEntity.albumType.getter((v0 + 176));

  *(v0 + 177) = *(v0 + 176);
  v7 = AlbumEntity.CollectionType.rawValue.getter();
  v9 = v8;
  *(v0 + 144) = v8;
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  sub_1A45D6344();
  *v11 = v0;
  v11[1] = sub_1A45D6F6C;
  v12 = *(v0 + 96);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v12, 0, 0, v7, v9, 0, 1, &unk_1A534E880);
}

uint64_t sub_1A45D6F6C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A45D70F4;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A45D7090;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45D7090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D70F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D7190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  sub_1A524CC54();
  v3[17] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A45D722C, v5, v4);
}

uint64_t sub_1A45D722C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  sub_1A523FF44();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 160) = v4;
  sub_1A523FF44();
  v5 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v5;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_1A45D6344();
  v6 = AppIntent.px_intentName.getter(&type metadata for RenameAlbumIntent);
  v8 = v7;
  *(v0 + 168) = v7;
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_1A45D7354;

  return sub_1A45D7AC8(v3, v4, (v0 + 48), v6, v8);
}

uint64_t sub_1A45D7354()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1A3F58C88;
  }

  else
  {
    v5 = sub_1A45D7518;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45D7518()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D7588(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A45D7190(a1, v5, v4);
}

uint64_t sub_1A45D7668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3CA8098;

  return sub_1A45D7AC8(a1, a2, a3, a4, a5);
}

void (*RenameAlbumIntent.album.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

void *sub_1A45D77EC@<X0>(void *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void (*RenameAlbumIntent.title.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A45D792C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C9230 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1C9238);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A45D79F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return RenameAlbumIntent.perform()(a1);
}

uint64_t sub_1A45D7A8C(uint64_t a1)
{
  v2 = sub_1A45D6344();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A45D7AC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = sub_1A5246F24();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a3;
  v5[8] = v8;
  v5[9] = v9;
  sub_1A524CC54();
  v5[10] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v5[11] = v11;
  v5[12] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A45D7BC8, v11, v10);
}

void sub_1A45D7BC8()
{
  v8 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F9790;
  *(v5 + 32) = v2;
  v6 = v2;
  PXAppIntentsDebugDescription(for:)(v5);

  v7 = sub_1A3CB648C();
  (*(v4 + 16))(v1, v7, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45D7EAC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A45D8038;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A45D7FC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45D7FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A45D8038()
{

  v1 = *(v0 + 8);

  return v1();
}