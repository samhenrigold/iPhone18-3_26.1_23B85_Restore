void sub_1C5CC095C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, void *a6)
{
  v81 = a3;
  v9 = sub_1C6016630();
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6016690();
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;

  v15 = a5;
  v16 = a6;
  v17 = sub_1C5CD4A44();
  v87 = v12;
  v84 = v14;
  v82 = v16;
  if (!v17)
  {
    goto LABEL_68;
  }

  v18 = v17;
  v19 = [v17 personalizedStore];
  if (!v19)
  {

    goto LABEL_68;
  }

  v80 = v18;
  v20 = [v19 personID];
  swift_unknownObjectRelease();
  v21 = sub_1C6016940();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  v25 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v26 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_68;
  }

  v79 = a4;
  if ((v23 & 0x1000000000000000) != 0)
  {
    LOBYTE(v88) = 0;
    sub_1C5CD3538(v21, v23, 10);
    v52 = v76;
    goto LABEL_66;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      v27 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v27 = sub_1C60175C0();
    }

    v28 = *v27;
    if (v28 == 43)
    {
      if (v25 >= 1)
      {
        v24 = v25 - 1;
        if (v25 != 1)
        {
          v37 = 0;
          if (v27)
          {
            v38 = v27 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                goto LABEL_64;
              }

              v40 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_64;
              }

              v37 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_64;
              }

              ++v38;
              if (!--v24)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_80;
    }

    if (v28 != 45)
    {
      if (v25)
      {
        v45 = 0;
        if (v27)
        {
          while (1)
          {
            v46 = *v27 - 48;
            if (v46 > 9)
            {
              goto LABEL_64;
            }

            v47 = 10 * v45;
            if ((v45 * 10) >> 64 != (10 * v45) >> 63)
            {
              goto LABEL_64;
            }

            v45 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              goto LABEL_64;
            }

            ++v27;
            if (!--v25)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v24) = 1;
      goto LABEL_65;
    }

    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v29 = 0;
        if (v27)
        {
          v30 = v27 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_64;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_64;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_64;
            }

            ++v30;
            if (!--v24)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v24) = 0;
LABEL_65:
        LOBYTE(v88) = v24;
        v52 = v24;
LABEL_66:

        if ((v52 & 1) == 0)
        {
          v67 = sub_1C6016DB0();
          v68 = *&v81[OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsPlayActivityFeedConsumer_workQueue];
          v69 = swift_allocObject();
          v69[2] = v67;
          v69[3] = sub_1C5CC54D8;
          v69[4] = v14;
          v93 = sub_1C5CC54E8;
          v94 = v69;
          aBlock = MEMORY[0x1E69E9820];
          v90 = 1107296256;
          v91 = sub_1C5DBC798;
          v92 = &block_descriptor_32;
          v70 = _Block_copy(&aBlock);
          v78 = v68;
          v81 = v67;

          v71 = v83;
          sub_1C6016670();
          v88 = MEMORY[0x1E69E7CC0];
          sub_1C5C660B0(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          v53 = v15;
          v72 = v86;
          v73 = v9;
          v74 = MEMORY[0x1E69E7F60];
          sub_1C5CC53A8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1C5CC5A78(&qword_1ED7DC280, &qword_1ED7DC288, v74);
          sub_1C60173B0();
          v75 = v78;
          MEMORY[0x1C6953AC0](0, v71, v11, v70);

          _Block_release(v70);
          (*(v72 + 8))(v11, v73);
          (*(v85 + 8))(v71, v87);

LABEL_73:

          return;
        }

        a4 = v79;
LABEL_68:
        v53 = v15;
        v81 = v11;
        if (qword_1EC1A9580 != -1)
        {
          swift_once();
        }

        v54 = v9;
        v55 = sub_1C60162D0();
        __swift_project_value_buffer(v55, qword_1EC1BE420);
        v56 = sub_1C60162B0();
        v57 = sub_1C6016F20();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_1C5C61000, v56, v57, "Unable to fetch user identifiers.", v58, 2u);
          MEMORY[0x1C6956920](v58, -1, -1);
        }

        sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
        v59 = sub_1C6016FD0();
        v60 = swift_allocObject();
        v60[2] = 0;
        v60[3] = 0;
        v60[4] = a4;
        v60[5] = 0;
        v60[6] = 0;
        v60[7] = v53;
        v60[8] = v16;
        v93 = sub_1C5CC54E4;
        v94 = v60;
        aBlock = MEMORY[0x1E69E9820];
        v90 = 1107296256;
        v91 = sub_1C5DBC798;
        v92 = &block_descriptor_26;
        v61 = _Block_copy(&aBlock);

        v62 = v53;
        v63 = v16;

        v64 = v83;
        sub_1C6016670();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1C5C660B0(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        v65 = MEMORY[0x1E69E7F60];
        sub_1C5CC53A8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1C5CC5A78(&qword_1ED7DC280, &qword_1ED7DC288, v65);
        v66 = v81;
        sub_1C60173B0();
        MEMORY[0x1C6953AC0](0, v64, v66, v61);
        _Block_release(v61);

        (*(v86 + 8))(v66, v54);
        (*(v85 + 8))(v64, v87);

        goto LABEL_73;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  aBlock = v21;
  v90 = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v21 != 43)
  {
    if (v21 != 45)
    {
      if (v24)
      {
        v48 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v50 = *p_aBlock - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            break;
          }

          v48 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v24)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v24)
    {
      if (--v24)
      {
        v33 = 0;
        v34 = &aBlock + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v24)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_79;
  }

  if (v24)
  {
    if (--v24)
    {
      v41 = 0;
      v42 = &aBlock + 1;
      while (1)
      {
        v43 = *v42 - 48;
        if (v43 > 9)
        {
          break;
        }

        v44 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          break;
        }

        v41 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          break;
        }

        ++v42;
        if (!--v24)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_81:
  __break(1u);
}

id sub_1C5CC1324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C5CC53A8(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v6 = @"queue-section-id";
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"queue-item-id";
  v7 = @"queue-item-id";
  *(inited + 56) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  sub_1C6016880();
  v8 = sub_1C6016840();

  v9 = [v4 countOfPreviousEventsWithType:@"item-resume" matchingPayload:v8];

  return v9;
}

void sub_1C5CC14B8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() sharedAccountStore];
  v37[0] = 0;
  v5 = [v4 storeAccountForDSID:a1 error:v37];

  v6 = v37[0];
  if (v5)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E698CA20]);
    v8 = v6;
    v9 = [v7 init];
    v10 = [objc_opt_self() mainBundle];
    v11 = sub_1C5E00E38(v10);
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xD000000000000012;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x80000001C60483F0;
    }

    sub_1C5C64D74(0, &qword_1EC1AA6F8, 0x1E698CAC8);
    v15 = sub_1C5CC18D8(v13, v14);
    [v9 setClientInfo_];

    [v9 setResetInterval_];
    [v9 setAccount_];
    sub_1C5C64D74(0, &qword_1EC1AA700, 0x1E698CA18);
    v16 = sub_1C5CC532C(0x644972657375, 0xE600000000000000, 1);
    v17 = [v9 identifierForKey_];

    v18 = sub_1C6016940();
    v20 = v19;

    v21 = sub_1C5CC532C(0x6449746E65696C63, 0xE800000000000000, 1);
    v22 = [v9 identifierForKey_];

    v23 = sub_1C6016940();
    v25 = v24;

    a2(v18, v20, v23, v25);
  }

  else
  {
    v26 = v37[0];
    v27 = sub_1C6014D40();

    swift_willThrow();
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v28 = sub_1C60162D0();
    __swift_project_value_buffer(v28, qword_1EC1BE420);
    v29 = v27;
    v30 = sub_1C60162B0();
    v31 = sub_1C6016F20();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_1C6017930();
      v36 = sub_1C5C6AB10(v34, v35, v37);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1C5C61000, v30, v31, "Unable to fetch user identifiers. Account retrieval failed: %s.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1C6956920](v33, -1, -1);
      MEMORY[0x1C6956920](v32, -1, -1);
    }

    a2(0, 0, 0, 0);
  }
}

id sub_1C5CC18D8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C6016900();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

void sub_1C5CC198C(id a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[1];
  ObjectType = swift_getObjectType();
  v7 = sub_1C5CD48E8(v2[4], v2[5], v2[2], v2[3], ObjectType);
  if (v7)
  {
    v8 = v7;
    memset(v30, 0, sizeof(v30));
    v9 = [v5 cursorUntilEvent_];
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = v30;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C5CC5958;
    *(v11 + 24) = v10;
    v28 = sub_1C5CC5AF0;
    v29 = v11;
    *&v25 = MEMORY[0x1E69E9820];
    *(&v25 + 1) = 1107296256;
    v26 = sub_1C5D378E4;
    v27 = &block_descriptor_58;
    v12 = _Block_copy(&v25);
    a1 = a1;

    [v9 enumeratePreviousEventsWithType:@"item-update" usingBlock:v12];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_1C5CC5960(v30, &v25);
      if (v27)
      {
        swift_unknownObjectRelease();

        sub_1C5C70758(&v25, a2);
      }

      else
      {
        v24 = sub_1C5CC51E4();
        if (v24)
        {
          sub_1C5CFF1CC(v24, a2);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          *a2 = 0u;
          a2[1] = 0u;
        }

        if (v27)
        {
          sub_1C5CBCF4C(&v25);
        }
      }

      sub_1C5CBCF4C(v30);

      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (qword_1EC1A9580 != -1)
  {
LABEL_16:
    swift_once();
  }

  v14 = sub_1C60162D0();
  __swift_project_value_buffer(v14, qword_1EC1BE420);
  v15 = a1;
  v16 = sub_1C60162B0();
  v17 = sub_1C6016F20();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v25 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *&v30[0] = v15;
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    v20 = v15;
    v21 = sub_1C60169A0();
    v23 = sub_1C5C6AB10(v21, v22, &v25);

    *(v18 + 14) = v23;
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1C6956920](v19, -1, -1);
    MEMORY[0x1C6956920](v18, -1, -1);
  }

  *a2 = 0u;
  a2[1] = 0u;
}

uint64_t sub_1C5CC2078()
{
  v1 = [*(v0 + 8) findPreviousEventWithType:@"network-reachability-changed" matchingPayload:0];
  if (!v1)
  {
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v7 = sub_1C60162D0();
    __swift_project_value_buffer(v7, qword_1EC1BE420);
    v2 = sub_1C60162B0();
    v8 = sub_1C6016F20();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      MEMORY[0x1C6956920](v9, -1, -1);

      return 2;
    }

LABEL_15:

    return 2;
  }

  v2 = v1;
  v3 = [v1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v4 = sub_1C6016860();

  sub_1C5CFF1CC(v4, &v16);

  if (!v17)
  {
    sub_1C5CBCF4C(&v16);
    goto LABEL_10;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v10 = sub_1C60162D0();
    __swift_project_value_buffer(v10, qword_1EC1BE420);
    v11 = sub_1C60162B0();
    v12 = sub_1C6016F20();
    if (os_log_type_enabled(v11, v12))
    {
      v6 = 2;
      v13 = swift_slowAlloc();
      *v13 = 0;
      MEMORY[0x1C6956920](v13, -1, -1);

      return v6;
    }

    goto LABEL_15;
  }

  v5 = [v15 integerValue];

  return v5 == 0;
}

uint64_t sub_1C5CC2378()
{
  v1 = *v0;
  v2 = [*v0 type];
  v3 = sub_1C6016940();
  v5 = v4;
  if (v3 == sub_1C6016940() && v5 == v6)
  {
    goto LABEL_13;
  }

  v8 = sub_1C6017860();

  if (v8)
  {
    return sub_1C5CC4640();
  }

  v2 = [v1 type];
  v9 = sub_1C6016940();
  v11 = v10;
  if (v9 == sub_1C6016940() && v11 == v12)
  {
LABEL_13:

    return sub_1C5CC4640();
  }

  v14 = sub_1C6017860();

  if (v14)
  {
    return sub_1C5CC4640();
  }

  ObjectType = swift_getObjectType();
  v16 = sub_1C5CD48F4(*(v0 + 32), *(v0 + 40), *(v0 + 16), *(v0 + 24), ObjectType);
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C5CC4640();
  }

  else
  {
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v20 = sub_1C60162D0();
    __swift_project_value_buffer(v20, qword_1EC1BE420);
    v21 = sub_1C60162B0();
    v22 = sub_1C6016F20();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      MEMORY[0x1C6956920](v23, -1, -1);
    }

    return 0;
  }

  return v18;
}

uint64_t sub_1C5CC25D8()
{
  v1 = sub_1C6014E00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6017820();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C60150D0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5CC58A8(0);
  v10 = v9;
  v65 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v54 - v15;
  v16 = v0[1];
  ObjectType = swift_getObjectType();
  v18 = sub_1C5CD48E8(v0[4], v0[5], v0[2], v0[3], ObjectType);
  if (v18)
  {
    v54 = v4;
    v55 = v10;
    v56 = v2;
    v57 = v1;
    v67 = v18;
    v19 = [v16 cursorUntilEvent_];
    v20 = MEMORY[0x1E69E6F90];
    sub_1C5CC53A8(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    v66 = xmmword_1C6035C00;
    *(v21 + 16) = xmmword_1C6035C00;
    *(v21 + 32) = @"item-rate-changed";
    *(v21 + 40) = @"item-resume";
    type metadata accessor for MPCPlaybackEngineEventType();
    v22 = @"item-rate-changed";
    v23 = @"item-resume";
    v24 = sub_1C6016AF0();

    sub_1C5CC53A8(0, &unk_1ED7DCB20, sub_1C5CC540C, v20);
    inited = swift_initStackObject();
    *(inited + 16) = v66;
    *(inited + 32) = @"queue-item-id";
    v26 = @"queue-item-id";
    *(inited + 40) = sub_1C6016900();
    *(inited + 48) = @"queue-section-id";
    v27 = @"queue-section-id";
    *(inited + 56) = sub_1C6016900();
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
    sub_1C6016880();
    v28 = sub_1C6016840();

    v29 = [v19 findPreviousEventWithTypes:v24 matchingPayload:v28];

    if (v29)
    {
      v30 = [v29 payload];
      v31 = sub_1C6016860();

      sub_1C5CFF1CC(v31, &v68);

      if (v69)
      {
        if (swift_dynamicCast())
        {
          sub_1C60150A0();
          sub_1C5CC5904();
          v32 = v59;
          sub_1C6014D50();
          v34 = v62;
          v33 = v63;
          v35 = v61;
          (*(v62 + 104))(v61, *MEMORY[0x1E69E7030], v63);
          v36 = v60;
          v37 = v55;
          MEMORY[0x1C6951840](v35, 0, 1, v55);
          (*(v34 + 8))(v35, v33);
          v38 = *(v65 + 8);
          v38(v32, v37);
          v39 = v54;
          sub_1C6014DF0();
          v40 = v64;
          MEMORY[0x1C6951850](v39, v37);
          (*(v56 + 8))(v39, v57);
          v38(v36, v37);
          sub_1C5C660B0(&qword_1EC1AA728, sub_1C5CC58A8, MEMORY[0x1E6968E80]);
          sub_1C6016830();
          swift_unknownObjectRelease();

          v38(v40, v37);
          return v68;
        }
      }

      else
      {
        sub_1C5CBCF4C(&v68);
      }

      if (qword_1EC1A9580 != -1)
      {
        swift_once();
      }

      v50 = sub_1C60162D0();
      __swift_project_value_buffer(v50, qword_1EC1BE420);
      v51 = sub_1C60162B0();
      v52 = sub_1C6016F20();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        MEMORY[0x1C6956920](v53, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EC1A9580 != -1)
      {
        swift_once();
      }

      v46 = sub_1C60162D0();
      __swift_project_value_buffer(v46, qword_1EC1BE420);
      v47 = sub_1C60162B0();
      v48 = sub_1C6016F20();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        MEMORY[0x1C6956920](v49, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v42 = sub_1C60162D0();
    __swift_project_value_buffer(v42, qword_1EC1BE420);
    v43 = sub_1C60162B0();
    v44 = sub_1C6016F20();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      MEMORY[0x1C6956920](v45, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1C5CC2F1C()
{
  v1 = sub_1C6015020();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = [*v0 type];
  v7 = sub_1C6016940();
  v9 = v8;
  if (v7 == sub_1C6016940() && v9 == v10)
  {
    goto LABEL_20;
  }

  v12 = sub_1C6017860();

  if (v12)
  {
    goto LABEL_21;
  }

  v6 = [v5 type];
  v13 = sub_1C6016940();
  v15 = v14;
  if (v13 == sub_1C6016940() && v15 == v16)
  {
    goto LABEL_20;
  }

  v18 = sub_1C6017860();

  if (v18)
  {
    goto LABEL_21;
  }

  v6 = [v5 type];
  v19 = sub_1C6016940();
  v21 = v20;
  if (v19 == sub_1C6016940() && v21 == v22)
  {
LABEL_20:
  }

  else
  {
    v24 = sub_1C6017860();

    if ((v24 & 1) == 0)
    {
      if (qword_1EC1A9580 != -1)
      {
        swift_once();
      }

      v25 = sub_1C60162D0();
      __swift_project_value_buffer(v25, qword_1EC1BE420);
      v26 = *(v0 + 16);
      v69 = *(v0 + 32);
      v70 = v26;
      v27 = v5;
      swift_unknownObjectRetain();
      sub_1C5CC57E0(&v70, v68);
      sub_1C5CC57E0(&v69, v68);
      v28 = sub_1C60162B0();
      v29 = sub_1C6016F30();
      swift_unknownObjectRelease();

      sub_1C5CC583C(&v70);
      sub_1C5CC583C(&v69);
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_31;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68[0] = v31;
      *v30 = 136446210;
      v67 = [v27 type];
      type metadata accessor for MPCPlaybackEngineEventType();
      v32 = sub_1C60169A0();
      v34 = sub_1C5C6AB10(v32, v33, v68);

      *(v30 + 4) = v34;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1C6956920](v31, -1, -1);
LABEL_30:
      MEMORY[0x1C6956920](v30, -1, -1);
LABEL_31:

      goto LABEL_37;
    }
  }

LABEL_21:
  v66 = v5;
  v35 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v37 = *(v0 + 32);
  v38 = *(v0 + 40);
  v39 = *(v0 + 16);
  v40 = *(v0 + 24);
  v41 = sub_1C5CD48E8(v37, v38, v39, v40, ObjectType);
  if (!v41)
  {
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v58 = sub_1C60162D0();
    __swift_project_value_buffer(v58, qword_1EC1BE420);
    v28 = sub_1C60162B0();
    v59 = sub_1C6016F20();
    if (!os_log_type_enabled(v28, v59))
    {
      goto LABEL_31;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    goto LABEL_30;
  }

  v42 = v41;
  v64 = v2;
  v65 = v1;
  v43 = [v35 cursorUntilEvent_];
  v44 = [v43 findPreviousEventWithType:@"item-pause" matchingPayload:0];
  if (v44)
  {
    v45 = v44;
    [v43 cursorUntilEvent_];
    swift_unknownObjectRelease();
  }

  v46 = swift_getObjectType();
  v47 = sub_1C5CD48F4(v37, v38, v39, v40, v46);
  if (v47)
  {
    v48 = v47;
    v49 = [v47 date];
    sub_1C6014FF0();

    sub_1C6014FE0();
    v51 = v50;
    v52 = v65;
    v53 = *(v64 + 8);
    v53(v4, v65);
    v54 = [v66 date];
    sub_1C6014FF0();

    sub_1C6014FE0();
    v56 = v55;
    swift_unknownObjectRelease();

    v53(v4, v52);
    *&result = v56 - v51;
    return result;
  }

  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v60 = sub_1C60162D0();
  __swift_project_value_buffer(v60, qword_1EC1BE420);
  v61 = sub_1C60162B0();
  v62 = sub_1C6016F20();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    MEMORY[0x1C6956920](v63, -1, -1);
  }

  swift_unknownObjectRelease();
LABEL_37:
  *&result = 0.0;
  return result;
}

uint64_t sub_1C5CC35F4()
{
  v1 = *v0;
  v2 = [*v0 type];
  v3 = sub_1C6016940();
  v5 = v4;
  if (v3 == sub_1C6016940() && v5 == v6)
  {
    goto LABEL_26;
  }

  v8 = sub_1C6017860();

  if (v8)
  {
    goto LABEL_27;
  }

  v2 = [v1 type];
  v9 = sub_1C6016940();
  v11 = v10;
  if (v9 == sub_1C6016940() && v11 == v12)
  {
    goto LABEL_26;
  }

  v14 = sub_1C6017860();

  if (v14)
  {
    goto LABEL_27;
  }

  v2 = [v1 type];
  v15 = sub_1C6016940();
  v17 = v16;
  if (v15 == sub_1C6016940() && v17 == v18)
  {
    goto LABEL_26;
  }

  v20 = sub_1C6017860();

  if (v20)
  {
    goto LABEL_27;
  }

  v2 = [v1 type];
  v21 = sub_1C6016940();
  v23 = v22;
  if (v21 == sub_1C6016940() && v23 == v24)
  {
LABEL_26:
  }

  else
  {
    v26 = sub_1C6017860();

    if ((v26 & 1) == 0)
    {
      if (qword_1EC1A9580 != -1)
      {
        swift_once();
      }

      v27 = sub_1C60162D0();
      __swift_project_value_buffer(v27, qword_1EC1BE420);
      v28 = *(v0 + 32);
      aBlock = *(v0 + 16);
      *v96 = v28;
      v29 = v1;
      swift_unknownObjectRetain();
      sub_1C5CC57E0(&aBlock, v95);
      sub_1C5CC57E0(v96, v95);
      v30 = sub_1C60162B0();
      v31 = sub_1C6016F10();
      swift_unknownObjectRelease();

      sub_1C5CC583C(&aBlock);
      sub_1C5CC583C(v96);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v95[0] = v33;
        *v32 = 136446210;
        v94 = [v29 type];
        type metadata accessor for MPCPlaybackEngineEventType();
        v34 = sub_1C60169A0();
        v36 = sub_1C5C6AB10(v34, v35, v95);

        *(v32 + 4) = v36;
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1C6956920](v33, -1, -1);
        MEMORY[0x1C6956920](v32, -1, -1);
      }

LABEL_25:

      return 0;
    }
  }

LABEL_27:
  v38 = [v1 type];
  v39 = sub_1C6016940();
  v41 = v40;
  if (v39 == sub_1C6016940() && v41 == v42)
  {

    return 4;
  }

  v44 = sub_1C6017860();

  if (v44)
  {
    return 4;
  }

  v45 = [v1 type];
  v46 = sub_1C6016940();
  v48 = v47;
  if (v46 == sub_1C6016940() && v48 == v49)
  {

    return 10;
  }

  v51 = sub_1C6017860();

  if (v51)
  {
    return 10;
  }

  v87 = *(v0 + 8);
  v52 = MEMORY[0x1E69E6F90];
  sub_1C5CC53A8(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C6031150;
  *(v53 + 32) = @"item-begin";
  *(v53 + 40) = @"item-resume";
  *(v53 + 48) = @"item-position-jump";
  type metadata accessor for MPCPlaybackEngineEventType();
  v54 = @"item-begin";
  v55 = @"item-resume";
  v56 = @"item-position-jump";
  v57 = sub_1C6016AF0();

  sub_1C5CC53A8(0, &unk_1ED7DCB20, sub_1C5CC540C, v52);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v59 = @"queue-section-id";
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"queue-item-id";
  v60 = @"queue-item-id";
  *(inited + 56) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  sub_1C6016880();
  v61 = sub_1C6016840();

  v62 = [v87 findPreviousEventWithTypes:v57 matchingPayload:v61];

  if (!v62)
  {
    v63 = &selRef_timeZoneWithName_;
    if (qword_1EC1A9580 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_69;
  }

  v63 = [v87 cursorUntilEvent_];
  v96[0] = 0;
  LOBYTE(v95[0]) = 0;
  LOBYTE(v94) = 0;
  v93 = 0;
  swift_getObjectType();
  v64 = swift_allocObject();
  v64[2] = v96;
  v64[3] = v95;
  v64[4] = &v94;
  v64[5] = &v93 + 1;
  v64[6] = &v93;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1C5CC5890;
  *(v65 + 24) = v64;
  v91 = sub_1C5CC58A0;
  v92 = v65;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v89 = sub_1C5D378E4;
  v90 = &block_descriptor_48;
  v66 = _Block_copy(&aBlock);

  [(SEL *)v63 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v66];
  _Block_release(v66);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_69:
    swift_once();
LABEL_47:
    v68 = sub_1C60162D0();
    __swift_project_value_buffer(v68, qword_1EC1BE420);
    v69 = v1;
    swift_unknownObjectRetain();

    v30 = sub_1C60162B0();
    v70 = sub_1C6016F10();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v30, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&aBlock = v72;
      *v71 = 136446210;
      *v96 = [v69 v63[63]];
      v73 = sub_1C60169A0();
      v75 = sub_1C5C6AB10(v73, v74, &aBlock);

      *(v71 + 4) = v75;
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x1C6956920](v72, -1, -1);
      MEMORY[0x1C6956920](v71, -1, -1);
    }

    goto LABEL_25;
  }

  if (v96[0] == 1 || LOBYTE(v95[0]) == 1)
  {

    swift_unknownObjectRelease();

    return 3;
  }

  v76 = [v1 type];
  v77 = sub_1C6016940();
  v79 = v78;
  if (v77 == sub_1C6016940() && v79 == v80)
  {
  }

  else
  {
    v82 = sub_1C6017860();

    if ((v82 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v83 = sub_1C5CD4FF8();
  if (v83)
  {
    v84 = v83;

    swift_unknownObjectRelease();

    return 6;
  }

LABEL_59:
  if (v93 == 1 || HIBYTE(v93) == 1)
  {

    swift_unknownObjectRelease();

    return 2;
  }

  else
  {
    v85 = sub_1C5CC4F6C();
    swift_unknownObjectRelease();

    if (v85 == 2 || (v85 & 1) == 0)
    {
      v86 = v94;

      if (v86)
      {
        return 13;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 1;
    }
  }
}

uint64_t sub_1C5CC4170()
{
  sub_1C5CC53A8(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1C60157F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1C5CC4804(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C5CC5754(v2);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 104))(v7, *MEMORY[0x1E69C4BD0], v3);
    sub_1C5C660B0(&unk_1EC1AA708, MEMORY[0x1E69C4BD8], MEMORY[0x1E69C4BE0]);
    v10 = sub_1C60168F0();
    v11 = *(v4 + 8);
    v11(v7, v3);
    if ((v10 & 1) == 0)
    {
      v12 = sub_1C60157E0();
      v11(v9, v3);
      return v12;
    }

    v11(v9, v3);
  }

  sub_1C5CC198C(@"podcast-page-context", &v15);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v15);
    return 0;
  }
}

uint64_t sub_1C5CC4444()
{
  v1 = [*(v0 + 8) findPreviousEventWithType:@"session-changed" matchingPayload:0];
  if (!v1)
  {
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v6 = sub_1C60162D0();
    __swift_project_value_buffer(v6, qword_1EC1BE420);
    v7 = sub_1C60162B0();
    v8 = sub_1C6016F20();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      MEMORY[0x1C6956920](v9, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v3 = [v1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v4 = sub_1C6016860();

  sub_1C5CFF1CC(v4, &v11);

  if (!v12)
  {
    sub_1C5CBCF4C(&v11);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CC4640()
{
  v1 = [v0 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v2 = sub_1C6016860();

  sub_1C5CFF1CC(v2, &v9);

  if (v10)
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v9);
  }

  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v4 = sub_1C60162D0();
  __swift_project_value_buffer(v4, qword_1EC1BE420);
  v5 = sub_1C60162B0();
  v6 = sub_1C6016F10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    MEMORY[0x1C6956920](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_1C5CC4804@<X0>(uint64_t a1@<X8>)
{
  sub_1C5CC53A8(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v32 - v4;
  ObjectType = swift_getObjectType();
  v7 = sub_1C5CD4CC8(*(v1 + 32), *(v1 + 40), ObjectType);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C5CD4FD0();
    if (v9)
    {
      sub_1C5CFF1CC(v9, v33);

      if (v34)
      {
        if (swift_dynamicCast())
        {
          v11 = v32[0];
          v10 = v32[1];

          sub_1C60157D0();
          v12 = sub_1C60157F0();
          if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
          {
            sub_1C5CC5754(v5);
            if (qword_1EC1A9580 != -1)
            {
              swift_once();
            }

            v13 = sub_1C60162D0();
            __swift_project_value_buffer(v13, qword_1EC1BE420);

            v14 = sub_1C60162B0();
            v15 = sub_1C6016F20();

            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              v17 = swift_slowAlloc();
              v33[0] = v17;
              *v16 = 136315138;
              v18 = sub_1C5C6AB10(v11, v10, v33);

              *(v16 + 4) = v18;
              __swift_destroy_boxed_opaque_existential_0(v17);
              MEMORY[0x1C6956920](v17, -1, -1);
              MEMORY[0x1C6956920](v16, -1, -1);
            }

            else
            {
            }

            v30 = a1;
            v31 = 1;
          }

          else
          {

            (*(*(v12 - 8) + 32))(a1, v5, v12);
            v30 = a1;
            v31 = 0;
          }

          v29 = v12;
          return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
        }
      }

      else
      {
        sub_1C5CBCF4C(v33);
      }
    }

    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v25 = sub_1C60162D0();
    __swift_project_value_buffer(v25, qword_1EC1BE420);
    v26 = sub_1C60162B0();
    v27 = sub_1C6016F20();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      MEMORY[0x1C6956920](v28, -1, -1);
    }

    v29 = sub_1C60157F0();
    v30 = a1;
    v31 = 1;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
  }

  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v19 = sub_1C60162D0();
  __swift_project_value_buffer(v19, qword_1EC1BE420);
  v20 = sub_1C60162B0();
  v21 = sub_1C6016F20();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    MEMORY[0x1C6956920](v22, -1, -1);
  }

  v23 = sub_1C60157F0();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
}

id sub_1C5CC4CE8(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  result = sub_1C5CC4D78();
  if ((v13 & 1) == 0)
  {
    if (result == 131)
    {
      a3 = a7;
    }

    else if (result != 3)
    {
      a3 = a5;
      if (result != 4)
      {
        a3 = a6;
        if (result != 122)
        {
          a3 = a4;
          if (result != 1)
          {
            return result;
          }
        }
      }
    }

    *a3 = 1;
  }

  return result;
}

id sub_1C5CC4D78()
{
  v1 = [v0 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v2 = sub_1C6016860();

  sub_1C5CFF1CC(v2, &v10);

  if (v11)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v3 = v9;
      v4 = [v9 integerValue];
      goto LABEL_10;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v10);
  }

  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v5 = sub_1C60162D0();
  __swift_project_value_buffer(v5, qword_1EC1BE420);
  v3 = sub_1C60162B0();
  v6 = sub_1C6016F10();
  if (os_log_type_enabled(v3, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    MEMORY[0x1C6956920](v7, -1, -1);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t sub_1C5CC4F6C()
{
  v1 = [v0 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v2 = sub_1C6016860();

  sub_1C5CFF1CC(v2, &v10);

  if (v11)
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v10);
  }

  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v4 = sub_1C60162D0();
  __swift_project_value_buffer(v4, qword_1EC1BE420);
  v5 = sub_1C60162B0();
  v6 = sub_1C6016F10();
  if (os_log_type_enabled(v5, v6))
  {
    v3 = 2;
    v7 = swift_slowAlloc();
    *v7 = 0;
    MEMORY[0x1C6956920](v7, -1, -1);
  }

  else
  {

    return 2;
  }

  return v3;
}

uint64_t sub_1C5CC5138(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C5CC51E4();
  if (v6)
  {
    sub_1C5CFF1CC(v6, &v8);

    if (*(&v9 + 1))
    {
      sub_1C5C70758(&v8, v10);
      sub_1C5CBCF4C(a4);
      sub_1C5C653C8(v10, a4);
      *a2 = 1;
      return __swift_destroy_boxed_opaque_existential_0(v10);
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  return sub_1C5CBCF4C(&v8);
}

uint64_t sub_1C5CC51E4()
{
  v1 = [v0 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v2 = sub_1C6016860();

  sub_1C5CFF1CC(v2, &v5);

  if (v6)
  {
    sub_1C5CC59D8(0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v5);
    return 0;
  }
}

uint64_t sub_1C5CC52F4()
{
  result = sub_1C6016900();
  qword_1EC1BE4B8 = result;
  return result;
}

id sub_1C5CC532C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1C6016900();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

void sub_1C5CC53A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5CC540C(uint64_t a1)
{
  if (!qword_1ED7DCD70)
  {
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7DCD70);
    }
  }
}

unint64_t sub_1C5CC547C()
{
  result = qword_1ED7DCD60;
  if (!qword_1ED7DCD60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED7DCD60);
  }

  return result;
}

void sub_1C5CC54F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1C6016840();

  [a5 recordEvent:a1 dataSource:a2 data:v9 topic:a4];
}

void sub_1C5CC55A0(uint64_t a1)
{
  if (!qword_1ED7DCC20)
  {
    sub_1C5C64D74(255, &qword_1ED7DCC30, 0x1E69E58C0);
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7DCC20);
    }
  }
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1C5CC5674(uint64_t a1)
{
  if (!qword_1EC1A8D90)
  {
    sub_1C5CC56E8(255, &qword_1EC1A9490, MEMORY[0x1E69E5E28]);
    v1 = sub_1C6016B80();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A8D90);
    }
  }
}

void sub_1C5CC56E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5CC5754(uint64_t a1)
{
  sub_1C5CC53A8(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5CC58A8(uint64_t a1)
{
  if (!qword_1EC1AA718)
  {
    sub_1C5CC5904();
    v1 = sub_1C6014D80();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AA718);
    }
  }
}

unint64_t sub_1C5CC5904()
{
  result = qword_1EC1AA720;
  if (!qword_1EC1AA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AA720);
  }

  return result;
}

uint64_t sub_1C5CC5960(uint64_t a1, uint64_t a2)
{
  sub_1C5C67444(0, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5CC59D8(uint64_t a1)
{
  if (!qword_1ED7DCF30)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    sub_1C5C660B0(&unk_1ED7DCD50, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey, &unk_1C6035A58);
    v1 = sub_1C60168A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7DCF30);
    }
  }
}

uint64_t sub_1C5CC5A78(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C5CC53A8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5CC5B1C()
{
  v0 = sub_1C6016650();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1C6016640();
  result = (*(v1 + 8))(v3, v0);
  dword_1EC1BE468 = v4;
  return result;
}

uint64_t sub_1C5CC5C0C()
{
  if (qword_1EC1A9678 != -1)
  {
    swift_once();
  }

  return dword_1EC1BE468;
}

uint64_t sub_1C5CC5C5C(void *a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v6 = Strong;
  v7 = sub_1C5CD47F0();
  if (!v8)
  {

    return 1;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1C5CD47E4();
  if (!v12)
  {

    return 1;
  }

  v19 = v11;
  v20 = v12;
  v21 = sub_1C5CD4618(a2, v12, v13, v14, v15, v16, v17, v18, v102, v103, v105, log, v111, v114, v117, v120, v124, v126[0], v126[1], v126[2], v127, v128, v129, v130);
  v22 = MEMORY[0x1E69E7CA0];
  v125 = v9;
  if (v21 != 2)
  {
    v41 = v21;
    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v42 = sub_1C60162D0();
    __swift_project_value_buffer(v42, qword_1ED7E1690);
    v43 = v6;

    v44 = sub_1C60162B0();
    v45 = sub_1C6016F30();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v126[0] = v119;
      *v46 = 136446978;
      v122 = v19;
      v47 = [v43 engineID];
      v48 = sub_1C6016940();
      v49 = v20;
      v51 = v50;

      v52 = sub_1C5C6AB10(v48, v51, v126);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2082;
      v53 = sub_1C5C6AB10(v125, v10, v126);

      *(v46 + 14) = v53;
      *(v46 + 22) = 2082;
      v54 = sub_1C5C6AB10(v122, v49, v126);

      *(v46 + 24) = v54;
      *(v46 + 32) = 2082;
      v128 = v41;
      type metadata accessor for MPCQueueControllerBehaviorType();
      v55 = sub_1C60169A0();
      v57 = sub_1C5C6AB10(v55, v56, v126);

      *(v46 + 34) = v57;
      _os_log_impl(&dword_1C5C61000, v44, v45, "[CBM:%{public}s:%{public}s:%{public}s] itemEnd | not updating bookmarking [not in a music behavior] behaviorType=%{public}s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v119, -1, -1);
      v58 = v46;
LABEL_33:
      MEMORY[0x1C6956920](v58, -1, -1);

LABEL_34:
      return 1;
    }

LABEL_35:

    return 1;
  }

  ObjectType = swift_getObjectType();
  v24 = sub_1C5CD48E8(v9, v10, v19, v20, ObjectType);
  if (!v24)
  {
LABEL_29:
    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v59 = sub_1C60162D0();
    __swift_project_value_buffer(v59, qword_1ED7E1690);
    v43 = v6;

    v44 = sub_1C60162B0();
    v60 = sub_1C6016F30();

    if (os_log_type_enabled(v44, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v126[0] = v62;
      *v61 = 136446722;
      v63 = [v43 engineID];
      v123 = v19;
      v64 = sub_1C6016940();
      v66 = v65;

      v67 = sub_1C5C6AB10(v64, v66, v126);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2082;
      v68 = sub_1C5C6AB10(v125, v10, v126);

      *(v61 + 14) = v68;
      *(v61 + 22) = 2082;
      v69 = sub_1C5C6AB10(v123, v20, v126);

      *(v61 + 24) = v69;
      _os_log_impl(&dword_1C5C61000, v44, v60, "[CBM:%{public}s:%{public}s:%{public}s] itemEnd | not updating bookmarking [item does not use bookmarking]", v61, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v62, -1, -1);
      v58 = v61;
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v25 = v24;
  v26 = sub_1C5CD5040(v24);
  if (!v26)
  {

    goto LABEL_29;
  }

  v27 = v26;
  sub_1C5CFF1CC(v26, v126);
  if (!v127)
  {

    sub_1C5CC7C1C(v126, &qword_1ED7E0200, v22 + 8);
    goto LABEL_29;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_29;
  }

  v121 = v19;
  v28 = v128;
  if (![v128 BOOLValue])
  {

    v19 = v121;
    goto LABEL_29;
  }

  v118 = v28;
  sub_1C5CFF1CC(v27, v126);
  if (!v127)
  {

    sub_1C5CC7C1C(v126, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
LABEL_44:
    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v72 = sub_1C60162D0();
    __swift_project_value_buffer(v72, qword_1ED7E1690);
    v73 = v6;

    v74 = v25;
    v75 = a1;
    v76 = sub_1C60162B0();
    v77 = sub_1C6016F30();

    if (!os_log_type_enabled(v76, v77))
    {

      return 1;
    }

    v78 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v126[0] = v116;
    *v78 = 136447234;
    v79 = [v73 engineID];
    loga = v76;
    v106 = v77;
    v80 = sub_1C6016940();
    v81 = v74;
    v83 = v82;

    v84 = sub_1C5C6AB10(v80, v83, v126);

    *(v78 + 4) = v84;
    v43 = v73;
    *(v78 + 12) = 2082;
    v85 = sub_1C5C6AB10(v125, v10, v126);

    *(v78 + 14) = v85;
    *(v78 + 22) = 2082;
    v86 = sub_1C5C6AB10(v121, v20, v126);

    *(v78 + 24) = v86;
    *(v78 + 32) = 2114;
    *(v78 + 34) = v81;
    *(v78 + 42) = 2114;
    *(v78 + 44) = v75;
    *v112 = v25;
    v112[1] = v75;
    v87 = v81;
    v88 = v75;
    _os_log_impl(&dword_1C5C61000, loga, v106, "[CBM:%{public}s:%{public}s:%{public}s] itemEnd | not updating bookmarking [could not determine item position metadata from events] itemBegin=%{public}@ itemEnd=%{public}@", v78, 0x34u);
    sub_1C5CBCFFC(0, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v112, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v116, -1, -1);
    MEMORY[0x1C6956920](v78, -1, -1);

    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    goto LABEL_44;
  }

  v115 = v20;
  v29 = v128;
  [v128 doubleValue];

  v30 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC7EC4();
  v31 = sub_1C6016860();

  sub_1C5CFF1CC(v31, v126);

  if (!v127)
  {

    v71 = MEMORY[0x1E69E7CA0] + 8;
LABEL_42:
    sub_1C5CC7C1C(v126, &qword_1ED7E0200, v71);
    goto LABEL_43;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_43:
    v20 = v115;
    goto LABEL_44;
  }

  v32 = v128;
  [v128 doubleValue];
  v34 = v33;

  v35 = [a1 payload];
  v36 = sub_1C6016860();

  sub_1C5CFF1CC(v36, v126);

  v37 = MEMORY[0x1E69E7CA0];
  if (!v127)
  {

    v71 = v37 + 8;
    goto LABEL_42;
  }

  v20 = v115;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v38 = v128;
  v39 = [v128 BOOLValue];

  sub_1C5CFF1CC(v27, v126);
  if (v127)
  {
    if (swift_dynamicCast())
    {
      v40 = v128;
      [v128 doubleValue];
    }
  }

  else
  {
    sub_1C5CC7C1C(v126, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  }

  sub_1C5CFF1CC(v27, v126);

  if (v127)
  {
    if (swift_dynamicCast())
    {
      v89 = v128;
      [v128 doubleValue];
    }
  }

  else
  {
    sub_1C5CC7C1C(v126, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  }

  if ((v39 & 1) != 0 || MPShouldIncrementPlayCountForElapsedTime())
  {
    v34 = 0.0;
    v90 = 1;
  }

  else
  {
    v90 = 0;
  }

  if (qword_1ED7DD2B0 != -1)
  {
    swift_once();
  }

  v91 = sub_1C60162D0();
  __swift_project_value_buffer(v91, qword_1ED7E1690);
  v92 = v6;

  v93 = sub_1C60162B0();
  v94 = sub_1C6016F30();

  v113 = v94;
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v126[0] = v107;
    *v95 = 136447234;
    logb = v90;
    v96 = [v92 engineID];
    v104 = sub_1C6016940();
    v98 = v97;

    v99 = sub_1C5C6AB10(v104, v98, v126);

    *(v95 + 4) = v99;
    *(v95 + 12) = 2082;
    v100 = sub_1C5C6AB10(v125, v10, v126);

    *(v95 + 14) = v100;
    *(v95 + 22) = 2082;
    v101 = sub_1C5C6AB10(v121, v115, v126);
    v90 = logb;

    *(v95 + 24) = v101;
    *(v95 + 32) = 2050;
    *(v95 + 34) = v34;
    *(v95 + 42) = 1026;
    *(v95 + 44) = logb;
    _os_log_impl(&dword_1C5C61000, v93, v113, "[CBM:%{public}s:%{public}s:%{public}s] itemEnd | updating bookmarking [] bookmarkTime=%{public}f shouldReset=%{BOOL,public}d", v95, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v107, -1, -1);
    MEMORY[0x1C6956920](v95, -1, -1);
  }

  else
  {
  }

  sub_1C5CC74F8(0, v90, a1, a2, v34);
  return 1;
}

uint64_t sub_1C5CC6A68(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), const char *a5, int a6, uint64_t (*a7)(void), const char *a8, const char *a9, const char *a10)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v18 = Strong;
  LODWORD(format) = a6;
  v19 = sub_1C5CD47F0();
  if (!v20)
  {

    return 1;
  }

  v21 = v19;
  v22 = v20;
  v23 = sub_1C5CD47E4();
  if (!v24)
  {

    return 1;
  }

  v31 = sub_1C5CD4618(a2, v24, v25, v26, v27, v28, v29, v30, v169, v176, v184, v192, v200, v21, v23, v24, format, v224[0], v224[1], v224[2], v225, v226, v227, v228);
  if (v31 != 2)
  {
    v74 = v31;
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
    }

    v75 = sub_1C60162D0();
    __swift_project_value_buffer(v75, qword_1ED7E1690);
    v76 = v18;

    v77 = v218;

    v78 = sub_1C60162B0();
    v79 = a7();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v224[0] = v203;
      *v80 = 136446978;
      v81 = [v76 engineID];
      v82 = sub_1C6016940();
      v84 = v83;

      v85 = sub_1C5C6AB10(v82, v84, v224);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2082;
      v94 = OUTLINED_FUNCTION_3_3(v86, v87, v88, v89, v90, v91, v92, v93, v170, v177, v185, v193, v203, v208, v213, v218, a10);

      *(v80 + 14) = v94;
      *(v80 + 22) = 2082;
      v103 = OUTLINED_FUNCTION_5_2(v95, v96, v97, v98, v99, v100, v101, v102, v172, v181, v189, v196, v204, v210, v215);
      v105 = sub_1C5C6AB10(v103, v77, v104);

      *(v80 + 24) = v105;
      *(v80 + 32) = 2082;
      v226 = v74;
      type metadata accessor for MPCQueueControllerBehaviorType();
      v106 = sub_1C60169A0();
      v108 = sub_1C5C6AB10(v106, v107, v224);

      *(v80 + 34) = v108;
      _os_log_impl(&dword_1C5C61000, v78, v79, formatb, v80, 0x2Au);
      swift_arrayDestroy();
LABEL_32:
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();

LABEL_33:
      return 1;
    }

LABEL_34:

    return 1;
  }

  ObjectType = swift_getObjectType();
  v33 = v218;
  v34 = sub_1C5CD48E8(v208, v22, v213, v218, ObjectType);
  if (!v34)
  {
LABEL_28:
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
    }

    v109 = sub_1C60162D0();
    __swift_project_value_buffer(v109, qword_1ED7E1690);
    v76 = v18;

    v78 = sub_1C60162B0();
    v110 = a7();

    if (os_log_type_enabled(v78, v110))
    {
      v111 = swift_slowAlloc();
      v224[0] = swift_slowAlloc();
      *v111 = 136446722;
      v112 = [v76 engineID];
      v113 = v33;
      v114 = sub_1C6016940();
      v116 = v115;

      v117 = sub_1C5C6AB10(v114, v116, v224);

      *(v111 + 4) = v117;
      *(v111 + 12) = 2082;
      v126 = OUTLINED_FUNCTION_3_3(v118, v119, v120, v121, v122, v123, v124, v125, v170, v177, v185, v193, v201, v208, v213, v218, a9);

      *(v111 + 14) = v126;
      *(v111 + 22) = 2082;
      v135 = OUTLINED_FUNCTION_5_2(v127, v128, v129, v130, v131, v132, v133, v134, v173, v182, v190, v197, v205, v211, v216);
      v137 = sub_1C5C6AB10(v135, v113, v136);

      *(v111 + 24) = v137;
      _os_log_impl(&dword_1C5C61000, v78, v110, formatc, v111, 0x20u);
      swift_arrayDestroy();
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  v35 = v34;
  v36 = sub_1C5CD5040(v34);
  if (!v36)
  {
    goto LABEL_26;
  }

  v201 = v35;
  sub_1C5CFF1CC(v36, v224);

  if (!v225)
  {

    sub_1C5CC7C1C(v224, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
LABEL_27:
    v33 = v218;
    goto LABEL_28;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  v35 = v226;
  if (![v226 BOOLValue])
  {

    goto LABEL_26;
  }

  v194 = v35;
  v178 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  v186 = v37;
  sub_1C5CC7EC4();
  v38 = sub_1C6016860();

  sub_1C5CFF1CC(v38, v224);

  if (!v225)
  {
    sub_1C5CC7C1C(v224, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    v39 = v218;
    goto LABEL_37;
  }

  v39 = v218;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
    }

    v139 = sub_1C60162D0();
    __swift_project_value_buffer(v139, qword_1ED7E1690);
    v76 = v18;

    v140 = sub_1C60162B0();
    v141 = a7();

    if (!os_log_type_enabled(v140, v141))
    {

      return 1;
    }

    v142 = swift_slowAlloc();
    formatd = swift_slowAlloc();
    v224[0] = formatd;
    *v142 = 136446722;
    v143 = [v76 engineID];
    v144 = v39;
    v145 = sub_1C6016940();
    v147 = v146;

    v148 = sub_1C5C6AB10(v145, v147, v224);

    *(v142 + 4) = v148;
    *(v142 + 12) = 2082;
    v157 = OUTLINED_FUNCTION_3_3(v149, v150, v151, v152, v153, v154, v155, v156, v170, v178, v186, v194, v201, v208, v213, v218, formatd);

    *(v142 + 14) = v157;
    *(v142 + 22) = 2082;
    v166 = OUTLINED_FUNCTION_5_2(v158, v159, v160, v161, v162, v163, v164, v165, v174, v183, v191, v198, v206, v212, v217);
    v168 = sub_1C5C6AB10(v166, v144, v167);

    *(v142 + 24) = v168;
    _os_log_impl(&dword_1C5C61000, v140, v141, a8, v142, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    goto LABEL_33;
  }

  v40 = v226;
  [v226 doubleValue];
  v42 = v41;

  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
  }

  v43 = sub_1C60162D0();
  __swift_project_value_buffer(v43, qword_1ED7E1690);
  v44 = v18;

  v45 = sub_1C60162B0();
  v46 = a4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v224[0] = v179;
    *v47 = 136446978;
    HIDWORD(v170) = v46;
    v48 = v218;
    v49 = [v44 engineID];
    v187 = v44;
    v50 = sub_1C6016940();
    v52 = v51;

    v53 = sub_1C5C6AB10(v50, v52, v224);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2082;
    v62 = OUTLINED_FUNCTION_3_3(v54, v55, v56, v57, v58, v59, v60, v61, v170, v179, v187, v194, v201, v208, v213, v218, formata);

    *(v47 + 14) = v62;
    v44 = v188;
    *(v47 + 22) = 2082;
    v71 = OUTLINED_FUNCTION_5_2(v63, v64, v65, v66, v67, v68, v69, v70, v171, v180, v188, v195, v202, v209, v214);
    v73 = sub_1C5C6AB10(v71, v48, v72);

    *(v47 + 24) = v73;
    *(v47 + 32) = 2050;
    *(v47 + 34) = v42;
    _os_log_impl(&dword_1C5C61000, v45, v175, a5, v47, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
  }

  sub_1C5CC74F8(formata & 1, 0, a1, a2, v42);
  return 1;
}

void sub_1C5CC74F8(int a1, int a2, void *a3, uint64_t a4, double a5)
{
  v10 = sub_1C6015020();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5CD51AC(a4, v51);
  v14 = v51[0];
  if (v51[0] != 1)
  {
    v46 = v11;
    v47 = v10;
    v48 = a2;
    v49 = a1;
    v16 = v51[1];
    v15 = v51[2];
    v18 = v52;
    v17 = v53;
    v54 = v52;
    v55 = v51[0];
    sub_1C5CC7ADC(v51, v50);
    sub_1C5CC7B50(&v54, v50);
    sub_1C5CC7BCC(&v55, &qword_1EC1A8C50, &qword_1ED7DBB70, 0x1E69705E8);
    v56 = v16;
    sub_1C5CC7BCC(&v56, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
    v57 = v15;
    sub_1C5CC7BCC(&v57, &qword_1EC1A8B60, &unk_1EC1A8B68, 0x1E69705E0);
    sub_1C5CC7BCC(&v54, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
    v58 = v17;
    sub_1C5CC7BCC(&v58, &unk_1EC1A8CA0, &qword_1EC1A8CB0, 0x1E69705D0);
    v19 = v54;
    if (v54)
    {
      sub_1C5CC7ADC(v51, v50);

      if (v17)
      {
        v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v21 = sub_1C6016940();
        sub_1C5CC7D40(v20, v21, v22, 0, v17);
      }

      v23 = [v19 universalStore];
      if (!v23 || (v24 = [v23 subscriptionAdamID], swift_unknownObjectRelease(), !v24))
      {
        v25 = [v19 universalStore];
        if (!v25)
        {
          goto LABEL_20;
        }

        v24 = [v25 adamID];
        swift_unknownObjectRelease();
        if (!v24)
        {
          goto LABEL_20;
        }
      }

      v26 = [objc_opt_self() ubiquitousIdentifierWithStoreAdamID_];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1C6016940();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = objc_allocWithZone(MEMORY[0x1E6970A10]);
      v32 = sub_1C5CC7C6C(v28, v30);
      if (v32)
      {
        v33 = v32;
        v34 = [a3 date];
        sub_1C6014FF0();

        sub_1C6014FE0();
        v36 = v35;
        (*(v46 + 8))(v13, v47);
        [v33 setBookmarkTimestamp_];
        [v33 setBookmarkTime_];
        [v33 setHasBeenPlayed_];
        v37 = v49;
        if (v14)
        {
          v38 = v14;
          sub_1C5CC7CD0(v38);
          if (v39)
          {
            v40 = sub_1C6016900();

            [v33 setLibraryIdentifier_];
          }

          v41 = [v38 userIdentity];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 DSID];
            [v33 setAccountDSID_];
          }
        }

        v44 = [objc_opt_self() sharedUbiquitousPlaybackPositionController];
        [v44 persistPlaybackPositionMetadataEntity:v33 isCheckpoint:v37 & 1 completion:0];
        sub_1C5CC7C1C(v51, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
        sub_1C5CC7BCC(&v54, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
      }

      else
      {
LABEL_20:
        sub_1C5CC7C1C(v51, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
        sub_1C5CC7BCC(&v54, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
      }
    }

    else
    {
      sub_1C5CC7C1C(v51, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
    }
  }
}

id sub_1C5CC7A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookmarkingConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5CC7ADC(uint64_t a1, uint64_t a2)
{
  sub_1C5C67444(0, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5CC7B50(uint64_t a1, uint64_t a2)
{
  sub_1C5CBCFFC(0, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5CC7BCC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  sub_1C5CBCFFC(0, a2, a3, a4);
  OUTLINED_FUNCTION_6_1();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1C5CC7C1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1C5C67444(0, a2, a3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_1C5CC7C6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C6016900();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithUbiquitousIdentifier_];

  return v4;
}

uint64_t sub_1C5CC7CD0(void *a1)
{
  v2 = [a1 uniqueIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016940();

  return v3;
}

void sub_1C5CC7D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C6016900();

  [a5 setValue:a1 forProperty:v8 withCompletionBlock:a4];
}

unint64_t sub_1C5CC7EC4()
{
  result = qword_1ED7DCDA0;
  if (!qword_1ED7DCDA0)
  {
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCDA0);
  }

  return result;
}

uint64_t sub_1C5CC7F24()
{
  v0 = sub_1C6016650();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1C6016640();
  result = (*(v1 + 8))(v3, v0);
  dword_1EC1BE48C = v4;
  return result;
}

uint64_t sub_1C5CC8014()
{
  if (qword_1EC1A96D0 != -1)
  {
    swift_once();
  }

  return dword_1EC1BE48C;
}

uint64_t sub_1C5CC807C(void *a1, uint64_t a2, char *a3)
{
  sub_1C5C671CC(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1C5CD47F0();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = sub_1C5CD47E4();
      if (v16)
      {
        v23 = v16;
        v24 = sub_1C5CD4618(a2, v16, v17, v18, v19, v20, v21, v22, v143, v144, v145, v146, v147, ObjectType, v149, v15, v13, v152, v153, v154, v155, v156, v157, *(&v157 + 1));
        v25 = MEMORY[0x1E69E7CA0];
        if (v24 == 2)
        {
          v26 = sub_1C5CD4A44();
          if (v26)
          {
            v149 = v26;
            ObjectType = swift_getObjectType();
            v27 = sub_1C5CD48E8(v151, v14, v150, v23, ObjectType);
            if (v27)
            {
              v28 = v27;
              v29 = sub_1C5CD5040(v27);
              if (v29)
              {
                v30 = v29;
                v146 = v28;
                v147 = v23;
                v31 = v25;
                v32 = [a1 payload];
                type metadata accessor for MPCPlaybackEngineEventPayloadKey();
                v34 = v33;
                v144 = sub_1C5C660F8(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
                v145 = v34;
                v35 = sub_1C6016860();

                sub_1C5CFF1CC(v35, &v157);

                if (*(&v158 + 1))
                {
                  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
                  if (swift_dynamicCast())
                  {
                    v36 = v152;
                    [v152 doubleValue];
                    v38 = v37;

                    sub_1C5CFF1CC(v30, &v157);

                    if (*(&v158 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v39 = v152;
                        [v152 doubleValue];
                        v41 = v40;

                        v42 = MEMORY[0x1E69E7CA0];
                        goto LABEL_36;
                      }

                      v42 = MEMORY[0x1E69E7CA0];
                    }

                    else
                    {
                      v42 = MEMORY[0x1E69E7CA0];
                      sub_1C5CCB5EC(&v157, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
                    }

                    v41 = 0.0;
LABEL_36:
                    v74 = v147;
                    if (v38 - v41 >= 5.0)
                    {
                      v92 = sub_1C5CD4CC8(v151, v14, ObjectType);
                      if (v92)
                      {
                        v93 = v42;
                        v94 = v92;
                        v95 = [v92 payload];
                        v96 = sub_1C6016860();

                        sub_1C5CFF1CC(v96, &v157);

                        if (*(&v158 + 1))
                        {
                          ObjectType = v94;
                          if (swift_dynamicCast())
                          {
                            v98 = v152;
                            v97 = v153;
                            v99 = sub_1C5CD5230();
                            if (v99)
                            {
                              v100 = v99;
                              v101 = v147;

                              v102 = [v10 engineID];
                              v103 = sub_1C6016940();
                              v105 = v104;

                              v106 = sub_1C6016C30();
                              __swift_storeEnumTagSinglePayload(v8, 1, 1, v106);
                              v107 = swift_allocObject();
                              v108 = v158;
                              *(v107 + 104) = v157;
                              *(v107 + 16) = 0;
                              *(v107 + 24) = 0;
                              *(v107 + 32) = v100;
                              *(v107 + 40) = v103;
                              v109 = v150;
                              v110 = v151;
                              *(v107 + 48) = v105;
                              *(v107 + 56) = v110;
                              *(v107 + 64) = v14;
                              *(v107 + 72) = v109;
                              *(v107 + 80) = v101;
                              *(v107 + 88) = a3;
                              v111 = v149;
                              *(v107 + 96) = v149;
                              *(v107 + 120) = v108;
                              *(v107 + 136) = v159;
                              v112 = v100;
                              v113 = a3;
                              v114 = v111;
                              sub_1C5CC7ADC(&v157, &v152);
                              sub_1C5CDC270();

                              sub_1C5CCB5EC(&v157, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);

                              return 1;
                            }

                            v145 = v98;
                            v125 = v147;
                            v126 = v97;
                            if (qword_1ED7DD2B0 != -1)
                            {
                              swift_once();
                            }

                            v127 = sub_1C60162D0();
                            __swift_project_value_buffer(v127, qword_1ED7E1690);
                            v128 = v10;

                            v129 = v125;

                            v130 = sub_1C60162B0();
                            v131 = sub_1C6016F30();

                            if (os_log_type_enabled(v130, v131))
                            {
                              v132 = swift_slowAlloc();
                              v133 = swift_slowAlloc();
                              *&v157 = v133;
                              *v132 = 136446978;
                              v134 = v126;
                              v135 = [v128 engineID];
                              v136 = sub_1C6016940();
                              v144 = v128;
                              v138 = v137;

                              v139 = sub_1C5C6AB10(v136, v138, &v157);

                              *(v132 + 4) = v139;
                              *(v132 + 12) = 2082;
                              v140 = sub_1C5C6AB10(v151, v14, &v157);

                              *(v132 + 14) = v140;
                              *(v132 + 22) = 2082;
                              v141 = sub_1C5C6AB10(v150, v129, &v157);

                              *(v132 + 24) = v141;
                              *(v132 + 32) = 2082;
                              v142 = sub_1C5C6AB10(v145, v134, &v157);

                              *(v132 + 34) = v142;
                              _os_log_impl(&dword_1C5C61000, v130, v131, "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [could not find library] accountIdentifier=%{public}s", v132, 0x2Au);
                              swift_arrayDestroy();
                              MEMORY[0x1C6956920](v133, -1, -1);
                              MEMORY[0x1C6956920](v132, -1, -1);

                              v124 = v144;
                              goto LABEL_56;
                            }

LABEL_55:
                            v124 = v149;
LABEL_56:

                            return 1;
                          }
                        }

                        else
                        {

                          sub_1C5CCB5EC(&v157, &qword_1ED7E0200, v93 + 8);
                        }

                        v74 = v147;
                      }

                      if (qword_1ED7DD2B0 != -1)
                      {
                        swift_once();
                      }

                      v115 = sub_1C60162D0();
                      __swift_project_value_buffer(v115, qword_1ED7E1690);
                      v62 = v10;

                      v76 = sub_1C60162B0();
                      v116 = sub_1C6016F30();

                      if (os_log_type_enabled(v76, v116))
                      {
                        v78 = swift_slowAlloc();
                        v79 = swift_slowAlloc();
                        *&v157 = v79;
                        *v78 = 136446722;
                        v117 = [v62 engineID];
                        v118 = sub_1C6016940();
                        v120 = v119;

                        v121 = sub_1C5C6AB10(v118, v120, &v157);

                        *(v78 + 4) = v121;
                        *(v78 + 12) = 2082;
                        v122 = sub_1C5C6AB10(v151, v14, &v157);

                        *(v78 + 14) = v122;
                        *(v78 + 22) = 2082;
                        v123 = sub_1C5C6AB10(v150, v74, &v157);

                        *(v78 + 24) = v123;
                        v87 = "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [could not find account to update]";
                        v88 = v116;
                        v89 = v76;
                        v90 = v78;
                        v91 = 32;
                        goto LABEL_53;
                      }
                    }

                    else
                    {
                      if (qword_1ED7DD2B0 != -1)
                      {
                        swift_once();
                      }

                      v75 = sub_1C60162D0();
                      __swift_project_value_buffer(v75, qword_1ED7E1690);
                      v62 = v10;

                      v76 = sub_1C60162B0();
                      v77 = sub_1C6016F30();

                      if (os_log_type_enabled(v76, v77))
                      {
                        v78 = swift_slowAlloc();
                        v79 = swift_slowAlloc();
                        *&v157 = v79;
                        *v78 = 136447490;
                        v80 = [v62 engineID];
                        v81 = sub_1C6016940();
                        v83 = v82;

                        v84 = sub_1C5C6AB10(v81, v83, &v157);

                        *(v78 + 4) = v84;
                        *(v78 + 12) = 2082;
                        v85 = sub_1C5C6AB10(v151, v14, &v157);

                        *(v78 + 14) = v85;
                        *(v78 + 22) = 2082;
                        v86 = sub_1C5C6AB10(v150, v74, &v157);

                        *(v78 + 24) = v86;
                        *(v78 + 32) = 2050;
                        *(v78 + 34) = v41;
                        *(v78 + 42) = 2050;
                        *(v78 + 44) = v38;
                        *(v78 + 52) = 2050;
                        *(v78 + 54) = 0x4014000000000000;
                        v87 = "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [does not meet threshold] startBoundary=%{public}f endPosition=%{public}f threshold=%{public}f";
                        v88 = v77;
                        v89 = v76;
                        v90 = v78;
                        v91 = 62;
LABEL_53:
                        _os_log_impl(&dword_1C5C61000, v89, v88, v87, v90, v91);
                        swift_arrayDestroy();
                        MEMORY[0x1C6956920](v79, -1, -1);
                        MEMORY[0x1C6956920](v78, -1, -1);

                        goto LABEL_29;
                      }
                    }

                    goto LABEL_55;
                  }
                }

                else
                {

                  sub_1C5CCB5EC(&v157, &qword_1ED7E0200, v31 + 8);
                }

                v23 = v147;
              }

              else
              {
              }
            }

            else
            {
            }
          }

          if (qword_1ED7DD2B0 != -1)
          {
            swift_once();
          }

          v61 = sub_1C60162D0();
          __swift_project_value_buffer(v61, qword_1ED7E1690);
          v62 = v10;

          v46 = sub_1C60162B0();
          v63 = sub_1C6016F30();

          if (os_log_type_enabled(v46, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *&v157 = v65;
            *v64 = 136446722;
            v66 = [v62 engineID];
            v67 = sub_1C6016940();
            v69 = v68;

            v70 = sub_1C5C6AB10(v67, v69, &v157);

            *(v64 + 4) = v70;
            *(v64 + 12) = 2082;
            v71 = sub_1C5C6AB10(v151, v14, &v157);

            *(v64 + 14) = v71;
            *(v64 + 22) = 2082;
            v72 = sub_1C5C6AB10(v150, v23, &v157);

            *(v64 + 24) = v72;
            _os_log_impl(&dword_1C5C61000, v46, v63, "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [could not find item metadata]", v64, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1C6956920](v65, -1, -1);
            MEMORY[0x1C6956920](v64, -1, -1);

LABEL_29:
            return 1;
          }

LABEL_31:
          return 1;
        }

        v43 = v24;
        if (qword_1ED7DD2B0 != -1)
        {
          swift_once();
        }

        v44 = sub_1C60162D0();
        __swift_project_value_buffer(v44, qword_1ED7E1690);
        v45 = v10;

        v46 = sub_1C60162B0();
        v47 = sub_1C6016F30();

        if (!os_log_type_enabled(v46, v47))
        {

          goto LABEL_31;
        }

        v48 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *&v157 = v149;
        *v48 = 136446978;
        v49 = [v45 engineID];
        v50 = sub_1C6016940();
        v51 = v23;
        v53 = v52;

        v54 = sub_1C5C6AB10(v50, v53, &v157);

        *(v48 + 4) = v54;
        *(v48 + 12) = 2082;
        v55 = sub_1C5C6AB10(v151, v14, &v157);

        *(v48 + 14) = v55;
        *(v48 + 22) = 2082;
        v56 = sub_1C5C6AB10(v150, v51, &v157);

        *(v48 + 24) = v56;
        *(v48 + 32) = 2082;
        v152 = v43;
        type metadata accessor for MPCQueueControllerBehaviorType();
        v57 = sub_1C60169A0();
        v59 = sub_1C5C6AB10(v57, v58, &v157);

        *(v48 + 34) = v59;
        _os_log_impl(&dword_1C5C61000, v46, v47, "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [not in a music behavior] behaviorType=%{public}s", v48, 0x2Au);
        v60 = v149;
        swift_arrayDestroy();
        MEMORY[0x1C6956920](v60, -1, -1);
        MEMORY[0x1C6956920](v48, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_1C5CC900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v14;
  *(v8 + 328) = v13;
  *(v8 + 312) = v12;
  *(v8 + 296) = a7;
  *(v8 + 304) = a8;
  *(v8 + 280) = a5;
  *(v8 + 288) = a6;
  *(v8 + 272) = a4;
  v9 = sub_1C6015100();
  *(v8 + 352) = v9;
  *(v8 + 360) = *(v9 - 8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CC910C, 0, 0);
}

uint64_t sub_1C5CC910C()
{
  v24 = v0;
  v1 = [*(v0 + 272) playbackHistoryPlaylist];
  *(v0 + 392) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    *v2 = v0;
    v2[1] = sub_1C5CC93D0;
    v4 = *(v0 + 336);
    v3 = *(v0 + 344);
    v5 = *(v0 + 272);

    return sub_1C5CCAC6C(v4, v5, v3);
  }

  else
  {
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
    }

    v7 = *(v0 + 272);
    v8 = sub_1C60162D0();
    __swift_project_value_buffer(v8, qword_1ED7E1690);

    v9 = v7;
    v10 = sub_1C60162B0();
    v11 = sub_1C6016F30();

    if (os_log_type_enabled(v10, v11))
    {
      v21 = *(v0 + 312);
      v22 = *(v0 + 320);
      v12 = *(v0 + 296);
      v20 = *(v0 + 304);
      v14 = *(v0 + 280);
      v13 = *(v0 + 288);
      v15 = *(v0 + 272);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = OUTLINED_FUNCTION_20_0();
      *v16 = 136446978;
      *(v16 + 4) = sub_1C5C6AB10(v14, v13, &v23);
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1C5C6AB10(v12, v20, &v23);
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_1C5C6AB10(v21, v22, &v23);
      *(v16 + 32) = 2114;
      *(v16 + 34) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_1C5C61000, v10, v11, "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [could not find playback history playlist] mediaLibrary=%{public}@", v16, 0x2Au);
      sub_1C5CB5700(v17);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    OUTLINED_FUNCTION_22_1();

    OUTLINED_FUNCTION_172();

    return v19();
  }
}

uint64_t sub_1C5CC93D0()
{
  OUTLINED_FUNCTION_248();
  v2 = *v1;
  v2[51] = v3;
  v2[52] = v4;
  v2[53] = v0;

  if (v0)
  {
    v5 = sub_1C5CCA6A8;
  }

  else
  {
    v5 = sub_1C5CC94E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C5CC94E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, os_log_t log, unint64_t a15, void *a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_15_3();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_23_2();
  a26 = v28;
  v31 = *(v28 + 408);
  if (!v31)
  {
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
    }

    v60 = *(v28 + 336);
    v61 = *(v28 + 272);
    v62 = sub_1C60162D0();
    __swift_project_value_buffer(v62, qword_1ED7E1690);

    v63 = v61;
    v64 = v60;
    v58 = sub_1C60162B0();
    v65 = sub_1C6016F20();

    v66 = os_log_type_enabled(v58, v65);
    v67 = *(v28 + 392);
    if (v66)
    {
      v68 = *(v28 + 336);
      log = *(v28 + 312);
      a15 = *(v28 + 320);
      a12 = *(v28 + 296);
      a13 = *(v28 + 304);
      v70 = *(v28 + 280);
      v69 = *(v28 + 288);
      v71 = *(v28 + 272);
      a16 = *(v28 + 392);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      a17 = OUTLINED_FUNCTION_20_0();
      *v72 = 136447234;
      *(v72 + 4) = sub_1C5C6AB10(v70, v69, &a17);
      *(v72 + 12) = 2082;
      *(v72 + 14) = sub_1C5C6AB10(a12, a13, &a17);
      *(v72 + 22) = 2082;
      *(v72 + 24) = sub_1C5C6AB10(log, a15, &a17);
      *(v72 + 32) = 2114;
      *(v72 + 34) = v71;
      *(v72 + 42) = 2114;
      *(v72 + 44) = v68;
      *v73 = v71;
      v73[1] = v68;
      v74 = v71;
      v75 = v68;
      _os_log_impl(&dword_1C5C61000, v58, v65, "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [failed to find item] mediaLibrary=%{public}@ itemIdentifiers=%{public}@", v72, 0x34u);
      OUTLINED_FUNCTION_1_3(v76, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
      v67 = a16;
    }

    goto LABEL_13;
  }

  v32 = *(v28 + 416);
  v33 = *(v28 + 392);

  v34 = [v33 items];
  sub_1C5C64D74(0, &qword_1EC1A8CB0, 0x1E69705D0);
  v35 = sub_1C6016B10();

  v36 = sub_1C5CFB9B4(v35);
  *(v28 + 432) = v36;

  if (v36)
  {
    v37 = v32;
    v38 = v36;
    v39 = sub_1C60172D0();

    if (v39)
    {

      if (qword_1ED7DD2B0 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
      }

      v40 = *(v28 + 272);
      v41 = sub_1C60162D0();
      __swift_project_value_buffer(v41, qword_1ED7E1690);
      v42 = v37;
      v43 = v38;

      v44 = v40;
      v45 = sub_1C60162B0();
      v46 = sub_1C6016F30();

      if (!os_log_type_enabled(v45, v46))
      {

        goto LABEL_14;
      }

      a16 = *(v28 + 392);
      a12 = *(v28 + 320);
      a13 = *(v28 + 416);
      a10 = *(v28 + 304);
      a11 = *(v28 + 312);
      a9 = *(v28 + 296);
      v47 = *(v28 + 280);
      v48 = *(v28 + 288);
      log = v45;
      v49 = *(v28 + 272);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      a15 = OUTLINED_FUNCTION_20_0();
      a17 = a15;
      OUTLINED_FUNCTION_25_0(4.8757e-34);
      *(v50 + 4) = sub_1C5C6AB10(v47, v48, v52);
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_1C5C6AB10(a9, a10, &a17);
      *(v50 + 22) = 2082;
      v53 = sub_1C5C6AB10(a11, a12, &a17);
      OUTLINED_FUNCTION_7_4(v53);
      *(v50 + 34) = v49;
      *(v50 + 42) = v54;
      *(v50 + 44) = v42;
      *v51 = v49;
      v51[1] = a13;
      *(v50 + 52) = v54;
      *(v50 + 54) = v43;
      v51[2] = v36;
      v55 = v42;
      v56 = v43;
      v57 = v49;
      v58 = log;
      _os_log_impl(&dword_1C5C61000, log, v46, "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | not updating playback history [item was last played item] mediaLibrary=%{public}@ mediaItem=%{public}@ lastMediaItem=%{public}@", v50, 0x3Eu);
      OUTLINED_FUNCTION_1_3(v59, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_6();

LABEL_13:
LABEL_14:
      OUTLINED_FUNCTION_22_1();

      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_8_3();

      return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, log, a15, a16, a17, a18, a19, a20);
    }
  }

  else
  {
    v86 = v32;
  }

  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
  }

  v87 = *(v28 + 272);
  v88 = sub_1C60162D0();
  *(v28 + 440) = __swift_project_value_buffer(v88, qword_1ED7E1690);
  v89 = v32;

  v90 = v87;
  v91 = sub_1C60162B0();
  v92 = sub_1C6016F30();

  if (os_log_type_enabled(v91, v92))
  {
    loga = *(v28 + 320);
    v110 = *(v28 + 416);
    v93 = *(v28 + 296);
    v107 = *(v28 + 304);
    v108 = *(v28 + 312);
    v111 = v89;
    v95 = *(v28 + 280);
    v94 = *(v28 + 288);
    v96 = *(v28 + 272);
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    a17 = OUTLINED_FUNCTION_20_0();
    *v97 = 136447234;
    *(v97 + 4) = sub_1C5C6AB10(v95, v94, &a17);
    *(v97 + 12) = 2082;
    *(v97 + 14) = sub_1C5C6AB10(v93, v107, &a17);
    *(v97 + 22) = 2082;
    v89 = v111;
    *(v97 + 24) = sub_1C5C6AB10(v108, loga, &a17);
    *(v97 + 32) = 2114;
    *(v97 + 34) = v96;
    *(v97 + 42) = 2114;
    *(v97 + 44) = v111;
    *v98 = v96;
    v98[1] = v110;
    v99 = v111;
    v100 = v96;
    _os_log_impl(&dword_1C5C61000, v91, v92, "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | adding item to playback history [] mediaLibrary=%{public}@ mediaItem=%{public}@", v97, 0x34u);
    OUTLINED_FUNCTION_1_3(v101, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
  }

  v102 = *(v28 + 392);
  *(v28 + 80) = v28;
  *(v28 + 120) = v28 + 497;
  *(v28 + 88) = sub_1C5CC9D08;
  v103 = swift_continuation_init();
  sub_1C5CCB6B0();
  *(v28 + 264) = v104;
  *(v28 + 208) = MEMORY[0x1E69E9820];
  *(v28 + 216) = 1107296256;
  *(v28 + 224) = sub_1C5DF56F0;
  *(v28 + 232) = &block_descriptor_23;
  *(v28 + 240) = v103;
  [v102 appendItem:v89 completion:v28 + 208];
  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x1EEE6DEC8](v105);
}

uint64_t sub_1C5CC9D08()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5CC9DDC, 0, 0);
}

uint64_t sub_1C5CCA2F4()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5CCA3C8, 0, 0);
}

uint64_t sub_1C5CCA3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, void (*a13)(void *, uint64_t), uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_15_3();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_23_2();
  a26 = v28;
  v31 = *(v28 + 480);
  v32 = *(v28 + 496);

  if (v32 == 1)
  {
    v33 = *(v28 + 392);
    (*(v28 + 472))(*(v28 + 384), *(v28 + 352));
  }

  else
  {
    (*(v28 + 456))(*(v28 + 368), *(v28 + 384), *(v28 + 352));

    v34 = sub_1C60162B0();
    v35 = sub_1C6016F20();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v28 + 472);
    v38 = *(v28 + 384);
    v39 = *(v28 + 392);
    v40 = *(v28 + 368);
    v41 = *(v28 + 352);
    if (v36)
    {
      a11 = *(v28 + 312);
      a12 = *(v28 + 320);
      a10 = *(v28 + 304);
      HIDWORD(a14) = v35;
      v43 = *(v28 + 288);
      v42 = *(v28 + 296);
      a13 = *(v28 + 472);
      a16 = *(v28 + 384);
      v44 = swift_slowAlloc();
      a15 = v39;
      a17 = swift_slowAlloc();
      *v44 = 136446978;
      v45 = OUTLINED_FUNCTION_24_1();
      *(v44 + 4) = sub_1C5C6AB10(v45, v43, v46);
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_1C5C6AB10(v42, a10, &a17);
      *(v44 + 22) = 2082;
      *(v44 + 24) = sub_1C5C6AB10(a11, a12, &a17);
      *(v44 + 32) = 2082;
      OUTLINED_FUNCTION_2_5();
      sub_1C5C660F8(v47, v48, MEMORY[0x1E6969B98]);
      sub_1C60177D0();
      v50 = v49;
      a13(v40, v41);
      v51 = OUTLINED_FUNCTION_24_1();
      v53 = sub_1C5C6AB10(v51, v50, v52);

      *(v44 + 34) = v53;
      _os_log_impl(&dword_1C5C61000, v34, BYTE4(a14), "[CPH:%{public}s:%{public}s:%{public}s] itemEnd | failed updating playback history [unable to trim the history playlist] removeIndexes=%{public}s", v44, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();

      a13(a16, v41);
    }

    else
    {

      v37(v40, v41);
      v37(v38, v41);
    }
  }

  OUTLINED_FUNCTION_22_1();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_8_3();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1C5CCAC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  *(v3 + 152) = a1;
  *(v3 + 176) = *(a3 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1C5CCAC98, 0, 0);
}

uint64_t sub_1C5CCAC98()
{
  v1 = **(v0 + 168);
  if (v1 >= 2 && (v10 = *(v0 + 176), v9 = *(v0 + 184), v11 = *(v0 + 160), sub_1C5C64D74(0, &qword_1ED7DBB70, 0x1E69705E8), v12 = v11, v13 = v1, v14 = sub_1C60172D0(), v12, v13, (v14 & 1) != 0) && v10 && v9)
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    OUTLINED_FUNCTION_172();
    v21 = v17;
    v18 = v15;
    v19 = v16;

    return v21(v15, v16);
  }

  else
  {
    v2 = *(v0 + 152);
    v3 = [objc_allocWithZone(MEMORY[0x1E69706C0]) init];
    *(v0 + 192) = v3;
    v4 = [objc_allocWithZone(MEMORY[0x1E6970818]) init];
    *(v0 + 200) = v4;
    sub_1C5C64D74(0, &qword_1EC1A92B0, 0x1E696AEC0);
    v5 = sub_1C60172F0();
    [v4 appendSection_];

    v6 = [objc_allocWithZone(MEMORY[0x1E6970670]) initWithIdentifiers_];
    [v4 appendItem_];

    [v3 setModelObjects_];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1C5CCAF48;
    v7 = swift_continuation_init();
    sub_1C5CCB428(0);
    *(v0 + 136) = v8;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1C5CCB7BC;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v7;
    [v3 resultsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1C5CCAF48()
{
  OUTLINED_FUNCTION_248();
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1C5CCB280;
  }

  else
  {
    v2 = sub_1C5CCB054;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5CCB054()
{
  v1 = *(v0 + 144);
  if (!sub_1C5C6AA20())
  {
    v10 = *(v0 + 192);

LABEL_13:
    v6 = 0;
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  sub_1C5C8CEE0();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6954040](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = v2;

  v4 = [v3 identifiers];
  v5 = [v4 library];

  if (!v5)
  {
    v11 = *(v0 + 192);

LABEL_12:
    goto LABEL_13;
  }

  if (![v5 persistentID])
  {
    v12 = *(v0 + 192);

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v6 = [*(v0 + 160) entityWithPersistentID:objc_msgSend(v5 entityType:{sel_persistentID), 0}];
  if (!v6)
  {
    v15 = *(v0 + 200);

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  if (v7)
  {
    v6 = [v3 identifiers];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v6 = 0;
  }

LABEL_15:
  v13 = *(v0 + 8);

  return v13(v6, v7);
}

uint64_t sub_1C5CCB280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 200);
  v10 = *(v8 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v11();
}

id sub_1C5CCB3A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackHistoryConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5CCB428(uint64_t a1)
{
  if (!qword_1EC1AA750)
  {
    sub_1C5CCB648(255, &qword_1EC1AA758, &unk_1EC1AA760, 0x1E69706F8, MEMORY[0x1E69E62F8]);
    sub_1C5CB5808();
    v1 = sub_1C6016CC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AA750);
    }
  }
}

uint64_t block_destroy_helper_11(uint64_t a1)
{
}

{
}

uint64_t sub_1C5CCB4DC(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C5CB54CC;

  return sub_1C5CC900C(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1C5CCB5EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1C5C67444(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C5CCB648(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C5C64D74(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C5CCB6B0()
{
  if (!qword_1EC1A8D38)
  {
    v0 = sub_1C6016CC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8D38);
    }
  }
}

unint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 4) = a1;
  *(v16 + 12) = 2082;

  return sub_1C5C6AB10(a10, a11, va);
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t result)
{
  v1[56] = result;
  v1[57] = *(v2 + 16);
  v1[58] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_27_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v17 + 14) = a1;
  *(v17 + 22) = v16;

  return sub_1C5C6AB10(a12, a13, va);
}

uint64_t sub_1C5CCB7BC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C5E0232C();
  }

  else
  {
    sub_1C5C64D74(0, &unk_1EC1AA760, 0x1E69706F8);
    sub_1C6016B10();

    return sub_1C5E0231C();
  }
}

uint64_t sub_1C5CCB864()
{
  v0 = sub_1C6016650();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1C6016640();
  result = (*(v1 + 8))(v3, v0);
  dword_1EC1BE488 = v4;
  return result;
}

uint64_t sub_1C5CCB954()
{
  if (qword_1EC1A96C8 != -1)
  {
    swift_once();
  }

  return dword_1EC1BE488;
}

uint64_t sub_1C5CCB9BC(void *a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v6 = Strong;
  v7 = sub_1C5CD47F0();
  if (!v8)
  {

    return 1;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1C5CD47E4();
  if (!v12)
  {

LABEL_13:

    return 1;
  }

  v19 = v11;
  v20 = v12;
  v21 = sub_1C5CD4618(a2, v12, v13, v14, v15, v16, v17, v18, v253, v254, v255, v257, v259, v261, v264, v268, v270, v275, v277, v278, v280, v284, v288, log);
  if (v21 == 2)
  {
    v301 = v9;
    v22 = sub_1C5CD5434();
    v25 = v23;
    v26 = v24;
    v299 = v19;
    switch(v24 >> 6)
    {
      case 1:
        if (v24)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
      case 3:
        goto LABEL_7;
      default:
        if (v22)
        {
LABEL_7:
          v27 = v22;
          if (qword_1ED7DD2B0 != -1)
          {
            swift_once();
          }

          v28 = sub_1C60162D0();
          __swift_project_value_buffer(v28, qword_1ED7E1690);
          v29 = v6;

          sub_1C5CD0FEC(v27, v25, v26);
          v30 = v29;

          sub_1C5CD0FEC(v27, v25, v26);
          v31 = sub_1C60162B0();
          v32 = sub_1C6016F30();
          if (os_log_type_enabled(v31, v32))
          {
            v293 = v32;
            v33 = swift_slowAlloc();
            v295 = swift_slowAlloc();
            *&v305 = v295;
            *v33 = 136446978;
            v34 = v26;
            logb = v31;
            v35 = v25;
            v36 = [v30 engineID];
            v37 = sub_1C6016940();
            v38 = v10;
            v39 = v20;
            v41 = v40;

            v42 = sub_1C5C6AB10(v37, v41, &v305);

            *(v33 + 4) = v42;

            *(v33 + 12) = 2082;

            v43 = sub_1C5C6AB10(v301, v38, &v305);

            *(v33 + 14) = v43;
            swift_bridgeObjectRelease_n();
            *(v33 + 22) = 2082;

            v44 = sub_1C5C6AB10(v299, v39, &v305);

            *(v33 + 24) = v44;
            swift_bridgeObjectRelease_n();
            *(v33 + 32) = 2082;
            v307 = v27;
            v308 = v35;
            LOBYTE(v309) = v34;
            sub_1C5CD0FEC(v27, v35, v34);
            v45 = sub_1C60169A0();
            v47 = sub_1C5C6AB10(v45, v46, &v305);

            *(v33 + 34) = v47;

            sub_1C5CD1004(v27, v35, v34);
            sub_1C5CD1004(v27, v35, v34);
            sub_1C5CD1004(v27, v35, v34);
            _os_log_impl(&dword_1C5C61000, logb, v293, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not updating library stats [private listening mode] mode=%{public}s", v33, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1C6956920](v295, -1, -1);
            MEMORY[0x1C6956920](v33, -1, -1);
          }

          else
          {

            sub_1C5CD1004(v27, v25, v26);
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            sub_1C5CD1004(v27, v25, v26);
            sub_1C5CD1004(v27, v25, v26);
          }

          return 1;
        }

LABEL_22:
        v289 = v22;
        loga = v23;
        v294 = v24;
        v297 = v20;
        sub_1C5CD51AC(a2, &v307);
        v67 = v307;
        if (v307 == 1)
        {
          goto LABEL_40;
        }

        v69 = v308;
        v68 = v309;
        v70 = v311;
        v281 = v310;
        v312 = v310;
        v313 = v307;
        sub_1C5CC7ADC(&v307, &v305);
        sub_1C5CC7B50(&v312, &v305);
        sub_1C5CD130C(&v313, &qword_1EC1A8C50, &qword_1ED7DBB70, 0x1E69705E8);
        v314 = v69;
        v285 = v67;
        sub_1C5CD130C(&v314, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
        v315 = v68;
        sub_1C5CD130C(&v315, &qword_1EC1A8B60, &unk_1EC1A8B68, 0x1E69705E0);
        sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
        v316 = v70;
        sub_1C5CD130C(&v316, &unk_1EC1A8CA0, &qword_1EC1A8CB0, 0x1E69705D0);
        if (!v312)
        {
          goto LABEL_40;
        }

        v71 = [v312 library];
        if (!v71)
        {
          sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);
LABEL_40:
          if (qword_1ED7DD2B0 != -1)
          {
            swift_once();
          }

          v89 = sub_1C60162D0();
          __swift_project_value_buffer(v89, qword_1ED7E1690);
          v90 = v6;

          sub_1C5CC7ADC(&v307, &v305);
          v91 = v90;

          sub_1C5CC7ADC(&v307, &v305);
          v92 = sub_1C60162B0();
          v93 = sub_1C6016F30();
          if (!os_log_type_enabled(v92, v93))
          {

            sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);

            sub_1C5CD1004(v289, loga, v294);
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
            sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
            return 1;
          }

          v94 = swift_slowAlloc();
          v286 = swift_slowAlloc();
          *&v305 = v286;
          *v94 = 136446978;
          v95 = [v91 engineID];
          v96 = sub_1C6016940();
          v98 = v97;

          v99 = sub_1C5C6AB10(v96, v98, &v305);

          *(v94 + 4) = v99;

          *(v94 + 12) = 2082;

          v100 = sub_1C5C6AB10(v301, v10, &v305);

          *(v94 + 14) = v100;
          swift_bridgeObjectRelease_n();
          *(v94 + 22) = 2082;

          v101 = sub_1C5C6AB10(v299, v297, &v305);

          *(v94 + 24) = v101;
          swift_bridgeObjectRelease_n();
          *(v94 + 32) = 2082;
          if (v307 != 1)
          {
            v102 = v310;
          }

          sub_1C5CD12A4(0, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550, MEMORY[0x1E69E6720]);
          v103 = sub_1C60169A0();
          v105 = sub_1C5C6AB10(v103, v104, &v305);

          *(v94 + 34) = v105;

          sub_1C5CD1004(v289, loga, v294);
          sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
          sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
          _os_log_impl(&dword_1C5C61000, v92, v93, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not updating library stats [could not find library item identifiers] identifiers=%{public}s", v94, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1C6956920](v286, -1, -1);
          MEMORY[0x1C6956920](v94, -1, -1);

          sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
LABEL_48:

          return 1;
        }

        v72 = v71;
        if (v67)
        {
          sub_1C5CC7ADC(&v307, &v305);

          if (v70)
          {
            ObjectType = swift_getObjectType();
            v74 = v297;
            v75 = sub_1C5CD48E8(v301, v10, v299, v297, ObjectType);
            v279 = v70;
            if (v75)
            {
              v76 = v75;
              v77 = sub_1C5CD5040(v75);
              if (v77)
              {
                v276 = v76;
                v282 = v77;
                sub_1C5CFF1CC(v77, &v305);
                if (v306)
                {
                  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
                  if (swift_dynamicCast())
                  {
                    [v303 doubleValue];

                    *&v78 = COERCE_DOUBLE(sub_1C5CD58F0(a2));
                    if ((v79 & 1) == 0)
                    {
                      v80 = *&v78;
                      v81 = [a1 payload];
                      type metadata accessor for MPCPlaybackEngineEventPayloadKey();
                      sub_1C5C66140(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
                      v82 = MEMORY[0x1E69E7CA0];
                      v83 = sub_1C6016860();

                      sub_1C5CFF1CC(v83, &v305);

                      if (v306)
                      {
                        if (swift_dynamicCast())
                        {
                          [v303 doubleValue];
                          v85 = v84;

                          v86 = [a1 payload];
                          v87 = sub_1C6016860();

                          sub_1C5CFF1CC(v87, &v305);

                          if (v306)
                          {
                            if (swift_dynamicCast())
                            {
                              v265 = [v303 BOOLValue];

                              sub_1C5CFF1CC(v282, &v305);
                              if (v306)
                              {
                                if (swift_dynamicCast())
                                {
                                  v88 = [v303 BOOLValue];

                                  goto LABEL_81;
                                }
                              }

                              else
                              {
                                sub_1C5CD1258(&v305, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
                              }

                              v88 = 0;
LABEL_81:
                              sub_1C5CFF1CC(v282, &v305);
                              if (v306)
                              {
                                if (swift_dynamicCast())
                                {
                                  [v303 doubleValue];
                                }
                              }

                              else
                              {
                                sub_1C5CD1258(&v305, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
                              }

                              sub_1C5CFF1CC(v282, &v305);
                              if (v306)
                              {
                                if (swift_dynamicCast())
                                {
                                  [v303 doubleValue];
                                }
                              }

                              else
                              {
                                sub_1C5CD1258(&v305, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
                              }

                              v304 = MEMORY[0x1E69E7CC8];
                              sub_1C5CCE56C(v265, v6, v301, v10, v299, v297, v88, v279, v80, v85, &v304, a1);
                              if ((v265 & 1) != 0 || MPShouldIncrementPlayCountForElapsedTime())
                              {
                                if (qword_1ED7DD2B0 != -1)
                                {
                                  swift_once();
                                }

                                v175 = sub_1C60162D0();
                                __swift_project_value_buffer(v175, qword_1ED7E1690);
                                v176 = v279;
                                v177 = v6;
                                swift_bridgeObjectRetain_n();
                                swift_bridgeObjectRetain_n();
                                v178 = v176;
                                v262 = v177;
                                v272 = v178;
                                v179 = sub_1C60162B0();
                                v180 = sub_1C6016F30();
                                if (os_log_type_enabled(v179, v180))
                                {
                                  v181 = swift_slowAlloc();
                                  v256 = swift_slowAlloc();
                                  v258 = swift_slowAlloc();
                                  *&v305 = v258;
                                  *v181 = 136447746;
                                  v182 = [v262 engineID];
                                  v183 = sub_1C6016940();
                                  v185 = v184;

                                  v186 = sub_1C5C6AB10(v183, v185, &v305);

                                  *(v181 + 4) = v186;

                                  *(v181 + 12) = 2082;

                                  v187 = sub_1C5C6AB10(v301, v10, &v305);

                                  *(v181 + 14) = v187;
                                  swift_bridgeObjectRelease_n();
                                  *(v181 + 22) = 2082;

                                  v188 = sub_1C5C6AB10(v299, v297, &v305);

                                  *(v181 + 24) = v188;
                                  swift_bridgeObjectRelease_n();
                                  *(v181 + 32) = 1026;
                                  *(v181 + 34) = v265;
                                  *(v181 + 38) = 2050;
                                  *(v181 + 40) = v85;
                                  *(v181 + 48) = 2114;
                                  *(v181 + 50) = v272;
                                  *v256 = v279;

                                  *(v181 + 58) = 2050;
                                  v189 = [v272 playCount];

                                  *(v181 + 60) = v189;
                                  _os_log_impl(&dword_1C5C61000, v179, v180, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | incrementing play count [] didPlayToEnd=%{BOOL,public}d endPosition=%{public}f mediaItem=%{public}@ playCount=%{public}ld", v181, 0x44u);
                                  sub_1C5CD130C(v256, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
                                  MEMORY[0x1C6956920](v256, -1, -1);
                                  swift_arrayDestroy();
                                  MEMORY[0x1C6956920](v258, -1, -1);
                                  MEMORY[0x1C6956920](v181, -1, -1);
                                }

                                else
                                {
                                  swift_bridgeObjectRelease_n();
                                  swift_bridgeObjectRelease_n();
                                }

                                v190 = sub_1C6016940();
                                v192 = v191;
                                v193 = [v272 playCount];
                                if (__OFADD__(v193, 1))
                                {
                                  __break(1u);
                                }

                                else
                                {
                                  v194 = MEMORY[0x1E69E6530];
                                  v306 = MEMORY[0x1E69E6530];
                                  *&v305 = v193 + 1;
                                  swift_beginAccess();
                                  sub_1C5E2229C(&v305, v190, v192);
                                  swift_endAccess();
                                  v195 = sub_1C6016940();
                                  v197 = v196;
                                  v198 = [v272 playCountSinceSync];
                                  if (!__OFADD__(v198, 1))
                                  {
                                    v306 = v194;
                                    *&v305 = v198 + 1;
                                    swift_beginAccess();
                                    sub_1C5E2229C(&v305, v195, v197);
                                    swift_endAccess();
                                    v199 = sub_1C6016940();
                                    v201 = v200;
                                    v202 = [a1 date];
                                    v306 = sub_1C6015020();
                                    __swift_allocate_boxed_opaque_existential_0(&v305);
                                    sub_1C6014FF0();

                                    swift_beginAccess();
                                    sub_1C5E2229C(&v305, v199, v201);
                                    swift_endAccess();
                                    v203 = v262;
                                    swift_bridgeObjectRetain_n();
                                    swift_bridgeObjectRetain_n();
                                    v204 = v203;
                                    v205 = sub_1C60162B0();
                                    v206 = sub_1C6016F30();
                                    if (os_log_type_enabled(v205, v206))
                                    {
                                      v207 = swift_slowAlloc();
                                      v273 = swift_slowAlloc();
                                      *&v305 = v273;
                                      *v207 = 136447234;
                                      v208 = [v204 engineID];
                                      v209 = sub_1C6016940();
                                      v211 = v210;

                                      v212 = sub_1C5C6AB10(v209, v211, &v305);

                                      *(v207 + 4) = v212;

                                      *(v207 + 12) = 2082;

                                      v213 = sub_1C5C6AB10(v301, v10, &v305);

                                      *(v207 + 14) = v213;
                                      swift_bridgeObjectRelease_n();
                                      *(v207 + 22) = 2082;

                                      v214 = sub_1C5C6AB10(v299, v297, &v305);

                                      *(v207 + 24) = v214;
                                      swift_bridgeObjectRelease_n();
                                      *(v207 + 32) = 1026;
                                      *(v207 + 34) = v265;
                                      *(v207 + 38) = 2050;
                                      *(v207 + 40) = v85;

                                      sub_1C5CD1004(v289, loga, v294);

                                      _os_log_impl(&dword_1C5C61000, v205, v206, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | marking has been played [] didPlayToEnd=%{BOOL,public}d endPosition=%{public}f", v207, 0x30u);
                                      swift_arrayDestroy();
                                      MEMORY[0x1C6956920](v273, -1, -1);
                                      MEMORY[0x1C6956920](v207, -1, -1);
                                    }

                                    else
                                    {

                                      sub_1C5CD1004(v289, loga, v294);
                                      swift_bridgeObjectRelease_n();
                                      swift_bridgeObjectRelease_n();
                                    }

                                    v215 = sub_1C6016940();
                                    v217 = v216;
                                    v306 = MEMORY[0x1E69E6370];
                                    LOBYTE(v305) = 1;
                                    swift_beginAccess();
                                    sub_1C5E2229C(&v305, v215, v217);
                                    swift_endAccess();
                                    goto LABEL_102;
                                  }
                                }

                                __break(1u);
                              }

                              else if (qword_1ED7DD2B0 == -1)
                              {
LABEL_106:
                                v225 = sub_1C60162D0();
                                __swift_project_value_buffer(v225, qword_1ED7E1690);
                                v226 = v279;
                                v227 = v6;
                                swift_bridgeObjectRetain_n();
                                swift_bridgeObjectRetain_n();
                                v228 = v226;
                                v229 = v227;
                                v230 = v228;
                                v231 = sub_1C60162B0();
                                v267 = sub_1C6016F30();
                                if (os_log_type_enabled(v231, v267))
                                {
                                  v232 = swift_slowAlloc();
                                  v260 = swift_slowAlloc();
                                  v263 = swift_slowAlloc();
                                  *&v305 = v263;
                                  *v232 = 136447746;
                                  v233 = [v229 engineID];
                                  v234 = sub_1C6016940();
                                  v236 = v235;

                                  v237 = sub_1C5C6AB10(v234, v236, &v305);

                                  *(v232 + 4) = v237;

                                  *(v232 + 12) = 2082;

                                  v238 = sub_1C5C6AB10(v301, v10, &v305);

                                  *(v232 + 14) = v238;
                                  swift_bridgeObjectRelease_n();
                                  *(v232 + 22) = 2082;

                                  v239 = sub_1C5C6AB10(v299, v297, &v305);

                                  *(v232 + 24) = v239;
                                  swift_bridgeObjectRelease_n();
                                  *(v232 + 32) = 1026;
                                  *(v232 + 34) = 0;
                                  *(v232 + 38) = 2050;
                                  *(v232 + 40) = v85;
                                  *(v232 + 48) = 2114;
                                  *(v232 + 50) = v230;
                                  *v260 = v279;

                                  *(v232 + 58) = 2050;
                                  v240 = [v230 playCount];

                                  *(v232 + 60) = v240;
                                  _os_log_impl(&dword_1C5C61000, v231, v267, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not incrementing play count [did not meet criteria] didPlayToEnd=%{BOOL,public}d endPosition=%{public}f mediaItem=%{public}@ playCount=%{public}ld", v232, 0x44u);
                                  sub_1C5CD130C(v260, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
                                  MEMORY[0x1C6956920](v260, -1, -1);
                                  swift_arrayDestroy();
                                  MEMORY[0x1C6956920](v263, -1, -1);
                                  MEMORY[0x1C6956920](v232, -1, -1);
                                }

                                else
                                {
                                  swift_bridgeObjectRelease_n();
                                  swift_bridgeObjectRelease_n();
                                }

                                v241 = v229;
                                swift_bridgeObjectRetain_n();
                                swift_bridgeObjectRetain_n();
                                v242 = v241;
                                v243 = sub_1C60162B0();
                                v244 = sub_1C6016F30();
                                if (os_log_type_enabled(v243, v244))
                                {
                                  v245 = swift_slowAlloc();
                                  v274 = swift_slowAlloc();
                                  *&v305 = v274;
                                  *v245 = 136447234;
                                  v246 = [v242 engineID];
                                  v247 = sub_1C6016940();
                                  v249 = v248;

                                  v250 = sub_1C5C6AB10(v247, v249, &v305);

                                  *(v245 + 4) = v250;

                                  *(v245 + 12) = 2082;

                                  v251 = sub_1C5C6AB10(v301, v10, &v305);

                                  *(v245 + 14) = v251;
                                  swift_bridgeObjectRelease_n();
                                  *(v245 + 22) = 2082;

                                  v252 = sub_1C5C6AB10(v299, v297, &v305);

                                  *(v245 + 24) = v252;
                                  swift_bridgeObjectRelease_n();
                                  *(v245 + 32) = 1026;
                                  *(v245 + 34) = 0;
                                  *(v245 + 38) = 2050;
                                  *(v245 + 40) = v85;

                                  sub_1C5CD1004(v289, loga, v294);

                                  _os_log_impl(&dword_1C5C61000, v243, v244, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not marking has been played [did not meet criteria] didPlayToEnd=%{BOOL,public}d endPosition=%{public}f", v245, 0x30u);
                                  swift_arrayDestroy();
                                  MEMORY[0x1C6956920](v274, -1, -1);
                                  MEMORY[0x1C6956920](v245, -1, -1);
                                }

                                else
                                {

                                  sub_1C5CD1004(v289, loga, v294);
                                  swift_bridgeObjectRelease_n();
                                  swift_bridgeObjectRelease_n();
                                }

LABEL_102:
                                swift_beginAccess();
                                if (*(v304 + 16))
                                {

                                  v219 = sub_1C5D2FE70(v218);

                                  v221 = sub_1C5D2FE9C(v220);
                                  v222 = sub_1C5D1517C(v221);

                                  sub_1C5C67490(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
                                  v223 = swift_allocObject();
                                  *(v223 + 16) = xmmword_1C60311E0;
                                  v224 = [v279 persistentID];
                                  *(v223 + 56) = MEMORY[0x1E69E76D8];
                                  *(v223 + 32) = v224;
                                  sub_1C5CD0F04(v219, v222, v223, v285);
                                }

                                sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
                                sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

                                swift_unknownObjectRelease();

                                v142 = v276;
                                goto LABEL_66;
                              }

                              swift_once();
                              goto LABEL_106;
                            }
                          }

                          else
                          {
                            sub_1C5CD1258(&v305, &qword_1ED7E0200, v82 + 8);
                          }

                          v74 = v297;
                          goto LABEL_74;
                        }
                      }

                      else
                      {
                        sub_1C5CD1258(&v305, &qword_1ED7E0200, v82 + 8);
                      }

                      v74 = v297;
                    }
                  }
                }

                else
                {
                  sub_1C5CD1258(&v305, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
                }

LABEL_74:
                if (qword_1ED7DD2B0 != -1)
                {
                  swift_once();
                }

                v155 = sub_1C60162D0();
                __swift_project_value_buffer(v155, qword_1ED7E1690);
                v156 = v6;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                v157 = v276;
                v158 = a1;
                v159 = v156;
                v160 = v157;
                v161 = v158;
                v162 = sub_1C60162B0();
                v163 = sub_1C6016F30();
                v298 = v162;
                if (os_log_type_enabled(v162, v163))
                {
                  v164 = swift_slowAlloc();
                  v269 = swift_slowAlloc();
                  v271 = swift_slowAlloc();
                  *&v305 = v271;
                  *v164 = 136447234;
                  v266 = v160;
                  v165 = [v159 engineID];
                  v166 = sub_1C6016940();
                  v167 = v10;
                  v168 = v74;
                  v170 = v169;

                  v171 = sub_1C5C6AB10(v166, v170, &v305);

                  *(v164 + 4) = v171;

                  *(v164 + 12) = 2082;

                  v172 = sub_1C5C6AB10(v301, v167, &v305);

                  *(v164 + 14) = v172;
                  swift_bridgeObjectRelease_n();
                  *(v164 + 22) = 2082;

                  v173 = sub_1C5C6AB10(v299, v168, &v305);

                  *(v164 + 24) = v173;
                  swift_bridgeObjectRelease_n();
                  *(v164 + 32) = 2114;
                  *(v164 + 34) = v266;
                  *v269 = v276;

                  *(v164 + 42) = 2114;
                  *(v164 + 44) = v161;
                  v269[1] = v161;
                  v174 = v161;

                  sub_1C5CD1004(v289, loga, v294);

                  _os_log_impl(&dword_1C5C61000, v298, v163, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not updating library stats [could not determine item position metadata from events] itemBegin=%{public}@ itemEnd=%{public}@", v164, 0x34u);
                  sub_1C5CD12A4(0, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0, MEMORY[0x1E69E6720]);
                  swift_arrayDestroy();
                  MEMORY[0x1C6956920](v269, -1, -1);
                  swift_arrayDestroy();
                  MEMORY[0x1C6956920](v271, -1, -1);
                  MEMORY[0x1C6956920](v164, -1, -1);

                  sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
                  sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

                  swift_unknownObjectRelease();
                  return 1;
                }

                sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
                sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

                swift_unknownObjectRelease();

                sub_1C5CD1004(v289, loga, v294);
                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();

                goto LABEL_13;
              }
            }

            if (qword_1ED7DD2B0 != -1)
            {
              swift_once();
            }

            v143 = sub_1C60162D0();
            __swift_project_value_buffer(v143, qword_1ED7E1690);
            v144 = v6;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v109 = v144;
            v92 = sub_1C60162B0();
            v145 = sub_1C6016F30();
            if (os_log_type_enabled(v92, v145))
            {
              v146 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              *&v305 = v147;
              *v146 = 136446722;
              v148 = [v109 engineID];
              v149 = sub_1C6016940();
              v151 = v150;

              v152 = sub_1C5C6AB10(v149, v151, &v305);

              *(v146 + 4) = v152;

              *(v146 + 12) = 2082;

              v153 = sub_1C5C6AB10(v301, v10, &v305);

              *(v146 + 14) = v153;
              swift_bridgeObjectRelease_n();
              *(v146 + 22) = 2082;

              v154 = sub_1C5C6AB10(v299, v297, &v305);

              *(v146 + 24) = v154;

              sub_1C5CD1004(v289, loga, v294);
              swift_bridgeObjectRelease_n();
              _os_log_impl(&dword_1C5C61000, v92, v145, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not updating library stats [could not find item begin event]", v146, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C6956920](v147, -1, -1);
              MEMORY[0x1C6956920](v146, -1, -1);

              sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
              sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

              swift_unknownObjectRelease();
              v142 = v70;
              goto LABEL_66;
            }

            sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
            sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

            swift_unknownObjectRelease();

            sub_1C5CD1004(v289, loga, v294);
            goto LABEL_68;
          }

          if (qword_1ED7DD2B0 != -1)
          {
            swift_once();
          }

          v125 = sub_1C60162D0();
          __swift_project_value_buffer(v125, qword_1ED7E1690);
          swift_unknownObjectRetain_n();
          v126 = v6;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v109 = v126;
          v92 = sub_1C60162B0();
          v127 = sub_1C6016F30();
          if (os_log_type_enabled(v92, v127))
          {
            v128 = swift_slowAlloc();
            v283 = swift_slowAlloc();
            *&v305 = v283;
            *v128 = 136447234;
            v129 = [v109 engineID];
            v130 = sub_1C6016940();
            v132 = v131;

            v133 = sub_1C5C6AB10(v130, v132, &v305);

            *(v128 + 4) = v133;

            *(v128 + 12) = 2082;

            v134 = sub_1C5C6AB10(v301, v10, &v305);

            *(v128 + 14) = v134;
            swift_bridgeObjectRelease_n();
            *(v128 + 22) = 2082;

            v135 = sub_1C5C6AB10(v299, v297, &v305);

            *(v128 + 24) = v135;
            swift_bridgeObjectRelease_n();
            *(v128 + 32) = 2082;
            v136 = [v72 databaseID];
            v137 = sub_1C6016940();
            v139 = v138;

            v140 = sub_1C5C6AB10(v137, v139, &v305);

            *(v128 + 34) = v140;
            swift_unknownObjectRelease_n();
            *(v128 + 42) = 2050;
            v141 = [v72 persistentID];
            swift_unknownObjectRelease();
            *(v128 + 44) = v141;

            sub_1C5CD1004(v289, loga, v294);
            swift_unknownObjectRelease();
            _os_log_impl(&dword_1C5C61000, v92, v127, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not updating library stats [could not find item in library] databaseID=%{public}s pid=%{public}lld", v128, 0x34u);
            swift_arrayDestroy();
            MEMORY[0x1C6956920](v283, -1, -1);
            MEMORY[0x1C6956920](v128, -1, -1);

            sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
            sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

            swift_unknownObjectRelease();
            v142 = v285;
LABEL_66:

            return 1;
          }

          swift_unknownObjectRelease();
          sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
          sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

          swift_unknownObjectRelease();

          sub_1C5CD1004(v289, loga, v294);
        }

        else
        {
          if (qword_1ED7DD2B0 != -1)
          {
            swift_once();
          }

          v107 = sub_1C60162D0();
          __swift_project_value_buffer(v107, qword_1ED7E1690);
          v108 = v6;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain_n();
          v109 = v108;
          v92 = sub_1C60162B0();
          v110 = sub_1C6016F30();
          if (os_log_type_enabled(v92, v110))
          {
            v111 = v72;
            v112 = swift_slowAlloc();
            v287 = swift_slowAlloc();
            *&v305 = v287;
            *v112 = 136446978;
            v113 = [v109 engineID];
            v114 = sub_1C6016940();
            v116 = v115;

            v117 = sub_1C5C6AB10(v114, v116, &v305);

            *(v112 + 4) = v117;

            *(v112 + 12) = 2082;

            v118 = sub_1C5C6AB10(v301, v10, &v305);

            *(v112 + 14) = v118;
            swift_bridgeObjectRelease_n();
            *(v112 + 22) = 2082;

            v119 = sub_1C5C6AB10(v299, v297, &v305);

            *(v112 + 24) = v119;
            swift_bridgeObjectRelease_n();
            *(v112 + 32) = 2082;
            v120 = [v111 databaseID];
            v121 = sub_1C6016940();
            v123 = v122;

            v124 = sub_1C5C6AB10(v121, v123, &v305);

            *(v112 + 34) = v124;

            sub_1C5CD1004(v289, loga, v294);
            swift_unknownObjectRelease_n();
            _os_log_impl(&dword_1C5C61000, v92, v110, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not updating library stats [could not find library] databaseID=%{public}s", v112, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1C6956920](v287, -1, -1);
            MEMORY[0x1C6956920](v112, -1, -1);

            sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
            sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

            swift_unknownObjectRelease();
            return 1;
          }

          sub_1C5CD1258(&v307, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);
          sub_1C5CD130C(&v312, &unk_1EC1A8C00, &qword_1ED7DCE70, 0x1E6970550);

          swift_unknownObjectRelease();
          sub_1C5CD1004(v289, loga, v294);
        }

        swift_unknownObjectRelease_n();
LABEL_68:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        goto LABEL_48;
    }
  }

  v48 = v21;
  if (qword_1ED7DD2B0 != -1)
  {
    swift_once();
  }

  v49 = sub_1C60162D0();
  __swift_project_value_buffer(v49, qword_1ED7E1690);
  v50 = v6;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v51 = v50;
  v52 = sub_1C60162B0();
  v53 = sub_1C6016F30();
  if (os_log_type_enabled(v52, v53))
  {
    v302 = v9;
    v54 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    v307 = v296;
    *v54 = 136446978;
    v55 = v10;
    v56 = v20;
    v57 = [v51 engineID];
    v58 = sub_1C6016940();
    v300 = v19;
    v60 = v59;

    v61 = sub_1C5C6AB10(v58, v60, &v307);

    *(v54 + 4) = v61;

    *(v54 + 12) = 2082;

    v62 = sub_1C5C6AB10(v302, v55, &v307);

    *(v54 + 14) = v62;
    swift_bridgeObjectRelease_n();
    *(v54 + 22) = 2082;

    v63 = sub_1C5C6AB10(v300, v56, &v307);

    *(v54 + 24) = v63;
    swift_bridgeObjectRelease_n();
    *(v54 + 32) = 2082;
    *&v305 = v48;
    type metadata accessor for MPCQueueControllerBehaviorType();
    v64 = sub_1C60169A0();
    v66 = sub_1C5C6AB10(v64, v65, &v307);

    *(v54 + 34) = v66;

    _os_log_impl(&dword_1C5C61000, v52, v53, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not updating library stats [not in a music behavior] behaviorType=%{public}s", v54, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v296, -1, -1);
    MEMORY[0x1C6956920](v54, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return 1;
}

void sub_1C5CCE56C(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7, void *a8, double a9, double a10, uint64_t a11, void *a12)
{
  if (a1)
  {
    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C60162D0();
    __swift_project_value_buffer(v17, qword_1ED7E1690);
    v18 = a2;

    oslog = sub_1C60162B0();
    v19 = sub_1C6016F30();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v91[0] = v21;
      *v20 = 136446722;
      v22 = [v18 engineID];
      v23 = sub_1C6016940();
      v25 = v24;

      v26 = sub_1C5C6AB10(v23, v25, v91);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1C5C6AB10(a3, a4, v91);
      *(v20 + 22) = 2082;
      *(v20 + 24) = sub_1C5C6AB10(a5, a6, v91);
      v27 = "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not incrementing skipped count [item played until end]";
LABEL_11:
      v35 = v19;
      v36 = oslog;
      v37 = v20;
      v38 = 32;
LABEL_12:
      _os_log_impl(&dword_1C5C61000, v36, v35, v27, v37, v38);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v21, -1, -1);
      MEMORY[0x1C6956920](v20, -1, -1);

      return;
    }

    goto LABEL_27;
  }

  if (a7)
  {
    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1C60162D0();
    __swift_project_value_buffer(v28, qword_1ED7E1690);
    v29 = a2;

    oslog = sub_1C60162B0();
    v19 = sub_1C6016F30();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v91[0] = v21;
      *v20 = 136446722;
      v30 = [v29 engineID];
      v31 = sub_1C6016940();
      v33 = v32;

      v34 = sub_1C5C6AB10(v31, v33, v91);

      *(v20 + 4) = v34;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1C5C6AB10(a3, a4, v91);
      *(v20 + 22) = 2082;
      *(v20 + 24) = sub_1C5C6AB10(a5, a6, v91);
      v27 = "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not incrementing skipped count [item uses bookmarking]";
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  if (a9 >= a10)
  {
    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v50 = sub_1C60162D0();
    __swift_project_value_buffer(v50, qword_1ED7E1690);
    v51 = a2;

    oslog = sub_1C60162B0();
    v52 = sub_1C6016F30();

    if (os_log_type_enabled(oslog, v52))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v91[0] = v21;
      *v20 = 136447234;
      v53 = [v51 engineID];
      v54 = sub_1C6016940();
      v56 = v55;

      v57 = sub_1C5C6AB10(v54, v56, v91);

      *(v20 + 4) = v57;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1C5C6AB10(a3, a4, v91);
      *(v20 + 22) = 2082;
      *(v20 + 24) = sub_1C5C6AB10(a5, a6, v91);
      *(v20 + 32) = 2050;
      *(v20 + 34) = a9;
      *(v20 + 42) = 2050;
      *(v20 + 44) = a10;
      v27 = "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not incrementing skipped count [elapsed time earlier than start time] startPosition=%{public}f endPosition=%{public}f";
      v35 = v52;
      v36 = oslog;
      v37 = v20;
      v38 = 52;
      goto LABEL_12;
    }

LABEL_27:

    return;
  }

  if (a10 < 2.0 || a10 > 20.0)
  {
    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v42 = sub_1C60162D0();
    __swift_project_value_buffer(v42, qword_1ED7E1690);
    v43 = a2;

    oslog = sub_1C60162B0();
    v44 = sub_1C6016F30();

    if (os_log_type_enabled(oslog, v44))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v91[0] = v21;
      *v20 = 136446978;
      v45 = [v43 engineID];
      v46 = sub_1C6016940();
      v48 = v47;

      v49 = sub_1C5C6AB10(v46, v48, v91);

      *(v20 + 4) = v49;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1C5C6AB10(a3, a4, v91);
      *(v20 + 22) = 2082;
      *(v20 + 24) = sub_1C5C6AB10(a5, a6, v91);
      *(v20 + 32) = 2050;
      *(v20 + 34) = a10;
      v27 = "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | not incrementing skipped count [elapsed time not in skippable range] endPosition=%{public}f skippableRange=(2.0)...(20.0)";
      v35 = v44;
      v36 = oslog;
      v37 = v20;
      v38 = 42;
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  v59 = a12;
  if (qword_1ED7DD2B0 != -1)
  {
    swift_once();
  }

  v60 = sub_1C60162D0();
  __swift_project_value_buffer(v60, qword_1ED7E1690);
  v61 = a8;
  v62 = a2;

  v63 = v61;
  v64 = sub_1C60162B0();
  v65 = sub_1C6016F30();

  osloga = v65;
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91[0] = v88;
    *v66 = 136447234;
    v67 = [v62 engineID];
    v68 = sub_1C6016940();
    v70 = v69;

    v71 = v68;
    v59 = a12;
    v72 = sub_1C5C6AB10(v71, v70, v91);

    *(v66 + 4) = v72;
    *(v66 + 12) = 2082;
    *(v66 + 14) = sub_1C5C6AB10(a3, a4, v91);
    *(v66 + 22) = 2082;
    *(v66 + 24) = sub_1C5C6AB10(a5, a6, v91);
    *(v66 + 32) = 2114;
    *(v66 + 34) = v63;
    *v87 = v63;
    *(v66 + 42) = 2050;
    v73 = &off_1E823A000;
    *(v66 + 44) = [v63 skipCount];

    _os_log_impl(&dword_1C5C61000, v64, osloga, "[CPS:%{public}s:%{public}s:%{public}s] itemEnd | incrementing skipped count [] mediaItem=%{public}@ skipCount=%{public}ld", v66, 0x34u);
    sub_1C5CD130C(v87, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
    MEMORY[0x1C6956920](v87, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v88, -1, -1);
    MEMORY[0x1C6956920](v66, -1, -1);
  }

  else
  {

    v73 = 0x1FBFC6000;
  }

  v74 = sub_1C6016940();
  v76 = v75;
  v77 = [v63 v73[459]];
  if (__OFADD__(v77, 1))
  {
    __break(1u);
  }

  else
  {
    v78 = MEMORY[0x1E69E6530];
    v92 = MEMORY[0x1E69E6530];
    v91[0] = v77 + 1;
    swift_beginAccess();
    sub_1C5E2229C(v91, v74, v76);
    swift_endAccess();
    v79 = sub_1C6016940();
    v81 = v80;
    v82 = [v63 skipCountSinceSync];
    if (!__OFADD__(v82, 1))
    {
      v92 = v78;
      v91[0] = v82 + 1;
      swift_beginAccess();
      sub_1C5E2229C(v91, v79, v81);
      swift_endAccess();
      v83 = sub_1C6016940();
      v85 = v84;
      v86 = [v59 date];
      v92 = sub_1C6015020();
      __swift_allocate_boxed_opaque_existential_0(v91);
      sub_1C6014FF0();

      swift_beginAccess();
      sub_1C5E2229C(v91, v83, v85);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C5CCEFFC(void *a1, uint64_t a2, char *a3)
{
  sub_1C5C671CC(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6015020();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v132 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v139 = v10;
    v18 = sub_1C5CD47F0();
    v140 = v19;
    if (v19)
    {
      v26 = sub_1C5CD4618(a2, v19, v20, v21, v22, v23, v24, v25, v132, v133, v134, v135, v136, v9, v18, v139, v140, v141, v142, v143, v144, v145, v146, *(&v146 + 1));
      if (v26 != 2)
      {
        v52 = v26;
        if (qword_1ED7DD2B0 != -1)
        {
          swift_once();
        }

        v53 = sub_1C60162D0();
        __swift_project_value_buffer(v53, qword_1ED7E1690);
        v54 = v17;
        v55 = v140;

        v56 = sub_1C60162B0();
        v57 = sub_1C6016F30();

        if (!os_log_type_enabled(v56, v57))
        {
LABEL_37:

          return 1;
        }

        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v146 = v59;
        *v58 = 136446722;
        v60 = [v54 engineID];
        v61 = sub_1C6016940();
        v63 = v62;

        v64 = sub_1C5C6AB10(v61, v63, &v146);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2082;
        v65 = sub_1C5C6AB10(v138, v55, &v146);

        *(v58 + 14) = v65;
        *(v58 + 22) = 2082;
        v141 = v52;
        type metadata accessor for MPCQueueControllerBehaviorType();
        v66 = sub_1C60169A0();
        v68 = sub_1C5C6AB10(v66, v67, &v146);

        *(v58 + 24) = v68;
        _os_log_impl(&dword_1C5C61000, v56, v57, "[CPS:%{public}s:%{public}s] containerBegin | not updating library stats [not in a music behavior] behaviorType=%{public}s", v58, 0x20u);
        swift_arrayDestroy();
        v69 = v59;
LABEL_35:
        MEMORY[0x1C6956920](v69, -1, -1);
        MEMORY[0x1C6956920](v58, -1, -1);

        goto LABEL_36;
      }

      v27 = sub_1C5CD5434();
      v30 = v29;
      switch(v29 >> 6)
      {
        case 1:
          if (v29)
          {
            goto LABEL_6;
          }

          goto LABEL_19;
        case 3:
          goto LABEL_6;
        default:
          if (v27)
          {
LABEL_6:
            v31 = v27;
            v32 = v28;
            if (qword_1ED7DD2B0 != -1)
            {
              swift_once();
            }

            v33 = sub_1C60162D0();
            __swift_project_value_buffer(v33, qword_1ED7E1690);
            v34 = v17;
            v35 = v140;

            sub_1C5CD0FEC(v31, v32, v30);
            v36 = sub_1C60162B0();
            v37 = sub_1C6016F30();

            sub_1C5CD1004(v31, v32, v30);
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              LODWORD(v137) = v30;
              v40 = v39;
              v141 = v39;
              *v38 = 136446722;
              v41 = [v34 engineID];
              v139 = v34;
              v42 = v41;
              v43 = sub_1C6016940();
              v45 = v44;

              v46 = sub_1C5C6AB10(v43, v45, &v141);

              *(v38 + 4) = v46;
              *(v38 + 12) = 2082;
              v47 = sub_1C5C6AB10(v138, v35, &v141);

              *(v38 + 14) = v47;
              *(v38 + 22) = 2082;
              *&v146 = v31;
              *(&v146 + 1) = v32;
              LOBYTE(v147) = v137;
              v48 = sub_1C60169A0();
              v50 = sub_1C5C6AB10(v48, v49, &v141);

              *(v38 + 24) = v50;
              _os_log_impl(&dword_1C5C61000, v36, v37, "[CPS:%{public}s:%{public}s:] containerBegin | not updating library stats [private listening mode] mode=%{public}s", v38, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C6956920](v40, -1, -1);
              MEMORY[0x1C6956920](v38, -1, -1);

              v51 = v139;
LABEL_10:

              return 1;
            }

            sub_1C5CD1004(v31, v32, v30);
            return 1;
          }

LABEL_19:
          sub_1C5CD1004(v27, v28, v29);
          v70 = [a1 payload];
          type metadata accessor for MPCPlaybackEngineEventPayloadKey();
          v72 = v71;
          v135 = sub_1C5C66140(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
          v136 = v72;
          v73 = sub_1C6016860();

          sub_1C5CFF1CC(v73, &v146);

          if (*(&v147 + 1))
          {
            sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
            v74 = MEMORY[0x1E69E7CA0];
            if (swift_dynamicCast())
            {
              v134 = v141;
              ObjectType = swift_getObjectType();
              v76 = sub_1C5CD4CC8(v138, v140, ObjectType);
              if (v76)
              {
                v77 = v76;
                v78 = [v76 payload];

                v79 = sub_1C6016860();
                v74 = MEMORY[0x1E69E7CA0];
                sub_1C5CFF1CC(v79, &v146);

                if (*(&v147 + 1))
                {
                  v80 = swift_dynamicCast();
                  if (v80)
                  {
                    v81 = v141;
                  }

                  else
                  {
                    v81 = 0;
                  }

                  if (v80)
                  {
                    v82 = v142;
                  }

                  else
                  {
                    v82 = 0;
                  }

                  v135 = v81;
                  v136 = v82;
                  goto LABEL_41;
                }
              }

              else
              {
                v146 = 0u;
                v147 = 0u;
              }

              sub_1C5CD1258(&v146, &qword_1ED7E0200, v74 + 8);
              v135 = 0;
              v136 = 0;
LABEL_41:
              v94 = sub_1C5CD5230();
              if (v94)
              {
                v95 = v94;
                v96 = [v17 engineID];
                v97 = sub_1C6016940();
                v132 = v98;
                v133 = v97;

                v99 = [a1 date];
                sub_1C6014FF0();

                v100 = sub_1C6016C30();
                __swift_storeEnumTagSinglePayload(v8, 1, 1, v100);
                v101 = v139;
                v139[2](v13, v15, v137);
                v102 = (*(v101 + 80) + 144) & ~*(v101 + 80);
                v103 = swift_allocObject();
                v104 = v147;
                *(v103 + 56) = v146;
                *(v103 + 16) = 0;
                *(v103 + 24) = 0;
                v105 = v134;
                *(v103 + 32) = a3;
                *(v103 + 40) = v105;
                *(v103 + 48) = v95;
                *(v103 + 72) = v104;
                v107 = v132;
                v106 = v133;
                *(v103 + 88) = v148;
                *(v103 + 96) = v106;
                v108 = v138;
                *(v103 + 104) = v107;
                *(v103 + 112) = v108;
                v110 = v135;
                v109 = v136;
                *(v103 + 120) = v140;
                *(v103 + 128) = v110;
                *(v103 + 136) = v109;
                v111 = v13;
                v112 = v137;
                (*(v101 + 32))(v103 + v102, v111, v137);
                v113 = a3;
                v114 = v105;
                v115 = v95;
                sub_1C5CC7ADC(&v146, &v141);
                sub_1C5CDC270();

                sub_1C5CD1258(&v146, &unk_1ED7DBB60, &_s23MediaLibraryItemContextVN);

                (*(v101 + 8))(v15, v112);
                return 1;
              }

              if (qword_1ED7DD2B0 != -1)
              {
                swift_once();
              }

              v116 = sub_1C60162D0();
              __swift_project_value_buffer(v116, qword_1ED7E1690);
              v117 = v136;

              v54 = v17;
              v118 = v140;

              v119 = sub_1C60162B0();
              v120 = sub_1C6016F30();

              if (!os_log_type_enabled(v119, v120))
              {

                v51 = v134;
                goto LABEL_10;
              }

              v121 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              v141 = v122;
              *v121 = 136446722;
              v123 = [v54 engineID];
              v124 = sub_1C6016940();
              v126 = v125;

              v127 = sub_1C5C6AB10(v124, v126, &v141);

              *(v121 + 4) = v127;
              *(v121 + 12) = 2082;
              v128 = sub_1C5C6AB10(v138, v118, &v141);

              *(v121 + 14) = v128;
              *(v121 + 22) = 2082;
              *&v146 = v135;
              *(&v146 + 1) = v117;
              sub_1C5C67490(0, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              v129 = sub_1C60169A0();
              v131 = sub_1C5C6AB10(v129, v130, &v141);

              *(v121 + 24) = v131;
              _os_log_impl(&dword_1C5C61000, v119, v120, "[CPS:%{public}s:%{public}s:] containerBegin | not updating library stats [could not find library for user] accountIdentifier=%{public}s", v121, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C6956920](v122, -1, -1);
              MEMORY[0x1C6956920](v121, -1, -1);

LABEL_36:
              return 1;
            }
          }

          else
          {
            sub_1C5CD1258(&v146, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
          }

          v83 = v140;
          if (qword_1ED7DD2B0 != -1)
          {
            swift_once();
          }

          v84 = sub_1C60162D0();
          __swift_project_value_buffer(v84, qword_1ED7E1690);
          v54 = v17;

          v56 = sub_1C60162B0();
          v85 = sub_1C6016F30();

          if (os_log_type_enabled(v56, v85))
          {
            v58 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *&v146 = v86;
            *v58 = 136446466;
            v87 = [v54 engineID];
            v88 = sub_1C6016940();
            v90 = v89;

            v91 = sub_1C5C6AB10(v88, v90, &v146);

            *(v58 + 4) = v91;
            *(v58 + 12) = 2082;
            v92 = sub_1C5C6AB10(v138, v83, &v146);

            *(v58 + 14) = v92;
            _os_log_impl(&dword_1C5C61000, v56, v85, "[CPS:%{public}s:%{public}s:] containerBegin | not updating library stats [could not find container identifiers]", v58, 0x16u);
            swift_arrayDestroy();
            v69 = v86;
            goto LABEL_35;
          }

          goto LABEL_37;
      }
    }
  }

  return 1;
}

uint64_t sub_1C5CCFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v18;
  *(v8 + 96) = v19;
  *(v8 + 72) = v17;
  *(v8 + 56) = v16;
  *(v8 + 40) = a5;
  *(v8 + 48) = a8;
  *(v8 + 32) = a4;
  v12 = sub_1C6015020();
  *(v8 + 104) = v12;
  *(v8 + 112) = *(v12 - 8);
  *(v8 + 120) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 128) = v13;
  *v13 = v8;
  v13[1] = sub_1C5CCFE44;

  return sub_1C5CD0708(a5, a6, a7);
}

uint64_t sub_1C5CCFE44(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v5 = sub_1C5CD04C8;
  }

  else
  {
    v5 = sub_1C5CCFF5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C5CCFF5C()
{
  v54 = v0;
  v1 = v0[17];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[18];
  v3 = sub_1C5CD5C18();
  if (v3 == 2)
  {

LABEL_4:
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
    }

    v4 = v0[5];
    v5 = sub_1C60162D0();
    __swift_project_value_buffer(v5, qword_1ED7E1690);

    v6 = v4;

    v7 = sub_1C60162B0();
    v8 = sub_1C6016F30();

    if (os_log_type_enabled(v7, v8))
    {
      v50 = v0[10];
      v51 = v0[11];
      v46 = v0[8];
      v48 = v0[9];
      v9 = v0[6];
      v10 = v0[7];
      v11 = v0[5];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v12 = 136446978;
      *(v12 + 4) = sub_1C5C6AB10(v9, v10, &v53);
      *(v12 + 12) = 2082;
      v14 = sub_1C5C6AB10(v46, v48, &v53);
      *(v12 + 14) = v14;
      *(v12 + 22) = 2082;
      v0[2] = v50;
      v0[3] = v51;
      OUTLINED_FUNCTION_1_4(v14, &qword_1EC1A9480, MEMORY[0x1E69E6158]);

      v15 = sub_1C60169A0();
      v17 = sub_1C5C6AB10(v15, v16, &v53);

      *(v12 + 24) = v17;
      *(v12 + 32) = 2114;
      *(v12 + 34) = v11;
      *v13 = v11;
      v18 = v11;
      _os_log_impl(&dword_1C5C61000, v7, v8, "[CPS:%{public}s:%{public}s:] containerBegin | not updating library stats [could not find library collection] accountIdentifier=%{public}s containerIdentifier=%{public}@", v12, 0x2Au);
      sub_1C5CD130C(v13, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
      OUTLINED_FUNCTION_4();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    goto LABEL_15;
  }

  v52 = v3;
  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
  }

  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];
  v23 = sub_1C60162D0();
  __swift_project_value_buffer(v23, qword_1ED7E1690);
  (*(v20 + 16))(v19, v22, v21);

  v24 = v2;
  v25 = sub_1C60162B0();
  v26 = sub_1C6016F30();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[14];
    v47 = v0[15];
    v28 = v0[13];
    v43 = v0[9];
    v44 = v0[18];
    v42 = v0[8];
    v49 = v26;
    v30 = v0[6];
    v29 = v0[7];
    v31 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v31 = 136446978;
    *(v31 + 4) = sub_1C5C6AB10(v30, v29, &v53);
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_1C5C6AB10(v42, v43, &v53);
    *(v31 + 22) = 2114;
    *(v31 + 24) = v24;
    *v45 = v44;
    *(v31 + 32) = 2082;
    sub_1C5C66140(&qword_1EC1A91D8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v32 = v24;
    v33 = sub_1C60177D0();
    v35 = v34;
    (*(v27 + 8))(v47, v28);
    v36 = sub_1C5C6AB10(v33, v35, &v53);

    *(v31 + 34) = v36;
    _os_log_impl(&dword_1C5C61000, v25, v49, "[CPS:%{public}s:%{public}s:] containerBegin | updating library stats [] container=%{public}@ datePlayed=%{public}s", v31, 0x2Au);
    sub_1C5CD130C(v45, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
    OUTLINED_FUNCTION_4();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
    v38 = v0[14];
    v37 = v0[15];
    v39 = v0[13];

    (*(v38 + 8))(v37, v39);
  }

  sub_1C5CD0D3C(v0[12], v24, v52 & 1);

LABEL_15:

  OUTLINED_FUNCTION_172();

  return v40();
}

uint64_t sub_1C5CD04C8()
{
  v19 = v0;
  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
  }

  v1 = v0[19];
  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1ED7E1690);

  v3 = v1;
  v4 = sub_1C60162B0();
  v5 = sub_1C6016F20();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = v0[8];
    v17 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v11 = 136446722;
    *(v11 + 4) = sub_1C5C6AB10(v9, v10, &v18);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1C5C6AB10(v8, v17, &v18);
    *(v11 + 22) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1C5C61000, v4, v5, "[CPS:%{public}s:%{public}s:] containerBegin | not updating library stats [failed to import library container] error=%{public}@", v11, 0x20u);
    sub_1C5CD130C(v12, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
    OUTLINED_FUNCTION_4();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_172();

  return v15();
}

uint64_t sub_1C5CD0708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  *(v3 + 152) = a1;
  *(v3 + 176) = *(a3 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1C5CD0734, 0, 0);
}

uint64_t sub_1C5CD0734()
{
  v1 = **(v0 + 168);
  if (v1 >= 2 && (v10 = *(v0 + 176), v9 = *(v0 + 184), v11 = *(v0 + 160), sub_1C5C64D74(0, &qword_1ED7DBB70, 0x1E69705E8), v12 = v11, v13 = v1, v14 = sub_1C60172D0(), v12, v13, (v14 & 1) != 0) && v10 && v9)
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    OUTLINED_FUNCTION_172();
    v21 = v17;
    v18 = v15;
    v19 = v16;

    return v21(v15, v16);
  }

  else
  {
    v2 = *(v0 + 152);
    v3 = [objc_allocWithZone(MEMORY[0x1E69706C0]) init];
    *(v0 + 192) = v3;
    v4 = [objc_allocWithZone(MEMORY[0x1E6970818]) init];
    *(v0 + 200) = v4;
    sub_1C5C64D74(0, &qword_1EC1A92B0, 0x1E696AEC0);
    v5 = sub_1C60172F0();
    [v4 appendSection_];

    v6 = [objc_allocWithZone(MEMORY[0x1E6970670]) initWithIdentifiers_];
    [v4 appendItem_];

    [v3 setModelObjects_];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1C5CD09E4;
    v7 = swift_continuation_init();
    sub_1C5CCB428(0);
    *(v0 + 136) = v8;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1C5CCB7BC;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v7;
    [v3 resultsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1C5CD09E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1C5CCB280;
  }

  else
  {
    v2 = sub_1C5CD0AF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5CD0AF4()
{
  v1 = *(v0 + 144);
  if (!sub_1C5C6AA20())
  {
    v9 = *(v0 + 192);

    goto LABEL_17;
  }

  sub_1C5C8CEE0();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6954040](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = v2;

  v4 = [v3 identifiers];
  v5 = [v4 library];

  if (!v5)
  {
    v10 = *(v0 + 192);

LABEL_16:
    goto LABEL_17;
  }

  v6 = [v3 identifiers];
  v7 = sub_1C5CD5C18();

  if (v7 != 2)
  {
    if ([v5 persistentID])
    {
      if (v7)
      {
        v11 = 6;
      }

      else
      {
        v11 = 1;
      }

      v12 = [*(v0 + 160) collectionWithPersistentID:objc_msgSend(v5 groupingType:{sel_persistentID), v11}];
      v13 = *(v0 + 192);
      v14 = *(v0 + 200);
      if (v12)
      {
        v15 = [v3 identifiers];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        v15 = 0;
      }

      goto LABEL_18;
    }

    v16 = *(v0 + 192);

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v8 = *(v0 + 200);

  swift_unknownObjectRelease();
LABEL_17:
  v15 = 0;
  v12 = 0;
LABEL_18:
  v17 = *(v0 + 8);

  return v17(v15, v12);
}

void sub_1C5CD0D3C(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1C6014FB0();
  v4 = sub_1C6016940();
  sub_1C5CC7D40(v6, v4, v5, 0, a2);
}

id sub_1C5CD0E84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackStatisticsConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5CD0F04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1C6016AF0();

  v6 = sub_1C6016AF0();

  v7 = sub_1C6016AF0();

  [a4 setValues:v5 forProperties:v6 forItemPersistentIDs:v7];
}

uint64_t sub_1C5CD0FEC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_1C5CD1004(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_1C5CD101C(uint64_t a1)
{
  sub_1C6015020();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C5CD1168;

  return sub_1C5CCFD1C(a1, v3, v4, v5, v6, v7, (v1 + 7), v8);
}

uint64_t sub_1C5CD1168()
{

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CD1258(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_4(a1, a2, a3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C5CD12A4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C5C64D74(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C5CD130C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  sub_1C5CD12A4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_6_1();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1C5CD13D4(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_22_2();
            while (1)
            {
              OUTLINED_FUNCTION_2_6();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_4_4();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_8_4();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_2_6();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_4_4();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_8_4();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_22_2();
          while (1)
          {
            OUTLINED_FUNCTION_2_6();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_4_4();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_8_4();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C60175C0();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_24_2();
              while (1)
              {
                OUTLINED_FUNCTION_2_6();
                if (!v9 & v8)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_4_4();
                if (!v9)
                {
                  goto LABEL_70;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_8_4();
                if (v9)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_70;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_70;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v7 = 0;
        v12 = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_24_2();
            while (1)
            {
              OUTLINED_FUNCTION_2_6();
              if (!v9 & v8)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_4_4();
              if (!v9)
              {
                goto LABEL_70;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_8_4();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v12 = 0;
LABEL_71:
          v23 = v12;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v7 = sub_1C5CD353C(result, a2, 10);
  v23 = v24;
LABEL_72:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1C5CD1644(uint64_t a1, void *a2)
{
  qword_1EC1AA790 = a1;
  off_1EC1AA798 = a2;
}

uint64_t sub_1C5CD167C()
{
  v0 = sub_1C6016650();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1C6016640();
  result = (*(v1 + 8))(v3, v0);
  dword_1EC1BE3F0 = v4;
  return result;
}

uint64_t sub_1C5CD176C()
{
  if (qword_1EC1A90B0 != -1)
  {
    swift_once();
  }

  return dword_1EC1BE3F0;
}

uint64_t sub_1C5CD1858(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = sub_1C5CD25C8(a4, a5, a6, a1, a2);
  if (v6)
  {
    v7 = v6;
    sub_1C5CD1920(v6);
  }

  return 1;
}

void sub_1C5CD1920(id a1)
{
  v2 = v1;
  v88 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_playbackPositionHandler);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_playbackPositionHandler + 8);

    v4(a1);
    sub_1C5C74C18(v4, v5);
  }

  v6 = [a1 accountID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C5CD41FC(a1, &selRef_episodeAdamID);
    if (!v9)
    {
LABEL_83:
      if (qword_1EC1A95A0 != -1)
      {
        OUTLINED_FUNCTION_0_9(&qword_1EC1A95A0);
      }

      v36 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v36, qword_1EC1BE450);
      v37 = sub_1C60162B0();
      v38 = sub_1C6016F20();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C5C61000, v37, v38, "Unable to find episodeAdamID for sync", v39, 2u);
        OUTLINED_FUNCTION_4();
      }

      return;
    }

    v10 = v9;
    v11 = HIBYTE(v9) & 0xF;
    v12 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {

      goto LABEL_83;
    }

    if ((v10 & 0x1000000000000000) != 0)
    {
      sub_1C5CD353C(v8, v10, 10);
      v41 = v40;

      if (v41)
      {
        goto LABEL_83;
      }

LABEL_90:
      v42 = sub_1C6016DB0();
      v43 = [objc_opt_self() sharedAccountStore];
      v86 = 0;
      v44 = [v43 storeAccountForDSID:v7 error:&v86];

      if (v44)
      {
        v45 = v86;
        v46 = &off_1E823A000;
        if (([a1 completed] & 1) == 0)
        {
          [a1 position];
        }

        if ([a1 completed])
        {
          v47 = 0x80000001C6048820;
          v48 = 0x100000000000001ELL;
        }

        else
        {
          v86 = 0;
          v87 = 0xE000000000000000;
          sub_1C6017540();
          MEMORY[0x1C69534E0](0x1000000000000016, 0x80000001C6048800);
          sub_1C6016D10();
          v48 = v86;
          v47 = v87;
        }

        v83 = v48;
        if (qword_1EC1A95A0 != -1)
        {
          OUTLINED_FUNCTION_0_9(&qword_1EC1A95A0);
        }

        v66 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v66, qword_1EC1BE450);

        v67 = v44;
        v68 = v42;
        v69 = sub_1C60162B0();
        v70 = sub_1C6016F30();

        v84 = v67;

        if (os_log_type_enabled(v69, v70))
        {
          v82[1] = v44;
          v71 = swift_slowAlloc();
          v82[2] = v2;
          v72 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *v71 = 136316163;
          v73 = sub_1C5C6AB10(v83, v47, &v86);

          *(v71 + 4) = v73;
          *(v71 + 12) = 2160;
          *(v71 + 14) = 1752392040;
          *(v71 + 22) = 2081;
          v74 = sub_1C5CD41FC(v84, &selRef_username);
          if (v75)
          {
            v76 = v75;
          }

          else
          {
            v74 = 0x4E574F4E4B4E553CLL;
            v76 = 0xE90000000000003ELL;
          }

          v77 = sub_1C5C6AB10(v74, v76, &v86);

          *(v71 + 24) = v77;
          *(v71 + 32) = 2160;
          *(v71 + 34) = 1752392040;
          *(v71 + 42) = 2113;
          *(v71 + 44) = v68;
          *v72 = v68;
          v78 = v68;
          _os_log_impl(&dword_1C5C61000, v69, v70, "%s for: %{private,mask.hash}s for store track id: %{private,mask.hash}@'", v71, 0x34u);
          OUTLINED_FUNCTION_7_5();
          sub_1C5C75534(v72, v79);
          OUTLINED_FUNCTION_4();
          swift_arrayDestroy();
          v46 = &off_1E823A000;
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_4();
        }

        else
        {
        }

        [v68 longLongValue];
        [a1 v46[468]];
        *(swift_allocObject() + 16) = v68;
        v80 = v84;
        v81 = v68;
        sub_1C6015FD0();
      }

      else
      {
        v49 = v86;
        v50 = sub_1C6014D40();

        swift_willThrow();
        if (qword_1EC1A8EB8 != -1)
        {
          swift_once();
        }

        v51 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v51, qword_1EC1BE3A0);
        v52 = v42;
        v53 = v50;
        v54 = sub_1C60162B0();
        v55 = sub_1C6016F20();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = OUTLINED_FUNCTION_21();
          v57 = swift_slowAlloc();
          v84 = OUTLINED_FUNCTION_21();
          v86 = v84;
          *v56 = 136315651;
          ErrorValue = swift_getErrorValue();
          MEMORY[0x1EEE9AC00](ErrorValue);
          (*(v60 + 16))(v82 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
          v61 = sub_1C60169A0();
          v63 = sub_1C5C6AB10(v61, v62, &v86);

          *(v56 + 4) = v63;
          *(v56 + 12) = 2160;
          *(v56 + 14) = 1752392040;
          *(v56 + 22) = 2113;
          *(v56 + 24) = v52;
          *v57 = v52;
          v64 = v52;
          _os_log_impl(&dword_1C5C61000, v54, v55, "Unable to find account for sync %s for store track id: %{private,mask.hash}@", v56, 0x20u);
          OUTLINED_FUNCTION_7_5();
          sub_1C5C75534(v57, v65);
          OUTLINED_FUNCTION_4();
          __swift_destroy_boxed_opaque_existential_0(v84);
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_4();
        }

        else
        {
        }
      }

      return;
    }

    if ((v10 & 0x2000000000000000) != 0)
    {
      v86 = v8;
      v87 = v10 & 0xFFFFFFFFFFFFFFLL;
      if (v8 == 43)
      {
        if (v11)
        {
          if (v11 != 1)
          {
            OUTLINED_FUNCTION_22_2();
            while (1)
            {
              OUTLINED_FUNCTION_2_6();
              if (!v17 & v16)
              {
                break;
              }

              OUTLINED_FUNCTION_3_5();
              if (!v17 || __OFADD__(v29, v28))
              {
                break;
              }

              OUTLINED_FUNCTION_8_4();
              if (v17)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_81;
        }

LABEL_114:
        __break(1u);
      }

      if (v8 != 45)
      {
        if (v11)
        {
          while (1)
          {
            OUTLINED_FUNCTION_2_6();
            if (!v17 & v16)
            {
              break;
            }

            OUTLINED_FUNCTION_3_5();
            if (!v17 || __OFADD__(v34, v33))
            {
              break;
            }

            OUTLINED_FUNCTION_8_4();
            if (v17)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_81;
      }

      if (v11)
      {
        if (v11 != 1)
        {
          OUTLINED_FUNCTION_22_2();
          while (1)
          {
            OUTLINED_FUNCTION_2_6();
            if (!v17 & v16)
            {
              break;
            }

            OUTLINED_FUNCTION_3_5();
            if (!v17 || __OFSUB__(v25, v24))
            {
              break;
            }

            OUTLINED_FUNCTION_8_4();
            if (v17)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_81;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = sub_1C60175C0();
      }

      v15 = *v14;
      if (v15 == 43)
      {
        if (v12 >= 1)
        {
          if (v12 != 1)
          {
            if (v14)
            {
              OUTLINED_FUNCTION_24_2();
              while (1)
              {
                OUTLINED_FUNCTION_2_6();
                if (!v17 & v16)
                {
                  goto LABEL_81;
                }

                OUTLINED_FUNCTION_3_5();
                if (!v17 || __OFADD__(v27, v26))
                {
                  goto LABEL_81;
                }

                OUTLINED_FUNCTION_8_4();
                if (v17)
                {
                  goto LABEL_82;
                }
              }
            }

            goto LABEL_72;
          }

          goto LABEL_81;
        }

        goto LABEL_113;
      }

      if (v15 != 45)
      {
        if (v12)
        {
          v30 = 0;
          if (v14)
          {
            while (1)
            {
              v31 = *v14 - 48;
              if (v31 > 9)
              {
                goto LABEL_81;
              }

              v32 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                goto LABEL_81;
              }

              v30 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_81;
              }

              ++v14;
              if (!--v12)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_81:
        v20 = 1;
LABEL_82:
        v85 = v20;
        v35 = v20;

        if (v35)
        {
          goto LABEL_83;
        }

        goto LABEL_90;
      }

      if (v12 >= 1)
      {
        if (v12 != 1)
        {
          if (v14)
          {
            OUTLINED_FUNCTION_24_2();
            while (1)
            {
              OUTLINED_FUNCTION_2_6();
              if (!v17 & v16)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_3_5();
              if (!v17 || __OFSUB__(v19, v18))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_8_4();
              if (v17)
              {
                goto LABEL_82;
              }
            }
          }

LABEL_72:
          v20 = 0;
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      __break(1u);
    }

    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (qword_1EC1A95A0 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EC1A95A0);
  }

  v21 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v21, qword_1EC1BE450);
  v84 = sub_1C60162B0();
  v22 = sub_1C6016F20();
  if (os_log_type_enabled(v84, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C5C61000, v84, v22, "Unable to find personID for sync", v23, 2u);
    OUTLINED_FUNCTION_4();
  }
}

void sub_1C5CD23CC(NSObject *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EC1A95A0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C60162D0();
    __swift_project_value_buffer(v5, qword_1EC1BE450);
    v6 = a1;
    v7 = a2;
    oslog = sub_1C60162B0();
    v8 = sub_1C6016F20();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 141558531;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2113;
      *(v9 + 14) = v7;
      *v10 = v7;
      *(v9 + 22) = 2112;
      v11 = a1;
      v12 = v7;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 24) = v13;
      v10[1] = v13;
      _os_log_impl(&dword_1C5C61000, oslog, v8, "Unable to save UPP position for: %{private,mask.hash}@. %@", v9, 0x20u);
      sub_1C5CC55A0(0);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v10, -1, -1);
      MEMORY[0x1C6956920](v9, -1, -1);

      v14 = oslog;
    }

    else
    {

      v14 = a1;
    }
  }
}

void *sub_1C5CD25C8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_1C5CD47F0();
  if (!v11)
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_1C5CD47E4();
  if (!v15)
  {

    return 0;
  }

  v22 = v14;
  v23 = v15;
  v24 = a4;
  if (sub_1C5CD4618(v5, v15, v16, v17, v18, v19, v20, v21, v118, v119, v120, v121, v122, v123, v125, v126, v128, v130, a3, v131, v133, v135, v136[0], v136[1]) != 4)
  {
    if (qword_1EC1A95A0 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EC1A95A0);
    }

    v43 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v43, qword_1EC1BE450);

    v44 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_30_1();

    if (OUTLINED_FUNCTION_29_0())
    {
      v45 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v45 = 136446978;
      *(v45 + 4) = sub_1C5C6AB10(a1, a2, v136);
      *(v45 + 12) = 2082;
      v46 = OUTLINED_FUNCTION_25_1();
      sub_1C5C6AB10(v46, v47, v48);
      OUTLINED_FUNCTION_27_3();
      *(v45 + 14) = a2;
      *(v45 + 22) = 2082;
      sub_1C5C6AB10(v22, v23, v136);
      OUTLINED_FUNCTION_26_1();
      *(v45 + 24) = a2;
      *(v45 + 32) = 2082;
      type metadata accessor for MPCQueueControllerBehaviorType();
      v49 = sub_1C60169A0();
      v51 = sub_1C5C6AB10(v49, v50, v136);

      *(v45 + 34) = v51;
      _os_log_impl(&dword_1C5C61000, v44, v24, "[CBM:%{public}s:%{public}s:%{public}s] not updating upp [not in a podcasts behavior] behaviorType=%{public}s", v45, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
LABEL_30:
      OUTLINED_FUNCTION_4();
LABEL_32:

      return 0;
    }

LABEL_31:

    goto LABEL_32;
  }

  ObjectType = swift_getObjectType();
  v26 = sub_1C5CD48E8(v12, v13, v22, v23, ObjectType);
  if (!v26)
  {
LABEL_26:
    v52 = v12;
    if (qword_1EC1A95A0 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EC1A95A0);
    }

    v53 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v53, qword_1EC1BE450);

    v44 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_30_1();

    if (OUTLINED_FUNCTION_29_0())
    {
      OUTLINED_FUNCTION_21();
      v136[0] = OUTLINED_FUNCTION_20_1();
      v54 = OUTLINED_FUNCTION_12_2(4.8754e-34);
      OUTLINED_FUNCTION_10_3(v54);
      sub_1C5C6AB10(v52, v13, v55);
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_14_6();
      sub_1C5C6AB10(v22, v23, v56);
      OUTLINED_FUNCTION_26_1();
      *(ObjectType + 24) = a2;
      OUTLINED_FUNCTION_13_1(&dword_1C5C61000, v57, v58, "[CBM:%{public}s:%{public}s:%{public}s] not updating play position [item does not use allow UPP]");
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_4();
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v132 = v12;
  v27 = v26;
  v28 = sub_1C5CD5040(v26);
  if (!v28)
  {

LABEL_25:
    v12 = v132;
    goto LABEL_26;
  }

  v129 = v27;
  v138 = v28;
  sub_1C5CFF1CC(v28, v136);
  if (!v137)
  {

    sub_1C5CBCF4C(v136);

    goto LABEL_25;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  OUTLINED_FUNCTION_9_6();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_24:

    goto LABEL_25;
  }

  if (![v134 BOOLValue])
  {

    goto LABEL_24;
  }

  v127 = [objc_allocWithZone(MPCPodcastPlaybackPositionEvent) init];
  v124 = sub_1C5CD4A44();
  if (v124)
  {
    v29 = [a4 payload];
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5C66188(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
    v30 = sub_1C6016860();

    sub_1C5CFF1CC(v30, v136);

    if (v137)
    {
      v31 = OUTLINED_FUNCTION_9_6();
      if (OUTLINED_FUNCTION_28_2(v31, v32, MEMORY[0x1E69E7CA0] + 8))
      {
        [v134 doubleValue];
        v34 = v33;

        MEMORY[0x1EEE9AC00](v35);
        v36 = OUTLINED_FUNCTION_25_1();
        sub_1C5CD5DB0(v36, v37, v22, v23, v38, v39);

        OUTLINED_FUNCTION_19_1(@"podcast-feed-url");
        if (v137)
        {
          OUTLINED_FUNCTION_9_6();
          v40 = v127;
          v41 = v124;
          if (swift_dynamicCast())
          {
            v42 = sub_1C6016900();

            goto LABEL_51;
          }
        }

        else
        {
          sub_1C5CBCF4C(v136);
          v40 = v127;
          v41 = v124;
        }

        v42 = 0;
LABEL_51:
        [v40 setFeedURL_];

        OUTLINED_FUNCTION_19_1(@"podcast-store-id");
        if (v137)
        {
          OUTLINED_FUNCTION_6_4();
          if (swift_dynamicCast())
          {
            v78 = sub_1C6016900();

            goto LABEL_56;
          }
        }

        else
        {
          sub_1C5CBCF4C(v136);
        }

        v78 = 0;
LABEL_56:
        [v40 setPodcastAdamID_];

        OUTLINED_FUNCTION_19_1(@"podcast-subscribable");
        if (v137)
        {
          OUTLINED_FUNCTION_6_4();
          if (swift_dynamicCast())
          {
            v79 = v134;
LABEL_61:
            [v40 setSubscribable_];
            v80 = [v41 personalizedStore];
            if (v80)
            {
              v81 = [v80 personID];
              swift_unknownObjectRelease();
              v82 = sub_1C6016940();
              v84 = v83;

              sub_1C5CD13D4(v82, v84);
              if ((v85 & 1) == 0)
              {
                v86 = sub_1C6016DB0();
                [v40 setAccountID_];
              }
            }

            v87 = [v41 universalStore];
            if (v87)
            {
              v136[0] = [v87 adamID];
              v88 = sub_1C60177D0();
              sub_1C5CD4190(v88, v89, v40, &selRef_setEpisodeAdamID_);
              swift_unknownObjectRelease();
            }

            v90 = [v41 library];
            if (v90)
            {
              v91 = [v90 databaseID];
              v92 = sub_1C6016940();
              v94 = v93;

              v95 = v94;
              v41 = v124;
              sub_1C5CD4190(v92, v95, v40, &selRef_setEpisodeUUID_);
              swift_unknownObjectRelease();
            }

            v96 = sub_1C6016940();
            v98 = v97;
            if (v96 == sub_1C6016940() && v98 == v99)
            {
            }

            else
            {
              v101 = sub_1C6017860();

              v102 = 0;
              if ((v101 & 1) == 0)
              {
                goto LABEL_86;
              }
            }

            v103 = [a4 payload];
            v104 = sub_1C6016860();

            sub_1C5CFF1CC(v104, v136);

            if (v137)
            {
              OUTLINED_FUNCTION_6_4();
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_85;
              }

              [v134 doubleValue];

              OUTLINED_FUNCTION_19_1(@"item-duration");
              if (v137)
              {
                OUTLINED_FUNCTION_6_4();
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_85;
                }

                [v134 doubleValue];

                v105 = [a4 payload];
                v106 = sub_1C6016860();

                sub_1C5CFF1CC(v106, v136);

                if (v137)
                {
                  v107 = OUTLINED_FUNCTION_6_4();
                  if (OUTLINED_FUNCTION_28_2(v107, v108, v109))
                  {
                    v110 = [v134 BOOLValue];

                    OUTLINED_FUNCTION_19_1(@"item-end-boundary");
                    if (v137)
                    {
                      v111 = OUTLINED_FUNCTION_9_6();
                      if (OUTLINED_FUNCTION_28_2(v111, v112, MEMORY[0x1E69E7CA0] + 8))
                      {
                        [v134 doubleValue];
                      }
                    }

                    else
                    {
                      sub_1C5CBCF4C(v136);
                    }

                    if (v110)
                    {
                      v102 = 1;
                    }

                    else
                    {
                      v102 = sub_1C6015AC0();
                    }

                    v40 = v127;
                    v41 = v124;
LABEL_86:
                    [v40 setPosition_];
                    sub_1C6014F90();
                    [v40 setTimestamp_];
                    OUTLINED_FUNCTION_19_1(@"item-duration");
                    if (v137)
                    {
                      v113 = OUTLINED_FUNCTION_6_4();
                      if (OUTLINED_FUNCTION_28_2(v113, v114, v115))
                      {
                        [v134 doubleValue];
                        v117 = v116;

LABEL_91:
                        [v40 setDuration_];
                        [v40 setCompleted_];

                        return v40;
                      }
                    }

                    else
                    {
                      sub_1C5CBCF4C(v136);
                    }

                    v117 = 0.0;
                    goto LABEL_91;
                  }

LABEL_85:
                  v102 = 0;
                  goto LABEL_86;
                }
              }
            }

            sub_1C5CBCF4C(v136);
            goto LABEL_85;
          }
        }

        else
        {
          sub_1C5CBCF4C(v136);
        }

        v79 = 1;
        goto LABEL_61;
      }
    }

    else
    {
      sub_1C5CBCF4C(v136);
    }

    if (qword_1EC1A95A0 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EC1A95A0);
    }

    v69 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v69, qword_1EC1BE450);

    v70 = sub_1C60162B0();
    sub_1C6016F10();
    OUTLINED_FUNCTION_30_1();

    if (OUTLINED_FUNCTION_29_0())
    {
      OUTLINED_FUNCTION_21();
      v136[0] = OUTLINED_FUNCTION_20_1();
      v71 = OUTLINED_FUNCTION_12_2(4.8754e-34);
      OUTLINED_FUNCTION_10_3(v71);
      v72 = OUTLINED_FUNCTION_25_1();
      sub_1C5C6AB10(v72, v73, v74);
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_14_6();
      sub_1C5C6AB10(v22, v23, v75);
      OUTLINED_FUNCTION_26_1();
      v127[3] = a2;
      OUTLINED_FUNCTION_13_1(&dword_1C5C61000, v76, v77, "[CBM:%{public}s:%{public}s:%{public}s] not updating play position [item does not specify end position]");
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EC1A95A0 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EC1A95A0);
    }

    v60 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v60, qword_1EC1BE450);

    v61 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_30_1();

    if (OUTLINED_FUNCTION_29_0())
    {
      OUTLINED_FUNCTION_21();
      v136[0] = OUTLINED_FUNCTION_20_1();
      v62 = OUTLINED_FUNCTION_12_2(4.8754e-34);
      OUTLINED_FUNCTION_10_3(v62);
      v63 = OUTLINED_FUNCTION_25_1();
      sub_1C5C6AB10(v63, v64, v65);
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_14_6();
      sub_1C5C6AB10(v22, v23, v66);
      OUTLINED_FUNCTION_26_1();
      *(ObjectType + 24) = a2;
      OUTLINED_FUNCTION_13_1(&dword_1C5C61000, v67, v68, "[CBM:%{public}s:%{public}s:%{public}s] not updating play position [didn't find item identifiers]");
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1C5CD33E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1C5CD5040(a1);
  if (result)
  {
    return sub_1C5CD3F14(result, sub_1C5CD3EE0, 0, a3);
  }

  return result;
}

id sub_1C5CD3488()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsUPPConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unsigned __int8 *sub_1C5CD353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_1C6016A80();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C5CD3A54(result, v5);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C60175C0();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_17_1();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_16_3();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_17_1();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_16_3();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_5_4();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_16_3();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_5_4();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_16_3();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_5_4();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_16_3();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1C5CD3A54(unint64_t a1, unint64_t a2)
{
  v2 = sub_1C5CD3AC0(sub_1C5CD3ABC, 0, a1, a2);
  v6 = sub_1C5CD3AF4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C5CD3AC0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x1EEE69100](15, v5 | (v4 << 16));
}

uint64_t sub_1C5CD3AF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C6017360();
    if (!v9 || (v10 = v9, v11 = sub_1C5C68C74(v9, 0), v12 = sub_1C5CD3C54(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C60169E0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C60169E0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C60175C0();
LABEL_4:

  return sub_1C60169E0();
}

unint64_t sub_1C5CD3C54(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1C5CD3E64(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C6016A40();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C60175C0();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1C5CD3E64(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1C6016A20();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1C5CD3E64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C6016A50();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C6953510](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_1C5CD3EE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5D01490((a2 + 1), *a1, (a1 + 1));
  *a2 = result;
  return result;
}

uint64_t sub_1C5CD3F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1C5CD3F88(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1C5CD3F88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1C5D019C8(v31);
  v27 = v31[0];
  v28 = v31[1];
  v29 = v31[2];
  v30 = v32;

  while (1)
  {
    sub_1C5CD425C(&v25);
    v7 = v25;
    if (!v25)
    {
      sub_1C5C8C7F4(v27);
    }

    sub_1C5C70758(&v26, v24);
    v8 = *a5;
    v10 = sub_1C5CE36D0();
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v13 = v9;
    if (v8[3] >= v11 + v12)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1C5CD43A0(0);
        sub_1C6017670();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1C5CE9AD8();
      v14 = sub_1C5CE36D0();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v10 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1C5C653C8(v24, v23);
        __swift_destroy_boxed_opaque_existential_0(v24);

        v17 = (v16[7] + 32 * v10);
        __swift_destroy_boxed_opaque_existential_0(v17);
        sub_1C5C70758(v23, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v18[6] + 8 * v10) = v7;
    sub_1C5C70758(v24, (v18[7] + 32 * v10));
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    v18[2] = v21;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
  result = sub_1C60178D0();
  __break(1u);
  return result;
}

void sub_1C5CD4190(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1C6016900();

  [a3 *a4];
}

uint64_t sub_1C5CD41FC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C6016940();

  return v4;
}

id sub_1C5CD425C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + 8 * v10);
    sub_1C5C653C8(*(v3 + 56) + 32 * v10, &v15);
    *&v18[0] = v11;
    sub_1C5C70758(&v15, (v18 + 8));
    result = v11;
    v13 = *&v18[0];
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v14 = v1[5];
      v15 = v13;
      v16 = *(v18 + 8);
      v17 = *(&v18[1] + 8);
      v14(&v15);
      return sub_1C5C75534(&v15, sub_1C5CD4440);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        memset(v18, 0, 40);
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C5CD43A0(uint64_t a1)
{
  if (!qword_1EC1AA7C8)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    sub_1C5C66188(&unk_1ED7DCD50, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey, &unk_1C6035A58);
    v1 = sub_1C6017690();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AA7C8);
    }
  }
}

void sub_1C5CD4440(uint64_t a1)
{
  if (!qword_1EC1A8AA8)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8AA8);
    }
  }
}

uint64_t objectdestroy_10Tm()
{

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_3()
{
}

id sub_1C5CD45B0(uint64_t a1, uint64_t a2)
{
  sub_1C5CD4608(a1, a2);
  if (v2)
  {
    v3 = sub_1C6016900();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5CD47FC(void *a1)
{
  v2 = [v1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v3, v4, &unk_1C6032C48);
  v5 = sub_1C6016860();

  sub_1C5CFF1CC(v5, v18);

  if (v19)
  {
    v13 = OUTLINED_FUNCTION_22_3(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v15, v17, v18[0]);
    return OUTLINED_FUNCTION_13_2(v13, v16);
  }

  else
  {
    sub_1C5CBCF4C(v18);
    return 0;
  }
}

id sub_1C5CD4900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_6(a1, &unk_1ED7DCB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v5 = @"queue-section-id";
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"queue-item-id";
  v6 = @"queue-item-id";
  *(inited + 56) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v7, v8, &unk_1C6032C48);
  OUTLINED_FUNCTION_6_5();
  sub_1C6016880();
  OUTLINED_FUNCTION_6_5();
  v9 = sub_1C6016840();

  v10 = OUTLINED_FUNCTION_319();
  v12 = [v10 v11];

  return v12;
}

uint64_t sub_1C5CD4A44()
{
  v1 = v0;
  v2 = sub_1C5CD47FC(MPCPlaybackEngineEventPayloadKeyItemQueueSectionIdentifier);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_1C5CD47FC(MPCPlaybackEngineEventPayloadKeyItemQueueItemIdentifier);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    OUTLINED_FUNCTION_2_7(v6, qword_1ED7DCB30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6035C00;
    *(inited + 32) = @"item-begin";
    *(inited + 40) = @"item-update";
    v11 = @"item-begin";
    v12 = @"item-update";
    v13 = [v1 type];
    *&v23 = v13;
    MEMORY[0x1EEE9AC00](v13);
    v22[2] = &v23;
    v14 = sub_1C5C6F540(sub_1C5C6F658, v22, inited);
    swift_setDeallocating();
    sub_1C5C7F738();

    if (v14)
    {

      v15 = v1;
    }

    else
    {
      v15 = sub_1C5CD5FB4(v4, v5, v8, v9);

      if (!v15)
      {
        return 0;
      }
    }

    v16 = [v15 payload];
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_0_10();
    sub_1C5C661D0(v17, v18, &unk_1C6032C48);
    v19 = sub_1C6016860();

    sub_1C5CFF1CC(v19, &v23);

    if (v24)
    {
      sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
      v20 = swift_dynamicCast();
      return OUTLINED_FUNCTION_13_2(v20, v22[4]);
    }

    sub_1C5CBCF4C(&v23);
  }

  else
  {
  }

  return 0;
}

void sub_1C5CD4CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_2_7(v24, qword_1ED7DCB30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6035C00;
  *(v25 + 32) = @"account-begin";
  *(v25 + 40) = @"account-update";
  type metadata accessor for MPCPlaybackEngineEventType();
  v26 = @"account-begin";
  v27 = @"account-update";
  v28 = sub_1C6016AF0();

  OUTLINED_FUNCTION_1_6(v29, &unk_1ED7DCB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"account-id";
  v31 = @"account-id";
  *(inited + 40) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_18_2();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v32, v33, &unk_1C6032C48);
  sub_1C6016880();
  v34 = sub_1C6016840();

  v35 = OUTLINED_FUNCTION_319();
  [v35 v36];

  OUTLINED_FUNCTION_23_3();
}

uint64_t sub_1C5CD4E64(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_2_7(a1, qword_1ED7DCB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"account-begin";
  *(inited + 40) = @"account-update";
  v5 = @"account-begin";
  v6 = @"account-update";
  v7 = [v1 type];
  OUTLINED_FUNCTION_19_2();
  v16 = OUTLINED_FUNCTION_21_3(v8, v9, v10, v11, v12, v13, v14, v15, v28);
  swift_setDeallocating();
  sub_1C5C7F738();

  result = 0;
  if (v16)
  {
    v18 = [v1 payload];
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_0_10();
    sub_1C5C661D0(v19, v20, &unk_1C6032C48);
    v21 = OUTLINED_FUNCTION_12_3();

    sub_1C5CFF1CC(v21, v30);

    if (v31)
    {
      sub_1C5CD6DCC(0);
      v27 = OUTLINED_FUNCTION_15_4(v22, v23, v24, v25, v26);
      return OUTLINED_FUNCTION_13_2(v27, v29);
    }

    else
    {
      sub_1C5CBCF4C(v30);
      return 0;
    }
  }

  return result;
}

id sub_1C5CD4FF8()
{
  v1 = [v0 findPreviousEventWithType:@"interrupt-begin" matchingPayload:0];

  return v1;
}

uint64_t sub_1C5CD5040(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_2_7(a1, qword_1ED7DCB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"item-begin";
  *(inited + 40) = @"item-update";
  v5 = @"item-begin";
  v6 = @"item-update";
  v7 = [v1 type];
  OUTLINED_FUNCTION_19_2();
  v16 = OUTLINED_FUNCTION_21_3(v8, v9, v10, v11, v12, v13, v14, v15, v28);
  swift_setDeallocating();
  sub_1C5C7F738();

  result = 0;
  if (v16)
  {
    v18 = [v1 payload];
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_0_10();
    sub_1C5C661D0(v19, v20, &unk_1C6032C48);
    v21 = OUTLINED_FUNCTION_12_3();

    sub_1C5CFF1CC(v21, v30);

    if (v31)
    {
      sub_1C5CC59D8(0);
      v27 = OUTLINED_FUNCTION_15_4(v22, v23, v24, v25, v26);
      return OUTLINED_FUNCTION_13_2(v27, v29);
    }

    else
    {
      sub_1C5CBCF4C(v30);
      return 0;
    }
  }

  return result;
}

double sub_1C5CD51AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  sub_1C5CD6910(v2, a1, &v8);
  sub_1C5CD6B18(v2, a1, &v8);
  swift_beginAccess();
  v5 = v10;
  result = *&v8;
  v7 = v9;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

id sub_1C5CD5230()
{
  v0 = sub_1C5CD47FC(MPCPlaybackEngineEventPayloadKeyItemQueueSectionIdentifier);
  v3 = v1;
  if (v1)
  {
    v4 = sub_1C5CD616C(v0, v1, v2, MPCPlaybackEngineEventTypeQueueAdd, MPCPlaybackEngineEventPayloadKeyQueueSectionIdentifier);

    if (v4)
    {
      v5 = [v4 payload];
      type metadata accessor for MPCPlaybackEngineEventPayloadKey();
      OUTLINED_FUNCTION_0_10();
      sub_1C5C661D0(v6, v7, &unk_1C6032C48);
      v8 = sub_1C6016860();

      sub_1C5CFF1CC(v8, v24);

      if (v25)
      {
        if (OUTLINED_FUNCTION_22_3(v9, v10, v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v22, v23, v24[0]))
        {
          v16 = [objc_opt_self() sharedManager];
          v17 = sub_1C6016900();

          v18 = [v16 accountForHashedDSID_];

          if (v18)
          {
            v19 = objc_opt_self();
            v20 = [v18 userIdentity];
            v3 = [v19 deviceMediaLibraryWithUserIdentity_];

            return v3;
          }
        }
      }

      else
      {

        sub_1C5CBCF4C(v24);
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_1C5CD5434()
{
  v1 = sub_1C5CD47FC(MPCPlaybackEngineEventPayloadKeyItemQueueSectionIdentifier);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v0 type];
  v6 = sub_1C6016940();
  v8 = v7;
  v9 = sub_1C6016940();
  if (v6 == v9 && v8 == v10)
  {
  }

  else
  {
    v12 = OUTLINED_FUNCTION_16_4(v9);

    if ((v12 & 1) == 0)
    {
      v14 = sub_1C5CD616C(v3, v4, v13, MPCPlaybackEngineEventTypeQueueAdd, MPCPlaybackEngineEventPayloadKeyQueueSectionIdentifier);

      if (!v14)
      {
        return 0;
      }

      goto LABEL_10;
    }
  }

  v14 = v0;
LABEL_10:
  v15 = [v14 payload];
  OUTLINED_FUNCTION_18_2();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v16, v17, &unk_1C6032C48);
  v18 = sub_1C6016860();

  sub_1C5CFF1CC(v18, v80);

  if (v81)
  {
    v19 = sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
    if (OUTLINED_FUNCTION_3_6(v19, v20, v21, v22, v23, v24, v25, v26, v71, v77, v80[0]))
    {
      v27 = v72;
      switch([v72 integerValue])
      {
        case 1uLL:
          v28 = sub_1C5CD6278();
          if (!v28)
          {
            goto LABEL_36;
          }

          v29 = v28;
          OUTLINED_FUNCTION_11_2();
          v30 = sub_1C5CD65B0();
          if (!v30)
          {
            goto LABEL_35;
          }

          sub_1C5CFF1CC(v30, v80);

          if (!v81)
          {

            goto LABEL_38;
          }

          if ((OUTLINED_FUNCTION_3_6(v31, v32, v33, v34, v35, v36, v37, v38, v72, v78, v80[0]) & 1) == 0)
          {

            goto LABEL_41;
          }

          LODWORD(v39) = [v73 BOOLValue];

          return v39;
        case 2uLL:
          v40 = [v14 &selRef_publishIfNeeded];
          sub_1C6016860();

          OUTLINED_FUNCTION_20_2();
          sub_1C5CFF1CC(v41, v42);

          if (!v81)
          {
            goto LABEL_38;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_41;
          }

          v39 = v72;
          sub_1C5CD4CDC(v72, v78, v43, v44, v45, v46, v47, v48, v72, v78, v80[0], v80[1], v80[2], v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
          if (!v49)
          {

            goto LABEL_36;
          }

          v29 = v49;
          v50 = sub_1C5CD4E64(v49);
          if (!v50)
          {

LABEL_35:

            goto LABEL_36;
          }

          sub_1C5CFF1CC(v50, v80);

          if (!v81)
          {

            goto LABEL_38;
          }

          if ((OUTLINED_FUNCTION_3_6(v51, v52, v53, v54, v55, v56, v57, v58, v74, v79, v80[0]) & 1) == 0)
          {

            goto LABEL_41;
          }

          [v75 BOOLValue];

          return v39;
        case 3uLL:
          OUTLINED_FUNCTION_10_4();
          if (!sub_1C5CD65B0())
          {
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_20_2();
          sub_1C5CFF1CC(v59, v60);

          if (!v81)
          {
LABEL_38:

            goto LABEL_39;
          }

          if (OUTLINED_FUNCTION_3_6(v61, v62, v63, v64, v65, v66, v67, v68, v72, v78, v80[0]))
          {
            v69 = [v76 BOOLValue];

            return v69;
          }

LABEL_41:

          break;
        default:
LABEL_36:

          return 0;
      }
    }
  }

  else
  {
LABEL_39:

    sub_1C5CBCF4C(v80);
  }

  return 0;
}

uint64_t sub_1C5CD58F0(void *a1)
{
  v3 = [v1 type];
  v4 = sub_1C6016940();
  v6 = v5;
  v7 = sub_1C6016940();
  if (v4 == v7 && v6 == v8)
  {

LABEL_11:
    v25 = [v1 payload];
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_0_10();
    sub_1C5C661D0(v26, v27, &unk_1C6032C48);
    OUTLINED_FUNCTION_12_3();

    OUTLINED_FUNCTION_20_2();
    sub_1C5CFF1CC(v28, v29);

    if (v45)
    {
      v30 = sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
      OUTLINED_FUNCTION_7_6(v30, v31, v32, v33, v34, v35, v36, v37, v41, v42);
      if (swift_dynamicCast())
      {
        [v43 doubleValue];
        v39 = v38;

        return v39;
      }
    }

    else
    {
      sub_1C5CBCF4C(v44);
    }

    return 0;
  }

  v10 = OUTLINED_FUNCTION_8_5(v7);

  if (v10)
  {
    goto LABEL_11;
  }

  sub_1C5CD47FC(MPCPlaybackEngineEventPayloadKeyItemQueueSectionIdentifier);
  if (!v11)
  {
    return 0;
  }

  v12 = sub_1C5CD47FC(MPCPlaybackEngineEventPayloadKeyItemQueueItemIdentifier);
  if (!v13)
  {

    return 0;
  }

  OUTLINED_FUNCTION_1_6(v12, &unk_1ED7DCB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v15 = @"queue-section-id";
  v16 = sub_1C6016900();

  *(inited + 40) = v16;
  *(inited + 48) = @"queue-item-id";
  v17 = @"queue-item-id";
  v18 = sub_1C6016900();

  *(inited + 56) = v18;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v19, v20, &unk_1C6032C48);
  OUTLINED_FUNCTION_6_5();
  sub_1C6016880();
  OUTLINED_FUNCTION_6_5();
  v21 = sub_1C6016840();

  v22 = [a1 findPreviousEventWithType:@"item-resume" matchingPayload:v21];

  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = sub_1C5CD58F0(a1);

  return v24;
}

uint64_t sub_1C5CD5C18()
{
  v1 = [v0 modelKind];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 identityKind];
  }

  else
  {
    v3 = 0;
  }

  sub_1C5C64D74(0, &qword_1EC1A8BF0, 0x1E6970638);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata identityKind];
  if (!v6)
  {
    v7 = v5;
    if (!v3)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v7 = v6;
  if (!v3)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_1C5C64D74(0, &unk_1EC1A8C90, 0x1E69706A0);
  v8 = sub_1C60172D0();

  if (v8)
  {

    return 0;
  }

LABEL_10:
  sub_1C5C64D74(0, &qword_1EC1A8B78, 0x1E6970730);
  v9 = [swift_getObjCClassFromMetadata() identityKind];
  if (v9)
  {
    v10 = v9;
    if (v3)
    {
      sub_1C5C64D74(0, &unk_1EC1A8C90, 0x1E69706A0);
      v11 = sub_1C60172D0();

      if ((v11 & 1) == 0)
      {
        return 2;
      }

      return 1;
    }

    v5 = v9;
  }

  else if (!v3)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1C5CD5DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_6(a1, &unk_1ED7DCB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v9 = @"queue-section-id";
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"queue-item-id";
  v10 = @"queue-item-id";
  *(inited + 56) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v11, v12, &unk_1C6032C48);
  sub_1C6016880();
  v13 = sub_1C6016840();

  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_5_5();
  v21[2] = v15;
  v21[3] = &block_descriptor_7;
  v16 = _Block_copy(v21);

  v17 = OUTLINED_FUNCTION_319();
  [v17 v18];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_1C5CD5FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_7(a1, qword_1ED7DCB30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6035C00;
  *(v4 + 32) = @"item-begin";
  *(v4 + 40) = @"item-update";
  type metadata accessor for MPCPlaybackEngineEventType();
  v5 = @"item-begin";
  v6 = @"item-update";
  v7 = sub_1C6016AF0();

  OUTLINED_FUNCTION_1_6(v8, &unk_1ED7DCB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v10 = @"queue-section-id";
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"queue-item-id";
  v11 = @"queue-item-id";
  *(inited + 56) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_18_2();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v12, v13, &unk_1C6032C48);
  OUTLINED_FUNCTION_9_7();
  sub_1C6016880();
  OUTLINED_FUNCTION_9_7();
  v14 = sub_1C6016840();

  v15 = OUTLINED_FUNCTION_319();
  v17 = [v15 v16];

  return v17;
}

id sub_1C5CD616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  OUTLINED_FUNCTION_1_6(a1, &unk_1ED7DCB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  v7 = *a5;
  *(inited + 32) = *a5;
  v8 = v7;
  *(inited + 40) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_18_2();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v9, v10, &unk_1C6032C48);
  OUTLINED_FUNCTION_9_7();
  sub_1C6016880();
  OUTLINED_FUNCTION_9_7();
  v11 = sub_1C6016840();

  v12 = OUTLINED_FUNCTION_319();
  v14 = [v12 v13];

  return v14;
}

id sub_1C5CD6278()
{
  v1 = [v0 findPreviousEventWithType:@"device-changed" matchingPayload:0];

  return v1;
}

uint64_t sub_1C5CD62C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_5_5();
  v10[2] = v6;
  v10[3] = &block_descriptor_6;
  v7 = _Block_copy(v10);

  [v2 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}