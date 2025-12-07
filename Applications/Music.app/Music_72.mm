uint64_t sub_100805804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_1000089F8(a3, v21 - v8, &unk_101181520, &qword_100EBCC60);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_1000095E8(v9, &unk_101181520, &qword_100EBCC60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_100805A70(uint64_t a1)
{
  sub_10010FC20(&qword_1011928B0, &unk_100ECFBC0);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = sub_10010FC20(&qword_1011928C8, &unk_100EE2330);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a1, 1, v6) == 1)
  {
    return 0xD000000000000021;
  }

  v9 = 0x206E776F6E6B6E55;
  sub_1000089F8(a1, v5, &qword_1011928B0, &unk_100ECFBC0);
  if (v8(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_1011928B0, &unk_100ECFBC0);
  }

  else
  {
    v10 = MusicLibrarySectionedResponse.sections.getter();
    (*(v7 + 8))(v5, v6);
    v11 = *(v10 + 16);

    if (!v11)
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v15 = 0xD000000000000022;
      v16 = 0x8000000100E58A00;
      sub_1000089F8(a1, v3, &qword_1011928B0, &unk_100ECFBC0);
      v12._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 46;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      return v15;
    }
  }

  return v9;
}

unint64_t sub_100805CEC(uint64_t a1)
{
  sub_10010FC20(&unk_1011A4900, &qword_100ED9268);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = sub_10010FC20(&qword_10119A840, &qword_100ED9280);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a1, 1, v6) == 1)
  {
    return 0xD000000000000021;
  }

  v9 = 0x206E776F6E6B6E55;
  sub_1000089F8(a1, v5, &unk_1011A4900, &qword_100ED9268);
  if (v8(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_1011A4900, &qword_100ED9268);
  }

  else
  {
    v10 = MusicLibrarySectionedResponse.sections.getter();
    (*(v7 + 8))(v5, v6);
    v11 = *(v10 + 16);

    if (!v11)
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v15 = 0xD000000000000022;
      v16 = 0x8000000100E58A00;
      sub_1000089F8(a1, v3, &unk_1011A4900, &qword_100ED9268);
      v12._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 46;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      return v15;
    }
  }

  return v9;
}

uint64_t sub_100805F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v46 = a2;
  v4 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v44 - v7;
  v9 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v13 = *(v52 - 8);
  __chkstk_darwin();
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v44 - v16;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v17 = qword_101218AC8;
  v18 = (*(*qword_101218AC8 + 528))();
  if (v18)
  {

    return 0;
  }

  (*(*a1 + 256))();
  if ((*(v10 + 88))(v12, v9) != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  (*(v10 + 96))(v12, v9);
  v19 = v13;
  v20 = *(v13 + 32);
  v22 = v51;
  v21 = v52;
  v20(v51, v12, v52);
  (*(v19 + 104))(v15, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v21);
  v23 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v24 = *(v19 + 8);
  v25 = v24(v15, v21);
  if ((v23 & 1) == 0)
  {
    v24(v22, v21);
    return 0;
  }

  v45 = v24;
  (*(*a1 + 304))(v25);
  v27 = v49;
  v26 = v50;
  (*(v49 + 104))(v6, enum case for MusicPlayer.PreviewCapabilityStatus.previewable(_:), v50);
  v28 = static MusicPlayer.PreviewCapabilityStatus.== infix(_:_:)();
  v29 = *(v27 + 8);
  v29(v6, v26);
  v29(v8, v26);
  if ((v28 & 1) == 0)
  {
    v45(v22, v21);
    return 0;
  }

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v30 = v48;
  v31 = Song.id.getter();
  sub_10012BF2C(v31, v32);
  v34 = v33;

  v36 = (*(*v17 + 432))(v35);
  if (v36)
  {
    v37 = v36;
    v38 = [v36 isSharedListeningSession];
  }

  else
  {
    v38 = 0;
  }

  if (v34 > 1u)
  {
    if (v34 == 2)
    {
      v41.n128_f64[0] = sub_10012F360();
      v40 = v52;
    }

    else
    {
      if (v47 && (sub_10012F6B8(v46, v47) & 1) != 0)
      {
        v42 = type metadata accessor for Song();
        v53[3] = v42;
        v53[4] = &protocol witness table for Song;
        v43 = sub_10001C8B8(v53);
        (*(*(v42 - 8) + 16))(v43, v30, v42);
        v54 = 0;
        static SubscriptionUpsellPresenter.present(for:)(v53);
        sub_100309980(v53);
      }

      sub_10012C194(v30, 1);
      v40 = v52;
    }
  }

  else
  {
    v40 = v52;
    if (v34)
    {
      v41.n128_f64[0] = sub_10012E578();
    }

    else if (v38)
    {
      v41.n128_f64[0] = sub_10012F360();
    }

    else
    {
      v41.n128_f64[0] = sub_10012F0E8();
    }
  }

  (v45)(v51, v40, v41);
  return 1;
}

double sub_10080658C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v6 = *(sub_10010FC20(&unk_1011842D0, &qword_100ECBF00) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v19 - v10;
  if (*(v3 + 16))
  {

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  TaskPriority.init(rawValue:)();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  type metadata accessor for Track();
  v13 = *a1;
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 16))(v9, v13, v14);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_10003D17C(v9, v16 + v15, &unk_1011842D0, &qword_100ECBF00);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v20;
  v17[1] = a3;

  *(v3 + 16) = sub_10086E3AC(0, 0, v11, &unk_100EE55E8, v16);

  return result;
}

double sub_10080686C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v6 = sub_10010FC20(&qword_1011A4718, &qword_100EE4BB0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin();
  v9 = &v22 - v8;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v22 - v10;
  if (*(v3 + 16))
  {

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  TaskPriority.init(rawValue:)();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  sub_100020674(&unk_10119F050, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  type metadata accessor for Playlist.Entry();
  v13 = *a1;
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 16))(v9, v13, v14);
  sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
  sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
  type metadata accessor for Track();
  v15 = a1[1];
  v16 = *(v6 + 48);
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 16))(&v9[v16], v15, v17);
  v18 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_10003D17C(v9, v19 + v18, &qword_1011A4718, &qword_100EE4BB0);
  v20 = (v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23;
  v20[1] = a3;

  *(v3 + 16) = sub_10086E3AC(0, 0, v11, &unk_100EE4BC0, v19);

  return result;
}

uint64_t sub_100806BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[5] = swift_task_alloc();
  v6[6] = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v6[7] = sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  type metadata accessor for Track();

  return _swift_task_switch(sub_100806CE4, 0, 0);
}

uint64_t sub_100806CE4()
{
  v1 = v0[2];
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v5 = *(v3 + 16);
  v5(v4, v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    (*(v3 + 8))(v4, v2);
  }

  else
  {
    v6 = v0[6];
    v7 = swift_task_alloc();
    v5(v7, v4, v2);
    v8 = *(v6 - 8);
    if ((*(v8 + 48))(v7, 1, v6) == 1)
    {
      v9 = *(v3 + 8);
      v9(v4, v2);
      v9(v7, v2);
      v10 = 0.0;
    }

    else
    {
      v11 = v0[6];
      v12 = sub_100557C00(v11, v0[7], &off_1010B22C8);
      (*(v3 + 8))(v4, v2);
      (*(v8 + 8))(v7, v11);
      v10 = v12 + 0.0;
    }

    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[3];

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14;
    *(v18 + 48) = v10;
    sub_1001F4CB8(0, 0, v13, &unk_100EE55F0, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100806FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  *(v6 + 56) = sub_100020674(&unk_10119F050, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  type metadata accessor for Playlist.Entry();
  *(v6 + 64) = sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
  *(v6 + 72) = sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
  type metadata accessor for Track();
  *(v6 + 80) = *(sub_10010FC20(&qword_1011A4718, &qword_100EE4BB0) + 48);

  return _swift_task_switch(sub_10080713C, 0, 0);
}

uint64_t sub_10080713C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v5 = *(v3 + 16);
  v5(v4, v1, v2);
  if (static Task<>.isCancelled.getter() & 1) != 0 || ((v6 = *(v0 + 48), v7 = swift_task_alloc(), v5(v7, v4, v2), v8 = *(v6 - 8), (*(v8 + 48))(v7, 1, v6) != 1) ? (v11 = *(v0 + 48), v12 = sub_100557C00(v11, *(v0 + 56), &off_1010B22D8), (*(v3 + 8))(v4, v2), (*(v8 + 8))(v7, v11), v10 = v12 + 0.0) : (v9 = *(v3 + 8), v9(v4, v2), v9(v7, v2), v10 = 0.0), v13 = *(v0 + 80), v14 = *(v0 + 16), , , v2 = type metadata accessor for Optional(), v3 = *(v2 - 8), v4 = swift_task_alloc(), v15 = *(v3 + 16), v15(v4, v14 + v13, v2), (static Task<>.isCancelled.getter()))
  {
    (*(v3 + 8))(v4, v2);
  }

  else
  {
    v16 = *(v0 + 64);
    v17 = swift_task_alloc();
    v15(v17, v4, v2);
    v18 = *(v16 - 8);
    if ((*(v18 + 48))(v17, 1, v16) == 1)
    {
      v19 = *(v3 + 8);
      v19(v4, v2);
      v20 = 0.0;
    }

    else
    {
      v20 = sub_100557C00(*(v0 + 64), *(v0 + 72), &off_1010B22C8);
      (*(v3 + 8))(v4, v2);
      v19 = *(v18 + 8);
      v2 = *(v0 + 64);
    }

    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 24);
    v19(v17, v2);

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = &protocol witness table for MainActor;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    *(v26 + 48) = v10 + v20;
    sub_1001F4CB8(0, 0, v21, &unk_100EE4BC8, v26);
  }

  v27 = *(v0 + 8);

  return v27();
}

char *sub_1008075B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v194 = a7;
  v195 = a6;
  v176 = a5;
  v174 = a4;
  v206 = a3;
  v167 = a2;
  v166 = a1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v189 = &v139 - v9;
  v190 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v188 = *(v190 - 8);
  __chkstk_darwin();
  v187 = &v139 - v10;
  v11 = sub_10010FC20(&qword_101189DE0, &qword_100EBD2B0);
  v192 = *(v11 - 8);
  v193 = v11;
  __chkstk_darwin();
  v191 = &v139 - v12;
  v13 = sub_10010FC20(&unk_1011A4560, &qword_100ECF5E0);
  v203 = *(v13 - 8);
  v204 = v13;
  __chkstk_darwin();
  v186 = &v139 - v14;
  v15 = sub_10010FC20(&unk_1011A4550, &unk_100EE47D0);
  v201 = *(v15 - 8);
  v202 = v15;
  __chkstk_darwin();
  v185 = &v139 - v16;
  v17 = sub_10010FC20(&qword_1011A4530, &qword_100EE47C8);
  v200 = *(v17 - 8);
  __chkstk_darwin();
  v183 = &v139 - v18;
  v19 = sub_10010FC20(&qword_1011A4520, &qword_100EE47C0);
  v199 = *(v19 - 8);
  __chkstk_darwin();
  v181 = &v139 - v20;
  v21 = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  v198 = *(v21 - 8);
  __chkstk_darwin();
  v179 = &v139 - v22;
  v23 = sub_10010FC20(&unk_1011A4500, &unk_100EE47B0);
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v175 = &v139 - v25;
  v26 = sub_10010FC20(&qword_1011A44F0, &qword_100EE47A8);
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v171 = &v139 - v28;
  v29 = sub_10010FC20(&qword_1011A44E0, &qword_100EE47A0);
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v168 = &v139 - v31;
  v159 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v165 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v164 = &v139 - v33;
  __chkstk_darwin();
  v163 = &v139 - v34;
  __chkstk_darwin();
  v160 = &v139 - v35;
  v205 = type metadata accessor for MusicPropertySource();
  v155 = *(v205 - 8);
  __chkstk_darwin();
  v162 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v139 - v37;
  v158 = sub_10010FC20(&unk_1011A4630, &unk_100EE4A00);
  v157 = *(v158 - 8);
  __chkstk_darwin();
  v156 = &v139 - v38;
  v153 = sub_10010FC20(&unk_101184D60, &unk_100EC09C0);
  v152 = *(v153 - 8);
  __chkstk_darwin();
  v150 = &v139 - v39;
  v148 = sub_10010FC20(&unk_1011A4640, &qword_100EE4A10);
  v147 = *(v148 - 8);
  __chkstk_darwin();
  v144 = &v139 - v40;
  v151 = sub_10010FC20(&unk_101192700, &qword_100EC06A0);
  __chkstk_darwin();
  v149 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v139 - v42;
  __chkstk_darwin();
  v197 = &v139 - v43;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v44 = __chkstk_darwin();
  v196 = &v139 - v45;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController] = 0;
  v169 = v30;
  v46 = *(v30 + 56);
  v170 = v29;
  v46(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerRegistration], 1, 1, v29, v44);
  v172 = v27;
  v47 = *(v27 + 56);
  v173 = v26;
  v47(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderRegistration], 1, 1, v26);
  v48 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *&v8[v48] = sub_10026FF78();
  v177 = v24;
  v49 = *(v24 + 56);
  v178 = v23;
  v49(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___trackCellRegistration], 1, 1, v23);
  v50 = *(v198 + 56);
  v180 = v21;
  v50(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___temporaryTrackCellRegistration], 1, 1, v21);
  v51 = *(v199 + 56);
  v182 = v19;
  v51(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___noContentCellRegistration], 1, 1, v19);
  v52 = *(v200 + 56);
  v52(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___emptyTrackCellRegistration], 1, 1, v17);
  v184 = v17;
  v52(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___addMusicCellRegistration], 1, 1, v17);
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  v141 = type metadata accessor for TracklistFooter.ViewModel(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v201 + 56))(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___suggestedSongsCellRegistration], 1, 1, v202);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for RelatedContentSpacing.Data(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v203 + 56))(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration], 1, 1, v204);
  v53 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController];
  *v53 = 0;
  v53[8] = 1;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playActivityFeatureIdentifier] = 12;
  v54 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID];
  v145 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID];
  *v54 = 0;
  v54[1] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___dragDropController] = 1;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent] = 0;
  v55 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  v56 = type metadata accessor for IndexPath();
  v142 = *(*(v56 - 8) + 56);
  v142(&v8[v55], 1, 1, v56);
  v57 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState];
  *v57 = 0x3FFFFFEFELL;
  v57[1] = 0;
  v57[2] = 0;
  v58 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_artwork;
  v59 = type metadata accessor for Artwork();
  (*(*(v59 - 8) + 56))(&v8[v58], 1, 1, v59);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider] = 1;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout] = 2;
  v60 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v61 = type metadata accessor for Playlist();
  v62 = *(*(v61 - 8) + 56);
  v62(&v8[v60], 1, 1, v61);
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController] = 0;
  v63 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sourceURL;
  v64 = type metadata accessor for URL();
  v65 = *(*(v64 - 8) + 56);
  v154 = v63;
  v65(&v8[v63], 1, 1, v64);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prepareVocalsObserver] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing] = 1;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse] = 0xF000000000000007;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponse] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponseSubscription] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask] = 0;
  v66 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  v67 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  (*(*(v67 - 8) + 56))(&v8[v66], 1, 1, v67);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___collaborationBarButton] = 0;
  v143 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL;
  v65(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL], 1, 1, v64);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponseSubscription] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask] = 0;
  v62(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist], 1, 1, v61);
  v68 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  v69 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v70 = *(*(v69 - 8) + 56);
  v70(&v8[v68], 1, 1, v69);
  v71 = v142;
  v142(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_largestPrefetchIndexPath], 1, 1, v56);
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections] = &off_101099378;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration] = 0;
  v72 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_libraryStateCache;
  *&v8[v72] = sub_10010BFD8(_swiftEmptyArrayStorage);
  v73 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
  *&v8[v73] = sub_10010BFEC(_swiftEmptyArrayStorage);
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates] = 0;
  v70(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries], 1, 1, v69);
  v70(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries], 1, 1, v69);
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch] = 0;
  v71(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_opportunisticProminentItemIndexPath], 1, 1, v56);
  v74 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID];
  *v74 = 0;
  v74[1] = 0;
  v142 = v74;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks] = _swiftEmptyArrayStorage;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection] = 0;
  v140 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_tracklistFooterViewModel;
  v75 = type metadata accessor for Date();
  v76 = *(*(v75 - 8) + 56);
  v76(v196, 1, 1, v75);
  v77 = sub_10010FC20(&qword_101184C70, &qword_100EBD6D0);
  v78 = *(*(v77 - 8) + 56);
  v78(v197, 1, 1, v77);
  v79 = swift_allocObject();
  *(v79 + 16) = 2;
  v80 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
  v76(v79 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate, 1, 1, v75);
  v81 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__trackCount;
  v208 = 0;
  v209 = 1;
  sub_10010FC20(&qword_101184A70, &qword_100EC0680);
  v82 = v144;
  Published.init(initialValue:)();
  (*(v147 + 32))(v79 + v81, v82, v148);
  v83 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__duration;
  v208 = 0;
  v84 = v150;
  Published.init(initialValue:)();
  (*(v152 + 32))(v79 + v83, v84, v153);
  v85 = (v79 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
  *v85 = 0;
  v85[1] = 0;
  v86 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__recordLabels;
  v87 = v146;
  v78(v146, 1, 1, v77);
  v88 = v149;
  sub_1000089F8(v87, v149, &unk_101192700, &qword_100EC06A0);
  v89 = v156;
  Published.init(initialValue:)();
  sub_1000095E8(v87, &unk_101192700, &qword_100EC06A0);
  (*(v157 + 32))(v79 + v86, v89, v158);
  *(v79 + 16) = 2;
  swift_beginAccess();
  v90 = v79 + v80;
  v91 = v196;
  sub_1002190E0(v196, v90, &qword_101188C20, &qword_100EC2030);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v208 = 0;
  v209 = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v208 = 0;

  static Published.subscript.setter();
  *v85 = 0;
  v85[1] = 0;

  v92 = v197;
  sub_1000089F8(v197, v87, &unk_101192700, &qword_100EC06A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v87, v88, &unk_101192700, &qword_100EC06A0);

  static Published.subscript.setter();
  v93 = v87;
  v94 = v155;
  sub_1000095E8(v93, &unk_101192700, &qword_100EC06A0);
  sub_1000095E8(v92, &unk_101192700, &qword_100EC06A0);
  sub_1000095E8(v91, &qword_101188C20, &qword_100EC2030);
  *&v8[v140] = v79;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingAddMusicSection] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingSuggestedSongsSection] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand] = 0;
  v95 = &v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText];
  *v95 = 0;
  v95[1] = 0;
  *&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchController] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching] = 0;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled] = 0;
  v96 = v145;
  v97 = v167;
  *v145 = v166;
  v96[1] = v97;

  v98 = v160;
  sub_10086772C(v206, v160, type metadata accessor for ContainerDetail.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v100 = *(v94 + 104);
  v101 = v161;
  if (EnumCaseMultiPayload == 1)
  {
    v100(v161, enum case for MusicPropertySource.catalog(_:), v205);
  }

  else
  {
    v100(v161, enum case for MusicPropertySource.library(_:), v205);
    sub_1000095E8(v98, &unk_1011926F0, &qword_100ECF890);
  }

  v102 = *(v94 + 32);
  v102(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource], v101, v205);
  v103 = v163;
  sub_10086772C(v206, v163, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v104 = v162;
    v100(v162, enum case for MusicPropertySource.catalog(_:), v205);
  }

  else
  {
    v104 = v162;
    v100(v162, enum case for MusicPropertySource.library(_:), v205);
    sub_1000095E8(v103, &unk_1011926F0, &qword_100ECF890);
  }

  v102(&v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source], v104, v205);
  v105 = v142;
  v106 = v176;
  *v142 = v174;
  v105[1] = v106;

  v107 = v143;
  swift_beginAccess();
  v108 = v195;
  sub_1002190E0(v195, &v8[v107], &qword_101183A20, &unk_100EBCF80);
  swift_endAccess();
  v109 = v154;
  swift_beginAccess();
  v110 = v194;
  sub_1002190E0(v194, &v8[v109], &qword_101183A20, &unk_100EBCF80);
  swift_endAccess();
  v111 = v164;
  sub_10086772C(v206, v164, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v112 = *v111;
  }

  else
  {
    sub_1000095E8(v111, &unk_1011926F0, &qword_100ECF890);
    v112 = 1;
  }

  v113 = v165;
  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeEquivalents] = v112;
  sub_10086772C(v206, v113, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v114 = 0;
  }

  else
  {
    v114 = *(v113 + *(sub_10010FC20(&qword_10118A430, &qword_100EC8F70) + 64));
    sub_1000095E8(v113, &unk_1011926F0, &qword_100ECF890);
  }

  v8[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback] = v114;
  v115 = type metadata accessor for PlaylistDetailDataSource(0);
  v207.receiver = v8;
  v207.super_class = v115;
  v116 = objc_msgSendSuper2(&v207, "init");
  v117 = v168;
  sub_100809DE4(v168);
  (*(v169 + 8))(v117, v170);
  v118 = v171;
  sub_10080A8B0(v171);
  (*(v172 + 8))(v118, v173);
  v119 = v175;
  sub_10080ACDC(v175);
  (*(v177 + 8))(v119, v178);
  v120 = v179;
  sub_10080C92C(v179);
  (*(v198 + 8))(v120, v180);
  v121 = v181;
  sub_10080D440(v181);
  (*(v199 + 8))(v121, v182);
  v122 = v183;
  sub_10080D8F8(v183);
  v123 = *(v200 + 8);
  v124 = v184;
  v123(v122, v184);
  sub_10080DF4C(v122);
  v123(v122, v124);
  v125 = v185;
  sub_10080E784(v185);
  (*(v201 + 8))(v125, v202);
  v126 = v186;
  sub_10080F2CC(v186);
  (*(v203 + 8))(v126, v204);
  v127 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v128 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v116[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v127, v128, 1, 1, sub_100866E90, v129);

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v130 = v187;
  (*(*qword_101218AC8 + 456))();
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v131 = static OS_dispatch_queue.main.getter();
  v208 = v131;
  v132 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v133 = v189;
  (*(*(v132 - 8) + 56))(v189, 1, 1, v132);
  sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000206BC();
  v134 = v191;
  v135 = v190;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v133, &qword_101182140, &unk_100EBD2A0);

  (*(v188 + 8))(v130, v135);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100020674(&unk_10118ACC0, &qword_101189DE0, &qword_100EBD2B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v136 = v193;
  v137 = Publisher<>.sink(receiveValue:)();

  sub_1000095E8(v110, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v108, &qword_101183A20, &unk_100EBCF80);
  sub_100867794(v206, type metadata accessor for ContainerDetail.Source);
  (*(v192 + 8))(v134, v136);
  *&v116[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prepareVocalsObserver] = v137;

  return v116;
}

void sub_100809498(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    static ApplicationCapabilities.shared.getter(v7);
    sub_100014984(v7);
    if (v7[1])
    {
      sub_10081B700();
    }

    else
    {
      v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v3 + v4, v6, &unk_1011926C0, &unk_100ECF870);
      if (v6[8] == 1)
      {
        sub_1000095E8(v6, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v6, &unk_1011926C0, &unk_100ECF870);
        if (v5)
        {
          sub_10069F67C();
        }
      }

      sub_10084E17C();
    }
  }
}

void sub_1008095A4(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing);
    *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing) = 1;
    if ((v5 & 1) == 0)
    {
      v6 = v2;
      sub_100840468();

      v4 = v6;
    }
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v4 = v7;
    v8 = *(v7 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing);
    *(v7 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing) = 0;
    if (v8 == 1)
    {
      sub_100840468();
    }
  }
}

id sub_100809674(__n128 a1)
{
  if (*&v1[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask])
  {

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaylistDetailDataSource(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100809DE4@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A4B68, &unk_100EE5450);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011A4B68, &unk_100EE5450);
  v8 = sub_10010FC20(&qword_1011A44E0, &qword_100EE47A0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011A4B68, &unk_100EE5450);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s10HeaderCellCMa();
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011A4B68, &unk_100EE5450);
  return swift_endAccess();
}

void sub_10080A04C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_101192B60, &qword_100ED01C8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v37 - v9;
  __chkstk_darwin();
  v12 = &v37 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v14[v15], &v41, &unk_1011926C0, &unk_100ECF870);
    if (v42 == 1)
    {

      sub_1000095E8(&v41, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v16 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v41, &unk_1011926C0, &unk_100ECF870);
      if (v16)
      {
        v17 = *&v14[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController];
        if (v17)
        {
          v38 = a1;
          v39 = v17;
          v40 = v16;
          v18 = sub_10083D5A8();
          swift_getKeyPath();
          v41 = v18;
          sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v19 = *(v18 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

          v20 = sub_1006A6078();
          [v20 adjustedContentInset];
          v22 = v21;

          v23 = *(v19 + 32);
          v37 = v6;
          if (v23 == v22)
          {
            *(v19 + 32) = v22;
          }

          else
          {
            swift_getKeyPath();
            __chkstk_darwin();
            *(&v37 - 2) = v19;
            *(&v37 - 1) = v22;
            v41 = v19;
            sub_100866F00(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          v24 = AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor();
          v25 = *v24;
          v26 = v24[1];
          v28 = v24[2];
          v27 = v24[3];
          _s10HeaderCellCMa();

          v29 = v28;
          v30 = v38;
          UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v25, v26, v29, v27);
          __chkstk_darwin();
          *(&v37 - 4) = v14;
          *(&v37 - 3) = v30;
          *(&v37 - 2) = v39;
          sub_10010FC20(&qword_101192B68, &qword_100ED01F8);
          v31 = type metadata accessor for Header(255);
          v32 = sub_100866F00(&qword_101192B70, type metadata accessor for Header, &unk_100EE28E0);
          v41 = v31;
          v42 = v32;
          swift_getOpaqueTypeConformance2();
          UIHostingConfiguration<>.init(content:)();
          static Edge.Set.vertical.getter();
          UIHostingConfiguration.margins(_:_:)();
          v33 = *(v37 + 8);
          v33(v8, v5);
          static Edge.Set.horizontal.getter();
          UIHostingConfiguration.margins(_:_:)();
          v33(v10, v5);
          v43 = v5;
          v44 = sub_100020674(&qword_101192B78, &qword_101192B60, &qword_100ED01C8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
          sub_10001C8B8(&v41);
          UIHostingConfiguration.animatedSizeInvalidationDisabled()();
          v33(v12, v5);
          UICollectionViewCell.contentConfiguration.setter();
          v34 = v40;
          v35 = sub_10069F9B8();
          v16 = *(v35 + 24);
          *(v35 + 24) = v30;
          v36 = v30;
          sub_1005599F8(v16);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10080A610(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for Header(0);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10083D5A8();
  type metadata accessor for MainActor();
  v8 = a2;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v11 = v8;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_10010FC20(&unk_101192B80, &qword_100ED0200);
  Binding.init(get:set:)();
  v14 = v20[1];
  v15 = v20[2];
  v16 = v22;
  *v6 = v7;
  *(v6 + 1) = v14;
  *(v6 + 2) = v15;
  *(v6 + 24) = v21;
  v6[40] = v16;
  v17 = *(v4 + 24);
  *&v6[v17] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  v18 = &v6[*(v4 + 28)];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100866F00(&qword_101192B70, type metadata accessor for Header, &unk_100EE28E0);

  View.artworkCaching(owner:)();

  return sub_100867794(v6, type metadata accessor for Header);
}

uint64_t sub_10080A8B0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A4B48, &qword_100EE5440);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011A4B48, &qword_100EE5440);
  v8 = sub_10010FC20(&qword_1011A44F0, &qword_100EE47A8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011A4B48, &qword_100EE5440);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s10HeaderCellCMa();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011A4B48, &qword_100EE5440);
  return swift_endAccess();
}

void sub_10080AB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10010FC20(&qword_1011A4B50, &qword_100EE5448);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v10 - v6;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v10[-2] = v8;
    v9 = v8;
    sub_10086B5F4();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();
    v10[3] = v4;
    v10[4] = sub_100020674(&qword_1011A4B60, &qword_1011A4B50, &qword_100EE5448, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v10);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10080ACDC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A4AF0, &qword_100EE5410);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___trackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011A4AF0, &qword_100EE5410);
  v8 = sub_10010FC20(&unk_1011A4500, &unk_100EE47B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011A4AF0, &qword_100EE5410);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s13TracklistCellCMa();
  type metadata accessor for Playlist.Entry();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011A4AF0, &qword_100EE5410);
  return swift_endAccess();
}

void sub_10080AF44(_BYTE *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v180 = a3;
  v178 = a2;
  v169 = a1;
  v4 = sub_10010FC20(&qword_1011A4AF8, &qword_100EE5418);
  v161 = *(v4 - 8);
  v162 = v4;
  __chkstk_darwin();
  v160 = v149 - v5;
  v6 = type metadata accessor for Playlist.EditableComponents();
  v157 = *(v6 - 8);
  v158 = v6;
  __chkstk_darwin();
  v155 = v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v156 = v149 - v8;
  v174 = type metadata accessor for Playlist.Entry.InternalItem();
  v179 = *(v174 - 1);
  __chkstk_darwin();
  v166 = v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = v149 - v10;
  __chkstk_darwin();
  v168 = v149 - v11;
  v173 = type metadata accessor for Playlist.Entry();
  v167 = *(v173 - 8);
  v12 = *(v167 + 8);
  __chkstk_darwin();
  v164 = v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v176 = v149 - v13;
  __chkstk_darwin();
  v159 = v149 - v14;
  v172 = type metadata accessor for IndexPath();
  v177 = *(v172 - 8);
  __chkstk_darwin();
  v163 = v15;
  v175 = v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_10118B970, &qword_100EC71E0);
  __chkstk_darwin();
  v18 = v149 - v17;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v20 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = v149 - v21;
  sub_10010FC20(&qword_1011A4740, &qword_100EC31F0);
  __chkstk_darwin();
  v171 = v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = (v149 - v24);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v27 = v149 - v26;
  v28 = type metadata accessor for Playlist();
  v181 = *(v28 - 8);
  v182 = v28;
  __chkstk_darwin();
  v170 = v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = v149 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v32 = Strong;
  v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v32[v33], &v185, &unk_1011926C0, &unk_100ECF870);
  if (BYTE8(v185) == 1)
  {

    sub_1000095E8(&v185, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v185, &unk_1011926C0, &unk_100ECF870);
  v154 = v34;
  if (!v34)
  {

    return;
  }

  v152 = v18;
  v153 = v25;
  v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v32[v35], v27, &unk_1011814D0, &qword_100EC12A0);
  v37 = v181;
  v36 = v182;
  if ((*(v181 + 48))(v27, 1, v182) == 1)
  {

    sub_1000095E8(v27, &unk_1011814D0, &qword_100EC12A0);
    return;
  }

  v38 = v32;
  v39 = v183;
  (*(v37 + 32))(v183, v27, v36);
  v40 = *&v38[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController];
  if (!v40)
  {

    (*(v37 + 8))(v39, v36);
    return;
  }

  v151 = v40;
  sub_100848DE0(v180, v153);
  v41 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  v42 = v177;
  v43 = v172;
  v149[0] = *(v177 + 16);
  v149[1] = v177 + 16;
  (v149[0])(v22, v178, v172);
  (*(v42 + 56))(v22, 0, 1, v43);
  v44 = *(v16 + 48);
  v45 = &v38[v41];
  v46 = v152;
  sub_1000089F8(v45, v152, &unk_10118BCE0, &qword_100EC6450);
  v150 = v44;
  v47 = &v44[v46];
  v48 = v43;
  sub_1000089F8(v22, v47, &unk_10118BCE0, &qword_100EC6450);
  v49 = *(v42 + 48);
  v50 = v38;
  if (v49(v46, 1, v48) == 1)
  {
    sub_1000095E8(v22, &unk_10118BCE0, &qword_100EC6450);
    v51 = v49(&v150[v46], 1, v48);
    v52 = v180;
    v53 = v182;
    v54 = v173;
    v55 = v46;
    if (v51 == 1)
    {
      sub_1000095E8(v46, &unk_10118BCE0, &qword_100EC6450);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  sub_1000089F8(v46, v20, &unk_10118BCE0, &qword_100EC6450);
  v55 = v46;
  if (v49(&v150[v46], 1, v48) == 1)
  {
    sub_1000095E8(v22, &unk_10118BCE0, &qword_100EC6450);
    (*(v177 + 8))(v20, v48);
    v52 = v180;
    v53 = v182;
    v54 = v173;
LABEL_15:
    sub_1000095E8(v55, &unk_10118B970, &qword_100EC71E0);
LABEL_16:
    LODWORD(v152) = 0;
    v56 = v167;
    goto LABEL_24;
  }

  v57 = v177;
  v58 = &v150[v46];
  v59 = v48;
  v60 = v175;
  (*(v177 + 32))(v175, v58, v59);
  sub_100866F00(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  LODWORD(v150) = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v57 + 8);
  v61(v60, v59);
  sub_1000095E8(v22, &unk_10118BCE0, &qword_100EC6450);
  v61(v20, v59);
  sub_1000095E8(v55, &unk_10118BCE0, &qword_100EC6450);
  v52 = v180;
  v53 = v182;
  v54 = v173;
  if ((v150 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v56 = v167;
  if (*&v50[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8])
  {
    v62 = v159;
    (*(v167 + 2))(v159, v52, v54);

    if (MusicItem.contains(_:)())
    {

      (*(v56 + 1))(v62, v54);
      LODWORD(v152) = 1;
    }

    else
    {
      v63 = v168;
      Playlist.Entry.internalItem.getter();
      sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
      v64 = v174;
      LODWORD(v152) = MusicItem.contains(_:)();

      v65 = v63;
      v56 = v167;
      (v179[1])(v65, v64);
      (*(v56 + 1))(v62, v54);
    }

    v53 = v182;
  }

  else
  {
    LODWORD(v152) = 0;
  }

LABEL_24:
  v66 = *(v56 + 2);
  (v66)(v176, v52, v54);
  (*(v181 + 16))(v170, v183, v53);
  sub_1000089F8(v153, v171, &qword_1011A4740, &qword_100EC31F0);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v54;
  v69 = v164;
  v159 = v56 + 16;
  v150 = v66;
  (v66)(v164, v52, v68);
  v70 = v172;
  (v149[0])(v175, v178, v172);
  v71 = (v56[80] + 24) & ~v56[80];
  v167 = v50;
  v72 = v177;
  v73 = (v12 + *(v177 + 80) + v71) & ~*(v177 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v67;
  (*(v56 + 4))(v74 + v71, v69, v68);
  (*(v72 + 32))(v74 + v73, v175, v70);
  type metadata accessor for PlaylistEntryData(0);
  swift_allocObject();
  v177 = sub_10026E81C(v176, v170, v171, v152 & 1, sub_10086E39C, v74, v75);

  v76 = v165;
  Playlist.Entry.internalItem.getter();
  v77 = Playlist.Entry.InternalItem.id.getter();
  v79 = v78;
  v80 = v167;
  v81 = v179[1];
  ++v179;
  (v81)(v76, v174);
  v82 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_libraryStateCache;
  swift_beginAccess();
  v83 = *&v80[v82];
  if (*(v83 + 16) && (, v84 = sub_100019C10(v77, v79), v86 = v85, , (v86 & 1) != 0))
  {
    v175 = *(*(v83 + 56) + 8 * v84);
    swift_retain_n();

    v87 = v81;
    v88 = v167;
    v89 = v174;
  }

  else
  {

    v90 = v154;
    v91 = [v90 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v92 = MusicLibrary.state<A>(for:)();

    swift_retain_n();
    v93 = v168;
    Playlist.Entry.internalItem.getter();
    v172 = Playlist.Entry.InternalItem.id.getter();
    v95 = v94;
    v96 = v93;
    v89 = v174;
    (v81)(v96, v174);
    v87 = v81;
    v88 = v167;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v184[0] = *&v88[v82];
    *&v88[v82] = 0x8000000000000000;
    v175 = v92;
    sub_1006C77AC(v92, v172, v95, isUniquelyReferenced_nonNull_native);

    *&v88[v82] = v184[0];
    swift_endAccess();
  }

  v98 = v166;
  Playlist.Entry.internalItem.getter();
  v99 = Playlist.Entry.InternalItem.id.getter();
  v101 = v100;
  v174 = v87;
  (v87)(v98, v89);
  v102 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
  swift_beginAccess();
  v103 = *&v88[v102];
  if (!*(v103 + 16) || (, v104 = sub_100019C10(v99, v101), v106 = v105, , (v106 & 1) == 0))
  {

    v109 = v169;
    if (qword_10117F5F8 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  v107 = *(*(v103 + 56) + 8 * v104);

  v108 = v176;
  (v150)(v176, v180, v173);
  (*(*v107 + 224))(v108);

  v109 = v169;
  while (1)
  {
    v116 = sub_100849C78();
    v117 = v177;
    v102 = v152;
    if (!__OFSUB__(v116, 1))
    {
      break;
    }

    __break(1u);
LABEL_48:
    swift_once();
LABEL_32:
    v107 = Player.state<A>(for:)(v180, v173, &protocol witness table for Playlist.Entry);
    swift_retain_n();
    v110 = v168;
    Playlist.Entry.internalItem.getter();
    v111 = Playlist.Entry.InternalItem.id.getter();
    v113 = v112;
    (v174)(v110, v89);
    v114 = v167;
    swift_beginAccess();
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v184[0] = *&v114[v102];
    *&v114[v102] = 0x8000000000000000;
    sub_1006C7798(v107, v111, v113, v115);

    *&v114[v102] = v184[0];
    swift_endAccess();
  }

  if (v116 - 1 == IndexPath.item.getter() && (v118 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks, v119 = v167, swift_beginAccess(), !*(*&v119[v118] + 16)))
  {
    v139 = v156;
    Playlist.editableComponents.getter();
    v140 = v139;
    v141 = v157;
    v142 = v139;
    v143 = v158;
    if ((*(v157 + 48))(v142, 1, v158) == 1)
    {
      sub_1000095E8(v140, &unk_10118D240, &unk_100EC8F50);
      v120 = 1;
    }

    else
    {
      v102 = v155;
      static Playlist.EditableComponents.tracklist.getter();
      sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
      v144 = v140;
      v145 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v146 = *(v141 + 8);
      v147 = v102;
      LOBYTE(v102) = v152;
      v146(v147, v143);
      v148 = v144;
      v117 = v177;
      v146(v148, v143);
      v120 = v145 ^ 1;
    }
  }

  else
  {
    v120 = 0;
  }

  v121 = sub_100866F00(&qword_1011A4B00, type metadata accessor for PlaylistEntryData, &unk_100EC3230);
  v122 = &v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
  v123 = *&v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
  v124 = *&v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
  *v122 = v117;
  v122[1] = v121;

  v125 = sub_1004E5C14(v123, v124);
  v126 = v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
  v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v102 & 1;
  if ((v102 & 1) != v126)
  {
    [v109 setNeedsUpdateConfiguration];
  }

  v127 = v154;
  v128 = sub_1006A6078();
  v185 = *&v128[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v186 = *&v128[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  v187[0] = *&v128[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *(v187 + 9) = *&v128[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  v179 = v149;
  v129 = &v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_metrics];
  v130 = v186;
  *v129 = v185;
  v129[1] = v130;
  v129[2] = v187[0];
  *(v129 + 41) = *(v187 + 9);
  __chkstk_darwin();
  v149[-10] = v117;
  LOBYTE(v149[-9]) = v120 & 1;
  v149[-8] = v175;
  v149[-7] = v107;
  v131 = v167;
  v132 = v180;
  v149[-6] = v167;
  v149[-5] = v132;
  v149[-4] = v183;
  v149[-3] = v127;
  v149[-2] = v151;
  sub_10010FC20(&qword_1011A4B08, &qword_100EE5420);
  v133 = sub_1001109D0(&qword_1011A4B10, &qword_100EE5428);
  v134 = sub_100020674(&qword_1011A4B18, &qword_1011A4B10, &qword_100EE5428, &unk_100EDBACC);
  v184[0] = v133;
  v184[1] = v134;
  swift_getOpaqueTypeConformance2();
  v135 = v160;
  UIHostingConfiguration<>.init(content:)();

  static Edge.Set.all.getter();
  v136 = v162;
  v184[3] = v162;
  v184[4] = sub_100020674(&qword_1011A4B20, &qword_1011A4AF8, &qword_100EE5418, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v184);
  UIHostingConfiguration.margins(_:_:)();
  (*(v161 + 8))(v135, v136);
  UICollectionViewCell.contentConfiguration.setter();
  v137 = [v127 traitCollection];
  v138 = [v137 userInterfaceIdiom];

  if (v138 == 6)
  {
    UICollectionViewCell.configurationUpdateHandler.setter();

    sub_1000095E8(v153, &qword_1011A4740, &qword_100EC31F0);
  }

  else
  {
    sub_1000095E8(v153, &qword_1011A4740, &qword_100EC31F0);
  }

  (*(v181 + 8))(v183, v182);
}

uint64_t sub_10080C5A4@<X0>(char a2@<W1>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v24[3] = a7;
  v24[1] = a4;
  v24[2] = a8;
  v11 = sub_10010FC20(&qword_1011A4B10, &qword_100EE5428);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = sub_1007FF8B0(a5, a6);
  v15 = sub_1006A6078();
  v16 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  v25 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v26 = v16;
  v27[0] = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *(v27 + 9) = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for PlaylistEntryData(0);
  sub_100866F00(&qword_101187EA8, type metadata accessor for PlaylistEntryData, &unk_100EC31F8);

  *v13 = ObservedObject.init(wrappedValue:)();
  *(v13 + 1) = v17;
  v13[16] = a2;

  sub_10010FC20(&qword_1011A4B28, &qword_100EE5430);
  sub_100020674(&unk_1011A4B30, &qword_1011A4B28, &qword_100EE5430, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  *(v13 + 3) = ObservedObject.init(wrappedValue:)();
  *(v13 + 4) = v18;

  sub_10010FC20(&unk_1011A46E0, &qword_100EE4B50);
  sub_100020674(&qword_1011A2888, &unk_1011A46E0, &qword_100EE4B50, &protocol conformance descriptor for MusicItemState<A>);
  *(v13 + 5) = ObservedObject.init(wrappedValue:)();
  *(v13 + 6) = v19;
  *(v13 + 7) = v14;
  *(v13 + 6) = v27[0];
  *(v13 + 105) = *(v27 + 9);
  v20 = v26;
  *(v13 + 4) = v25;
  *(v13 + 5) = v20;
  v21 = *(v11 + 80);
  *&v13[v21] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v22 = *(v11 + 84);
  *&v13[v22] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100020674(&qword_1011A4B18, &qword_1011A4B10, &qword_100EE5428, &unk_100EDBACC);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v13, &qword_1011A4B10, &qword_100EE5428);
}

uint64_t sub_10080C92C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10118A5B0, L"t\v,");
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___temporaryTrackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10118A5B0, L"t\v,");
  v8 = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_10118A5B0, L"t\v,");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Track();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10118A5B0, L"t\v,");
  return swift_endAccess();
}

void sub_10080CBA4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v37 = a3;
  v5 = sub_10010FC20(&qword_1011A4AC8, &qword_100EE5400);
  v39 = *(v5 - 8);
  __chkstk_darwin();
  v38 = &v31 - v6;
  v7 = type metadata accessor for Track();
  v36 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v11 = &v31 - v10;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v31 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v35 = v5;
    v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v19 + v20, &v40, &unk_1011926C0, &unk_100ECF870);
    if (v41 == 1)
    {

      sub_1000095E8(&v40, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v21 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v40, &unk_1011926C0, &unk_100ECF870);
      if (v21)
      {
        v34 = a1;
        v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
        swift_beginAccess();
        sub_1000089F8(v19 + v22, v11, &unk_1011814D0, &qword_100EC12A0);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {

          sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
        }

        else
        {
          (*(v13 + 32))(v17, v11, v12);
          v23 = v37;
          (*(v36 + 2))(v9, v37, v7);
          v24 = *(v13 + 16);
          v36 = v17;
          v24(v15, v17, v12);
          type metadata accessor for PlaylistEntryData(0);
          swift_allocObject();
          v33 = sub_10026AB50(v9, v15);
          v25 = v21;
          v26 = [v25 traitCollection];
          sub_100137E8C();
          UITraitCollection.subscript.getter();

          v27 = MusicLibrary.state<A>(for:)();

          v32 = v12;
          if (qword_10117F5F8 != -1)
          {
            swift_once();
          }

          v37 = Player.state<A>(for:)(v23, v7, &protocol witness table for Track);
          __chkstk_darwin();
          *(&v31 - 4) = v33;
          *(&v31 - 3) = v27;
          *(&v31 - 2) = v28;
          *(&v31 - 1) = v25;
          sub_10010FC20(&qword_1011A4AD0, &qword_100EE5408);
          v31 = v27;
          sub_100020674(&qword_1011A4AD8, &qword_1011A4AD0, &qword_100EE5408, &unk_100EDBACC);
          v29 = v38;
          UIHostingConfiguration<>.init(content:)();
          static Edge.Set.all.getter();
          v30 = v35;
          v42 = v35;
          v43 = sub_100020674(&unk_1011A4AE0, &qword_1011A4AC8, &qword_100EE5400, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
          sub_10001C8B8(&v40);
          UIHostingConfiguration.margins(_:_:)();
          (*(v39 + 8))(v29, v30);
          UICollectionViewCell.contentConfiguration.setter();

          (*(v13 + 8))(v36, v32);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10080D1F0@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1006A6078();
  v13 = *&v5[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v14 = *&v5[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v15 = *&v5[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v15[9] = *&v5[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for PlaylistEntryData(0);
  sub_100866F00(&qword_101187EA8, type metadata accessor for PlaylistEntryData, &unk_100EC31F8);

  *a4 = ObservedObject.init(wrappedValue:)();
  *(a4 + 8) = v6;
  *(a4 + 16) = 0;

  sub_10010FC20(&unk_10118A5F0, &qword_100EC5E40);
  sub_100020674(&qword_101192B40, &unk_10118A5F0, &qword_100EC5E40, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  *(a4 + 24) = ObservedObject.init(wrappedValue:)();
  *(a4 + 32) = v7;

  sub_10010FC20(&qword_10118A600, &qword_100EC5E48);
  sub_100020674(&qword_10118A608, &qword_10118A600, &qword_100EC5E48, &protocol conformance descriptor for MusicItemState<A>);
  *(a4 + 40) = ObservedObject.init(wrappedValue:)();
  *(a4 + 48) = v8;
  *(a4 + 56) = 0;
  *(a4 + 64) = v13;
  *(a4 + 80) = v14;
  *(a4 + 96) = *v15;
  *(a4 + 105) = *&v15[9];
  v9 = sub_10010FC20(&qword_1011A4AD0, &qword_100EE5408);
  v10 = *(v9 + 80);
  *(a4 + v10) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v11 = *(v9 + 84);
  *(a4 + v11) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080D440@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011A4AB0, &unk_100ED0100);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___noContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011A4AB0, &unk_100ED0100);
  v8 = sub_10010FC20(&qword_1011A4520, &qword_100EE47C0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_1011A4AB0, &unk_100ED0100);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_1011A4AB0, &unk_100ED0100);
  return swift_endAccess();
}

uint64_t sub_10080D69C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_10010FC20(&unk_101192AA0, &unk_100EE53F0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = *(a3 + 2);
  v11 = *a3;
  v12 = v8;
  type metadata accessor for NoContentCell(0);
  sub_100866F00(&qword_1011A4AC0, type metadata accessor for NoContentCell, &unk_100EBC8D0);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v13[3] = v4;
  v13[4] = sub_100020674(&unk_101192AB0, &unk_101192AA0, &unk_100EE53F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v13);
  UIHostingConfiguration.margins(_:_:)();
  (*(v5 + 8))(v7, v4);
  return UICollectionViewCell.contentConfiguration.setter();
}

double sub_10080D858@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v8 = *(type metadata accessor for NoContentCell(0) + 20);
  *(a4 + v8) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();

  return sub_1004EA174(a1, a2, a3);
}

uint64_t sub_10080D8F8@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A4A68, &qword_100EE5368);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___emptyTrackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011A4A68, &qword_100EE5368);
  v8 = sub_10010FC20(&qword_1011A4530, &qword_100EE47C8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011A4A68, &qword_100EE5368);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for ContainerDetail.ViewController(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011A4A68, &qword_100EE5368);
  return swift_endAccess();
}

void sub_10080DB70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011A4A90, &unk_100EE53E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  v9 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (__OFSUB__(sub_100849C78(), 1))
    {
      __break(1u);
    }

    else
    {
      IndexPath.item.getter();
      __chkstk_darwin();
      LOBYTE(v13[-2]) = v12;
      v13[-1] = v9;
      type metadata accessor for Tracklist.EmptyCell(0);
      sub_100866F00(&qword_1011A4A98, type metadata accessor for Tracklist.EmptyCell, &unk_100EDBB1C);
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v13[3] = v5;
      v13[4] = sub_100020674(&unk_1011A4AA0, &qword_1011A4A90, &unk_100EE53E0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(v13);
      UIHostingConfiguration.margins(_:_:)();
      (*(v6 + 8))(v8, v5);
      UICollectionViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_10080DDB0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1006A6078();
  v9 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v10 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v11 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v11[9] = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  *a2 = a1;
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  *(a2 + 40) = *v11;
  *(a2 + 49) = *&v11[9];
  v5 = type metadata accessor for Tracklist.EmptyCell(0);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  v6 = *(v5 + 40);
  *(a2 + v6) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 44);
  *(a2 + v7) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080DF4C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A4A68, &qword_100EE5368);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___addMusicCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011A4A68, &qword_100EE5368);
  v8 = sub_10010FC20(&qword_1011A4530, &qword_100EE47C8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011A4A68, &qword_100EE5368);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for ContainerDetail.ViewController(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011A4A68, &qword_100EE5368);
  return swift_endAccess();
}

void sub_10080E1C4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011A4A70, &qword_100EE5370);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v24 - v7;
  v9 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [v9 traitCollection];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 6)
    {
      if (qword_10117FB98 != -1)
      {
        swift_once();
      }

      v14 = *&qword_101219330;
    }

    else
    {
      v15 = sub_1006A6078();
      v16 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];

      if (qword_10117FB98 != -1)
      {
        swift_once();
      }

      v14 = v16 + *&qword_101219330;
    }

    v17 = sub_1006A6078();
    v18 = *&v17[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

    __chkstk_darwin();
    *&v24[-2] = v14;
    v24[-1] = v18;
    _s12AddMusicCellVMa(0);
    sub_100866F00(&qword_1011A4A78, _s12AddMusicCellVMa, &unk_100EDFBC0);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v24[3] = v5;
    v24[4] = sub_100020674(&unk_1011A4A80, &qword_1011A4A70, &qword_100EE5370, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v24);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
    v19 = AccessibilityIdentifier.playlistAddMusicCell.unsafeMutableAddressor();
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v20, v21, v22, v23);
  }
}

uint64_t sub_10080E50C@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = _s12AddMusicCellVMa(0);
  v5 = *(v4 + 24);
  *(a1 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 28);
  *(a1 + v6) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080E5C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10010FC20(&qword_101192A78, &qword_100ED00F8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v12[-1] - v7;
  sub_1004EA114();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  UIHostingConfiguration.margins(_:_:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  v12[3] = v3;
  v12[4] = sub_100020674(&qword_101192A88, &qword_101192A78, &qword_100ED00F8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v12);
  UIHostingConfiguration.animatedSizeInvalidationDisabled()();
  v9(v8, v3);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10080E784@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A4A30, &qword_100EE5308);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___suggestedSongsCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011A4A30, &qword_100EE5308);
  v8 = sub_10010FC20(&unk_1011A4550, &unk_100EE47D0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011A4A30, &qword_100EE5308);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for SuggestedSongsDataSource(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011A4A30, &qword_100EE5308);
  return swift_endAccess();
}

void sub_10080E9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011A4A38, &qword_100EE5310);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v29 - v9;
  v11 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *&Strong[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel];
    if (v14)
    {
      v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(&v13[v15], &v32, &unk_1011926C0, &unk_100ECF870);
      if (v33)
      {

        sub_1000095E8(&v32, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        v16 = swift_unknownObjectWeakLoadStrong();

        sub_1000095E8(&v32, &unk_1011926C0, &unk_100ECF870);
        if (v16)
        {
          v17 = *&v13[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController];
          if (v17)
          {
            v18 = v17;
            v30 = v16;
            v31 = v18;
            v19 = sub_1006A6078();
            v20 = *&v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

            swift_getKeyPath();
            swift_getKeyPath();
            v32 = v20;

            static Published.subscript.setter();
            v29 = &v29;
            __chkstk_darwin();
            *(&v29 - 4) = v14;
            *(&v29 - 3) = v11;
            *(&v29 - 2) = v31;
            sub_10010FC20(&qword_1011A4A40, &qword_100EE5360);
            v21 = type metadata accessor for SuggestedSongsModule(255);
            v22 = sub_100866F00(&qword_1011A4A48, type metadata accessor for SuggestedSongsModule, &unk_100EC0D2C);
            v32 = v21;
            v33 = v22;
            swift_getOpaqueTypeConformance2();
            UIHostingConfiguration<>.init(content:)();
            static Edge.Set.all.getter();
            UIHostingConfiguration.margins(_:_:)();
            v23 = *(v6 + 8);
            v23(v8, v5);
            v34 = v5;
            v35 = sub_100020674(&unk_1011A4A50, &qword_1011A4A38, &qword_100EE5310, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
            sub_10001C8B8(&v32);
            UIHostingConfiguration.animatedSizeInvalidationDisabled()();
            v23(v10, v5);
            UICollectionViewCell.contentConfiguration.setter();
            v24 = AccessibilityIdentifier.playlistSuggestedSongsView.unsafeMutableAddressor();
            v25 = *v24;
            v26 = v24[1];
            v27 = v24[2];
            v28 = v24[3];
            sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);

            UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v25, v26, v27, v28);
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10080EE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SuggestedSongsModule(0);
  __chkstk_darwin();
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v6 + *(v7 + 28);
  v16 = 0;
  State.init(wrappedValue:)();
  v9 = v15;
  *v8 = v14[0];
  *(v8 + 1) = v9;
  type metadata accessor for MusicSuggestedSongsViewModel();
  sub_100866F00(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel, &protocol conformance descriptor for MusicSuggestedSongsViewModel);

  *v6 = ObservedObject.init(wrappedValue:)();
  v6[1] = v10;
  type metadata accessor for SuggestedSongsDataSource(0);
  sub_100866F00(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource, &unk_100EC0BF4);

  v6[2] = ObservedObject.init(wrappedValue:)();
  v6[3] = v11;
  v12 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_10086772C(a2 + v12, v6 + *(v4 + 24), type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100866F00(&qword_1011A4A48, type metadata accessor for SuggestedSongsModule, &unk_100EC0D2C);

  View.artworkCaching(owner:)();

  return sub_100867794(v6, type metadata accessor for SuggestedSongsModule);
}

uint64_t sub_10080F0D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10010FC20(&qword_101192738, &qword_100EE4AF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-1] - v5;
  sub_1004E425C();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v9[3] = v3;
  v9[4] = sub_100020674(&qword_101192748, &qword_101192738, &qword_100EE4AF0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v9);
  UIHostingConfiguration.margins(_:_:)();
  (*(v4 + 8))(v6, v3);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10080F250@<X0>(void (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a2(0);
  sub_100866F00(a3, a4, a5);

  result = ObservedObject.init(wrappedValue:)();
  *a6 = result;
  a6[1] = v11;
  return result;
}

uint64_t sub_10080F2CC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192A20, &unk_100EE52F0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192A20, &unk_100EE52F0);
  v8 = sub_10010FC20(&unk_1011A4560, &qword_100ECF5E0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192A20, &unk_100EE52F0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for RelatedContentProvider.Item();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192A20, &unk_100EE52F0);
  return swift_endAccess();
}

double sub_10080F544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_101192A28, &qword_100ED00E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v12[v13], &v27, &unk_1011926C0, &unk_100ECF870);
    if (v28 == 1)
    {

      sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
      return result;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      v15 = v14;
      v16 = sub_10003169C();

      if (v16)
      {
        v17 = *(v16[3] + 16);
        if (v17)
        {
          v18 = [v17 selectedTab];
          if (!v18 || (v25 = v18, v19 = sub_10003F0FC(), v26 = v16, v25, v19 == 7))
          {
            v19 = 1;
          }

          if (sub_1006BD694(v19))
          {
            if (*&v12[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController])
            {
              v24 = &v24;
              __chkstk_darwin();
              *(&v24 - 4) = v9;
              *(&v24 - 3) = v20;
              *(&v24 - 2) = v15;
              *(&v24 - 1) = v21;
              v26 = v20;
              v25 = v21;
              sub_10010FC20(&qword_101192A30, &qword_100EE5300);
              v22 = type metadata accessor for RelatedContentView();
              v23 = sub_100866F00(&qword_101192A38, &type metadata accessor for RelatedContentView, &protocol conformance descriptor for RelatedContentView);
              v27 = v22;
              v28 = v23;
              swift_getOpaqueTypeConformance2();
              UIHostingConfiguration<>.init(content:)();
              static Edge.Set.all.getter();
              v29 = v5;
              v30 = sub_100020674(&unk_101192A40, &qword_101192A28, &qword_100ED00E0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
              sub_10001C8B8(&v27);
              UIHostingConfiguration.margins(_:_:)();
              (*(v6 + 8))(v8, v5);
              UICollectionViewCell.contentConfiguration.setter();

              return result;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10080F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for RelatedContentView();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1006A6078();
  v9 = type metadata accessor for HIMetricsCollectionView();
  v19.receiver = v8;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, "frame");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  CGRectGetWidth(v20);
  RelatedContentView.init(item:stackAuthority:shelfWidth:)();
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100866F00(&qword_101192A38, &type metadata accessor for RelatedContentView, &protocol conformance descriptor for RelatedContentView);

  View.artworkCaching(owner:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10080FBAC(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v89 = sub_10010FC20(&unk_1011A4560, &qword_100ECF5E0);
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v105 = &v78 - v4;
  v78 = sub_10010FC20(&unk_101192A10, &unk_100ED00D0);
  v91 = *(v78 - 8);
  __chkstk_darwin();
  v90 = &v78 - v5;
  v6 = sub_10010FC20(&unk_1011A4550, &unk_100EE47D0);
  v103 = *(v6 - 8);
  v104 = v6;
  __chkstk_darwin();
  v102 = &v78 - v7;
  v8 = sub_10010FC20(&qword_1011A4520, &qword_100EE47C0);
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin();
  v99 = &v78 - v9;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v98 = &v78 - v10;
  v11 = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  v96 = *(v11 - 8);
  v97 = v11;
  __chkstk_darwin();
  v95 = &v78 - v12;
  v13 = sub_10010FC20(&qword_1011A4530, &qword_100EE47C8);
  v106 = *(v13 - 8);
  v107 = v13;
  __chkstk_darwin();
  v94 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v78 - v15;
  v86 = sub_10010FC20(&unk_1011A4500, &unk_100EE47B0);
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = &v78 - v16;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v82 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v78 - v18;
  v93 = type metadata accessor for Playlist.Entry();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v83 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_1011A44F0, &qword_100EE47A8);
  v80 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v78 - v22;
  v24 = sub_10010FC20(&qword_1011A44E0, &qword_100EE47A0);
  v79 = *(v24 - 8);
  __chkstk_darwin();
  v26 = &v78 - v25;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v78 - v29;
  v30 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v31 = IndexPath.section.getter();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v31 >= *(v30 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v32 = *(v30 + v31 + 32);
  if (v32 > 4)
  {
    if (*(v30 + v31 + 32) <= 6u)
    {
      if (v32 != 5)
      {
        *&v111 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_tracklistFooterViewModel);
        sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
        type metadata accessor for TracklistFooter.ViewModel(0);

        v34 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        return v34;
      }

      v35 = v94;
      sub_10080DF4C(v94);
      v36 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      v37 = v2 + v36;
LABEL_19:
      sub_1000089F8(v37, &v109, &unk_1011926C0, &unk_100ECF870);
      Strong = 0;
      if ((v110 & 1) == 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      sub_1000095E8(&v109, &unk_1011926C0, &unk_100ECF870);
      v34 = sub_1007FF120(v35, a2, Strong);

      v40 = v106;
      v39 = v107;
      goto LABEL_22;
    }

    if (v32 == 9)
    {
      v35 = v102;
      sub_10080E784(v102);
      *&v111 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource);
      sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
      type metadata accessor for SuggestedSongsDataSource(0);

      v34 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      v40 = v103;
      v39 = v104;
LABEL_22:
      (*(v40 + 8))(v35, v39);
      return v34;
    }

    if (v32 != 10)
    {
      goto LABEL_51;
    }

    v52 = IndexPath.item.getter();
    v53 = v105;
    if (v52)
    {
      sub_10080F2CC(v105);
      v54 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v54, &v109, &unk_1011926C0, &unk_100ECF870);
      if (v110)
      {
        sub_1000095E8(&v109, &unk_1011926C0, &unk_100ECF870);
LABEL_38:
        v72 = 0;
        goto LABEL_39;
      }

      v69 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v109, &unk_1011926C0, &unk_100ECF870);
      if (!v69)
      {
        goto LABEL_38;
      }

      v70 = sub_1006A3A7C();

      if (!v70)
      {
        goto LABEL_38;
      }

      if (!__OFSUB__(IndexPath.item.getter(), 1))
      {
        v71 = type metadata accessor for RelatedContentProvider.Item();
        Array.subscript.getter(v71, &v109);

        v72 = v109;
LABEL_39:
        v34 = sub_1007FBAE4(v53, a2, v72, &type metadata accessor for RelatedContentProvider.Item);

        (*(v88 + 8))(v53, v89);
        return v34;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v67 = v78;
    (*(v91 + 16))(v90, v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_symphonyRelatedContentSpacingCellRegistration, v78);
    v68 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v68, &v109, &unk_1011926C0, &unk_100ECF870);
    if (v110)
    {
      sub_1000095E8(&v109, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v74 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v109, &unk_1011926C0, &unk_100ECF870);
      if (v74)
      {
        v75 = sub_1006A3864();

LABEL_46:
        v76 = v90;
        v34 = sub_1007FBAE4(v90, a2, v75, type metadata accessor for RelatedContentSpacing.Data);

        (*(v91 + 8))(v76, v67);
        return v34;
      }
    }

    v75 = 0;
    goto LABEL_46;
  }

  if (*(v30 + v31 + 32) > 2u)
  {
    if (v32 != 3)
    {
      v45 = v99;
      sub_10080D440(v99);
      v47 = sub_10084AF0C(v46);
      v49 = v48;
      v51 = v50;
      v34 = sub_1007FB728(v45, a2, v47, v48, v50);
      sub_1004E5B40(v47, v49, v51);
      (*(v100 + 8))(v45, v101);
      return v34;
    }

    v35 = v95;
    sub_10080C92C(v95);
    v38 = v98;
    sub_100859B24(v98);
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    type metadata accessor for Track();
    v34 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v38, &qword_10118A530, &qword_100EC64E0);
    v40 = v96;
    v39 = v97;
    goto LABEL_22;
  }

  if (*(v30 + v31 + 32))
  {
    if (v32 != 2)
    {
      goto LABEL_51;
    }

    sub_10085939C(v19);
    v41 = v92;
    v42 = v93;
    if ((*(v92 + 48))(v19, 1, v93) != 1)
    {
      v61 = v83;
      (*(v41 + 32))(v83, v19, v42);
      v62 = v84;
      sub_10080ACDC(v84);
      v63 = *(v41 + 16);
      v64 = v82;
      v63(v82, v61, v42);
      (*(v41 + 56))(v64, 0, 1, v42);
      _s13TracklistCellCMa();
      v65 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v64, &qword_101191570, &qword_100ECE0B0);
      (*(v85 + 8))(v62, v86);
      *(&v112 + 1) = v42;
      v113 = &protocol witness table for Playlist.Entry;
      v66 = sub_10001C8B8(&v111);
      v63(v66, v61, v42);
      v34 = sub_1004F24B0(&v111);

      (*(v41 + 8))(v61, v42);
      goto LABEL_42;
    }

    sub_1000095E8(v19, &qword_101191570, &qword_100ECE0B0);
    v35 = v87;
    sub_10080D8F8(v87);
    v43 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    v37 = v2 + v43;
    goto LABEL_19;
  }

  v33 = sub_100840F90();
  if (v33 != 2)
  {
    if (v33)
    {
      sub_10080A8B0(v23);
      LOBYTE(v111) = 0;
      _s10HeaderCellCMa();
      v34 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      (*(v80 + 8))(v23, v21);
      return v34;
    }

    v55 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v56 = v2 + v55;
    v57 = v81;
    sub_1000089F8(v56, v81, &unk_1011814D0, &qword_100EC12A0);
    sub_100809DE4(v26);
    v58 = sub_1007FC938(v26, a2, v57, &unk_1011814D0, &qword_100EC12A0, &type metadata accessor for Playlist, _s10HeaderCellCMa);
    (*(v79 + 8))(v26, v24);
    sub_1000089F8(v57, v28, &unk_1011814D0, &qword_100EC12A0);
    v59 = type metadata accessor for Playlist();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v28, 1, v59) == 1)
    {
      sub_1000095E8(v28, &unk_1011814D0, &qword_100EC12A0);
      v111 = 0u;
      v112 = 0u;
      v113 = 0;
    }

    else
    {
      *(&v112 + 1) = v59;
      v113 = &protocol witness table for Playlist;
      v73 = sub_10001C8B8(&v111);
      (*(v60 + 32))(v73, v28, v59);
    }

    v34 = sub_1004F24B0(&v111);

    sub_1000095E8(v57, &unk_1011814D0, &qword_100EC12A0);
LABEL_42:
    sub_1000095E8(&v111, &qword_1011A3DD0, &unk_100EC03F0);
    return v34;
  }

LABEL_51:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100810DCC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = sub_100868730(v9);

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

void sub_100810ECC(char *a1, uint64_t a2)
{
  v205 = a1;
  v190 = type metadata accessor for PlaybackIntentDescriptor(0);
  v192 = *(v190 - 8);
  __chkstk_darwin();
  v194 = v2;
  v195 = &v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v193 = &v176 - v3;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v196 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v191 = &v176 - v5;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v188 = (&v176 - v6);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v202 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v176 - v8;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  *&v200 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v189 = &v176 - v10;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v180 = &v176 - v11;
  v183 = type metadata accessor for Playlist.Variant();
  v186 = *(v183 - 8);
  __chkstk_darwin();
  v178 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10010FC20(&unk_1011A4670, &qword_100EBF808);
  __chkstk_darwin();
  v182 = &v176 - v13;
  v14 = type metadata accessor for Playlist();
  v203 = *(v14 - 8);
  v204 = v14;
  __chkstk_darwin();
  v197 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v179 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v184 = &v176 - v17;
  __chkstk_darwin();
  v185 = &v176 - v18;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v20 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v176 - v21;
  v23 = type metadata accessor for Playlist.Entry();
  v198 = *(v23 - 8);
  __chkstk_darwin();
  v25 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v187 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v199 = &v176 - v27;
  __chkstk_darwin();
  v29 = &v176 - v28;
  __chkstk_darwin();
  v31 = &v176 - v30;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v205 deselectItemAtIndexPath:isa animated:1];

  v33 = v206;
  IndexPath.section.getter();
  v34 = *(v33 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  Array.subscript.getter(&type metadata for ContainerDetail.Section, v210);
  if (v210[0] <= 2u)
  {
    v205 = v22;
    v199 = v29;
    *&v200 = v34;
    v202 = v20;
    v177 = v25;
    if (!v210[0])
    {
      return;
    }

    if (v210[0] != 2)
    {
LABEL_74:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v33 + v35, v31, &unk_1011814D0, &qword_100EC12A0);
    v36 = *(v203 + 48);
    v37 = v36(v31, 1, v204);
    sub_1000095E8(v31, &unk_1011814D0, &qword_100EC12A0);
    v38 = v206;
    if (v37 == 1)
    {
      return;
    }

    v39 = v205;
    sub_10085939C(v205);
    v40 = v198;
    v41 = v23;
    if ((*(v198 + 48))(v39, 1, v23) == 1)
    {
      v42 = &qword_101191570;
      v43 = &qword_100ECE0B0;
      v44 = v39;
      goto LABEL_32;
    }

    v176 = v36;
    v187 = v35;
    (*(v40 + 32))(v177, v39, v23);
    v85 = (v38 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
    v86 = *(v38 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
    *v85 = 0;
    v85[1] = 0;
    if (v86)
    {
      sub_100842788();
    }

    v87 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching;
    if ((*(v38 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
    {
      goto LABEL_67;
    }

    v88 = sub_100853B54();
    v90 = UISearchController.searchText.getter(v89);
    v92 = v91;

    if (!v92)
    {
      goto LABEL_67;
    }

    v93 = HIBYTE(v92) & 0xF;
    if ((v92 & 0x2000000000000000) == 0)
    {
      v93 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (!v93)
    {
      goto LABEL_67;
    }

    v94 = v206;
    *(v206 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) = 1;
    v95 = *(v94 + v87);
    *(v94 + v87) = 0;
    sub_100853E70(v95);
    [*(v94 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchController) setActive:0];
    v96 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v94 + v96, v209, &unk_1011926C0, &unk_100ECF870);
    if (v209[8])
    {
      sub_1000095E8(v209, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v209, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
      }
    }

    v99 = Playlist.Entry.id.getter();
    v100 = *v85;
    v101 = v85[1];
    *v85 = v99;
    v85[1] = v98;
    v102 = v200;
    if (!v101 || (v100 != v99 || v101 != v98) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100842788();
    }

    v103 = *(v102 + 16);
    if (!v103)
    {
LABEL_67:
      v205 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v125 = MusicItem.metricsTargetIdentifier.getter(v41);
      v203 = v126;
      v204 = v125;
      v127 = type metadata accessor for URL();
      (*(*(v127 - 8) + 56))(v201, 1, 1, v127);
      sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
      v128 = swift_allocObject();
      v200 = xmmword_100EBC6B0;
      *(v128 + 16) = xmmword_100EBC6B0;
      sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
      v129 = v41;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBEF50;
      *(inited + 32) = 25705;
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = MusicItem.metricsTargetIdentifier.getter(v129);
      *(inited + 56) = v131;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 88) = 0x8000000100E4E2D0;
      *(inited + 96) = Playlist.Entry.position.getter();
      *(inited + 120) = &type metadata for Int;
      *(inited + 128) = 1684957547;
      *(inited + 136) = 0xE400000000000000;
      *(inited + 144) = MusicItem.metricsContentType.getter(v129);
      *(inited + 152) = v132;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 1701667182;
      *(inited + 184) = 0xE400000000000000;
      v133 = Playlist.Entry.title.getter();
      *(inited + 216) = &type metadata for String;
      *(inited + 192) = v133;
      *(inited + 200) = v134;
      v135 = sub_10010BC60(inited);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
      swift_arrayDestroy();
      *(v128 + 32) = v135;
      sub_10010FC20(&qword_10118BE78, &unk_100ED5DE0);
      v136 = swift_initStackObject();
      *(v136 + 16) = v200;
      *(v136 + 32) = MusicItem.metricsContentType.getter(v129);
      *(v136 + 40) = v137;
      *(v136 + 48) = 0;
      v138 = MetricsEvent.Click.ActionDetails.init(_:)(v136);
      v140 = v139;
      v142 = v141;
      v144 = v143;
      v145 = v188;
      sub_100859CF8(v188);
      *(&v174 + 1) = v140;
      v175 = v142;
      *&v174 = v138;
      v146 = v189;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v204, v203, 18, 31, v201, v128, 0, 5, v189, v174, v175, v144, v145, 0);
      v147 = sub_10053771C();
      v149 = v148;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v150 = qword_101218AD0;
      v151 = GroupActivitiesManager.hasJoined.getter();
      v152 = GroupActivitiesManager.participantsCount.getter();
      v153 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      v154 = *(v150 + v153);
      v155 = v205;
      (*((swift_isaMask & *v205) + 0xB8))(v146, v147, v149, v151 & 1, v152, v154);

      sub_100867794(v146, type metadata accessor for MetricsEvent.Click);
      v156 = v198;
      v157 = v202;
      (*(v198 + 16))(v202, v177, v129);
      (*(v156 + 56))(v157, 0, 1, v129);
      v158 = v191;
      sub_100854F30(v157, v191);
      sub_1000095E8(v157, &qword_101191570, &qword_100ECE0B0);
      v159 = v196;
      sub_1000089F8(v158, v196, &qword_1011848A0, &unk_100EC64F0);
      v160 = v192;
      v161 = (*(v192 + 48))(v159, 1, v190);
      v162 = v195;
      v163 = v193;
      v206 = v129;
      if (v161 != 1)
      {
        v164 = type metadata accessor for TaskPriority();
        (*(*(v164 - 8) + 56))(v163, 1, 1, v164);
        sub_10086772C(v159, v162, type metadata accessor for PlaybackIntentDescriptor);
        type metadata accessor for MainActor();
        v165 = static MainActor.shared.getter();
        v166 = (*(v160 + 80) + 32) & ~*(v160 + 80);
        v167 = swift_allocObject();
        *(v167 + 16) = v165;
        *(v167 + 24) = &protocol witness table for MainActor;
        sub_100869470(v162, v167 + v166, type metadata accessor for PlaybackIntentDescriptor);
        sub_1001F4F78(0, 0, v163, &unk_100ECA700, v167);

        sub_1000095E8(v158, &qword_1011848A0, &unk_100EC64F0);
        (*(v156 + 8))(v177, v206);
        sub_100867794(v159, type metadata accessor for PlaybackIntentDescriptor);
        return;
      }

      sub_1000095E8(v158, &qword_1011848A0, &unk_100EC64F0);
      (*(v156 + 8))(v177, v206);
      v44 = v159;
      v42 = &qword_1011848A0;
      v43 = &unk_100EC64F0;
LABEL_32:
      sub_1000095E8(v44, v42, v43);
      return;
    }

    v104 = 0;
    while (*(v200 + 32 + v104) != 2)
    {
      if (v103 == ++v104)
      {
        goto LABEL_67;
      }
    }

    v105 = v199;
    sub_1000089F8(v206 + v187, v199, &unk_1011814D0, &qword_100EC12A0);
    v106 = v204;
    if (v176(v105, 1, v204))
    {
      sub_1000095E8(v105, &unk_1011814D0, &qword_100EC12A0);
      v108 = v185;
      v107 = v186;
      v109 = v183;
      (*(v186 + 56))(v185, 1, 1, v183);
      v110 = v182;
    }

    else
    {
      v111 = v203;
      v112 = v197;
      (*(v203 + 16))(v197, v105, v106);
      sub_1000095E8(v105, &unk_1011814D0, &qword_100EC12A0);
      v108 = v185;
      Playlist.variant.getter();
      (*(v111 + 8))(v112, v106);
      v110 = v182;
      v109 = v183;
      v107 = v186;
    }

    v113 = v184;
    (*(v107 + 104))(v184, enum case for Playlist.Variant.smart(_:), v109);
    (*(v107 + 56))(v113, 0, 1, v109);
    v114 = *(v181 + 48);
    sub_1000089F8(v108, v110, &unk_10119EF50, &unk_100EDDF70);
    v205 = v114;
    v115 = &v114[v110];
    v116 = v109;
    sub_1000089F8(v113, v115, &unk_10119EF50, &unk_100EDDF70);
    v117 = v108;
    v118 = *(v107 + 48);
    if (v118(v110, 1, v116) == 1)
    {
      sub_1000095E8(v113, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v117, &unk_10119EF50, &unk_100EDDF70);
      if (v118(&v205[v110], 1, v116) == 1)
      {
        sub_1000095E8(v110, &unk_10119EF50, &unk_100EDDF70);
        goto LABEL_67;
      }
    }

    else
    {
      v119 = v179;
      sub_1000089F8(v110, v179, &unk_10119EF50, &unk_100EDDF70);
      v120 = v205;
      if (v118(&v205[v110], 1, v116) != 1)
      {
        v168 = v186;
        v169 = &v120[v110];
        v170 = v178;
        (*(v186 + 32))(v178, v169, v116);
        sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v171 = dispatch thunk of static Equatable.== infix(_:_:)();
        v172 = *(v168 + 8);
        v172(v170, v116);
        sub_1000095E8(v184, &unk_10119EF50, &unk_100EDDF70);
        sub_1000095E8(v185, &unk_10119EF50, &unk_100EDDF70);
        v172(v179, v116);
        sub_1000095E8(v110, &unk_10119EF50, &unk_100EDDF70);
        v121 = v180;
        if (v171)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      sub_1000095E8(v184, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v185, &unk_10119EF50, &unk_100EDDF70);
      (*(v186 + 8))(v119, v116);
    }

    sub_1000095E8(v110, &unk_1011A4670, &qword_100EBF808);
    v121 = v180;
LABEL_66:
    Playlist.Entry.position.getter();
    IndexPath.init(item:section:)();
    v122 = type metadata accessor for IndexPath();
    (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
    v123 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_opportunisticProminentItemIndexPath;
    v124 = v206;
    swift_beginAccess();
    sub_10006B010(v121, v124 + v123, &unk_10118BCE0, &qword_100EC6450);
    swift_endAccess();
    goto LABEL_67;
  }

  if (((1 << v210[0]) & 0xE58) != 0)
  {
    return;
  }

  if (v210[0] != 5)
  {
    goto LABEL_74;
  }

  v45 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v46 = type metadata accessor for URL();
  v47 = *(*(v46 - 8) + 56);
  v47(v202, 1, 1, v46);
  v48 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v205 = v48;
  v49 = &v48[v33];
  v50 = v199;
  sub_1000089F8(v49, v199, &unk_1011814D0, &qword_100EC12A0);
  v52 = v203;
  v51 = v204;
  if ((*(v203 + 48))(v50, 1, v204))
  {
    v53 = v45;
    sub_1000095E8(v50, &unk_1011814D0, &qword_100EC12A0);
    v54 = 0;
    v55 = 0xE000000000000000;
  }

  else
  {
    v56 = v197;
    (*(v52 + 16))(v197, v50, v51);
    v57 = v45;
    sub_1000095E8(v50, &unk_1011814D0, &qword_100EC12A0);
    v54 = Playlist.id.getter();
    v55 = v58;
    (*(v52 + 8))(v56, v51);
  }

  v59 = v201;
  v47(v201, 1, 1, v46);
  v173 = v59;
  v60 = v200;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x636973754D646461, 0xE800000000000000, 5, 44, v202, 0, 0, 12, v200, 0, 0, 65280, v54, v55, 0x7473696C79616C50, 0xE800000000000000, v173, 0, 1, 2, 0, 0, 0);
  v61 = sub_10053771C();
  v63 = v62;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v64 = qword_101218AD0;
  v65 = GroupActivitiesManager.hasJoined.getter();
  v66 = GroupActivitiesManager.participantsCount.getter();
  v67 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v45) + 0xB8))(v60, v61, v63, v65 & 1, v66, *(v64 + v67));

  sub_100867794(v60, type metadata accessor for MetricsEvent.Click);
  v68 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  v69 = v206;
  swift_beginAccess();
  sub_1000089F8(v69 + v68, &v207, &unk_1011926C0, &unk_100ECF870);
  if (v208)
  {
    sub_1000095E8(&v207, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v70 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v207, &unk_1011926C0, &unk_100ECF870);
    if (v70)
    {
      v71 = *&v70[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

      if (v71)
      {
        v72 = v187;
        sub_1000089F8(&v205[v69], v187, &unk_1011814D0, &qword_100EC12A0);
        v73 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist;
        swift_beginAccess();
        sub_10006B010(v72, v71 + v73, &unk_1011814D0, &qword_100EC12A0);
        swift_endAccess();
      }
    }
  }

  sub_1000089F8(v69 + v68, &v207, &unk_1011926C0, &unk_100ECF870);
  if (v208)
  {
    sub_1000095E8(&v207, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v74 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v207, &unk_1011926C0, &unk_100ECF870);
    if (v74)
    {
      v75 = *&v74[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

      if (v75)
      {
        v76 = *(v69 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel);
        swift_getKeyPath();
        swift_getKeyPath();
        v207 = v76;

        static Published.subscript.setter();
      }
    }
  }

  sub_1000089F8(v69 + v68, &v207, &unk_1011926C0, &unk_100ECF870);
  if (v208)
  {
    sub_1000095E8(&v207, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v77 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v207, &unk_1011926C0, &unk_100ECF870);
    if (v77)
    {
      v78 = *&v77[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

      if (v78)
      {
        v79 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v80 = (v78 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler);
        v81 = *(v78 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler);
        v82 = *(v78 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler + 8);
        *v80 = &unk_100EE52A0;
        v80[1] = v79;

        sub_100020438(v81, v82);
      }
    }
  }

  sub_1000089F8(v69 + v68, &v207, &unk_1011926C0, &unk_100ECF870);
  if (v208)
  {
    v42 = &unk_1011926C0;
    v43 = &unk_100ECF870;
    v44 = &v207;
    goto LABEL_32;
  }

  v83 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v207, &unk_1011926C0, &unk_100ECF870);
  if (v83)
  {
    v84 = *&v83[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

    if (v84)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v207) = 1;
      static Published.subscript.setter();
    }
  }
}

uint64_t sub_1008129AC(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v2[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return _swift_task_switch(sub_100812A7C, v4, v3);
}

uint64_t sub_100812A7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v3 = v0[13];
    if (v2)
    {
      v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      v5 = v2;
      swift_beginAccess();
      sub_1000089F8(v5 + v4, v3, &unk_1011814D0, &qword_100EC12A0);
    }

    else
    {
      v8 = type metadata accessor for Playlist();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    }

    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_100812C34;
    v10 = v0[13];
    v11 = v0[11];

    return sub_10084C8A0(v11, v10);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100812C34()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 104);

  sub_1000095E8(v3, &unk_1011814D0, &qword_100EC12A0);
  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_100812DA0, v5, v4);
}

uint64_t sub_100812DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100812FE8(uint64_t a1, uint64_t a2, char *a3)
{
  v56 = a3;
  v59 = a2;
  v62 = type metadata accessor for MusicVideo();
  v55 = *(v62 - 1);
  __chkstk_darwin();
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v3;
  __chkstk_darwin();
  v6 = &v49 - v5;
  v57 = type metadata accessor for MusicPropertySource();
  v61 = *(v57 - 8);
  __chkstk_darwin();
  v58 = v7;
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v49 - v8;
  v53 = type metadata accessor for Song();
  v51 = *(v53 - 1);
  v10 = *(v51 + 64);
  __chkstk_darwin();
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v49 - v12;
  v14 = type metadata accessor for Playlist.Entry.InternalItem();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v19 = v55;
    v53 = *(v55 + 32);
    v50 = v6;
    v20 = v62;
    (v53)(v6, v17, v62);
    v21 = type metadata accessor for TaskPriority();
    v22 = *(*(v21 - 8) + 56);
    v52 = v9;
    v22(v9, 1, 1, v21);
    (*(v19 + 16))(v4, v6, v20);
    v24 = v60;
    v23 = v61;
    v25 = v57;
    (*(v61 + 16))(v60, v56, v57);
    type metadata accessor for MainActor();
    v56 = v4;
    v26 = v59;

    v27 = static MainActor.shared.getter();
    v28 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v29 = (v54 + *(v23 + 80) + v28) & ~*(v23 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = v27;
    *(v30 + 3) = &protocol witness table for MainActor;
    *(v30 + 4) = v26;
    v31 = v62;
    (v53)(&v30[v28], v56, v62);
    (*(v23 + 32))(&v30[v29], v24, v25);
    sub_1001F4CB8(0, 0, v52, &unk_100EE5508, v30);

    return (*(v19 + 8))(v50, v31);
  }

  else
  {
    v33 = v9;
    v34 = v61;
    if (v18 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v15 + 96))(v17, v14);
      v35 = v51;
      v62 = *(v51 + 32);
      v36 = v13;
      v37 = v13;
      v49 = v13;
      v38 = v53;
      (v62)(v37, v17, v53);
      v39 = type metadata accessor for TaskPriority();
      v40 = *(*(v39 - 8) + 56);
      v52 = v33;
      v40(v33, 1, 1, v39);
      (*(v35 + 16))(v11, v36, v38);
      v41 = v57;
      (*(v34 + 16))(v60, v56, v57);
      type metadata accessor for MainActor();
      v42 = v59;

      v43 = static MainActor.shared.getter();
      v44 = (*(v35 + 80) + 40) & ~*(v35 + 80);
      v45 = (v10 + *(v34 + 80) + v44) & ~*(v34 + 80);
      v46 = swift_allocObject();
      *(v46 + 2) = v43;
      *(v46 + 3) = &protocol witness table for MainActor;
      *(v46 + 4) = v42;
      v47 = &v46[v44];
      v48 = v53;
      (v62)(v47, v11, v53);
      (*(v34 + 32))(&v46[v45], v60, v41);
      sub_1001F4CB8(0, 0, v52, &unk_100EE5518, v46);

      return (*(v35 + 8))(v49, v48);
    }

    else
    {
      return (*(v15 + 8))(v17, v14);
    }
  }
}

uint64_t sub_1008136B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Track();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_1008137A8, v9, v8);
}

uint64_t sub_1008137A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Song();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for Track.song(_:), v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1008138D4;
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[2];

  return sub_100138C84(v9, v7, v8, 0);
}

uint64_t sub_1008138D4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_10086E280, v6, v5);
}

uint64_t sub_100813A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Track();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_100813B50, v9, v8);
}

uint64_t sub_100813B50()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for MusicVideo();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for Track.musicVideo(_:), v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100708704;
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[2];

  return sub_100138C84(v9, v7, v8, 0);
}

void sub_100813D14(char *a1@<X8>)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = &v42 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v42 - v9;
  __chkstk_darwin();
  v11 = &v42 - v10;
  __chkstk_darwin();
  v13 = &v42 - v12;
  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v14, v51, &unk_1011926C0, &unk_100ECF870);
  if (v51[8])
  {
    sub_1000095E8(v51, &unk_1011926C0, &unk_100ECF870);
LABEL_11:
    (*(v6 + 56))(a1, 1, 1, v5);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v51, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    goto LABEL_11;
  }

  v16 = v1;
  v17 = sub_1006A6078();

  v18 = [v17 indexPathsForVisibleItems];
  v19 = v16;
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((*(v16 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition) & 1) != 0 && *(v16 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingSuggestedSongsSection) == 1)
  {
    v20 = *(v16 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = v20 + 32;
      while (*(v23 + v22) != 9)
      {
        if (v21 == ++v22)
        {
          goto LABEL_19;
        }
      }

      v43 = v16;
      v44 = v4;
      v24 = v13;
      IndexPath.init(item:section:)();
      v25 = 0;
      v26 = *(v48 + 16);
      v45 = v6 + 16;
      v46 = v26;
      v47 = (v6 + 8);
      while (v46 != v25)
      {
        if (v25 >= *(v48 + 16))
        {
          goto LABEL_31;
        }

        v27 = *(v6 + 16);
        v27(v11, v48 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25++, v5);
        v28 = static IndexPath.== infix(_:_:)();
        v29 = *(v6 + 8);
        v29(v11, v5);
        if (v28)
        {

          v27(a1, v24, v5);
          (*(v6 + 56))(a1, 0, 1, v5);
          v29(v24, v5);
          return;
        }
      }

      (*v47)(v24, v5);
      v19 = v43;
      v4 = v44;
    }
  }

LABEL_19:
  v30 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  sub_1000089F8(v19 + v30, v4, &unk_10118BCE0, &qword_100EC6450);
  v31 = (*(v6 + 48))(v4, 1, v5);
  v47 = v5;
  if (v31 == 1)
  {
    sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
LABEL_27:
    v50 = v48;

    sub_10085CCEC(&v50);

    if (*(v50 + 16))
    {
      v41 = v47;
      (*(v6 + 16))(a1, v50 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v47);

      (*(v6 + 56))(a1, 0, 1, v41);
    }

    else
    {

      (*(v6 + 56))(a1, 1, 1, v47);
    }
  }

  else
  {
    v46 = a1;
    (*(v6 + 32))(v49, v4, v5);
    v32 = 0;
    v33 = *(v48 + 16);
    while (1)
    {
      if (v33 == v32)
      {
        (*(v6 + 8))(v49, v47);
        a1 = v46;
        goto LABEL_27;
      }

      if (v32 >= *(v48 + 16))
      {
        break;
      }

      v34 = *(v6 + 16);
      v35 = v47;
      v34(v8, v48 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32++, v47);
      v36 = static IndexPath.== infix(_:_:)();
      v37 = *(v6 + 8);
      v37(v8, v35);
      if (v36)
      {

        v38 = v46;
        v39 = v47;
        v40 = v49;
        v34(v46, v49, v47);
        (*(v6 + 56))(v38, 0, 1, v39);
        v37(v40, v39);
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);

    __break(1u);
  }
}

void sub_1008147A0(void *a1, uint64_t a2)
{
  v55 = a1;
  v4 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  __chkstk_darwin();
  v6 = &v52 - v5;
  __chkstk_darwin();
  v67 = &v52 - v7;
  __chkstk_darwin();
  __chkstk_darwin();
  v60 = &v52 - v8;
  v10 = __chkstk_darwin();
  v12 = &v52 - v11;
  v65 = *(a2 + 16);
  v56 = a2;
  v57 = v2;
  v53 = v13;
  v54 = v9;
  v52 = v14;
  if (v65)
  {
    v15 = 0;
    v16 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    v17 = *(v16 + 16);
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v58 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v63 = a2 + v58;
    v64 = v19;
    v66 = *(v18 + 56);
    v62 = v16;
    v20 = v16 + 32;
    v59 = (v18 + 16);
    v21 = (v18 - 8);
    v61 = _swiftEmptyArrayStorage;
    do
    {
      v22 = v4;
      (v64)(v12, v63 + v66 * v15, v4, v10);
      if (v17)
      {
        v23 = 0;
        while (1)
        {
          if (*(v62 + 16) == v23)
          {
            __break(1u);
            return;
          }

          if (*(v20 + v23) == 2)
          {
            break;
          }

          if (v17 == ++v23)
          {
            goto LABEL_3;
          }
        }

        if (IndexPath.section.getter() != v23)
        {
          goto LABEL_4;
        }

        v24 = *v59;
        (*v59)(v60, v12, v22);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v25 = v61;
        }

        else
        {
          v25 = sub_100499724(0, v61[2] + 1, 1, v61);
        }

        v27 = v25[2];
        v26 = v25[3];
        v28 = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          v61 = (v27 + 1);
          v30 = sub_100499724((v26 > 1), v27 + 1, 1, v25);
          v28 = v61;
          v25 = v30;
        }

        v25[2] = v28;
        v61 = v25;
        v29 = v25 + v58 + v27 * v66;
        v4 = v22;
        v24(v29, v60, v22);
      }

      else
      {
LABEL_3:
        IndexPath.section.getter();
LABEL_4:
        v4 = v22;
        (*v21)(v12, v22);
      }

      v15 = (v15 + 1);
    }

    while (v15 != v65);
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  v31 = v61[2];
  if (v31)
  {
    v32 = v52;
    v33 = v54 + 16;
    v34 = v61 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v65 = *(v54 + 16);
    v65(v67, v34, v4, v10);
    v64 = *(v33 + 56);
    v66 = (v33 - 8);
    v35 = (v33 + 16);
    do
    {
      (v65)(v6, v34, v4);
      v36 = IndexPath.item.getter();
      v37 = IndexPath.item.getter();
      v38 = *v66;
      v39 = v37 < v36;
      if (v37 >= v36)
      {
        v40 = v67;
      }

      else
      {
        v40 = v6;
      }

      if (v39)
      {
        v41 = v67;
      }

      else
      {
        v41 = v6;
      }

      v38(v40, v4);
      v42 = *v35;
      v43 = v41;
      v44 = v67;
      (*v35)(v32, v43, v4);
      v42(v44, v32, v4);
      v34 = &v64[v34];
      --v31;
    }

    while (v31);

    v45 = v44;
    v46 = v53;
    v42(v53, v45, v4);
    v47 = v57;
    v48 = sub_1008377B0(v46);
    (v38)(v46, v4, v48);
  }

  else
  {

    v47 = v57;
  }

  v49 = *(v47 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController);
  v50 = v56;
  if (v49)
  {
    v51 = v49;
    sub_10025E038(v55, v50);
  }
}

double sub_100814CE0(void *a1)
{
  v3 = [a1 isActive];
  v4 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching);
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) = v3;
  sub_100853E70(v4);
  if ([a1 isActive])
  {
    v6 = UISearchController.searchText.getter(v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText);
  *v8 = v6;
  v8[1] = v7;

  return sub_1008531F0();
}

void sub_100814DE8(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v3, v5, &unk_1011926C0, &unk_100ECF870);
  if (v5[8])
  {
    sub_1000095E8(v5, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v5, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      sub_1006A3684(a1);
      sub_10069F9B8();
      sub_100559BC8();
      sub_10055A988();
    }
  }

  sub_10084E514(a1);
}

void sub_100814FF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1, v12, &unk_1011926C0, &unk_100ECF870);
  sub_1000089F8(v1 + v3, &v14, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000089F8(v12, v11, &unk_1011926C0, &unk_100ECF870);
    if ((v15 & 1) == 0)
    {
      sub_10003D17C(&v14, &v10, &unk_101192780, &qword_100ECF990);
      type metadata accessor for ContainerDetail.ViewController(0);
      v9 = static WeakWrapper.== infix(_:_:)(v11, &v10);
      sub_1000095E8(&v10, &unk_101192780, &qword_100ECF990);
      sub_1000095E8(v11, &unk_101192780, &qword_100ECF990);
      sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
      if (v9)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000095E8(v11, &unk_101192780, &qword_100ECF990);
  }

  sub_1000095E8(v12, &unk_101192770, &qword_100ECF988);
LABEL_7:
  sub_1000089F8(v1 + v3, v12, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
LABEL_8:
    sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v5 = sub_1006A6D30();

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v7, 0, sub_100867724, v6).super.super.isa;

    UIBarButtonItem.primaryActionKind.setter(isa, 1);
  }
}

void *sub_100815288(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, &v13, &unk_1011926C0, &unk_100ECF870);
  if (v14 == 1)
  {

    sub_1000095E8(&v13, &unk_1011926C0, &unk_100ECF870);
    return _swiftEmptyArrayStorage;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v13, &unk_1011926C0, &unk_100ECF870);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = sub_1006A6D30();
  v23 = v5;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v23, 15, v15);
  v19[0] = v15[0];
  v19[1] = v15[1];
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v6 = v5;
  v7 = v4;
  PresentationSource.init(viewController:position:)(v7, v19, &v13);
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_1008213D8(&v13, _swiftEmptyArrayStorage);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 children];

    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = v2;
    v2 = v11;
  }

  sub_10012BA6C(&v13);
  return v8;
}

uint64_t sub_10081547C()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___dragDropController;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___dragDropController);
  v3 = v2;
  if (v2 == 1)
  {
    swift_unknownObjectWeakInit();
    v3 = sub_10081550C(v6);
    swift_unknownObjectWeakDestroy();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1000D9148(v4);
  }

  sub_10000CD8C(v2);
  return v3;
}

uint64_t sub_10081550C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, v23, &unk_1011926C0, &unk_100ECF870);
  if (v23[8])
  {

    sub_1000095E8(v23, &unk_1011926C0, &unk_100ECF870);
    return 0;
  }

  v4 = swift_unknownObjectWeakLoadStrong();

  sub_1000095E8(v23, &unk_1011926C0, &unk_100ECF870);
  if (v4)
  {
    v5 = sub_1006A6078();

    v6 = swift_allocObject();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v9 = v5;
    v10 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();

    v13 = swift_unknownObjectWeakLoadStrong();

    swift_unknownObjectWeakInit();
    v14 = v9;

    type metadata accessor for CollectionViewDragDropController(0);
    v4 = swift_allocObject();
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 1;
    *(v4 + 96) = 0;
    v15 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
    v16 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
    *(v4 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
    *(v4 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
    *(v4 + 16) = v14;
    *(v4 + 24) = sub_10086AF00;
    *(v4 + 32) = v6;
    *(v4 + 40) = sub_10086AF5C;
    v17 = *(v4 + 56);
    v18 = *(v4 + 64);
    *(v4 + 64) = 0;
    *(v4 + 48) = v11;
    *(v4 + 56) = 0;
    v19 = v14;

    sub_100020438(v17, v18);
    v20 = *(v4 + 72);
    v21 = *(v4 + 80);
    *(v4 + 72) = sub_10086AF64;
    *(v4 + 80) = v12;

    sub_100020438(v20, v21);
    sub_100321DD8();
    sub_100322048();
  }

  return v4;
}

id sub_10081585C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v5 = &v14[-v4];
  v6 = type metadata accessor for Playlist.Entry();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    IndexPath.section.getter();
    Array.subscript.getter(&type metadata for ContainerDetail.Section, &v15);
    if (v15 == 2)
    {
      sub_10085939C(v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v9, v5, v6);
        sub_100858450(v9, v3);
        v12 = PlaybackIntentDescriptor.intent.getter();
        sub_100867794(v3, type metadata accessor for PlaybackIntentDescriptor);
        v13 = sub_1007991E0(v12, _swiftEmptyArrayStorage);

        (*(v7 + 8))(v9, v6);
        return v13;
      }

      sub_1000095E8(v5, &qword_101191570, &qword_100ECE0B0);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_100815B0C(uint64_t a1@<X0>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v114 = *(v7 - 8);
  v115 = v7;
  __chkstk_darwin();
  v117 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v10 = &v100 - v9;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  v118 = v11;
  v119 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v113 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v116 = &v100 - v14;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v16 = &v100 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  v121 = v17;
  v122 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v112 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v100 - v20;
  __chkstk_darwin();
  v120 = &v100 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v24 = Strong;
  if ([a3 hasActiveDrag])
  {

LABEL_21:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  sub_1000089F8(a1, v16, &unk_10118BCE0, &qword_100EC6450);
  v26 = v121;
  v25 = v122;
  if ((*(v122 + 48))(v16, 1, v121) == 1)
  {

    sub_1000095E8(v16, &unk_10118BCE0, &qword_100EC6450);
    goto LABEL_21;
  }

  v111 = a4;
  v27 = v120;
  v109 = *(v25 + 32);
  v110 = v25 + 32;
  v109(v120, v16, v26);
  v28 = v25;
  v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v24[v29], &v125, &unk_1011926C0, &unk_100ECF870);
  if (v126 == 1)
  {

    (*(v28 + 8))(v27, v26);
    sub_1000095E8(&v125, &unk_1011926C0, &unk_100ECF870);
    a4 = v111;
    goto LABEL_21;
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v125, &unk_1011926C0, &unk_100ECF870);
  if (!v30)
  {
    (*(v122 + 8))(v120, v26);

    a4 = v111;
    goto LABEL_21;
  }

  v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v24[v31], v10, &unk_1011814D0, &qword_100EC12A0);
  v33 = v118;
  v32 = v119;
  v34 = (*(v119 + 48))(v10, 1, v118);
  a4 = v111;
  if (v34 == 1)
  {
    (*(v122 + 8))(v120, v121);

    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
    goto LABEL_21;
  }

  v35 = v32 + 32;
  v36 = *(v32 + 32);
  v37 = v116;
  v107 = v36;
  v108 = v35;
  v36(v116, v10, v33);
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, &v125);
  if (v125 != 5 && v125 != 2)
  {

    (*(v119 + 8))(v37, v33);
    (*(v122 + 8))(v120, v121);
    goto LABEL_21;
  }

  memset(v127, 0, sizeof(v127));
  v128 = 0;
  v129 = xmmword_100EBCEF0;
  v106 = v30;
  v38 = PresentationSource.init(viewController:position:)(v106, v127, &v125);
  v39 = v117;
  v100 = *(v119 + 16);
  v101 = (v119 + 16);
  (v100)(v117, v37, v33, v38);
  v40 = v115;
  v41 = *(v122 + 56);
  v102 = *(v115 + 20);
  v103 = v41;
  v104 = v122 + 56;
  v41(v39 + v102, 1, 1, v121);
  v42 = *&v24[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController];
  v105 = (v39 + *(v40 + 24));
  if (!v42)
  {
    v47 = 512;
    goto LABEL_27;
  }

  v43 = (v42 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v44 = v43[1];
  if (v44)
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 | *v43;
  if (!*v43)
  {

    v48 = v122;
    if (v44)
    {
      goto LABEL_26;
    }

LABEL_24:
    v47 = v46;
    goto LABEL_27;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v50 = v49 & v44;
  v48 = v122;
  if ((v50 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v47 = v46;
  if (!sub_10081789C())
  {
    v75 = v120;
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_1000060E4(v76, qword_1012186C8);
    v77 = v48 + 16;
    v78 = v121;
    v113 = *(v48 + 16);
    v113(v21, v75, v121);
    v79 = v48;
    v80 = Logger.logObject.getter();
    LODWORD(v107) = static os_log_type_t.default.getter();
    v81 = os_log_type_enabled(v80, v107);
    v108 = v77;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v100 = v82;
      v101 = swift_slowAlloc();
      v124[0] = v101;
      *v82 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v83 = v79;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      (*(v83 + 8))(v21, v78);
      v87 = sub_1000105AC(v84, v86, v124);
      v75 = v120;

      v88 = v100;
      *(v100 + 1) = v87;
      _os_log_impl(&_mh_execute_header, v80, v107, "Playlist drop operation=.at(indexPath=%{public}s)", v88, 0xCu);
      sub_10000959C(v101);
    }

    else
    {

      (*(v79 + 8))(v21, v78);
    }

    v89 = v117;
    v90 = v102;
    sub_100867794(v117 + v102, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    v91 = v75;
    v92 = v75;
    v93 = v113;
    v113((v89 + v90), v91, v78);
    v103(v89 + v90, 0, 1, v78);
    v94 = v112;
    v93(v112, v92, v78);
    sub_10012B7A8(&v125, v124);
    v95 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v96 = (v19 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    v109((v97 + v95), v94, v78);
    *(v97 + v96) = v24;
    sub_10012B828(v124, v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8));
    v98 = v105;
    *v105 = &unk_100EE5228;
    v98[1] = v97;
    v99 = v24;
    v64 = v118;
    v61 = v78;
    v63 = v116;
    goto LABEL_32;
  }

LABEL_27:
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1000060E4(v51, qword_1012186C8);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v124[0] = v55;
    *v54 = 136446210;
    v123 = v47;
    sub_10010FC20(&unk_1011A4A20, &qword_100EE5218);
    v56 = String.init<A>(describing:)();
    v58 = sub_1000105AC(v56, v57, v124);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "Playlist drop operation=.into sort=%{public}s", v54, 0xCu);
    sub_10000959C(v55);
  }

  v59 = v117;
  v60 = v102;
  sub_100867794(v117 + v102, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v61 = v121;
  v103(v59 + v60, 1, 1, v121);
  v62 = v113;
  v63 = v116;
  v64 = v118;
  (v100)(v113, v116, v118);
  sub_10012B7A8(&v125, v124);
  v65 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v66 = swift_allocObject();
  v107(v66 + v65, v62, v64);
  sub_10012B828(v124, v66 + ((v13 + v65 + 7) & 0xFFFFFFFFFFFFFFF8));
  v67 = v105;
  *v105 = &unk_100EE5210;
  v67[1] = v66;
LABEL_32:
  v68 = v106;
  v69 = [v106 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  (*(v119 + 8))(v63, v64);
  (*(v122 + 8))(v120, v61);
  v70 = v124[0];
  v71 = type metadata accessor for DragDropToPlaylist.Destination(0);
  *(a4 + 24) = v71;
  *(a4 + 32) = sub_100866F00(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination, &unk_100EE17E0);
  v72 = sub_10001C8B8(a4);
  v73 = *(v71 + 20);
  v74 = v117;
  sub_10086772C(v117, v72 + v73, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
  (*(v114 + 56))(v72 + v73, 0, 1, v115);
  *v72 = v70;
  sub_10012B828(&v125, v72 + *(v71 + 24));
  sub_100867794(v74, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
}

uint64_t sub_100816908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for IndexPath();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return _swift_task_switch(sub_100816AA0, v8, v7);
}

uint64_t sub_100816AA0(uint64_t a1)
{
  v2 = v1[9];
  v3 = IndexPath.section.getter();
  v4 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (*(v7 + v6) != 5)
    {
      if (v5 == ++v6)
      {
        goto LABEL_10;
      }
    }

    if (v3 == v6)
    {
      v8 = 0;
      while (*(v7 + v8) != 2)
      {
        if (v5 == ++v8)
        {
          goto LABEL_10;
        }
      }

      v14 = v1[14];
      v15 = v1[11];
      v16 = v1[12];
      v17 = v1[9];
      v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
      swift_beginAccess();
      sub_1000089F8(v17 + v18, v14, &qword_10119A808, &unk_100ED91D0);
      v19 = (*(v16 + 48))(v14, 1, v15);
      v20 = v1[14];
      if (v19)
      {
        sub_1000095E8(v1[14], &qword_10119A808, &unk_100ED91D0);
        goto LABEL_12;
      }

      v22 = v1[12];
      v21 = v1[13];
      v23 = v1[11];
      (*(v22 + 16))(v21, v1[14], v23);
      sub_1000095E8(v20, &qword_10119A808, &unk_100ED91D0);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v24 = dispatch thunk of Collection.distance(from:to:)();
      (*(v22 + 8))(v21, v23);
      result = v24 - 1;
      if (!__OFSUB__(v24, 1))
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }

LABEL_10:
  result = IndexPath.item.getter();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_21;
  }

  IndexPath.section.getter();
LABEL_12:
  IndexPath.init(item:section:)();
  v10 = swift_task_alloc();
  v1[21] = v10;
  *v10 = v1;
  v10[1] = sub_100816D48;
  v11 = v1[17];
  v12 = v1[10];
  v13 = v1[7];

  return sub_10084EB34(v13, v11, v12);
}

uint64_t sub_100816D48()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100816E68, v3, v2);
}

uint64_t sub_100816E68()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100816F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v6;
  v3[10] = v5;

  return _swift_task_switch(sub_100817008, v6, v5);
}

uint64_t sub_100817008()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.checkForDuplicates(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1008138D4;
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v4, v2, 0, 1, v3, 0, 0);
}

void sub_1008170DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  if ((*(*(v3 - 8) + 48))(a1, 1, v3) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if (*(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates) == 1)
      {
        sub_1008422A8();
      }
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (*(v6 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate) == 1)
      {
        sub_10083AF5C(0);
      }
    }
  }
}

uint64_t sub_1008171D0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011A46C0, &qword_100EE4B38);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1008260A0(v4);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 8))(a1, v5);
      v11 = *(v6 + 32);
      v11(v8, v4, v5);
      return (v11)(a1, v8, v5);
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  v13 = *(v6 + 32);
  v13(v8, a1, v5);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1000095E8(v4, &unk_1011A46C0, &qword_100EE4B38);
  }

  return (v13)(a1, v8, v5);
}

double sub_100817414(char a1)
{
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
  if ((v2 & 0x8000000000000000) == 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of MusicAutoupdatingResponse.update(_:)();

    return sub_1004E6028(v2);
  }

  return result;
}

void sub_1008174CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = sub_10010FC20(&unk_10118B970, &qword_100EC71E0) - 8;
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  v13 = *(v9 + 56);
  sub_1000089F8(a1, v11, &unk_10118BCE0, &qword_100EC6450);
  sub_1000089F8(v2 + v12, &v11[v13], &unk_10118BCE0, &qword_100EC6450);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) == 1)
  {
    if (v14(&v11[v13], 1, v4) == 1)
    {
      v15 = &unk_10118BCE0;
      v16 = &qword_100EC6450;
      v17 = v11;
LABEL_9:
      sub_1000095E8(v17, v15, v16);
      return;
    }
  }

  else
  {
    sub_1000089F8(v11, v8, &unk_10118BCE0, &qword_100EC6450);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      v21 = v25;
      (*(v5 + 32))(v25, &v11[v13], v4);
      sub_100866F00(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v8, v4);
      sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
      if (v22)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v8, v4);
  }

  sub_1000095E8(v11, &unk_10118B970, &qword_100EC71E0);
LABEL_7:
  sub_100846A54(v18);
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v19, v26, &unk_1011926C0, &unk_100ECF870);
  if (v26[8])
  {
    v15 = &unk_1011926C0;
    v16 = &unk_100ECF870;
    v17 = v26;
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v26, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    sub_100503D5C();
  }
}

BOOL sub_10081789C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v11 - v4;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v7 = v11 - v6;
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_10119A808, &unk_100ED91D0);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_1000095E8(v7, &qword_10119A808, &unk_100ED91D0);
  }

  else
  {
    (*(v3 + 16))(v5, v7, v2);
    sub_1000095E8(v7, &qword_10119A808, &unk_100ED91D0);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v3 + 8))(v5, v2);
    if (v11[2] != v11[1])
    {
      return 0;
    }
  }

  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  return *(*(v1 + v9) + 16) == 0;
}

void sub_100817B04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v5 = a1 & 0xFFFFFFFFFFFFFEFELL;
  if ((v4 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if (v5 == 0x3FFFFFEFELL)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v5 == 0x3FFFFFEFELL)
  {
    goto LABEL_10;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (a1 >> 62 == 2 && ((v4 ^ a1) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v4 == 0xC000000000000000 && *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8) == 0)
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000000;
      }

      else
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000001;
      }

      if (a1 == v11 && !(a3 | a2))
      {
        return;
      }
    }

LABEL_10:
    v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v8, v13, &unk_1011926C0, &unk_100ECF870);
    if (v13[8])
    {
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        sub_10069F67C();
      }
    }

    return;
  }

  if (v6)
  {
    v7 = a1 >> 62 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v12 = v4 ^ a1;
  if (v12 & 0x100) != 0 || (v12)
  {
    goto LABEL_10;
  }
}

uint64_t sub_100817C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v39 - v5;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  v9 = type metadata accessor for UIContentUnavailableConfiguration();
  v42 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v39 - v12;
  v14 = v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState;
  v15 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if ((v15 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v16 = a1;
    v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v1 + v17, v8, &qword_10119A808, &unk_100ED91D0);
    if ((*(v4 + 48))(v8, 1, v3))
    {
      sub_1000095E8(v8, &qword_10119A808, &unk_100ED91D0);
      return (*(v42 + 56))(v16, 1, 1, v9);
    }

    (*(v4 + 16))(v6, v8, v3);
    sub_1000095E8(v8, &qword_10119A808, &unk_100ED91D0);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v4 + 8))(v6, v3);
    if (v45 != v44 || *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
    {
      return (*(v42 + 56))(v16, 1, 1, v9);
    }

    static UIContentUnavailableConfiguration.search()();
    v32 = *(v42 + 56);
    v33 = v16;
    return v32(v33, 0, 1, v9);
  }

  v19 = *(v14 + 8);
  v18 = *(v14 + 16);
  if ((v15 >> 62) - 1 >= 2)
  {
    if (v15 >> 62)
    {
LABEL_9:
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v13);
      (*(v42 + 8))(v11, v9);
      sub_10069D52C(v15, v19, v18);
      UIContentUnavailableConfiguration.text.setter();
      sub_10069B5AC(v15, v19, v18);
      UIContentUnavailableConfiguration.secondaryText.setter();
      v20 = sub_10069B85C(v15, v19, v18);
      if (v20)
      {
        v24 = v20;
        v25 = v22;
        v26 = v23;
        v40 = v21;

        v27 = UIContentUnavailableConfiguration.button.modify();
        v41 = a1;
        v28 = v27;
        UIButton.Configuration.title.setter();
        v28(v43, 0);
        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        v29 = swift_allocObject();
        v29[2] = v24;
        v29[3] = v40;
        v29[4] = v25;
        v29[5] = v26;

        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v30 = UIContentUnavailableConfiguration.buttonProperties.modify();
        a1 = v41;
        UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
        v30(v43, 0);
        sub_1004E5BA4(v15, v19, v18);
      }

      else
      {
        v31.n128_f64[0] = sub_1004E5BA4(v15, v19, v18);
      }

      (*(v42 + 32))(a1, v13, v9, v31);
      v32 = *(v42 + 56);
      v33 = a1;
      return v32(v33, 0, 1, v9);
    }

    sub_10011896C(*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState), v19, v18);
  }

  if (v15)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    static UIContentUnavailableConfiguration.loading()();
    v36 = *(v42 + 56);
    v37 = a1;
    v38 = 0;
  }

  else
  {
    v35.n128_f64[0] = sub_1004E5BA4(v15, v19, v18);
    v36 = *(v42 + 56);
    v37 = a1;
    v38 = 1;
  }

  return v36(v37, v38, 1, v9, v35);
}

uint64_t sub_100818294@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v4, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_1011814D0, &qword_100EC12A0);
LABEL_5:
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  (*(v6 + 32))(v8, v4, v5);
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork))
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_5;
  }

  Playlist.artworkViewModel.getter(a1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008184CC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v26 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v6 + 48))(v10, 1, v5))
  {
    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v12 = v26;
    (*(v6 + 16))(v8, v10, v5);
    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
    v13 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    (*(v6 + 8))(v8, v5);
    if (v13)
    {
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      if (*(v13 + 16))
      {
        v14 = sub_1006BE63C(v4);
        if (v15)
        {
          v16 = v14;
          v17 = *(v13 + 56);
          v18 = type metadata accessor for VideoArtwork();
          v19 = *(v18 - 8);
          v20 = v19;
          v21 = v17 + *(v19 + 72) * v16;
          v22 = v27;
          (*(v19 + 16))(v27, v21, v18);
          (*(v12 + 8))(v4, v2);

          return (*(v20 + 56))(v22, 0, 1, v18);
        }
      }

      (*(v12 + 8))(v4, v2);
    }
  }

  v24 = type metadata accessor for VideoArtwork();
  return (*(*(v24 - 8) + 56))(v27, 1, 1, v24);
}

uint64_t sub_100818884(_BYTE *a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v6 = v16 - v5 + 16;
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_artwork;
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v7, &unk_101188920, &qword_100EBCC50);
  swift_endAccess();
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) != 1)
  {
    v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v11, v16, &unk_1011926C0, &unk_100ECF870);
    if (v16[8])
    {
      sub_1000095E8(a1, &unk_101188920, &qword_100EBCC50);
      v8 = &unk_1011926C0;
      v9 = &unk_100ECF870;
      v10 = v16;
      return sub_1000095E8(v10, v8, v9);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v16, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      sub_1000089F8(v1 + v7, v6, &unk_101188920, &qword_100EBCC50);
      v13 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
      swift_beginAccess();
      sub_1000089F8(Strong + v13, v4, &unk_101188920, &qword_100EBCC50);
      swift_beginAccess();
      sub_1002190E0(v6, Strong + v13, &unk_101188920, &qword_100EBCC50);
      swift_endAccess();
      sub_10069FC04(v4);

      sub_1000095E8(a1, &unk_101188920, &qword_100EBCC50);
      sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
      v10 = v6;
      v8 = &unk_101188920;
      v9 = &qword_100EBCC50;
      return sub_1000095E8(v10, v8, v9);
    }
  }

  v8 = &unk_101188920;
  v9 = &qword_100EBCC50;
  v10 = a1;
  return sub_1000095E8(v10, v8, v9);
}

uint64_t sub_100818B00()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100818B70(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1000D9148(v4);
  }

  sub_10000CD8C(v2);
  return v3;
}

uint64_t sub_100818B70(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = sub_100729BFC();

  if (*(v3 + 16) && *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
  {

    v4 = MusicPageProvider.playlistRelatedContentProvider(for:)();

    return v4;
  }

  else
  {

    return 0;
  }
}

BOOL sub_100818C54()
{
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v2 = v11 - v1 + 22;
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v3, v2, &qword_10119A808, &unk_100ED91D0);
  v4 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  LODWORD(v3) = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_1000095E8(v2, &qword_10119A808, &unk_100ED91D0);
  if (v3 == 1 || (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) != 0)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v5, v11, &unk_1011926C0, &unk_100ECF870);
  if (v11[8])
  {
    sub_1000095E8(v11, &unk_1011926C0, &unk_100ECF870);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v11, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    return 0;
  }

  v7 = sub_1006A3A7C();

  result = v7;
  if (v7)
  {
    if (v7 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v9 != 0;
  }

  return result;
}

uint64_t sub_100818E5C()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100818EA0(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_100818EA0(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for MusicPropertySource();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  if ((*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) & 1) == 0)
  {
    v26 = v3;
    v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v9 + 16))(v13, a1 + v15, v8);
    (*(v9 + 104))(v11, enum case for MusicPropertySource.catalog(_:), v8);
    LOBYTE(v15) = static MusicPropertySource.== infix(_:_:)();
    v16 = *(v9 + 8);
    v16(v11, v8);
    v16(v13, v8);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(a1 + v17, v27, &unk_1011926C0, &unk_100ECF870);
      if (v27[8])
      {
        sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          v19 = [Strong traitCollection];

          v20 = [v19 userInterfaceIdiom];
          if (!v20)
          {
            static ApplicationCapabilities.shared.getter(v27);
            sub_100014984(v27);
            if (v27[1])
            {
              v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
              swift_beginAccess();
              sub_1000089F8(a1 + v22, v7, &unk_1011814D0, &qword_100EC12A0);
              v23 = v26;
              if (!(*(v26 + 48))(v7, 1, v2))
              {
                (*(v23 + 16))(v5, v7, v2);
                sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);
                v24 = sub_10080516C(2, &type metadata accessor for Playlist, &protocol witness table for Playlist, &Playlist.staticDetailTallArtwork.getter);
                (*(v23 + 8))(v5, v2);
                v14 = !v24;
                return v14 & 1;
              }

              sub_1000095E8(v7, &unk_1011814D0, &qword_100EC12A0);
            }

            goto LABEL_2;
          }
        }
      }
    }

    v14 = 0;
    return v14 & 1;
  }

LABEL_2:
  v14 = 1;
  return v14 & 1;
}

double sub_1008192FC(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = type metadata accessor for MusicPropertySource();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100818E5C() & 1) != v4)
  {
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout) = v4;
    if ((a1 & 1) == 0)
    {
      v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v10, &v27, &unk_1011926C0, &unk_100ECF870);
      if (v28)
      {
        sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
        return result;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v27, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) = 0;
        v12 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
        [*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
        v13 = *&Strong[v12];
        *&Strong[v12] = 0;

        v14 = (v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
        v15 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
        if ((v15 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          v16 = v14[1];
          v17 = v14[2];
          if (v15 >> 62 == 3 || (v15 & 1) != 0)
          {
            *v14 = 0x3FFFFFEFELL;
            v14[1] = 0;
            v14[2] = 0;
            sub_100817B04(v15, v16, v17);
            [Strong setNeedsUpdateContentUnavailableConfiguration];
            *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
          }
        }

        v18 = sub_10083D5A8();
        swift_getKeyPath();
        v27 = v18;
        sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v19 = *(v18 + 16);

        sub_10069F9B8();
        sub_1008197A8(&v27);
        v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v20, v5);
        sub_100558458(&v27, v8, 0);

        (*(v6 + 8))(v8, v5);
        sub_1000095E8(&v27, &unk_101192850, &qword_100EE4C90);
        v21 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        v27 = v21;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v22 = *(v21 + 16);

        if (v19 == 2)
        {
          if (v22 == 2)
          {
LABEL_17:
            sub_10069F67C();
            sub_100009F78(0, &qword_101181620, UIView_ptr);
            v23 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
            v24 = swift_allocObject();
            *(v24 + 16) = Strong;
            v25 = Strong;
            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v23, 0, sub_1004E9E3C, v24, 0, 0, 0.5, 0.0);

            return result;
          }
        }

        else if (v22 != 2 && ((v22 ^ v19) & 1) == 0)
        {
          goto LABEL_17;
        }

        if (*(*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator] + 24))
        {
          sub_1008412FC();
        }

        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_1008197A8@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v15[-v5];
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011814D0, &qword_100EC12A0);
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    *(&v17 + 1) = v8;
    v18 = &off_1010B2320;
    v13 = sub_10001C8B8(&v16);
    (*(v9 + 32))(v13, v6, v8);
    return sub_100059A8C(&v16, a1);
  }

  sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v4, &unk_1011814D0, &qword_100EC12A0);
  if (v10(v4, 1, v8) != 1)
  {
    *(a1 + 24) = v8;
    *(a1 + 32) = &off_1010B2320;
    v14 = sub_10001C8B8(a1);
    result = (*(v9 + 32))(v14, v4, v8);
    if (!*(&v17 + 1))
    {
      return result;
    }

    return sub_1000095E8(&v16, &unk_101192850, &qword_100EE4C90);
  }

  result = sub_1000095E8(v4, &unk_1011814D0, &qword_100EC12A0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  if (*(&v17 + 1))
  {
    return sub_1000095E8(&v16, &unk_101192850, &qword_100EE4C90);
  }

  return result;
}

void sub_100819A28()
{
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v2 = &v20 - v1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v11, &v20, &unk_1011926C0, &unk_100ECF870);
  if (v21)
  {
    sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v13 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion;
    if ((*(Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion) & 1) == 0)
    {
LABEL_9:

      return;
    }

    v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v0 + v14, v6, &unk_1011814D0, &qword_100EC12A0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);
      return;
    }

    (*(v8 + 32))(v10, v6, v7);
    if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching))
    {
      (*(v8 + 8))(v10, v7);
      goto LABEL_9;
    }

    v15 = type metadata accessor for Playlist.Entry();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
    sub_10085678C(v2, v4);
    sub_1000095E8(v2, &qword_101191570, &qword_100ECE0B0);
    v16 = PlaybackIntentDescriptor.intent.getter();
    sub_100867794(v4, type metadata accessor for PlaybackIntentDescriptor);
    if (qword_10117F718 != -1)
    {
      swift_once();
    }

    v22 = v7;
    v23 = &protocol witness table for Playlist;
    v17 = sub_10001C8B8(&v20);
    (*(v8 + 16))(v17, v10, v7);
    v24 = Strong;
    v25 = 1;
    v18 = Strong;
    v19 = v16;
    GroupActivitiesManager.SuggestionProvider.registerItem(_:intent:)(&v20, v16);

    sub_100442874(&v20);
    *(Strong + v13) = 0;

    (*(v8 + 8))(v10, v7);
  }
}

double sub_100819EA8()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v68 - v2;
  v74 = type metadata accessor for Playlist.EditableComponents();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Playlist();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v70 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v71 = &v68 - v6;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v68 - v8;
  __chkstk_darwin();
  v78 = &v68 - v10;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v12 = &v68 - v11;
  v13 = type metadata accessor for MusicPropertySource();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v68 - v17;
  static ApplicationCapabilities.shared.getter(v81);
  sub_100014984(v81);
  if ((v81[1] & 1) == 0)
  {
    v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v14 + 16))(v18, v1 + v19, v13);
    (*(v14 + 104))(v16, enum case for MusicPropertySource.catalog(_:), v13);
    LOBYTE(v19) = static MusicPropertySource.== infix(_:_:)();
    v20 = *(v14 + 8);
    v20(v16, v13);
    v20(v18, v13);
    if (v19)
    {
      v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      sub_1000089F8(v1 + v21, v12, &qword_10119A808, &unk_100ED91D0);
      v22 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
      v23 = (*(*(v22 - 8) + 48))(v12, 1, v22);
      sub_1000095E8(v12, &qword_10119A808, &unk_100ED91D0);
      if (v23 == 1)
      {
        sub_100825C38(0xC000000000000000, 0, 0);
        return result;
      }
    }
  }

  v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v25, v79, &unk_1011926C0, &unk_100ECF870);
  if (v79[8])
  {
    v26 = &unk_1011926C0;
    v27 = &unk_100ECF870;
    v28 = v79;
LABEL_17:
    sub_1000095E8(v28, v26, v27);
    goto LABEL_18;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v79, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v69 = Strong;
    v30 = *&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference];
    v31 = type metadata accessor for ArtworkPrefetchingController();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider];
    *v33 = 0;
    *(v33 + 1) = 0;
    v34 = &v32[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
    *v34 = 0;
    *(v34 + 1) = 0;
    v35 = &v32[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
    *v35 = 0;
    *(v35 + 1) = 0;
    v36 = &v32[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context];
    *v36 = 0u;
    *(v36 + 1) = 0u;
    *&v32[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference] = v30;
    v80.receiver = v32;
    v80.super_class = v31;

    v37 = objc_msgSendSuper2(&v80, "init");
    v38 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController;
    v39 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController);
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController) = v37;
    v40 = v37;

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = &v40[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
    v43 = *&v40[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
    v44 = *&v40[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider + 8];
    *v42 = sub_10086ABE0;
    v42[1] = v41;

    sub_100020438(v43, v44);

    v45 = *(v1 + v38);
    if (v45)
    {
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = &v45[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
      v48 = *&v45[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
      v49 = *&v45[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8];
      *v47 = sub_10086ABE8;
      v47[1] = v46;
      v50 = v45;

      sub_100020438(v48, v49);
    }

    v51 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v1 + v51, v9, &unk_1011814D0, &qword_100EC12A0);
    v52 = v76;
    v53 = v77;
    if ((*(v76 + 48))(v9, 1, v77))
    {
      sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
      v54 = v78;
    }

    else
    {
      v55 = v70;
      (*(v52 + 16))(v70, v9, v53);
      sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
      v56 = v71;
      Playlist.editableComponents.getter();
      (*(v52 + 8))(v55, v53);
      v57 = v73;
      v58 = v74;
      v59 = (*(v73 + 48))(v56, 1, v74);
      v54 = v78;
      if (v59 == 1)
      {
        sub_1000095E8(v56, &unk_10118D240, &unk_100EC8F50);
      }

      else
      {
        static Playlist.EditableComponents.tracklist.getter();
        sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
        LODWORD(v70) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v60 = *(v57 + 8);
        v60(v72, v58);
        v60(v56, v58);
        if ((v70 & 1) == 0)
        {
          sub_1000089F8(v1 + v51, v54, &unk_1011814D0, &qword_100EC12A0);
          goto LABEL_16;
        }
      }
    }

    (*(v52 + 56))(v54, 1, 1, v53);
LABEL_16:
    v61 = v75;
    sub_1000089F8(v54, v75, &unk_1011814D0, &qword_100EC12A0);
    sub_10010FC20(&unk_1011A4A00, &unk_100EE51A0);
    swift_allocObject();
    v62 = v69;
    sub_1008671C8(v62, v61);

    sub_1008212F0(v63);

    v28 = v54;
    v26 = &unk_1011814D0;
    v27 = &qword_100EC12A0;
    goto LABEL_17;
  }

LABEL_18:
  static TaskPriority.userInitiated.getter();
  v64 = type metadata accessor for TaskPriority();
  (*(*(v64 - 8) + 56))(v3, 0, 1, v64);
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = v65;
  v67 = sub_100805804(0, 0, v3, &unk_100EE5198, v66);
  sub_1000095E8(v3, &unk_101181520, &qword_100EBCC60);
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask) = v67;

  return result;
}

double sub_10081A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v6 = &v36 - v5;
  sub_10010FC20(&unk_1011A4A10, &qword_100EE51D8);
  __chkstk_darwin();
  v8 = &v36 - v7;
  v39 = type metadata accessor for DynamicTypeSize();
  v9 = *(v39 - 8);
  __chkstk_darwin();
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v36 - v12;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v15 = &v36 - v14;
  v16 = type metadata accessor for Playlist.Entry();
  v40 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = 0.0;
  if (Strong)
  {
    v21 = Strong;
    v38 = v13;
    v22 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    v23 = IndexPath.section.getter();
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v22 + 16))
    {
      if (*(v22 + v23 + 32) != 2)
      {

        return v20;
      }

      sub_10085939C(v15);
      v24 = v40;
      if ((*(v40 + 48))(v15, 1, v16) == 1)
      {

        sub_1000095E8(v15, &qword_101191570, &qword_100ECE0B0);
        return v20;
      }

      (*(v24 + 32))(v18, v15, v16);
      v37 = objc_opt_self();
      v26 = [v37 currentTraitCollection];
      v27 = [v26 preferredContentSizeCategory];

      DynamicTypeSize.init(_:)();
      v15 = v9;
      v28 = *(v9 + 6);
      v9 = v39;
      if (v28(v8, 1, v39) == 1)
      {
        (*(v24 + 8))(v18, v16);

        sub_1000095E8(v8, &unk_1011A4A10, &qword_100EE51D8);
        return v20;
      }

      (*(v15 + 4))(v38, v8, v9);
      Playlist.Entry.contributor.getter();
      v29 = type metadata accessor for SocialProfile();
      v4 = (*(*(v29 - 8) + 48))(v6, 1, v29);
      sub_1000095E8(v6, &qword_101186E00, &qword_100EC31E0);
      if (qword_10117FB28 == -1)
      {
LABEL_12:
        if (byte_10119CDC0 == 1)
        {
          if (v4 == 1)
          {
            v30 = 48.0;
          }

          else
          {
            v30 = 32.0;
          }

          v31 = v37;
          v32 = &selRef__replacePlaceholderViewWithView_;
          goto LABEL_24;
        }

        (*(v15 + 13))(v11, enum case for DynamicTypeSize.accessibility3(_:), v9);
        v33 = static DynamicTypeSize.< infix(_:_:)();
        (*(v15 + 1))(v11, v9);
        if (v33)
        {
          v31 = v37;
          v32 = &selRef__replacePlaceholderViewWithView_;
          if (v4 != 1)
          {
            v34 = 0x4040000000000000;
LABEL_23:
            v30 = *&v34;
LABEL_24:
            v20 = v30 * sub_10026E2A4();
            v35 = [v31 v32[211]];
            [v35 displayScale];

            (*(v15 + 1))(v38, v9);
            (*(v40 + 8))(v18, v16);
            return v20;
          }
        }

        else
        {
          v31 = v37;
          v32 = &selRef__replacePlaceholderViewWithView_;
          if (v4 == 1)
          {
            v34 = 0x4052000000000000;
            goto LABEL_23;
          }
        }

        v34 = 0x4048000000000000;
        goto LABEL_23;
      }

LABEL_27:
      swift_once();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_27;
  }

  return v20;
}

unint64_t sub_10081AF6C@<X0>(uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = type metadata accessor for Playlist.Entry();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v12 + 16))
    {
      if (*(v12 + result + 32) == 2)
      {
        sub_10085939C(v5);
        if ((*(v7 + 48))(v5, 1, v6) != 1)
        {
          (*(v7 + 32))(v9, v5, v6);
          Playlist.Entry.artwork.getter();

          return (*(v7 + 8))(v9, v6);
        }

        sub_1000095E8(v5, &qword_101191570, &qword_100ECE0B0);
      }

      else
      {
      }

      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

LABEL_8:
  v14 = type metadata accessor for Artwork();
  return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
}

uint64_t sub_10081B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for MusicPropertySource();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10081B27C, 0, 0);
}

uint64_t sub_10081B27C(__n128 a1)
{
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v1[12] = Strong) == 0))
  {

    v5 = v1[1];

    return v5();
  }

  else
  {
    v1[13] = type metadata accessor for MainActor();
    v1[14] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10081B380, v4, v3);
  }
}

uint64_t sub_10081B380()
{
  v1 = v0[12];

  v2 = v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID;
  v0[15] = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID);
  v0[16] = *(v2 + 8);

  return _swift_task_switch(sub_10081B410, 0, 0);
}

uint64_t sub_10081B410(uint64_t a1)
{
  *(v1 + 136) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10081B49C, v3, v2);
}

uint64_t sub_10081B49C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];

  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v5, v3);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_10081B58C;
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[11];

  return sub_1008239C4(v8, v7, v9);
}

uint64_t sub_10081B58C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004AF3C4, 0, 0);
}

double sub_10081B700()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask))
  {

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
  *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse) = 0xF000000000000007;
  sub_1004E6028(v2);
  *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = 0;

  v3 = (v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v4 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 16);
  *v3 = 0x3FFFFFEFELL;
  v3[1] = 0;
  v3[2] = 0;
  sub_100817B04(v4, v5, v6);
  sub_1004E5BA4(v4, v5, v6);
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      [Strong setNeedsUpdateContentUnavailableConfiguration];
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
  sub_10083AF5C(0);
  sub_1000089F8(v1 + v7, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (v9)
    {
      v10 = sub_1006A3A7C();

      if (v10)
      {
        v11 = v10 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v11)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
  {
    sub_1000089F8(v1 + v7, v19, &unk_1011926C0, &unk_100ECF870);
    if (v20)
    {
      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }

    v12 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (v12)
    {
      v13 = sub_10003169C();

      if (!v13 || (v14 = v13[2], , , !v14))
      {

        goto LABEL_23;
      }

      v12 = MusicPageProvider.playlistRelatedContentProvider(for:)();
    }

LABEL_24:
    v15 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider);
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider) = v12;
    sub_1000D9148(v15);
    sub_1000089F8(v1 + v7, v19, &unk_1011926C0, &unk_100ECF870);
    if (v20)
    {
      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v16 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
      if (v16)
      {
        sub_1006A3EE4();
      }
    }

    if (sub_100818B00())
    {
      dispatch thunk of RelatedContentProvider.onAppear()();
    }
  }

LABEL_30:
  sub_1000089F8(v1 + v7, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (v17)
    {
      sub_10069F67C();
    }
  }

  return sub_100819EA8();
}

uint64_t sub_10081BB60()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10081BBF8, v3, v2);
}

uint64_t sub_10081BBF8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
  v0[6] = v1;
  if (v1 < 0)
  {

    v9 = v0[1];

    return v9();
  }

  else
  {
    v2 = qword_10117FC48;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_1012193F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[PlaylistEditing] Will reload library response.", v6, 2u);
    }

    v10 = (&async function pointer to dispatch thunk of MusicAutoupdatingResponse.reload() + async function pointer to dispatch thunk of MusicAutoupdatingResponse.reload());
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_10081BDBC;

    return v10();
  }
}

uint64_t sub_10081BDBC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10081BEDC, v3, v2);
}

uint64_t sub_10081BEDC()
{
  v1 = *(v0 + 48);

  v2.n128_f64[0] = sub_1004E6028(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_10081BF48(uint64_t a1, __n128 a2)
{
  v4 = sub_10083D5A8();
  swift_getKeyPath();
  *&v11[0] = v4;
  sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  if (*(v5 + 16) == *a1)
  {
    *(v5 + 16) = *a1;
  }

  else
  {
    swift_getKeyPath();
    v10 = &v10;
    __chkstk_darwin();
    *&v11[0] = v5;
    sub_100866F00(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
  swift_getKeyPath();
  *&v11[0] = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  v8 = *(a1 + 16);
  if (*(v7 + 24) == v8)
  {
    *(v7 + 24) = v8;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *&v11[0] = v7;
    sub_100866F00(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_10083F3AC();
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  v12[0] = *(a1 + 32);
  *(v12 + 9) = *(a1 + 41);
  sub_100452A3C(v11);
}

uint64_t sub_10081C2A0(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v2 + 32;
  while (*(v6 + result) != a1)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10081C2F4(uint64_t a1)
{
  v17 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v5 = &v15[-v4];
  v6 = type metadata accessor for Playlist.Entry();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = &v15[-v8];
  sub_10085939C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_101191570, &qword_100ECE0B0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v10, &v18, &unk_1011926C0, &unk_100ECF870);
    if (v19)
    {
      (*(v7 + 8))(v9, v6);
      sub_1000095E8(&v18, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v18, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v16 = Strong;
        sub_100858450(v9, v3);
        memset(v20, 0, sizeof(v20));
        v21 = 0;
        v22 = xmmword_100EBCEF0;
        v12 = v16;
        PresentationSource.init(viewController:position:)(v12, v20, &v18);
        v13 = sub_1007F63C4(v9, v3, &v18, &type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &unk_1010C27A8, sub_10086AB14, &unk_1010C27C0, &unk_1010C2758, sub_10086AAFC, &unk_1010C2770, &unk_1010C2708, sub_10086A93C, &unk_1010C2720);

        sub_10012BA6C(&v18);
        sub_100867794(v3, type metadata accessor for PlaybackIntentDescriptor);
        (*(v7 + 8))(v9, v6);
        return v13;
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return 0;
}

id sub_10081CAC4(uint64_t a1)
{
  v25[1] = a1;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v3 = v25 - v2;
  v27 = type metadata accessor for Playlist.Entry();
  v26 = *(v27 - 8);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v7 = v25 - v6;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v7, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v16, &v28, &unk_1011926C0, &unk_100ECF870);
    if (v29)
    {
      sub_1000095E8(&v28, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v28, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        sub_10085939C(v3);
        v18 = v26;
        v19 = v27;
        if ((*(v26 + 48))(v3, 1, v27) != 1)
        {
          (*(v18 + 32))(v5, v3, v19);
          sub_100009F78(0, &unk_1011A49E0, UISwipeActionsConfiguration_ptr);
          v21 = Strong;
          v22 = [v21 traitCollection];
          sub_100137E8C();
          UITraitCollection.subscript.getter();

          v23 = v28;
          memset(v30, 0, sizeof(v30));
          v31 = 0;
          v32 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v21, v30, &v28);
          v24 = sub_1001DA680(v5, v11, v23, &v28);

          sub_10012BA6C(&v28);
          (*(v18 + 8))(v5, v19);
          (*(v9 + 8))(v11, v8);
          return v24;
        }

        (*(v9 + 8))(v11, v8);

        v13 = &qword_101191570;
        v14 = &qword_100ECE0B0;
        v15 = v3;
        goto LABEL_3;
      }
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  v13 = &unk_1011814D0;
  v14 = &qword_100EC12A0;
  v15 = v7;
LABEL_3:
  sub_1000095E8(v15, v13, v14);
  return 0;
}

void *sub_10081CF70()
{
  v1 = v0;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v3 = &v13[-v2];
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v3, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_1011814D0, &qword_100EC12A0);
LABEL_10:
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, v3, v4);
  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  if ((Collaboration.Manager.isCollaborationPossible(for:)() & 1) == 0)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_10;
  }

  sub_10082EBAC();
  sub_10082DCF0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(v5 + 8))(v7, v4);
  v9 = v14;
LABEL_11:
  if ((*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v15);
    sub_100014984(v15);
    if (v15[1])
    {
      if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController))
      {

        v10 = sub_100801A7C(&unk_1010C25F0, sub_10086A810, sub_10086E3A0);

        if (v10)
        {
          v11 = v10;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return v14;
        }
      }
    }
  }

  return v9;
}

unint64_t sub_10081D2D8(uint64_t a1)
{
  _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = type metadata accessor for Playlist.Entry();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v10 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v10 + result + 32) != 2)
  {
    return 0;
  }

  sub_10085939C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_101191570, &qword_100ECE0B0);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  (*(v7 + 16))(v3, v9, v6);
  swift_storeEnumTagMultiPayload();
  v12 = IndexPath.item.getter();
  v13 = sub_10043231C(v3, v12);
  (*(v7 + 8))(v9, v6);
  return v13;
}

double sub_10081D548(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v79 = type metadata accessor for ContentRating();
  v93 = *(v79 - 8);
  __chkstk_darwin();
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10010FC20(&qword_1011819C0, &unk_100EBD2E0);
  __chkstk_darwin();
  v6 = &v68 - v5;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v68 - v9;
  __chkstk_darwin();
  v85 = &v68 - v11;
  v12 = type metadata accessor for Track();
  v97 = *(v12 - 8);
  __chkstk_darwin();
  v95 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v68 - v14;
  v86 = type metadata accessor for IndexPath();
  v90 = *(v86 - 8);
  __chkstk_darwin();
  v94 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin().n128_u64[0];
  v18 = &v68 - v17;
  v80 = a1;
  v19 = *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v19 + 32;
    while (*(v22 + v21) != 3)
    {
      if (v20 == ++v21)
      {
        return result;
      }
    }

    v71 = v8;
    v23 = v80;
    v24 = sub_100849A08();
    v81 = v10;
    if ((v24 & 1) != 0 || (v25 = *(v19 + 16)) == 0)
    {
      v27 = _swiftEmptyArrayStorage;
    }

    else
    {
      v26 = 0;
      v27 = _swiftEmptyArrayStorage;
      while (*(v22 + v26) != 6)
      {
        if (v25 == ++v26)
        {
          goto LABEL_13;
        }
      }

      *(v23 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 1;
      IndexPath.init(item:section:)();
      v27 = sub_100499724(0, 1, 1, _swiftEmptyArrayStorage);
      v67 = v27[2];
      v66 = v27[3];
      if (v67 >= v66 >> 1)
      {
        v27 = sub_100499724((v66 > 1), v67 + 1, 1, v27);
      }

      v27[2] = v67 + 1;
      (*(v90 + 32))(v27 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v67, v18, v86);
    }

LABEL_13:
    v28 = v98;
    v29 = *(v98 + 16);
    if (v29)
    {
      v76 = v6;
      v69 = v4;
      v30 = objc_opt_self();
      v31 = v97;
      v84 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v32 = v28 + v84;
      v98 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
      swift_beginAccess();
      v33 = *(v31 + 16);
      v31 += 16;
      v96 = v33;
      v75 = (v93 + 104);
      v74 = (v93 + 56);
      v34 = (v93 + 48);
      v68 = (v93 + 32);
      v35 = *(v31 + 56);
      v70 = (v93 + 8);
      v91 = (v31 - 8);
      v72 = enum case for ContentRating.explicit(_:);
      v83 = v90 + 32;
      v97 = v31;
      v82 = (v31 + 16);
      v93 = v12;
      v77 = v30;
      v73 = v34;
      v92 = v35;
      v33(v99, v32, v12);
      while (1)
      {
        v38 = [v30 sharedRestrictionsMonitor];
        v39 = [v38 allowsExplicitContent];

        if ((v39 & 1) == 0)
        {
          v87 = v32;
          v88 = v29;
          v89 = v27;
          v40 = v85;
          Track.contentRating.getter();
          v41 = v81;
          v42 = v79;
          (*v75)(v81, v72, v79);
          (*v74)(v41, 0, 1, v42);
          v43 = *(v78 + 48);
          v44 = v76;
          sub_1000089F8(v40, v76, &unk_10118D2F0, &unk_100EBCE10);
          sub_1000089F8(v41, v44 + v43, &unk_10118D2F0, &unk_100EBCE10);
          v45 = *v73;
          if ((*v73)(v44, 1, v42) == 1)
          {
            sub_1000095E8(v41, &unk_10118D2F0, &unk_100EBCE10);
            sub_1000095E8(v40, &unk_10118D2F0, &unk_100EBCE10);
            v46 = v45(v44 + v43, 1, v42);
            v12 = v93;
            v23 = v80;
            if (v46 == 1)
            {
              sub_1000095E8(v44, &unk_10118D2F0, &unk_100EBCE10);
              v29 = v88;
              v27 = v89;
              v30 = v77;
              v36 = v92;
              v32 = v87;
              goto LABEL_16;
            }

            goto LABEL_24;
          }

          v47 = v71;
          sub_1000089F8(v44, v71, &unk_10118D2F0, &unk_100EBCE10);
          if (v45(v44 + v43, 1, v42) == 1)
          {
            sub_1000095E8(v81, &unk_10118D2F0, &unk_100EBCE10);
            sub_1000095E8(v85, &unk_10118D2F0, &unk_100EBCE10);
            (*v70)(v47, v42);
            v23 = v80;
            v12 = v93;
LABEL_24:
            sub_1000095E8(v44, &qword_1011819C0, &unk_100EBD2E0);
            v29 = v88;
            v27 = v89;
            v30 = v77;
            v32 = v87;
            goto LABEL_25;
          }

          v56 = v69;
          (*v68)(v69, v44 + v43, v42);
          sub_100866F00(&qword_1011819D0, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
          v57 = dispatch thunk of static Equatable.== infix(_:_:)();
          v58 = *v70;
          (*v70)(v56, v42);
          sub_1000095E8(v81, &unk_10118D2F0, &unk_100EBCE10);
          sub_1000095E8(v85, &unk_10118D2F0, &unk_100EBCE10);
          v58(v47, v42);
          sub_1000095E8(v44, &unk_10118D2F0, &unk_100EBCE10);
          v29 = v88;
          v27 = v89;
          v23 = v80;
          v12 = v93;
          v30 = v77;
          v32 = v87;
          if (v57)
          {
            v36 = v92;
            goto LABEL_16;
          }
        }

LABEL_25:
        IndexPath.init(item:section:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100499724(0, v27[2] + 1, 1, v27);
        }

        v49 = v27[2];
        v48 = v27[3];
        if (v49 >= v48 >> 1)
        {
          v27 = sub_100499724((v48 > 1), v49 + 1, 1, v27);
        }

        v27[2] = v49 + 1;
        (*(v90 + 32))(v27 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v49, v94, v86);
        v96(v95, v99, v12);
        v50 = v98;
        swift_beginAccess();
        v51 = *(v23 + v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + v50) = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_100499798(0, v51[2] + 1, 1, v51);
          *(v23 + v98) = v51;
        }

        v54 = v51[2];
        v53 = v51[3];
        v36 = v92;
        if (v54 >= v53 >> 1)
        {
          v59 = sub_100499798((v53 > 1), v54 + 1, 1, v51);
          v36 = v92;
          v51 = v59;
        }

        v51[2] = v54 + 1;
        v55 = v51 + v84 + v54 * v36;
        v12 = v93;
        (*v82)(v55, v95, v93);
        *(v23 + v98) = v51;
        swift_endAccess();
        sub_10084A954();
LABEL_16:
        v37 = v99;
        (*v91)(v99, v12);
        v32 += v36;
        if (!--v29)
        {
          break;
        }

        v96(v37, v32, v12);
      }
    }

    *(v23 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition) = 1;
    v60 = sub_10083D5A8();
    v61 = sub_10083D330();
    if (v61 == *(v60 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
    {
      *(v60 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = v61;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v68 - 2) = v60;
      *(&v68 - 8) = v61;
      v101 = v60;
      sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v62 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v23 + v62, v100, &unk_1011926C0, &unk_100ECF870);
    if (v100[8])
    {
      sub_1000095E8(v100, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v100, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v64 = sub_1006A6078();

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v64 insertItemsAtIndexPaths:isa];

        return result;
      }
    }
  }

  return result;
}

void sub_10081E1F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
    swift_beginAccess();
    if (*(*&v2[v5] + 16))
    {
      v6 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = v6 + 32;
        while (*(v9 + v8) != 3)
        {
          if (v7 == ++v8)
          {
            return;
          }
        }

        v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
        swift_beginAccess();
        sub_1000089F8(&v2[v10], &v21, &unk_1011926C0, &unk_100ECF870);
        if (v22)
        {
          sub_1000095E8(&v21, &unk_1011926C0, &unk_100ECF870);
        }

        else
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&v21, &unk_1011926C0, &unk_100ECF870);
          if (Strong)
          {
            v12 = v2;
            v13 = sub_1006A6078();

            v14 = swift_allocObject();
            v14[2] = a1;
            v14[3] = v12;
            v14[4] = v8;
            v15 = swift_allocObject();
            *(v15 + 16) = sub_10086A91C;
            *(v15 + 24) = v14;
            v25 = sub_10018A020;
            v26 = v15;
            v21 = _NSConcreteStackBlock;
            v22 = 1107296256;
            v23 = sub_100029B9C;
            v24 = &unk_1010C2680;
            v16 = _Block_copy(&v21);

            v17 = v12;

            v18 = swift_allocObject();
            *(v18 + 16) = v17;
            v25 = sub_10086A928;
            v26 = v18;
            v21 = _NSConcreteStackBlock;
            v22 = 1107296256;
            v23 = sub_1005C3688;
            v24 = &unk_1010C26D0;
            v19 = _Block_copy(&v21);
            v20 = v17;

            [v13 performBatchUpdates:v16 completion:v19];
            _Block_release(v19);
            _Block_release(v16);
          }
        }
      }
    }
  }
}

double sub_10081E4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v59 = type metadata accessor for IndexPath();
  v5 = *(v59 - 8);
  __chkstk_darwin();
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v54 - v8;
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v54 - v13;
  v14 = *(a1 + 16);
  v58 = v5;
  v68 = v14;
  v54 = v7;
  v55 = v10;
  if (v14)
  {
    v60 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v66 = a1 + v60;
    v67 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
    swift_beginAccess();
    v15 = 0;
    v16 = v10 + 16;
    v64 = *(v10 + 16);
    v71 = *(v10 + 72);
    v56 = v5 + 32;
    v17 = _swiftEmptyArrayStorage;
    v65 = v16;
    v62 = _swiftEmptyArrayStorage;
    v63 = (v16 - 8);
    v18 = v70;
    do
    {
      v69 = v15;
      v64(v18, v66 + v71 * v15, v9);
      v22 = *(a2 + v67);
      v23 = *(v22 + 16);

      v24 = v18;
      if (v23)
      {
        v25 = v22 + v60;
        sub_100866F00(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
        v26 = 0;
        while ((static MusicItem<>.==~ infix(_:_:)() & 1) == 0)
        {
          ++v26;
          v24 = v70;
          v25 += v71;
          if (v23 == v26)
          {
            goto LABEL_3;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1004995E0(0, *(v17 + 2) + 1, 1, v17);
        }

        v27 = v62;
        v21 = v69;
        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = sub_1004995E0((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        *&v17[8 * v29 + 32] = v26;
        IndexPath.init(item:section:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100499724(0, v27[2] + 1, 1, v27);
        }

        v30 = v58;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = sub_100499724((v31 > 1), v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v62 = v27;
        (*(v30 + 32))(v27 + v33 + *(v30 + 72) * v32, v61, v59);
        v20 = v70;
      }

      else
      {
LABEL_3:
        v19 = v24;

        v20 = v19;
        v21 = v69;
      }

      v15 = v21 + 1;
      v18 = v20;
      (*v63)();
    }

    while (v15 != v68);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
    v62 = _swiftEmptyArrayStorage;
  }

  v34 = *(v17 + 2);
  if (v34)
  {
    v35 = (v55 + 8);
    while (v34 <= *(v17 + 2))
    {
      v36 = v34 - 1;
      v37 = *&v17[8 * v34 + 24];
      swift_beginAccess();
      sub_1004F42B8(v37, v12);
      (*v35)(v12, v9);
      swift_endAccess();
      sub_10084A954();
      v34 = v36;
      if (!v36)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    if (sub_100849A08())
    {
      goto LABEL_37;
    }
  }

  v38 = *(a2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v39 = *(v38 + 16);
  v40 = v62;
  if (v39)
  {
    v41 = 0;
    v42 = v38 + 32;
    v43 = v58;
    v44 = v54;
    while (*(v42 + v41) != 6)
    {
      if (v39 == ++v41)
      {
        goto LABEL_37;
      }
    }

    *(a2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 0;
    IndexPath.init(item:section:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_100499724(0, v40[2] + 1, 1, v40);
    }

    v46 = v40[2];
    v45 = v40[3];
    if (v46 >= v45 >> 1)
    {
      v40 = sub_100499724((v45 > 1), v46 + 1, 1, v40);
    }

    v40[2] = v46 + 1;
    (*(v43 + 32))(v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v46, v44, v59);
  }

LABEL_37:
  *(a2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition) = 1;
  v47 = sub_10083D5A8();
  v48 = sub_10083D330();
  if (v48 == *(v47 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
  {
    *(v47 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = v48;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v54 - 2) = v47;
    *(&v54 - 8) = v48;
    v73 = v47;
    sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v49 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a2 + v49, v72, &unk_1011926C0, &unk_100ECF870);
  if (v72[8])
  {
    sub_1000095E8(v72, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v72, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v51 = sub_1006A6078();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v51 deleteItemsAtIndexPaths:isa];

      return result;
    }
  }

  return result;
}

double sub_10081ECB8(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicPropertySource() - 8);
  v5 = __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 30 != 1 && (a1 >> 30 != 2 || a1 != 2147483652) && *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback) == 1)
  {
    v8 = enum case for MusicPropertySource.library(_:);
    v9 = *(v3 + 104);
    v10 = v4;
    (v9)(v7, enum case for MusicPropertySource.library(_:), v4, v5);
    v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v12 = *(v3 + 40);
    v12(v1 + v11, v7, v10);
    swift_endAccess();
    v9(v7, v8, v10);
    v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v12(v1 + v13, v7, v10);
    swift_endAccess();
    v5.n128_f64[0] = sub_10081B700();
  }

  return v5.n128_f64[0];
}

uint64_t sub_10081EE74(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v88 = &v74 - v4;
  v87 = type metadata accessor for URL();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for MusicPropertySource();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = &v74 - v10;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v74 - v13;
  __chkstk_darwin();
  v76 = &v74 - v14;
  __chkstk_darwin();
  v80 = &v74 - v15;
  __chkstk_darwin();
  v17 = &v74 - v16;
  v18 = __chkstk_darwin();
  v20 = &v74 - v19;
  v84 = v8;
  v23 = *(v8 + 48);
  v22 = v8 + 48;
  v21 = v23;
  v24 = a1;
  v25 = (v23)(a1, 1, v7, v18);
  v26 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier;
  v85 = v23;
  if (v25 != 1 || (v83 = v12, v27 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist, swift_beginAccess(), sub_1000089F8(v2 + v27, v20, &unk_1011814D0, &qword_100EC12A0), LODWORD(v27) = v21(v20, 1, v7), v26 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier, sub_1000095E8(v20, &unk_1011814D0, &qword_100EC12A0), v28 = v27 == 1, v12 = v83, v28))
  {
    sub_1000089F8(v24, v17, &unk_1011814D0, &qword_100EC12A0);
    if (v21(v17, 1, v7) == 1)
    {
      sub_1000095E8(v17, &unk_1011814D0, &qword_100EC12A0);
      v35 = v7;
    }

    else
    {
      v83 = v12;
      v29 = v84;
      v30 = *(v84 + 32);
      v31 = v82;
      v30(v82, v17, v7);
      v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      swift_beginAccess();
      v33 = v2 + v32;
      v34 = v80;
      sub_1000089F8(v33, v80, &unk_1011814D0, &qword_100EC12A0);
      v74 = v22;
      v35 = v7;
      if (v21(v34, 1, v7) == 1)
      {
        (*(v29 + 8))(v31, v7);
        sub_1000095E8(v34, &unk_1011814D0, &qword_100EC12A0);
        v12 = v83;
        v26 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier;
      }

      else
      {
        v37 = v75;
        v30(v75, v34, v7);
        if (qword_10117F610 != -1)
        {
          swift_once();
        }

        v38 = v82;
        v39 = Collaboration.Manager.isCollaborationPossible(for:)() & 1;
        v40 = Collaboration.Manager.isCollaborationPossible(for:)();
        v12 = v83;
        v26 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier;
        if (v39 == (v40 & 1))
        {
          v45 = *(v84 + 8);
          v45(v37, v35);
          v45(v38, v35);
        }

        else
        {
          v41 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
          swift_beginAccess();
          sub_1000089F8(v2 + v41, &v90, &unk_1011926C0, &unk_100ECF870);
          v42 = v84;
          if (BYTE8(v90))
          {
            sub_1000095E8(&v90, &unk_1011926C0, &unk_100ECF870);
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&v90, &unk_1011926C0, &unk_100ECF870);
            if (Strong)
            {
              sub_10069F67C();
            }
          }

          v47 = *(v42 + 8);
          v47(v75, v35);
          v47(v38, v35);
        }
      }
    }
  }

  else
  {
    v35 = v7;
    *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    v36 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v36, &v90, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v90))
    {
      sub_1000095E8(&v90, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v43 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v90, &unk_1011926C0, &unk_100ECF870);
      if (v43)
      {
        sub_10069F67C();
      }
    }

    sub_1000089F8(v2 + v36, &v90, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v90))
    {
      sub_1000095E8(&v90, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v44 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v90, &unk_1011926C0, &unk_100ECF870);
      if (v44)
      {
        if (v44[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent])
        {
          v44[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent] = 0;
          sub_1006A4A18();
        }
      }
    }
  }

  sub_100820758();
  v48 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v48, &v90, &unk_1011926C0, &unk_100ECF870);
  if (BYTE8(v90))
  {
    v49 = &unk_1011926C0;
    v50 = &unk_100ECF870;
  }

  else
  {
    v51 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v90, &unk_1011926C0, &unk_100ECF870);
    if (!v51)
    {
      goto LABEL_35;
    }

    sub_10069F9B8();

    v52 = v26[82];
    swift_beginAccess();
    v53 = v2 + v52;
    v54 = v76;
    sub_1000089F8(v53, v76, &unk_1011814D0, &qword_100EC12A0);
    if (v85(v54, 1, v35) == 1)
    {
      sub_1000095E8(v54, &unk_1011814D0, &qword_100EC12A0);
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
    }

    else
    {
      *(&v91 + 1) = v35;
      v92 = &off_1010B2320;
      v55 = sub_10001C8B8(&v90);
      (*(v84 + 32))(v55, v54, v35);
    }

    v56 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v57 = v78;
    v58 = v77;
    v59 = v79;
    (*(v78 + 16))(v77, v2 + v56, v79);
    v60 = sub_100818E5C();
    sub_100558458(&v90, v58, v60 & 1);

    (*(v57 + 8))(v58, v59);
    v49 = &unk_101192850;
    v50 = &qword_100EE4C90;
  }

  sub_1000095E8(&v90, v49, v50);
LABEL_35:
  sub_100840468();
  sub_10083F3AC();
  v61 = v26[82];
  swift_beginAccess();
  v62 = v2 + v61;
  v63 = v89;
  sub_1000089F8(v62, v89, &unk_1011814D0, &qword_100EC12A0);
  sub_1000089F8(v63, v12, &unk_1011814D0, &qword_100EC12A0);
  if (v85(v12, 1, v35) == 1)
  {
    sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
    v64 = &off_10109AEE0;
  }

  else
  {
    v65 = Playlist.supportsSing.getter();
    (*(v84 + 8))(v12, v35);
    v64 = &off_10109AEE0;
    if (v65 != 2 && (v65 & 1) != 0)
    {
      v64 = &off_10109AEB8;
    }
  }

  v66 = sub_10010E594(v64);
  sub_1004528A0(v66);

  sub_1000095E8(v89, &unk_1011814D0, &qword_100EC12A0);
  v67 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL;
  swift_beginAccess();
  v68 = v2 + v67;
  v69 = v88;
  sub_1000089F8(v68, v88, &qword_101183A20, &unk_100EBCF80);
  if ((*(v86 + 48))(v69, 1, v87) == 1)
  {
    return sub_1000095E8(v88, &qword_101183A20, &unk_100EBCF80);
  }

  v71 = v86;
  v72 = v81;
  v73 = v87;
  (*(v86 + 32))(v81, v88, v87);
  sub_100831124(v72);
  return (*(v71 + 8))(v72, v73);
}

void sub_10081FAC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse];
    if ((~v3 & 0xF000000000000007) == 0 || v3 < 0)
    {
    }

    else
    {
      __chkstk_darwin();
      v5 = v4;

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();
      sub_1004E6028(v3);
    }
  }
}

uint64_t sub_10081FB98(char *a1)
{
  sub_10010FC20(&unk_1011A46C0, &qword_100EE4B38);
  __chkstk_darwin();
  v3 = &v11 - v2;
  v4 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - v6;
  sub_1008260A0(v3);
  v8 = *(v5 + 48);
  if (v8(v3, 1, v4) == 1)
  {
    v9 = *(v5 + 32);
    v9(v7, a1, v4);
    if (v8(v3, 1, v4) != 1)
    {
      sub_1000095E8(v3, &unk_1011A46C0, &qword_100EE4B38);
    }
  }

  else
  {
    (*(v5 + 8))(a1, v4);
    v9 = *(v5 + 32);
    v9(v7, v3, v4);
  }

  return (v9)(a1, v7, v4);
}

double sub_10081FD8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController;
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = (v4 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = sub_10086A908;
    v6[1] = v5;

    sub_100020438(v7, v8);
  }

  return result;
}

uint64_t sub_10081FE6C()
{
  v54 = type metadata accessor for MusicLibrary.AddStatus();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10010FC20(&unk_1011A49D0, &qword_100EE5110);
  __chkstk_darwin();
  v53 = &v46 - v2;
  sub_10010FC20(&unk_101191A70, &unk_100EBF360);
  __chkstk_darwin();
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v46 - v4;
  __chkstk_darwin();
  v56 = &v46 - v5;
  v6 = type metadata accessor for MusicPropertySource();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v46 - v9;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v18 = v0;
  sub_1000089F8(v0 + v17, v12, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v19 = &unk_1011814D0;
    v20 = &qword_100EC12A0;
    v21 = v12;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v7 + 16))(v10, v0 + v22, v6);
    v23 = v57;
    (*(v7 + 104))(v57, enum case for MusicPropertySource.catalog(_:), v6);
    LOBYTE(v22) = static MusicPropertySource.== infix(_:_:)();
    v24 = *(v7 + 8);
    v24(v23, v6);
    v24(v10, v6);
    if (v22 & 1) == 0 || (*(v18 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback))
    {
      (*(v14 + 8))(v16, v13);
      goto LABEL_7;
    }

    v27 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v18 + v27, &v58, &unk_1011926C0, &unk_100ECF870);
    v48 = v14;
    v47 = v16;
    if (v59)
    {
      sub_1000095E8(&v58, &unk_1011926C0, &unk_100ECF870);
      v28 = 1;
      v30 = v53;
      v29 = v54;
      v31 = v52;
      v33 = v55;
      v32 = v56;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v58, &unk_1011926C0, &unk_100ECF870);
      v30 = v53;
      v29 = v54;
      v31 = v52;
      v33 = v55;
      v32 = v56;
      if (Strong)
      {
        v35 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }
    }

    v36 = *(v31 + 56);
    v36(v32, v28, 1, v29);
    (*(v31 + 104))(v33, enum case for MusicLibrary.AddStatus.added(_:), v29);
    v36(v33, 0, 1, v29);
    v37 = *(v51 + 48);
    sub_1000089F8(v32, v30, &unk_101191A70, &unk_100EBF360);
    sub_1000089F8(v33, v30 + v37, &unk_101191A70, &unk_100EBF360);
    v38 = v33;
    v39 = *(v31 + 48);
    if (v39(v30, 1, v29) == 1)
    {
      sub_1000095E8(v38, &unk_101191A70, &unk_100EBF360);
      sub_1000095E8(v32, &unk_101191A70, &unk_100EBF360);
      (*(v48 + 8))(v47, v13);
      v40 = v30;
      if (v39(v30 + v37, 1, v29) == 1)
      {
        sub_1000095E8(v30, &unk_101191A70, &unk_100EBF360);
        v25 = 1;
        return v25 & 1;
      }
    }

    else
    {
      v41 = v50;
      sub_1000089F8(v30, v50, &unk_101191A70, &unk_100EBF360);
      v40 = v30;
      if (v39(v30 + v37, 1, v29) != 1)
      {
        v42 = v30 + v37;
        v43 = v49;
        (*(v31 + 32))(v49, v42, v29);
        sub_100866F00(&qword_101185CC8, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
        v44 = v41;
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v45 = *(v31 + 8);
        v45(v43, v29);
        sub_1000095E8(v55, &unk_101191A70, &unk_100EBF360);
        sub_1000095E8(v56, &unk_101191A70, &unk_100EBF360);
        (*(v48 + 8))(v47, v13);
        v45(v44, v29);
        sub_1000095E8(v40, &unk_101191A70, &unk_100EBF360);
        return v25 & 1;
      }

      sub_1000095E8(v55, &unk_101191A70, &unk_100EBF360);
      sub_1000095E8(v56, &unk_101191A70, &unk_100EBF360);
      (*(v48 + 8))(v47, v13);
      (*(v31 + 8))(v41, v29);
    }

    v19 = &unk_1011A49D0;
    v20 = &qword_100EE5110;
    v21 = v40;
  }

  sub_1000095E8(v21, v19, v20);
LABEL_7:
  v25 = 0;
  return v25 & 1;
}

void sub_100820758()
{
  v1 = v0;
  v64 = type metadata accessor for MusicPropertySource();
  v63 = *(v64 - 8);
  __chkstk_darwin();
  v62 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v60 - v3;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v72 = &v60 - v4;
  v66 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v67 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v60 - v9;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v71 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v60 - v12;
  __chkstk_darwin();
  v68 = &v60 - v13;
  __chkstk_darwin();
  v65 = &v60 - v14;
  __chkstk_darwin();
  v16 = &v60 - v15;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v18 = &v60 - v17;
  sub_10082EFFC();
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v19, v16, &unk_1011814D0, &qword_100EC12A0);
  v20 = *(v7 + 48);
  v73 = v7 + 48;
  v74 = v20;
  if (v20(v16, 1, v6))
  {
    v21 = v10;
    v22 = v7;
    sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
    v23 = type metadata accessor for Artwork();
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  }

  else
  {
    (*(v7 + 16))(v10, v16, v6);
    sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
    Playlist.artwork.getter();
    v22 = v7;
    v21 = v10;
    (*(v7 + 8))(v10, v6);
  }

  v24 = v6;
  sub_100818884(v18);
  v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v25, v75, &unk_1011926C0, &unk_100ECF870);
  v26 = v19;
  if (v76)
  {
    sub_1000095E8(v75, &unk_1011926C0, &unk_100ECF870);
    v27 = v22;
    v28 = v70;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v75, &unk_1011926C0, &unk_100ECF870);
    v27 = v22;
    v28 = v70;
    if (Strong)
    {
      sub_1006A26DC();
    }
  }

  sub_1000089F8(v1 + v25, v75, &unk_1011926C0, &unk_100ECF870);
  v30 = v74;
  if (v76)
  {
    sub_1000095E8(v75, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v31 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v75, &unk_1011926C0, &unk_100ECF870);
    if (v31)
    {
      v32 = [v31 navigationItem];

      v33 = v65;
      sub_1000089F8(v1 + v26, v65, &unk_1011814D0, &qword_100EC12A0);
      if (v30(v33, 1, v6))
      {
        sub_1000095E8(v33, &unk_1011814D0, &qword_100EC12A0);
        v34 = 0;
      }

      else
      {
        (*(v27 + 16))(v21, v33, v6);
        sub_1000095E8(v33, &unk_1011814D0, &qword_100EC12A0);
        Playlist.name.getter();
        (*(v27 + 8))(v21, v6);
        v34 = String._bridgeToObjectiveC()();
        v30 = v74;
      }

      [v32 setBackButtonTitle:v34];
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController))
  {
    v35 = v68;
    sub_1000089F8(v1 + v26, v68, &unk_1011814D0, &qword_100EC12A0);
    type metadata accessor for PlaylistSortingController(0);
    swift_allocObject();
    v36 = PlaylistSortingController.init(_:)(v35);
    sub_10081FD8C(v36);
  }

  v37 = v69;
  sub_1000089F8(v1 + v26, v69, &unk_1011814D0, &qword_100EC12A0);
  if (v30(v37, 1, v6) == 1)
  {
    sub_1000095E8(v37, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v38 = *(v27 + 32);
    v38(v28, v37, v6);
    v39 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource);
    if (v39)
    {
      v40 = v67;
      v38(v67, v28, v24);
      swift_storeEnumTagMultiPayload();
      v41 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
      swift_beginAccess();

      sub_10086A758(v40, v39 + v41);
      swift_endAccess();
    }

    else
    {
      (*(v27 + 8))(v28, v6);
    }

    v30 = v74;
  }

  sub_10082EBAC();
  v42 = v71;
  sub_1000089F8(v1 + v26, v71, &unk_1011814D0, &qword_100EC12A0);
  if (v30(v42, 1, v24))
  {
    sub_1000095E8(v42, &unk_1011814D0, &qword_100EC12A0);
    v43 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
    v44 = v72;
    (*(*(v43 - 8) + 56))(v72, 1, 1, v43);
LABEL_26:
    v46 = &qword_10119A808;
    v47 = &unk_100ED91D0;
    v48 = v44;
LABEL_27:
    sub_1000095E8(v48, v46, v47);
    goto LABEL_28;
  }

  (*(v27 + 16))(v21, v42, v24);
  sub_1000095E8(v42, &unk_1011814D0, &qword_100EC12A0);
  v44 = v72;
  Playlist.entries.getter();
  (*(v27 + 8))(v21, v24);
  v45 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
  {
    goto LABEL_26;
  }

  sub_1000095E8(v44, &qword_10119A808, &unk_100ED91D0);
  v49 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v50 = v63;
  v51 = v61;
  v52 = v64;
  (*(v63 + 16))(v61, v1 + v49, v64);
  v53 = v62;
  (*(v50 + 104))(v62, enum case for MusicPropertySource.library(_:), v52);
  LOBYTE(v49) = static MusicPropertySource.== infix(_:_:)();
  v54 = *(v50 + 8);
  v54(v53, v52);
  v54(v51, v52);
  if (v49 & 1) != 0 || (v58 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse), (~v58 & 0xF000000000000007) != 0) && (, v59 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter(), sub_1004E6028(v58), (v59))
  {
    v55 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController);
    if (v55)
    {
      v56 = v68;
      sub_1000089F8(v1 + v26, v68, &unk_1011814D0, &qword_100EC12A0);
      v57 = *(*v55 + 128);
      swift_beginAccess();

      sub_1002190E0(v56, v55 + v57, &unk_1011814D0, &qword_100EC12A0);
      swift_endAccess();
      sub_1008021C4();

      v48 = v56;
      v46 = &unk_1011814D0;
      v47 = &qword_100EC12A0;
      goto LABEL_27;
    }
  }

LABEL_28:
  sub_100819A28();
}

double sub_1008212F0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController) = a1;

  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v5, &unk_1011926C0, &unk_100ECF870);
  if (v5[8])
  {

    sub_1000095E8(v5, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v5, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      sub_10069F67C();
    }
  }

  return result;
}

unint64_t sub_1008213D8(void *a1, void *a2)
{
  v3 = v2;
  v136 = a1;
  v137 = a2;
  v4 = type metadata accessor for UUID();
  v147 = *(v4 - 8);
  v148 = v4;
  __chkstk_darwin();
  v146 = v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v144 = v6;
  v145 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v151 = (v119 - v7);
  v141 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v9 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v8;
  __chkstk_darwin();
  v150 = v119 - v10;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v12 = v119 - v11;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v14 = v119 - v13;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v138 = v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = v119 - v16;
  __chkstk_darwin();
  v18 = v119 - v17;
  __chkstk_darwin();
  v20 = v119 - v19;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v139 = v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = v119 - v22;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v24 = v119 - v23;
  v25 = type metadata accessor for Playlist();
  v26 = *(v25 - 8);
  v153 = v25;
  v154 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin();
  v135 = v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v152 = v119 - v28;
  v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v3[v29], &v169, &unk_1011926C0, &unk_100ECF870);
  if (v170)
  {
    v30 = &unk_1011926C0;
    v31 = &unk_100ECF870;
    v32 = &v169;
LABEL_6:
    sub_1000095E8(v32, v30, v31);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v169, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    return 0;
  }

  v133 = v9;
  v134 = Strong;
  v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v3[v34], v24, &unk_1011814D0, &qword_100EC12A0);
  v35 = v153;
  v36 = v154;
  if ((*(v154 + 48))(v24, 1, v153) == 1)
  {

    v30 = &unk_1011814D0;
    v31 = &qword_100EC12A0;
    v32 = v24;
    goto LABEL_6;
  }

  v126 = *(v36 + 32);
  v127 = v36 + 32;
  v126(v152, v24, v35);
  sub_10010FC20(&qword_101191F98, &unk_100ECF148);
  v38 = swift_allocObject();
  v128 = xmmword_100EBDC20;
  *(v38 + 16) = xmmword_100EBDC20;
  *(v38 + 32) = 1541;
  if (v3[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent] == 1)
  {
    v39 = sub_1004992D0(1, 3, 1, v38);
    *(v39 + 2) = 3;
    v129._rawValue = v39;
    v39[34] = 1;
    v35 = v153;
  }

  else
  {
    v129._rawValue = v38;
  }

  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBC6B0;
  *(v40 + 56) = v35;
  *(v40 + 64) = &protocol witness table for Playlist;
  v125 = v40;
  v41 = sub_10001C8B8((v40 + 32));
  v42 = v152;
  v123 = *(v154 + 16);
  v124 = v154 + 16;
  v123(v41, v152, v35);
  v43 = [v134 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v132 = v169;
  v44 = type metadata accessor for IndexPath();
  (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
  sub_1008564D0(v12, v14);
  sub_1000095E8(v12, &unk_10118BCE0, &qword_100EC6450);
  v45 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v45 - 8) + 56))(v14, 0, 1, v45);
  sub_10086772C(v14, v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100867794(v14, type metadata accessor for PlaybackIntentDescriptor);
  v46 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v47 = *(v46 - 8);
  v120 = *(v47 + 56);
  v121 = v46;
  v119[1] = v47 + 56;
  (v120)(v20, 0, 1);
  v48 = type metadata accessor for PlaylistDetailDataSource(0);
  v172 = &off_1010C1940;
  v171 = v48;
  v169 = v3;
  v49 = qword_10117F608;
  v122 = v3;
  v50 = v153;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = qword_101218AD8;
  sub_1000089F8(v20, v18, &unk_1011838E0, &unk_100EC1670);
  v131 = v51;
  v52 = v134;
  v130 = UIViewController.playActivityInformation.getter();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1000089F8(&v169, &v161, &unk_101183910, &unk_100EBDD00);
  if (*(&v162 + 1))
  {
    sub_100059A8C(&v161, &v165);
  }

  else
  {
    *&v173 = v52;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v59 = v52;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v176, &v165);
      v42 = v152;
      v50 = v153;
    }

    else
    {
      v178 = 0;
      v176 = 0u;
      v177 = 0u;
      *&v165 = v59;
      v60 = v59;
      v61 = String.init<A>(reflecting:)();
      v166 = &type metadata for Player.CommandIssuerIdentity;
      v167 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v165 = v61;
      *(&v165 + 1) = v62;
      v42 = v152;
      v50 = v153;
      if (*(&v177 + 1))
      {
        sub_1000095E8(&v176, &unk_101183910, &unk_100EBDD00);
      }
    }

    if (*(&v162 + 1))
    {
      sub_1000095E8(&v161, &unk_101183910, &unk_100EBDD00);
    }
  }

  v63 = v149;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v131, v18, v130, v54, v56, v58, &v165, v149);
  sub_1000095E8(v20, &unk_1011838E0, &unk_100EC1670);
  sub_1000095E8(&v169, &unk_101183910, &unk_100EBDD00);
  v64 = type metadata accessor for Actions.PlaybackContext(0);
  v65 = *(v64 - 8);
  (*(v65 + 56))(v63, 0, 1, v64);
  v66 = type metadata accessor for PlaylistContext(0);
  (*(*(v66 - 8) + 56))(v150, 1, 1, v66);
  sub_10012B7A8(v136, &v169);
  sub_10085ABF0(v151);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v135;
  v123(v135, v42, v50);
  v69 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v70 = (v27 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v134;
  *(v71 + 16) = v67;
  *(v71 + 24) = v72;
  v126((v71 + v69), v68, v50);
  v130 = v71;
  *(v71 + v70) = v137;
  sub_100008FE4(v125 + 32, v168);
  v73 = v72;
  v135 = v67;

  sub_1000089F8(&v169, &v161, &unk_1011845E0, &unk_100EBF3A0);
  if (v164 == 1)
  {
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
    v179 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v73, &v176, &v165);
    v74 = v139;
    if (v164 != 1)
    {
      sub_1000095E8(&v161, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v161, &v165);
    v74 = v139;
  }

  swift_getObjectType();
  v75 = swift_conformsToProtocol2();
  if (v75)
  {
    v134 = v75;
    v76 = v73;
    v137 = v73;
  }

  else
  {
    v137 = 0;
    v134 = 0;
  }

  v139 = swift_allocBox();
  v78 = v77;
  sub_1000089F8(v149, v74, &unk_10118AB20, &unk_100EBF390);
  v79 = *(v65 + 48);
  v80 = v79(v74, 1, v64);
  v136 = v73;
  if (v80 == 1)
  {
    v81 = v140;
    v120(v140, 1, 1, v121);
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    sub_1000089F8(v81, v138, &unk_1011838E0, &unk_100EC1670);
    v82 = v131;
    v83 = UIViewController.playActivityInformation.getter();
    v131 = v84;
    v127 = v85;
    v87 = v86;
    sub_1000089F8(&v161, &v159, &unk_101183910, &unk_100EBDD00);
    if (v160)
    {
      sub_100059A8C(&v159, &v173);
    }

    else
    {
      v126 = v82;
      v158 = v73;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v88 = v73;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v155, &v173);
      }

      else
      {
        v157 = 0;
        v155 = 0u;
        v156 = 0u;
        *&v173 = v88;
        v89 = v88;
        v90 = String.init<A>(reflecting:)();
        *(&v174 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v175 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v173 = v90;
        *(&v173 + 1) = v91;
        if (*(&v156 + 1))
        {
          sub_1000095E8(&v155, &unk_101183910, &unk_100EBDD00);
        }
      }

      v73 = v136;
      v82 = v126;
      if (v160)
      {
        sub_1000095E8(&v159, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v82, v138, v83, v131, v127, v87, &v173, v78);
    sub_1000095E8(&v161, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v140, &unk_1011838E0, &unk_100EC1670);
    if (v79(v74, 1, v64) != 1)
    {
      sub_1000095E8(v74, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100869470(v74, v78, type metadata accessor for Actions.PlaybackContext);
  }

  v92 = &v78[*(v64 + 28)];
  sub_1000089F8(v92, &v173, &unk_101183910, &unk_100EBDD00);
  if (*(&v174 + 1))
  {
    sub_100059A8C(&v173, &v161);
  }

  else
  {
    *&v161 = v73;
    v93 = v73;
    v94 = String.init<A>(reflecting:)();
    *(&v162 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v163 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v161 = v94;
    *(&v161 + 1) = v95;
    if (*(&v174 + 1))
    {
      sub_1000095E8(&v173, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v96 = swift_allocObject();
  *(v96 + 16) = v128;
  *(v96 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v96 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v96 + 32) = 0x4D747865746E6F43;
  *(v96 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v161, v96 + 72);
  v97 = static Player.CommandIssuer<>.combining(_:)(v96);
  v99 = v98;

  sub_10000959C(&v161);
  *(&v162 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v163 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v161 = v97;
  *(&v161 + 1) = v99;
  sub_10006B010(&v161, v92, &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v168, &v161);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v140 = String.init<A>(describing:)();
  v138 = v100;
  v131 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v168, &v159);
  sub_10012B7A8(&v165, &v161);
  v101 = v145;
  sub_1000089F8(v151, v145, &unk_1011838D0, &unk_100EC0320);
  v102 = v133;
  sub_1000089F8(v150, v133, &unk_1011845D0, &unk_100EBF380);
  v103 = (*(v143 + 80) + 160) & ~*(v143 + 80);
  v104 = (v144 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  v106 = (*(v141 + 80) + v105 + 8) & ~*(v141 + 80);
  v107 = (v106 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v106 + v142 + 31) & 0xFFFFFFFFFFFFFFF8;
  v109 = swift_allocObject();
  sub_100059A8C(&v159, v109 + 16);
  *(v109 + 56) = v132;
  sub_10012B828(&v161, v109 + 64);
  sub_10003D17C(v101, v109 + v103, &unk_1011838D0, &unk_100EC0320);
  *(v109 + v104) = v131;
  *(v109 + v105) = v139;
  sub_10003D17C(v102, v109 + v106, &unk_1011845D0, &unk_100EBF380);
  v110 = v109 + v107;
  v111 = v134;
  *v110 = v137;
  *(v110 + 8) = v111;
  *(v110 + 16) = 2;
  v112 = (v109 + v108);
  v113 = v130;
  *v112 = sub_10086A6C8;
  v112[1] = v113;
  swift_unknownObjectRetain();

  v114 = v146;
  UUID.init()();
  v115 = UUID.uuidString.getter();
  v117 = v116;
  (*(v147 + 8))(v114, v148);
  v180._countAndFlagsBits = v140;
  v180._object = v138;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v173, v180, v115, v117, sub_10021953C, v109);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v165);
  sub_10000959C(v168);

  v118 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v129, 0);

  v165 = v173;
  sub_100015BB0(&v165);
  v161 = v174;
  sub_100015BB0(&v161);

  sub_1000095E8(v151, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v169, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v150, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v149, &unk_10118AB20, &unk_100EBF390);
  (*(v154 + 8))(v152, v153);

  return v118;
}

uint64_t sub_100822850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v66 = (&v59 - v5);
  v65 = type metadata accessor for Playlist();
  v61 = *(v65 - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v8 = &v59 - v7;
  v9 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin();
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v59 - v11;
  __chkstk_darwin();
  v13 = &v59 - v12;
  __chkstk_darwin();
  v67 = &v59 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v16 = Strong;
  v17 = sub_10083D5A8();
  v69 = a4;
  v18 = v17;

  swift_getKeyPath();
  *&v80[0] = v18;
  sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v18 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
  a4 = v69;

  if (v19 != 1)
  {
    goto LABEL_9;
  }

  v20 = sub_10003169C();
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v20;
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {

    (*(v68 + 56))(v8, 1, 1, v9);
    goto LABEL_8;
  }

  v23 = v22;
  sub_10083C114(v8);

  if ((*(v68 + 48))(v8, 1, v9) == 1)
  {

LABEL_8:
    sub_1000095E8(v8, &qword_101192860, &unk_100ECFB60);
LABEL_9:
    v24 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_10;
  }

  v43 = v67;
  sub_100869470(v8, v67, type metadata accessor for ContainerDetail.AttributionItem);
  (*(v61 + 16))(v64, v62, v65);
  sub_10086772C(v43, v13, type metadata accessor for ContainerDetail.AttributionItem);
  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  v59 = v21;
  if (v44)
  {
    v45 = v44;
    sub_10085ABF0(v66);
  }

  else
  {
    v46 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  }

  v47 = v60;
  sub_10086772C(v13, v60, type metadata accessor for ContainerDetail.AttributionItem);
  v48 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v49 = v48 + v10;
  v50 = swift_allocObject();
  sub_100869470(v47, v50 + v48, type metadata accessor for ContainerDetail.AttributionItem);
  v51 = v63;
  sub_100869470(v13, v63, type metadata accessor for ContainerDetail.AttributionItem);
  v52 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  sub_100869470(v51, v53 + v48, type metadata accessor for ContainerDetail.AttributionItem);
  *(v53 + v52) = v59;
  Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v64, 0, 0, sub_1004E9A64, v50, &unk_100ECFFC0, v53, v66, &v79, v65, &protocol witness table for Playlist);
  static Actions.GoToArtist.action(context:)(&v79, v80);
  v81 = v79;

  sub_1000095E8(&v81, &qword_1011815E0, &qword_100EBD050);

  v74 = v80[4];
  v75 = v80[5];
  v76 = v80[6];
  v77 = v80[7];
  v70 = v80[0];
  v71 = v80[1];
  v72 = v80[2];
  v73 = v80[3];
  v54 = static ActionBuilder.buildExpression<A, B>(_:)(&v70, &type metadata for Actions.GoToArtist.Context, (&type metadata for () + 1), &protocol witness table for Actions.GoToArtist.Context);
  v78[4] = v74;
  v78[5] = v75;
  v78[6] = v76;
  v78[7] = v77;
  v78[0] = v70;
  v78[1] = v71;
  v78[2] = v72;
  v78[3] = v73;
  sub_1000095E8(v78, &unk_101183950, &qword_100EBF3B8);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v54;
  v56 = inited + 32;
  v57 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v56, &unk_10118AB80, &qword_100EBF3B0);
  v24 = static ActionBuilder.buildIf(_:)(v57);

  sub_100867794(v67, type metadata accessor for ContainerDetail.AttributionItem);
  a4 = v69;
LABEL_10:
  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = *(v25 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController);
    v27 = v25;

    if (v26)
    {
      v29 = sub_10031EA10(v28);
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *&v70 = v30;
      *(&v70 + 1) = v32;
      v33._countAndFlagsBits = 0x74726F532ELL;
      v33._object = 0xE500000000000000;
      String.append(_:)(v33);
      v34 = String._bridgeToObjectiveC()();

      *&v70 = v34;
      __chkstk_darwin();
      v58 = &v70;
      LOBYTE(v29) = sub_10044D018(sub_10045D96C, (&v59 - 4), a4);

      if ((v29 & 1) == 0)
      {
        v39 = PlaylistSortingController.actionBuilder.getter();
        sub_10010FC20(&unk_101183940, &unk_100EC64D0);
        v40 = swift_initStackObject();
        *(v40 + 16) = xmmword_100EBC6B0;
        *(v40 + 32) = v39;
        v41 = v40 + 32;
        v42 = static ActionBuilder.buildBlock(_:)();
        swift_setDeallocating();
        sub_1000095E8(v41, &unk_10118AB80, &qword_100EBF3B0);
        v35 = static ActionBuilder.buildIf(_:)(v42);

        goto LABEL_15;
      }
    }
  }

  v35 = static ActionBuilder.buildIf(_:)(0);
LABEL_15:
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_100EBDC20;
  *(v36 + 32) = v24;
  *(v36 + 40) = v35;
  v37 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
  swift_arrayDestroy();
  return v37;
}

uint64_t sub_100823180()
{
  v1 = type metadata accessor for UUID();
  v54 = *(v1 - 8);
  v55 = v1;
  __chkstk_darwin();
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v56 = v0;
  sub_1000089F8(v0 + v10, v9, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v5 + 48))(v9, 1, v4))
  {
    sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v9, v4);
    sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
    v11 = Playlist.id.getter();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  v59 = v11;
  v60 = v12;
  sub_10010FC20(&unk_1011A49A0, &qword_100ECF970);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v17 = swift_allocObject();
  v18 = v56;
  swift_unknownObjectWeakInit();

  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v54 + 8))(v3, v55);
  v67._countAndFlagsBits = v14;
  v67._object = v16;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v61, v67, v19, v21, sub_10086A6C0, v17);

  v22 = _swiftEmptyArrayStorage;
  v23 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v63 = v61[0];
  sub_100015BB0(&v63);
  v62 = v61[1];
  sub_100015BB0(&v62);

  if (v23)
  {
    v25 = [v23 children];

    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v26 = sub_10031EA10(v24);
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v59 = v27;
  v60 = v29;
  v30._countAndFlagsBits = 0x74726F532ELL;
  v30._object = 0xE500000000000000;
  String.append(_:)(v30);
  v31 = String._bridgeToObjectiveC()();

  v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v18 + v32, &v59, &unk_1011926C0, &unk_100ECF870);
  if (v60)
  {
    sub_1000095E8(&v59, &unk_1011926C0, &unk_100ECF870);
LABEL_13:
    sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
    result = swift_allocObject();
    *(result + 16) = xmmword_100EBC6B0;
    *(result + 32) = v31;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = v22;
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v59, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    goto LABEL_13;
  }

  memset(v64, 0, sizeof(v64));
  v65 = 0;
  v66 = xmmword_100EBCEF0;
  v34 = Strong;
  PresentationSource.init(viewController:position:)(v34, v64, &v59);
  sub_10010FC20(&unk_1011A49B0, &unk_100EE50B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100EBC6B0;
  v36 = sub_10031EA10(xmmword_100EBC6B0);
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v57 = v37;
  v58 = v39;
  v40._countAndFlagsBits = 0x74726F532ELL;
  v40._object = 0xE500000000000000;
  String.append(_:)(v40);
  v41 = String._bridgeToObjectiveC()();

  *(v35 + 32) = v41;
  v42 = sub_1008213D8(&v59, v35);

  sub_10012BA6C(&v59);
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100EBDC20;
  *(v43 + 32) = v31;
  *(v43 + 40) = 0;
  *(v43 + 48) = 0;
  *(v43 + 56) = v22;
  v44 = v43;
  v45 = qword_10117F578;
  v46 = v31;

  if (v45 != -1)
  {
    swift_once();
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v47;
  v48._countAndFlagsBits = 0x676E6F532ELL;
  v48._object = 0xE500000000000000;
  String.append(_:)(v48);
  v49 = String._bridgeToObjectiveC()();

  if (v42)
  {
    v50 = [v42 children];
    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v44 + 64) = v49;
    *(v44 + 72) = xmmword_100EE45F0;
    *(v44 + 88) = v51;
  }

  else
  {

    *(v44 + 64) = 0u;
    *(v44 + 80) = 0u;
  }

  return v44;
}

uint64_t sub_100823860(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController), v3 = Strong, , v3, v2))
  {
    v4 = PlaylistSortingController.actionBuilder.getter();
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = v4;
    v6 = inited + 32;
    v7 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v6, &unk_10118AB80, &qword_100EBF3B0);
    v8 = static ActionBuilder.buildIf(_:)(v7);
  }

  else
  {
    v8 = static ActionBuilder.buildIf(_:)(0);
  }

  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  *(v9 + 32) = v8;
  v10 = v9 + 32;
  v11 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v10, &unk_10118AB80, &qword_100EBF3B0);
  return v11;
}

uint64_t sub_1008239C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v4[23] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_1011A4990, &unk_100EE5070);
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = type metadata accessor for MusicPropertySource();
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_101181BF0, &unk_100EBD720);
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v10;
  v4[42] = v9;

  return _swift_task_switch(sub_100823C5C, v10, v9);
}

uint64_t sub_100823C5C()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 152);
    swift_getKeyPath();
    *(v0 + 96) = v3;
    *(v0 + 104) = v1;
    type metadata accessor for Playlist();
    sub_100866F00(&unk_1011A47F0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v4 = MusicCatalogResourceRequest.configuration.modify();
    MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
    v4(v0 + 16, 0);
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100EE4600;
    sub_10010FC20(&unk_10118C1C0, &qword_100ED92A0);
    *(v5 + 32) = static PartialMusicProperty<A>.entries.getter();
    *(v5 + 40) = static PartialMusicProperty<A>.tracks.getter();
    *(v5 + 48) = static PartialMusicProperty<A>.trackCount.getter();
    *(v5 + 56) = static PartialMusicProperty<A>.socialProfile.getter();
    *(v5 + 64) = static PartialMusicProperty<A>.curator.getter();
    *(v5 + 72) = static PartialMusicProperty<A>.radioShow.getter();
    *(v5 + 80) = static PartialMusicProperty<A>.genre.getter();
    *(v5 + 88) = static PartialMusicProperty<A>.collaborators.getter();
    *(v5 + 96) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
    *(v5 + 104) = static PartialMusicProperty<A>.entryContributors.getter();
    *(v5 + 112) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
    MusicCatalogResourceRequest.properties.setter();
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeEquivalents;
    *(v0 + 344) = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeEquivalents;
    if (*(v2 + v6) == 1)
    {
      sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
      v7 = type metadata accessor for MusicCatalogResourceRequestOption();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100EBC6B0;
      (*(v8 + 104))(v10 + v9, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v7);
      MusicCatalogResourceRequest.options.setter();
    }

    v11 = *(v0 + 288);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v14 = *(v0 + 168);
    MusicCatalogResourceRequest.prewarmForPlayback.setter();
    v15 = *(v13 + 16);
    v15(v11, v14, v12);
    v16 = *(v13 + 88);
    v17 = v16(v11, v12);
    v18 = enum case for MusicPropertySource.catalog(_:);
    *(v0 + 416) = enum case for MusicPropertySource.catalog(_:);
    if (v17 != v18)
    {
      v19 = *(v0 + 248);
      if (v17 == enum case for MusicPropertySource.library(_:))
      {
        v35 = v17;
        v20 = *(v0 + 280);
        v21 = *(v0 + 176);
        v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
        swift_beginAccess();
        v15(v20, v21 + v22, v19);
        v23 = v16(v20, v19);
        if (v23 == v18)
        {
          sub_100826538();
          sub_1008369E8();
        }

        else if (v23 == v35)
        {
          sub_100827458();
        }

        else
        {
          (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
        }
      }

      else
      {
        (*(*(v0 + 256) + 8))(*(v0 + 288), *(v0 + 248));
      }
    }

    v30 = swift_task_alloc();
    *(v0 + 352) = v30;
    *v30 = v0;
    v30[1] = sub_100824220;
    v31 = *(v0 + 296);
    v32 = *(v0 + 240);

    return MusicCatalogResourceRequest.response()(v32, v31);
  }

  else
  {
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 256);
    v27 = *(v0 + 176);

    v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v26 + 16))(v24, v27 + v28, v25);
    v29 = (*(v26 + 88))(v24, v25);
    if (v29 == enum case for MusicPropertySource.catalog(_:))
    {
      sub_100826538();
      sub_1008369E8();
    }

    else if (v29 == enum case for MusicPropertySource.library(_:))
    {
      sub_100827458();
    }

    else
    {
      (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_100824220()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_1008244DC;
  }

  else
  {
    v5 = sub_10082435C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10082435C()
{
  v1 = v0[38];
  v11 = v0[37];
  v12 = v0[39];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v8);
  (*(v6 + 8))(v5, v7);
  sub_100825284(v8);
  sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1008244DC()
{
  v71 = v0;
  *(v0 + 112) = *(v0 + 360);
  swift_errorRetain();
  *(v0 + 368) = sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  *(v0 + 376) = sub_100009F78(0, &qword_1011929C0, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 176);
  v3 = *(v0 + 120);
  *(v0 + 384) = v3;
  if (*(v2 + v1))
  {
    v4 = *(v0 + 256);

    v5 = *(v4 + 104);
LABEL_16:
    v34 = *(v0 + 256);
    v33 = *(v0 + 264);
    v35 = *(v0 + 248);
    v5(v33, *(v0 + 416), v35);
    v36 = static MusicPropertySource.== infix(_:_:)();
    (*(v34 + 8))(v33, v35);
    if (v36)
    {

      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000060E4(v37, qword_1012193F8);
      v38 = v3;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v70 = v42;
        *v41 = 136446210;
        v43 = v38;
        v44 = [v43 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_1000105AC(v45, v47, &v70);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve catalog playlist with error=%{public}s", v41, 0xCu);
        sub_10000959C(v42);
      }

      v50 = *(v0 + 304);
      v49 = *(v0 + 312);
      v51 = *(v0 + 296);
      v52 = v38;
      sub_1008259A0(v38);

      (*(v50 + 8))(v49, v51);

LABEL_28:

      v66 = *(v0 + 8);

      return v66();
    }

LABEL_23:

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_1012193F8);
    swift_errorRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 360);
    v58 = *(v0 + 304);
    v59 = *(v0 + 312);
    v60 = *(v0 + 296);
    if (v56)
    {
      v69 = *(v0 + 312);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v61 = 136446210;
      *(v0 + 128) = v57;
      swift_errorRetain();
      v63 = String.init<A>(describing:)();
      v65 = sub_1000105AC(v63, v64, &v70);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to retrieve catalog playlist with error=%{public}s", v61, 0xCu);
      sub_10000959C(v62);

      (*(v58 + 8))(v69, v60);
    }

    else
    {

      (*(v58 + 8))(v59, v60);
    }

    goto LABEL_28;
  }

  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 248);
  v5 = *(v7 + 104);
  v5(v6, *(v0 + 416), v8);
  v68 = v3;
  v9 = v3;
  v10 = static MusicPropertySource.== infix(_:_:)();
  (*(v7 + 8))(v6, v8);

  if ((v10 & 1) == 0)
  {

    v3 = v68;
    goto LABEL_16;
  }

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  *(v0 + 392) = sub_1000060E4(v11, qword_1012193F8);
  v12 = v9;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v70 = v16;
    *v15 = 136446210;
    v17 = v12;
    v18 = [v17 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_1000105AC(v19, v21, &v70);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to retrieve catalog playlist with error=%{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Attempting request including equivalents.", v25, 2u);
  }

  sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
  v26 = type metadata accessor for MusicCatalogResourceRequestOption();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6B0;
  (*(v27 + 104))(v29 + v28, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v26);
  MusicCatalogResourceRequest.options.setter();
  v30 = swift_task_alloc();
  *(v0 + 400) = v30;
  *v30 = v0;
  v30[1] = sub_100824D38;
  v31 = *(v0 + 296);
  v32 = *(v0 + 232);

  return MusicCatalogResourceRequest.response()(v32, v31);
}