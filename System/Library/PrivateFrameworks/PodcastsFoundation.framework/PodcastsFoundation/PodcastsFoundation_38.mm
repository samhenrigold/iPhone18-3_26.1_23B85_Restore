unint64_t sub_1D90B9BD8(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1D90B9C30(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 264 * a1), a2, 0x108uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1D90B9CAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1D917653C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1D90B9D58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D917653C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1D90B9E10(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 72 * result;
  v5 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a2 + 64);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_1D90B9EC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D8F86EDC(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D90B9F74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_1D90BA01C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1D8F86EDC(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1D90BA0C4(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1D90BA108(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1D90BA14C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D8D65618(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1D90BA1B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D8D65618(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1D90BA234(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1D9176E3C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1D90BA2E0(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

unint64_t sub_1D90BA328(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1D90BA37C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for EpisodePlayState(0);
  result = sub_1D8F86EDC(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for EpisodePlayState);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1D90BA424(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1D90BA474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F8, &qword_1D918A060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D90BA4E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45F8, &qword_1D918A060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D90BA54C(uint64_t a1)
{
  *(a1 + 8) = sub_1D90BA57C();
  result = sub_1D90BA5D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D90BA57C()
{
  result = qword_1ECABA230;
  if (!qword_1ECABA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA230);
  }

  return result;
}

unint64_t sub_1D90BA5D0()
{
  result = qword_1ECABA238;
  if (!qword_1ECABA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA238);
  }

  return result;
}

id sub_1D90BA724()
{
  v2.receiver = v0;
  v2.super_class = _s19TaskMetricsDelegateCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D90BA814(void *a1)
{
  v2 = v1;
  v4 = sub_1D917665C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1ECAB0D50);
  v9 = a1;
  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = [v9 taskInterval];
    sub_1D917663C();

    sub_1D917664C();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    *(v12 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "MAPI request duration: %fs", v12, 0xCu);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate_strongRef);
  *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate_strongRef) = 0;
}

uint64_t PodcastsContentKeySession.__allocating_init(storeTrackAdamID:)(uint64_t a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  type metadata accessor for PodcastsContentKeySession();
  swift_allocObject();
  return PodcastsContentKeySession.init(storeTrackAdamID:account:)(a1, v3);
}

uint64_t PodcastsContentKeySession.init(storeTrackAdamID:account:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = sub_1D9176C2C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  if (v24)
  {
    v25 = v24;
    if (a2)
    {
      v26 = [a2 ams_DSID];
      if (v26)
      {
        v58 = v16;
        v27 = v26;
        v28 = objc_opt_self();
        v56 = v27;
        v29 = [v28 specificAccountWithDSID_];
        v30 = objc_allocWithZone(MEMORY[0x1E69E4618]);
        v55 = v29;
        v54 = [v30 initWithIdentity_];
        v57 = [objc_opt_self() sharedInstance];
        if ([v57 syncValueForKey_])
        {
          sub_1D917928C();
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
        }

        v31 = v58;
        v62 = v60;
        v63 = v61;
        if (*(&v61 + 1))
        {
          v32 = swift_dynamicCast();
          v52 = v31[7];
          v53 = v31 + 7;
          v52(v14, v32 ^ 1u, 1, v15);
          v50 = v31[6];
          v51 = v31 + 6;
          if (v50(v14, 1, v15) != 1)
          {
            v34 = v31[4];
            v48 = v31 + 4;
            v49 = v34;
            v34(v23, v14, v15);
            v35 = v57;
            if ([v57 syncValueForKey_])
            {
              sub_1D917928C();
              v31 = v58;
              swift_unknownObjectRelease();
            }

            else
            {
              v60 = 0u;
              v61 = 0u;
            }

            v62 = v60;
            v63 = v61;
            if (*(&v61 + 1))
            {
              v36 = swift_dynamicCast();
              v52(v11, v36 ^ 1u, 1, v15);
              if (v50(v11, 1, v15) != 1)
              {
                v49(v59, v11, v15);
                if ([v35 syncValueForKey_])
                {
                  sub_1D917928C();
                  v31 = v58;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v60 = 0u;
                  v61 = 0u;
                }

                v62 = v60;
                v63 = v61;
                if (*(&v61 + 1))
                {
                  v37 = swift_dynamicCast();
                  v52(v8, v37 ^ 1u, 1, v15);
                  if (v50(v8, 1, v15) != 1)
                  {
                    v49(v18, v8, v15);
                    v41 = objc_allocWithZone(MEMORY[0x1E69E43F8]);
                    v42 = v54;
                    v43 = [v41 initWithRequestContext_];
                    [v43 setAdamID_];
                    v44 = sub_1D9176B1C();
                    [v43 setKeyServerURL_];

                    v45 = sub_1D9176B1C();
                    [v43 setStreamingleaseStopURL_];

                    v46 = sub_1D9176B1C();
                    [v43 setKeyCertificateURL_];

                    [v43 setKeyServerProtocolType_];
                    v47 = v31[1];
                    v47(v18, v15);
                    v47(v59, v15);
                    v47(v23, v15);
                    *(v3 + 16) = v43;
                    return v3;
                  }

                  v38 = v31[1];
                  v38(v59, v15);
                  v38(v23, v15);
                }

                else
                {

                  v39 = v31[1];
                  v39(v59, v15);
                  v39(v23, v15);
                  sub_1D8D08A50(&v62, &qword_1ECAB57F0, &unk_1D9190AA0);
                  v52(v8, 1, 1, v15);
                }

                v33 = v8;
                goto LABEL_31;
              }

              (v31[1])(v23, v15);
            }

            else
            {
              (v31[1])(v23, v15);

              sub_1D8D08A50(&v62, &qword_1ECAB57F0, &unk_1D9190AA0);
              v52(v11, 1, 1, v15);
            }

            v33 = v11;
LABEL_31:
            sub_1D8D08A50(v33, &unk_1ECAB5910, &qword_1D9188C90);
            goto LABEL_32;
          }
        }

        else
        {

          sub_1D8D08A50(&v62, &qword_1ECAB57F0, &unk_1D9190AA0);
          (v31[7])(v14, 1, 1, v15);
        }

        v33 = v14;
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_32:
  type metadata accessor for PodcastsContentKeySession();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1D90BB3F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1D90BB744;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D8E8A43C;
  v8[3] = &block_descriptor_79;
  v7 = _Block_copy(v8);

  [v5 stopSessionInvalidatingKeys:1 withCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_1D90BB4D8(id a1, uint64_t (*a2)(id))
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    v6 = a1;
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_1D9179D2C();
      v13 = sub_1D8CFA924(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "[PodcastsContentKeySession]: Unable to invalidate and stop session with error: %{public}s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD0F68);
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "[PodcastsContentKeySession]: Successfully invalidated and stopped session.", v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }
  }

  return a2(a1);
}

id sub_1D90BB774(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, v8, a1, v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v10 = *(v5 + 16);
  v11 = *a2;

  return [v10 v11];
}

uint64_t PodcastsContentKeySession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D90BB988()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *(v1 + 224);
  if (!v2)
  {
    goto LABEL_12;
  }

  if (v2 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1DA72AA90](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  v4 = sub_1D917980C();

  if (v4 <= 3)
  {
    LOBYTE(v2) = sub_1D8FDDEC0(v4, 2);
    goto LABEL_12;
  }

LABEL_11:
  LOBYTE(v2) = 0;
LABEL_12:
  v5 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *(v6 + 16);
  if (v7 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x1DA72AA90](0, v7);

LABEL_19:
    v9 = *&v8[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes];

    v10 = *(v9 + 74);

    if (v10 != 2)
    {
      if ((v2 & 1) == 0)
      {
        v11 = 0;
        return v11 & 1;
      }

      goto LABEL_21;
    }

LABEL_20:
    LOBYTE(v10) = 0;
    v11 = 0;
    if ((v2 & 1) == 0)
    {
      return v11 & 1;
    }

LABEL_21:
    v11 = v10 ^ 1;
    return v11 & 1;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    goto LABEL_19;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D90BBB70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x62694C6C61636F6CLL;
  v4 = 0xEC00000079726172;
  if (v2 != 1)
  {
    v3 = 0x7265666E69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x495041616964656DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x62694C6C61636F6CLL;
  v8 = 0xEC00000079726172;
  if (*a2 != 1)
  {
    v7 = 0x7265666E69;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x495041616964656DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D90BBC7C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D90BBD24(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90BBDB8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D90BBE5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D90BC268(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D90BBE8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000079726172;
  v5 = 0x62694C6C61636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x7265666E69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x495041616964656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1D90BBEF0()
{
  qword_1ECABA2C8 = &type metadata for MediaAPIProviderFactory;
  unk_1ECABA2D0 = &off_1F54823A8;
  qword_1ECABA300 = &_s22MAPIRequestTransformerVN;
  unk_1ECABA308 = &off_1F54819B8;
  qword_1ECABA310 = 1;
  qword_1ECABA2D8 = 5;
  byte_1ECABA2E0 = 1;
}

void sub_1D90BBF9C()
{
  qword_1ECAB2BB8 = &type metadata for DefaultProviderFactory;
  unk_1ECAB2BC0 = &off_1F54823C8;
  qword_1ECAB2BF0 = &_s22MAPIRequestTransformerVN;
  unk_1ECAB2BF8 = &off_1F54819B8;
  qword_1ECAB2C00 = 1;
  qword_1ECAB2BC8 = 40;
  byte_1ECAB2BD0 = 0;
}

uint64_t sub_1D90BC008@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_1D90BBF5C(a2, v5);
}

uint64_t static PodcastsMediaLibrary.Configuration.platform.getter@<X0>(uint64_t a1@<X8>)
{
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB3710 != -1)
    {
      swift_once();
    }

    v2 = &unk_1ECABA2B0;
  }

  else
  {
    if (qword_1ECAB2B98 != -1)
    {
      swift_once();
    }

    v2 = &unk_1ECAB2BA0;
  }

  return sub_1D90BBF5C(v2, a1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D90BC150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D90BC198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D90BC214()
{
  result = qword_1ECABA318;
  if (!qword_1ECABA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA318);
  }

  return result;
}

unint64_t sub_1D90BC268(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t static PodcastsMediaLibrary.Error.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      if (v3 == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 != 5 || v3 != 5)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      if (v3 == 4)
      {
        goto LABEL_20;
      }
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      if (v2 != 2 || v3 != 2)
      {
        goto LABEL_16;
      }

LABEL_20:
      v6 = 1;
      goto LABEL_21;
    }

    if (v3 == 1)
    {
      goto LABEL_20;
    }
  }

  else if (!v3)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = 0;
LABEL_21:
  sub_1D90BC378(*a1);
  sub_1D90BC378(v3);
  sub_1D90BC388(v2);
  sub_1D90BC388(v3);
  return v6;
}

id sub_1D90BC378(id result)
{
  if (result >= 7)
  {
    return result;
  }

  return result;
}

void sub_1D90BC388(id a1)
{
  if (a1 >= 7)
  {
  }
}

uint64_t sub_1D90BC398(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      if (v3 == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 != 5 || v3 != 5)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      if (v3 == 4)
      {
        goto LABEL_20;
      }
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      if (v2 != 2 || v3 != 2)
      {
        goto LABEL_16;
      }

LABEL_20:
      v6 = 1;
      goto LABEL_21;
    }

    if (v3 == 1)
    {
      goto LABEL_20;
    }
  }

  else if (!v3)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = 0;
LABEL_21:
  sub_1D90BC378(*a1);
  sub_1D90BC378(v3);
  sub_1D90BC388(v2);
  sub_1D90BC388(v3);
  return v6;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation0A12MediaLibraryC5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D90BC474(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90BC4D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1D90BC534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D90BF3EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90BC55C(uint64_t a1)
{
  v2 = sub_1D8CFE96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC598(uint64_t a1)
{
  v2 = sub_1D8CFE96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC5E4(uint64_t a1)
{
  v2 = sub_1D90BED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC620(uint64_t a1)
{
  v2 = sub_1D90BED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC65C(uint64_t a1)
{
  v2 = sub_1D8CFE9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC698(uint64_t a1)
{
  v2 = sub_1D8CFE9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC6D4(uint64_t a1)
{
  v2 = sub_1D90BECCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC710(uint64_t a1)
{
  v2 = sub_1D90BECCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC758(uint64_t a1)
{
  v2 = sub_1D90BEC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC794(uint64_t a1)
{
  v2 = sub_1D90BEC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BC7D0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D90BC818(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D59E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D90BC900(uint64_t a1)
{
  v2 = sub_1D90BEAF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BC93C(uint64_t a1)
{
  v2 = sub_1D90BEAF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D90BC978(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D90BC9F8(uint64_t a1)
{
  v2 = sub_1D90BED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCA34(uint64_t a1)
{
  v2 = sub_1D90BED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BCA70(uint64_t a1)
{
  v2 = sub_1D90BEB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCAAC(uint64_t a1)
{
  v2 = sub_1D90BEB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90BCAE8()
{
  if (*v0)
  {
    return 0x496C616974696E69;
  }

  else
  {
    return 25705;
  }
}

void sub_1D90BCB1C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x496C616974696E69 && a2 == 0xE900000000000044)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D90BCBF8(uint64_t a1)
{
  v2 = sub_1D90BEC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCC34(uint64_t a1)
{
  v2 = sub_1D90BEC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D90BCC70(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D90BCCF8(uint64_t a1)
{
  v2 = sub_1D90BEA4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90BCD34(uint64_t a1)
{
  v2 = sub_1D90BEA4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MediaIdentifier.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 32);
  if (v10 <= 3)
  {
    if (*(v1 + 32) > 1u)
    {
      if (v10 != 2)
      {
        MEMORY[0x1DA72B390](4, v5);
LABEL_29:

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        return;
      }

      MEMORY[0x1DA72B390](3, v5);
      MEMORY[0x1DA72B390](*(v8 + 16));
      v13 = *(v8 + 16);
      if (v13)
      {
        v14 = v8 + 40;
        do
        {

          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

          v14 += 16;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      if (!*(v1 + 32))
      {
        MEMORY[0x1DA72B390](1, v5);
        v12 = v8;
        goto LABEL_38;
      }

      MEMORY[0x1DA72B390](2, v5);
      MEMORY[0x1DA72B390](*(v8 + 16));
      v19 = *(v8 + 16);
      if (v19)
      {
        v20 = (v8 + 32);
        do
        {
          v21 = *v20++;
          MEMORY[0x1DA72B3C0](v21);
          --v19;
        }

        while (v19);
      }
    }
  }

  else
  {
    v11 = *(v1 + 16);
    if (*(v1 + 32) > 5u)
    {
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          MEMORY[0x1DA72B390](8, v5);

          sub_1D8E8874C(a1, v8);
        }

        else
        {
          MEMORY[0x1DA72B390](0, v5);
        }

        return;
      }

      MEMORY[0x1DA72B390](7, v5);
      MEMORY[0x1DA72B390](*(v8 + 16));
      v16 = *(v8 + 16);
      if (v16)
      {
        v17 = (v8 + 32);
        do
        {
          v18 = *v17++;
          MEMORY[0x1DA72B3C0](v18);
          --v16;
        }

        while (v16);
      }

      if (v11)
      {
LABEL_23:
        sub_1D9179DDC();
        return;
      }

      sub_1D9179DDC();
      v12 = v9;
LABEL_38:
      MEMORY[0x1DA72B3C0](v12);
      return;
    }

    if (v10 == 4)
    {
      v15 = *(v1 + 24);
      MEMORY[0x1DA72B390](5, v5);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      if (!v15)
      {
        goto LABEL_23;
      }

      sub_1D9179DDC();
      goto LABEL_29;
    }

    MEMORY[0x1DA72B390](6, v5);
    MEMORY[0x1DA72B390](*(v8 + 16));
    v22 = *(v8 + 16);
    if (v22)
    {
      v23 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v24 = *(v4 + 72);
      do
      {
        sub_1D90BEDC8(v23, v7);
        PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)(a1);
        sub_1D90BEE2C(v7);
        v23 += v24;
        --v22;
      }

      while (v22);
    }
  }
}

uint64_t MediaIdentifier.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D9179DBC();
  MediaIdentifier.hash(into:)(v4);
  return sub_1D9179E1C();
}

uint64_t MediaIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3E0, &qword_1D91B3E98);
  v4 = *(v3 - 8);
  v102 = v3;
  v103 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v83 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3E8, &qword_1D91B3EA0);
  v101 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3F0, &qword_1D91B3EA8);
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v83 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3F8, &qword_1D91B3EB0);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v109 = &v83 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA400, &qword_1D91B3EB8);
  v96 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v105 = &v83 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA408, &qword_1D91B3EC0);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v108 = &v83 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA410, &qword_1D91B3EC8);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v107 = &v83 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA418, &qword_1D91B3ED0);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v14 = &v83 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA420, &qword_1D91B3ED8);
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA428, &unk_1D91B3EE0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v83 - v20;
  v22 = a1[3];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D8CFE96C();
  v23 = v114;
  sub_1D9179EEC();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v113);
  }

  v84 = v17;
  v83 = v15;
  v85 = v14;
  v24 = v107;
  v25 = v108;
  v27 = v109;
  v26 = v110;
  v86 = 0;
  v28 = v111;
  v87 = v19;
  v29 = v112;
  v114 = v18;
  v30 = sub_1D917991C();
  v31 = (2 * *(v30 + 16)) | 1;
  v116 = v30;
  v117 = v30 + 32;
  v118 = 0;
  v119 = v31;
  v32 = sub_1D8E89BDC();
  if (v32 == 9 || v118 != v119 >> 1)
  {
    v38 = v21;
    v39 = sub_1D917951C();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
    *v41 = &type metadata for MediaIdentifier;
    v42 = v114;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v87 + 8))(v38, v42);
    goto LABEL_12;
  }

  if (v32 > 3u)
  {
    v33 = v114;
    if (v32 > 5u)
    {
      v34 = v29;
      if (v32 == 6)
      {
        LOBYTE(v120) = 6;
        sub_1D90BEB48();
        v55 = v86;
        sub_1D917982C();
        v79 = v55;
        if (!v55)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3A8, &unk_1D91B3E80);
          sub_1D90BEB9C(&qword_1ECABA448, &qword_1ECAB2C18, &protocol conformance descriptor for PodcastsMediaLibrary.MediaItemSnapshot, MEMORY[0x1E69E6330]);
          v56 = v100;
          sub_1D91798FC();
          v86 = 0;
          (*(v99 + 8))(v26, v56);
          (*(v87 + 8))(v21, v33);
          swift_unknownObjectRelease();
          v76 = 0;
          v80 = 0;
          v68 = v120;
          v81 = 5;
          goto LABEL_39;
        }
      }

      else if (v32 == 7)
      {
        LOBYTE(v120) = 7;
        sub_1D90BEAF4();
        v35 = v106;
        v36 = v86;
        sub_1D917982C();
        if (!v36)
        {
          v111 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87E0, &qword_1D91A3618);
          v115 = 0;
          sub_1D90BEF54(&qword_1ECABA440, MEMORY[0x1E69E7708], MEMORY[0x1E69E6330]);
          v37 = v104;
          sub_1D91798FC();
          v68 = v120;
          v115 = 1;
          v69 = sub_1D91798AC();
          v70 = (v87 + 8);
          v86 = 0;
          v76 = v69;
          v78 = v77;
          (*(v101 + 8))(v35, v37);
          (*v70)(v111, v33);
          swift_unknownObjectRelease();
          v79 = 0;
          v80 = v78 & 1;
          v81 = 6;
LABEL_39:
          v64 = v113;
          goto LABEL_41;
        }
      }

      else
      {
        LOBYTE(v120) = 8;
        sub_1D90BEA4C();
        v58 = v28;
        v59 = v86;
        sub_1D917982C();
        v79 = v59;
        if (!v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA378, &unk_1D91B3E70);
          sub_1D90BEE88(&qword_1ECABA430, sub_1D90BEF00, MEMORY[0x1E69E6330]);
          v60 = v102;
          sub_1D91798FC();
          v86 = 0;
          (*(v103 + 8))(v58, v60);
          (*(v87 + 8))(v21, v33);
          swift_unknownObjectRelease();
          v76 = 0;
          v80 = 0;
          v68 = v120;
          v81 = 7;
          goto LABEL_39;
        }
      }

      goto LABEL_33;
    }

    if (v32 == 4)
    {
      LOBYTE(v120) = 4;
      sub_1D90BEC78();
      v51 = v105;
      v52 = v86;
      sub_1D917982C();
      if (!v52)
      {
        v53 = v21;
        v54 = v91;
        v79 = 0;
        v68 = sub_1D91798BC();
        v76 = v71;
        v86 = 0;
        (*(v96 + 8))(v51, v54);
        (*(v87 + 8))(v53, v33);
        swift_unknownObjectRelease();
        v80 = 0;
        v81 = 3;
        goto LABEL_40;
      }
    }

    else
    {
      LOBYTE(v120) = 5;
      sub_1D90BEC24();
      v61 = v27;
      v62 = v86;
      sub_1D917982C();
      if (!v62)
      {
        v66 = v21;
        LOBYTE(v120) = 0;
        v67 = v98;
        v68 = sub_1D91798BC();
        v76 = v72;
        LOBYTE(v120) = 1;
        v73 = sub_1D917984C();
        v74 = v67;
        v75 = (v87 + 8);
        v86 = 0;
        v80 = v73;
        v79 = v82;
        (*(v97 + 8))(v61, v74);
        (*v75)(v66, v114);
        swift_unknownObjectRelease();
        v81 = 4;
        goto LABEL_40;
      }
    }

LABEL_33:
    (*(v87 + 8))(v21, v33);
    goto LABEL_12;
  }

  if (v32 > 1u)
  {
    v48 = v87;
    v79 = v86;
    if (v32 == 2)
    {
      LOBYTE(v120) = 2;
      sub_1D90BED20();
      v49 = v114;
      sub_1D917982C();
      if (!v79)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
        sub_1D90BF004(&qword_1ECABA450, sub_1D8EF1774, MEMORY[0x1E69E6330]);
        v50 = v93;
        sub_1D91798FC();
        v86 = 0;
        (*(v92 + 8))(v24, v50);
        (*(v48 + 8))(v21, v49);
        swift_unknownObjectRelease();
        v76 = 0;
        v80 = 0;
        v68 = v120;
        v81 = 1;
LABEL_40:
        v34 = v112;
        v64 = v113;
        goto LABEL_41;
      }
    }

    else
    {
      LOBYTE(v120) = 3;
      sub_1D90BECCC();
      v49 = v114;
      sub_1D917982C();
      if (!v79)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
        sub_1D90906C8(&qword_1EDCD0A50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
        v65 = v95;
        sub_1D91798FC();
        v86 = 0;
        (*(v94 + 8))(v25, v65);
        (*(v48 + 8))(v21, v49);
        swift_unknownObjectRelease();
        v76 = 0;
        v80 = 0;
        v68 = v120;
        v81 = 2;
        goto LABEL_40;
      }
    }

    (*(v48 + 8))(v21, v49);
LABEL_12:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v113);
  }

  v44 = v21;
  v45 = v86;
  if (v32)
  {
    LOBYTE(v120) = 1;
    sub_1D90BED74();
    v57 = v85;
    v47 = v114;
    sub_1D917982C();
    v79 = v45;
    if (v45)
    {
      goto LABEL_17;
    }

    sub_1D8EF1774();
    v63 = v90;
    sub_1D91798FC();
    (*(v89 + 8))(v57, v63);
    (*(v87 + 8))(v44, v47);
    swift_unknownObjectRelease();
    v86 = 0;
    v76 = 0;
    v80 = 0;
    v81 = 0;
    v68 = v120;
  }

  else
  {
    LOBYTE(v120) = 0;
    sub_1D8CFE9C0();
    v46 = v84;
    v47 = v114;
    sub_1D917982C();
    v79 = v45;
    if (v45)
    {
LABEL_17:
      (*(v87 + 8))(v44, v47);
      goto LABEL_12;
    }

    v86 = 0;
    (*(v88 + 8))(v46, v83);
    (*(v87 + 8))(v44, v47);
    swift_unknownObjectRelease();
    v68 = 0;
    v76 = 0;
    v80 = 0;
    v81 = 8;
  }

  v64 = v113;
  v34 = v29;
LABEL_41:
  *v34 = v68;
  *(v34 + 8) = v76;
  *(v34 + 16) = v80;
  *(v34 + 24) = v79;
  *(v34 + 32) = v81;
  return __swift_destroy_boxed_opaque_existential_1Tm(v64);
}

uint64_t sub_1D90BE3C4()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D9179DBC();
  MediaIdentifier.hash(into:)(v4);
  return sub_1D9179E1C();
}

uint64_t sub_1D90BE41C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1D9179DBC();
  MediaIdentifier.hash(into:)(v5);
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation15MediaIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v37[0] = *a1;
  v37[1] = v2;
  v37[2] = v4;
  v37[3] = v5;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v10;
  v42 = v9;
  v43 = v11;
  if (v6 <= 3)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        if (!v11)
        {
          sub_1D90BF6E8(v37);
          return v3 == v7;
        }

        goto LABEL_53;
      }

      if (v11 != 1)
      {
        goto LABEL_52;
      }

      v23 = *(v3 + 16);
      if (v23 == *(v7 + 16))
      {
        if (!v23 || v3 == v7)
        {
LABEL_41:
          sub_1D8D092C0(v7, v8, v10, v9, 1u);
          sub_1D8D092C0(v3, v2, v4, v5, 1u);
          goto LABEL_48;
        }

        v24 = (v3 + 32);
        v25 = (v7 + 32);
        while (*v24 == *v25)
        {
          ++v24;
          ++v25;
          if (!--v23)
          {
            goto LABEL_41;
          }
        }
      }

      sub_1D8D092C0(v7, v8, v10, v9, 1u);
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      v31 = 1;
      goto LABEL_54;
    }

    if (v6 == 2)
    {
      if (v11 != 2)
      {
        goto LABEL_52;
      }

      v14 = sub_1D8E83CA4(v3, v7);
      sub_1D8D092C0(v7, v8, v10, v9, 2u);
      v15 = v3;
      v16 = v2;
      v17 = v4;
      v18 = v5;
      v19 = 2;
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_52;
      }

      if (v3 == v7 && v2 == v8)
      {
        sub_1D8D092C0(v3, v2, v10, v9, 3u);
        sub_1D8D092C0(v3, v2, v4, v5, 3u);
        goto LABEL_48;
      }

      v14 = sub_1D9179ACC();
      sub_1D8D092C0(v7, v8, v10, v9, 3u);
      v15 = v3;
      v16 = v2;
      v17 = v4;
      v18 = v5;
      v19 = 3;
    }

    sub_1D8D092C0(v15, v16, v17, v18, v19);
    sub_1D90BF6E8(v37);
    return v14 & 1;
  }

  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 == 7)
      {
        if (v11 == 7)
        {
          sub_1D8D092C0(v7, v8, v10, v9, 7u);
          sub_1D8D092C0(v3, v2, v4, v5, 7u);
          sub_1D8E8477C(v3, v7);
LABEL_51:
          v26 = v12;
          sub_1D90BF6E8(v37);
          return v26 & 1;
        }

        goto LABEL_52;
      }

      if (v11 != 8 || v8 | v7 | v10 | v9)
      {
        goto LABEL_53;
      }

LABEL_48:
      sub_1D90BF6E8(v37);
      return 1;
    }

    if (v11 == 6)
    {
      v20 = *(v3 + 16);
      if (v20 != *(v7 + 16))
      {
LABEL_57:
        sub_1D8D092C0(v7, v8, v10, v9, 6u);
        v27 = v3;
        v28 = v2;
        v29 = v4;
        v30 = v5;
        v31 = 6;
        goto LABEL_54;
      }

      if (v20 && v3 != v7)
      {
        v21 = (v3 + 32);
        v22 = (v7 + 32);
        while (*v21 == *v22)
        {
          ++v21;
          ++v22;
          if (!--v20)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_57;
      }

LABEL_31:
      sub_1D8D092C0(v7, v8, v10, v9, 6u);
      sub_1D8D092C0(v3, v2, v4, v5, 6u);
      sub_1D90BF6E8(v37);
      if (v4)
      {
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10 & 1 | (v2 != v8))
      {
        return 0;
      }

      return 1;
    }

LABEL_52:

LABEL_53:
    v27 = v7;
    v28 = v8;
    v29 = v10;
    v30 = v9;
    v31 = v11;
LABEL_54:
    sub_1D8D092C0(v27, v28, v29, v30, v31);
    sub_1D90BF6E8(v37);
    return 0;
  }

  if (v6 != 4)
  {
    if (v11 == 5)
    {
      sub_1D8D092C0(v7, v8, v10, v9, 5u);
      sub_1D8D092C0(v3, v2, v4, v5, 5u);
      v12 = sub_1D8E84588(v3, v7);
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (v11 != 4)
  {

    goto LABEL_52;
  }

  if ((v3 != v7 || v2 != v8) && (sub_1D9179ACC() & 1) == 0)
  {
    v32 = v7;
    v33 = v8;
    v34 = v10;
    v35 = v9;
    goto LABEL_67;
  }

  if (v5)
  {
    if (v9)
    {
      if (v4 == v10 && v5 == v9)
      {
        sub_1D8D092C0(v7, v8, v4, v5, 4u);
        sub_1D8D092C0(v3, v2, v4, v5, 4u);
        goto LABEL_48;
      }

      v36 = sub_1D9179ACC();
      sub_1D8D092C0(v7, v8, v10, v9, 4u);
      sub_1D8D092C0(v3, v2, v4, v5, 4u);
      sub_1D90BF6E8(v37);
      return (v36 & 1) != 0;
    }

    v32 = v7;
    v33 = v8;
    v34 = v10;
    v35 = 0;
LABEL_67:
    sub_1D8D092C0(v32, v33, v34, v35, 4u);
    v27 = v3;
    v28 = v2;
    v29 = v4;
    v30 = v5;
    v31 = 4;
    goto LABEL_54;
  }

  sub_1D8D092C0(v7, v8, v10, v9, 4u);
  sub_1D8D092C0(v3, v2, v4, 0, 4u);

  sub_1D90BF6E8(v37);
  if (v9)
  {

    return 0;
  }

  return 1;
}

unint64_t sub_1D90BEA4C()
{
  result = qword_1ECABA370;
  if (!qword_1ECABA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA370);
  }

  return result;
}

unint64_t sub_1D90BEAA0()
{
  result = qword_1ECABA388;
  if (!qword_1ECABA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA388);
  }

  return result;
}

unint64_t sub_1D90BEAF4()
{
  result = qword_1ECABA390;
  if (!qword_1ECABA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA390);
  }

  return result;
}

unint64_t sub_1D90BEB48()
{
  result = qword_1ECABA3A0;
  if (!qword_1ECABA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3A0);
  }

  return result;
}

uint64_t sub_1D90BEB9C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA3A8, &unk_1D91B3E80);
    sub_1D90BEFC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90BEC24()
{
  result = qword_1ECABA3B8;
  if (!qword_1ECABA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3B8);
  }

  return result;
}

unint64_t sub_1D90BEC78()
{
  result = qword_1ECABA3C0;
  if (!qword_1ECABA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3C0);
  }

  return result;
}

unint64_t sub_1D90BECCC()
{
  result = qword_1ECABA3C8;
  if (!qword_1ECABA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3C8);
  }

  return result;
}

unint64_t sub_1D90BED20()
{
  result = qword_1ECABA3D0;
  if (!qword_1ECABA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA3D0);
  }

  return result;
}

unint64_t sub_1D90BED74()
{
  result = qword_1ECAB2308;
  if (!qword_1ECAB2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2308);
  }

  return result;
}

uint64_t sub_1D90BEDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D90BEE2C(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D90BEE88(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA378, &unk_1D91B3E70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90BEF00()
{
  result = qword_1ECABA438;
  if (!qword_1ECABA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA438);
  }

  return result;
}

uint64_t sub_1D90BEF54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB87E0, &qword_1D91A3618);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D90BEFC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D90BF004(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB47C0, &qword_1D91B3E90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90BF080()
{
  result = qword_1ECABA458;
  if (!qword_1ECABA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA458);
  }

  return result;
}

unint64_t sub_1D90BF0D8()
{
  result = qword_1ECABA460;
  if (!qword_1ECABA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA460);
  }

  return result;
}

unint64_t sub_1D90BF130()
{
  result = qword_1ECABA468;
  if (!qword_1ECABA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA468);
  }

  return result;
}

unint64_t sub_1D90BF188()
{
  result = qword_1ECABA470;
  if (!qword_1ECABA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA470);
  }

  return result;
}

unint64_t sub_1D90BF1E0()
{
  result = qword_1ECABA478;
  if (!qword_1ECABA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA478);
  }

  return result;
}

unint64_t sub_1D90BF238()
{
  result = qword_1ECABA480;
  if (!qword_1ECABA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA480);
  }

  return result;
}

unint64_t sub_1D90BF290()
{
  result = qword_1ECABA488;
  if (!qword_1ECABA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA488);
  }

  return result;
}

unint64_t sub_1D90BF2E8()
{
  result = qword_1ECABA490;
  if (!qword_1ECABA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA490);
  }

  return result;
}

unint64_t sub_1D90BF340()
{
  result = qword_1ECABA498;
  if (!qword_1ECABA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA498);
  }

  return result;
}

unint64_t sub_1D90BF398()
{
  result = qword_1ECABA4A0;
  if (!qword_1ECABA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4A0);
  }

  return result;
}

uint64_t sub_1D90BF3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736163646F70 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6970456C61636F6CLL && a2 == 0xED00007365646F73 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F506C61636F6CLL && a2 == 0xEC00000074736163 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974617473 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746F687370616E73 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657551616964656DLL && a2 == 0xEA00000000007972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D91D59C0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D90BF6E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4A8, &unk_1D91B4C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D90BF758(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v36 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (v9 << 10) | (16 * v10);
      v12 = *(*(a1 + 56) + v11);
      v13 = *(*(a1 + 56) + v11 + 8);
      if (v13 >> 60 != 15)
      {
        v14 = (*(a1 + 48) + v11);
        v34 = v14[1];
        v35 = *v14;
        v15 = *(v2 + 16);
        v33 = v13;
        v32 = v12;
        v16 = v12;
        if (*(v2 + 24) <= v15)
        {
          v19 = v13;
          sub_1D8DA04B0(v12, v13);
          sub_1D8DA04B0(v16, v19);

          sub_1D90089D0(v15 + 1, 1);
          v2 = v36;
          v18 = v34;
        }

        else
        {
          v17 = v13;
          sub_1D8DA04B0(v12, v13);
          sub_1D8DA04B0(v16, v17);
          v18 = v34;
        }

        sub_1D9179DBC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v20 = sub_1D9179E1C();
        v21 = v2 + 64;
        v22 = -1 << *(v2 + 32);
        v23 = v20 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6))) == 0)
        {
          v26 = 0;
          v27 = (63 - v22) >> 6;
          v13 = v33;
          v12 = v32;
          while (++v24 != v27 || (v26 & 1) == 0)
          {
            v28 = v24 == v27;
            if (v24 == v27)
            {
              v24 = 0;
            }

            v26 |= v28;
            v29 = *(v21 + 8 * v24);
            if (v29 != -1)
            {
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
              goto LABEL_25;
            }
          }

LABEL_28:
          __break(1u);
          return;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v2 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
        v13 = v33;
        v12 = v32;
LABEL_25:
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = 16 * v25;
        v31 = (*(v2 + 48) + v30);
        *v31 = v35;
        v31[1] = v18;
        *(*(v2 + 56) + v30) = v12;
        ++*(v2 + 16);
      }

      sub_1D8D75668(v12, v13);
      v8 = v9;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_9;
    }
  }
}

void sub_1D90BFA08(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v173 = &v172 - v6;
  v7 = [a1 title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D917820C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  v12 = [a1 assetURL];
  if (v12 || (v12 = [a1 enclosureURL]) != 0)
  {
    v13 = v12;
    v14 = sub_1D917820C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  v17 = [a1 podcast];
  if (v17 && (v18 = v17, v19 = [v17 feedURL], v18, v19))
  {
    v20 = sub_1D917820C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  v23 = [a1 storeTrackId];
  if (v23)
  {
    v24 = [a1 storeTrackId];
    v25 = v24 & ~(v24 >> 63);
  }

  else
  {
    v25 = 0;
  }

  *(a2 + 48) = v25;
  *(a2 + 56) = v23 == 0;
  v26 = [a1 podcast];
  if (v26)
  {
    v27 = v26;
    if (![objc_opt_self() isEmpty_])
    {
      v30 = [v27 storeCollectionId];

      v29 = 0;
      v28 = v30 & ~(v30 >> 63);
      goto LABEL_19;
    }
  }

  v28 = 0;
  v29 = 1;
LABEL_19:
  *(a2 + 64) = v28;
  *(a2 + 72) = v29;
  v31 = [a1 podcast];
  if (v31 && (v32 = v31, v33 = [v31 title], v32, v33))
  {
    v34 = sub_1D917820C();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v38 = (a2 + v37[13]);
  *v38 = v34;
  v38[1] = v36;
  [a1 duration];
  *(a2 + v37[14]) = v39;
  v40 = [a1 podcast];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 isSerialShowTypeInFeed];
  }

  else
  {
    v42 = 0;
  }

  *(a2 + v37[33]) = v42;
  *(a2 + v37[31]) = [a1 episodeNumber];
  *(a2 + v37[32]) = [a1 seasonNumber];
  v43 = [a1 podcast];
  if (v43 && (v44 = v43, v45 = [v43 imageURL], v44, v45))
  {
    sub_1D917820C();

    sub_1D9176BFC();
  }

  else
  {
    v46 = v37[18];
    v47 = sub_1D9176C2C();
    (*(*(v47 - 8) + 56))(a2 + v46, 1, 1, v47);
  }

  v48 = [a1 podcast];
  if (v48 && (v49 = v48, v50 = [v48 artworkTemplateURL], v49, v50) || (v51 = objc_msgSend(a1, sel_podcast)) != 0 && (v52 = v51, v50 = objc_msgSend(v51, sel_imageURL), v52, v50))
  {
    v53 = &selRef_redirectURLForStoreCollectionId_;
    v54 = sub_1D917820C();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
    v53 = &selRef_redirectURLForStoreCollectionId_;
  }

  v57 = (a2 + v37[34]);
  *v57 = v54;
  v57[1] = v56;
  v58 = [a1 uuid];
  if (v58)
  {
    v59 = v58;
    v60 = sub_1D917820C();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  *(a2 + 80) = v60;
  *(a2 + 88) = v62;
  v63 = [a1 guid];
  if (v63)
  {
    v64 = v63;
    v65 = sub_1D917820C();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  *(a2 + 96) = v65;
  *(a2 + 104) = v67;
  v68 = [objc_opt_self() validatedIdNumberFromStoreId_];
  if (v68)
  {
    v69 = v68;
    v70 = [v68 stringValue];
    v71 = sub_1D917820C();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  *(a2 + 112) = v71;
  *(a2 + 120) = v73;
  [a1 playhead];
  v75 = a2 + v37[15];
  *v75 = v74;
  *(v75 + 8) = 0;
  type metadata accessor for PodcastsPlaybackSettingsHelper();
  v76 = [a1 podcast];
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v77 = qword_1ECAB1990;
  v78 = sub_1D90AB800(v76, v77);

  v79 = a2 + v37[16];
  *v79 = v78;
  *(v79 + 4) = 0;
  v80 = [a1 podcast];
  if (v80 && (v81 = v80, v82 = [v80 advancedPlaybackSettings], v81, v82) && (v83 = objc_msgSend(v82, sel_hasCustomSettings), v82, (v83 & 1) != 0))
  {
    v84 = 0x6D6F74737563;
  }

  else
  {
    v84 = 0x6C61626F6C67;
  }

  v85 = (a2 + v37[17]);
  *v85 = v84;
  v85[1] = 0xE600000000000000;
  *(a2 + v37[21]) = 1;
  v86 = [a1 itemDescriptionWithoutHTML];
  if (v86)
  {
    v87 = v86;
    v88 = sub_1D917820C();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0;
  }

  v91 = (a2 + v37[19]);
  *v91 = v88;
  v91[1] = v90;
  v92 = v37[22];
  [a1 pubDate];
  sub_1D9176CBC();
  v93 = sub_1D9176E3C();
  (*(*(v93 - 8) + 56))(a2 + v92, 0, 1, v93);
  v94 = sub_1D911E490([a1 episodeNumber], objc_msgSend(a1, sel_seasonNumber), v42, a2 + v92);
  v95 = (a2 + v37[23]);
  *v95 = v94;
  v95[1] = v96;
  v97 = [a1 podcast];
  if (v97 && (v98 = v97, v99 = [v97 channel], v98, v99))
  {
    v100 = [v99 subscriptionActive];
  }

  else
  {
    v100 = 0;
  }

  *(a2 + v37[24]) = v100;
  v101 = [a1 isExplicit];
  *(a2 + v37[25]) = v101;
  *(a2 + v37[27]) = [a1 isEntitled] ^ 1;
  v102 = v37[12];
  v103 = [a1 objectID];
  v104 = [v103 URIRepresentation];

  sub_1D9176B9C();
  v105 = sub_1D9176C2C();
  v106 = *(v105 - 8);
  v107 = *(v106 + 56);
  v174 = v106 + 56;
  v175 = v107;
  v107(a2 + v102, 0, 1, v105);
  v108 = 0;
  if (v101)
  {
    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v109 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v109 + 24));
    v110 = *(v109 + 16);
    os_unfair_lock_unlock((v109 + 24));
    v108 = v110 != 0;
  }

  *(a2 + v37[26]) = v108;
  if ([a1 isAudio])
  {
    v111 = 0;
  }

  else if ([a1 isVideo])
  {
    v111 = 1;
  }

  else if ([a1 isExternalType])
  {
    v111 = 4;
  }

  else
  {
    v111 = 5;
  }

  *(a2 + v37[30]) = v111;
  v112 = [a1 priceType];
  if (v112)
  {
    v113 = v112;
    sub_1D917820C();

    v114 = sub_1D917980C();

    v115 = 4;
    if (v114 < 4)
    {
      v115 = v114;
    }
  }

  else
  {
    v115 = 4;
  }

  *(a2 + v37[29]) = v115;
  *(a2 + v37[28]) = [a1 isDownloaded];
  *(a2 + v37[20]) = 0;
  v116 = [a1 podcastUuid];
  if (v116)
  {
    v117 = v116;
    v118 = sub_1D917820C();
    v120 = v119;
  }

  else
  {
    v118 = 0;
    v120 = 0;
  }

  v121 = (a2 + v37[39]);
  *v121 = v118;
  v121[1] = v120;
  v122 = [a1 podcast];
  if (v122)
  {
    v123 = v122;
    v124 = MTPodcast.episodeSortType.getter();
  }

  else
  {
    v124 = 1;
  }

  *(a2 + v37[41]) = v124;
  *(a2 + v37[35]) = sub_1D90C6854();
  v125 = [a1 podcast];
  if (v125)
  {
    v126 = v125;
    v127 = [v125 hidesPlayedEpisodes];

    LOBYTE(v125) = MTPodcastHidesPlayedEpisodesResolved(v127);
  }

  *(a2 + v37[42]) = v125;
  v128 = [a1 transcriptIdentifier];
  if (v128)
  {
    v129 = v128;
    v130 = sub_1D917820C();
    v132 = v131;
  }

  else
  {
    v130 = 0;
    v132 = 0;
  }

  v133 = (a2 + v37[36]);
  *v133 = v130;
  v133[1] = v132;
  v134 = [a1 podcast];
  if (v134 && (v135 = v134, v136 = [v134 channel], v135, v136))
  {
    v137 = [v136 subscriptionOfferAppType];

    if (v137)
    {
      v138 = sub_1D917820C();
      v140 = v139;

      if (v138 == 1937204590 && v140 == 0xE400000000000000)
      {

        LOBYTE(v137) = 1;
      }

      else
      {
        LOBYTE(v137) = sub_1D9179ACC();
      }
    }
  }

  else
  {
    LOBYTE(v137) = 0;
  }

  *(a2 + v37[43]) = v137 & 1;
  v141 = [a1 podcast];
  if (!v141 || (v142 = v141, v143 = [v141 channel], v142, !v143))
  {
    v149 = 0;
LABEL_102:
    v145 = &selRef_redirectURLForStoreCollectionId_;
    goto LABEL_103;
  }

  v144 = [v143 subscriptionOfferAppType];

  v145 = &selRef_redirectURLForStoreCollectionId_;
  if (v144)
  {
    v146 = sub_1D917820C();
    v148 = v147;

    if (v146 == 0x636973756DLL && v148 == 0xE500000000000000)
    {

      v149 = 1;
    }

    else
    {
      v149 = sub_1D9179ACC();
    }

    goto LABEL_102;
  }

  v149 = 0;
LABEL_103:
  *(a2 + v37[44]) = v149 & 1;
  if (!v100)
  {
    v150 = [a1 freeTranscriptProvider];
    if (v150)
    {
      goto LABEL_105;
    }

LABEL_107:
    v152 = 0;
    v154 = 0;
    goto LABEL_108;
  }

  v150 = [a1 entitledTranscriptProvider];
  if (!v150)
  {
    goto LABEL_107;
  }

LABEL_105:
  v151 = v150;
  v152 = sub_1D917820C();
  v154 = v153;

LABEL_108:
  v155 = (a2 + v37[37]);
  *v155 = v152;
  v155[1] = v154;
  v156 = (a2 + v37[40]);
  *v156 = 0;
  v156[1] = 0;
  *(a2 + v37[45]) = 0;
  *(a2 + v37[46]) = 0;
  v157 = [a1 podcast];
  if (v157 && (v158 = v157, v159 = [v157 storeCollectionId], v158, objc_msgSend(a1, v145[452]) >= 1))
  {
    v160 = [objc_opt_self() productURLForStoreCollectionId:v159 storeTrackId:{objc_msgSend(a1, v145[452])}];
    if (v160)
    {
      v161 = v173;
      v162 = v160;
      sub_1D9176B9C();

      v163 = 0;
    }

    else
    {
      v163 = 1;
      v161 = v173;
    }

    v175(v161, v163, 1, v105);
    sub_1D8D6734C(v161, a2 + v37[38], &unk_1ECAB5910, &qword_1D9188C90);
  }

  else
  {
    v175(a2 + v37[38], 1, 1, v105);
  }

  *(a2 + v37[47]) = [a1 feedDeleted];
  v164 = [a1 podcast];
  if (v164)
  {
    v165 = v164;
    v166 = sub_1D90C6C0C();
  }

  else
  {
    v166 = 4;
  }

  *(a2 + v37[48]) = v166;
  if (qword_1ECAB1FF8 != -1)
  {
    swift_once();
  }

  v167 = PageContextTracker.value.getter();
  v169 = v168;

  if (v169)
  {
    v170 = v167;
  }

  else
  {
    v170 = 0;
  }

  v171 = (a2 + v37[49]);
  *v171 = v170;
  v171[1] = v169;
}

uint64_t URLTrackIdentifier.init(id:playbackContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4B0, &qword_1D91B4C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 3;
  v9 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v10 = sub_1D8E2765C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(v9, &qword_1ECABA4B8, &qword_1D91B4C48);
  v11 = *(a3 + 80);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 ams_DSID];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 stringValue];

      v16 = sub_1D917820C();
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8F50EE4(v16, v18, 16, isUniquelyReferenced_nonNull_native);
    }
  }

  sub_1D9053F20(v10);
  v21 = v20;

  result = sub_1D90CC1A4(a3, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  *a4 = v21;
  *(a4 + 8) = 4;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.assetURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.uuid.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.guid.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.externalContentID.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.itemDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 76));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.serverArtwork.getter()
{
  type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
}

uint64_t PodcastsMediaLibrary.MediaItem.album.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 92));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.itemType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  *a1 = *(v1 + *(result + 112));
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.priceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  *a1 = *(v1 + *(result + 116));
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.mediaKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  *a1 = *(v1 + *(result + 120));
  return result;
}

void PodcastsMediaLibrary.MediaItem.ItemType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t PodcastsMediaLibrary.MediaItem.ItemType.rawValue.getter()
{
  if (*v0)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x6D6165727473;
  }
}

uint64_t sub_1D90C1030(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  else
  {
    v3 = 0x6D6165727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x64616F6C6E776F64;
  }

  else
  {
    v5 = 0x6D6165727473;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D90C10D4()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D90C1154(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90C11C0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D90C123C(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D90C129C(uint64_t *a1@<X8>)
{
  v2 = 0x6D6165727473;
  if (*v1)
  {
    v2 = 0x64616F6C6E776F64;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PodcastsMediaLibrary.MediaItem.showArtworkTemplateURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 136));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.newsSubscriptionInformation.getter()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  result = 0;
  if (*(v0 + *(v1 + 172)) == 1)
  {
    if (*(v0 + *(v1 + 96)))
    {
      return 0x2B7377656ELL;
    }

    else
    {
      return 1701736302;
    }
  }

  return result;
}

char *PodcastsMediaLibrary.MediaItem.musicSubscriptionInformation.getter()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  result = 0;
  if (*(v0 + *(v1 + 176)) == 1)
  {
    type metadata accessor for MusicSubscriptionInfoLoader();
    return static MusicSubscriptionInfoLoader.loadIfNeeded()();
  }

  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.artworkResponseDictionary.getter()
{
  if (*(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 80)))
  {
    return sub_1D90C1564();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90C1564()
{
  v11[4] = *MEMORY[0x1E69E9840];
  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  sub_1D90CBEE0(&qword_1ECAB26D8, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
  v1 = sub_1D91765AC();
  v3 = v2;

  if (!v0)
  {
    v5 = objc_opt_self();
    v6 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    v11[0] = 0;
    v7 = [v5 JSONObjectWithData:v6 options:4 error:v11];

    if (v7)
    {
      v8 = v11[0];
      sub_1D917928C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      if (swift_dynamicCast())
      {
        sub_1D8D7567C(v1, v3);
        return v10;
      }

      [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    }

    else
    {
      v9 = v11[0];
      sub_1D9176A6C();
    }

    swift_willThrow();
    return sub_1D8D7567C(v1, v3);
  }

  return result;
}

double PodcastsMediaLibrary.MediaItem.artworkInfo.getter()
{
  type metadata accessor for PodcastsMediaLibrary.MediaItem(0);

  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.transcriptIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 144));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.transcriptSource.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 148));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.podcastUUID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 156));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.restorationContentItemID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 160));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.podcastPageContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 196));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItem.init(title:assetURL:feedURL:storeTrackId:podcastStoreId:uuid:guid:externalContentID:author:duration:playhead:preferredPlaybackRate:playbackSettingsSource:artworkURL:itemDescription:serverArtwork:isSubscribable:releaseDate:album:isSubscriptionActive:isExplicit:isRestricted:subscriptionRequired:itemType:priceType:mediaKind:episodeNumber:seasonNumber:podcastIsSerial:showArtworkTemplateURL:artworkInfo:transcriptIdentifier:isAppleNewsEpisode:isAppleMusicEpisode:transcriptSource:shareURL:podcastUUID:restorationContentItemID:isShallow:isFromSidepack:feedDeleted:podcastSubscriptionState:podcastPageContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, char a35, char a36, char a37, char *a38, char *a39, char *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, char a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12 & 1;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16;
  v81 = *a38;
  v82 = *a39;
  v83 = *a40;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  v65 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v66 = (a9 + v65[13]);
  *v66 = a17;
  v66[1] = a18;
  *(a9 + v65[14]) = a10;
  v67 = a9 + v65[15];
  *v67 = a19;
  *(v67 + 8) = a20 & 1;
  v68 = a9 + v65[16];
  *v68 = a22;
  *(v68 + 4) = a23 & 1;
  v69 = (a9 + v65[17]);
  *v69 = a24;
  v69[1] = a25;
  sub_1D8D6734C(a26, a9 + v65[18], &unk_1ECAB5910, &qword_1D9188C90);
  v70 = (a9 + v65[19]);
  *v70 = a27;
  v70[1] = a28;
  *(a9 + v65[20]) = a29;
  *(a9 + v65[21]) = a30;
  sub_1D8D6734C(a31, a9 + v65[22], &qword_1ECAB75C0, &unk_1D9188A50);
  v71 = (a9 + v65[23]);
  *v71 = a32;
  v71[1] = a33;
  *(a9 + v65[24]) = a34;
  *(a9 + v65[25]) = a35;
  *(a9 + v65[26]) = a36;
  *(a9 + v65[27]) = a37;
  *(a9 + v65[28]) = v81;
  *(a9 + v65[29]) = v82;
  *(a9 + v65[30]) = v83;
  *(a9 + v65[31]) = a41;
  *(a9 + v65[32]) = a42;
  *(a9 + v65[33]) = a43;
  v72 = (a9 + v65[34]);
  *v72 = a44;
  v72[1] = a45;
  v73 = (a9 + v65[39]);
  *v73 = a54;
  v73[1] = a55;
  *(a9 + v65[41]) = 1;
  *(a9 + v65[35]) = a46;
  *(a9 + v65[42]) = 0;
  v74 = (a9 + v65[36]);
  *v74 = a47;
  v74[1] = a48;
  *(a9 + v65[43]) = a49;
  *(a9 + v65[44]) = a50;
  v75 = (a9 + v65[37]);
  *v75 = a51;
  v75[1] = a52;
  v76 = v65[12];
  v77 = sub_1D9176C2C();
  (*(*(v77 - 8) + 56))(a9 + v76, 1, 1, v77);
  result = sub_1D8D6734C(a53, a9 + v65[38], &unk_1ECAB5910, &qword_1D9188C90);
  v79 = (a9 + v65[40]);
  *v79 = a56;
  v79[1] = a57;
  *(a9 + v65[45]) = a58;
  *(a9 + v65[46]) = a59;
  *(a9 + v65[47]) = a60;
  *(a9 + v65[48]) = a61;
  v80 = (a9 + v65[49]);
  *v80 = a62;
  v80[1] = a63;
  return result;
}

double sub_1D90C1DE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v84 = *v3;
  v92 = v3[3];
  v93 = v3[1];
  v81 = v3[4];
  v82 = v3[2];
  v91 = v3[5];
  v80 = v3[6];
  v79 = *(v3 + 56);
  v78 = v3[8];
  v77 = *(v3 + 72);
  v76 = v3[10];
  v87 = v3[11];
  v75 = v3[12];
  v88 = v3[13];
  v83 = v3[14];
  v90 = v3[15];
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v7 = (v4 + v6[13]);
  v74 = *v7;
  v89 = v7[1];
  v8 = *(v4 + v6[14]);
  v9 = (v4 + v6[15]);
  v71 = *v9;
  v70 = *(v9 + 8);
  v10 = (v4 + v6[16]);
  v72 = *(v10 + 4);
  v73 = *v10;
  v11 = (v4 + v6[17]);
  v12 = v11[1];
  v69 = *v11;
  sub_1D8D088B4(v4 + v6[18], a3 + v6[18], &unk_1ECAB5910, &qword_1D9188C90);
  v13 = (v4 + v6[19]);
  v14 = v13[1];
  v68 = *v13;
  v15 = *(v4 + v6[20]);
  v67 = *(v4 + v6[21]);
  sub_1D8D088B4(v4 + v6[22], a3 + v6[22], &qword_1ECAB75C0, &unk_1D9188A50);
  v16 = (v4 + v6[23]);
  v17 = v16[1];
  v60 = *v16;
  v62 = *(v4 + v6[24]);
  v58 = *(v4 + v6[25]);
  v59 = *(v4 + v6[26]);
  v56 = *(v4 + v6[27]);
  v57 = *(v4 + v6[28]);
  v54 = *(v4 + v6[29]);
  v55 = *(v4 + v6[30]);
  v18 = v6[34];
  v50 = *(v4 + v6[33]);
  v19 = *(v4 + v18 + 8);
  v52 = *(v4 + v18);
  v53 = *(v4 + v6[32]);
  v51 = *(v4 + v6[31]);
  v20 = *(v4 + v6[35]);
  v21 = (v4 + v6[36]);
  v64 = *(v4 + v6[43]);
  v66 = *(v4 + v6[44]);
  v22 = v21[1];
  v61 = *v21;
  v23 = (v4 + v6[37]);
  v63 = *v23;
  v65 = v23[1];
  sub_1D8D088B4(v4 + v6[38], a3 + v6[38], &unk_1ECAB5910, &qword_1D9188C90);
  v24 = v6[39];
  v25 = v6[45];
  v26 = v6[47];
  v27 = v6[48];
  v28 = v6[49];
  *(a3 + 48) = v80;
  *(a3 + 56) = v79;
  *(a3 + 64) = v78;
  *(a3 + 72) = v77;
  *(a3 + 80) = v76;
  *(a3 + 96) = v75;
  *a3 = v84;
  *(a3 + 8) = v93;
  *(a3 + 16) = v82;
  *(a3 + 24) = v92;
  *(a3 + 32) = v81;
  *(a3 + 40) = v91;
  *(a3 + 88) = v87;
  *(a3 + 104) = v88;
  *(a3 + 112) = v83;
  *(a3 + 120) = v90;
  v29 = (a3 + v6[13]);
  *v29 = v74;
  v29[1] = v89;
  *(a3 + v6[14]) = v8;
  v30 = a3 + v6[15];
  *v30 = v71;
  *(v30 + 8) = v70;
  v31 = a3 + v6[16];
  *v31 = v73;
  *(v31 + 4) = v72;
  v32 = (a3 + v6[17]);
  *v32 = v69;
  v32[1] = v12;
  v33 = (a3 + v6[19]);
  *v33 = v68;
  v33[1] = v14;
  *(a3 + v6[20]) = v15;
  *(a3 + v6[21]) = v67;
  v34 = (a3 + v6[23]);
  *v34 = v60;
  v34[1] = v17;
  *(a3 + v6[24]) = v62;
  *(a3 + v6[25]) = v58;
  *(a3 + v6[26]) = v59;
  *(a3 + v6[27]) = v56;
  *(a3 + v6[28]) = v57;
  *(a3 + v6[29]) = v54;
  *(a3 + v6[30]) = v55;
  *(a3 + v6[31]) = v51;
  *(a3 + v6[32]) = v53;
  *(a3 + v6[33]) = v50;
  v35 = (v4 + v24);
  v36 = (a3 + v6[34]);
  *v36 = v52;
  v36[1] = v19;
  v37 = *v35;
  v38 = v35[1];
  v39 = (a3 + v6[39]);
  *v39 = v37;
  v39[1] = v38;
  *(a3 + v6[41]) = 1;
  *(a3 + v6[35]) = v20;
  *(a3 + v6[42]) = 0;
  v40 = (a3 + v6[36]);
  *v40 = v61;
  v40[1] = v22;
  *(a3 + v6[43]) = v64;
  *(a3 + v6[44]) = v66;
  LOBYTE(v17) = *(v4 + v25);
  LOBYTE(v19) = *(v4 + v26);
  LOBYTE(v15) = *(v4 + v27);
  v41 = v4 + v28;
  v42 = (a3 + v6[37]);
  v44 = *(v4 + v28);
  v43 = *(v41 + 8);
  *v42 = v63;
  v42[1] = v65;
  v45 = v6[12];
  v46 = sub_1D9176C2C();
  (*(*(v46 - 8) + 56))(a3 + v45, 1, 1, v46);
  v47 = (a3 + v6[40]);
  *v47 = a1;
  v47[1] = a2;
  *(a3 + v6[45]) = v17;
  *(a3 + v6[46]) = 0;
  *(a3 + v6[47]) = v19;
  *(a3 + v6[48]) = v15;
  v48 = (a3 + v6[49]);
  *v48 = v44;
  v48[1] = v43;

  return result;
}

Swift::Bool __swiftcall PodcastsMediaLibrary.MediaItem.isTransferable(deviceCanUseGuidIdentifiers:)(Swift::Bool deviceCanUseGuidIdentifiers)
{
  result = 0;
  if ((*(v1 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 188)) & 1) == 0)
  {
    if ((*(v1 + 56) & 1) == 0)
    {
      v3 = *(v1 + 48);
      if (v3 != 1000000000000 && v3 != 0)
      {
        return 1;
      }
    }

    if (deviceCanUseGuidIdentifiers && *(v1 + 104) && *(v1 + 40))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D90C23C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v31 = (v5 + 63) >> 6;
  v32 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_14:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(result + 56) + 32 * v11);
    v17 = *v15;
    v16 = v15[1];
    v19 = v15[2];
    v18 = v15[3];
    v33 = v13 == 0;

    if (!v13)
    {
      return 1;
    }

    v20 = sub_1D8D33C70(v14, v13);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_34:

      return 0;
    }

    v23 = (*(a2 + 56) + 32 * v20);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    if (v24)
    {
      if (!v16)
      {
        goto LABEL_34;
      }

      v27 = *v23 == v17 && v24 == v16;
      if (!v27 && (sub_1D9179ACC() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v16)
    {
      goto LABEL_34;
    }

    if (v25 == v19 && v18 == v26)
    {

      result = v32;
      v7 = v34;
    }

    else
    {
      v29 = sub_1D9179ACC();

      result = v32;
      v7 = v34;
      v30 = v33;
      if ((v29 & 1) == 0)
      {
        return v30;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v31)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D90C2600(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v56 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v56 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_1D8D752C4(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_1D8D33C70(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
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
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_1D8D7567C(v32, v33);
      v3 = a1;
      v8 = v56;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v58, 0, 14);
        sub_1D8D752C4(v26, v25);
        goto LABEL_64;
      }

      v51 = *(v26 + 24);
      v53 = *(v26 + 16);
      sub_1D8D752C4(v26, v25);
      v40 = sub_1D917681C();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1D917683C();
        v43 = v53;
        if (__OFSUB__(v53, v42))
        {
          goto LABEL_84;
        }

        v50 = v53 - v42 + v41;
      }

      else
      {
        v50 = 0;
        v43 = v53;
      }

      if (__OFSUB__(v51, v43))
      {
        goto LABEL_83;
      }

      sub_1D917682C();
      v48 = v50;
LABEL_70:
      sub_1D90C9C94(v48, v19, v18, v58);
      sub_1D8D7567C(v26, v25);
      sub_1D8D7567C(v19, v18);
      v47 = v58[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_1D8D752C4(v26, v25);
      v44 = sub_1D917681C();
      if (v44)
      {
        v52 = v44;
        v45 = sub_1D917683C();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v52;
      }

      else
      {
        v46 = 0;
      }

      sub_1D917682C();
      v48 = v46;
      goto LABEL_70;
    }

    v58[0] = v26;
    LOWORD(v58[1]) = v25;
    BYTE2(v58[1]) = BYTE2(v25);
    BYTE3(v58[1]) = BYTE3(v25);
    BYTE4(v58[1]) = BYTE4(v25);
    BYTE5(v58[1]) = BYTE5(v25);
    sub_1D8D752C4(v26, v25);
LABEL_64:
    sub_1D90C9C94(v58, v19, v18, &v57);
    sub_1D8D7567C(v26, v25);
    sub_1D8D7567C(v19, v18);
    v47 = v57;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v47 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_1D8D7567C(v19, v18);
  return 0;
}

unint64_t sub_1D90C2AFC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x4C52557465737361;
      break;
    case 2:
      result = 0x4C525564656566;
      break;
    case 3:
      result = 0x61725465726F7473;
      break;
    case 4:
      result = 0x5374736163646F70;
      break;
    case 5:
      result = 1684632949;
      break;
    case 6:
      result = 1684632935;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 38:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0x726F68747561;
      break;
    case 10:
      result = 0x6E6F697461727564;
      break;
    case 11:
      result = 0x6461656879616C70;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
    case 30:
    case 37:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x556B726F77747261;
      break;
    case 15:
      result = 0x637365446D657469;
      break;
    case 16:
      result = 0x7241726576726573;
      break;
    case 17:
      result = 0x7263736275537369;
      break;
    case 18:
      result = 0x44657361656C6572;
      break;
    case 19:
      result = 0x6D75626C61;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0x63696C7078457369;
      break;
    case 22:
      result = 0x6972747365527369;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0x657079546D657469;
      break;
    case 25:
      result = 0x7079546563697270;
      break;
    case 26:
      result = 0x6E694B616964656DLL;
      break;
    case 27:
      result = 0x4E65646F73697065;
      break;
    case 28:
      result = 0x754E6E6F73616573;
      break;
    case 29:
      result = 0x4974736163646F70;
      break;
    case 31:
      result = 0x496B726F77747261;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    case 34:
      result = 0x4C52556572616873;
      break;
    case 35:
      result = 0x5574736163646F70;
      break;
    case 36:
    case 44:
      result = 0xD000000000000018;
      break;
    case 39:
    case 45:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0xD000000000000013;
      break;
    case 41:
      result = 0x6F6C6C6168537369;
      break;
    case 42:
      result = 0x69536D6F72467369;
      break;
    case 43:
      result = 0x656C654464656566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D90C3008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D90CC75C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90C303C(uint64_t a1)
{
  v2 = sub_1D90CBE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90C3078(uint64_t a1)
{
  v2 = sub_1D90CBE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastsMediaLibrary.MediaItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4C0, &qword_1D91B4C50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90CBE8C();
  sub_1D9179F1C();
  LOBYTE(v15) = 0;
  sub_1D917994C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D917994C();
    LOBYTE(v15) = 2;
    sub_1D917994C();
    v10 = *(v3 + 56);
    v15 = *(v3 + 48);
    v16 = v10;
    v17 = 3;
    sub_1D8EF1720();
    sub_1D917999C();
    v11 = *(v3 + 72);
    v15 = *(v3 + 64);
    v16 = v11;
    v17 = 4;
    sub_1D917999C();
    LOBYTE(v15) = 5;
    sub_1D917994C();
    LOBYTE(v15) = 6;
    sub_1D917994C();
    LOBYTE(v15) = 7;
    sub_1D917994C();
    v12 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    LOBYTE(v15) = 8;
    sub_1D9176C2C();
    sub_1D90CBEE0(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D917999C();
    LOBYTE(v15) = 9;
    sub_1D917994C();
    LOBYTE(v15) = 10;
    sub_1D91799DC();
    LOBYTE(v15) = 11;
    sub_1D917996C();
    v13 = *(v3 + v12[16] + 4);
    LOBYTE(v15) = 12;
    v17 = v13;
    sub_1D917997C();
    LOBYTE(v15) = 13;
    sub_1D917994C();
    LOBYTE(v15) = 14;
    sub_1D917999C();
    LOBYTE(v15) = 15;
    sub_1D917994C();
    v15 = *(v3 + v12[20]);
    v17 = 16;
    type metadata accessor for ServerArtwork();
    sub_1D90CBEE0(&qword_1ECAB26D8, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917999C();
    LOBYTE(v15) = 17;
    sub_1D91799CC();
    v14[1] = v12[22];
    LOBYTE(v15) = 18;
    sub_1D9176E3C();
    sub_1D90CBEE0(&qword_1ECAB2C80, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D917999C();
    LOBYTE(v15) = 19;
    sub_1D917994C();
    LOBYTE(v15) = 20;
    sub_1D91799CC();
    LOBYTE(v15) = 21;
    sub_1D91799CC();
    LOBYTE(v15) = 22;
    sub_1D91799CC();
    LOBYTE(v15) = 23;
    sub_1D91799CC();
    LOBYTE(v15) = *(v3 + v12[28]);
    v17 = 24;
    sub_1D90CBF28();
    sub_1D917999C();
    LOBYTE(v15) = *(v3 + v12[29]);
    v17 = 25;
    sub_1D9044968();
    sub_1D917999C();
    LOBYTE(v15) = *(v3 + v12[30]);
    v17 = 26;
    sub_1D90CBF7C();
    sub_1D917999C();
    LOBYTE(v15) = 27;
    sub_1D9179A0C();
    LOBYTE(v15) = 28;
    sub_1D9179A0C();
    LOBYTE(v15) = 29;
    sub_1D91799CC();
    LOBYTE(v15) = 30;
    sub_1D917994C();
    v15 = *(v3 + v12[35]);
    v17 = 31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4E0, &qword_1D91B4C58);
    sub_1D90CC0CC(&qword_1ECABA4E8, sub_1D8FA2EC8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D91799FC();
    LOBYTE(v15) = 32;
    sub_1D917994C();
    LOBYTE(v15) = 33;
    sub_1D917994C();
    LOBYTE(v15) = 34;
    sub_1D917999C();
    LOBYTE(v15) = 35;
    sub_1D917994C();
    LOBYTE(v15) = 36;
    sub_1D917994C();
    LOBYTE(v15) = *(v3 + v12[41]);
    v17 = 37;
    sub_1D8D0D300();
    sub_1D91799FC();
    LOBYTE(v15) = 38;
    sub_1D91799CC();
    LOBYTE(v15) = 39;
    sub_1D91799CC();
    LOBYTE(v15) = 40;
    sub_1D91799CC();
    LOBYTE(v15) = 41;
    sub_1D91799CC();
    LOBYTE(v15) = 42;
    sub_1D91799CC();
    LOBYTE(v15) = 43;
    sub_1D91799CC();
    LOBYTE(v15) = *(v3 + v12[48]);
    v17 = 44;
    sub_1D90CBFD0();
    sub_1D917999C();
    LOBYTE(v15) = 45;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v8, v5);
}

void PodcastsMediaLibrary.MediaItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v143 = &v138[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v138[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v138[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v138[-v12];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4F8, &unk_1D91B4C60);
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v15 = &v138[-v14];
  v16 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v138[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1[3];
  v148 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D90CBE8C();
  v146 = v15;
  v20 = v149;
  sub_1D9179EEC();
  if (v20)
  {
    v149 = v20;
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    return;
  }

  *&v140[4] = v10;
  v141 = v16;
  v142 = v18;
  LOBYTE(v150) = 0;
  v21 = v146;
  v22 = v147;
  v23 = sub_1D917984C();
  v24 = v142;
  *v142 = v23;
  v24[1] = v25;
  LOBYTE(v150) = 1;
  v26 = sub_1D917984C();
  v28 = v145;
  v24[2] = v26;
  v24[3] = v27;
  LOBYTE(v150) = 2;
  v29 = sub_1D917984C();
  v149 = 0;
  v24[4] = v29;
  v24[5] = v30;
  v153 = 3;
  sub_1D8EF1774();
  v31 = v149;
  sub_1D917989C();
  if (v31)
  {
    v149 = v31;
    (*(v28 + 8))(v21, v22);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v139 = 0uLL;
    v39 = 0;
    v40 = 0;
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v148);

    if (v140[0])
    {

      if (v34)
      {
        goto LABEL_30;
      }
    }

    else if (v34)
    {
LABEL_30:
      v41 = v142;

      if ((v35 & 1) == 0)
      {
LABEL_31:
        v42 = v141;
        if (v36)
        {
LABEL_32:

          if ((v37 & 1) == 0)
          {
LABEL_33:
            if (v38)
            {
LABEL_34:

              if ((BYTE4(v139) & 1) == 0)
              {
LABEL_35:
                if (v139)
                {
LABEL_36:
                  sub_1D8D08A50(v41 + v42[18], &unk_1ECAB5910, &qword_1D9188C90);
                  if ((v39 & 1) == 0)
                  {
LABEL_37:
                    if (v40)
                    {
LABEL_38:

                      if ((BYTE12(v139) & 1) == 0)
                      {
LABEL_39:
                        if (DWORD2(v139))
                        {
LABEL_40:

                          if ((v147 & 1) == 0)
                          {
LABEL_41:
                            if (v146)
                            {
LABEL_42:

                              if ((v145 & 1) == 0)
                              {
LABEL_43:
                                if (v144)
                                {
LABEL_44:

                                  if ((v143 & 1) == 0)
                                  {
LABEL_45:
                                    if (*&v140[4])
                                    {
LABEL_46:

                                      if (v152)
                                      {
LABEL_47:

                                        return;
                                      }

                                      return;
                                    }

LABEL_26:
                                    if (v152)
                                    {
                                      goto LABEL_47;
                                    }

                                    return;
                                  }

LABEL_25:
                                  sub_1D8D08A50(v41 + v42[38], &unk_1ECAB5910, &qword_1D9188C90);
                                  if (v140[4])
                                  {
                                    goto LABEL_46;
                                  }

                                  goto LABEL_26;
                                }

LABEL_24:
                                if (!v143)
                                {
                                  goto LABEL_45;
                                }

                                goto LABEL_25;
                              }

LABEL_23:

                              if (v144)
                              {
                                goto LABEL_44;
                              }

                              goto LABEL_24;
                            }

LABEL_22:
                            if (!v145)
                            {
                              goto LABEL_43;
                            }

                            goto LABEL_23;
                          }

LABEL_21:

                          if (v146)
                          {
                            goto LABEL_42;
                          }

                          goto LABEL_22;
                        }

LABEL_20:
                        if (!v147)
                        {
                          goto LABEL_41;
                        }

                        goto LABEL_21;
                      }

LABEL_19:
                      sub_1D8D08A50(v41 + v42[22], &qword_1ECAB75C0, &unk_1D9188A50);
                      if (BYTE8(v139))
                      {
                        goto LABEL_40;
                      }

                      goto LABEL_20;
                    }

LABEL_18:
                    if (!HIDWORD(v139))
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_19;
                  }

LABEL_17:

                  if (v40)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_18;
                }

LABEL_16:
                if (!v39)
                {
                  goto LABEL_37;
                }

                goto LABEL_17;
              }

LABEL_15:

              if (v139)
              {
                goto LABEL_36;
              }

              goto LABEL_16;
            }

LABEL_14:
            if (!DWORD1(v139))
            {
              goto LABEL_35;
            }

            goto LABEL_15;
          }

LABEL_13:
          sub_1D8D08A50(v41 + v42[12], &unk_1ECAB5910, &qword_1D9188C90);
          if (v38)
          {
            goto LABEL_34;
          }

          goto LABEL_14;
        }

LABEL_12:
        if (!v37)
        {
          goto LABEL_33;
        }

        goto LABEL_13;
      }

LABEL_11:

      v42 = v141;
      if (v36)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    v41 = v142;
    if (!v35)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  v32 = v151;
  v24[6] = v150;
  *(v24 + 56) = v32;
  v153 = 4;
  sub_1D917989C();
  v33 = v151;
  v24[8] = v150;
  *(v24 + 72) = v33;
  LOBYTE(v150) = 5;
  v24[10] = sub_1D917984C();
  v24[11] = v43;
  LOBYTE(v150) = 6;
  v24[12] = sub_1D917984C();
  v24[13] = v44;
  LOBYTE(v150) = 7;
  v45 = sub_1D917984C();
  v149 = 0;
  v24[14] = v45;
  v24[15] = v46;
  sub_1D9176C2C();
  LOBYTE(v150) = 8;
  sub_1D90CBEE0(&qword_1ECAB2C98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v47 = v149;
  sub_1D917989C();
  v149 = v47;
  if (v47)
  {
    (*(v28 + 8))(v21, v22);
    v37 = 0;
    v38 = 0;
    v139 = 0uLL;
    v39 = 0;
    v40 = 0;
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_8;
  }

  sub_1D8D6734C(v13, v142 + v141[12], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v150) = 9;
  v48 = v149;
  v49 = sub_1D917984C();
  v149 = v48;
  if (v48)
  {
    (*(v145 + 8))(v146, v147);
    v38 = 0;
    v139 = 0uLL;
    v39 = 0;
    v40 = 0;
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    goto LABEL_8;
  }

  v51 = (v142 + v141[13]);
  *v51 = v49;
  v51[1] = v50;
  LOBYTE(v150) = 10;
  v52 = v149;
  sub_1D91798DC();
  v149 = v52;
  if (v52 || (*(v142 + v141[14]) = v53, LOBYTE(v150) = 11, v54 = v149, v55 = sub_1D917986C(), (v149 = v54) != 0) || (v57 = v142 + v141[15], *v57 = v55, v57[8] = v56 & 1, LOBYTE(v150) = 12, v58 = v149, v59 = sub_1D917987C(), (v149 = v58) != 0) || (v60 = v142 + v141[16], *v60 = v59, v60[4] = BYTE4(v59) & 1, LOBYTE(v150) = 13, v61 = v149, v62 = sub_1D917984C(), (v149 = v61) != 0))
  {
    (*(v145 + 8))(v146, v147);
    v139 = 0uLL;
    v39 = 0;
    v40 = 0;
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    goto LABEL_8;
  }

  v64 = (v142 + v141[17]);
  *v64 = v62;
  v64[1] = v63;
  LOBYTE(v150) = 14;
  v65 = v149;
  sub_1D917989C();
  v149 = v65;
  if (v65)
  {
    (*(v145 + 8))(v146, v147);
    v39 = 0;
    v40 = 0;
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v139 = 0x100000000uLL;
    goto LABEL_8;
  }

  sub_1D8D6734C(*&v140[4], v142 + v141[18], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v150) = 15;
  v66 = v149;
  v67 = sub_1D917984C();
  v149 = v66;
  if (v66)
  {
    (*(v145 + 8))(v146, v147);
    v39 = 0;
    v40 = 0;
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v139 = 0x100000001uLL;
    goto LABEL_8;
  }

  v69 = (v142 + v141[19]);
  *v69 = v67;
  v69[1] = v68;
  type metadata accessor for ServerArtwork();
  v153 = 16;
  sub_1D90CBEE0(&qword_1EDCD54A0, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
  v70 = v149;
  sub_1D917989C();
  v149 = v70;
  if (v70)
  {
    (*(v145 + 8))(v146, v147);
    v40 = 0;
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v139 = 0x100000001uLL;
    v39 = 1;
    goto LABEL_8;
  }

  *(v142 + v141[20]) = v150;
  LOBYTE(v150) = 17;
  v71 = sub_1D91798CC();
  v149 = 0;
  *(v142 + v141[21]) = v71 & 1;
  sub_1D9176E3C();
  LOBYTE(v150) = 18;
  sub_1D90CBEE0(&unk_1EDCD7610, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v72 = v149;
  sub_1D917989C();
  v149 = v72;
  if (v72)
  {
    (*(v145 + 8))(v146, v147);
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v139 = 0x100000001uLL;
    v39 = 1;
    v40 = 1;
    goto LABEL_8;
  }

  sub_1D8D6734C(v143, v142 + v141[22], &qword_1ECAB75C0, &unk_1D9188A50);
  LOBYTE(v150) = 19;
  v73 = v149;
  v74 = sub_1D917984C();
  v149 = v73;
  if (v73)
  {
    (*(v145 + 8))(v146, v147);
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *(&v139 + 4) = 1;
    LODWORD(v139) = 1;
    v39 = 1;
    v40 = 1;
    HIDWORD(v139) = 1;
    goto LABEL_8;
  }

  v76 = (v142 + v141[23]);
  *v76 = v74;
  v76[1] = v75;
  LOBYTE(v150) = 20;
  v77 = v149;
  v78 = sub_1D91798CC();
  v149 = v77;
  if (v77 || (*(v142 + v141[24]) = v78 & 1, LOBYTE(v150) = 21, v79 = v149, v80 = sub_1D91798CC(), (v149 = v79) != 0) || (*(v142 + v141[25]) = v80 & 1, LOBYTE(v150) = 22, v81 = v149, v82 = sub_1D91798CC(), (v149 = v81) != 0) || (*(v142 + v141[26]) = v82 & 1, LOBYTE(v150) = 23, v83 = v149, v84 = sub_1D91798CC(), (v149 = v83) != 0) || (*(v142 + v141[27]) = v84 & 1, v153 = 24, sub_1D90CC024(), v85 = v149, sub_1D917989C(), (v149 = v85) != 0) || (*(v142 + v141[28]) = v150, v153 = 25, sub_1D9044C88(), v86 = v149, sub_1D917989C(), (v149 = v86) != 0) || (*(v142 + v141[29]) = v150, v153 = 26, sub_1D90CC078(), v87 = v149, sub_1D917989C(), (v149 = v87) != 0) || (*(v142 + v141[30]) = v150, LOBYTE(v150) = 27, v88 = v149, v89 = sub_1D917990C(), (v149 = v88) != 0) || (*(v142 + v141[31]) = v89, LOBYTE(v150) = 28, v90 = v149, v91 = sub_1D917990C(), (v149 = v90) != 0) || (*(v142 + v141[32]) = v91, LOBYTE(v150) = 29, v92 = v149, v93 = sub_1D91798CC(), (v149 = v92) != 0) || (*(v142 + v141[33]) = v93 & 1, LOBYTE(v150) = 30, v94 = v149, v95 = sub_1D917984C(), (v149 = v94) != 0))
  {
    (*(v145 + 8))(v146, v147);
    LODWORD(v147) = 0;
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *&v139 = 0x100000001;
    v39 = 1;
    v40 = 1;
    *(&v139 + 1) = 0x100000001;
    goto LABEL_8;
  }

  v97 = (v142 + v141[34]);
  *v97 = v95;
  v97[1] = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA4E0, &qword_1D91B4C58);
  v153 = 31;
  sub_1D90CC0CC(&qword_1ECABA510, sub_1D8FA35A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  v98 = v149;
  sub_1D91798FC();
  v149 = v98;
  if (v98)
  {
    (*(v145 + 8))(v146, v147);
    LODWORD(v146) = 0;
    LODWORD(v145) = 0;
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *&v139 = 0x100000001;
    v39 = 1;
    v40 = 1;
    *(&v139 + 1) = 0x100000001;
    LODWORD(v147) = 1;
    goto LABEL_8;
  }

  *(v142 + v141[35]) = v150;
  LOBYTE(v150) = 32;
  v99 = sub_1D917984C();
  v149 = 0;
  v100 = (v142 + v141[36]);
  *v100 = v99;
  v100[1] = v101;
  LOBYTE(v150) = 33;
  v102 = v149;
  v103 = sub_1D917984C();
  v149 = v102;
  if (v102)
  {
    (*(v145 + 8))(v146, v147);
    LODWORD(v144) = 0;
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *&v139 = 0x100000001;
    v39 = 1;
    v40 = 1;
    *(&v139 + 1) = 0x100000001;
    LODWORD(v147) = 1;
    LODWORD(v146) = 1;
    LODWORD(v145) = 1;
    goto LABEL_8;
  }

  v105 = (v142 + v141[37]);
  *v105 = v103;
  v105[1] = v104;
  LOBYTE(v150) = 34;
  v106 = v149;
  sub_1D917989C();
  v149 = v106;
  if (v106)
  {
    (*(v145 + 8))(v146, v147);
    LODWORD(v143) = 0;
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *&v139 = 0x100000001;
    v39 = 1;
    v40 = 1;
    *(&v139 + 1) = 0x100000001;
    LODWORD(v147) = 1;
    LODWORD(v146) = 1;
    LODWORD(v145) = 1;
    LODWORD(v144) = 1;
    goto LABEL_8;
  }

  sub_1D8D6734C(v7, v142 + v141[38], &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v150) = 35;
  v107 = v149;
  v108 = sub_1D917984C();
  v149 = v107;
  if (v107)
  {
    (*(v145 + 8))(v146, v147);
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *&v139 = 0x100000001;
    v39 = 1;
    v40 = 1;
    *(&v139 + 1) = 0x100000001;
    LODWORD(v147) = 1;
    LODWORD(v146) = 1;
    LODWORD(v145) = 1;
    LODWORD(v144) = 1;
    LODWORD(v143) = 1;
    goto LABEL_8;
  }

  v110 = (v142 + v141[39]);
  *v110 = v108;
  v110[1] = v109;
  LOBYTE(v150) = 36;
  v111 = v149;
  v112 = sub_1D917984C();
  v149 = v111;
  if (v111)
  {
    (*(v145 + 8))(v146, v147);
    v152 = 0;
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *&v139 = 0x100000001;
    v39 = 1;
    v40 = 1;
    *(&v139 + 1) = 0x100000001;
    LODWORD(v147) = 1;
    LODWORD(v146) = 1;
    LODWORD(v145) = 1;
    LODWORD(v144) = 1;
    LODWORD(v143) = 1;
    *&v140[4] = 1;
    goto LABEL_8;
  }

  v114 = (v142 + v141[40]);
  *v114 = v112;
  v114[1] = v113;
  v153 = 37;
  sub_1D8F95644();
  v115 = v149;
  sub_1D91798FC();
  v149 = v115;
  if (v115 || (*(v142 + v141[41]) = v150, LOBYTE(v150) = 38, v116 = v149, v117 = sub_1D91798CC(), (v149 = v116) != 0) || (*(v142 + v141[42]) = v117 & 1, LOBYTE(v150) = 39, v118 = v149, v119 = sub_1D91798CC(), (v149 = v118) != 0) || (*(v142 + v141[43]) = v119 & 1, LOBYTE(v150) = 40, v120 = v149, v121 = sub_1D91798CC(), (v149 = v120) != 0) || (*(v142 + v141[44]) = v121 & 1, LOBYTE(v150) = 41, v122 = v149, v123 = sub_1D91798CC(), (v149 = v122) != 0))
  {
    (*(v145 + 8))(v146, v147);
    *v140 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    *&v139 = 0x100000001;
    v39 = 1;
    v40 = 1;
    *(&v139 + 1) = 0x100000001;
    LODWORD(v147) = 1;
    LODWORD(v146) = 1;
    LODWORD(v145) = 1;
    LODWORD(v144) = 1;
    LODWORD(v143) = 1;
    *&v140[4] = 1;
    v152 = 1;
    goto LABEL_8;
  }

  *(v142 + v141[45]) = v123 & 1;
  LOBYTE(v150) = 42;
  v124 = v149;
  v125 = sub_1D91798CC();
  v149 = v124;
  if (v124 || (*(v142 + v141[46]) = v125 & 1, LOBYTE(v150) = 43, v126 = v149, v127 = sub_1D91798CC(), (v149 = v126) != 0) || (*(v142 + v141[47]) = v127 & 1, v153 = 44, sub_1D90CC150(), v128 = v149, sub_1D917989C(), (v149 = v128) != 0) || (*(v142 + v141[48]) = v150, LOBYTE(v150) = 45, v129 = v149, v130 = sub_1D917984C(), (v149 = v129) != 0))
  {
    (*(v145 + 8))(v146, v147);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    v132 = v142;

    v133 = v141;
    sub_1D8D08A50(v132 + v141[12], &unk_1ECAB5910, &qword_1D9188C90);

    sub_1D8D08A50(v132 + v133[18], &unk_1ECAB5910, &qword_1D9188C90);

    sub_1D8D08A50(v132 + v133[22], &qword_1ECAB75C0, &unk_1D9188A50);

    sub_1D8D08A50(v132 + v133[38], &unk_1ECAB5910, &qword_1D9188C90);

    goto LABEL_47;
  }

  v134 = v130;
  v135 = v131;
  (*(v145 + 8))(v146, v147);
  v136 = v142;
  v137 = (v142 + v141[49]);
  *v137 = v134;
  v137[1] = v135;
  sub_1D90CC258(v136, v144, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  __swift_destroy_boxed_opaque_existential_1Tm(v148);
  sub_1D90CC1A4(v136, type metadata accessor for PodcastsMediaLibrary.MediaItem);
}

void sub_1D90C554C(void *a1@<X0>, char *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v144 - v12;
  v14 = [a1 title];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D917820C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *a4 = v16;
  *(a4 + 8) = v18;
  v19 = (a1 + OBJC_IVAR___MTServerPodcastEpisode_id);
  v20 = *(a1 + OBJC_IVAR___MTServerPodcastEpisode_id);
  v21 = *(a1 + OBJC_IVAR___MTServerPodcastEpisode_id + 8);

  v22 = sub_1D8FE6808(v20, v21);

  *(a4 + 48) = v22;
  *(a4 + 56) = 0;
  v23 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v24 = *(a1 + v23);
  if (!v24)
  {
    goto LABEL_13;
  }

  v25 = *(v24 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = *(v25 + 16);
  if (v26 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_8;
    }

LABEL_13:
    v32 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 60);
    *(a4 + v32) = 0;
    v31 = 1;
    goto LABEL_14;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_134;
  }

  v27 = *(v26 + 32);

  while (1)
  {
    v28 = *(v27 + 64);

    v29 = *(v28 + 16);

    v30 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    v31 = 0;
    v32 = *(v30 + 60);
    *(a4 + v32) = v29 / 1000.0;
LABEL_14:
    *(a4 + v32 + 8) = v31;
    v33 = *(a1 + v23);
    if (!v33 || (v34 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast, swift_beginAccess(), (v35 = *(v33 + v34)) == 0))
    {
LABEL_22:
      v4 = v149;
      v36 = v149;
      goto LABEL_23;
    }

    v21 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
    swift_beginAccess();
    v26 = *(v35 + v21);
    if (v26 >> 62)
    {
      if (!sub_1D917935C())
      {
        goto LABEL_22;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v79 = v149;

      v4 = MEMORY[0x1DA72AA90](0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_135;
      }

      v4 = *(v26 + 32);
    }

LABEL_23:
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    v23 = OBJC_IVAR___MTServerPodcastEpisode_attributes;
    v37 = *(a1 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
    v38 = *(v37 + 328);
    *(a4 + 96) = *(v37 + 320);
    *(a4 + 104) = v38;
    v26 = *v19;
    v39 = v19[1];

    v40 = sub_1D8FE6808(v26, v39);
    v150 = v23;
    v148 = a3;
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_68:

    v27 = MEMORY[0x1DA72AA90](0, v26);
  }

  v41 = [objc_opt_self() validatedIdNumberFromStoreId_];
  if (v41)
  {
    v42 = v41;
    v43 = v19;
    v44 = [v41 stringValue];
    v45 = sub_1D917820C();
    v47 = v46;

    v23 = v150;
    v19 = v43;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  *(a4 + 112) = v45;
  *(a4 + 120) = v47;
  if (v4)
  {
    v48 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
    v49 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

    v50 = sub_1D8FE6808(v48, v49);

    *(a4 + 64) = v50;
    *(a4 + 72) = 0;
    v51 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
    v146 = 0;
    if (v51)
    {
      v52 = *(v51 + 96);
      v23 = v150;
      if (v52)
      {
        v53 = *(v51 + 88);

        goto LABEL_35;
      }
    }

    else
    {
      v23 = v150;
    }
  }

  else
  {
    v146 = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 1;
  }

  v53 = 0;
  v52 = 0xE000000000000000;
LABEL_35:
  a3 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v54 = (a4 + a3[13]);
  *v54 = v53;
  v54[1] = v52;
  v55 = *(*(a1 + v23) + 112);
  if (v55)
  {
    v56 = *(v55 + 16);
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v58 = (a4 + a3[19]);
  *v58 = v56;
  v58[1] = v57;
  if (!v4 || (v59 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes]) == 0 || !*(v59 + 112))
  {
    v60 = sub_1D9176C2C();
    (*(*(v60 - 8) + 56))(v13, 1, 1, v60);
    sub_1D8D6734C(v13, a4 + a3[18], &unk_1ECAB5910, &qword_1D9188C90);
    if (v4)
    {
      goto LABEL_43;
    }

LABEL_46:
    v63 = 0;
    v64 = 0;
    goto LABEL_47;
  }

  ServerArtwork.urlResolved.getter(v13);

  sub_1D8D6734C(v13, a4 + a3[18], &unk_1ECAB5910, &qword_1D9188C90);
LABEL_43:
  v61 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (!v61)
  {
    goto LABEL_46;
  }

  v62 = *(v61 + 112);
  if (!v62)
  {
    goto LABEL_46;
  }

  v63 = *(v62 + 48);

LABEL_47:
  v65 = (a4 + a3[34]);
  *v65 = v63;
  v65[1] = v64;
  *(a4 + a3[20]) = *(*(a1 + v23) + 136);
  if (v4 && (v66 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes]) != 0)
  {
    v67 = (*(v66 + 48) == 2) | *(v66 + 48);
  }

  else
  {
    v67 = 1;
  }

  *(a4 + a3[21]) = v67 & 1;
  v68 = a3[22];

  PodcastEpisodeAttributes.releaseDateResolved.getter(a4 + v68);

  if (v4)
  {
    v69 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
    if (v69)
    {
      v70 = *(v69 + 144);

      if (v70)
      {
        v70 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      }

      v71 = [objc_opt_self() showTypeFromString_];

      LOBYTE(v69) = v71 == 2;
    }
  }

  else
  {
    LOBYTE(v69) = 0;
  }

  *(a4 + a3[33]) = v69;
  *(a4 + a3[31]) = [a1 episodeNumber];
  *(a4 + a3[32]) = [a1 seasonNumber];
  v72 = sub_1D911E490([a1 episodeNumber], objc_msgSend(a1, sel_seasonNumber), v69, a4 + v68);
  v73 = (a4 + a3[23]);
  *v73 = v72;
  v73[1] = v74;
  if (!v4)
  {
    v78 = 0;
    v77 = 0;
    v21 = v150;
    goto LABEL_72;
  }

  v75 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships];
  v21 = v150;
  if (!v75)
  {
    goto LABEL_71;
  }

  v76 = *(v75 + 16);
  if (!v76)
  {
    goto LABEL_71;
  }

  v26 = *(v76 + 16);
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

LABEL_71:
    v78 = 0;
    v77 = 0;
    goto LABEL_72;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_71;
  }

LABEL_62:
  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_136;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_138:
    __break(1u);
    return;
  }

  v77 = *(v26 + 32);
  while (1)
  {
    v78 = *(*&v77[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
LABEL_72:
    *(a4 + a3[24]) = v78 & 1;
    v26 = *(*(a1 + v21) + 72);
    if (!v26)
    {
      break;
    }

    v21 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      if (!sub_1D917935C())
      {
        break;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1DA72AA90](0, v26);

LABEL_78:

      v80 = sub_1D917980C();

      if (v80 <= 3)
      {
        v81 = sub_1D8FDDEC0(v80, 2) & (v78 ^ 1);
        goto LABEL_82;
      }

      break;
    }

    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_78;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:

    v77 = MEMORY[0x1DA72AA90](0, v26);
  }

  v81 = 0;
LABEL_82:
  *(a4 + a3[27]) = v81 & 1;
  v145 = v19;
  if (v77)
  {
    v82 = *(*&v77[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
  }

  else
  {
    v82 = 0;
  }

  v147 = v77;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v82, &v153);
  v84 = v83;
  v86 = v85;
  v87 = v153;
  [a1 duration];
  *(a4 + a3[14]) = v88;
  type metadata accessor for PodcastsPlaybackSettingsHelper();
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v89 = qword_1ECAB1990;
  v90 = sub_1D90AB800(0, v89);

  v91 = a4 + a3[16];
  *v91 = v90;
  *(v91 + 4) = 0;
  *(a4 + a3[17]) = xmmword_1D91B4C30;
  *(a4 + 16) = v84;
  *(a4 + 24) = v86;
  if (v4 && (v92 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes]) != 0 && (v93 = *(v92 + 80)) != 0)
  {
    v94 = *(v92 + 72);

    v95 = v150;
  }

  else
  {
    v95 = v150;
    v96 = *&v150[a1];
    v94 = *(v96 + 56);
    v93 = *(v96 + 64);
  }

  *(a4 + 32) = v94;
  *(a4 + 40) = v93;
  *(a4 + a3[29]) = v87;
  *(a4 + a3[28]) = 0;
  v97 = *&v95[a1];
  v98 = *(v97 + 280);
  if (v98)
  {
    v99 = *(v97 + 272);

    v100._countAndFlagsBits = v99;
    v100._object = v98;
    PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v100);
    v101 = v153;
    if (v153 == 5)
    {
      v101 = 0;
    }
  }

  else
  {
    v101 = 0;
  }

  *(a4 + a3[30]) = v101;
  *(a4 + a3[25]) = [a1 isExplicit];
  *(a4 + a3[26]) = [a1 isRestricted];
  v102 = (a4 + a3[39]);
  *v102 = 0;
  v102[1] = 0;
  *(a4 + a3[41]) = 1;
  *(a4 + a3[42]) = 0;
  v103 = a3[12];
  v104 = sub_1D9176C2C();
  v150 = *(*(v104 - 8) + 56);
  (v150)(a4 + v103, 1, 1, v104);
  *(a4 + a3[35]) = sub_1D90C6440(v4);
  v105 = *&v95[a1];
  swift_beginAccess();
  v106 = *(v105 + 264);
  if (v106)
  {
    v107 = *(v105 + 256);
    if (v107 == 1937204590 && v106 == 0xE400000000000000)
    {
      *(a4 + a3[43]) = 1;
      goto LABEL_101;
    }

    *(a4 + a3[43]) = sub_1D9179ACC() & 1;
    if (v107 == 0x636973756DLL && v106 == 0xE500000000000000)
    {
      v108 = 1;
    }

    else
    {
LABEL_101:
      v108 = sub_1D9179ACC();
    }
  }

  else
  {
    v108 = 0;
    *(a4 + a3[43]) = 0;
  }

  v109 = a3[44];
  *(&v109->priceType + a4) = v108 & 1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v109, &v151);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v110, &v152);
  v112 = v111;
  v114 = v113;

  v115 = v152;
  v116 = (a4 + a3[36]);
  *v116 = v112;
  v116[1] = v114;
  v117 = 0x656C707061;
  if (v115)
  {
    v117 = 0x72656469766F7270;
  }

  v118 = 0xE500000000000000;
  if (v115)
  {
    v118 = 0xE800000000000000;
  }

  v119 = v115 == 2;
  if (v115 == 2)
  {
    v120 = 0;
  }

  else
  {
    v120 = v117;
  }

  if (v119)
  {
    v121 = 0;
  }

  else
  {
    v121 = v118;
  }

  v122 = (a4 + a3[37]);
  *v122 = v120;
  v122[1] = v121;
  v123 = (a4 + a3[40]);
  *v123 = 0;
  v123[1] = 0;
  *(a4 + a3[45]) = 0;
  *(a4 + a3[46]) = v148 & 1;
  if (!v4)
  {
LABEL_120:
    (v150)(a4 + a3[38], 1, 1, v104);
    v131 = v147;
    goto LABEL_121;
  }

  v124 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
  v125 = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

  v126 = v146;
  v127 = sub_1D8FE6808(v124, v125);
  if (v126)
  {

    goto LABEL_120;
  }

  v128 = v127;

  v129 = *v145;
  v130 = v145[1];

  v138 = sub_1D8FE6808(v129, v130);

  v139 = objc_opt_self();
  if (((v138 | v128) & 0x8000000000000000) != 0)
  {
    goto LABEL_138;
  }

  v140 = [v139 productURLForStoreCollectionId:v128 storeTrackId:v138];
  v131 = v147;
  if (v140)
  {
    v141 = v144;
    v142 = v140;
    sub_1D9176B9C();

    v143 = 0;
  }

  else
  {
    v143 = 1;
    v141 = v144;
  }

  (v150)(v141, v143, 1, v104);
  sub_1D8D6734C(v141, a4 + a3[38], &unk_1ECAB5910, &qword_1D9188C90);
LABEL_121:
  *(a4 + a3[47]) = 0;
  *(a4 + a3[48]) = 3;
  v132 = v149;
  if (qword_1ECAB1FF8 != -1)
  {
    swift_once();
  }

  v133 = PageContextTracker.value.getter();
  v135 = v134;

  if (v135)
  {
    v136 = v133;
  }

  else
  {
    v136 = 0;
  }

  v137 = (a4 + a3[49]);
  *v137 = v136;
  v137[1] = v135;
}

uint64_t sub_1D90C6440(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA588, &qword_1D91B5298);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 40) = 0x80000001D91D5A20;
  if (!a1)
  {
    *(inited + 48) = xmmword_1D9190380;
    v8 = (inited + 80);
    *(inited + 64) = 0xD000000000000019;
    *(inited + 72) = 0x80000001D91D5C40;
    goto LABEL_14;
  }

  v4 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 112);
  if (!v5)
  {
LABEL_8:
    v10 = 0xF000000000000000;
    goto LABEL_9;
  }

  v7 = sub_1D91567F0(v6);

  if (!v7)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  type metadata accessor for PlayerArtwork();
  sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
  v5 = sub_1D91765AC();
  v10 = v9;

LABEL_9:
  v3[6] = v5;
  v3[7] = v10;
  v3[8] = 0xD000000000000019;
  v3[9] = 0x80000001D91D5C40;
  v8 = v3 + 10;
  v11 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v11)
  {
    v12 = *(v11 + 152);
    if (v12)
    {
      if (*(v12 + 16))
      {

        v14 = sub_1D91567F0(v13);

        if (v14)
        {
          sub_1D91765CC();
          swift_allocObject();
          sub_1D91765BC();
          type metadata accessor for PlayerArtwork();
          sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
          v24 = sub_1D91765AC();
          v26 = v25;

          *v8 = v24;
          goto LABEL_15;
        }
      }
    }
  }

LABEL_14:
  *v8 = 0;
  v26 = 0xF000000000000000;
LABEL_15:
  v3[11] = v26;
  v3[12] = 0xD00000000000001CLL;
  v3[13] = 0x80000001D91D5A00;
  v15 = sub_1D90C6F60();
  if (v15)
  {
    v16 = v15;
    sub_1D91765CC();
    swift_allocObject();
    sub_1D91765BC();
    type metadata accessor for PlayerArtwork();
    sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
    v17 = sub_1D91765AC();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xF000000000000000;
  }

  v3[14] = v17;
  v3[15] = v19;
  v20 = sub_1D8E26A9C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA590, &qword_1D91B52A0);
  swift_arrayDestroy();
  sub_1D90BF758(v20);
  v22 = v21;

  return v22;
}

uint64_t sub_1D90C6854()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA588, &qword_1D91B5298);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 40) = 0x80000001D91D5A20;
  v3 = [v0 podcast];
  if (v3)
  {
    v4 = MTPodcast.artwork.getter();

    if (v4)
    {
      sub_1D91765CC();
      swift_allocObject();
      sub_1D91765BC();
      v20 = v4;
      type metadata accessor for PlayerArtwork();
      sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
      v3 = sub_1D91765AC();
      v17 = v16;

      goto LABEL_6;
    }

    v3 = 0;
  }

  v17 = 0xF000000000000000;
LABEL_6:
  *(inited + 48) = v3;
  *(inited + 56) = v17;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x80000001D91D5C40;
  v5 = [v1 podcast];
  if (v5)
  {
    v6 = MTPodcast.uberArtwork.getter();

    if (v6)
    {
      sub_1D91765CC();
      swift_allocObject();
      sub_1D91765BC();
      type metadata accessor for PlayerArtwork();
      sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
      v5 = sub_1D91765AC();
      v19 = v18;

      goto LABEL_11;
    }

    v5 = 0;
  }

  v19 = 0xF000000000000000;
LABEL_11:
  *(inited + 80) = v5;
  *(inited + 88) = v19;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x80000001D91D5A00;
  v7 = MTEpisode.artwork.getter();
  if (v7)
  {
    v8 = v7;
    sub_1D91765CC();
    swift_allocObject();
    sub_1D91765BC();
    type metadata accessor for PlayerArtwork();
    sub_1D90CBEE0(&qword_1EDCD54C0, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
    v9 = sub_1D91765AC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  *(inited + 112) = v9;
  *(inited + 120) = v11;
  v12 = sub_1D8E26A9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA590, &qword_1D91B52A0);
  swift_arrayDestroy();
  sub_1D90BF758(v12);
  v14 = v13;

  return v14;
}

uint64_t sub_1D90C6C0C()
{
  v1 = v0;
  v2 = [v1 uuid];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_1D917820C();
  v6 = v5;

  v7 = MTPodcast.identifier.getter();
  if (v9 == -1)
  {

LABEL_8:

    return 4;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = [v1 hidden];
  v14 = [v1 subscribed];
  v15 = [v1 isImplicitlyFollowed];

  v32[0] = v10;
  v32[1] = v11;
  v33 = v12;
  v34 = v4;
  v35 = v6;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  if (v14)
  {
    if ((v15 & 1) == 0 && (v13 & 1) == 0)
    {
      sub_1D90CDA08(v32);
      return 0;
    }

    goto LABEL_12;
  }

  if (v15)
  {
    if (v13)
    {
LABEL_12:
      sub_1D90CDA5C();
      v17 = swift_allocError();
      *v18 = v14;
      v18[1] = v15;
      v18[2] = v13;
      swift_willThrow();
      sub_1D90CDA08(v32);
      if (qword_1ECAB0D48 != -1)
      {
        swift_once();
      }

      v19 = sub_1D917744C();
      __swift_project_value_buffer(v19, qword_1ECAB0D50);
      v20 = v1;
      v21 = v17;
      v22 = sub_1D917741C();
      v23 = sub_1D9178CFC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v24 = 141558531;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2113;
        *(v24 + 14) = v20;
        *v25 = v20;
        *(v24 + 22) = 2082;
        swift_getErrorValue();
        v27 = v20;
        v28 = sub_1D9179D2C();
        v30 = sub_1D8CFA924(v28, v29, &v31);

        *(v24 + 24) = v30;
        _os_log_impl(&dword_1D8CEC000, v22, v23, "Unable to retrieve subscription state for %{private,mask.hash}@ with error %{public}s.", v24, 0x20u);
        sub_1D8D08A50(v25, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1DA72CB90](v26, -1, -1);
        MEMORY[0x1DA72CB90](v24, -1, -1);
      }

      else
      {
      }

      return 4;
    }

    sub_1D90CDA08(v32);
    return 2;
  }

  else
  {
    sub_1D90CDA08(v32);
    if (v13)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }
}

id sub_1D90C6F60()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  if (!v1[17])
  {
    return 0;
  }

  v5 = sub_1D91567F0(v4);

  return v5;
}

uint64_t URLTrackIdentifier.init(mediaItem:playbackContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a1 + 56) & 1) != 0 || ((v6 = *(a1 + 48)) != 0 ? (v7 = v6 == 1000000000000) : (v7 = 1), v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 5;
    v9 = *(a1 + 40);
    *(inited + 40) = *(a1 + 32);
    *(inited + 48) = v9;
    *(inited + 56) = 8;
    v10 = *(a1 + 104);
    *(inited + 64) = *(a1 + 96);
    *(inited + 72) = v10;

    v22 = sub_1D8E27754(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA528, &qword_1D91B4C70);
    swift_arrayDestroy();
    v11 = *(a2 + 80);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1D9189080;
    *(v20 + 32) = 3;
    sub_1D8E40D20();
    *(v20 + 40) = sub_1D917927C();
    *(v20 + 48) = v21;
    v22 = sub_1D8E27754(v20);
    swift_setDeallocating();
    sub_1D8D08A50(v20 + 32, &qword_1ECABA528, &qword_1D91B4C70);
    v11 = *(a2 + 80);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = v11;
  v13 = [v12 ams_DSID];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 stringValue];

    v16 = sub_1D917820C();
    v18 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F5101C(v16, v18, 16, isUniquelyReferenced_nonNull_native);
  }

LABEL_13:
  sub_1D90CC1A4(a2, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  result = sub_1D90CC1A4(a1, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  *a3 = v22;
  *(a3 + 8) = 4;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.uuid.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.podcastUUID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 40));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.author.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 44));

  return v1;
}

uint64_t sub_1D90C743C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 52));

  return v2;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.contentItemID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 60));

  return v1;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.assetURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0) + 64));

  return v1;
}

uint64_t sub_1D90C7540(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 68));

  return v2;
}

unint64_t sub_1D90C758C(char a1)
{
  result = 0x61725465726F7473;
  switch(a1)
  {
    case 1:
      result = 0x5374736163646F70;
      break;
    case 2:
      result = 1684632949;
      break;
    case 3:
      result = 0x5574736163646F70;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x6E6F697461727564;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 0x726F68747561;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x6D75626C61;
      break;
    case 10:
      result = 0x63696C7078457369;
      break;
    case 11:
      result = 0x49746E65746E6F63;
      break;
    case 12:
      result = 0x4C52557465737361;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D90C7730@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D90CD584(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90C7764(uint64_t a1)
{
  v2 = sub_1D90CC204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90C77A0(uint64_t a1)
{
  v2 = sub_1D90CC204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA530, &qword_1D91B4C78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90CC204();
  sub_1D9179F1C();
  v9 = *(v3 + 8);
  v12 = *v3;
  v13 = v9;
  v14 = 0;
  sub_1D8EF1720();
  sub_1D917999C();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v12 = v3[2];
    v13 = v10;
    v14 = 1;
    sub_1D917999C();
    LOBYTE(v12) = 2;
    sub_1D917994C();
    LOBYTE(v12) = 3;
    sub_1D917994C();
    type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
    LOBYTE(v12) = 4;
    sub_1D9176C2C();
    sub_1D90CBEE0(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D917999C();
    LOBYTE(v12) = 5;
    sub_1D91799DC();
    LOBYTE(v12) = 6;
    sub_1D917994C();
    LOBYTE(v12) = 7;
    sub_1D917994C();
    LOBYTE(v12) = 8;
    sub_1D917999C();
    LOBYTE(v12) = 9;
    sub_1D917994C();
    LOBYTE(v12) = 10;
    sub_1D91799CC();
    LOBYTE(v12) = 11;
    sub_1D91799BC();
    LOBYTE(v12) = 12;
    sub_1D917994C();
    LOBYTE(v12) = 13;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  if (*(v1 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v11 = *v1;
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v11);
  }

  if (*(v1 + 24) == 1)
  {
    sub_1D9179DDC();
    if (v1[5])
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_1D9179DDC();
    if (v1[7])
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v12 = v1[2];
  sub_1D9179DDC();
  MEMORY[0x1DA72B3C0](v12);
  if (!v1[5])
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1D9179DDC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  if (v1[7])
  {
LABEL_7:
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    goto LABEL_11;
  }

LABEL_10:
  sub_1D9179DDC();
LABEL_11:
  v13 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  sub_1D8D088B4(v1 + v13[8], v10, &unk_1ECAB5910, &qword_1D9188C90);
  v14 = v4;
  v15 = *(v4 + 48);
  v16 = v15(v10, 1, v3);
  v24 = v14;
  if (v16 == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v17 = v26;
    (*(v14 + 32))(v26, v10, v3);
    sub_1D9179DDC();
    sub_1D90CBEE0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D917814C();
    (*(v14 + 8))(v17, v3);
  }

  v18 = *(v1 + v13[9]);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v18);
  if (*(v1 + v13[10] + 8))
  {
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  if (*(v1 + v13[11] + 8))
  {
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  v19 = v25;
  sub_1D8D088B4(v2 + v13[12], v25, &unk_1ECAB5910, &qword_1D9188C90);
  if (v15(v19, 1, v3) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v20 = v24;
    v21 = v26;
    (*(v24 + 32))(v26, v19, v3);
    sub_1D9179DDC();
    sub_1D90CBEE0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D917814C();
    (*(v20 + 8))(v21, v3);
  }

  if (*(v2 + v13[13] + 8))
  {
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  sub_1D9179DDC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  if (*(v2 + v13[16] + 8))
  {
    sub_1D9179DDC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1D9179DDC();
  }

  if (!*(v2 + v13[17] + 8))
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.hashValue.getter()
{
  sub_1D9179DBC();
  PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)(v1);
  return sub_1D9179E1C();
}

void PodcastsMediaLibrary.MediaItemSnapshot.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v44 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA538, &unk_1D91B4C80);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v11 = v44 - v10;
  v12 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D90CC204();
  v48 = v11;
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  else
  {
    v45 = v14;
    v53 = 0;
    sub_1D8EF1774();
    sub_1D917989C();
    v16 = v52;
    v17 = v45;
    *v45 = v51;
    *(v17 + 8) = v16;
    v53 = 1;
    sub_1D917989C();
    v18 = v52;
    v17[2] = v51;
    *(v17 + 24) = v18;
    LOBYTE(v51) = 2;
    v17[4] = sub_1D917984C();
    v17[5] = v19;
    LOBYTE(v51) = 3;
    v17[6] = sub_1D917984C();
    v17[7] = v20;
    v21 = sub_1D9176C2C();
    LOBYTE(v51) = 4;
    v44[2] = sub_1D90CBEE0(&qword_1ECAB2C98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v44[3] = 0;
    sub_1D917989C();
    v44[1] = v21;
    sub_1D8D6734C(v9, v17 + v12[8], &unk_1ECAB5910, &qword_1D9188C90);
    LOBYTE(v51) = 5;
    sub_1D91798DC();
    *(v17 + v12[9]) = v22;
    LOBYTE(v51) = 6;
    v23 = sub_1D917984C();
    v24 = (v17 + v12[10]);
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v51) = 7;
    v26 = sub_1D917984C();
    v27 = (v17 + v12[11]);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v51) = 8;
    sub_1D917989C();
    sub_1D8D6734C(v6, v45 + v12[12], &unk_1ECAB5910, &qword_1D9188C90);
    LOBYTE(v51) = 9;
    v29 = sub_1D917984C();
    v30 = (v45 + v12[13]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v51) = 10;
    *(v45 + v12[14]) = sub_1D91798CC() & 1;
    LOBYTE(v51) = 11;
    v32 = sub_1D91798BC();
    v33 = (v45 + v12[15]);
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v51) = 12;
    v35 = sub_1D917984C();
    v36 = (v45 + v12[16]);
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v51) = 13;
    v38 = sub_1D917984C();
    v40 = v39;
    (*(v47 + 8))(v48, v49);
    v42 = v45;
    v41 = v46;
    v43 = (v45 + v12[17]);
    *v43 = v38;
    v43[1] = v40;
    sub_1D90CC258(v42, v41, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    sub_1D90CC1A4(v42, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
  }
}

uint64_t sub_1D90C8AC8()
{
  sub_1D9179DBC();
  PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D90C8B0C(uint64_t a1)
{
  sub_1D9179DBC();
  PodcastsMediaLibrary.MediaItemSnapshot.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D90C8B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v5 = (a1 + v4[10]);
  v6 = v5[1];
  v7 = (a1 + v4[16]);
  v39 = v7[1];
  v52 = *a1;
  v51 = *(a1 + 8);
  v50 = a1[2];
  v49 = *(a1 + 24);
  v8 = a1[5];
  v48 = a1[4];
  v9 = v4[12];
  v10 = (a1 + v4[11]);
  v11 = *(a1 + v4[9]);
  v46 = *v10;
  v38 = v10[1];
  v43 = *v7;
  v40 = *v5;
  v12 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  sub_1D8D088B4(a1 + v9, a2 + v12[18], &unk_1ECAB5910, &qword_1D9188C90);
  v13 = v12[22];
  v14 = sub_1D9176E3C();
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  v15 = (a1 + v4[13]);
  v45 = *(a1 + v4[14]);
  v16 = v15[1];
  v42 = *v15;
  v17 = (a1 + v4[17]);
  v18 = v17[1];
  v53 = *v17;
  v19 = v12[38];
  v20 = sub_1D9176C2C();
  v55 = *(*(v20 - 8) + 56);
  v55(a2 + v19, 1, 1, v20);
  v44 = a1[6];
  v41 = a1[7];
  v21 = (a1 + v4[15]);
  v54 = *v21;
  v47 = v21[1];

  v37 = sub_1D8E2784C(MEMORY[0x1E69E7CC0]);
  sub_1D90CC1A4(a1, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
  *&v22 = v40;
  *(&v22 + 1) = v6;
  *&v23 = v43;
  *(&v23 + 1) = v39;
  *a2 = v22;
  *(a2 + 16) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v52;
  *(a2 + 56) = v51;
  *(a2 + 64) = v50;
  *(a2 + 72) = v49;
  *(a2 + 80) = v48;
  *(a2 + 88) = v8;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  v24 = (a2 + v12[13]);
  *v24 = v46;
  v24[1] = v38;
  *(a2 + v12[14]) = v11;
  v25 = a2 + v12[15];
  *v25 = 0;
  *(v25 + 8) = 0;
  v26 = a2 + v12[16];
  *v26 = 0;
  *(v26 + 4) = 1;
  v27 = (a2 + v12[17]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a2 + v12[19]);
  *v28 = 0;
  v28[1] = 0;
  *(a2 + v12[20]) = 0;
  *(a2 + v12[21]) = 1;
  v29 = (a2 + v12[23]);
  *v29 = v42;
  v29[1] = v16;
  *(a2 + v12[24]) = 0;
  *(a2 + v12[25]) = v45;
  *(a2 + v12[26]) = 0;
  *(a2 + v12[27]) = 0;
  *(a2 + v12[28]) = 2;
  *(a2 + v12[29]) = 4;
  *(a2 + v12[30]) = 5;
  *(a2 + v12[31]) = 0;
  *(a2 + v12[32]) = 0;
  *(a2 + v12[33]) = 0;
  v30 = (a2 + v12[34]);
  *v30 = v53;
  v30[1] = v18;
  v31 = (a2 + v12[39]);
  *v31 = v44;
  v31[1] = v41;
  *(a2 + v12[41]) = 1;
  *(a2 + v12[35]) = v37;
  *(a2 + v12[42]) = 0;
  v32 = (a2 + v12[36]);
  *v32 = 0;
  v32[1] = 0;
  *(a2 + v12[43]) = 0;
  *(a2 + v12[44]) = 0;
  v33 = (a2 + v12[37]);
  *v33 = 0;
  v33[1] = 0;
  result = (v55)(a2 + v12[12], 1, 1, v20);
  v35 = (a2 + v12[40]);
  *v35 = v54;
  v35[1] = v47;
  *(a2 + v12[45]) = 1;
  *(a2 + v12[46]) = 0;
  *(a2 + v12[47]) = 0;
  *(a2 + v12[48]) = 4;
  v36 = (a2 + v12[49]);
  *v36 = 0;
  v36[1] = 0;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.init(mediaItem:contentItemID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 56);
  *a4 = *(a1 + 48);
  *(a4 + 8) = v6;
  v7 = *(a1 + 72);
  *(a4 + 16) = *(a1 + 64);
  *(a4 + 24) = v7;
  v8 = *(a1 + 88);
  *(a4 + 32) = *(a1 + 80);
  *(a4 + 40) = v8;
  v9 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v10 = v9[12];
  v11 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  sub_1D8D088B4(a1 + v10, a4 + v11[8], &unk_1ECAB5910, &qword_1D9188C90);
  v12 = *(a1 + 8);
  v13 = (a4 + v11[10]);
  *v13 = *a1;
  v13[1] = v12;
  v14 = (a1 + v9[13]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a4 + v11[11]);
  *v17 = v15;
  v17[1] = v16;
  v18 = (a1 + v9[23]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a4 + v11[13]);
  *v21 = v19;
  v21[1] = v20;
  sub_1D8D088B4(a1 + v9[18], a4 + v11[12], &unk_1ECAB5910, &qword_1D9188C90);
  v22 = (a4 + v11[15]);
  *v22 = a2;
  v22[1] = a3;
  *(a4 + v11[14]) = *(a1 + v9[25]);
  v23 = *(a1 + 24);
  v24 = (a4 + v11[16]);
  *v24 = *(a1 + 16);
  v24[1] = v23;
  *(a4 + v11[9]) = *(a1 + v9[14]);
  v25 = (a1 + v9[34]);
  v26 = *v25;
  v27 = v25[1];
  v28 = (a4 + v11[17]);
  *v28 = v26;
  v28[1] = v27;
  v29 = (a1 + v9[39]);
  v31 = *v29;
  v30 = v29[1];

  result = sub_1D90CC1A4(a1, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  *(a4 + 48) = v31;
  *(a4 + 56) = v30;
  return result;
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.init(dictionary:)()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1D917802C();

  v11[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v11];

  v5 = v11[0];
  if (v4)
  {
    v6 = sub_1D9176C8C();
    v8 = v7;

    sub_1D917656C();
    swift_allocObject();
    sub_1D917655C();
    type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
    sub_1D90CBEE0(&qword_1ECAB2C18, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot, &protocol conformance descriptor for PodcastsMediaLibrary.MediaItemSnapshot);
    sub_1D917654C();
    sub_1D8D7567C(v6, v8);
  }

  else
  {
    v10 = v5;
    sub_1D9176A6C();

    return swift_willThrow();
  }
}

uint64_t PodcastsMediaLibrary.MediaItemSnapshot.asDictionary()()
{
  v12[4] = *MEMORY[0x1E69E9840];
  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  sub_1D90CBEE0(&qword_1ECAB2C20, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot, &protocol conformance descriptor for PodcastsMediaLibrary.MediaItemSnapshot);
  v1 = sub_1D91765AC();
  v3 = v2;

  if (!v0)
  {
    v5 = objc_opt_self();
    v6 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    v12[0] = 0;
    v7 = [v5 JSONObjectWithData:v6 options:4 error:v12];

    if (v7)
    {
      v8 = v12[0];
      sub_1D917928C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      if (swift_dynamicCast())
      {
        sub_1D8D7567C(v1, v3);
        return v11;
      }

      sub_1D90CC2C0();
      swift_allocError();
      *v10 = 6;
    }

    else
    {
      v9 = v12[0];
      sub_1D9176A6C();
    }

    swift_willThrow();
    return sub_1D8D7567C(v1, v3);
  }

  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.episodeArtworkTemplate.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 140));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1D8D33C70(0xD00000000000001CLL, 0x80000001D91D5A00);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  sub_1D917656C();
  swift_allocObject();
  sub_1D8D752C4(v5, v6);
  sub_1D917655C();
  type metadata accessor for PlayerArtwork();
  sub_1D90CBEE0(&qword_1ECABA548, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
  sub_1D917654C();
  sub_1D8D7567C(v5, v6);

  v7 = *&v9[OBJC_IVAR___IMPlayerArtwork_template];

  return v7;
}

uint64_t PodcastsMediaLibrary.MediaItem.showArtworkTemplate.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 140));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1D8D33C70(0xD000000000000019, 0x80000001D91D5A20);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  sub_1D917656C();
  swift_allocObject();
  sub_1D8D752C4(v5, v6);
  sub_1D917655C();
  type metadata accessor for PlayerArtwork();
  sub_1D90CBEE0(&qword_1ECABA548, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
  sub_1D917654C();
  sub_1D8D7567C(v5, v6);

  v7 = *&v9[OBJC_IVAR___IMPlayerArtwork_template];

  return v7;
}

uint64_t PodcastsMediaLibrary.MediaItem.preferredArtworkTemplate.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 140));
  if (*(v3 + 16) && ((v4 = sub_1D8D33C70(0xD00000000000001CLL, 0x80000001D91D5A00), (v5 & 1) != 0) || *(v3 + 16) && (v4 = sub_1D8D33C70(0xD000000000000019, 0x80000001D91D5A20), (v6 & 1) != 0)))
  {
    v7 = (*(v3 + 56) + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_1D917656C();
    swift_allocObject();
    sub_1D8D752C4(v9, v8);
    sub_1D917655C();
    type metadata accessor for PlayerArtwork();
    sub_1D90CBEE0(&qword_1ECABA548, type metadata accessor for PlayerArtwork, &protocol conformance descriptor for PlayerArtwork);
    sub_1D917654C();
    sub_1D8D75668(v9, v8);

    v10 = *&v12[OBJC_IVAR___IMPlayerArtwork_template];
  }

  else
  {
    v10 = *(v1 + *(v2 + 136));
  }

  return v10;
}

unint64_t PodcastsMediaLibrary.MediaItem.preferredArtworkResponseDictionary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-v2];
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) + 80)))
  {
    return sub_1D90C1564();
  }

  PodcastsMediaLibrary.MediaItem.preferredArtworkTemplate.getter();
  if (!v9)
  {
    return 0;
  }

  sub_1D9176BFC();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D8D08A50(v3, &unk_1ECAB5910, &qword_1D9188C90);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 32) = 0x6874646977;
  *(inited + 40) = 0xE500000000000000;
  v11 = MEMORY[0x1E69E7DE0];
  *(inited + 48) = 0x4082C00000000000;
  *(inited + 72) = v11;
  *(inited + 80) = 0x746867696568;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x4082C00000000000;
  *(inited + 120) = v11;
  *(inited + 128) = 7107189;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 168) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
  (*(v5 + 16))(boxed_opaque_existential_0, v7, v4);
  v13 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  (*(v5 + 8))(v7, v4);
  return v13;
}

uint64_t sub_1D90C9C94@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D917681C();
    if (v10)
    {
      v11 = sub_1D917683C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D917682C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D917681C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D917683C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D917682C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

BOOL _s18PodcastsFoundation0A12MediaLibraryC0C4ItemV2eeoiySbAE_AEtFZ_0(char *a1, uint64_t *a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v245 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v259 = &v245 - v9;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  MEMORY[0x1EEE9AC00](v258);
  v260 = &v245 - v10;
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v261 = &v245 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v262 = &v245 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v245 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v245 - v28;
  v31 = *(a1 + 1);
  v32 = a2[1];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (*a1 != *a2 || v31 != v32)
    {
      v256 = v7;
      v257 = v5;
      v255 = v4;
      v33 = v24;
      v34 = v17;
      v35 = v14;
      v36 = v12;
      v37 = v11;
      v38 = a1;
      v39 = a2;
      v40 = v27;
      v41 = v29;
      v42 = &v245 - v28;
      v43 = sub_1D9179ACC();
      v30 = v42;
      v29 = v41;
      v44 = v43;
      v27 = v40;
      a2 = v39;
      a1 = v38;
      v11 = v37;
      v12 = v36;
      v14 = v35;
      v17 = v34;
      v24 = v33;
      v4 = v255;
      v7 = v256;
      v5 = v257;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v45 = *(a1 + 3);
  v46 = a2[3];
  if (v45)
  {
    if (!v46)
    {
      return 0;
    }

    if (*(a1 + 2) != a2[2] || v45 != v46)
    {
      v256 = v7;
      v257 = v5;
      v255 = v4;
      v47 = v24;
      v48 = v17;
      v49 = v14;
      v50 = v12;
      v51 = v11;
      v52 = a1;
      v53 = a2;
      v54 = v27;
      v55 = v29;
      v56 = v30;
      v57 = sub_1D9179ACC();
      v30 = v56;
      v29 = v55;
      v58 = v57;
      v27 = v54;
      a2 = v53;
      a1 = v52;
      v11 = v51;
      v12 = v50;
      v14 = v49;
      v17 = v48;
      v24 = v47;
      v4 = v255;
      v7 = v256;
      v5 = v257;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v46)
  {
    return 0;
  }

  v59 = *(a1 + 5);
  v60 = a2[5];
  if (v59)
  {
    if (!v60)
    {
      return 0;
    }

    if (*(a1 + 4) != a2[4] || v59 != v60)
    {
      v256 = v7;
      v257 = v5;
      v255 = v4;
      v61 = v24;
      v62 = v17;
      v63 = v14;
      v64 = v12;
      v65 = v11;
      v66 = a1;
      v67 = a2;
      v68 = v27;
      v69 = v29;
      v70 = v30;
      v71 = sub_1D9179ACC();
      v30 = v70;
      v29 = v69;
      v72 = v71;
      v27 = v68;
      a2 = v67;
      a1 = v66;
      v11 = v65;
      v12 = v64;
      v14 = v63;
      v17 = v62;
      v24 = v61;
      v4 = v255;
      v7 = v256;
      v5 = v257;
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v60)
  {
    return 0;
  }

  v73 = *(a2 + 56);
  if (a1[56])
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 6) != a2[6])
    {
      v73 = 1;
    }

    if (v73)
    {
      return 0;
    }
  }

  v74 = *(a2 + 72);
  if (a1[72])
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != a2[8])
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  v75 = *(a1 + 11);
  v76 = a2[11];
  if (v75)
  {
    if (!v76)
    {
      return 0;
    }

    if (*(a1 + 10) != a2[10] || v75 != v76)
    {
      v256 = v7;
      v257 = v5;
      v255 = v4;
      v77 = v24;
      v78 = v17;
      v79 = v14;
      v80 = v12;
      v81 = v11;
      v82 = a1;
      v83 = a2;
      v84 = v27;
      v85 = v29;
      v86 = v30;
      v87 = sub_1D9179ACC();
      v30 = v86;
      v29 = v85;
      v88 = v87;
      v27 = v84;
      a2 = v83;
      a1 = v82;
      v11 = v81;
      v12 = v80;
      v14 = v79;
      v17 = v78;
      v24 = v77;
      v4 = v255;
      v7 = v256;
      v5 = v257;
      if ((v88 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v76)
  {
    return 0;
  }

  v89 = *(a1 + 13);
  v90 = a2[13];
  if (v89)
  {
    if (!v90)
    {
      return 0;
    }

    if (*(a1 + 12) != a2[12] || v89 != v90)
    {
      v256 = v7;
      v257 = v5;
      v255 = v4;
      v91 = v24;
      v92 = v17;
      v93 = v14;
      v94 = v12;
      v95 = v11;
      v96 = a1;
      v97 = a2;
      v98 = v27;
      v99 = v29;
      v100 = v30;
      v101 = sub_1D9179ACC();
      v30 = v100;
      v29 = v99;
      v102 = v101;
      v27 = v98;
      a2 = v97;
      a1 = v96;
      v11 = v95;
      v12 = v94;
      v14 = v93;
      v17 = v92;
      v24 = v91;
      v4 = v255;
      v7 = v256;
      v5 = v257;
      if ((v102 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v90)
  {
    return 0;
  }

  v103 = *(a1 + 15);
  v104 = a2[15];
  v254 = v30;
  if (v103)
  {
    if (!v104)
    {
      return 0;
    }

    v251 = v29;
    v255 = v27;
    if ((*(a1 + 14) != a2[14] || v103 != v104) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v251 = v29;
    v255 = v27;
    if (v104)
    {
      return 0;
    }
  }

  v250 = v14;
  v105 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v253 = a2;
  v249 = v105;
  v257 = *(v105 + 48);
  v106 = v254;
  v107 = *(v255 + 48);
  sub_1D8D088B4(&a1[v257], v254, &unk_1ECAB5910, &qword_1D9188C90);
  v108 = v253 + v257;
  v257 = v107;
  sub_1D8D088B4(v108, v106 + v107, &unk_1ECAB5910, &qword_1D9188C90);
  v252 = *(v12 + 48);
  if (v252(v106, 1, v11) == 1)
  {
    if (v252(v254 + v257, 1, v11) == 1)
    {
      v248 = v12 + 48;
      sub_1D8D08A50(v254, &unk_1ECAB5910, &qword_1D9188C90);
      v109 = v253;
      goto LABEL_64;
    }

LABEL_60:
    v113 = &qword_1ECAB6178;
    v114 = &unk_1D9193430;
    v115 = v254;
LABEL_61:
    sub_1D8D08A50(v115, v113, v114);
    return 0;
  }

  v110 = v254;
  sub_1D8D088B4(v254, v262, &unk_1ECAB5910, &qword_1D9188C90);
  v111 = (v110 + v257);
  v112 = v257;
  if (v252(v111, 1, v11) == 1)
  {
    (*(v12 + 8))(v262, v11);
    goto LABEL_60;
  }

  v248 = v12 + 48;
  (*(v12 + 32))(v250, v254 + v112, v11);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v257) = sub_1D91781BC();
  v117 = *(v12 + 8);
  v117(v250, v11);
  v117(v262, v11);
  v109 = v253;
  sub_1D8D08A50(v254, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v257 & 1) == 0)
  {
    return 0;
  }

LABEL_64:
  v118 = v249;
  v119 = v249[13];
  v120 = &a1[v119];
  v121 = *&a1[v119 + 8];
  v122 = (v109 + v119);
  v123 = v122[1];
  if (v121)
  {
    if (!v123 || (*v120 != *v122 || v121 != v123) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v123)
  {
    return 0;
  }

  if (*&a1[v118[14]] != *(v109 + v118[14]))
  {
    return 0;
  }

  v124 = v118[15];
  v125 = &a1[v124];
  v126 = a1[v124 + 8];
  v127 = (v109 + v124);
  v128 = *(v109 + v124 + 8);
  if (v126)
  {
    if (!v128)
    {
      return 0;
    }
  }

  else
  {
    if (*v125 != *v127)
    {
      LOBYTE(v128) = 1;
    }

    if (v128)
    {
      return 0;
    }
  }

  v256 = v7;
  v257 = v5;
  v246 = v17;
  v247 = v24;
  v254 = v12;
  v129 = v118;
  v130 = v118[16];
  v262 = a1;
  v131 = &a1[v130];
  v132 = a1[v130 + 4];
  v133 = (v109 + v130);
  v134 = *(v109 + v130 + 4);
  if (v132)
  {
    if (!v134)
    {
      return 0;
    }
  }

  else
  {
    if (*v131 != *v133)
    {
      LOBYTE(v134) = 1;
    }

    if (v134)
    {
      return 0;
    }
  }

  v135 = v118[17];
  v136 = &v262[v135];
  v137 = *&v262[v135 + 8];
  v138 = (v253 + v135);
  v139 = v138[1];
  if (v137)
  {
    if (!v139 || (*v136 != *v138 || v137 != v139) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v139)
  {
    return 0;
  }

  v140 = v118[18];
  v141 = *(v255 + 48);
  v142 = v251;
  sub_1D8D088B4(&v262[v140], v251, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(v253 + v140, v142 + v141, &unk_1ECAB5910, &qword_1D9188C90);
  v143 = v142;
  if (v252(v142, 1, v11) == 1)
  {
    if (v252((v142 + v141), 1, v11) == 1)
    {
      sub_1D8D08A50(v142, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  sub_1D8D088B4(v142, v261, &unk_1ECAB5910, &qword_1D9188C90);
  if (v252((v142 + v141), 1, v11) == 1)
  {
    v254[1](v261, v11);
LABEL_96:
    v113 = &qword_1ECAB6178;
    v114 = &unk_1D9193430;
    v115 = v142;
    goto LABEL_61;
  }

  v144 = v254;
  v145 = v142 + v141;
  v146 = v250;
  (v254[4])(v250, v145, v11);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v147 = v261;
  v148 = sub_1D91781BC();
  v149 = *(v144 + 8);
  v149(v146, v11);
  v149(v147, v11);
  sub_1D8D08A50(v143, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v148 & 1) == 0)
  {
    return 0;
  }

LABEL_98:
  v150 = v118[19];
  v151 = &v262[v150];
  v152 = *&v262[v150 + 8];
  v153 = (v253 + v150);
  v154 = v153[1];
  if (v152)
  {
    if (!v154 || (*v151 != *v153 || v152 != v154) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v154)
  {
    return 0;
  }

  v155 = v118[20];
  v156 = *&v262[v155];
  v157 = *(v253 + v155);
  if (v156)
  {
    if (!v157 || (_s18PodcastsFoundation13ServerArtworkC2eeoiySbAC_ACtFZ_0(v156, v157) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v157)
  {
    return 0;
  }

  if (v262[v118[21]] != *(v253 + v118[21]))
  {
    return 0;
  }

  v158 = v118[22];
  v159 = *(v258 + 48);
  v160 = v260;
  sub_1D8D088B4(&v262[v158], v260, &qword_1ECAB75C0, &unk_1D9188A50);
  sub_1D8D088B4(v253 + v158, v160 + v159, &qword_1ECAB75C0, &unk_1D9188A50);
  v161 = *(v257 + 48);
  if (v161(v160, 1, v4) == 1)
  {
    if (v161(v260 + v159, 1, v4) == 1)
    {
      sub_1D8D08A50(v260, &qword_1ECAB75C0, &unk_1D9188A50);
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  v162 = v260;
  sub_1D8D088B4(v260, v259, &qword_1ECAB75C0, &unk_1D9188A50);
  if (v161(v162 + v159, 1, v4) == 1)
  {
    (*(v257 + 8))(v259, v4);
LABEL_116:
    v113 = &qword_1ECAB75B8;
    v114 = &qword_1D9197C80;
    v115 = v260;
    goto LABEL_61;
  }

  v163 = v257;
  v164 = v260;
  v165 = v260 + v159;
  v166 = v256;
  (*(v257 + 32))(v256, v165, v4);
  sub_1D90CBEE0(&qword_1ECAB75C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v167 = v259;
  v168 = sub_1D91781BC();
  v169 = *(v163 + 8);
  v169(v166, v4);
  v169(v167, v4);
  sub_1D8D08A50(v164, &qword_1ECAB75C0, &unk_1D9188A50);
  if ((v168 & 1) == 0)
  {
    return 0;
  }

LABEL_118:
  v170 = v129[23];
  v171 = &v262[v170];
  v172 = *&v262[v170 + 8];
  v173 = (v253 + v170);
  v174 = v173[1];
  if (v172)
  {
    if (!v174 || (*v171 != *v173 || v172 != v174) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v174)
  {
    return 0;
  }

  if (v262[v129[24]] != *(v253 + v129[24]) || v262[v129[25]] != *(v253 + v129[25]) || v262[v129[26]] != *(v253 + v129[26]) || v262[v129[27]] != *(v253 + v129[27]))
  {
    return 0;
  }

  v175 = v129[28];
  v176 = v262[v175];
  v177 = *(v253 + v175);
  if (v176 == 2)
  {
    if (v177 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v177 == 2)
    {
      return 0;
    }

    if (v176)
    {
      v178 = 0x64616F6C6E776F64;
    }

    else
    {
      v178 = 0x6D6165727473;
    }

    if (v176)
    {
      v179 = 0xE800000000000000;
    }

    else
    {
      v179 = 0xE600000000000000;
    }

    if (v177)
    {
      v180 = 0x64616F6C6E776F64;
    }

    else
    {
      v180 = 0x6D6165727473;
    }

    if (v177)
    {
      v181 = 0xE800000000000000;
    }

    else
    {
      v181 = 0xE600000000000000;
    }

    if (v178 == v180 && v179 == v181)
    {
    }

    else
    {
      v182 = sub_1D9179ACC();

      if ((v182 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v183 = v129[29];
  v184 = v262[v183];
  v185 = *(v253 + v183);
  if (v184 == 4)
  {
    if (v185 != 4)
    {
      return 0;
    }
  }

  else if (v185 == 4 || (sub_1D8FDDEC0(v184, v185) & 1) == 0)
  {
    return 0;
  }

  v186 = v129[30];
  v187 = v262[v186];
  v188 = *(v253 + v186);
  if (v187 == 5)
  {
    if (v188 != 5)
    {
      return 0;
    }
  }

  else if (v188 == 5 || (sub_1D8FDD174(v187, v188) & 1) == 0)
  {
    return 0;
  }

  if (*&v262[v129[31]] != *(v253 + v129[31]) || *&v262[v129[32]] != *(v253 + v129[32]) || v262[v129[33]] != *(v253 + v129[33]))
  {
    return 0;
  }

  v189 = v129[34];
  v190 = &v262[v189];
  v191 = *&v262[v189 + 8];
  v192 = (v253 + v189);
  v193 = v192[1];
  if (v191)
  {
    if (!v193 || (*v190 != *v192 || v191 != v193) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v193)
  {
    return 0;
  }

  if (!sub_1D90C2600(*&v262[v129[35]], *(v253 + v129[35])))
  {
    return 0;
  }

  v194 = v129[36];
  v195 = &v262[v194];
  v196 = *&v262[v194 + 8];
  v197 = (v253 + v194);
  v198 = v197[1];
  if (v196)
  {
    if (!v198 || (*v195 != *v197 || v196 != v198) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v198)
  {
    return 0;
  }

  v199 = v129[37];
  v200 = &v262[v199];
  v201 = *&v262[v199 + 8];
  v202 = (v253 + v199);
  v203 = v202[1];
  if (v201)
  {
    if (!v203 || (*v200 != *v202 || v201 != v203) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v203)
  {
    return 0;
  }

  v204 = v129[38];
  v205 = *(v255 + 48);
  v206 = v247;
  sub_1D8D088B4(&v262[v204], v247, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(v253 + v204, v206 + v205, &unk_1ECAB5910, &qword_1D9188C90);
  if (v252(v206, 1, v11) == 1)
  {
    if (v252(&v247[v205], 1, v11) == 1)
    {
      sub_1D8D08A50(v247, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_191;
    }

    goto LABEL_189;
  }

  v207 = v247;
  sub_1D8D088B4(v247, v246, &unk_1ECAB5910, &qword_1D9188C90);
  if (v252((v207 + v205), 1, v11) == 1)
  {
    v254[1](v246, v11);
LABEL_189:
    v113 = &qword_1ECAB6178;
    v114 = &unk_1D9193430;
    v115 = v247;
    goto LABEL_61;
  }

  v208 = v254;
  v209 = v247;
  v210 = &v247[v205];
  v211 = v250;
  (v254[4])(v250, v210, v11);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v212 = v246;
  v213 = sub_1D91781BC();
  v214 = *(v208 + 8);
  v214(v211, v11);
  v214(v212, v11);
  sub_1D8D08A50(v209, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v213 & 1) == 0)
  {
    return 0;
  }

LABEL_191:
  v215 = v129[39];
  v216 = &v262[v215];
  v217 = *&v262[v215 + 8];
  v218 = (v253 + v215);
  v219 = v218[1];
  if (v217)
  {
    if (!v219 || (*v216 != *v218 || v217 != v219) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v219)
  {
    return 0;
  }

  v220 = v129[40];
  v221 = &v262[v220];
  v222 = *&v262[v220 + 8];
  v223 = (v253 + v220);
  v224 = v223[1];
  if (v222)
  {
    if (!v224 || (*v221 != *v223 || v222 != v224) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v224)
  {
    return 0;
  }

  v225 = v129[41];
  v226 = *(v253 + v225);
  v227 = EpisodeSortType.rawValue.getter(v262[v225]);
  v229 = v228;
  if (v227 == EpisodeSortType.rawValue.getter(v226) && v229 == v230)
  {
  }

  else
  {
    v231 = sub_1D9179ACC();

    if ((v231 & 1) == 0)
    {
      return 0;
    }
  }

  if (v262[v129[42]] != *(v253 + v129[42]) || v262[v129[43]] != *(v253 + v129[43]) || v262[v129[44]] != *(v253 + v129[44]) || v262[v129[45]] != *(v253 + v129[45]) || v262[v129[46]] != *(v253 + v129[46]) || v262[v129[47]] != *(v253 + v129[47]))
  {
    return 0;
  }

  v232 = v129[48];
  v233 = v262[v232];
  v234 = *(v253 + v232);
  if (v233 == 4)
  {
    if (v234 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v234 == 4)
    {
      return 0;
    }

    v235 = 0x6465776F6C6C6F66;
    if (v233 > 1)
    {
      if (v233 == 2)
      {
        v237 = 0xD000000000000012;
        v236 = 0x80000001D91C84B0;
      }

      else
      {
        v236 = 0xE500000000000000;
        v237 = 0x65726F7473;
      }
    }

    else if (v233)
    {
      v236 = 0xE700000000000000;
      v237 = 0x7972617262696CLL;
    }

    else
    {
      v236 = 0xE800000000000000;
      v237 = 0x6465776F6C6C6F66;
    }

    if (v234 > 1)
    {
      if (v234 == 2)
      {
        v235 = 0xD000000000000012;
        v238 = 0x80000001D91C84B0;
      }

      else
      {
        v238 = 0xE500000000000000;
        v235 = 0x65726F7473;
      }
    }

    else if (v234)
    {
      v238 = 0xE700000000000000;
      v235 = 0x7972617262696CLL;
    }

    else
    {
      v238 = 0xE800000000000000;
    }

    if (v237 == v235 && v236 == v238)
    {
    }

    else
    {
      v239 = sub_1D9179ACC();

      if ((v239 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v240 = v129[49];
  v241 = &v262[v240];
  v242 = *&v262[v240 + 8];
  v243 = (v253 + v240);
  v244 = v243[1];
  if (!v242)
  {
    return !v244;
  }

  return v244 && (*v241 == *v243 && v242 == v244 || (sub_1D9179ACC() & 1) != 0);
}

BOOL _s18PodcastsFoundation0A12MediaLibraryC0C12ItemSnapshotV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v81 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v81 - v19;
  v21 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = *(a1 + 40);
  v24 = *(a2 + 40);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v23 != v24)
    {
      v25 = v18;
      v26 = sub_1D9179ACC();
      v18 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  v27 = *(a1 + 56);
  v28 = *(a2 + 56);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    v86 = v18;
    if ((*(a1 + 48) != *(a2 + 48) || v27 != v28) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v86 = v18;
    if (v28)
    {
      return 0;
    }
  }

  v83 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v85 = v83[8];
  v29 = *(v86 + 48);
  sub_1D8D088B4(a1 + v85, v20, &unk_1ECAB5910, &qword_1D9188C90);
  v30 = a2 + v85;
  v85 = v29;
  sub_1D8D088B4(v30, &v20[v29], &unk_1ECAB5910, &qword_1D9188C90);
  v84 = v5;
  v32 = v5 + 48;
  v31 = *(v5 + 48);
  if (v31(v20, 1, v4) == 1)
  {
    if (v31(&v20[v85], 1, v4) == 1)
    {
      v81 = v32;
      v82 = v31;
      sub_1D8D08A50(v20, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_35;
    }

LABEL_32:
    v33 = v20;
LABEL_33:
    sub_1D8D08A50(v33, &qword_1ECAB6178, &unk_1D9193430);
    return 0;
  }

  sub_1D8D088B4(v20, v13, &unk_1ECAB5910, &qword_1D9188C90);
  v82 = v31;
  if (v31(&v20[v85], 1, v4) == 1)
  {
    (*(v84 + 8))(v13, v4);
    goto LABEL_32;
  }

  v81 = v32;
  v34 = v84;
  (*(v84 + 32))(v7, &v20[v85], v4);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v85) = sub_1D91781BC();
  v35 = *(v34 + 8);
  v35(v7, v4);
  v35(v13, v4);
  sub_1D8D08A50(v20, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v36 = v83;
  if (*(a1 + v83[9]) != *(a2 + v83[9]))
  {
    return 0;
  }

  v37 = v83[10];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 8);
  if (v39)
  {
    v42 = v86;
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v43 = v86;
      v44 = sub_1D9179ACC();
      v42 = v43;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v42 = v86;
    if (v41)
    {
      return 0;
    }
  }

  v45 = v36[11];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }

    if (*v46 != *v48 || v47 != v49)
    {
      v50 = v42;
      v51 = sub_1D9179ACC();
      v42 = v50;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v49)
  {
    return 0;
  }

  v53 = v36[12];
  v54 = *(v42 + 48);
  sub_1D8D088B4(a1 + v53, v16, &unk_1ECAB5910, &qword_1D9188C90);
  v55 = a2 + v53;
  v56 = v54;
  sub_1D8D088B4(v55, &v16[v54], &unk_1ECAB5910, &qword_1D9188C90);
  v57 = v82;
  if (v82(v16, 1, v4) == 1)
  {
    if (v57(&v16[v56], 1, v4) == 1)
    {
      sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  sub_1D8D088B4(v16, v10, &unk_1ECAB5910, &qword_1D9188C90);
  if (v57(&v16[v56], 1, v4) == 1)
  {
    (*(v84 + 8))(v10, v4);
LABEL_56:
    v33 = v16;
    goto LABEL_33;
  }

  v58 = v84;
  (*(v84 + 32))(v7, &v16[v56], v4);
  sub_1D90CBEE0(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v59 = sub_1D91781BC();
  v60 = *(v58 + 8);
  v60(v7, v4);
  v60(v10, v4);
  sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v61 = v83;
  v62 = v83[13];
  v63 = (a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  if (*(a1 + v61[14]) != *(a2 + v61[14]))
  {
    return 0;
  }

  v67 = v61[15];
  v68 = *(a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (a2 + v67);
  if ((v68 != *v70 || v69 != v70[1]) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v71 = v61[16];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = (a2 + v71);
  v75 = v74[1];
  if (v73)
  {
    if (!v75 || (*v72 != *v74 || v73 != v75) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  v76 = v83[17];
  v77 = (a1 + v76);
  v78 = *(a1 + v76 + 8);
  v79 = (a2 + v76);
  v80 = v79[1];
  if (!v78)
  {
    return !v80;
  }

  return v80 && (*v77 == *v79 && v78 == v80 || (sub_1D9179ACC() & 1) != 0);
}

unint64_t sub_1D90CBE8C()
{
  result = qword_1ECABA4C8;
  if (!qword_1ECABA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4C8);
  }

  return result;
}

uint64_t sub_1D90CBEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D90CBF28()
{
  result = qword_1ECABA4D0;
  if (!qword_1ECABA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4D0);
  }

  return result;
}

unint64_t sub_1D90CBF7C()
{
  result = qword_1ECABA4D8;
  if (!qword_1ECABA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4D8);
  }

  return result;
}

unint64_t sub_1D90CBFD0()
{
  result = qword_1ECABA4F0;
  if (!qword_1ECABA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA4F0);
  }

  return result;
}

unint64_t sub_1D90CC024()
{
  result = qword_1ECABA500;
  if (!qword_1ECABA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA500);
  }

  return result;
}

unint64_t sub_1D90CC078()
{
  result = qword_1ECABA508;
  if (!qword_1ECABA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA508);
  }

  return result;
}

uint64_t sub_1D90CC0CC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA4E0, &qword_1D91B4C58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90CC150()
{
  result = qword_1ECABA518;
  if (!qword_1ECABA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA518);
  }

  return result;
}

uint64_t sub_1D90CC1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D90CC204()
{
  result = qword_1ECAB2C38;
  if (!qword_1ECAB2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C38);
  }

  return result;
}

uint64_t sub_1D90CC258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D90CC2C0()
{
  result = qword_1ECABA540;
  if (!qword_1ECABA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA540);
  }

  return result;
}

unint64_t sub_1D90CC318()
{
  result = qword_1ECABA550;
  if (!qword_1ECABA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA550);
  }

  return result;
}

uint64_t _s9MediaItemV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9MediaItemV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D90CC550()
{
  result = qword_1ECABA560;
  if (!qword_1ECABA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA560);
  }

  return result;
}