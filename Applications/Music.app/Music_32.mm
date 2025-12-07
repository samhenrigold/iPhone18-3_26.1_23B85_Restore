double sub_1003AB4F4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v21[-1] - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v7 = Strong;
      sub_1000089F8(a1, &v22, &unk_101183F30, qword_100EBF960);
      if (!*(&v23 + 1))
      {

        sub_1000095E8(&v22, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v8 = v21[0];
        v9 = v21[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v10 = v22;
        v11 = BYTE1(v22);
        v12 = *(v7 + 48);
        swift_beginAccess();
        v13 = v12[3];
        v23 = v12[2];
        v24 = v13;
        v14 = v12[5];
        v25 = v12[4];
        v26 = v14;
        v22 = v12[1];
        if (v11)
        {
          v15 = 256;
        }

        else
        {
          v15 = 0;
        }

        sub_10030DC78(&v22, v21);
        v16 = sub_100376264(v15 | v10);
        sub_10030DCB0(&v22);
        if ((v16 & 0xFF00) != 0x200)
        {
          v17 = type metadata accessor for TaskPriority();
          (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
          type metadata accessor for MainActor();

          v18 = static MainActor.shared.getter();
          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          *(v19 + 24) = &protocol witness table for MainActor;
          *(v19 + 32) = v7;
          *(v19 + 40) = v16;
          *(v19 + 41) = HIBYTE(v16) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8B90, v19);
        }

        sub_10002C064(v8, v9);
      }
    }
  }

  return result;
}

double sub_1003AB960(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, void *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v27 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v14 = Strong;
      sub_1000089F8(a1, &v30, &unk_101183F30, qword_100EBF960);
      if (!*(&v31 + 1))
      {

        sub_1000095E8(&v30, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v15 = v29[0];
        v16 = v29[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        v28 = v15;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v27 = v16;

        v17 = v30;
        v18 = BYTE1(v30);
        v19 = *(v14 + 48);
        swift_beginAccess();
        v20 = *(v19 + 80);
        v33 = *(v19 + 64);
        v34 = v20;
        v35 = *(v19 + 96);
        v36 = *(v19 + 112);
        v21 = *(v19 + 32);
        v30 = *(v19 + 16);
        v31 = v21;
        v32 = *(v19 + 48);
        if (v18)
        {
          v22 = 256;
        }

        else
        {
          v22 = 0;
        }

        a3(&v30, v29);
        v23 = sub_1003768C8(v22 | v17);
        a4(&v30);
        if ((v23 & 0xFF00) != 0x200)
        {
          v24 = type metadata accessor for TaskPriority();
          (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
          type metadata accessor for MainActor();

          v25 = static MainActor.shared.getter();
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          *(v26 + 24) = &protocol witness table for MainActor;
          *(v26 + 32) = v14;
          *(v26 + 40) = v23;
          *(v26 + 41) = HIBYTE(v23) & 1;
          sub_1001F4CB8(0, 0, v11, a6, v26);
        }

        sub_10002C064(v28, v27);
      }
    }
  }

  return result;
}

double sub_1003ABDD4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v23[-1] - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v7 = Strong;
      sub_1000089F8(a1, &v24, &unk_101183F30, qword_100EBF960);
      if (!*(&v25 + 1))
      {

        sub_1000095E8(&v24, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v8 = v23[0];
        v9 = v23[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v10 = v24;
        v11 = BYTE1(v24);
        v12 = *(v7 + 48);
        swift_beginAccess();
        v13 = v12[4];
        v26 = v12[3];
        v27 = v13;
        v14 = v12[6];
        v28 = v12[5];
        v29 = v14;
        v15 = v12[2];
        v24 = v12[1];
        v25 = v15;
        if (v11)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        sub_1001103E0(&v24, v23);
        sub_1003754F0(v16 | v10);
        v18 = v17;
        sub_100110418(&v24);
        if ((v18 & 0xFF00) != 0x200)
        {
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
          type metadata accessor for MainActor();

          v20 = static MainActor.shared.getter();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = &protocol witness table for MainActor;
          *(v21 + 32) = v7;
          *(v21 + 40) = v18;
          *(v21 + 41) = HIBYTE(v18) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8BD8, v21);
        }

        sub_10002C064(v8, v9);
      }
    }
  }

  return result;
}

double sub_1003AC240(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = v20 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v7 = Strong;
      sub_1000089F8(a1, &v21, &unk_101183F30, qword_100EBF960);
      if (!*(&v22 + 1))
      {

        sub_1000095E8(&v21, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v8 = v20[0];
        v9 = v20[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v10 = v21;
        v11 = BYTE1(v21);
        v12 = *(v7 + 48);
        swift_beginAccess();
        v13 = *(v12 + 48);
        v22 = *(v12 + 32);
        v23 = v13;
        v24 = *(v12 + 64);
        v25 = *(v12 + 80);
        v21 = *(v12 + 16);
        if (v11)
        {
          v14 = 256;
        }

        else
        {
          v14 = 0;
        }

        sub_10021817C(&v21, v20);
        sub_100376548(v14 | v10);
        v16 = v15;
        sub_1003BECBC(&v21);
        if ((v16 & 0xFF00) != 0x200)
        {
          v17 = type metadata accessor for TaskPriority();
          (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
          type metadata accessor for MainActor();

          v18 = static MainActor.shared.getter();
          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          *(v19 + 24) = &protocol witness table for MainActor;
          *(v19 + 32) = v7;
          *(v19 + 40) = v16;
          *(v19 + 41) = HIBYTE(v16) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8BA8, v19);
        }

        sub_10002C064(v8, v9);
      }
    }
  }

  return result;
}

uint64_t sub_1003AC6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = _s10TVEpisodesVMa(0);
  *(v5 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AC778, v7, v6);
}

uint64_t sub_1003AC778()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v3 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s10TVEpisodesVMa);
  v7 = &v1[*(v4 + 36)];
  *v7 = v2;
  v7[1] = HIBYTE(v2) & 1;
  sub_10037745C(v1);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003AC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = _s9PlaylistsVMa(0);
  *(v5 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AC92C, v7, v6);
}

uint64_t sub_1003AC92C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v3 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s9PlaylistsVMa);
  v7 = (v1 + *(v4 + 44));
  v8 = *v7;
  v9 = v7[1];
  *v7 = v2;
  v7[1] = HIBYTE(v2) & 1;
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  sub_10018F8E4(v10 | v8);
  sub_1003777F4(v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003ACA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 128) = a5;
  *(v5 + 88) = a4;
  _s11MusicVideosV5ScopeOMa(0);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = _s11MusicVideosVMa(0);
  *(v5 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003ACB30, v7, v6);
}

uint64_t sub_1003ACB30()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 128);

  v5 = *(v3 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s11MusicVideosVMa);
  v7 = (v1 + *(v2 + 40));
  v8 = v7[1];
  v9 = *v7;
  *v7 = v4;
  v10 = (v4 & 0x100) >> 8;
  v7[1] = (v4 & 0x100) >> 8;
  if ((sub_1006B8B0C(v4, v9) & 1) == 0 || ((((v4 & 0x100) == 0) ^ v8) & 1) == 0)
  {
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 128);
    v15 = [objc_opt_self() standardUserDefaults];
    *(v0 + 40) = &_s11ContentSortVN;
    *(v0 + 48) = sub_100110448();
    *(v0 + 56) = sub_10011049C();
    *(v0 + 16) = v14;
    *(v0 + 17) = v10;
    sub_1003C16C8(v11 + *(v12 + 28), v13, _s11MusicVideosV5ScopeOMa);
    v16 = type metadata accessor for Artist();
    if ((*(*(v16 - 8) + 48))(v13, 1, v16) != 1)
    {
      sub_1003C1730(*(v0 + 96), _s11MusicVideosV5ScopeOMa);
    }

    v17._countAndFlagsBits = 0x53746E65746E6F43;
    v17._object = 0xEB0000000074726FLL;
    String.append(_:)(v17);

    NSUserDefaults.encodeValue(_:forKey:)((v0 + 16));

    sub_10000959C((v0 + 16));
  }

  sub_100377E84(*(v0 + 112));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003ACDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = _s6AlbumsVMa(0);
  *(v5 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003ACE88, v7, v6);
}

uint64_t sub_1003ACE88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v3 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s6AlbumsVMa);
  v7 = (v1 + *(v4 + 36));
  v8 = *v7;
  v9 = v7[1];
  *v7 = v2;
  v7[1] = HIBYTE(v2) & 1;
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  sub_10028ACDC(v10 | v8);
  sub_100378808(v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003ACF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 296) = a5;
  *(v5 + 280) = a4;
  type metadata accessor for MainActor();
  *(v5 + 288) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AD030, v7, v6);
}

uint64_t sub_1003AD030()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  v3 = *(v2 + 48);
  swift_beginAccess();
  *(v0 + 16) = v3[1];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  *(v0 + 64) = v3[4];
  *(v0 + 80) = v6;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  v7 = v3[1];
  v8 = v3[3];
  *(v0 + 112) = v3[2];
  *(v0 + 128) = v8;
  *(v0 + 96) = v7;
  v9 = *(v3 + 66);
  *(v0 + 160) = v3[5];
  *(v0 + 146) = v9;
  *(v0 + 144) = v1;
  *(v0 + 145) = HIBYTE(v1) & 1;
  sub_10030DC78(v0 + 16, v0 + 176);
  sub_100378C30((v0 + 96));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003AD10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 368) = a5;
  *(v5 + 352) = a4;
  type metadata accessor for MainActor();
  *(v5 + 360) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AD1A8, v7, v6);
}

uint64_t sub_1003AD1A8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = *(v3 + 64);
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  *(v0 + 112) = *(v3 + 112);
  *(v0 + 80) = v7;
  *(v0 + 96) = v8;
  *(v0 + 64) = v6;
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  *(v0 + 152) = *(v3 + 48);
  *(v0 + 136) = v10;
  *(v0 + 120) = v9;
  v11 = *(v3 + 58);
  v12 = *(v3 + 74);
  v13 = *(v3 + 90);
  *(v0 + 208) = *(v3 + 104);
  *(v0 + 194) = v13;
  *(v0 + 178) = v12;
  *(v0 + 162) = v11;
  *(v0 + 160) = v1;
  *(v0 + 161) = HIBYTE(v1) & 1;
  sub_100363198(v0 + 16, v0 + 224);
  sub_100378EFC((v0 + 120));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003AD2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 368) = a5;
  *(v5 + 352) = a4;
  type metadata accessor for MainActor();
  *(v5 + 360) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AD344, v7, v6);
}

uint64_t sub_1003AD344()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = *(v3 + 64);
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  *(v0 + 112) = *(v3 + 112);
  *(v0 + 80) = v7;
  *(v0 + 96) = v8;
  *(v0 + 64) = v6;
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  *(v0 + 152) = *(v3 + 48);
  *(v0 + 136) = v10;
  *(v0 + 120) = v9;
  v11 = *(v3 + 58);
  v12 = *(v3 + 74);
  v13 = *(v3 + 90);
  *(v0 + 208) = *(v3 + 104);
  *(v0 + 194) = v13;
  *(v0 + 178) = v12;
  *(v0 + 162) = v11;
  *(v0 + 160) = v1;
  *(v0 + 161) = HIBYTE(v1) & 1;
  sub_1003BF504(v0 + 16, v0 + 224);
  sub_100379288((v0 + 120));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003AD444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 344) = a5;
  *(v5 + 328) = a4;
  type metadata accessor for MainActor();
  *(v5 + 336) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AD4E0, v7, v6);
}

uint64_t sub_1003AD4E0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 344);

  v3 = *(v1 + 48);
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 96);
  v6 = *(v3 + 64);
  *(v0 + 48) = *(v3 + 48);
  v7 = *(v3 + 32);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v7;
  *(v0 + 80) = v4;
  *(v0 + 96) = v5;
  *(v0 + 64) = v6;
  v8 = *(v0 + 57);
  LOBYTE(v1) = *(v0 + 56);
  v17 = *(v3 + 48);
  v15 = *(v3 + 16);
  v16 = *(v3 + 32);
  *&v20[14] = *(v3 + 104);
  v19 = *(v3 + 74);
  *v20 = *(v3 + 90);
  v18 = *(v3 + 58);
  sub_1001103E0(v0 + 16, v0 + 208);
  v9 = (v2 & 0x100) >> 8;
  if ((sub_1006B8B0C(v2, v1) & 1) == 0 || ((((v2 & 0x100) == 0) ^ v8) & 1) == 0)
  {
    v10 = *(v0 + 344);
    v11 = [objc_opt_self() standardUserDefaults];
    *(v0 + 232) = &_s11ContentSortVN;
    *(v0 + 240) = sub_100110448();
    *(v0 + 248) = sub_10011049C();
    *(v0 + 208) = v10;
    *(v0 + 209) = v9;
    NSUserDefaults.encodeValue(_:forKey:)((v0 + 208));

    sub_10000959C((v0 + 208));
  }

  *(v0 + 112) = v15;
  *(v0 + 128) = v16;
  *(v0 + 154) = v18;
  v12 = *(v0 + 344);
  *(v0 + 144) = v17;
  *(v0 + 152) = v12;
  *(v0 + 153) = v9;
  *(v0 + 170) = v19;
  *(v0 + 186) = *v20;
  *(v0 + 200) = *&v20[14];
  sub_100379614((v0 + 112));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1003AD6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 368) = a5;
  *(v5 + 352) = a4;
  type metadata accessor for MainActor();
  *(v5 + 360) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AD73C, v7, v6);
}

uint64_t sub_1003AD73C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = *(v3 + 64);
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  *(v0 + 112) = *(v3 + 112);
  *(v0 + 80) = v7;
  *(v0 + 96) = v8;
  *(v0 + 64) = v6;
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  *(v0 + 152) = *(v3 + 48);
  *(v0 + 136) = v10;
  *(v0 + 120) = v9;
  v11 = *(v3 + 58);
  v12 = *(v3 + 74);
  v13 = *(v3 + 90);
  *(v0 + 208) = *(v3 + 104);
  *(v0 + 194) = v13;
  *(v0 + 178) = v12;
  *(v0 + 162) = v11;
  *(v0 + 160) = v1;
  *(v0 + 161) = HIBYTE(v1) & 1;
  sub_1003BF8F0(v0 + 16, v0 + 224);
  sub_10037993C((v0 + 120));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003AD83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 82) = a5;
  *(v5 + 256) = a4;
  type metadata accessor for MainActor();
  *(v5 + 264) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AD8D8, v7, v6);
}

uint64_t sub_1003AD8D8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 82);

  v3 = *(v1 + 48);
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = *(v3 + 32);
  *(v0 + 48) = *(v3 + 48);
  v7 = *(v3 + 16);
  *(v0 + 80) = v5;
  *(v0 + 64) = v4;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v8 = *(v0 + 57);
  v22 = *(v3 + 48);
  v20 = *(v3 + 16);
  v21 = *(v3 + 32);
  v9 = *(v3 + 58);
  v10 = *(v3 + 73);
  LOBYTE(v3) = *(v0 + 56);
  *&v23[15] = v10;
  *v23 = v9;
  sub_10021817C(v0 + 16, v0 + 160);
  v11 = (v2 & 0x100) >> 8;
  if ((sub_1006B8B0C(v2, v3) & 1) == 0 || ((((v2 & 0x100) == 0) ^ v8) & 1) == 0)
  {
    v12 = *(v0 + 82);
    v13 = objc_opt_self();
    v14 = [v13 standardUserDefaults];
    *(v0 + 184) = &_s11ContentSortVN;
    *(v0 + 192) = sub_100110448();
    *(v0 + 200) = sub_10011049C();
    *(v0 + 160) = v12;
    *(v0 + 161) = v11;
    NSUserDefaults.encodeValue(_:forKey:)((v0 + 160));

    sub_10000959C((v0 + 160));
    v15 = [v13 standardUserDefaults];
    v16 = sub_10045E2D4(v12 & 0x1FF);
    NSUserDefaults.setSortType(_:for:keyDomain:)(v16, 192, 0, 0);
  }

  v17 = *(v0 + 82);
  *(v0 + 88) = v20;
  *(v0 + 104) = v21;
  *(v0 + 120) = v22;
  *(v0 + 128) = v17;
  *(v0 + 129) = v11;
  *(v0 + 130) = *v23;
  *(v0 + 145) = *&v23[15];
  sub_100379CC8((v0 + 88));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003ADAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 368) = a5;
  *(v5 + 352) = a4;
  type metadata accessor for MainActor();
  *(v5 + 360) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003ADB64, v7, v6);
}

uint64_t sub_1003ADB64()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = *(v3 + 64);
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  *(v0 + 112) = *(v3 + 112);
  *(v0 + 80) = v7;
  *(v0 + 96) = v8;
  *(v0 + 64) = v6;
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  *(v0 + 152) = *(v3 + 48);
  *(v0 + 136) = v10;
  *(v0 + 120) = v9;
  v11 = *(v3 + 58);
  v12 = *(v3 + 74);
  v13 = *(v3 + 90);
  *(v0 + 208) = *(v3 + 104);
  *(v0 + 194) = v13;
  *(v0 + 178) = v12;
  *(v0 + 162) = v11;
  *(v0 + 160) = v1;
  *(v0 + 161) = HIBYTE(v1) & 1;
  sub_10003D868(v0 + 16, v0 + 224);
  sub_100379FBC(v0 + 120);
  v14 = *(v0 + 8);

  return v14();
}

void sub_1003ADC64(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v7(a3, a4);
}

void *sub_1003ADD34(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_101184900, &qword_100EC8D50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1003ADDB8(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&unk_10118CF40, &qword_100EC8BB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1003ADE48(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_10118D178, &qword_100EC8EB8);
  v4 = *(sub_10010FC20(&unk_10118D180, &qword_100EC8EC0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003ADF50(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_10118D168, &unk_100EC8EA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1003ADFE4(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1003AE094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10010FC20(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003AE190(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_1003ADFE4(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void *sub_1003AE22C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1003ADFE4(v2, 0);

    sub_100197870(&v6, v3 + 4, v2, v1);
    v1 = v4;
    sub_10005C9F8(v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

unint64_t sub_1003AE2DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_10049A9C4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1003AE3B0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1003AE3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for MusicPin();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000095E8(v25, &unk_1011972E0, &qword_100ED5EF0);
  }

  if (v18 < 1)
  {
    return sub_1000095E8(v25, &unk_1011972E0, &qword_100ED5EF0);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1000095E8(v25, &unk_1011972E0, &qword_100ED5EF0);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1003AE54C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AE5C4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), (swift_stdlib_isStackAllocationSafe() & 1) != 0))
  {
    __chkstk_darwin();
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1003B1758(v9, v7, isStackAllocationSafe, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1003BC968(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

void sub_1003AE764(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for AudioVariant();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&unk_10118D200, &unk_100EC8F00);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10003D8C4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1003AEAC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011801F0, &qword_100EBA538);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003AED74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_10118D160, &qword_100EC8EA0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      sub_100198C50(*(v3 + 48) + 96 * (v11 | (v5 << 6)), v15);
      sub_10066FA68(v15, v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v3 + 32);
    if (v14 >= 64)
    {
      bzero((v3 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_1003AEEF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101183258, &qword_100EBED90);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17 >> 7);
      Hasher._combine(_:)(v17 & 1);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003AF14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101180270, &qword_100EBA5A8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003AF3AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&unk_101180440, &unk_100EC9180);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      sub_10003D8C4(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003AF640(uint64_t a1)
{
  v2 = v1;
  v31 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&qword_101183250, &qword_100EBED88);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      sub_1003C1790(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for Lyrics.TextLine);
      Hasher.init(_seed:)();
      Lyrics.TextLine.hash(into:)(v32);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_1003C1790(v4, *(v7 + 48) + v15 * v19, type metadata accessor for Lyrics.TextLine);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1003AF948(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Song();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&unk_10118D030, &qword_100EBED60);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10003D8C4(&unk_10118D020, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1003AFCA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101183208, &unk_100EC8F10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003AFEC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011831F0, &qword_100EC8BB0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003B0128(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Album();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&qword_101183240, &qword_100EBED78);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10003D8C4(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1003B0484(uint64_t a1)
{
  v2 = *v1;
  sub_10010FC20(&qword_101180260, &qword_100EBA598);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
LABEL_13:
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      v14 = Hasher._finalize()();
      v15 = -1 << *(v4 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v11 + 8 * v17);
          if (v21 != -1)
          {
            v12 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v2 + 32);
    if (v22 >= 64)
    {
      bzero((v2 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v22;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

void sub_1003B069C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10010FC20(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1003B08E4(uint64_t a1)
{
  v2 = v1;
  v31 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  __chkstk_darwin();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&unk_10118D410, &unk_100EC9170);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      sub_1003C1790(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, _s23QueueSnapshotIdentifierOMa);
      Hasher.init(_seed:)();
      sub_10043538C(v32);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_1003C1790(v4, *(v7 + 48) + v15 * v19, _s23QueueSnapshotIdentifierOMa);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1003B0BEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101180550, &qword_100EBA798);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v19 = (*(v3 + 48) + 32 * (v16 | (v6 << 6)));
      v29 = *v19;
      v30 = v19[1];
      Hasher.init(_seed:)();
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) == 1)
        {
          Hasher._combine(_:)(2uLL);
        }

        else
        {
          Hasher._combine(_:)(0);
          if (*(&v29 + 1))
          {
            Hasher._combine(_:)(1u);
            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }

          String.hash(into:)();
        }
      }

      else
      {
        Hasher._combine(_:)(1uLL);
      }

      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v14 = v29;
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

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v14 = v29;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = (*(v5 + 48) + 32 * v13);
      *v15 = v14;
      v15[1] = v30;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v6 >= v11)
      {
        break;
      }

      v18 = v7[v6];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v10 = (v18 - 1) & v18;
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
}

void sub_1003B0EE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101180240, &qword_100EBA578);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = sub_10047E418();
      Hasher._combine(_:)(v18);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003B114C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011802A0, &qword_100EBA5D0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1003B1538(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10010FC20(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1003B1758(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *(a3 + 16);
  if (!v23)
  {
    v20 = 0;
LABEL_27:

    sub_1003B1EA0(a1, a2, v20, a4);
    return;
  }

  v20 = 0;
  v5 = 0;
  v25 = a4 + 56;
  v22 = a3 + 32;
  while (2)
  {
    v6 = *(v22 + v5++);
    Hasher.init(_seed:)();
    String.hash(into:)();

    v7 = Hasher._finalize()();
    v8 = -1 << *(a4 + 32);
    v9 = v7 & ~v8;
    v10 = v9 >> 6;
    v11 = 1 << v9;
    if (((1 << v9) & *(v25 + 8 * (v9 >> 6))) == 0)
    {
      goto LABEL_3;
    }

    v24 = v5;
    v12 = ~v8;
    while (!*(*(a4 + 48) + v9))
    {
      v14 = 0xE300000000000000;
      v13 = 7105633;
      if (v6)
      {
        goto LABEL_14;
      }

LABEL_10:
      v15 = 0xE300000000000000;
      if (v13 == 7105633)
      {
        goto LABEL_18;
      }

LABEL_19:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v12;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if ((*(v25 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        v5 = v24;
        goto LABEL_3;
      }
    }

    if (*(*(a4 + 48) + v9) == 1)
    {
      v13 = 0x657469726F766166;
    }

    else
    {
      v13 = 0x64616F6C6E776F64;
    }

    v14 = 0xE900000000000073;
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_14:
    if (v6 == 1)
    {
      v16 = 0x657469726F766166;
    }

    else
    {
      v16 = 0x64616F6C6E776F64;
    }

    v15 = 0xE900000000000073;
    if (v13 != v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    if (v14 != v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v18 = a1[v10];
    a1[v10] = v18 | v11;
    v5 = v24;
    if ((v18 & v11) != 0)
    {
LABEL_3:
      if (v5 == v23)
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  if (!__OFADD__(v20, 1))
  {
    ++v20;
    goto LABEL_3;
  }

  __break(1u);
}

void sub_1003B19F0(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, __n128 a6)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v27 = a1;
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v10 << 6);
      v19 = *(*(a3 + 56) + 8 * v18);
      swift_beginAccess();
      v20 = *(v19 + 48);
      v23 = *(v20 + 16);
      v21 = v20 + 16;
      v22 = v23;
      if (!v23 || (*(v21 + 16 * v22 + 8) & 1) == 0)
      {
        *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          sub_1003BA4AC(v27, a2, v9, a3, a4, a5);

          return;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(a3 + 64 + 8 * v10);
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

uint64_t sub_1003B1B78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for AudioVariant();
  v8 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10010FC20(&unk_10118D200, &unk_100EC8F00);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10003D8C4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1003B1EA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10010FC20(&qword_1011801F0, &qword_100EBA538);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003B20F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Album();
  v8 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10010FC20(&qword_101183240, &qword_100EBED78);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10003D8C4(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1003B2420(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10010FC20(&qword_1011831F0, &qword_100EC8BB0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003B2644(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10003D8C4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10003D8C4(&qword_10118D1F8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003B5244(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1003B2924(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  Hasher.init(_seed:)();
  v18 = v2;
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v18;
    sub_1003B54E8(v3, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v19;
    result = 1;
    goto LABEL_21;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE300000000000000;
    v10 = 7105633;
    v12 = v3;
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_7:
    v13 = 0xE300000000000000;
    if (v10 == 7105633)
    {
      goto LABEL_15;
    }

LABEL_16:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_20;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x657469726F766166;
  }

  else
  {
    v10 = 0x64616F6C6E776F64;
  }

  v11 = 0xE900000000000073;
  v12 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v12 == 1)
  {
    v14 = 0x657469726F766166;
  }

  else
  {
    v14 = 0x64616F6C6E776F64;
  }

  v13 = 0xE900000000000073;
  if (v10 != v14)
  {
    goto LABEL_16;
  }

LABEL_15:
  if (v11 != v13)
  {
    goto LABEL_16;
  }

LABEL_20:
  result = 0;
  v3 = *(*(v5 + 48) + v8);
LABEL_21:
  *a1 = v3;
  return result;
}

uint64_t sub_1003B2B50(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100009F78(0, &qword_10118D430, NSString_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10066EE70(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1003B1538(v20 + 1, &qword_101183260, &qword_100EC9190);
    }

    v18 = v8;
    sub_100670AFC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_10118D430, NSString_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1003B5754(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1003B2D98(uint64_t a1, _BYTE *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  v25 = a2;
  v5 = *a2;
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_54:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100198BF4(v25, v28);
    v27 = *v24;
    sub_1003B58E4(v28, v8, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    sub_100198C50(v25, a1);
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    sub_100198BF4(*(v4 + 48) + 96 * v8, v28);
    if (v28[0] > 3u)
    {
      if (v28[0] > 5u)
      {
        if (v28[0] == 6)
        {
          v13 = 0xD00000000000003BLL;
          v14 = "ansliterationSing";
          if (v5 <= 3)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v13 = 0xD000000000000027;
          v14 = "anslationAndTransliteration";
          if (v5 <= 3)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        if (v28[0] == 4)
        {
          v13 = 0xD00000000000002DLL;
        }

        else
        {
          v13 = 0xD000000000000031;
        }

        v14 = "Tooltip.LyricsTranslation";
        if (v28[0] != 4)
        {
          v14 = "Tooltip.LyricsTransliteration";
        }

        if (v5 <= 3)
        {
LABEL_43:
          if (v5 > 1)
          {
            v20 = "com.apple.Music.Tooltip.Sing";
            if (v5 != 2)
            {
              v20 = "Tooltip.SharePlayTogether";
            }

            v19 = 0xD000000000000029;
          }

          else if (v5)
          {
            v19 = 0xD00000000000001CLL;
            v20 = "Tooltip.FavoritingNowPlaying";
          }

          else
          {
            v19 = 0xD00000000000002CLL;
            v20 = "llPlaylists";
          }

          goto LABEL_50;
        }
      }
    }

    else
    {
      v10 = 0xD00000000000002CLL;
      v11 = "com.apple.Music.Tooltip.Sing";
      if (v28[0] != 2)
      {
        v11 = "Tooltip.SharePlayTogether";
      }

      if (v28[0])
      {
        v10 = 0xD00000000000001CLL;
      }

      v12 = "llPlaylists";
      if (v28[0])
      {
        v12 = "Tooltip.FavoritingNowPlaying";
      }

      if (v28[0] <= 1u)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xD000000000000029;
      }

      if (v28[0] <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      if (v5 <= 3)
      {
        goto LABEL_43;
      }
    }

    v15 = 0xD00000000000003BLL;
    if (v5 != 6)
    {
      v15 = 0xD000000000000027;
    }

    v16 = "ansliterationSing";
    if (v5 != 6)
    {
      v16 = "anslationAndTransliteration";
    }

    v17 = 0xD00000000000002DLL;
    if (v5 != 4)
    {
      v17 = 0xD000000000000031;
    }

    v18 = "Tooltip.LyricsTranslation";
    if (v5 != 4)
    {
      v18 = "Tooltip.LyricsTransliteration";
    }

    v19 = v5 <= 5 ? v17 : v15;
    v20 = v5 <= 5 ? v18 : v16;
LABEL_50:
    if (v13 == v19 && (v14 | 0x8000000000000000) == (v20 | 0x8000000000000000))
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100198CAC(v28);
    if (v21)
    {
      goto LABEL_56;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  sub_100198CAC(v28);
LABEL_56:
  sub_100198CAC(v25);
  sub_100198BF4(*(v4 + 48) + 96 * v8, a1);
  return 0;
}

uint64_t sub_1003B3170(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_1003B5CA4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1003B32C0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_10066F060(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1003AF3AC(v17 + 1);
    }

    sub_10066FBF4(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  sub_10003D8C4(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1003B5E24(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_10003D8C4(&qword_101180450, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1003B3560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = a1;
  v5 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  Hasher.init(_seed:)();
  Lyrics.TextLine.hash(into:)(v19);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1003C16C8(*(v8 + 48) + v13 * v11, v7, type metadata accessor for Lyrics.TextLine);
      v14 = static Lyrics.TextLine.== infix(_:_:)(v7, a2);
      sub_1003C1730(v7, type metadata accessor for Lyrics.TextLine);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1003C1730(a2, type metadata accessor for Lyrics.TextLine);
    sub_1003C16C8(*(v8 + 48) + v13 * v11, v18, type metadata accessor for Lyrics.TextLine);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1003C16C8(a2, v7, type metadata accessor for Lyrics.TextLine);
    v19[0] = *v3;
    sub_1003B600C(v7, v11, isUniquelyReferenced_nonNull_native);
    v16 = v18;
    *v3 = v19[0];
    sub_1003C1790(a2, v16, type metadata accessor for Lyrics.TextLine);
    return 1;
  }
}

uint64_t sub_1003B37D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10003D8C4(&unk_10118D020, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10003D8C4(&qword_101185748, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003B63BC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1003B3AB0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1003B6660(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003B3B90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_1003B6780(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1003B3CE0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10003D8C4(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10003D8C4(&unk_101192760, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003B6900(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

BOOL sub_1003B3FC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1003B6BA4(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1003B40A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v18 = a1;
  v5 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  __chkstk_darwin();
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  Hasher.init(_seed:)();
  sub_10043538C(v19);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1003C16C8(*(v8 + 48) + v13 * v11, v7, _s23QueueSnapshotIdentifierOMa);
      v14 = sub_100437274(v7, a2);
      sub_1003C1730(v7, _s23QueueSnapshotIdentifierOMa);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1003C1730(a2, _s23QueueSnapshotIdentifierOMa);
    sub_1003C16C8(*(v8 + 48) + v13 * v11, v18, _s23QueueSnapshotIdentifierOMa);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1003C16C8(a2, v7, _s23QueueSnapshotIdentifierOMa);
    v19[0] = *v3;
    sub_1003B6CB4(v7, v11, isUniquelyReferenced_nonNull_native);
    v16 = v18;
    *v3 = v19[0];
    sub_1003C1790(a2, v16, _s23QueueSnapshotIdentifierOMa);
    return 1;
  }
}

uint64_t sub_1003B4314(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *v5;
  Hasher.init(_seed:)();
  v27 = v5;
  v28 = a1;
  if (a5)
  {
    if (a5 == 1)
    {
      Hasher._combine(_:)(2uLL);
    }

    else
    {
      Hasher._combine(_:)(0);
      if (a3)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v27;
    sub_100198BAC(a2, a3, a4, a5);
    sub_1003B6EF8(a2, a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
    *v27 = v30;
    *v28 = a2;
    v28[1] = a3;
    v28[2] = a4;
    v28[3] = a5;
    return 1;
  }

  v14 = ~v12;
  v15 = *(v10 + 48);
  while (1)
  {
    v16 = (v15 + 32 * v13);
    v17 = v16[3];
    if (!v17)
    {
      if (!a5)
      {
        goto LABEL_33;
      }

      goto LABEL_12;
    }

    if (v17 == 1)
    {
      if (a5 == 1)
      {
        goto LABEL_33;
      }

      goto LABEL_12;
    }

    if (a5 < 2)
    {
      goto LABEL_12;
    }

    v18 = v16[1];
    v19 = v16[2];
    if (v18)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_27;
    }

LABEL_12:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  v20 = *v16 == a2 && v18 == a3;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v21 = v19 == a4 && v17 == a5;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_100110A18(a2, a3, a4, a5);
LABEL_33:
  v22 = (*(v10 + 48) + 32 * v13);
  v23 = *v22;
  v24 = v22[1];
  *v28 = *v22;
  *(v28 + 1) = v24;
  sub_100198BAC(v23, *(&v23 + 1), v24, *(&v24 + 1));
  return 0;
}

uint64_t sub_1003B4580(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for ImpressionTracker();
      swift_dynamicCast();
      result = 0;
      *a1 = v30;
      return result;
    }

    v19 = __CocoaSet.count.getter();
    if (!__OFADD__(v19, 1))
    {
      v20 = sub_10066F484(v7, v19 + 1);
      v21 = *(v20 + 16);
      if (*(v20 + 24) <= v21)
      {
        sub_1003B0EE4(v21 + 1);
      }

      sub_10066FCDC(v22, v20);

      *v3 = v20;
      *a1 = a2;
      return 1;
    }

    goto LABEL_30;
  }

  Hasher.init(_seed:)();
  v10 = sub_10047E418();
  Hasher._combine(_:)(v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v31 = *v3;
    v17 = *(*v3 + 16);
    v18 = *(*v3 + 24);

    if (v18 <= v17)
    {
      v23 = v17 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_1003B0EE4(v23);
      }

      else
      {
        sub_1003B9C68(v23);
      }

      v16 = v31;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(a2 + 56));
      v24 = Hasher._finalize()();
      v25 = -1 << *(v31 + 32);
      v13 = v24 & ~v25;
      if ((*(v31 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        v26 = ~v25;
        type metadata accessor for ImpressionTracker();
        while (sub_10047E418() != *(a2 + 56))
        {
          v13 = (v13 + 1) & v26;
          if (((*(v31 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_31;
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001948A4();
      v16 = v31;
    }

LABEL_26:
    *(v16 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v13;
    *(*(v16 + 48) + 8 * v13) = a2;
    v27 = *(v16 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      *(v16 + 16) = v29;
      *v3 = v16;
      result = 1;
      *a1 = a2;
      return result;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = ~v12;
  while (sub_10047E418() != *(a2 + 56))
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1003B48D8(_BYTE *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4, unint64_t a5, uint64_t (*a6)(void))
{
  v13 = *v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (*(*(v13 + 48) + v16) != a2)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    sub_1003B6250(a2, v16, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v6 = v20;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003B4A00(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10066F688(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1003B1538(v20 + 1, &unk_101180280, &unk_100EC8BC0);
    }

    v18 = v8;
    sub_100670AFC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1003B72F4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1003B4C48(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "nt";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "nt";
      switch(a2)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_1003B7484(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003B4FFC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10066F878(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1003B1538(v20 + 1, &unk_101180380, &unk_100EBA660);
    }

    v18 = v8;
    sub_100670AFC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1003B7878(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1003B5244(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003AE764(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001936DC();
      goto LABEL_12;
    }

    sub_1003B7A08(v11 + 1);
  }

  v13 = *v3;
  sub_10003D8C4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10003D8C4(&qword_10118D1F8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003B54E8(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003AEAC0(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_100193704();
        goto LABEL_25;
      }

      sub_1003B7D24(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    String.hash(into:)();

    v9 = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0x657469726F766166;
          }

          else
          {
            v12 = 0x64616F6C6E776F64;
          }

          v13 = 0xE900000000000073;
          v14 = a1;
          if (!a1)
          {
LABEL_14:
            v15 = 0xE300000000000000;
            if (v12 == 7105633)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v13 = 0xE300000000000000;
          v12 = 7105633;
          v14 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        if (v14 == 1)
        {
          v16 = 0x657469726F766166;
        }

        else
        {
          v16 = 0x64616F6C6E776F64;
        }

        v15 = 0xE900000000000073;
        if (v12 == v16)
        {
LABEL_22:
          if (v13 == v15)
          {
            goto LABEL_28;
          }
        }

LABEL_23:
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_29;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_28:

LABEL_29:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_1003B5754(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &qword_101183260, &qword_100EC9190);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100193718();
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &qword_101183260, &qword_100EC9190);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009F78(0, &qword_10118D430, NSString_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003B58E4(_BYTE *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003AED74(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_10019372C();
        goto LABEL_61;
      }

      sub_1003B7F94(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    v9 = *a1;
    String.hash(into:)();

    v10 = Hasher._finalize()();
    v11 = -1 << *(v8 + 32);
    a2 = v10 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        sub_100198BF4(*(v8 + 48) + 96 * a2, v32);
        if (v32[0] > 3u)
        {
          if (v32[0] > 5u)
          {
            if (v32[0] == 6)
            {
              v16 = 0xD00000000000003BLL;
              v17 = "ansliterationSing";
              if (v9 > 3)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v16 = 0xD000000000000027;
              v17 = "anslationAndTransliteration";
              if (v9 > 3)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            if (v32[0] == 4)
            {
              v16 = 0xD00000000000002DLL;
            }

            else
            {
              v16 = 0xD000000000000031;
            }

            v17 = "Tooltip.LyricsTranslation";
            if (v32[0] != 4)
            {
              v17 = "Tooltip.LyricsTransliteration";
            }

            if (v9 > 3)
            {
LABEL_35:
              v18 = 0xD00000000000003BLL;
              if (v9 != 6)
              {
                v18 = 0xD000000000000027;
              }

              v19 = "ansliterationSing";
              if (v9 != 6)
              {
                v19 = "anslationAndTransliteration";
              }

              v20 = 0xD00000000000002DLL;
              if (v9 != 4)
              {
                v20 = 0xD000000000000031;
              }

              v21 = "Tooltip.LyricsTranslation";
              if (v9 != 4)
              {
                v21 = "Tooltip.LyricsTransliteration";
              }

              if (v9 <= 5)
              {
                v22 = v20;
              }

              else
              {
                v22 = v18;
              }

              if (v9 <= 5)
              {
                v23 = v21;
              }

              else
              {
                v23 = v19;
              }

              goto LABEL_57;
            }
          }
        }

        else
        {
          v13 = 0xD00000000000002CLL;
          v14 = "com.apple.Music.Tooltip.Sing";
          if (v32[0] != 2)
          {
            v14 = "Tooltip.SharePlayTogether";
          }

          if (v32[0])
          {
            v13 = 0xD00000000000001CLL;
          }

          v15 = "llPlaylists";
          if (v32[0])
          {
            v15 = "Tooltip.FavoritingNowPlaying";
          }

          if (v32[0] <= 1u)
          {
            v16 = v13;
          }

          else
          {
            v16 = 0xD000000000000029;
          }

          if (v32[0] <= 1u)
          {
            v17 = v15;
          }

          else
          {
            v17 = v14;
          }

          if (v9 > 3)
          {
            goto LABEL_35;
          }
        }

        if (v9 > 1)
        {
          v23 = "com.apple.Music.Tooltip.Sing";
          if (v9 != 2)
          {
            v23 = "Tooltip.SharePlayTogether";
          }

          v22 = 0xD000000000000029;
        }

        else if (v9)
        {
          v22 = 0xD00000000000001CLL;
          v23 = "Tooltip.FavoritingNowPlaying";
        }

        else
        {
          v22 = 0xD00000000000002CLL;
          v23 = "llPlaylists";
        }

LABEL_57:
        if (v16 == v22 && (v17 | 0x8000000000000000) == (v23 | 0x8000000000000000))
        {
          goto LABEL_64;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100198CAC(v32);
        if (v24)
        {
          goto LABEL_65;
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_61:
  v25 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100198C50(a1, *(v25 + 48) + 96 * a2);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_64:

    sub_100198CAC(v32);
LABEL_65:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void sub_1003B5CA4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1003AF14C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1001939EC();
      goto LABEL_16;
    }

    sub_1003B8300(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003B5E24(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003AF3AC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100193B48();
      goto LABEL_12;
    }

    sub_1003B8538(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  sub_10003D8C4(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10003D8C4(&qword_101180450, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003B600C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = v9;
    sub_1003AF640(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100193B5C();
      goto LABEL_12;
    }

    v25 = v9;
    sub_1003B87B0(v12 + 1);
  }

  v14 = *v4;
  Hasher.init(_seed:)();
  Lyrics.TextLine.hash(into:)(v26);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_1003C16C8(*(v14 + 48) + v18 * a2, v11, type metadata accessor for Lyrics.TextLine);
      v19 = static Lyrics.TextLine.== infix(_:_:)(v11, a1);
      sub_1003C1730(v11, type metadata accessor for Lyrics.TextLine);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1003C1790(a1, *(v20 + 48) + *(v8 + 72) * a2, type metadata accessor for Lyrics.TextLine);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1003B6250(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6, uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B069C(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a2;
      result = a7();
      a2 = v11;
      goto LABEL_12;
    }

    sub_10003E8B4(v9 + 1, a4, a5);
  }

  v12 = *v7;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  result = Hasher._finalize()();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v12 + 48) + a2) != v8)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v8;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003B63BC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003AF948(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100193D7C();
      goto LABEL_12;
    }

    sub_1003B8A88(v11 + 1);
  }

  v13 = *v3;
  sub_10003D8C4(&unk_10118D020, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10003D8C4(&qword_101185748, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003B6660(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003AFCA4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100193DA4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1003B8DA4(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003B6780(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1003AFEC8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100193EE4();
      goto LABEL_16;
    }

    sub_1003B8F94(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003B6900(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B0128(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100194040();
      goto LABEL_12;
    }

    sub_1003B91CC(v11 + 1);
  }

  v13 = *v3;
  sub_10003D8C4(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10003D8C4(&unk_101192760, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1003B6BA4(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1003B0484(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1003B94E8(v3 + 1);
LABEL_8:
      v6 = *v2;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1001942A0();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003B6CB4(char *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  __chkstk_darwin();
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = v9;
    sub_1003B08E4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100194504();
      goto LABEL_12;
    }

    v25 = v9;
    sub_1003B96C4(v12 + 1);
  }

  v14 = *v4;
  Hasher.init(_seed:)();
  sub_10043538C(v26);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_1003C16C8(*(v14 + 48) + v18 * a2, v11, _s23QueueSnapshotIdentifierOMa);
      v19 = sub_100437274(v11, a1);
      sub_1003C1730(v11, _s23QueueSnapshotIdentifierOMa);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1003C1790(a1, *(v20 + 48) + *(v8 + 72) * a2, _s23QueueSnapshotIdentifierOMa);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003B6EF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = a1;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 <= v13 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1003B0BEC(v13 + 1);
    }

    else
    {
      if (v14 > v13)
      {
        sub_100194724();
        goto LABEL_40;
      }

      sub_1003B999C(v13 + 1);
    }

    v15 = *v6;
    Hasher.init(_seed:)();
    if (a4)
    {
      if (a4 == 1)
      {
        Hasher._combine(_:)(2uLL);
      }

      else
      {
        Hasher._combine(_:)(0);
        if (a2)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        String.hash(into:)();
      }
    }

    else
    {
      Hasher._combine(_:)(1uLL);
    }

    v16 = Hasher._finalize()();
    v17 = v15 + 56;
    v18 = -1 << *(v15 + 32);
    a5 = v16 & ~v18;
    if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v19 = ~v18;
      v20 = *(v15 + 48);
      v12 = a1;
      while (1)
      {
        v21 = (v20 + 32 * a5);
        v22 = v21[3];
        if (v22)
        {
          if (v22 == 1)
          {
            if (a4 == 1)
            {
              goto LABEL_39;
            }
          }

          else if (a4 >= 2)
          {
            v23 = v21[1];
            v24 = v21[2];
            if (v23)
            {
              if (!a2)
              {
                goto LABEL_19;
              }

              if (*v21 != v12 || v23 != a2)
              {
                v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v12 = a1;
                if ((v26 & 1) == 0)
                {
                  goto LABEL_19;
                }
              }
            }

            else if (a2)
            {
              goto LABEL_19;
            }

            v27 = v24 == a3 && v22 == a4;
            if (v27 || (v28 = _stringCompareWithSmolCheck(_:_:expecting:)(), v12 = a1, (v28 & 1) != 0))
            {
LABEL_39:
              ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_39;
        }

LABEL_19:
        a5 = (a5 + 1) & v19;
        if (((*(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_40:
    v12 = a1;
  }

LABEL_41:
  v29 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v30 = (*(v29 + 48) + 32 * a5);
  *v30 = v12;
  v30[1] = a2;
  v30[2] = a3;
  v30[3] = a4;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }
}

void sub_1003B7164(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &qword_101183248, &qword_100EBED80);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194890();
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &qword_101183248, &qword_100EBED80);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003B72F4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &unk_101180280, &unk_100EC8BC0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194A0C();
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &unk_101180280, &unk_100EC8BC0);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003B7484(uint64_t a1, unint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_1003B114C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194A20();
      goto LABEL_40;
    }

    sub_1003B9E94(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v5);
  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xD000000000000029;
      v13 = "nt";
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 0xA:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 0xB:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 0xC:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v14 = v13 | 0x8000000000000000;
      v15 = 0xD000000000000029;
      v16 = "nt";
      switch(v5)
      {
        case 1:
          v15 = 0xD000000000000025;
          v16 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v15 = 0xD000000000000023;
          v16 = "LibraryView.Playlists";
          break;
        case 3:
          v15 = 0xD000000000000022;
          v16 = "LibraryView.Artists";
          break;
        case 4:
          v15 = 0xD000000000000021;
          v16 = "LibraryView.Albums";
          break;
        case 5:
          v15 = 0xD000000000000026;
          v16 = "LibraryView.Songs";
          break;
        case 6:
          v15 = 0xD000000000000027;
          v16 = "LibraryView.MadeForYou";
          break;
        case 7:
          v15 = 0xD000000000000022;
          v16 = "LibraryView.MusicVideos";
          break;
        case 8:
          v15 = 0xD000000000000028;
          v16 = "LibraryView.Genres";
          break;
        case 9:
          v15 = 0xD000000000000025;
          v16 = "LibraryView.Compilations";
          break;
        case 10:
          v15 = 0xD000000000000021;
          v16 = "LibraryView.Composers";
          break;
        case 11:
          v15 = 0xD000000000000026;
          v16 = "LibraryView.Shows";
          break;
        case 12:
          v15 = 0xD000000000000027;
          v16 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v12 == v15 && v14 == (v16 | 0x8000000000000000))
      {
        goto LABEL_43;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_44;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_40:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_43:

LABEL_44:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003B7878(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &unk_101180380, &unk_100EBA660);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194A34();
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &unk_101180380, &unk_100EBA660);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003B7A08(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for AudioVariant();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10010FC20(&unk_10118D200, &unk_100EC8F00);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10003D8C4(&qword_10118D1F0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_1003B7D24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011801F0, &qword_100EBA538);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1003B7F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_10118D160, &qword_100EC8EA0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      sub_100198BF4(*(v3 + 48) + 96 * (v10 | (v5 << 6)), v13);
      sub_10066FA68(v13, v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

void sub_1003B80D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101183258, &qword_100EBED90);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16 >> 7);
      Hasher._combine(_:)(v16 & 1);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1003B8300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101180270, &qword_100EBA5A8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1003B8538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&unk_101180440, &unk_100EC9180);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      sub_10003D8C4(&unk_10118D420, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
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
}

void sub_1003B87B0(uint64_t a1)
{
  v2 = v1;
  v29 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&qword_101183250, &qword_100EBED88);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v29 + 72);
      sub_1003C16C8(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for Lyrics.TextLine);
      Hasher.init(_seed:)();
      Lyrics.TextLine.hash(into:)(v30);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      sub_1003C1790(v4, *(v7 + 48) + v14 * v18, type metadata accessor for Lyrics.TextLine);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v2 = v7;
  }
}

void sub_1003B8A88(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for Song();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10010FC20(&unk_10118D030, &qword_100EBED60);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10003D8C4(&unk_10118D020, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_1003B8DA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101183208, &unk_100EC8F10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1003B8F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011831F0, &qword_100EC8BB0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_1003B91CC(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for Album();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10010FC20(&qword_101183240, &qword_100EBED78);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10003D8C4(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_1003B94E8(uint64_t a1)
{
  v2 = *v1;
  sub_10010FC20(&qword_101180260, &qword_100EBA598);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
LABEL_13:
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      v13 = Hasher._finalize()();
      v14 = -1 << *(v4 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v10 + 8 * v16);
          if (v20 != -1)
          {
            v11 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }
}

void sub_1003B96C4(uint64_t a1)
{
  v2 = v1;
  v29 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  __chkstk_darwin();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10010FC20(&unk_10118D410, &unk_100EC9170);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v29 + 72);
      sub_1003C16C8(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, _s23QueueSnapshotIdentifierOMa);
      Hasher.init(_seed:)();
      sub_10043538C(v30);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      sub_1003C1790(v4, *(v7 + 48) + v14 * v18, _s23QueueSnapshotIdentifierOMa);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v2 = v7;
  }
}

void sub_1003B999C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101180550, &qword_100EBA798);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v27 = *v18;
      v28 = v18[1];
      Hasher.init(_seed:)();
      if (*(&v28 + 1))
      {
        if (*(&v28 + 1) == 1)
        {
          Hasher._combine(_:)(2uLL);
        }

        else
        {
          Hasher._combine(_:)(0);
          if (*(&v27 + 1))
          {
            Hasher._combine(_:)(1u);

            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }

          String.hash(into:)();
        }
      }

      else
      {
        Hasher._combine(_:)(1uLL);
      }

      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v13 = v27;
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

        goto LABEL_36;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v13 = v27;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v14 = (*(v5 + 48) + 32 * v12);
      *v14 = v13;
      v14[1] = v28;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_34;
      }

      v17 = *(v3 + 56 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v9 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v5;
  }
}

void sub_1003B9C68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_101180240, &qword_100EBA578);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      v17 = sub_10047E418();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
}

void sub_1003B9E94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10010FC20(&qword_1011802A0, &qword_100EBA5D0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

Swift::Int sub_1003BA23C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v31 = v7;
    v32 = a2;
    v33 = a3;
    v34 = v3;
    v30[1] = v30;
    __chkstk_darwin();
    v9 = v30 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    a2 = v13 & *(a1 + 64);
    v14 = (v12 + 63) >> 6;
    while (a2)
    {
      v15 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
LABEL_12:
      v18 = v15 | (v11 << 6);
      v7 = *(*(a1 + 56) + 8 * v18);
      swift_beginAccess();
      v19 = *(v7 + 48);
      v22 = *(v19 + 16);
      v20 = v19 + 16;
      v21 = v22;
      if (!v22 || (*(v20 + 16 * v21 + 8) & 1) == 0)
      {
        *&v9[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          return sub_1003BA4AC(v9, v31, v10, a1, v32, v33);
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v14)
      {
        return sub_1003BA4AC(v9, v31, v10, a1, v32, v33);
      }

      v17 = *(a1 + 64 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        a2 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    v25 = a3;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a3 = v25;
  }

  v26 = swift_slowAlloc();
  sub_1003B19F0(v26, v7, a1, a2, v25, v27);
  v29 = v28;

  return v29;
}

Swift::Int sub_1003BA4AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  sub_10010FC20(a5, a6);
  result = static _DictionaryStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v34 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(v6 + 56);
    v20 = (*(v6 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 8 * v18);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v11 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v11 + 56) + 8 * v27) = v23;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v34;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1003BA6E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin();
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = v58 - v13;
  v14 = type metadata accessor for SidebarActivityView.Activity(0);
  v66 = *(v14 - 8);
  v67 = v14;
  __chkstk_darwin();
  v72 = (v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v71 = v58 - v16;
  __chkstk_darwin();
  v65 = v58 - v17;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  v61 = v12;
  v62 = v10;
  sub_10010FC20(&unk_10118CF50, &unk_100EBA770);
  result = static _DictionaryStorage.allocate(capacity:)();
  v19 = result;
  v63 = a4;
  v60 = v9;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v22 = result + 64;
  v70 = result;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v68 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = v63;
    v28 = *(v63 + 48);
    v29 = v65;
    v69 = *(v66 + 72);
    sub_1003C16C8(v28 + v69 * v26, v65, type metadata accessor for SidebarActivityView.Activity);
    v30 = *(*(v27 + 56) + 8 * v26);
    v31 = v71;
    sub_1003C1790(v29, v71, type metadata accessor for SidebarActivityView.Activity);
    v19 = v70;
    Hasher.init(_seed:)();
    sub_1003C16C8(v31, v72, type metadata accessor for SidebarActivityView.Activity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v33 = *v72;
      if (EnumCaseMultiPayload == 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      Hasher._combine(_:)(v34);
      v38 = v30;
      v41 = v30;
      NSObject.hash(into:)();

      v19 = v70;
    }

    else
    {
      v35 = v64;
      sub_1003C1790(v72, v64, type metadata accessor for LibraryImport.ViewModel);
      Hasher._combine(_:)(0);
      v36 = v61;
      sub_1003C16C8(v35, v61, type metadata accessor for LibraryImport.ViewModel);
      v37 = swift_getEnumCaseMultiPayload();
      if (v37)
      {
        v38 = v30;
        if (v37 == 1)
        {
          v39 = v60;
          sub_1003C1790(v36, v60, _s16ActionButtonViewV5ModelVMa);
          Hasher._combine(_:)(1uLL);
          v40 = v30;
          sub_10062CB80(v73);
          sub_1003C1730(v39, _s16ActionButtonViewV5ModelVMa);
        }

        else
        {
          Hasher._combine(_:)(2uLL);
          v46 = v30;
          v19 = v70;
        }
      }

      else
      {
        v42 = *(v36 + 8);
        v58[0] = *v36;
        v43 = *(v36 + 24);
        v58[1] = *(v36 + 16);
        v59 = v43;
        v44 = *(v36 + 32);
        Hasher._combine(_:)(0);
        v38 = v30;
        if (v42)
        {
          Hasher._combine(_:)(1u);
          v45 = v30;
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
          v47 = v30;
        }

        if (v59)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        if (v44 == 0.0)
        {
          v48 = 0.0;
        }

        else
        {
          v48 = v44;
        }

        Hasher._combine(_:)(*&v48);
      }

      sub_1003C1730(v64, type metadata accessor for LibraryImport.ViewModel);
    }

    result = Hasher._finalize()();
    v49 = -1 << *(v19 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v22 + 8 * (v50 >> 6))) == 0)
    {
      v53 = 0;
      v54 = (63 - v49) >> 6;
      while (++v51 != v54 || (v53 & 1) == 0)
      {
        v55 = v51 == v54;
        if (v51 == v54)
        {
          v51 = 0;
        }

        v53 |= v55;
        v56 = *(v22 + 8 * v51);
        if (v56 != -1)
        {
          v52 = __clz(__rbit64(~v56)) + (v51 << 6);
          goto LABEL_46;
        }
      }

      goto LABEL_51;
    }

    v52 = __clz(__rbit64((-1 << v50) & ~*(v22 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_46:
    *(v22 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    result = sub_1003C1790(v71, *(v19 + 48) + v52 * v69, type metadata accessor for SidebarActivityView.Activity);
    *(*(v19 + 56) + 8 * v52) = v38;
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_52;
    }

    v20 = v68;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v68 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1003BAD68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128))
{
  v3 = sub_1003BADCC(a1);
  v4 = v3[2];

  return (a2)(v3 + 4, v4);
}

void *sub_1003BADCC(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1003AE190(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}