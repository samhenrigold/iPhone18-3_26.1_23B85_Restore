double sub_6BF388(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_6BED9C(a2);
  }

  return result;
}

void sub_6BF408(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = *(v2 + 48);
  v31 = v7;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      v10 = [v7 tracklist];
      v11 = [v10 playingItem];

      if (!a1)
      {
        v12 = 0;
        if (!v11)
        {
          v11 = 0;
          v13 = 0;
LABEL_24:
          if ((sub_6BF83C(v11, v13) & 1) == 0)
          {

LABEL_30:
            v28 = *(v2 + 48);
            *(v2 + 48) = a1;
            v29 = a1;

            return;
          }

          v12 = v13;
LABEL_26:
          sub_AB9960();
          v24 = sub_AB9990();
          (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
          v25 = swift_allocObject();
          *(v25 + 16) = &unk_B214E8;
          *(v25 + 24) = v2;

          v26 = static Task<>.delayed(by:priority:task:)(v6, &unk_B214F8, v25, &type metadata for () + 8, 1.0);

          sub_12E1C(v6, &qword_E0E340, &qword_B18550);
          v27 = *(v2 + 56);
          *(v2 + 56) = v26;
          if (v27)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
            sub_AB9A00();
          }

          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }
    }

    v14 = [a1 tracklist];
    v12 = [v14 playingItem];

    if (!v11)
    {
      v18 = 0;
      v16 = 0;
      v13 = 0;
      if (!v12)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    v15 = [v11 contentItemIdentifier];
    v16 = sub_AB92A0();
    v18 = v17;

    if (!v12)
    {
      v13 = 0;
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_15:
    v19 = [v12 contentItemIdentifier];
    v20 = sub_AB92A0();
    v22 = v21;

    if (v18)
    {
      if (v22)
      {
        if (v16 == v20 && v18 == v22)
        {

          v13 = v12;
        }

        else
        {
          v23 = sub_ABB3C0();

          v13 = v12;
          if ((v23 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      v13 = v12;
      if (!v22)
      {
        goto LABEL_24;
      }
    }

LABEL_22:

    goto LABEL_26;
  }

  *(v2 + 48) = a1;
  v8 = a1;
  v9 = v31;
}

double sub_6BF7D8(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_6BF408(v2, 0);
  }

  return result;
}

uint64_t sub_6BF83C(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 metadataObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 innermostModelObject];

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = [a2 metadataObject];
      if (v10)
      {
        v11 = v10;
        a2 = [v10 innermostModelObject];

        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        a2 = 0;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5)
  {
LABEL_5:
    if (a2)
    {
      v6 = [v5 identifiers];
      v7 = [a2 identifiers];
      v8 = [v6 intersectsSet:v7];

      return v8 ^ 1;
    }

    return 1;
  }

LABEL_10:
  if (a2)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_6BF984(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_AB9940();
  *(v1 + 24) = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_6BFA1C, v3, v2);
}

uint64_t sub_6BFA1C()
{

  if ((sub_AB9A10() & 1) == 0)
  {
    v1.n128_f64[0] = sub_6BFA90(2);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_6BFA90(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = &v18[-v5];
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E72050);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v18[7] = a1;
      v12 = sub_AB9350();
      v14 = sub_500C84(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "[📸] Set Needs Snapshot for Reason=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v15 = sub_AB9990();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_AB9940();

    v16 = sub_AB9930();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v2;
    *(v17 + 40) = a1;
    sub_5E89D8(0, 0, v6, &unk_B21510, v17);
  }

  return result;
}

uint64_t sub_6BFD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_AB9940();
  *(v5 + 24) = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_6BFDA4, v7, v6);
}

uint64_t sub_6BFDA4()
{
  v1 = *(v0 + 32);

  sub_6BED9C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Player.SnapshotController.deinit()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t Player.SnapshotController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_6BFEB8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

unint64_t sub_6BFF7C()
{
  result = qword_E12E18;
  if (!qword_E12E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E13480, &unk_B214D0);
    sub_6C002C(&qword_E12E20, &qword_E12E28, MPCPlayerResponse_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12E18);
  }

  return result;
}

uint64_t sub_6C002C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_13C80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_6C0078()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_6BF984(v0);
}

uint64_t sub_6C0108()
{

  return swift_deallocObject();
}

uint64_t sub_6C0140(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_261FFC(a1, v4);
}

uint64_t sub_6C01F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6C0238(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_6BFD08(a1, v4, v5, v6, v7);
}

unint64_t sub_6C0310()
{
  result = qword_E12E40;
  if (!qword_E12E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12E40);
  }

  return result;
}

uint64_t PlaybackController.insert(_:location:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_AB3470();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_AB9940();
  v4[24] = sub_AB9930();
  v7 = sub_AB98B0();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_6C0460, v7, v6);
}

uint64_t sub_6C0460(uint64_t a1)
{
  v36 = v1;
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v5 = sub_AB3440();
  v7 = v6;
  v1[27] = v5;
  v1[28] = v6;
  (*(v3 + 8))(v2, v4);
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v8 = v1[16];
  v9 = sub_AB4BC0();
  v1[29] = __swift_project_value_buffer(v9, static Logger.playbackController);

  v10 = v8;
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1[16];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_500C84(v5, v7, &v35);
    *(v14 + 12) = 2082;
    v15 = v13;
    v16 = [v15 description];
    v17 = sub_AB92A0();
    v19 = v18;

    v20 = sub_500C84(v17, v19, &v35);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v11, v12, "⤵️ Inserting new intent with ID=%{public}s, intent=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v1[19];
  v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v25 = v1[16];
  v24 = v1[17];
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;

    sub_537EFC(v24);
    sub_AB5510(v1 + 14);

    v27 = v1[14];
    if (v27)
    {
    }
  }

  else
  {
    v28 = v25;
    sub_537EFC(v24);
  }

  v29 = v1[16];
  v30 = v1[17];
  sub_ABA0B0();
  v1[5] = &type metadata for Player.InsertCommand;
  v1[6] = &protocol witness table for Player.InsertCommand;
  v1[2] = v29;
  v1[3] = v30;
  v31 = v29;
  sub_537EFC(v30);
  v1[30] = sub_AB9930();
  v33 = sub_AB98B0();
  v1[31] = v33;
  v1[32] = v32;

  return _swift_task_switch(sub_6C07B0, v33, v32);
}

uint64_t sub_6C07B0()
{
  v1 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = xmmword_AF4EC0;
  sub_E8BA0((v0 + 2), v2 + 32);
  v0[34] = sub_AB9930();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_6C08AC;
  v4 = v0[18];

  return sub_6CD6E0(v2, 0x10000, 1, 0, v1, v4);
}

uint64_t sub_6C08AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_AB98B0();
    v6 = v5;
    v7 = sub_6C0B68;
  }

  else
  {
    v4 = sub_AB98B0();
    v6 = v8;
    v7 = sub_6C0A24;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_6C0A24()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_6C0A90, v1, v2);
}

uint64_t sub_6C0A90()
{
  v1 = v0[36];

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!sub_ABB060())
      {
        goto LABEL_9;
      }
    }

    sub_ABAE20();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[25];
  v3 = v0[26];

  return _swift_task_switch(sub_6C10CC, v2, v3);
}

uint64_t sub_6C0B68()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_6C0BCC, v1, v2);
}

uint64_t sub_6C0BCC()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_6C0C30, v1, v2);
}

uint64_t sub_6C0C30()
{
  v33 = v0;
  v1 = *(v0 + 296);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 120) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    *(v0 + 304) = v3;
    *(v0 + 312) = v2;
    v4 = sub_AB3040();
    v5 = [v4 code];

    if (v5 == &dword_0 + 3)
    {

      v6 = sub_AB4BA0();
      v7 = sub_AB9F30();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 216);
        v8 = *(v0 + 224);
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_500C84(v9, v8, v32);
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_500C84(0xD00000000000001FLL, 0x8000000000B70340, v32);
        _os_log_impl(&dword_0, v6, v7, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      v11[1] = sub_6C1264;
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);
      v14 = *(v0 + 144);
      v15 = *(v0 + 128);

      return sub_6C498C(v15, v12, v13, v14);
    }

    swift_errorRetain();

    v18 = sub_AB4BA0();
    v19 = sub_AB9F30();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = sub_500C84(v22, v21, v32);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2082;
      *(v0 + 96) = v3;
      *(v0 + 104) = v2;
      swift_errorRetain();

      v25 = sub_AB9350();
      v27 = sub_500C84(v25, v26, v32);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_0, v18, v19, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    sub_6DAEFC();
    swift_allocError();
    *v30 = v3;
    v30[1] = v2;
    swift_willThrow();
    swift_errorRetain();

    sub_58B900(v28);
  }

  else
  {
    v17 = *(v0 + 136);

    sub_58B900(v17);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_6C10CC()
{
  v15 = v0;

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_500C84(v5, v4, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "✅ Successfully inserted intent with ID=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);

    sub_58B900(v6);
  }

  else
  {
    v11 = *(v0 + 136);

    sub_58B900(v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_6C1264()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_6DDD7C;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_6C13A8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6C13A8()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_6DAF50();
  swift_allocError();
  *v3 = 3;
  *(v3 + 8) = 2;
  swift_willThrow();

  sub_58B900(v1);

  v4 = v0[1];

  return v4();
}

uint64_t PlaybackController.add(_:route:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_AB29F0();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_AB4C10();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = sub_AB3470();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  sub_AB9940();
  v3[34] = sub_AB9930();
  v8 = sub_AB98B0();
  v3[35] = v8;
  v3[36] = v7;

  return _swift_task_switch(sub_6C16C8, v8, v7);
}

uint64_t sub_6C16C8()
{
  v40 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = (v0[17] + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  sub_6DAFA4(v5, v6, v7, v8, v9);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = sub_AB3440();
  v12 = v11;
  v0[37] = v10;
  v0[38] = v11;
  (*(v2 + 8))(v1, v3);
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v13 = v0[30];
  v14 = v0[15];
  v15 = sub_AB4BC0();
  v0[39] = v15;
  v0[40] = __swift_project_value_buffer(v15, static Logger.playbackController);
  sub_6DAFE8(v14, v13, type metadata accessor for PlaybackIntentDescriptor);

  v16 = sub_AB4BA0();
  v17 = sub_AB9F50();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[30];
  if (v18)
  {
    v20 = v0[29];
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_500C84(v10, v12, &v39);
    *(v21 + 12) = 2082;
    sub_6DAFE8(v19, v20, type metadata accessor for PlaybackIntentDescriptor);
    v22 = sub_AB9350();
    v24 = v23;
    sub_6DB65C(v19, type metadata accessor for PlaybackIntentDescriptor);
    v25 = sub_500C84(v22, v24, &v39);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_0, v16, v17, "➕ Adding new playback intent with ID=%{public}s, descriptor=%{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_6DB65C(v19, type metadata accessor for PlaybackIntentDescriptor);
  }

  sub_6DAFE8(v0[15], v0[27], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v0[24];
    v29 = v0[21];
    v30 = v0[22];
    (*(v30 + 32))(v28, v27, v29);
    v31 = sub_AB4BE0();
    (*(v30 + 8))(v28, v29);
  }

  else
  {
    v31 = *v27;
  }

  v32 = v0[17];
  v33 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v32 + v33))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v0 + 9);

    v34 = v0[9];
    if (v34)
    {
    }
  }

  sub_ABA0B0();

  v35 = swift_task_alloc();
  v0[41] = v35;
  *v35 = v0;
  v35[1] = sub_6C1B08;
  v36 = v0[16];
  v37 = v0[15];

  return sub_6C5DC8(v37, v10, v12, v36);
}

uint64_t sub_6C1B08()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_6C2608;
  }

  else
  {
    v5 = sub_6C1C44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6C1C44()
{
  v19 = v0;

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_500C84(v4, v3, &v18);
    _os_log_impl(&dword_0, v1, v2, "✅ Successfully added intent with ID=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = v0[28];
  v8 = v0[15];
  _s9MusicCore9AppReviewO16recordSongPlayedyyFZ_0();
  v9 = *(v8 + *(v7 + 36));
  v10 = v0[28];
  v11 = v0[15];
  if (v9 == 1)
  {
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_6C1FA0;

    return sub_6CC174(v11 + v12);
  }

  if (*(v11 + *(v10 + 40)))
  {

LABEL_14:

    v17 = v0[1];

    return v17();
  }

  sub_6DAFE8(v0[15], v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v0[26];

    sub_6DB65C(v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_14;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_6C22AC;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_6C1FA0()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_6C20C0, v3, v2);
}

uint64_t sub_6C20C0()
{
  v1 = v0[15];
  if (*(v1 + *(v0[28] + 40)))
  {

LABEL_8:

    v4 = v0[1];

    return v4();
  }

  sub_6DAFE8(v1, v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v3 = v0[26];

    sub_6DB65C(v3, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_8;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_6C22AC;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_6C22AC()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_6C2F5C;
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_6C23C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6C23C8()
{
  v18 = v0;

  if (qword_E0CEB0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[39], static Logger.siriIntents);

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = v0[37];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_500C84(v5, v4, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, v1, v2, "Successfully donated intent with ID=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_6C2608()
{
  v67 = v0;
  v1 = *(v0 + 336);

  *(v0 + 80) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (!*(v0 + 48))
    {

      sub_6DB084(v2, 0, v26);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();

      sub_6DB050(v2, 0);
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 304);
      if (v29)
      {
        v31 = *(v0 + 296);
        v32 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v32 = 136446466;
        v33 = sub_500C84(v31, v30, v66);

        *(v32 + 4) = v33;
        *(v32 + 12) = 2082;
        *(v0 + 104) = v2;
        sub_6DB0A8(v2);
        v34 = sub_AB9350();
        v36 = sub_500C84(v34, v35, v66);

        *(v32 + 14) = v36;
        _os_log_impl(&dword_0, v27, v28, "❌ Intent id=%{public}s) — Could not present alertKind=%{public}s", v32, 0x16u);
        swift_arrayDestroy();

        sub_6DB050(v2, 0);
      }

      else
      {

        sub_6DB050(v2, 0);
      }

      goto LABEL_33;
    }

    if (v3 == 3)
    {
      if (!v2)
      {

        v18 = sub_AB4BA0();
        v57 = sub_AB9F30();

        v58 = os_log_type_enabled(v18, v57);
        v59 = *(v0 + 304);
        if (v58)
        {
          v60 = *(v0 + 296);
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v66[0] = v62;
          *v61 = 136446210;
          v63 = sub_500C84(v60, v59, v66);

          *(v61 + 4) = v63;
          _os_log_impl(&dword_0, v18, v57, "❌ Intent id=%{public}s) — Missing player", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);

          goto LABEL_33;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v2 == &dword_0 + 2)
      {

        goto LABEL_9;
      }
    }

    sub_6DB050(*(v0 + 40), v3);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  swift_errorRetain();
  sub_AB29D0();
  sub_6DCA54(&qword_E12E98, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v7 = sub_AB2F80();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_9:

    v8 = sub_AB4BA0();
    v9 = sub_AB9F30();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 304);
    if (v10)
    {
      v12 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v66[0] = v14;
      *v13 = 136446210;
      v15 = sub_500C84(v12, v11, v66);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_0, v8, v9, "❌ Intent id=%{public}s) — User cancelled", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_23:

      goto LABEL_34;
    }

LABEL_24:

    goto LABEL_34;
  }

  *(v0 + 88) = *(v0 + 336);
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
LABEL_21:

    swift_errorRetain();
    v8 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v8, v37))
    {
      v38 = *(v0 + 336);
      v40 = *(v0 + 296);
      v39 = *(v0 + 304);
      v41 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v41 = 136446466;
      v42 = sub_500C84(v40, v39, v66);

      *(v41 + 4) = v42;
      *(v41 + 12) = 2082;
      *(v0 + 96) = v38;
      swift_errorRetain();
      v43 = sub_AB9350();
      v45 = sub_500C84(v43, v44, v66);

      *(v41 + 14) = v45;
      _os_log_impl(&dword_0, v8, v37, "❌ Intent id=%{public}s) — Failed to add with error=%{public}s", v41, 0x16u);
      swift_arrayDestroy();
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  if (v17 == 1)
  {

    sub_6DB084(v16, 1, v46);
    v18 = sub_AB4BA0();
    v47 = sub_AB9F30();

    sub_6DB050(v16, 1);
    v48 = os_log_type_enabled(v18, v47);
    v49 = *(v0 + 304);
    if (!v48)
    {

      sub_6DB050(v16, 1);
      goto LABEL_33;
    }

    v50 = *(v0 + 296);
    v51 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v51 = 136446466;
    v52 = sub_500C84(v50, v49, v66);

    *(v51 + 4) = v52;
    *(v51 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
    v53 = sub_AB9770();
    v55 = v54;
    sub_6DB050(v16, 1);
    v56 = sub_500C84(v53, v55, v66);

    *(v51 + 14) = v56;
    _os_log_impl(&dword_0, v18, v47, "❌ Intent id=%{public}s) — Could not produce playback commands=%{public}s", v51, 0x16u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  if (v17 != 3 || v16 != &dword_0 + 1)
  {
    sub_6DB050(*(v0 + 56), v17);
    goto LABEL_21;
  }

  v18 = sub_AB4BA0();
  v19 = sub_AB9F30();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 304);
  if (!v20)
  {
    goto LABEL_32;
  }

  v22 = *(v0 + 296);
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v66[0] = v24;
  *v23 = 136446210;
  v25 = sub_500C84(v22, v21, v66);

  *(v23 + 4) = v25;
  _os_log_impl(&dword_0, v18, v19, "❌ Intent id=%{public}s) — Could not playback, subscription needed", v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v24);

LABEL_28:

LABEL_33:

LABEL_34:
  swift_willThrow();

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_6C2F5C()
{
  v17 = v0;

  if (qword_E0CEB0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[39], static Logger.siriIntents);
  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  if (v3)
  {
    v15 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v10 = sub_AB9350();
    v12 = sub_500C84(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v1, v2, "Donation error=%{public}s)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v15, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

void *PlaybackController.init(coordinator:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_player] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  sub_E8BA0(a1, &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator]);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

double sub_6C32DC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0, &qword_B21460);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a1 + 24);
    if (v8)
    {
      if (v8 == v2)
      {
        swift_beginAccess();
        *(a1 + 24) = 0;
        swift_unknownObjectRelease();
        [*(a1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:0];
      }
    }
  }

  v9 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10)
  {
    swift_beginAccess();
    *(v10 + 24) = v2;

    v11 = v2;
    swift_unknownObjectRelease();
    [*(v10 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:v11];

    if (*&v2[v9])
    {
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090, &qword_B21AB0);
      sub_AB54E0();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_6DD3A0();
      v10 = sub_AB55C0();

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v10 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = v10;

  return result;
}

void sub_6C356C(void **a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_AB9990();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_AB9940();
    v9 = v5;
    v10 = v7;
    v11 = sub_AB9930();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = v5;
    sub_5E89D8(0, 0, v4, &unk_B21AC0, v12);
  }
}

uint64_t sub_6C36D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_AB9940();
  v5[4] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_6C376C, v7, v6);
}

uint64_t sub_6C376C()
{
  v1 = *(v0 + 24);

  sub_6C37D8(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_6C37D8(void *a1)
{
  if (!a1 || (v3 = [a1 tracklist]) == 0)
  {
LABEL_8:
    v6 = v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor;
    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
    v8 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 8);
    v9 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16);
    v10 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 24);
    v11 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 32);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;

    sub_6DAFA4(v7, v8, v9, v10, v11);
    return;
  }

  v108 = v3;
  v4 = [v3 playingItem];
  if (!v4)
  {
    v5 = v108;
    goto LABEL_7;
  }

  v5 = v4;
  if ([v4 isPlaceholder])
  {

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v108 uniqueIdentifier];
  v13 = sub_AB92A0();
  v15 = v14;

  v16 = (v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  if (!*(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16))
  {

LABEL_17:
    v19 = [v5 contentItemIdentifier];
    v20 = sub_AB92A0();
    v22 = v21;

    v23 = [v108 uniqueIdentifier];
    v24 = sub_AB92A0();
    v26 = v25;

    v27 = *v16;
    v28 = v16[1];
    v29 = v16[2];
    v30 = v16[3];
    v31 = v16[4];
    *v16 = 1;
    v16[1] = v20;
    v16[2] = v22;
    v16[3] = v24;
    v16[4] = v26;
    v17 = sub_6DAFA4(v27, v28, v29, v30, v31);
    goto LABEL_18;
  }

  if (v13 == v16[3] && v15 == v16[4])
  {

    goto LABEL_18;
  }

  v18 = sub_ABB3C0();

  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v32 = [v5 contentItemIdentifier];
  v33 = sub_AB92A0();
  v35 = v34;

  v36 = v16[2];
  if (v36)
  {
    if (v33 == v16[1] && v35 == v36)
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_ABB3C0();
    }
  }

  else
  {
    v37 = 0;
  }

  if (v16[2])
  {
    v38 = *v16;
  }

  else
  {
    v38 = 0;
  }

  if ([a1 videoOutput])
  {
    v111 = &OBJC_PROTOCOL___MPCVideoOutput;
    v39 = swift_dynamicCastObjCProtocolConditional();
    if (!v39 || (v40 = v39, swift_getObjectType(), sub_13C80(0, &qword_E112E0, NSObject_ptr), !swift_dynamicCastMetatype()))
    {

      swift_unknownObjectRelease();
      return;
    }

    v107 = v1;
    type metadata accessor for MPCPlayerResponse.VideoContext(0);
    swift_allocObject();
    v41 = MPCPlayerResponse.VideoContext.init(output:)(v40);
    if ((v38 & 1) == 0 || (v37 & 1) == 0 || (v101 = v41, [a1 state] != &dword_0 + 2))
    {

LABEL_40:

      return;
    }

    v100 = objc_opt_self();
    v42 = [v100 sharedApplication];
    v43 = [v42 openSessions];

    sub_13C80(0, &qword_E13098, UISceneSession_ptr);
    sub_6DD50C();
    v44 = sub_AB9B40();

    if ((v44 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_AB9BC0();
      v44 = v112;
      v45 = v113;
      v46 = v114;
      v47 = v115;
      v48 = v116;
    }

    else
    {
      v49 = -1 << *(v44 + 32);
      v45 = v44 + 56;
      v46 = ~v49;
      v50 = -v49;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v48 = v51 & *(v44 + 56);

      v47 = 0;
    }

    v52 = (v46 + 64) >> 6;
    v103 = v45;
    if (v44 < 0)
    {
      goto LABEL_51;
    }

LABEL_46:
    v53 = v47;
    v54 = v48;
    v55 = v47;
    if (!v48)
    {
      while (1)
      {
        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v55 >= v52)
        {
LABEL_61:
          sub_2BB88(v44);

          return;
        }

        v54 = *(v45 + 8 * v55);
        ++v53;
        if (v54)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_93:
      v93 = v106;
      v92 = v107;
      v72 = v55;
LABEL_89:
      sub_2BB88(v72);

      v105 = 0;
      if (!v16[2])
      {
        goto LABEL_91;
      }

LABEL_90:
      *v16 = 0;
LABEL_91:
      v94 = *(v92 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
      v95 = *(v92 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
      __swift_project_boxed_opaque_existential_1((v92 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v94);
      v109[0] = v101;
      v110 = 1;
      v96 = *(v95 + 8);

      v96(v109, v94, v95);

      sub_6DC698(v109);
      return;
    }

LABEL_50:
    v56 = (v54 - 1) & v54;
    v57 = *(*(v44 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
    while (1)
    {
      if (!v57)
      {
        goto LABEL_61;
      }

      v59 = v44;
      v106 = v57;
      v60 = [v57 role];
      v61 = sub_AB92A0();
      v63 = v62;
      if (v61 == sub_AB92A0() && v63 == v64)
      {
        break;
      }

      v66 = sub_ABB3C0();

      if (v66)
      {
        goto LABEL_63;
      }

      v47 = v55;
      v48 = v56;
      v44 = v59;
      v45 = v103;
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_51:
      v58 = sub_ABAC90();
      if (!v58)
      {
        goto LABEL_61;
      }

      v117 = v58;
      swift_dynamicCast();
      v57 = v109[0];
      v55 = v47;
      v56 = v48;
    }

LABEL_63:
    sub_2BB88(v59);

    v67 = [v106 scene];
    if (!v67 || (v68 = v67, v69 = [v67 activationState], v68, v69))
    {

      goto LABEL_40;
    }

    v70 = [v100 sharedApplication];
    v71 = [v70 openSessions];

    v72 = sub_AB9B40();
    if ((v72 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_AB9BC0();
      v72 = v117;
      v73 = v118;
      v74 = v119;
      v75 = v120;
      v76 = v121;
    }

    else
    {
      v77 = -1 << *(v72 + 32);
      v73 = v72 + 56;
      v74 = ~v77;
      v78 = -v77;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v76 = v79 & *(v72 + 56);

      v75 = 0;
    }

    v80 = (v74 + 64) >> 6;
    v102 = v73;
    if (v72 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    v81 = v75;
    v82 = v76;
    v83 = v75;
    if (v76)
    {
LABEL_77:
      v104 = (v82 - 1) & v82;
      v84 = *(*(v72 + 48) + ((v83 << 9) | (8 * __clz(__rbit64(v82)))));
      while (1)
      {
        v55 = v72;
        if (!v84)
        {
          goto LABEL_93;
        }

        v105 = v84;
        v85 = [v84 role];
        v86 = sub_AB92A0();
        v88 = v87;
        if (v86 == sub_AB92A0() && v88 == v89)
        {
          break;
        }

        v91 = sub_ABB3C0();

        if (v91)
        {
          goto LABEL_95;
        }

        v75 = v83;
        v72 = v55;
        v73 = v102;
        v76 = v104;
        if ((v72 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        if (!sub_ABAC90())
        {
          goto LABEL_88;
        }

        swift_dynamicCast();
        v84 = v109[0];
        v83 = v75;
        v104 = v76;
      }

LABEL_95:
      sub_2BB88(v55);

      v97 = [v105 scene];
      if (v97)
      {
        v98 = v97;
        v99 = [v97 activationState];

        if (v99 == -1)
        {
          v93 = v106;
          v92 = v107;
          if (!v16[2])
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }

      else
      {
      }

      goto LABEL_40;
    }

    while (1)
    {
      v83 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v83 >= v80)
      {
LABEL_88:
        v93 = v106;
        v92 = v107;
        goto LABEL_89;
      }

      v82 = *(v73 + 8 * v83);
      ++v81;
      if (v82)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

double PlaybackController.player.getter()
{
  swift_beginAccess();

  return result;
}

double PlaybackController.player.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_6C32DC(v4);

  return result;
}

void (*PlaybackController.player.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_6C4384;
}

void sub_6C4384(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_6C32DC(v6);
  }

  else
  {
    sub_6C32DC(v6);
  }

  free(v3);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_6C44F8, v7, v6);
}

{
  v4[2] = sub_AB9940();
  v4[3] = sub_AB9930();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_6CD4F8;

  return sub_6CD6E0(a1, 0x10000, 1, a2, a3, a4);
}

uint64_t sub_6C44F8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_AF4EC0;
  sub_E8BA0(v1, v2 + 32);
  v0[12] = sub_AB9930();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6C45F0;
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];

  return sub_6CD6E0(v2, 0x10000, 1, v5, v6, v4);
}

uint64_t sub_6C45F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {

    v4 = sub_AB98B0();
    v6 = v5;
    v7 = sub_6C48C4;
  }

  else
  {
    v4 = sub_AB98B0();
    v6 = v8;
    v7 = sub_6C4768;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_6C4768()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_6C47D4, v1, v2);
}

uint64_t sub_6C47D4()
{
  v1 = *(v0 + 112);

  if (v1 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_6C48C4()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_6C4928, v1, v2);
}

uint64_t sub_6C4928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6C498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_AB29F0();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_6C4A54, 0, 0);
}

uint64_t sub_6C4A54()
{
  v12 = v0;
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  v0[31] = __swift_project_value_buffer(v1, static Logger.playbackController);

  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_500C84(v5, v4, &v11);
    _os_log_impl(&dword_0, v2, v3, "Intent id=%{public}s) — Offering play local option to user", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v0[32] = sub_AB9940();
  v0[33] = sub_AB9930();
  v9 = sub_AB98B0();
  v0[34] = v9;
  v0[35] = v8;

  return _swift_task_switch(sub_6C4C1C, v9, v8);
}

uint64_t sub_6C4C1C(uint64_t a1)
{
  v2 = sub_AB9930();
  *(v1 + 288) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = sub_AB98B0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_6C4CB0, v3, v5);
}

uint64_t sub_6C4CB0()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_6C4D64;
  v2 = swift_continuation_init();
  sub_6D0AC4(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6C4D64()
{
  v1 = *v0;
  *(*v0 + 154) = *(*v0 + 153);
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_6C4E70, v3, v2);
}

uint64_t sub_6C4E70()
{

  return _swift_task_switch(sub_6C4ED8, 0, 0);
}

uint64_t sub_6C4ED8(__n128 a1)
{
  v39 = v1;
  if (*(v1 + 154) == 1)
  {
    v2 = (*(v1 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    *(v1 + 296) = (*(v4 + 40))(v3, v4);
    v5 = swift_task_alloc();
    *(v1 + 304) = v5;
    *v5 = v1;
    v5[1] = sub_6C54C4;

    return GroupActivitiesManager.leave(performLeaveCommand:)(0);
  }

  sub_6DAF50();
  v7 = swift_allocError();
  *v8 = 2;
  *(v8 + 8) = 3;
  swift_willThrow();
  *(v1 + 160) = v7;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (swift_dynamicCast())
  {
    v9 = *(v1 + 144);
    v10 = *(v1 + 152);
    if (!*(v1 + 152))
    {

      sub_6DB084(v9, 0, v29);
      v30 = sub_AB4BA0();
      v31 = sub_AB9F30();

      sub_6DB050(v9, 0);
      if (os_log_type_enabled(v30, v31))
      {
        v33 = *(v1 + 192);
        v32 = *(v1 + 200);
        v34 = swift_slowAlloc();
        v38[0] = swift_slowAlloc();
        *v34 = 136446466;
        *(v34 + 4) = sub_500C84(v33, v32, v38);
        *(v34 + 12) = 2082;
        *(v1 + 176) = v9;
        sub_6DB0A8(v9);
        v35 = sub_AB9350();
        v37 = sub_500C84(v35, v36, v38);

        *(v34 + 14) = v37;
        _os_log_impl(&dword_0, v30, v31, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v34, 0x16u);
        swift_arrayDestroy();

        sub_6DB050(v9, 0);
      }

      else
      {

        sub_6DB050(v9, 0);
      }

      goto LABEL_18;
    }

    if (v10 == 3 && v9 == &dword_0 + 2)
    {

      goto LABEL_12;
    }

    sub_6DB050(*(v1 + 144), v10);
  }

  v12 = *(v1 + 232);
  v11 = *(v1 + 240);
  v13 = *(v1 + 224);

  swift_errorRetain();
  sub_AB29D0();
  sub_6DCA54(&qword_E12E98, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v14 = sub_AB2F80();

  (*(v12 + 8))(v11, v13);
  if (v14)
  {
LABEL_12:

    v15 = sub_AB4BA0();
    v16 = sub_AB9F30();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v1 + 192);
      v17 = *(v1 + 200);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_500C84(v18, v17, v38);
      _os_log_impl(&dword_0, v15, v16, "Intent id=%{public}s) — User cancelled", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  swift_errorRetain();
  v15 = sub_AB4BA0();
  v21 = sub_AB9F30();

  if (os_log_type_enabled(v15, v21))
  {
    v23 = *(v1 + 192);
    v22 = *(v1 + 200);
    v24 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = sub_500C84(v23, v22, v38);
    *(v24 + 12) = 2082;
    *(v1 + 168) = v7;
    swift_errorRetain();
    v25 = sub_AB9350();
    v27 = sub_500C84(v25, v26, v38);

    *(v24 + 14) = v27;
    _os_log_impl(&dword_0, v15, v21, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  swift_willThrow();

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_6C54C4()
{

  return _swift_task_switch(sub_6C55DC, 0, 0);
}

uint64_t sub_6C55DC()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[39] = v3;
  if (v3)
  {
    v4 = v0[23];
    v0[10] = v4;
    v0[13] = &type metadata for Player.ReplaceCommand;
    v0[14] = &protocol witness table for Player.ReplaceCommand;
    v0[11] = 3;
    v5 = v4;

    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_6C572C;
    v7 = v0[26];

    return Player.perform(_:options:issuer:)((v0 + 10), 0x10000, 0, 0, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_6C572C(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_6C58D8;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v4 + 80));
    v5 = sub_6C586C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6C586C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6C58D8()
{
  v33 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v1 = *(v0 + 328);
  *(v0 + 160) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_6DB084(v2, 0, v23);
      v24 = sub_AB4BA0();
      v25 = sub_AB9F30();

      sub_6DB050(v2, 0);
      if (os_log_type_enabled(v24, v25))
      {
        v27 = *(v0 + 192);
        v26 = *(v0 + 200);
        v28 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v28 = 136446466;
        *(v28 + 4) = sub_500C84(v27, v26, v32);
        *(v28 + 12) = 2082;
        *(v0 + 176) = v2;
        sub_6DB0A8(v2);
        v29 = sub_AB9350();
        v31 = sub_500C84(v29, v30, v32);

        *(v28 + 14) = v31;
        _os_log_impl(&dword_0, v24, v25, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v28, 0x16u);
        swift_arrayDestroy();

        sub_6DB050(v2, 0);
      }

      else
      {

        sub_6DB050(v2, 0);
      }

      goto LABEL_14;
    }

    if (v3 == 3 && v2 == &dword_0 + 2)
    {

      goto LABEL_8;
    }

    sub_6DB050(*(v0 + 144), v3);
  }

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);

  swift_errorRetain();
  sub_AB29D0();
  sub_6DCA54(&qword_E12E98, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v7 = sub_AB2F80();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_8:

    v8 = sub_AB4BA0();
    v9 = sub_AB9F30();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_500C84(v11, v10, v32);
      _os_log_impl(&dword_0, v8, v9, "Intent id=%{public}s) — User cancelled", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  swift_errorRetain();
  v8 = sub_AB4BA0();
  v14 = sub_AB9F30();

  if (os_log_type_enabled(v8, v14))
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_500C84(v16, v15, v32);
    *(v17 + 12) = 2082;
    *(v0 + 168) = v1;
    swift_errorRetain();
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v32);

    *(v17 + 14) = v20;
    _os_log_impl(&dword_0, v8, v14, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_6C5DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[126] = v4;
  v5[125] = a4;
  v5[124] = a3;
  v5[123] = a2;
  v5[122] = a1;
  v6 = sub_AB3470();
  v5[127] = v6;
  v5[128] = *(v6 - 8);
  v5[129] = swift_task_alloc();
  sub_AB35C0();
  v5[130] = swift_task_alloc();
  v7 = sub_AB9250();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v8 = sub_AB4C10();
  v5[135] = v8;
  v5[136] = *(v8 - 8);
  v5[137] = swift_task_alloc();
  v5[138] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = sub_AB9940();
  v5[149] = sub_AB9930();
  v10 = sub_AB98B0();
  v5[150] = v10;
  v5[151] = v9;

  return _swift_task_switch(sub_6C6054, v10, v9);
}

uint64_t sub_6C6054()
{
  v18 = v0;
  v1 = v0[126];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v0[152] = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[153] = v3;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v3 + v4) == 2)
    {
    }

    else
    {
      v8 = qword_E0CEA0;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_AB4BC0();
      __swift_project_value_buffer(v9, static Logger.playbackController);

      v10 = sub_AB4BA0();
      v11 = sub_AB9F50();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[124];
        v13 = v0[123];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_500C84(v13, v12, &v17);
        _os_log_impl(&dword_0, v10, v11, "Intent id=%{public}s) — Awaiting for engine to start", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
      }
    }

    v16 = swift_task_alloc();
    v0[154] = v16;
    *v16 = v0;
    v16[1] = sub_6C63BC;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    sub_6DAF50();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_6C63BC()
{
  v1 = *v0;

  v2 = *(v1 + 1208);
  v3 = *(v1 + 1200);

  return _swift_task_switch(sub_6C64DC, v3, v2);
}

uint64_t sub_6C64DC()
{
  v1 = *(v0 + 1000);
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 960));

    v2 = *(v0 + 960);
    v1 = [v2 route];
  }

  *(v0 + 1240) = v1;
  v3 = *(v0 + 976);
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v0 + 1248) = v4;
  *(v0 + 1256) = *(v3 + v4[5]);
  if ((*(v3 + v4[10]) & 1) != 0 || *(v3 + v4[9]) == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + v4[6]);
  }

  *(v0 + 1264) = v5;
  v6 = *(v0 + 1000);
  v7 = swift_task_alloc();
  *(v0 + 1272) = v7;
  *v7 = v0;
  v7[1] = sub_6C664C;
  v8 = *(v0 + 976);

  return sub_6CE328(v1, v8);
}

uint64_t sub_6C664C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 218) = a1;
  *(v4 + 1280) = v1;

  v5 = *(v3 + 1208);
  v6 = *(v3 + 1200);
  if (v1)
  {
    v7 = sub_6CA1A4;
  }

  else
  {
    v7 = sub_6C6794;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_6C6794()
{
  v81 = v0;
  if (*(v0 + 218) == 2)
  {
    v1 = *(v0 + 1240);

    v2 = *(v0 + 8);

    return v2();
  }

  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  *(v0 + 1288) = __swift_project_value_buffer(v4, static Logger.playbackController);

  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 218);
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_500C84(v9, v8, &v80);
    *(v10 + 12) = 2082;
    *(v0 + 217) = v7 & 1;
    v11 = sub_AB9350();
    v13 = sub_500C84(v11, v12, &v80);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_0, v5, v6, "Intent id=%{public}s) — Resolved Playability Options=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_6DAFE8(*(v0 + 976), *(v0 + 1176), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v0 + 1176);
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    (*(v17 + 32))(v16, v15, v18);
    v19 = sub_AB4BE0();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v19 = *v15;
  }

  v20 = [v19 sharedListeningProperties];

  if (v20)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 952));

    v21 = *(v0 + 952);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = [*(v0 + 952) isSharedListeningSession];

    if (!v22)
    {
      goto LABEL_25;
    }

    sub_6DAFE8(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = *(v0 + 1160);
    if (v23 == 1)
    {
      v25 = *(v0 + 1096);
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      (*(v26 + 32))(v25, v24, v27);
      v28 = sub_AB4BE0();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v28 = *v24;
    }

    v43 = [v28 tracklistSource];

    if (v43 == &stru_20.flags)
    {
LABEL_25:
      v44 = *(v0 + 1264);
      *(v0 + 1360) = *(v0 + 1256);
      *(v0 + 1352) = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510((v0 + 944));

      v45 = *(v0 + 944);
      v46 = [v45 route];
      *(v0 + 1368) = v46;

      if (!v46)
      {
        v52 = *(v0 + 1240);
        goto LABEL_34;
      }

      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      *(v0 + 1376) = v47;
      if (!v47)
      {
        goto LABEL_31;
      }

      v48 = v47;
      v49 = v46;
      if ([v48 isDeviceRoute])
      {
LABEL_30:

LABEL_31:
        v52 = *(v0 + 1240);
LABEL_32:

LABEL_34:
        *(v0 + 1408) = v52;
        sub_6DAFE8(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v53 = swift_getEnumCaseMultiPayload();
        v54 = *(v0 + 1144);
        if (v53 == 1)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1088);
          v57 = *(v0 + 1080);
          (*(v56 + 32))(v55, v54, v57);
          v58 = sub_AB4BE0();
          (*(v56 + 8))(v55, v57);
        }

        else
        {
          v58 = *v54;
        }

        *(v0 + 1416) = v58;
        *(v0 + 220) = *(*(v0 + 1248) + 32);
        *(v0 + 1424) = sub_AB9930();
        v60 = sub_AB98B0();
        *(v0 + 1432) = v60;
        *(v0 + 1440) = v59;

        return _swift_task_switch(sub_6C8560, v60, v59);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510((v0 + 760));

      v50 = *(v0 + 760);
      v51 = *(v0 + 218);
      if (v50)
      {

        if ((v51 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((*(v0 + 218) & 1) == 0)
      {
        sub_6DAFE8(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v71 = swift_getEnumCaseMultiPayload();
        v72 = *(v0 + 1152);
        if (v71 == 1)
        {
          v73 = *(v0 + 1096);
          v74 = *(v0 + 1088);
          v75 = *(v0 + 1080);
          (*(v74 + 32))(v73, v72, v75);
          v76 = sub_AB4BE0();
          (*(v74 + 8))(v73, v75);
        }

        else
        {
          v76 = *v72;
        }

        v77 = [v76 prefersEnqueuingUsingAirPlay];

        if ((v77 & 1) == 0)
        {
          v79 = [v48 supportsRemoteControl];

          if (v79 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
          {
            v52 = *(v0 + 1240);
            if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
            {
              [*(v0 + 1376) establishGroup];
            }

            goto LABEL_32;
          }

          goto LABEL_51;
        }
      }

LABEL_51:
      v78 = swift_task_alloc();
      *(v0 + 1384) = v78;
      *v78 = v0;
      v78[1] = sub_6C82B8;

      return Player.prepareForBufferedAirPlay()();
    }

    v61 = sub_AB4BA0();
    v62 = sub_AB9F50();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 992);
      v64 = *(v0 + 984);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_500C84(v64, v63, &v80);
      _os_log_impl(&dword_0, v61, v62, "Intent id=%{public}s) — Offering Shared Listening options", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
    }

    v67 = swift_task_alloc();
    *(v0 + 1320) = v67;
    *v67 = v0;
    v67[1] = sub_6C7C04;
    v68 = *(v0 + 992);
    v69 = *(v0 + 984);
    v70 = *(v0 + 976);

    return sub_6CEE74(v70, v69, v68);
  }

  else
  {
    sub_6DAFE8(*(v0 + 976), *(v0 + 1168), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 1168);
    if (v29 == 1)
    {
      v31 = *(v0 + 1096);
      v32 = *(v0 + 1088);
      v33 = *(v0 + 1080);
      (*(v32 + 32))(v31, v30, v33);
      v34 = sub_AB4BE0();
      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v34 = *v30;
    }

    *(v0 + 1296) = v34;
    v35 = *(v0 + 1248);
    v36 = *(v0 + 976);
    v37 = (*(v0 + 1008) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v38 = v37[3];
    v39 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v38);
    *(v0 + 1304) = (*(v39 + 40))(v38, v39);
    v40 = *(v36 + *(v35 + 44));
    v41 = v34;
    v42 = swift_task_alloc();
    *(v0 + 1312) = v42;
    *v42 = v0;
    v42[1] = sub_6C72E4;

    return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(v34, v40, v40);
  }
}

uint64_t sub_6C72E4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  *(*v1 + 219) = a1;

  v4 = *(v2 + 1208);
  v5 = *(v2 + 1200);

  return _swift_task_switch(sub_6C7448, v5, v4);
}

uint64_t sub_6C7448()
{
  v51 = v0;
  v1 = *(v0 + 219);

  if (v1 == 1)
  {
    v2 = *(v0 + 1240);

    v3 = *(v0 + 8);

    return v3();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 952));

  v5 = *(v0 + 952);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [*(v0 + 952) isSharedListeningSession];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_6DAFE8(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1160);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 1096);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1080);
    (*(v10 + 32))(v9, v8, v11);
    v12 = sub_AB4BE0();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = *v8;
  }

  v13 = [v12 tracklistSource];

  if (v13 == &stru_20.flags)
  {
LABEL_11:
    v14 = *(v0 + 1264);
    *(v0 + 1360) = *(v0 + 1256);
    *(v0 + 1352) = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 944));

    v15 = *(v0 + 944);
    v16 = [v15 route];
    *(v0 + 1368) = v16;

    if (!v16)
    {
      v22 = *(v0 + 1240);
      goto LABEL_20;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    *(v0 + 1376) = v17;
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = v17;
    v19 = v16;
    if ([v18 isDeviceRoute])
    {
LABEL_16:

LABEL_17:
      v22 = *(v0 + 1240);
LABEL_18:

LABEL_20:
      *(v0 + 1408) = v22;
      sub_6DAFE8(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v23 = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1144);
      if (v23 == 1)
      {
        v25 = *(v0 + 1096);
        v26 = *(v0 + 1088);
        v27 = *(v0 + 1080);
        (*(v26 + 32))(v25, v24, v27);
        v28 = sub_AB4BE0();
        (*(v26 + 8))(v25, v27);
      }

      else
      {
        v28 = *v24;
      }

      *(v0 + 1416) = v28;
      *(v0 + 220) = *(*(v0 + 1248) + 32);
      *(v0 + 1424) = sub_AB9930();
      v30 = sub_AB98B0();
      *(v0 + 1432) = v30;
      *(v0 + 1440) = v29;

      return _swift_task_switch(sub_6C8560, v30, v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + 760));

    v20 = *(v0 + 760);
    v21 = *(v0 + 218);
    if (v20)
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(v0 + 218) & 1) == 0)
    {
      sub_6DAFE8(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v41 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 1152);
      if (v41 == 1)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1088);
        v45 = *(v0 + 1080);
        (*(v44 + 32))(v43, v42, v45);
        v46 = sub_AB4BE0();
        (*(v44 + 8))(v43, v45);
      }

      else
      {
        v46 = *v42;
      }

      v47 = [v46 prefersEnqueuingUsingAirPlay];

      if ((v47 & 1) == 0)
      {
        v49 = [v18 supportsRemoteControl];

        if (v49 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
        {
          v22 = *(v0 + 1240);
          if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
          {
            [*(v0 + 1376) establishGroup];
          }

          goto LABEL_18;
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v48 = swift_task_alloc();
    *(v0 + 1384) = v48;
    *v48 = v0;
    v48[1] = sub_6C82B8;

    return Player.prepareForBufferedAirPlay()();
  }

  v31 = sub_AB4BA0();
  v32 = sub_AB9F50();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 992);
    v34 = *(v0 + 984);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_500C84(v34, v33, &v50);
    _os_log_impl(&dword_0, v31, v32, "Intent id=%{public}s) — Offering Shared Listening options", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  v37 = swift_task_alloc();
  *(v0 + 1320) = v37;
  *v37 = v0;
  v37[1] = sub_6C7C04;
  v38 = *(v0 + 992);
  v39 = *(v0 + 984);
  v40 = *(v0 + 976);

  return sub_6CEE74(v40, v39, v38);
}

uint64_t sub_6C7C04(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 1328) = v3;

  if (v3)
  {
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_6CA2F0;
  }

  else
  {
    *(v8 + 297) = a3;
    *(v8 + 1336) = a2;
    *(v8 + 1344) = a1;
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_6C7D4C;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_6C7D4C()
{
  if (*(v0 + 297))
  {
    v1 = *(v0 + 1240);

    sub_6DAF50();
    swift_allocError();
    *v2 = 2;
    *(v2 + 8) = 3;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 1336);
  *(v0 + 1360) = *(v0 + 1344);
  *(v0 + 1352) = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 944));

  v6 = *(v0 + 944);
  v7 = [v6 route];
  *(v0 + 1368) = v7;

  if (!v7)
  {
    v13 = *(v0 + 1240);
    goto LABEL_14;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  *(v0 + 1376) = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v7;
  if ([v9 isDeviceRoute])
  {
LABEL_10:

LABEL_11:
    v13 = *(v0 + 1240);
LABEL_12:

LABEL_14:
    *(v0 + 1408) = v13;
    sub_6DAFE8(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 1144);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 1088);
      v18 = *(v0 + 1080);
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_AB4BE0();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v19 = *v15;
    }

    *(v0 + 1416) = v19;
    *(v0 + 220) = *(*(v0 + 1248) + 32);
    *(v0 + 1424) = sub_AB9930();
    v21 = sub_AB98B0();
    *(v0 + 1432) = v21;
    *(v0 + 1440) = v20;

    return _swift_task_switch(sub_6C8560, v21, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v0 + 760));

  v11 = *(v0 + 760);
  v12 = *(v0 + 218);
  if (v11)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (*(v0 + 218))
  {
    goto LABEL_25;
  }

  sub_6DAFE8(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v22 = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 1152);
  if (v22 == 1)
  {
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    (*(v25 + 32))(v24, v23, v26);
    v27 = sub_AB4BE0();
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v27 = *v23;
  }

  v28 = [v27 prefersEnqueuingUsingAirPlay];

  if (v28)
  {
LABEL_25:

    goto LABEL_26;
  }

  v30 = [v9 supportsRemoteControl];

  if (v30 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
  {
    v13 = *(v0 + 1240);
    if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
    {
      [*(v0 + 1376) establishGroup];
    }

    goto LABEL_12;
  }

LABEL_26:
  v29 = swift_task_alloc();
  *(v0 + 1384) = v29;
  *v29 = v0;
  v29[1] = sub_6C82B8;

  return Player.prepareForBufferedAirPlay()();
}

uint64_t sub_6C82B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_6CA43C;
  }

  else
  {
    v4[175] = a1;
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_6C83E8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_6C83E8()
{
  v1 = *(v0 + 1400);
  if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
  {
    [*(v0 + 1376) establishGroup];
  }

  *(v0 + 1408) = v1;
  sub_6DAFE8(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 1144);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
    v6 = *(v0 + 1080);
    (*(v5 + 32))(v4, v3, v6);
    v7 = sub_AB4BE0();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = *v3;
  }

  *(v0 + 1416) = v7;
  *(v0 + 220) = *(*(v0 + 1248) + 32);
  *(v0 + 1424) = sub_AB9930();
  v9 = sub_AB98B0();
  *(v0 + 1432) = v9;
  *(v0 + 1440) = v8;

  return _swift_task_switch(sub_6C8560, v9, v8);
}

uint64_t sub_6C8560()
{
  v21 = v0;
  v1 = sub_6CFB18(*(v0 + 1416), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1448) = v1;
  if (v1[2])
  {

    v2 = sub_AB4BA0();
    v3 = sub_AB9F50();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_500C84(v5, v4, v20);
      *(v6 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
      v7 = sub_AB9770();
      v9 = sub_500C84(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&dword_0, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 220);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1464) = v13;
    *v13 = v0;
    v13[1] = sub_6C9E38;
    v14 = *(v0 + 1408);

    return sub_6CD6E0(v1, 0x10000, 1, v14, v11, v12 + v10);
  }

  else
  {

    sub_6DAF50();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1456) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_6C87FC, v19, v18);
  }
}

uint64_t sub_6C87FC()
{
  v147 = v0;
  v1 = *(v0 + 1456);

  *(v0 + 936) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (!swift_dynamicCast())
  {
    v15 = *(v0 + 1408);

    swift_willThrow();

LABEL_9:

    v16 = *(v0 + 8);
LABEL_10:

    return v16();
  }

  v2 = *(v0 + 720);
  *(v0 + 1480) = v2;
  v3 = *(v0 + 728);
  *(v0 + 1488) = v3;
  v4 = sub_AB3040();
  *(v0 + 1496) = v4;
  _s3__C4CodeOMa_0(0);
  *(v0 + 928) = 1;
  sub_6DCA54(&qword_E0DE10, _s3__C4CodeOMa_0, &unk_B15F6C);
  v5 = v4;
  v6 = sub_AB2F80();

  if (v6)
  {

    v7 = sub_AB4BA0();
    v8 = sub_AB9F50();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 992);
      v10 = *(v0 + 984);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v146[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_500C84(v10, v9, v146);
      _os_log_impl(&dword_0, v7, v8, "Intent id=%{public}s) — Offering replace intent options to user", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    *(v0 + 1504) = sub_AB9930();
    v14 = sub_AB98B0();
    *(v0 + 1512) = v14;
    *(v0 + 1520) = v13;

    return _swift_task_switch(sub_6CA590, v14, v13);
  }

  *(v0 + 888) = 5;
  v17 = v5;
  v18 = sub_AB2F80();

  if (v18)
  {
    v143 = *(v0 + 1408);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1008);
    v21 = *(v0 + 976);

    v22 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v23 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
    sub_15F84(v21 + *(v19 + 28), v0 + 144, &qword_E130E0, &qword_B21BC0);
    *(v0 + 216) = 2;
    (*(v23 + 8))(v0 + 144, v22, v23);
    sub_6DC698(v0 + 144);
    sub_6DAF50();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 3;
    swift_willThrow();

    goto LABEL_9;
  }

  *(v0 + 856) = 3;
  v25 = v17;
  v26 = sub_AB2F80();

  if (v26)
  {
    sub_6DAFE8(*(v0 + 976), *(v0 + 1128), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v0 + 1128);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1088);
      v31 = *(v0 + 1080);
      (*(v30 + 32))(v29, v28, v31);
      v32 = sub_AB4BE0();
      (*(v30 + 8))(v29, v31);
    }

    else
    {
      v32 = *v28;
    }

    *(v0 + 1608) = v32;
    v41 = *(v0 + 220);
    v42 = *(v0 + 976);
    v43 = swift_task_alloc();
    *(v0 + 1616) = v43;
    *v43 = v0;
    v43[1] = sub_6CB2CC;
    v44 = *(v0 + 992);
    v45 = *(v0 + 984);

    return sub_6C498C(v32, v45, v44, v42 + v41);
  }

  _s3__C4CodeOMa_1(0);
  *(v0 + 848) = 1001;
  sub_6DCA54(&unk_E130B0, _s3__C4CodeOMa_1, &unk_B150E8);
  v33 = v25;
  v34 = sub_AB2F80();

  if ((v34 & 1) == 0)
  {
    v46 = *(v0 + 1408);

LABEL_56:
    sub_6DAEFC();
    swift_allocError();
    *v87 = v2;
    v87[1] = v3;
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_9;
  }

  sub_6DAFE8(*(v0 + 976), *(v0 + 1120), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 1120);
  if (v35 == 1)
  {
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1080);
    (*(v38 + 32))(v37, v36, v39);
    v40 = sub_AB4BE0();
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v40 = *v36;
  }

  v47 = [v40 sharedListeningProperties];

  if (!v47)
  {
    goto LABEL_41;
  }

  v48 = [v33 userInfo];
  v49 = sub_AB8FF0();

  v50 = sub_AB92A0();
  if (!*(v49 + 16))
  {

    goto LABEL_43;
  }

  v52 = sub_52215C(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  sub_808B0(*(v49 + 56) + 32 * v52, v0 + 576);

  type metadata accessor for MPCPlayerRequestError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:

LABEL_44:
    if (!*(*(v0 + 1008) + *(v0 + 1216)))
    {
      goto LABEL_55;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510((v0 + 840));

    v72 = *(v0 + 840);
    if (!v72)
    {
      goto LABEL_55;
    }

    v73 = [v33 userInfo];
    v74 = sub_AB8FF0();

    v75 = sub_AB92A0();
    if (*(v74 + 16))
    {
      v77 = sub_52215C(v75, v76);
      v79 = v78;

      if (v79)
      {
        v80 = (v0 + 832);
        sub_808B0(*(v74 + 56) + 32 * v77, v0 + 608);

        type metadata accessor for MPCMusicBehaviorError(0);
        if (swift_dynamicCast())
        {
          v81 = *v80;
          *(v0 + 800) = *v80;
          sub_6DCA54(&qword_E0DD90, type metadata accessor for MPCMusicBehaviorError, &unk_B15E5C);
          sub_AB2FF0();
          if (*(v0 + 792) == 6)
          {
            v145 = v0;
            *(v0 + 968) = v81;
            v82 = sub_AB3010();
            v83 = sub_AB92A0();
            if (*(v82 + 16) && (v85 = sub_52215C(v83, v84), (v86 & 1) != 0))
            {
              sub_808B0(*(v82 + 56) + 32 * v85, v0 + 512);
            }

            else
            {
              *(v0 + 512) = 0u;
              *(v0 + 528) = 0u;
            }

            if (!*(v0 + 536))
            {

              sub_12E1C(v0 + 512, &qword_E11F60, &unk_B1BC70);
              goto LABEL_55;
            }

            v88 = v0 + 768;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E130C0, &qword_B21BA8);
            if (swift_dynamicCast())
            {
              v144 = v81;
              if (*(*v88 + 16))
              {
                v89 = *(*v88 + 32);

                *(v145 + 776) = v89;
                sub_AB2FF0();
                if (*(v145 + 784) == 4)
                {
                  v142 = v89;
                  *(v145 + 752) = v89;
                  v90 = sub_AB3010();
                  v91 = sub_AB92A0();
                  if (*(v90 + 16) && (v93 = sub_52215C(v91, v92), (v94 & 1) != 0))
                  {
                    v0 = v145;
                    sub_808B0(*(v90 + 56) + 32 * v93, v145 + 640);
                  }

                  else
                  {
                    v0 = v145;
                    *(v145 + 640) = 0u;
                    *(v145 + 656) = 0u;
                  }

                  if (*(v0 + 664))
                  {
                    v95 = v0 + 808;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E130C8, &unk_B21BB0);
                    if (swift_dynamicCast())
                    {
                      if (*(*v95 + 16))
                      {
                        v96 = *(*v95 + 32);

                        *(v145 + 816) = v96;
                        type metadata accessor for MPCError(0);
                        sub_6DCA54(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);
                        sub_AB2FF0();

                        if (*(v145 + 824) == 61)
                        {

                          v97 = sub_AB4BA0();
                          v98 = sub_AB9F50();

                          if (os_log_type_enabled(v97, v98))
                          {
                            v99 = *(v145 + 992);
                            v100 = *(v145 + 984);
                            v101 = swift_slowAlloc();
                            v102 = swift_slowAlloc();
                            v146[0] = v102;
                            *v101 = 136446210;
                            *(v101 + 4) = sub_500C84(v100, v99, v146);
                            _os_log_impl(&dword_0, v97, v98, "Intent id=%{public}s) — SharePlayTogether content not available in host's storefront", v101, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v102);
                          }

                          v141 = (v145 + 376);
                          v103 = *(v145 + 1072);
                          v104 = *(v145 + 1064);
                          v105 = *(v145 + 1056);
                          v106 = *(v145 + 1048);
                          sub_AB91E0();
                          v137 = *(v105 + 16);
                          v137(v104, v103, v106);
                          if (qword_E0CB80 != -1)
                          {
                            swift_once();
                          }

                          v107 = *(v145 + 1072);
                          v108 = *(v145 + 1064);
                          v109 = *(v145 + 1056);
                          v110 = *(v145 + 1048);
                          v136 = *(v145 + 1032);
                          v138 = *(v145 + 1024);
                          v139 = *(v145 + 1016);
                          v140 = *(v145 + 1008);
                          v111 = qword_E71B20;
                          sub_AB3550();
                          v112 = v111;
                          v113 = sub_AB9320();
                          v134 = v114;
                          v135 = v113;
                          v115 = *(v109 + 8);
                          v115(v107, v110);
                          sub_AB91E0();
                          v137(v108, v107, v110);
                          sub_AB3550();
                          v116 = sub_AB9320();
                          v132 = v117;
                          v133 = v116;
                          v115(v107, v110);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
                          v118 = swift_allocObject();
                          *(v118 + 16) = xmmword_AF4EC0;
                          sub_AB91E0();
                          v137(v108, v107, v110);
                          sub_AB3550();
                          v119 = sub_AB9320();
                          v121 = v120;
                          v115(v107, v110);
                          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                          v122 = sub_AB3440();
                          v124 = v123;
                          (*(v138 + 8))(v136, v139);
                          *(v118 + 32) = v122;
                          *(v118 + 40) = v124;
                          *(v118 + 48) = v119;
                          *(v118 + 56) = v121;
                          *(v118 + 64) = 2;
                          *(v118 + 72) = 0;
                          *(v118 + 80) = 0;
                          LOBYTE(v146[0]) = 1;
                          *(v145 + 376) = v135;
                          *(v145 + 384) = v134;
                          *(v145 + 392) = v133;
                          *(v145 + 400) = v132;
                          *(v145 + 408) = 0;
                          *(v145 + 416) = 0;
                          *(v145 + 424) = 1;
                          *(v145 + 432) = v118;
                          *(v145 + 440) = 0;
                          v125 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                          v126 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                          __swift_project_boxed_opaque_existential_1((v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v125);
                          v127 = *(v145 + 424);
                          *(v145 + 256) = *(v145 + 408);
                          *(v145 + 272) = v127;
                          *(v145 + 288) = *(v145 + 440);
                          v128 = *(v145 + 392);
                          *(v145 + 224) = *v141;
                          *(v145 + 240) = v128;
                          *(v145 + 296) = 0;
                          v129 = *(v126 + 8);
                          sub_5B3FC4(v141, v145 + 304);
                          v129(v145 + 224, v125, v126);

                          sub_111904(v141);

                          sub_6DC698(v145 + 224);
                          v130 = *(v145 + 1408);

                          v16 = *(v145 + 8);
                          goto LABEL_10;
                        }
                      }

                      else
                      {
                      }
                    }

                    v0 = v145;
                  }

                  else
                  {

                    sub_12E1C(v0 + 640, &qword_E11F60, &unk_B1BC70);
                  }
                }

                else
                {

                  v0 = v145;
                }
              }

              else
              {
              }

              goto LABEL_55;
            }
          }
        }

LABEL_55:
        v46 = *(v0 + 1408);
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  v55 = *(v0 + 864);
  *(v0 + 1632) = v55;
  *(v0 + 872) = v55;
  sub_6DCA54(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);
  sub_AB2FF0();
  if (*(v0 + 880) != 1000)
  {

    goto LABEL_44;
  }

  *(v0 + 896) = v55;
  v56 = sub_AB3010();
  v57 = sub_AB92A0();
  if (!*(v56 + 16))
  {

    goto LABEL_68;
  }

  v59 = sub_52215C(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  sub_808B0(*(v56 + 56) + 32 * v59, v0 + 544);

  type metadata accessor for MPCError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:

LABEL_70:

    goto LABEL_44;
  }

  v62 = *(v0 + 904);
  *(v0 + 1640) = v62;
  *(v0 + 912) = v62;
  sub_6DCA54(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);
  sub_AB2FF0();
  if (*(v0 + 920) != 58)
  {

    goto LABEL_70;
  }

  v63 = sub_AB4BA0();
  v64 = sub_AB9F50();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 992);
    v66 = *(v0 + 984);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v146[0] = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_500C84(v66, v65, v146);
    _os_log_impl(&dword_0, v63, v64, "Intent id=%{public}s) — SharedListening requires system route", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
  }

  v69 = objc_opt_self();
  *(v0 + 1648) = v69;
  v70 = [v69 systemRoute];
  *(v0 + 1656) = v70;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_6CB3F0;
  v71 = swift_continuation_init();
  *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135A0, &unk_B1B518);
  *(v0 + 448) = _NSConcreteStackBlock;
  *(v0 + 456) = 1107296256;
  *(v0 + 464) = sub_5C75AC;
  *(v0 + 472) = &block_descriptor_204;
  *(v0 + 480) = v71;
  [v69 setActiveRoute:v70 completion:v0 + 448];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_6C9E38(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1472) = v1;

  if (v1)
  {
    v4 = *(v3 + 1440);
    v5 = *(v3 + 1432);
    v6 = sub_6CA128;
  }

  else
  {

    v4 = *(v3 + 1440);
    v5 = *(v3 + 1432);
    v6 = sub_6C9F74;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_6C9F74()
{
  v1 = v0[177];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_6C9FE4, v3, v2);
}

uint64_t sub_6C9FE4()
{
  v1 = *(v0 + 1408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6CA128()
{

  v0[182] = v0[184];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_6C87FC, v2, v1);
}

uint64_t sub_6CA1A4()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6CA2F0()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6CA43C()
{
  v1 = v0[171];
  v2 = v0[155];

  v3 = v0[1];

  return v3();
}

uint64_t sub_6CA590(uint64_t a1)
{
  v2 = sub_AB9930();
  *(v1 + 1528) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = sub_AB98B0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_6CA624, v3, v5);
}

uint64_t sub_6CA624()
{
  v1 = v0[126];
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = sub_6CA6D8;
  v2 = swift_continuation_init();
  sub_6D00A8(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6CA6D8()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 1536) = *(*v0 + 736);
  *(v2 + 298) = *(v2 + 744);
  v3 = *(v1 + 1520);
  v4 = *(v1 + 1512);

  return _swift_task_switch(sub_6CA7FC, v4, v3);
}

uint64_t sub_6CA7FC()
{

  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_6CA864, v2, v1);
}

uint64_t sub_6CA864()
{
  if (*(v0 + 298))
  {
    v1 = *(v0 + 1496);
    v2 = *(v0 + 1408);

    sub_6DAF50();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 3;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_6DAFE8(*(v0 + 976), *(v0 + 1136), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 1136);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1088);
      v10 = *(v0 + 1080);
      (*(v9 + 32))(v8, v7, v10);
      v11 = sub_AB4BE0();
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v11 = *v7;
    }

    *(v0 + 1544) = v11;
    *(v0 + 1552) = sub_AB9930();
    v13 = sub_AB98B0();
    *(v0 + 1560) = v13;
    *(v0 + 1568) = v12;

    return _swift_task_switch(sub_6CAB20, v13, v12);
  }
}

uint64_t sub_6CAB20()
{
  v21 = v0;
  v1 = sub_6CFB18(*(v0 + 1544), *(v0 + 1360), *(v0 + 1536));
  *(v0 + 1576) = v1;
  if (v1[2])
  {

    v2 = sub_AB4BA0();
    v3 = sub_AB9F50();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_500C84(v5, v4, v20);
      *(v6 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
      v7 = sub_AB9770();
      v9 = sub_500C84(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&dword_0, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1544);
    v11 = *(v0 + 220);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1592) = v13;
    *v13 = v0;
    v13[1] = sub_6CAF38;
    v14 = *(v0 + 1408);

    return sub_6CD6E0(v1, 0x10000, 0, v14, v10, v12 + v11);
  }

  else
  {

    sub_6DAF50();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1584) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_6CADBC, v19, v18);
  }
}

uint64_t sub_6CADBC()
{
  v1 = v0[193];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_6CAF38(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1600) = v1;

  if (v1)
  {
    v4 = *(v3 + 1568);
    v5 = *(v3 + 1560);
    v6 = sub_6CB250;
  }

  else
  {

    v4 = *(v3 + 1568);
    v5 = *(v3 + 1560);
    v6 = sub_6CB074;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_6CB074()
{
  v1 = v0[193];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_6CB0E4, v3, v2);
}

uint64_t sub_6CB0E4()
{
  v1 = v0[187];

  v2 = v0[176];

  v3 = v0[1];

  return v3();
}

uint64_t sub_6CB250()
{

  v0[198] = v0[200];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_6CADBC, v2, v1);
}

uint64_t sub_6CB2CC()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_6CBE64;
  }

  else
  {

    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_6DDDD0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6CB3F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1664) = v2;
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);
  if (v2)
  {
    v5 = sub_6CBFE0;
  }

  else
  {
    v5 = sub_6CB520;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6CB520()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 976);

  sub_6DAFE8(v2, v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 1112);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 1096);
    v6 = *(v0 + 1088);
    v7 = *(v0 + 1080);
    (*(v6 + 32))(v5, v4, v7);
    v8 = sub_AB4BE0();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = *v4;
  }

  *(v0 + 1672) = v8;
  *(v0 + 1680) = [*(v0 + 1648) systemRoute];
  *(v0 + 1688) = sub_AB9930();
  v10 = sub_AB98B0();
  *(v0 + 1696) = v10;
  *(v0 + 1704) = v9;

  return _swift_task_switch(sub_6CB678, v10, v9);
}

uint64_t sub_6CB678()
{
  v22 = v0;
  v1 = sub_6CFB18(*(v0 + 1672), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1712) = v1;
  if (v1[2])
  {

    v2 = sub_AB4BA0();
    v3 = sub_AB9F50();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_500C84(v5, v4, v21);
      *(v6 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
      v7 = sub_AB9770();
      v9 = sub_500C84(v7, v8, v21);

      *(v6 + 14) = v9;
      _os_log_impl(&dword_0, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1680);
    v11 = *(v0 + 1672);
    v12 = *(v0 + 220);
    v13 = *(v0 + 976);
    v14 = swift_task_alloc();
    *(v0 + 1728) = v14;
    *v14 = v0;
    v14[1] = sub_6CBAAC;

    return sub_6CD6E0(v1, 0x10000, 1, v10, v11, v13 + v12);
  }

  else
  {
    v16 = *(v0 + 1680);

    sub_6DAF50();
    v17 = swift_allocError();
    *v18 = v1;
    *(v18 + 8) = 1;
    swift_willThrow();

    *(v0 + 1720) = v17;
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1200);

    return _swift_task_switch(sub_6CB920, v20, v19);
  }
}

uint64_t sub_6CB920()
{
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  v6 = v0[1];

  return v6();
}

uint64_t sub_6CBAAC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1736) = v1;

  if (v1)
  {
    v4 = *(v3 + 1704);
    v5 = *(v3 + 1696);
    v6 = sub_6CBDDC;
  }

  else
  {

    v4 = *(v3 + 1704);
    v5 = *(v3 + 1696);
    v6 = sub_6CBBE8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_6CBBE8()
{
  v1 = v0[210];
  v2 = v0[209];

  v3 = v0[151];
  v4 = v0[150];

  return _swift_task_switch(sub_6CBC60, v4, v3);
}

uint64_t sub_6CBC60()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[187];

  v4 = v0[176];

  v5 = v0[1];

  return v5();
}

uint64_t sub_6CBDDC()
{

  *(v0 + 1720) = *(v0 + 1736);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_6CB920, v2, v1);
}

uint64_t sub_6CBE64()
{
  v1 = v0[201];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_6CBFE0()
{
  v1 = v0[207];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_6CC174(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  sub_AB9940();
  v2[28] = sub_AB9930();
  v4 = sub_AB98B0();
  v2[29] = v4;
  v2[30] = v3;

  return _swift_task_switch(sub_6CC20C, v4, v3);
}

uint64_t sub_6CC20C()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 248) = v3;
  if (v3)
  {

    if (sub_6DB538(0x100000000, v3))
    {
      if (qword_E0CEA0 != -1)
      {
        swift_once();
      }

      v4 = sub_AB4BC0();
      *(v0 + 272) = __swift_project_value_buffer(v4, static Logger.playbackController);
      v5 = sub_AB4BA0();
      v6 = sub_AB9F50();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_0, v5, v6, "[Auto-Sing] Awaiting for Vocals Command…", v7, 2u);
      }

      *(v0 + 160) = &type metadata for Player.VocalsCommand;
      *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
      *(v0 + 140) = 1;
      *(v0 + 136) = 0;
      v8 = swift_task_alloc();
      *(v0 + 280) = v8;
      *v8 = v0;
      v8[1] = sub_6CC818;
      v9 = *(v0 + 208);
      v10 = 5.0;
      v11 = v0 + 136;
    }

    else
    {
      if (qword_E0CEA0 != -1)
      {
        swift_once();
      }

      v14 = sub_AB4BC0();
      __swift_project_value_buffer(v14, static Logger.playbackController);
      v15 = sub_AB4BA0();
      v16 = sub_AB9F50();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "[Auto-Sing] Preparing VA…", v17, 2u);
      }

      *(v0 + 120) = &type metadata for Player.VocalsCommand.Prepare;
      *(v0 + 128) = &protocol witness table for Player.VocalsCommand.Prepare;
      v18 = swift_task_alloc();
      *(v0 + 256) = v18;
      *v18 = v0;
      v18[1] = sub_6CC55C;
      v9 = *(v0 + 208);
      v11 = v0 + 96;
      v10 = 5.0;
    }

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v11, 0, 0, 0, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_6CC55C(void *a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_6CCA88;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 12);
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_6CC688;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_6CC688()
{
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  *(v0 + 272) = __swift_project_value_buffer(v1, static Logger.playbackController);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "[Auto-Sing] Awaiting for Vocals Command…", v4, 2u);
  }

  *(v0 + 160) = &type metadata for Player.VocalsCommand;
  *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 140) = 1;
  *(v0 + 136) = 0;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_6CC818;
  v6 = *(v0 + 208);

  return Player.performWhenAvailable(_:options:issuer:timeout:)(v0 + 136, 0, 0, 0, v6, 5.0);
}

uint64_t sub_6CC818(void *a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_6CCCC8;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 17);
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_6CC944;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_6CC944()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "[Auto-Sing] Vocals command performed", v3, 2u);
  }

  v4 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v6 + 8))(v0 + 16, v5, v6);

  sub_6DC698(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_6CCA88()
{
  v16 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 264);
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = sub_AB4BA0();
  v4 = sub_AB9F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_6DC698(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_6CCCC8()
{
  v16 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = *(v0 + 288);
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = sub_AB4BA0();
  v4 = sub_AB9F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_6DC698(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

BOOL PlaybackController.canPerform(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

    v8 = sub_6FA3F4(v7, v4, v5, v6);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t PlaybackController.canPerform(anyOf:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v2 + v4))
  {

    v5 = Player.canPerform(anyOf:)(a1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t PlaybackController.performWhenAvailable(_:issuer:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  sub_AB9940();
  *(v4 + 72) = sub_AB9930();
  v6 = sub_AB98B0();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return _swift_task_switch(sub_6CD0F0, v6, v5);
}

uint64_t sub_6CD0F0()
{
  v1 = *(v0 + 8);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 12) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 13) = v4;
    *v4 = v0;
    v4[1] = sub_6CD20C;
    v5 = v0[7];
    v7 = *(v0 + 5);
    v6 = *(v0 + 6);

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v7, 0x10000, 1, 0, v6, v5);
  }

  else
  {

    v9 = *(v0 + 1);

    return v9(0);
  }
}

uint64_t sub_6CD20C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_6CD3A4;
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_6CD33C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_6CD33C()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_6CD3A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6CD4F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_AB98B0();
    v7 = v6;
    v8 = sub_51E9A0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_AB98B0();
    v7 = v9;
    v8 = sub_6CD678;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_6CD678()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_6CD6E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 89) = a3;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  sub_AB9940();
  *(v7 + 192) = sub_AB9930();
  v9 = sub_AB98B0();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return _swift_task_switch(sub_6CD784, v9, v8);
}

uint64_t sub_6CD784()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 216) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 224) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_6CD8A4;
    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 89);
    v9 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v9, v6, v8, v7, v5);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_6CD8A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_6CDD8C;
  }

  else
  {

    v4[31] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_6CD9D4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_6CD9D4()
{
  v38 = v1;
  v2 = *(v1 + 248);

  v3 = (v2 & 0xFFFFFFFFFFFFFF8);
  if (v2 >> 62)
  {
    v4 = sub_ABB060();
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
LABEL_12:
      v32.n128_f64[0] = sub_6DDD18(v4, 0);
      goto LABEL_13;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_20;
    }

    v5 = *(v2 + 32);
  }

  v3 = v5;
  v6 = [v5 dialog];
  if (!v6)
  {

    v4 = 0;
    goto LABEL_12;
  }

  v0 = v6;
  if (qword_E0CEA0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, static Logger.playbackController);

  v8 = v3;
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();

  v35 = v8;
  v36 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v11 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
    v12 = sub_AB9770();
    v14 = sub_500C84(v12, v13, &v37);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = v8;
    v16 = [v15 description];
    v17 = sub_AB92A0();
    v19 = v18;

    v20 = sub_500C84(v17, v19, &v37);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_0, v9, v10, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v1 + 216);
  v22 = *(v1 + 184);
  v23 = *(v1 + 168);
  v24 = (v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v25 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v26 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v25);
  v27 = (*(v26 + 40))(v25, v26);
  v28 = *(v22 + v21);
  v29 = v24[3];
  v30 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v29);
  v31 = v23;

  MPCPlayerCommandDialog.alert(context:completion:)(v23, v27, v28, 0, 0, (v1 + 16));
  *(v1 + 88) = 0;
  (*(v30 + 8))(v1 + 16, v29, v30);
  sub_6DC698(v1 + 16);

LABEL_13:
  v33 = *(v1 + 8);

  return v33(v2, v32);
}

uint64_t sub_6CDD8C()
{
  v47 = v0;
  v2 = *(v0 + 240);

  *(v0 + 136) = v2;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = (v3 >> 62);
  if (v3 >> 62)
  {
    if (!sub_ABB060())
    {
      goto LABEL_27;
    }
  }

  else if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_27;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_33:
      v9 = sub_ABB060();
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v1 = &selRef_createSharedSessionWithIdentity_intentHandler_;
  v8 = [v6 dialog];

  if (!v8)
  {
LABEL_27:
    sub_6DAEFC();
    swift_allocError();
    *v39 = v4;
    v39[1] = v3;
    swift_willThrow();

    goto LABEL_28;
  }

  v2 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_33;
  }

  v9 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v9)
  {
LABEL_21:
    v36.n128_f64[0] = sub_6DDD18(v4, v3);
    goto LABEL_22;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = sub_ABAE20();
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v10 = *(v3 + 32);
  }

  v5 = v10;
  v9 = [v10 v1[7]];
  if (!v9)
  {

    goto LABEL_21;
  }

  v43 = (v0 + 16);
  if (qword_E0CEA0 != -1)
  {
LABEL_37:
    v41 = v9;
    swift_once();
    v9 = v41;
  }

  v45 = v9;
  v11 = sub_AB4BC0();
  __swift_project_value_buffer(v11, static Logger.playbackController);

  v12 = v5;
  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();

  v44 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v15 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
    v16 = sub_AB9770();
    v18 = sub_500C84(v16, v17, v46);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = v12;
    v20 = [v19 description];
    v21 = sub_AB92A0();
    v23 = v22;

    v24 = sub_500C84(v21, v23, v46);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_0, v13, v14, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v0 + 216);
  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v29 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v30 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v32 = *(v26 + v25);
  v33 = v28[3];
  v34 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v33);
  v42 = v27;

  MPCPlayerCommandDialog.alert(context:completion:)(v27, v31, v32, 0, 0, v43);
  *(v0 + 88) = 0;
  (*(v34 + 8))(v43, v33, v34);
  sub_6DC698(v43);
  if (v4)
  {

    sub_6DAEFC();
    swift_allocError();
    *v35 = v4;
    v35[1] = v3;
    swift_willThrow();

LABEL_28:
    v40 = *(v0 + 8);

    return v40();
  }

LABEL_22:
  v37 = *(v0 + 8);

  return v37(v3, v36);
}

uint64_t sub_6CE328(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_AB4C10();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[32] = swift_task_alloc();
  v3[33] = sub_AB9940();
  v3[34] = sub_AB9930();
  v6 = sub_AB98B0();
  v3[35] = v6;
  v3[36] = v5;

  return _swift_task_switch(sub_6CE454, v6, v5);
}

uint64_t sub_6CE454()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 296) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v2) && (swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510((v0 + 192)), , , , v3 = *(v0 + 192), (*(v0 + 304) = v3) != 0))
  {
    v5 = *(v0 + 200);
    v4 = [objc_opt_self() sharedController];
    LODWORD(v5) = sub_6D134C(v5);

    if (v5)
    {
      sub_6DAFE8(*(v0 + 208), *(v0 + 256), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 256);
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *(v0 + 232);
        v8 = *(v0 + 240);
        v10 = *(v0 + 224);
        (*(v9 + 32))(v8, v7, v10);
        v11 = sub_AB4BE0();
        (*(v9 + 8))(v8, v10);
      }

      else
      {
        v11 = *v7;
      }

      v17 = [v11 tracklistToken];

      if (v17)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19 && (v20 = [v19 request]) != 0 && (v21 = v20, objc_opt_self(), v22 = swift_dynamicCastObjCClass(), v21, v22) && *(v1 + v2))
        {

          v23 = Player.supportsDelegation.getter();
          swift_unknownObjectRelease();

          if (v23)
          {
            v24 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
            swift_beginAccess();
            if (v3[v24])
            {
              LOBYTE(v5) = 1;
              goto LABEL_7;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v25 = *&v3[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
      if (!v25)
      {
        __break(1u);
        return _swift_task_switch(v25, v18, v15);
      }

      if ([v25 isPlaceholder])
      {
        v26 = sub_AB9930();
        *(v0 + 312) = v26;
        if (v26)
        {
          swift_getObjectType();
          v13 = sub_AB98B0();
          v15 = v27;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_6CE7F8;
        goto LABEL_28;
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v3 = [objc_opt_self() sharedController];
    LOBYTE(v5) = sub_6D134C(v5);
  }

LABEL_7:

  *(v0 + 345) = v5;
  v12 = sub_AB9930();
  *(v0 + 328) = v12;
  if (v12)
  {
    swift_getObjectType();
    v13 = sub_AB98B0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_6CEB68;
LABEL_28:
  v25 = v16;
  v18 = v13;

  return _swift_task_switch(v25, v18, v15);
}

uint64_t sub_6CE7F8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = sub_6CE8F4;
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(sub_6DDA60, v8);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_6CE8F4(__n128 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 320) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_6CEADC;
  }

  else
  {

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_6CEA3C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6CEA3C()
{
  *(v0 + 345) = 0;
  v1 = sub_AB9930();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_AB98B0();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_6CEB68, v2, v4);
}

uint64_t sub_6CEADC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6CEB68()
{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = sub_6CEC20;
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  sub_6D14C8(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

uint64_t sub_6CEC20(__n128 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_6CEDF0;
  }

  else
  {

    *(v2 + 346) = *(v2 + 344);
    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_6CED70;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6CED70()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

uint64_t sub_6CEDF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6CEE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  sub_AB35C0();
  v4[42] = swift_task_alloc();
  v5 = sub_AB9250();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = sub_AB4C10();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = sub_AB9940();
  v4[53] = sub_AB9930();
  v8 = sub_AB98B0();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(sub_6CF034, v8, v7);
}

uint64_t sub_6CF034()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  sub_15F84(v1 + *(v2 + 28), v0 + 80, &qword_E130E0, &qword_B21BC0);
  sub_15F84(v0 + 80, v0 + 200, &qword_E130E0, &qword_B21BC0);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
    sub_6D2110(v3, v4, (v0 + 160));
    __swift_destroy_boxed_opaque_existential_0((v0 + 200));
    if (*(v0 + 184))
    {
      sub_70DF8((v0 + 160), v0 + 120);
      __swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (qword_E0CF88 != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = off_E15F88[0] + 8;
      v7 = *(off_E15F88[0] + &dword_10) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 4;
        if (v8 == DynamicType)
        {
          __swift_destroy_boxed_opaque_existential_0((v0 + 120));
          goto LABEL_11;
        }
      }

      sub_6DAFE8(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = sub_AB4BE0();
        (*(v34 + 8))(v33, v35);
      }

      else
      {
        v36 = *v32;
      }

      *(v0 + 448) = v36;
      v37 = *(v0 + 304);
      v38 = *(v2 + 32);
      v39 = swift_task_alloc();
      *(v0 + 456) = v39;
      *v39 = v0;
      v39[1] = sub_6CF55C;
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return sub_6C498C(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    sub_12E1C(v0 + 200, &qword_E130E0, &qword_B21BC0);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  sub_12E1C(v0 + 160, &qword_E130E0, &qword_B21BC0);
LABEL_11:
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, static Logger.sharedListening);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  sub_15F84(v0 + 80, v0 + 240, &qword_E130E0, &qword_B21BC0);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    __swift_project_boxed_opaque_existential_1((v0 + 240), *(v0 + 264));
    v15 = sub_6D25D4(v13, v14);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    sub_12E1C(v0 + 240, &qword_E130E0, &qword_B21BC0);
    sub_AB91E0();
    (*(v21 + 16))(v18, v19, v20);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = qword_E71B20;
    sub_AB3550();
    v15 = sub_AB9320();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = sub_AB9930();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = sub_AB98B0();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(sub_6CF77C, v28, v30);
}

uint64_t sub_6CF55C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_6CFA4C;
  }

  else
  {
    v6 = sub_6CF6B0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_6CF6B0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  sub_12E1C(v0 + 80, &qword_E130E0, &qword_B21BC0);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_6CF77C()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_6CF854;
  v5 = swift_continuation_init();
  sub_6D31C4(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6CF854()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(sub_6CF970, v4, v3);
}

uint64_t sub_6CF970()
{

  sub_12E1C(v0 + 80, &qword_E130E0, &qword_B21BC0);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_6CFA4C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  sub_12E1C(v0 + 80, &qword_E130E0, &qword_B21BC0);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_6CFB18(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && sub_6DB0B8(v10, a3, v8))
    {
      v9 = sub_506B48(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_506B48((v11 > 1), v12 + 1, 1, v9);
      }

      v40 = &type metadata for Player.ReplaceCommand;
      v41 = &protocol witness table for Player.ReplaceCommand;
      *&v39 = v10;
      *(&v39 + 1) = a3;
      v9[2] = v12 + 1;
      v13 = &v9[5 * v12];
      goto LABEL_34;
    }

    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF85F0;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (sub_6DB2E8(v19, 0, v8) && sub_6DB418(&dword_0 + 1, v8))
      {
        sub_510F4C(inited);
        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        v20 = v19;
      }

      else
      {

        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        sub_E8BA0(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_506B48(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_506B48((v25 > 1), v26 + 1, 1, v9);
        }

        __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
        v27 = __chkstk_darwin();
        v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v30 + 16))(v29, v27);
        v31 = *v29;
        v32 = v29[1];
        v36 = &type metadata for Player.ReplaceCommand;
        v37 = &protocol witness table for Player.ReplaceCommand;
        *&v35 = v31;
        *(&v35 + 1) = v32;
        v9[2] = v26 + 1;
        sub_70DF8(&v35, &v9[5 * v26 + 4]);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v42 = v9;
      }

      __swift_destroy_boxed_opaque_existential_0(&v39);
      if (!sub_6DB1D4(0, v8))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_506B48(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v33 >> 1)
      {
        v9 = sub_506B48((v33 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.PlaybackCommand;
      v41 = &protocol witness table for Player.PlaybackCommand;
      LOBYTE(v39) = 0;
    }

    else
    {
      if ((a2 & 4) != 0)
      {
        v14 = v10;
        v15 = sub_6DB2E8(v14, 0, v8);

        if (v15)
        {
          v9 = sub_506B48(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = sub_506B48((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = v17 + 1;
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = sub_6DB2E8(v10, &dword_0 + 1, v8), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = sub_506B48(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        v9 = sub_506B48((v22 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.InsertCommand;
      v41 = &protocol witness table for Player.InsertCommand;
      *&v39 = v10;
      *(&v39 + 1) = 1;
    }

    v9[2] = v23;
LABEL_33:
    v13 = &v9[5 * v17];
LABEL_34:
    sub_70DF8(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t sub_6D00A8(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v59 = a1;
  v61 = sub_AB3470();
  v2 = *(v61 - 8);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v39 - v9;
  sub_AB91E0();
  v60 = *(v6 + 16);
  v53 = v6 + 16;
  v60(v8, v10, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v11 = qword_E71B20;
  v12 = qword_E71B20;
  v51 = v11;
  v13 = v12;
  sub_AB3550();
  v57 = v13;
  v49 = sub_AB9320();
  v48 = v14;
  v40 = *(v6 + 8);
  v40(v10, v5);
  v47 = swift_allocObject();
  v15 = v59;
  *(v47 + 16) = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v46 = sub_AB3440();
  v58 = v16;
  v52 = *(v2 + 8);
  v52(v4, v61);
  sub_AB91E0();
  v60(v8, v10, v5);
  sub_AB3550();
  v57 = v57;
  v39 = v6 + 8;
  v45 = sub_AB9320();
  v55 = v17;
  v18 = v40;
  v40(v10, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v15;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v43 = sub_AB3440();
  v54 = v19;
  v52(v4, v61);
  sub_AB91E0();
  v20 = v60;
  v60(v8, v10, v5);
  sub_AB3550();
  v21 = v57;
  v42 = sub_AB9320();
  v57 = v22;
  v18(v10, v5);
  v56 = swift_allocObject();
  *(v56 + 16) = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v59 = sub_AB3440();
  v41 = v23;
  v52(v4, v61);
  sub_AB91E0();
  v20(v8, v10, v5);
  sub_AB3550();
  v61 = sub_AB9320();
  v25 = v24;
  v18(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_AF8820;
  v27 = v58;
  *(v26 + 32) = v46;
  *(v26 + 40) = v27;
  v28 = v48;
  *(v26 + 48) = v49;
  *(v26 + 56) = v28;
  *(v26 + 64) = 2;
  v29 = v47;
  *(v26 + 72) = &unk_B21C20;
  *(v26 + 80) = v29;
  v30 = v54;
  *(v26 + 88) = v43;
  *(v26 + 96) = v30;
  v31 = v55;
  *(v26 + 104) = v45;
  *(v26 + 112) = v31;
  *(v26 + 120) = 1;
  v32 = v44;
  *(v26 + 128) = &unk_B21C30;
  *(v26 + 136) = v32;
  v33 = v41;
  *(v26 + 144) = v59;
  *(v26 + 152) = v33;
  v34 = v57;
  *(v26 + 160) = v42;
  *(v26 + 168) = v34;
  *(v26 + 176) = 0;
  v35 = v56;
  *(v26 + 184) = &unk_B21C40;
  *(v26 + 192) = v35;
  LOBYTE(v63[0]) = 1;
  v66 = 0uLL;
  *&v67 = v61;
  *(&v67 + 1) = v25;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = 0;
  LOBYTE(v69) = 1;
  *(&v69 + 1) = v26;
  v70 = 0;
  v36 = *(v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v37 = *(v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v61 = __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v36);
  v63[2] = v68;
  v63[3] = v69;
  v64 = v70;
  v63[0] = v66;
  v63[1] = v67;
  v65 = 0;
  v60 = *(v37 + 8);

  sub_5B3FC4(&v66, v62);
  v60(v63, v36, v37);
  sub_111904(&v66);

  return sub_6DC698(v63);
}

uint64_t sub_6D08EC()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 2;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6D0994()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 1;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6D0A3C()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6D0AC4(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v50 = sub_AB3470();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  sub_AB91E0();
  v53 = *(v5 + 16);
  v53(v7, v9, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v10 = qword_E71B20;
  v11 = qword_E71B20;
  v39 = v10;
  v12 = v11;
  sub_AB3550();
  v43 = v12;
  v48 = sub_AB9320();
  v47 = v13;
  v52 = *(v5 + 8);
  v52(v9, v4);
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v45 = sub_AB3440();
  v44 = v14;
  v38 = v5 + 8;
  v37 = *(v49 + 8);
  v15 = v50;
  v37(v3, v50);
  sub_AB91E0();
  v53(v7, v9, v4);
  sub_AB3550();
  v40 = v43;
  v49 = sub_AB9320();
  v43 = v16;
  v52(v9, v4);
  v42 = swift_allocObject();
  *(v42 + 16) = v54;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v41 = sub_AB3440();
  v54 = v17;
  v37(v3, v15);
  sub_AB91E0();
  v18 = v53;
  v53(v7, v9, v4);
  sub_AB3550();
  v19 = v40;
  v50 = sub_AB9320();
  v40 = v20;
  v21 = v52;
  v52(v9, v4);
  sub_AB91E0();
  v18(v7, v9, v4);
  sub_AB3550();
  v22 = sub_AB9320();
  v24 = v23;
  v21(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_AF85F0;
  v26 = v44;
  *(v25 + 32) = v45;
  *(v25 + 40) = v26;
  v27 = v47;
  *(v25 + 48) = v48;
  *(v25 + 56) = v27;
  *(v25 + 64) = 2;
  v28 = v46;
  *(v25 + 72) = &unk_B21C70;
  *(v25 + 80) = v28;
  v29 = v54;
  *(v25 + 88) = v41;
  *(v25 + 96) = v29;
  v30 = v43;
  *(v25 + 104) = v49;
  *(v25 + 112) = v30;
  *(v25 + 120) = 0;
  v31 = v42;
  *(v25 + 128) = &unk_B21C80;
  *(v25 + 136) = v31;
  LOBYTE(v56[0]) = 1;
  *&v59 = v50;
  *(&v59 + 1) = v40;
  *&v60 = v22;
  *(&v60 + 1) = v24;
  LOBYTE(v61) = 0;
  *(&v61 + 1) = 0;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = v25;
  v63 = 0;
  v32 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v33 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v53 = __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
  v56[2] = v61;
  v56[3] = v62;
  v57 = v63;
  v56[0] = v59;
  v56[1] = v60;
  v58 = 0;
  v34 = *(v33 + 8);

  sub_5B3FC4(&v59, v55);
  v34(v56, v32, v33);
  sub_111904(&v59);

  return sub_6DC698(v56);
}

uint64_t sub_6D1230()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D12D0()
{
  **(*(*(v0 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_6D134C(void *result)
{
  if (result)
  {
    if (([result isDeviceRoute] & 1) == 0)
    {
      v2 = [v1 musicSubscriptionStatus];
      if (!v2)
      {
LABEL_8:
        v6 = [objc_opt_self() sharedController];
        v7 = [v6 isCloudLibraryEnabled];

        if (v7)
        {
          return 0;
        }

        else
        {
          return &dword_0 + 2;
        }
      }

      v3 = v2;
      v4 = [v2 capabilities];
      v5 = [v3 capabilities];

      if ((v5 & 2) == 0)
      {
        if ((v4 & 1) == 0)
        {
          return &dword_0 + 1;
        }

        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_6D1424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    swift_allocError();
    *v5 = a3;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_6D14C8(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v70 = a1;
  v6 = sub_AB3470();
  v67 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v9 = sub_AB9250();
  v69 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v57 - v12;
  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 applicationState];

  if (!a2)
  {
LABEL_8:
    **(*(v70 + 64) + 40) = 0;

    return swift_continuation_throwingResume();
  }

  if (v15 == &dword_0 + 2)
  {
    if (qword_E0CEA0 != -1)
    {
      swift_once();
    }

    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, static Logger.playbackController);
    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Music is background so bypass the requires subscription alert and use buffered AirPlay", v19, 2u);
    }

    goto LABEL_8;
  }

  v66 = a4;
  if (v68)
  {
    sub_AB91E0();
    v21 = v69;
    (*(v69 + 16))(v11, v13, v9);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v22 = qword_E71B20;
    sub_AB3550();
    v65 = sub_AB9320();
    v64 = v23;
    (*(v21 + 8))(v13, v9);
    v24 = swift_allocObject();
    *(v24 + 16) = v70;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v63 = sub_AB3440();
    v62 = v25;
    (*(v67 + 8))(v8, v6);
    v26 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_506A20((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[56 * v28];
    v30 = v62;
    *(v29 + 4) = v63;
    *(v29 + 5) = v30;
    v31 = v64;
    *(v29 + 6) = v65;
    *(v29 + 7) = v31;
    v29[64] = 2;
    *(v29 + 9) = &unk_B21C60;
    *(v29 + 10) = v24;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v32 = v69;
  v65 = v6;
  sub_AB91E0();
  v33 = *(v32 + 16);
  v64 = v32 + 16;
  v63 = v33;
  v33(v11, v13, v9);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v34 = qword_E71B20;
  v35 = qword_E71B20;
  sub_AB3550();
  v36 = v35;
  v62 = v34;
  v60 = sub_AB9320();
  v38 = v37;
  v61 = *(v32 + 8);
  v61(v13, v9);
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v58 = sub_AB3440();
  v41 = v40;
  (*(v67 + 8))(v8, v65);
  v70 = v41;

  v67 = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v32 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_506A20(0, *(v26 + 2) + 1, 1, v26);
  }

  v44 = *(v26 + 2);
  v43 = *(v26 + 3);
  if (v44 >= v43 >> 1)
  {
    v26 = sub_506A20((v43 > 1), v44 + 1, 1, v26);
  }

  *(v26 + 2) = v44 + 1;
  v45 = &v26[56 * v44];
  v46 = v70;
  *(v45 + 4) = v58;
  *(v45 + 5) = v46;
  *(v45 + 6) = v60;
  *(v45 + 7) = v38;
  v59 = v38;
  v45[64] = 0;
  v47 = v67;
  *(v45 + 9) = &unk_B21C50;
  *(v45 + 10) = v47;
  v48 = sub_6D1EC0(v68);
  v50 = v49;
  sub_AB91E0();
  v63(v11, v13, v9);
  sub_AB3550();
  v51 = sub_AB9320();
  v53 = v52;
  v61(v13, v9);
  LOBYTE(v72[0]) = 1;
  *&v75 = v48;
  *(&v75 + 1) = v50;
  *&v76 = v51;
  *(&v76 + 1) = v53;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = 0;
  LOBYTE(v78) = 1;
  *(&v78 + 1) = v26;
  v79 = 0;
  v54 = *(v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v55 = *(v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_1((v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v54);
  v72[2] = v77;
  v72[3] = v78;
  v73 = v79;
  v72[0] = v75;
  v72[1] = v76;
  v74 = 0;
  v56 = *(v55 + 8);
  sub_5B3FC4(&v75, v71);
  v56(v72, v54, v55);
  sub_111904(&v75);

  return sub_6DC698(v72);
}

uint64_t sub_6D1DA0()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D1E40()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D1EC0(void *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v12[-v7];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v9 = qword_E71B20;
  sub_AB3550();
  v10 = sub_AB9320();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_6D2110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v36 = a2;
  v44 = sub_AB3F80();
  v37 = *(v44 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v34 - v5;
  v6 = sub_AB8D50();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_AB8DE0();
  v39 = *(v45 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = sub_AB8860();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v34 - v15;
  v17 = *(a1 - 8);
  v18 = __chkstk_darwin();
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v21(v20, v47, a1, v18);
  if (swift_dynamicCast())
  {
    (*(v12 + 32))(v14, v16, v11);
    Track.musicItem.getter(v46);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v23 = v45;
    v22 = v46;
    if (swift_dynamicCast())
    {
      v25 = v38;
      v24 = v39;
      (*(v39 + 32))(v38, v10, v23);
      v26 = v40;
      sub_AB8D60();
      Playlist.Entry.InternalItem.musicItem.getter(v22);
      (*(v41 + 8))(v26, v42);
      (*(v24 + 8))(v25, v23);
    }

    else
    {
      v28 = v43;
      v27 = v44;
      if (swift_dynamicCast())
      {
        v29 = v37;
        v30 = v35;
        (*(v37 + 32))(v35, v28, v27);
        GenericMusicItem.innerMusicItem.getter(v22);
        (*(v29 + 8))(v30, v27);
      }

      else
      {
        v31 = v36;
        v22[3] = a1;
        v22[4] = v31;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
        (v21)(boxed_opaque_existential_0, v47, a1);
      }
    }
  }

  return (*(v17 + 8))(v20, a1);
}

uint64_t sub_6D25D4(uint64_t a1, uint64_t a2)
{
  v40 = sub_AB8AE0();
  v38[0] = *(v40 - 8);
  __chkstk_darwin();
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_AB44B0();
  v38[1] = *(v43 - 8);
  __chkstk_darwin();
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_AB4770();
  v41 = *(v45 - 8);
  __chkstk_darwin();
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_AB8E20();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v48 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_AB8770();
  v47 = *(v52 - 8);
  __chkstk_darwin();
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_AB8030();
  v50 = *(v53 - 8);
  __chkstk_darwin();
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v54 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB9250();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v38 - v16;
  v18 = sub_AB86C0();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D2110(a1, a2, v56);
  if (!v56[3])
  {
    goto LABEL_31;
  }

  sub_15F84(v56, v55, &qword_E130E0, &qword_B21BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E130E8, &qword_B21BD0);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v22 = qword_E71B20;
    sub_AB3550();
    v23 = sub_AB9320();
    (*(v13 + 8))(v17, v12);
    (*(v19 + 8))(v21, v18);
    goto LABEL_20;
  }

  v24 = v53;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v25 = qword_E71B20;
    sub_AB3550();
    v23 = sub_AB9320();
    (*(v13 + 8))(v17, v12);
    (*(v50 + 8))(v10, v24);
    goto LABEL_20;
  }

  v27 = v51;
  v26 = v52;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v28 = qword_E71B20;
    sub_AB3550();
    v23 = sub_AB9320();
    (*(v13 + 8))(v17, v12);
    v29 = v47;
    goto LABEL_19;
  }

  v27 = v48;
  v26 = v49;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v30 = qword_E71B20;
    sub_AB3550();
    v23 = sub_AB9320();
    (*(v13 + 8))(v17, v12);
    v31 = &v60;
LABEL_18:
    v29 = *(v31 - 32);
LABEL_19:
    (*(v29 + 8))(v27, v26);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0(v55);
    sub_12E1C(v56, &qword_E130E0, &qword_B21BC0);
    return v23;
  }

  v32 = v44;
  v33 = v45;
  if (!swift_dynamicCast())
  {
    v32 = v42;
    v33 = v43;
    if (swift_dynamicCast())
    {
      v34 = &v58;
      goto LABEL_25;
    }

    v27 = v39;
    v26 = v40;
    if (swift_dynamicCast())
    {
      sub_AB91E0();
      (*(v13 + 16))(v15, v17, v12);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v35 = qword_E71B20;
      sub_AB3550();
      v23 = sub_AB9320();
      (*(v13 + 8))(v17, v12);
      v31 = &v57;
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_0(v55);
LABEL_31:
    sub_12E1C(v56, &qword_E130E0, &qword_B21BC0);
    goto LABEL_32;
  }

  v34 = &v59;
LABEL_25:
  (*(*(v34 - 32) + 8))(v32, v33);
  __swift_destroy_boxed_opaque_existential_0(v55);
  sub_12E1C(v56, &qword_E130E0, &qword_B21BC0);
LABEL_32:
  sub_AB91E0();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v36 = qword_E71B20;
  sub_AB3550();
  v23 = sub_AB9320();
  (*(v13 + 8))(v17, v12);
  return v23;
}

uint64_t sub_6D31C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v104 = a4;
  *(&v104 + 1) = a5;
  v122 = a1;
  v123 = a3;
  v105 = a2;
  v5 = sub_AB4C10();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin();
  v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v100 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v109 = &v99 - v8;
  v9 = sub_AB3470();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB9250();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v99 - v19;
  sub_AB91E0();
  v111 = *(v16 + 16);
  v112 = v16 + 16;
  v111(v18, v20, v15);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v21 = qword_E71B20;
  v106 = qword_E71B20;
  sub_AB3550();
  v113 = v18;
  v110 = v21;
  v116 = v14;
  v22 = sub_AB9320();
  v24 = v23;
  v25 = *(v16 + 8);
  v114 = v20;
  v115 = v16 + 8;
  v117 = v15;
  v108 = v25;
  v25(v20, v15);
  v26 = swift_allocObject();
  *(v26 + 16) = v122;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v27 = sub_AB3440();
  v29 = v28;
  v30 = *(v10 + 8);
  v118 = v12;
  v119 = v10 + 8;
  v120 = v9;
  v107 = v30;
  v30(v12, v9);
  v31 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_506A20((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = v105;
  *(v31 + 2) = v33 + 1;
  v35 = &v31[56 * v33];
  *(v35 + 4) = v27;
  *(v35 + 5) = v29;
  *(v35 + 6) = v22;
  *(v35 + 7) = v24;
  v35[64] = 2;
  *(v35 + 9) = &unk_B21BE0;
  *(v35 + 10) = v26;
  v36 = v109;
  sub_6DAFE8(v34, v109, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v101;
    v38 = v102;
    v39 = v36;
    v40 = v103;
    (*(v102 + 32))(v101, v39, v103);
    v109 = sub_AB4BE0();
    (*(v38 + 8))(v37, v40);
  }

  else
  {
    v109 = *v36;
  }

  v41 = v118;
  v42 = v114;
  v43 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v44 = v123;
  swift_beginAccess();
  v45 = *(v44 + v43);
  if (v45)
  {

    v46 = v109;
    v47 = sub_6DB2E8(v46, 0, v45);

    if (v47)
    {
      sub_AB91E0();
      v48 = v117;
      v111(v113, v42, v117);
      v49 = v106;
      sub_AB3550();
      v50 = sub_AB9320();
      v52 = v51;
      v108(v42, v48);
      v53 = swift_allocObject();
      *(v53 + 16) = v122;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v54 = sub_AB3440();
      v56 = v55;
      v107(v41, v120);
      v58 = *(v31 + 2);
      v57 = *(v31 + 3);
      if (v58 >= v57 >> 1)
      {
        v31 = sub_506A20((v57 > 1), v58 + 1, 1, v31);
      }

      *(v31 + 2) = v58 + 1;
      v59 = &v31[56 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      *(v59 + 6) = v50;
      *(v59 + 7) = v52;
      v59[64] = 2;
      *(v59 + 9) = &unk_B21C10;
      *(v59 + 10) = v53;
      v41 = v118;
      v42 = v114;
      v34 = v105;
    }
  }

  v60 = v100;
  sub_6DAFE8(v34, v100, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v101;
    v62 = v102;
    v63 = v60;
    v64 = v103;
    (*(v102 + 32))(v101, v63, v103);
    v65 = sub_AB4BE0();
    (*(v62 + 8))(v61, v64);
  }

  else
  {
    v65 = *v60;
  }

  v66 = *(v123 + v43);
  v121 = v65;
  if (v66 && (, v67 = v65, v68 = sub_6DB2E8(v67, &dword_0 + 1, v66), v67, , v68))
  {
    sub_AB91E0();
    v69 = v117;
    v111(v113, v42, v117);
    v70 = v106;
    sub_AB3550();
    v71 = sub_AB9320();
    v72 = v42;
    v74 = v73;
    v108(v72, v69);
    v75 = swift_allocObject();
    *(v75 + 16) = v122;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v76 = sub_AB3440();
    v78 = v77;
    v107(v41, v120);
    v80 = *(v31 + 2);
    v79 = *(v31 + 3);
    if (v80 >= v79 >> 1)
    {
      v31 = sub_506A20((v79 > 1), v80 + 1, 1, v31);
    }

    *(v31 + 2) = v80 + 1;
    v81 = &v31[56 * v80];
    *(v81 + 4) = v76;
    *(v81 + 5) = v78;
    *(v81 + 6) = v71;
    *(v81 + 7) = v74;
    v81[64] = 2;
    *(v81 + 9) = &unk_B21C00;
    *(v81 + 10) = v75;
    v82 = v122;
    v41 = v118;
    v42 = v114;
  }

  else
  {
    v82 = v122;
  }

  sub_AB91E0();
  v83 = v117;
  v111(v113, v42, v117);
  v84 = v106;
  sub_AB3550();
  v85 = sub_AB9320();
  v87 = v86;
  v108(v42, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v82;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v89 = sub_AB3440();
  v91 = v90;
  v107(v41, v120);
  v93 = *(v31 + 2);
  v92 = *(v31 + 3);
  if (v93 >= v92 >> 1)
  {
    v31 = sub_506A20((v92 > 1), v93 + 1, 1, v31);
  }

  *(v31 + 2) = v93 + 1;
  v94 = &v31[56 * v93];
  *(v94 + 4) = v89;
  *(v94 + 5) = v91;
  *(v94 + 6) = v85;
  *(v94 + 7) = v87;
  v94[64] = 0;
  *(v94 + 9) = &unk_B21BF0;
  *(v94 + 10) = v88;
  LOBYTE(v125[0]) = 1;
  v128 = 0uLL;
  v129 = v104;
  LOBYTE(v130) = 0;
  *(&v130 + 1) = 0;
  LOBYTE(v131) = 1;
  *(&v131 + 1) = v31;
  v132 = 0;
  v95 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v96 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_1((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
  v125[2] = v130;
  v125[3] = v131;
  v126 = v132;
  v125[0] = v128;
  v125[1] = v129;
  v127 = 0;
  v97 = *(v96 + 8);

  sub_5B3FC4(&v128, &v124);
  v97(v125, v95, v96);
  sub_111904(&v128);

  return sub_6DC698(v125);
}

uint64_t sub_6D3CAC()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = vdupq_n_s64(2uLL);
  v1[1].i8[0] = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6D3D58()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_B13C90;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6D3E04()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_B13CA0;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6D3EB0()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

id PlaybackController.requestedPropertySet(for:)()
{
  if (qword_E0CF78 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_6D4080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_AB9940();
  v4[3] = sub_AB9930();
  v6 = sub_AB98B0();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_6D4118, v6, v5);
}

uint64_t sub_6D4118()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_6D41F8;

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

uint64_t sub_6D41F8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_6D433C, v3, v2);
}

uint64_t sub_6D433C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D439C(uint64_t a1)
{
  v34 = a1;
  v33 = sub_AB3470();
  v32 = *(v33 - 8);
  __chkstk_darwin();
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_AB91E0();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v9 = qword_E71B20;
  sub_AB3550();
  v10 = v9;
  v30 = sub_AB9320();
  v29 = v11;
  v12 = *(v3 + 8);
  v12(v7, v2);
  sub_AB91E0();
  v8(v5, v7, v2);
  sub_AB3550();
  v28 = sub_AB9320();
  v27 = v13;
  v12(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF4EC0;
  sub_AB91E0();
  v8(v5, v7, v2);
  sub_AB3550();
  v15 = sub_AB9320();
  v17 = v16;
  v12(v7, v2);
  v18 = v31;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v19 = sub_AB3440();
  v21 = v20;
  (*(v32 + 8))(v18, v33);
  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
  *(v14 + 48) = v15;
  *(v14 + 56) = v17;
  *(v14 + 64) = 2;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  LOBYTE(v36[0]) = 1;
  *&v39 = v30;
  *(&v39 + 1) = v29;
  *&v40 = v28;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = 0;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = v14;
  v43 = 0;
  v22 = *(v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v23 = *(v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
  v36[2] = v41;
  v36[3] = v42;
  v37 = v43;
  v36[0] = v39;
  v36[1] = v40;
  v38 = 0;
  v24 = *(v23 + 8);
  sub_5B3FC4(&v39, v35);
  v24(v36, v22, v23);
  sub_111904(&v39);
  return sub_6DC698(v36);
}

void sub_6D48DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = &type metadata for String;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = a3 + 16 * a1;
  v6 = *(v5 + 40);
  *&v14 = *(v5 + 32);
  *(&v14 + 1) = v6;
  sub_9ACFC(&v14, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  sub_52617C(v18, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v8 = v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_E8BA0(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v14);

    v11 = v15;
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    (*(v12 + 24))(v8, v11, v12);

    __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  else
  {
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v13[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  }
}

void sub_6D4A58(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a1;
  v55 = a2;
  v53 = sub_AB3470();
  v6 = *(v53 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v4 buttons];
  sub_13C80(0, &qword_E12FE0, ICStoreDialogResponseButton_ptr);
  v10 = sub_AB9760();

  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_20;
  }

  v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  v45 = v4;
  for (i = a3; v12; i = a3)
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v14 = _swiftEmptyArrayStorage;
    v47 = (v6 + 8);
    v48 = v12;
    v49 = v11;
    while (1)
    {
      if (v51)
      {
        v11 = sub_ABAE20();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v11 + 8 * v13 + 32);
      }

      v15 = v11;
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v58 = [v11 type] != &dword_0 + 2;
      v16 = [v15 title];
      if (v16)
      {
        v17 = v16;
        v18 = sub_AB92A0();
        v56 = v19;
        v57 = v18;
      }

      else
      {
        v56 = 0xE000000000000000;
        v57 = 0;
      }

      v20 = swift_allocObject();
      v22 = v54;
      v21 = v55;
      v20[2] = v15;
      v20[3] = v22;
      v20[4] = v21;
      v20[5] = v13;
      v23 = v15;
      sub_307CC(v22, v21);
      v24 = v52;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v25 = sub_AB3440();
      v4 = v26;
      (*v47)(v24, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_506A20(0, *(v14 + 2) + 1, 1, v14);
      }

      a3 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (a3 >= v27 >> 1)
      {
        v14 = sub_506A20((v27 > 1), a3 + 1, 1, v14);
      }

      v28 = 2 * v58;

      *(v14 + 2) = a3 + 1;
      v29 = &v14[56 * a3];
      *(v29 + 4) = v25;
      *(v29 + 5) = v4;
      v30 = v56;
      *(v29 + 6) = v57;
      *(v29 + 7) = v30;
      v29[64] = v28;
      *(v29 + 9) = &unk_B21A18;
      *(v29 + 10) = v20;
      ++v13;
      v11 = v49;
      if (v6 == v48)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v31 = v11;
    v12 = sub_ABB060();
    v11 = v31;
    v45 = v4;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_22:

  v32 = v45;
  v33 = [v45 message];
  if (v33)
  {
    v34 = v33;
    v35 = sub_AB92A0();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = i;
  v39 = [v32 explanation];
  if (v39)
  {
    v40 = v39;
    v41 = sub_AB92A0();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *v38 = v35;
  *(v38 + 8) = v37;
  *(v38 + 16) = v41;
  *(v38 + 24) = v43;
  *(v38 + 32) = 0;
  *(v38 + 40) = 0;
  *(v38 + 48) = 1;
  *(v38 + 56) = v14;
  *(v38 + 64) = 0;
}

uint64_t sub_6D4E2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) = 1;
    v6 = result;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v7;

    sub_6D4A58(sub_6DD258, v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    sub_5B3FC4(v16, v12);
    v11(v13, v9, v10);
    sub_111904(v16);
    return sub_6DC698(v13);
  }

  return result;
}

double PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DC0CC, v6);

  return result;
}

void sub_6D50C4(uint64_t a1, uint64_t a2, void *a3)
{
  v163 = a3;
  v166 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F438, &qword_B19B08);
  __chkstk_darwin();
  v5 = &v151 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FC0, &qword_B1A180);
  __chkstk_darwin();
  v7 = &v151 - v6;
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, static Logger.playbackController);
  swift_errorRetain();
  v9 = sub_AB4BA0();
  v10 = sub_AB9F30();

  v11 = os_log_type_enabled(v9, v10);
  v170 = v5;
  v172 = v7;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v174 = v13;
    *v12 = 136446210;
    *&v199 = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v14 = sub_AB9350();
    v16 = sub_500C84(v14, v15, &v174);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "didFailToPlayFirstItem with error=%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  if ((*(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v156 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v17 = sub_AB3040();
    v18 = [v17 userInfo];
    v19 = sub_AB8FF0();

    v20 = *(v19 + 16);
    v160 = v17;
    if (v20 && (v21 = sub_52215C(0x676F6C616964, 0xE600000000000000), (v22 & 1) != 0))
    {
      sub_808B0(*(v19 + 56) + 32 * v21, &v174);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD18, &qword_B1BE70);
      if (swift_dynamicCast())
      {

        v23 = sub_AB4BA0();
        v24 = sub_AB9F50();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *&v174 = v171;
          *v25 = 136446210;
          v26 = sub_AB9000();
          v28 = sub_500C84(v26, v27, &v174);

          *(v25 + 4) = v28;
          v17 = v160;
          _os_log_impl(&dword_0, v23, v24, "Found an error dialog=%{public}s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v171);
        }

        v29 = objc_allocWithZone(ICStoreDialogResponse);
        isa = sub_AB8FD0().super.isa;

        v31 = [v29 initWithResponseDictionary:isa];

        sub_6D4A58(0, 0, &v174);
        v196 = v176;
        v197 = v177;
        v198 = v178;
        v194 = v174;
        v195 = v175;
LABEL_14:
        v32 = [v17 userInfo];
        v33 = sub_AB8FF0();

        v34 = sub_AB92A0();
        if (*(v33 + 16))
        {
          v36 = sub_52215C(v34, v35);
          v38 = v37;

          if (v38)
          {
            sub_808B0(*(v33 + 56) + 32 * v36, &v174);

            sub_13C80(0, &qword_E0E300, NSError_ptr);
            if (swift_dynamicCast())
            {
              v39 = v199;
              goto LABEL_21;
            }

LABEL_20:
            v39 = 0;
LABEL_21:
            v40 = swift_allocObject();
            *(v40 + 16) = 0;
            v171 = (v40 + 16);
            v41 = swift_allocObject();
            *(v41 + 16) = 0;
            v169 = (v41 + 16);
            v42 = swift_allocObject();
            *(v42 + 16) = 0;
            v168 = (v42 + 16);
            sub_6D6850(a1, v41, v42, v40);
            if (v39)
            {
              v43 = v39;
              sub_6D6850(v43, v41, v42, v40);
            }

            v158 = v41;
            v159 = v42;
            v161 = v39;
            v157 = v40;
            if (!v163)
            {
              v50 = 0;
              goto LABEL_47;
            }

            v44 = v163;
            v45 = [v44 stationStringID];
            if (v45)
            {
              v46 = v45;
              v47 = sub_AB92A0();
              v49 = v48;
            }

            else
            {
              v47 = 0;
              v49 = 0;
            }

            v51 = [v44 stationID];
            v52 = [v44 stationHash];
            if (v52)
            {
              v53 = v52;
              v54 = sub_AB92A0();
              v56 = v55;

              v17 = v160;
              if (v49)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v54 = 0;
              v56 = 0;
              if (v49)
              {
LABEL_30:
                v57 = HIBYTE(v49) & 0xF;
                if ((v49 & 0x2000000000000000) == 0)
                {
                  v57 = v47 & 0xFFFFFFFFFFFFLL;
                }

                if (v57 | v51)
                {
LABEL_40:
                  sub_13C80(0, &qword_E15510, MPModelRadioStationKind_ptr);
                  v59 = [swift_getObjCClassFromMetadata() identityKind];
                  v167 = &v151;
                  __chkstk_darwin();
                  *(&v151 - 6) = v47;
                  *(&v151 - 5) = v49;
                  *(&v151 - 4) = v51;
                  *(&v151 - 3) = v54;
                  *(&v151 - 2) = v56;
                  v60 = objc_allocWithZone(MPIdentifierSet);
                  v61 = swift_allocObject();
                  *(v61 + 16) = sub_6DCA9C;
                  *(v61 + 24) = &v151 - 8;
                  *&v176 = sub_57B84;
                  *(&v176 + 1) = v61;
                  *&v174 = _NSConcreteStackBlock;
                  *(&v174 + 1) = 1107296256;
                  *&v175 = sub_41A314;
                  *(&v175 + 1) = &block_descriptor_111_0;
                  v62 = _Block_copy(&v174);

                  v63 = [v60 initWithModelKind:v59 block:v62];

                  _Block_release(v62);

                  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

                  if (v59)
                  {
                    __break(1u);
                  }

                  else
                  {
                    __chkstk_darwin();
                    *(&v151 - 2) = v44;
                    v64 = objc_allocWithZone(MPModelRadioStation);
                    v65 = swift_allocObject();
                    *(v65 + 16) = sub_6DCAC4;
                    *(v65 + 24) = &v151 - 4;
                    *&v176 = sub_57B84;
                    *(&v176 + 1) = v65;
                    *&v174 = _NSConcreteStackBlock;
                    *(&v174 + 1) = 1107296256;
                    *&v175 = sub_41A314;
                    *(&v175 + 1) = &block_descriptor_117_0;
                    v66 = _Block_copy(&v174);

                    v50 = [v64 initWithIdentifiers:v63 block:v66];

                    _Block_release(v66);

                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    v40 = v157;
                    if ((isEscapingClosureAtFileLocation & 1) == 0)
                    {
                      v17 = v160;
LABEL_46:
                      v39 = v161;
LABEL_47:
                      v68 = v171;
                      swift_beginAccess();
                      v69 = *v68;
                      v70 = v50;
                      v162 = v50;
                      if (v69 == 1)
                      {
                        if (v50)
                        {
                          sub_E8BA0(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                          v71 = *(&v200 + 1);
                          v72 = v201;
                          __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
                          v73 = sub_AB8AE0();
                          v74 = v50;
                          v75 = v172;
                          sub_AB4A80();
                          v76 = *(v73 - 8);
                          if ((*(v76 + 48))(v75, 1, v73) == 1)
                          {
                            sub_12E1C(v75, &unk_E12FC0, &qword_B1A180);
                            v174 = 0u;
                            v175 = 0u;
                            *&v176 = 0;
                          }

                          else
                          {
                            *(&v175 + 1) = v73;
                            *&v176 = &protocol witness table for Station;
                            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v174);
                            (*(v76 + 32))(boxed_opaque_existential_0, v75, v73);
                          }

                          v39 = v161;
                          v179 = 2;
                          (*(v72 + 8))(&v174, v71, v72);
                          sub_6DC698(&v174);
                          __swift_destroy_boxed_opaque_existential_0(&v199);
                          v92 = v194;
                          v91 = v195;
                          v84 = v196;
                          v191[0] = *(&v196 + 1);
                          *(v191 + 3) = DWORD1(v196);
                          v83 = *(&v196 + 1);
                          v85 = v197;
                          v190[0] = *(&v197 + 1);
                          *(v190 + 3) = DWORD1(v197);
                          v82 = *(&v197 + 1);
                          v93 = v198;
                          v94 = v162;
                          v17 = v160;
                          goto LABEL_62;
                        }

                        v70 = 0;
                      }

                      v77 = v169;
                      swift_beginAccess();
                      if (*v77)
                      {
                        v78 = v50;
                        sub_600760(v70, &v199);
LABEL_56:
                        sub_12E1C(&v194, &qword_E0F9B0, &qword_B1EF00);

                        v82 = v204;
                        v81 = v205;
                        v83 = v202;
                        v84 = v201;
                        v85 = v203;
                        v164 = v199;
                        v165 = v200;
                        v174 = v199;
                        v175 = v200;
                        LOBYTE(v176) = v201;
                        *(&v176 + 1) = v202;
                        LOBYTE(v177) = v203;
                        *(&v177 + 1) = v204;
                        v178 = v205;
                        v86 = &v185;
LABEL_57:
                        sub_5B3FC4(&v174, v86);
                        v154 = v84;
                        goto LABEL_64;
                      }

                      v79 = v168;
                      swift_beginAccess();
                      if (*v79)
                      {
                        v80 = v50;
                        sub_601620(v70, 0, &v199);
                        goto LABEL_56;
                      }

                      v87 = v50;

                      v88 = sub_AB3040();
                      v89 = [objc_opt_self() playbackAlertControllerForItem:v163 contentType:0 error:v88 dismissalBlock:0];

                      if (v89)
                      {
                        sub_6D6BE4(&v174);
                        sub_12E1C(&v194, &qword_E0F9B0, &qword_B1EF00);

                        v187 = v176;
                        v188 = v177;
                        v189 = v178;
                        v185 = v174;
                        v186 = v175;
                      }

                      else
                      {
                        sub_12E1C(&v194, &qword_E0F9B0, &qword_B1EF00);
                        v185 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v188 = 0u;
                        v189 = 0;
                      }

                      v132 = v158;
                      v131 = v159;
                      sub_6D6FCC(a1, v40, v159, v158);
                      if (v39)
                      {
                        v133 = v39;
                        sub_6D6FCC(v133, v40, v131, v132);
                      }

                      if (!v163)
                      {
                        goto LABEL_117;
                      }

                      v134 = v163;
                      v135 = [v134 modelGenericObject];
                      v94 = v162;
                      if (v135)
                      {
                        v136 = v135;
                        v137 = [v135 innermostModelObject];
                      }

                      else
                      {
                        v137 = 0;
                      }

                      if (*v171 == 1)
                      {
                        v138 = [v134 modelPlayEvent];
                        if (v138)
                        {
                          v139 = v138;
                          v140 = [v138 itemType];
                          if (v140 == &dword_0 + 3)
                          {
                            v141 = [v139 playlist];
LABEL_115:
                            v142 = v141;

                            if (!v142)
                            {

LABEL_117:
                              v92 = v185;
                              v91 = v186;
                              v84 = v187;
                              v191[0] = *(&v187 + 1);
                              *(v191 + 3) = DWORD1(v187);
                              v83 = *(&v187 + 1);
                              v85 = v188;
                              v190[0] = *(&v188 + 1);
                              *(v190 + 3) = DWORD1(v188);
                              v82 = *(&v188 + 1);
                              v93 = v189;
                              v94 = v162;
LABEL_62:
                              if (!v82)
                              {
                                v174 = v92;
                                v175 = v91;
                                LOBYTE(v176) = v84;
                                *(&v176 + 1) = v191[0];
                                DWORD1(v176) = *(v191 + 3);
                                *(&v176 + 1) = v83;
                                LOBYTE(v177) = v85;
                                *(&v177 + 1) = v190[0];
                                DWORD1(v177) = *(v190 + 3);
                                *(&v177 + 1) = 0;
                                v178 = v93;
                                if (v39)
                                {
LABEL_74:
                                  v118 = [v39 domain];
                                  v119 = sub_AB92A0();
                                  v121 = v120;

                                  v122 = sub_AB92A0();
                                  if (v121)
                                  {
                                    if (v119 == v122 && v121 == v123)
                                    {

LABEL_80:
                                      if ([v39 code] != stru_20.segname)
                                      {

                                        sub_12E1C(&v174, &qword_E0F9B0, &qword_B1EF00);

LABEL_107:

                                        v17 = v162;
                                        goto LABEL_108;
                                      }

                                      if (!v163)
                                      {
                                        v128 = 0;
                                        v130 = 0;
                                        v127 = 0;
LABEL_106:
                                        sub_6D8860(v128, v130, 0, 0);

                                        sub_12E1C(&v174, &qword_E0F9B0, &qword_B1EF00);

                                        goto LABEL_107;
                                      }

                                      v125 = [v163 modelGenericObject];
                                      if (v125)
                                      {
                                        v126 = v125;
                                        v127 = [v125 flattenedGenericObject];

                                        if (v127)
                                        {
                                          v128 = MPModelObject.bestIdentifier(for:)(2, 1u);
                                          v130 = v129;
                                        }

                                        else
                                        {
                                          v128 = 0;
                                          v130 = 0;
                                        }

                                        goto LABEL_106;
                                      }

LABEL_129:
                                      __break(1u);
                                      return;
                                    }

                                    v124 = sub_ABB3C0();

                                    if (v124)
                                    {
                                      goto LABEL_80;
                                    }

                                    sub_12E1C(&v174, &qword_E0F9B0, &qword_B1EF00);

LABEL_108:

                                    return;
                                  }

                                  v94 = v162;
LABEL_87:

                                  sub_12E1C(&v174, &qword_E0F9B0, &qword_B1EF00);

                                  goto LABEL_108;
                                }

LABEL_86:
                                sub_AB92A0();
                                goto LABEL_87;
                              }

                              v174 = v92;
                              v175 = v91;
                              LOBYTE(v176) = v84;
                              *(&v176 + 1) = v191[0];
                              DWORD1(v176) = *(v191 + 3);
                              *(&v176 + 1) = v83;
                              LOBYTE(v177) = v85;
                              *(&v177 + 1) = v190[0];
                              DWORD1(v177) = *(v190 + 3);
                              *(&v177 + 1) = v82;
                              v178 = v93;
                              v81 = v93;
                              v164 = v92;
                              v165 = v91;
                              sub_5B3FC4(&v174, &v199);
                              v193[0] = v191[0];
                              *(v193 + 3) = *(v191 + 3);
                              v192[0] = v190[0];
                              *(v192 + 3) = *(v190 + 3);
                              v154 = v84;
                              LOBYTE(v84) = v84 & 1;
LABEL_64:
                              v96 = v164;
                              v95 = v165;
                              v185 = v164;
                              v186 = v165;
                              LOBYTE(v187) = v84;
                              v155 = v83;
                              *(&v187 + 1) = v83;
                              v153 = v85;
                              LOBYTE(v188) = v85 & 1;
                              *(&v188 + 1) = v82;
                              v189 = v81;
                              v152 = v81;
                              v97 = *(v82 + 16);
                              if (v97)
                              {

                                v98 = _swiftEmptyArrayStorage;
                                v151 = v82;
                                v99 = (v82 + 80);
                                do
                                {
                                  v169 = v98;
                                  v172 = v97;
                                  v100 = *(v99 - 6);
                                  v101 = *(v99 - 5);
                                  v102 = *(v99 - 4);
                                  v103 = *(v99 - 3);
                                  LODWORD(v167) = *(v99 - 16);
                                  v105 = *(v99 - 1);
                                  v104 = *v99;
                                  v106 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v107 = swift_allocObject();
                                  v170 = v102;
                                  v171 = v100;
                                  *(v107 + 16) = v100;
                                  *(v107 + 24) = v101;
                                  v98 = v169;
                                  v108 = v167;
                                  *(v107 + 32) = v102;
                                  *(v107 + 40) = v103;
                                  v109 = v108;
                                  *(v107 + 48) = v108;
                                  *(v107 + 49) = v206[0];
                                  *(v107 + 52) = *(v206 + 3);
                                  *(v107 + 56) = v105;
                                  *(v107 + 64) = v104;
                                  *(v107 + 72) = v106;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  sub_307CC(v105, v104);

                                  v168 = v104;
                                  sub_307CC(v105, v104);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v98 = sub_506A20(0, *(v98 + 2) + 1, 1, v98);
                                  }

                                  v111 = *(v98 + 2);
                                  v110 = *(v98 + 3);
                                  if (v111 >= v110 >> 1)
                                  {
                                    v98 = sub_506A20((v110 > 1), v111 + 1, 1, v98);
                                  }

                                  v99 += 7;

                                  sub_17654(v105, v168);
                                  *(v98 + 2) = v111 + 1;
                                  v112 = &v98[56 * v111];
                                  v113 = v170;
                                  *(v112 + 4) = v171;
                                  *(v112 + 5) = v101;
                                  *(v112 + 6) = v113;
                                  *(v112 + 7) = v103;
                                  v112[64] = v109;
                                  *(v112 + 9) = &unk_B21A08;
                                  *(v112 + 10) = v107;
                                  v97 = v172 - 1;
                                }

                                while (v172 != &dword_0 + 1);
                                v82 = v151;

                                v17 = v160;
                                v96 = v164;
                                v95 = v165;
                              }

                              else
                              {
                                v98 = _swiftEmptyArrayStorage;
                              }

                              v164 = v96;
                              v165 = v95;
                              LOBYTE(v174) = 1;
                              v180 = v96;
                              v181 = v95;
                              LOBYTE(v182) = 0;
                              *(&v182 + 1) = 0;
                              LOBYTE(v183) = 1;
                              *(&v183 + 1) = v98;
                              v184 = 0;
                              v114 = v166;
                              *(v166 + v156) = 1;
                              v115 = *(v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                              v116 = *(v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                              __swift_project_boxed_opaque_existential_1((v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v115);
                              v176 = v182;
                              v177 = v183;
                              v178 = v184;
                              v174 = v180;
                              v175 = v181;
                              v179 = 0;
                              v117 = *(v116 + 8);

                              sub_5B3FC4(&v180, &v173);
                              v117(&v174, v115, v116);
                              sub_111904(&v185);
                              sub_111904(&v180);
                              sub_6DC698(&v174);
                              v174 = v164;
                              v175 = v165;
                              LOBYTE(v176) = v154;
                              *(&v176 + 1) = v193[0];
                              DWORD1(v176) = *(v193 + 3);
                              *(&v176 + 1) = v155;
                              LOBYTE(v177) = v153;
                              *(&v177 + 1) = v192[0];
                              DWORD1(v177) = *(v192 + 3);
                              *(&v177 + 1) = v82;
                              v178 = v152;
                              v39 = v161;
                              v94 = v162;
                              if (v161)
                              {
                                goto LABEL_74;
                              }

                              goto LABEL_86;
                            }

LABEL_121:
                            v143 = v142;
                            sub_E8BA0(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                            v144 = *(&v200 + 1);
                            v145 = v201;
                            __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
                            v146 = v143;
                            v147 = v170;
                            sub_AB3F70();
                            v148 = sub_AB3F80();
                            v149 = *(v148 - 8);
                            if ((*(v149 + 48))(v147, 1, v148) == 1)
                            {
                              sub_12E1C(v147, &qword_E0F438, &qword_B19B08);
                              v174 = 0u;
                              v175 = 0u;
                              *&v176 = 0;
                            }

                            else
                            {
                              *(&v175 + 1) = v148;
                              *&v176 = sub_6DCA54(&unk_E12FD0, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
                              v150 = __swift_allocate_boxed_opaque_existential_0(&v174);
                              (*(v149 + 32))(v150, v147, v148);
                            }

                            v179 = 2;
                            (*(v145 + 8))(&v174, v144, v145);

                            sub_6DC698(&v174);
                            __swift_destroy_boxed_opaque_existential_0(&v199);
                            v92 = v185;
                            v91 = v186;
                            v84 = v187;
                            v191[0] = *(&v187 + 1);
                            *(v191 + 3) = DWORD1(v187);
                            v83 = *(&v187 + 1);
                            v85 = v188;
                            v190[0] = *(&v188 + 1);
                            *(v190 + 3) = DWORD1(v188);
                            v82 = *(&v188 + 1);
                            v93 = v189;
                            v17 = v160;
                            v39 = v161;
                            v94 = v162;
                            goto LABEL_62;
                          }

                          if (v140 == &dword_0 + 1)
                          {
                            v141 = [v139 album];
                            goto LABEL_115;
                          }
                        }

                        if (v137)
                        {
                          v142 = v137;
                          goto LABEL_121;
                        }

LABEL_126:
                        v92 = v185;
                        v91 = v186;
                        v84 = v187;
                        v191[0] = *(&v187 + 1);
                        *(v191 + 3) = DWORD1(v187);
                        v83 = *(&v187 + 1);
                        v85 = v188;
                        v190[0] = *(&v188 + 1);
                        *(v190 + 3) = DWORD1(v188);
                        v82 = *(&v188 + 1);
                        v93 = v189;
                        goto LABEL_62;
                      }

                      if (*v169)
                      {
                        sub_600760(v137, &v199);
                      }

                      else
                      {
                        if ((*v168 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        sub_601620(v137, 0, &v199);
                      }

                      sub_12E1C(&v185, &qword_E0F9B0, &qword_B1EF00);

                      v82 = v204;
                      v81 = v205;
                      v83 = v202;
                      v84 = v201;
                      v85 = v203;
                      v164 = v199;
                      v165 = v200;
                      v174 = v199;
                      v175 = v200;
                      LOBYTE(v176) = v201;
                      *(&v176 + 1) = v202;
                      LOBYTE(v177) = v203;
                      *(&v177 + 1) = v204;
                      v178 = v205;
                      v86 = &v180;
                      goto LABEL_57;
                    }
                  }

                  __break(1u);
                  goto LABEL_129;
                }

LABEL_36:
                if (v56)
                {
                  v58 = HIBYTE(v56) & 0xF;
                  if ((v56 & 0x2000000000000000) == 0)
                  {
                    v58 = v54 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v58)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                }

                v50 = 0;
                v40 = v157;
                goto LABEL_46;
              }
            }

            if (v51)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }
        }

        else
        {
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0;
    goto LABEL_14;
  }
}

void sub_6D6850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB3040();
  v8 = sub_AB3040();
  Category = MPCRadioPlaybackErrorGetCategory();

  switch(Category)
  {
    case 3:
      v10 = (a4 + 16);
      break;
    case 2:
      v10 = (a3 + 16);
      break;
    case 1:
      v10 = (a2 + 16);
      break;
    default:
      return;
  }

  swift_beginAccess();
  *v10 = 1;
}

void sub_6D68F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_6DCF10;
  *(v13 + 24) = v12;
  v15[4] = sub_3F328C;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_444B84;
  v15[3] = &block_descriptor_144_0;
  v14 = _Block_copy(v15);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_6D6A7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = sub_AB9260();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = sub_AB9260();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void sub_6D6B4C(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void sub_6D6BE4(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = sub_AB3470();
  v4 = *(v48 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 actions];
  sub_13C80(0, &unk_E13058, UIAlertAction_ptr);
  v8 = sub_AB9760();

  if (v8 >> 62)
  {
    v9 = sub_ABB060();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_21:

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  v41 = v2;
  v42 = a1;
  v10 = 0;
  v43 = (v4 + 8);
  v44 = v8 & 0xC000000000000001;
  v11 = _swiftEmptyArrayStorage;
  v45 = v9;
  v46 = v8;
  do
  {
    if (v44)
    {
      v12 = sub_ABAE20();
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 handler];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v14 = sub_29BBE4;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 title];
    if (v16)
    {
      v17 = v16;
      v18 = sub_AB92A0();
      v49 = v19;
      v50 = v18;
    }

    else
    {
      v49 = 0xE000000000000000;
      v50 = 0;
    }

    v20 = swift_allocObject();
    v20[2] = v14;
    v20[3] = v15;
    v20[4] = v13;
    sub_307CC(v14, v15);
    v21 = v13;
    v22 = v47;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_AB3440();
    v25 = v24;
    (*v43)(v22, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_506A20(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = sub_506A20((v26 > 1), v27 + 1, 1, v11);
    }

    ++v10;

    sub_17654(v14, v15);
    *(v11 + 2) = v27 + 1;
    v28 = &v11[56 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v29 = v49;
    *(v28 + 6) = v50;
    *(v28 + 7) = v29;
    v28[64] = 2;
    *(v28 + 9) = &unk_B21A68;
    *(v28 + 10) = v20;
    v8 = v46;
  }

  while (v45 != v10);

  v2 = v41;
  a1 = v42;
LABEL_22:
  v30 = [v2 title];
  if (v30)
  {
    v31 = v30;
    v32 = sub_AB92A0();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v2 message];
  if (v35)
  {
    v36 = v35;
    v37 = sub_AB92A0();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *a1 = v32;
  *(a1 + 8) = v34;
  *(a1 + 16) = v37;
  *(a1 + 24) = v39;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
}

void sub_6D6FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  type metadata accessor for MPCError(0);
  if (swift_dynamicCast())
  {
    sub_6DCA54(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);
    sub_AB2FF0();

    switch(v7)
    {
      case 10:
        swift_beginAccess();
        *(a4 + 16) = 1;
        break;
      case 11:
        swift_beginAccess();
        *(a3 + 16) = 1;
        break;
      case 17:
        swift_beginAccess();
        *(a2 + 16) = 1;
        break;
    }
  }
}

uint64_t sub_6D7120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_6D71C0, 0, 0);
}

uint64_t sub_6D71C0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = sub_AB9990();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v0 + 112) = *v3;
  *(v0 + 128) = v3[1];
  v5 = *(v3 + 5);
  v6 = *(v3 + 6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  *(v7 + 80) = *(v3 + 6);
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  v11 = *(v2 + 64);
  v12 = *(v2 + 48);
  v13 = *(v2 + 16);
  *(v7 + 120) = *(v2 + 32);
  *(v7 + 136) = v12;
  *(v7 + 152) = v11;
  *(v7 + 104) = v13;
  *(v7 + 88) = *v2;
  sub_C8C3C(v0 + 112, v0 + 144);
  sub_C8C3C(v0 + 128, v0 + 160);
  sub_307CC(v5, v6);
  sub_15F84(v2, v0 + 16, &qword_E0F9B0, &qword_B1EF00);
  sub_5E89D8(0, 0, v1, &unk_B21A78, v7);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_6D7388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = sub_17BD0;

    return v12(a4, a5);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

double PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DC0DC, v10);

  return result;
}

void sub_6D767C(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void, __n128), uint64_t a5)
{
  v121 = a2;
  v9 = sub_AB3470();
  v10 = *(v9 - 8);
  v116 = v9;
  v117 = v10;
  __chkstk_darwin();
  v115 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v114 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_AB9250();
  v13 = *(v120 - 8);
  __chkstk_darwin();
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v99 - v16;
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v18 = sub_AB4BC0();
  __swift_project_value_buffer(v18, static Logger.playbackController);
  v19 = sub_AB4BA0();
  v20 = sub_AB9F30();
  v21 = os_log_type_enabled(v19, v20);
  v119 = a3;
  v113 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v118 = v13;
    v23 = v22;
    v112 = swift_slowAlloc();
    *&v136[0] = v112;
    *v23 = 136446210;
    v24 = a1;
    *&v128 = a1;
    type metadata accessor for MPCExplicitContentAuthorizationReason(0);
    v25 = sub_AB9350();
    v27 = v17;
    v28 = sub_500C84(v25, v26, v136);
    v29 = a5;
    v30 = a4;

    *(v23 + 4) = v28;
    v17 = v27;
    a3 = v119;
    _os_log_impl(&dword_0, v19, v20, "requiresAuthorizationToPlay with reason=%{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);

    v13 = v118;

    if (v24 != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v38 = a1;
    v29 = a5;
    v30 = a4;
    if (v38 != 2)
    {
LABEL_5:
      if (qword_E0CC60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v128);

      v138 = v132;
      v139 = v133;
      v140 = v134;
      v141 = v135;
      v136[0] = v128;
      v136[1] = v129;
      v136[2] = v130;
      v137 = v131;
      v31 = v132;
      if (!v132 || (v32 = v139) == 0)
      {
        v118 = v29;
        v119 = v30;
        sub_AB91E0();
        v45 = v113;
        v112 = *(v13 + 16);
        v112(v113, v17, v120);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v46 = qword_E71B20;
        sub_AB3550();
        v47 = v46;
        v48 = sub_AB9320();
        v110 = v49;
        v111 = v48;
        v50 = *(v13 + 8);
        v51 = v120;
        v50(v17, v120);
        v52 = v115;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v53 = sub_AB3440();
        v108 = v54;
        v109 = v53;
        (*(v117 + 8))(v52, v116);
        sub_AB91E0();
        v112(v45, v17, v51);
        sub_AB3550();
        v55 = sub_AB9320();
        v57 = v56;
        v50(v17, v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_AF4EC0;
        v59 = v108;
        *(v58 + 32) = v109;
        *(v58 + 40) = v59;
        v60 = v110;
        *(v58 + 48) = v111;
        *(v58 + 56) = v60;
        *(v58 + 64) = 2;
        *(v58 + 72) = 0;
        *(v58 + 80) = 0;
        v123 = 0uLL;
        *&v124 = v55;
        *(&v124 + 1) = v57;
        LOBYTE(v125) = 0;
        *(&v125 + 1) = 0;
        LOBYTE(v126) = 1;
        *(&v126 + 1) = v58;
        v127 = 0;
        v61 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
        v62 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
        __swift_project_boxed_opaque_existential_1((v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
        v130 = v125;
        v131 = v126;
        *&v132 = v127;
        v128 = v123;
        v129 = v124;
        BYTE8(v132) = 0;
        v63 = *(v62 + 8);

        sub_5B3FC4(&v123, v122);
        v63(&v128, v61, v62);
        sub_6DC698(&v128);
        v119(0, 0);
        sub_111904(&v123);

        goto LABEL_19;
      }

      v107 = *(&v138 + 1);
      v108 = *(&v137 + 1);
      v33 = objc_opt_self();

      v109 = v32;

      v34 = [v33 standardUserDefaults];
      *&v123 = 0xD000000000000012;
      *(&v123 + 1) = 0x8000000000B48590;
      sub_4FD6CC();
      NSUserDefaults.subscript.getter(&v128);

      v110 = v31;
      if (*(&v129 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
        v35 = swift_dynamicCast();
        v36 = v119;
        if (v35)
        {
          v37 = v123;
LABEL_24:
          v64 = [v36 cloudUniversalLibraryID];
          if (!v64)
          {

LABEL_29:
            sub_AB91E0();
            v70 = v113;
            v103 = *(v13 + 16);
            v104 = v13 + 16;
            v103(v113, v17, v120);
            if (qword_E0CB80 != -1)
            {
              swift_once();
            }

            v71 = qword_E71B20;
            v72 = qword_E71B20;
            v101 = v71;
            v73 = v72;
            sub_AB3550();
            v74 = v73;
            v106 = sub_AB9320();
            v112 = v75;
            v76 = *(v13 + 8);
            v118 = v13 + 8;
            v100 = v76;
            v77 = v120;
            v76(v17, v120);
            v78 = swift_allocObject();
            v105 = v78;
            v78[2] = v36;
            v78[3] = v30;
            v78[4] = v29;
            v79 = v36;

            v80 = v115;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v102 = sub_AB3440();
            v111 = v81;
            v119 = v30;
            v82 = v116;
            v83 = v17;
            v84 = *(v117 + 8);
            v84(v80, v116);
            sub_AB91E0();
            v103(v70, v83, v77);
            sub_AB3550();
            v117 = sub_AB9320();
            v114 = v85;
            v100(v83, v77);
            v86 = v82;
            v87 = swift_allocObject();
            *(v87 + 16) = v119;
            *(v87 + 24) = v29;

            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v88 = sub_AB3440();
            v90 = v89;
            v120 = v89;
            v84(v80, v86);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_AF85F0;
            v93 = v111;
            v92 = v112;
            *(v91 + 32) = v102;
            *(v91 + 40) = v93;
            v94 = v105;
            *(v91 + 48) = v106;
            *(v91 + 56) = v92;
            *(v91 + 64) = 2;
            *(v91 + 72) = &unk_B219E8;
            *(v91 + 80) = v94;
            *(v91 + 88) = v88;
            *(v91 + 96) = v90;
            v95 = v114;
            *(v91 + 104) = v117;
            *(v91 + 112) = v95;
            *(v91 + 120) = 0;
            *(v91 + 128) = &unk_B219F8;
            *(v91 + 136) = v87;
            LOBYTE(v128) = 1;
            *&v123 = v108;
            *(&v123 + 1) = v110;
            *&v124 = v107;
            *(&v124 + 1) = v109;
            LOBYTE(v125) = 0;
            *(&v125 + 1) = 0;
            LOBYTE(v126) = 1;
            *(&v126 + 1) = v91;
            v127 = 0;
            v96 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
            v97 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
            v121 = __swift_project_boxed_opaque_existential_1((v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v96);
            v130 = v125;
            v131 = v126;
            *&v132 = v127;
            v128 = v123;
            v129 = v124;
            BYTE8(v132) = 0;
            v98 = *(v97 + 8);

            sub_5B3FC4(&v123, v122);
            v98(&v128, v96, v97);
            sub_70C54(v136);
            sub_111904(&v123);

            sub_6DC698(&v128);
            return;
          }

          v118 = v13;

          v65 = [v36 cloudUniversalLibraryID];
          if (v65)
          {
            v66 = v65;
            v67 = sub_AB92A0();
            v69 = v68;

            *&v128 = v67;
            *(&v128 + 1) = v69;
            __chkstk_darwin();
            *(&v99 - 2) = &v128;
            LOBYTE(v66) = sub_1B39BC(sub_109BB0, (&v99 - 4), v37);

            v13 = v118;
            v36 = v119;
            if (v66)
            {

              v30(1, 0);
LABEL_19:
              sub_70C54(v136);
              return;
            }

            goto LABEL_29;
          }

LABEL_33:
          __break(1u);
          return;
        }
      }

      else
      {
        sub_12E1C(&v128, &qword_E11F60, &unk_B1BC70);
        v36 = v119;
      }

      v37 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }
  }

  v39 = [a3 modelGenericObject];
  if (!v39)
  {
    __break(1u);
    goto LABEL_33;
  }

  v40 = v39;
  v41 = [v39 flattenedGenericObject];

  if (v41)
  {
    v42 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  sub_6D8860(v42, v44, v30, v29);
}

uint64_t sub_6D8378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_6D839C, 0, 0);
}

uint64_t sub_6D839C()
{
  v20 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = sub_AB92A0();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x8000000000B48590;
  v8 = sub_4FD6CC();
  NSUserDefaults.subscript.getter((v0 + 16));

  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 48);
      v10 = *(v9 + 2);
      if (v10 > 0x3E7)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if (!isUniquelyReferenced_nonNull_native || *(v9 + 3) <= 0x7CDuLL)
        {
          v9 = sub_506314(isUniquelyReferenced_nonNull_native, v10, 1, v9);
          v18 = v9;
        }

        sub_450704(0, v10 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E11F60, &unk_B1BC70);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_506314(0, *(v9 + 2) + 1, 1, v9);
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_506314((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[16 * v13];
  *(v14 + 4) = v3;
  *(v14 + 5) = v5;
  v15 = [v6 standardUserDefaults];
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
  v19[0] = v9;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000000B48590;
  NSUserDefaults.subscript.setter(v19, v0 + 16, &type metadata for String, v8);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_6D8640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_6D8660, 0, 0);
}

uint64_t sub_6D8660()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_6D87F0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_AB3040();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_6D8860(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v73 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v69 = &v64 - v8;
  v72 = sub_AB31C0();
  v9 = *(v72 - 8);
  __chkstk_darwin();
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v64 - v11;
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v71 = sub_AB4BC0();
  __swift_project_value_buffer(v71, static Logger.playbackController);

  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();

  v15 = os_log_type_enabled(v13, v14);
  v68 = a1;
  if (v15)
  {
    v16 = a2;
    v17 = v12;
    v18 = v9;
    v19 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v74[0] = v66;
    *v19 = 136446210;
    v20 = v5;
    v21 = v19;
    *&v79[0] = a1;
    *(&v79[0] + 1) = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
    v22 = sub_AB9350();
    v24 = sub_500C84(v22, v23, v74);
    v9 = v18;
    v12 = v17;
    a2 = v16;

    v25 = v21;
    *(v21 + 1) = v24;
    v26 = v72;
    v5 = v20;
    _os_log_impl(&dword_0, v13, v14, "Presenting Age Verification with model identifier=%{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
  }

  else
  {

    v26 = v72;
  }

  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v74);

  v79[4] = v75;
  v79[5] = v76;
  v79[6] = v77;
  v79[7] = v78;
  v79[0] = v74[0];
  v79[1] = v74[1];
  v79[2] = v74[2];
  v79[3] = v74[3];
  sub_70C54(v79);
  if (BYTE1(v79[0]) != 1)
  {
    v32 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v33 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
    v34 = sub_601D74(v74);
    BYTE8(v75) = 0;
    (*(v33 + 8))(v74, v32, v33, v34);
    sub_6DC698(v74);
    if (qword_E0CEA8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, qword_E12E50);
    v28 = sub_AB4BA0();
    v29 = sub_AB9F30();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (qword_E0D568 != -1)
  {
    swift_once();
  }

  v27 = v69;
  ExplicitRestrictionsController.accountVerificationURL.getter(v69);
  if ((*(v9 + 48))(v27, 1, v26) == 1)
  {
    sub_12E1C(v27, &qword_E0DC30, &unk_B15160);
    if (qword_E0CEA8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, qword_E12E50);
    v28 = sub_AB4BA0();
    v29 = sub_AB9F30();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "accountVerificationURL is missing. Age Verification cannot proceed.";
LABEL_20:
    _os_log_impl(&dword_0, v28, v29, v31, v30, 2u);

LABEL_21:

    if (v73)
    {
      v73(0, 0);
    }

    return;
  }

  v35 = *(v9 + 32);
  v35(v12, v27, v26);
  v36 = qword_E0CEA8;
  v65 = v5;
  if (a2)
  {
    v69 = v12;

    if (v36 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, qword_E12E50);
    v37 = sub_AB4BA0();
    v38 = sub_AB9F10();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "modelObjectIdentifier parameters found for age verification context", v39, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FA0, &qword_B1B4C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 0x64496D616461;
    v41 = inited + 32;
    v42 = v68;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v42;
    *(inited + 56) = a2;
    v43 = sub_529834(inited);
    swift_setDeallocating();
    sub_12E1C(v41, &qword_E0FCF0, &qword_B1B4D0);
    v44 = v67;
    v12 = v69;
    URL.parametrize(_:)(v43, v67);

    (*(v9 + 8))(v12, v26);
    v35(v12, v44, v26);
    v45 = v9;
  }

  else
  {
    if (qword_E0CEA8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v71, qword_E12E50);
    v46 = sub_AB4BA0();
    v47 = sub_AB9F30();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "modelObjectIdentifier parameters missing for age verification context", v48, 2u);
    }

    v45 = v9;
  }

  v49 = [objc_allocWithZone(_s22AgeVerificationWrapperCMa()) init];
  v50 = swift_allocObject();
  v51 = v65;
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  v53 = v73;
  v54 = v70;
  *(v52 + 2) = v73;
  *(v52 + 3) = v54;
  *(v52 + 4) = v50;
  v55 = &v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v56 = *&v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v57 = *&v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];
  *v55 = sub_6DC748;
  v55[1] = v52;
  sub_307CC(v53, v54);

  sub_17654(v56, v57);

  v58 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v49;
  v59 = v49;

  v60 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v61 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v60);
  v62 = *(v61 + 16);
  v63 = v59;
  v62(v12, v63, v60, v61);

  (*(v45 + 8))(v12, v72);
}