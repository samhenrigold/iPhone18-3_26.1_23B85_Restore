double sub_1005F2628(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v6 = sub_10077039C();
  v7 = a4;
  v8 = a1;
  sub_1005F239C(v6, a4);

  return result;
}

void sub_1005F26F0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = qword_100960320;
  v8 = *&v3[qword_100960320];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ((sub_1006937A4(v9, a1) & 1) == 0)
  {

LABEL_8:
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v19.super.isa = sub_10077038C().super.isa;
    v21.super_class = type metadata accessor for VideoView(0);
    objc_msgSendSuper2(&v21, *a3, v19.super.isa, a2, v20.receiver, v20.super_class, v3, v21.super_class);
    goto LABEL_11;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v9 locationInView:v3];
  v11 = [v3 hitTest:a2 withEvent:?];
  if (v11)
  {
    v12 = v11;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v13 = v12;
    v14 = v3;
    v15 = v3;
    v16 = sub_100770EEC();

    if ((v16 & 1) == 0)
    {
      sub_100016F40(0, &qword_10094F760, UITouch_ptr);
      sub_10027D9C8();
      v17 = v13;
      isa = sub_10077038C().super.isa;
      [v17 *a3];

      v9 = v17;
    }

    v3 = v14;
  }

  else
  {
    v13 = v9;
  }

  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v19.super.isa = sub_10077038C().super.isa;
  v20.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v20, *a3, v19.super.isa, a2, v3, v20.super_class, v21.receiver, v21.super_class);
LABEL_11:
}

double sub_1005F2920(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  v8 = sub_10077039C();
  v9 = a4;
  v10 = a1;
  sub_1005F26F0(v8, a4, a5);

  return result;
}

void sub_1005F29D0(void *a1)
{
  v1 = a1;
  sub_1005EF770();
}

void sub_1005F2A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setShowsPlaybackControls:1];
  }
}

void sub_1005F2A78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + qword_1009A2568 + 712))();
  }
}

void sub_1005F2B1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1005F4EA4(a4);

  swift_unknownObjectRelease();
}

void sub_1005F2B98(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1005F5048(a4);
}

uint64_t sub_1005F2C54(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *&a1[qword_1009602F0];
  if (v3)
  {
    v5 = a1;
    v6 = v3;
    v7 = a3();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1005F2CF0()
{
  swift_weakDestroy();
  sub_10000CC8C(v0 + qword_1009602B8);
  sub_10000CC8C(v0 + qword_1009602C0);
  sub_10000CC8C(v0 + qword_1009602C8);

  sub_10000CFBC(v0 + qword_1009A24F0, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v0 + qword_1009A24F8, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v0 + qword_1009A2500, &unk_100960410, &qword_10079F3D0);

  v1 = qword_1009A2520;
  v2 = sub_10075DB7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000167E0(*(v0 + qword_1009A2528), *(v0 + qword_1009A2528 + 8));
  sub_100016C74(v0 + qword_1009A2530);
  sub_10000CC8C(v0 + qword_1009A2538);
  swift_unknownObjectWeakDestroy();
  v3 = qword_1009A2558;
  v4 = sub_10076481C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_100960320);
}

id sub_1005F2EE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005F2F1C(uint64_t a1)
{
  swift_weakDestroy();
  sub_10000CC8C(a1 + qword_1009602B8);
  sub_10000CC8C(a1 + qword_1009602C0);
  sub_10000CC8C(a1 + qword_1009602C8);

  sub_10000CFBC(a1 + qword_1009A24F0, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(a1 + qword_1009A24F8, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(a1 + qword_1009A2500, &unk_100960410, &qword_10079F3D0);

  v2 = qword_1009A2520;
  v3 = sub_10075DB7C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_1000167E0(*(a1 + qword_1009A2528), *(a1 + qword_1009A2528 + 8));
  sub_100016C74(a1 + qword_1009A2530);
  sub_10000CC8C(a1 + qword_1009A2538);
  swift_unknownObjectWeakDestroy();
  v4 = qword_1009A2558;
  v5 = sub_10076481C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_100960320);
}

void sub_1005F3114(uint64_t a1)
{
  if (!qword_1009603C8)
  {
    sub_10076F3BC();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1009603C8);
    }
  }
}

double sub_1005F31DC(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1005F323C(uint64_t *a1))(void **a1, char a2)
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
  v5 = qword_1009602B0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

double sub_1005F3324(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1009A2538;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1005F3390(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1009A2538;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1005F3430;
}

void sub_1005F3430(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1005F34BC()
{
  v1 = *(v0 + qword_1009602F0);
  if (v1)
  {
    v2 = v1;
    sub_10076056C();
  }
}

uint64_t sub_1005F355C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009A2558;
  swift_beginAccess();
  v4 = sub_10076481C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_1005F35E8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = sub_10076481C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = qword_1009A2558;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1005F3740;
}

void sub_1005F3740(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1005ECA84(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1005ECA84(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1005F37F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_100960400, &qword_1007AF1F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1007635BC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for MediaMetricsEvent.ActionType.play(_:), v7, v9);
  if (a1)
  {
    v12 = sub_1007635DC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    v13 = enum case for MediaMetricsEvent.ActionDetails.autoplay(_:);
    v14 = sub_1007635DC();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v6, v13, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  sub_1005ECF74(v11, v6, a2);
  sub_10000CFBC(v6, &unk_100960400, &qword_1007AF1F0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1005F3A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000A5D4(&unk_100960400, &qword_1007AF1F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1007635BC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MediaMetricsEvent.ActionType.seek(_:), v5, v7);
  v10 = enum case for MediaMetricsEvent.ActionDetails.autostart(_:);
  v11 = sub_1007635DC();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_1005ECF74(v9, v4, a1);
  sub_10000CFBC(v4, &unk_100960400, &qword_1007AF1F0);
  return (*(v6 + 8))(v9, v5);
}

void sub_1005F3C44(double a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    sub_100763C5C();
    swift_unknownObjectRelease();
  }
}

double sub_1005F3D18()
{
  v1 = v0 + qword_1009602C8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005F3DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + qword_1009602F0);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

void sub_1005F3EB8()
{
  v1 = *(v0 + qword_1009602F0);
  if (v1)
  {
    v2 = v1;
    if (sub_10076051C())
    {
      [v2 pause];
    }
  }
}

void sub_1005F3F8C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10077137C();
      sub_100016F40(0, &qword_10094F760, UITouch_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    if (sub_10077133C() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10077134C();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100770EDC(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100770EEC();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1005F41B0(__n128 a1)
{
  v2 = v1;
  v3 = sub_1007611EC();
  v76 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v70 - v7;
  v8 = sub_10076121C();
  v80 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076481C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v70 - v15;
  v17 = *(v1 + qword_1009602F0);
  if (v17)
  {
    v18 = v10;
    v19 = v12;
    v20 = qword_1009A2558;
    swift_beginAccess();
    v21 = v2 + v20;
    v12 = v19;
    (*(v19 + 16))(v16, v21, v11);
    v22 = v17;
    sub_1007647EC();
    (*(v12 + 8))(v16, v11);
    sub_10076053C();

    v10 = v18;
  }

  v70 = v5;
  v79 = v3;
  v77 = qword_1009602F8;
  v23 = *(v2 + qword_1009602F8);
  if (v23)
  {
    v24 = v10;
    v25 = v12;
    v26 = qword_1009A2558;
    swift_beginAccess();
    v27 = v2 + v26;
    v12 = v25;
    (*(v25 + 16))(v16, v27, v11);
    v28 = v23;
    v29 = sub_1007647AC();
    (*(v12 + 8))(v16, v11);
    [v28 setAllowsEnteringFullScreen:v29 & 1];

    v10 = v24;
  }

  v78 = *(v2 + qword_1009602D0);
  v30 = qword_1009A2558;
  swift_beginAccess();
  v31 = (v12 + 16);
  v74 = *(v12 + 16);
  v74(v16, &v30[v2], v11);
  sub_10076480C();
  v32 = *(v12 + 8);
  v75 = v12 + 8;
  v73 = v32;
  v32(v16, v11);
  v33 = sub_1007611FC();
  v34 = v80[1];
  v34(v10, v8);
  [v78 setContentMode:v33];
  v35 = *(v2 + v77);
  if (v35)
  {
    v74(v16, &v30[v2], v11);
    v80 = v35;
    sub_10076480C();
    v73(v16, v11);
    v36 = sub_10076120C();
    v34(v10, v8);
    v37 = v80;
    [v80 setVideoGravity:v36 forLayoutClass:0];
  }

  v71 = v11;
  v80 = v31;
  v78 = v30;
  sub_1005EC628(v81);
  sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v38 = v70;
  v39 = v79;
  sub_1007712BC();
  sub_1005F4A14(&qword_100954BA8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v40 = sub_10076FF1C();
  v41 = v76 + 8;
  v42 = *(v76 + 8);
  v42(v38, v39);
  [v2 setUserInteractionEnabled:(v40 & 1) == 0];
  v43 = *(v2 + qword_100960308);
  sub_1007611CC();
  v44 = sub_10077124C();
  v42(v38, v39);
  if (v44)
  {
    v45 = v42;
    v46 = 0;
  }

  else
  {
    sub_1007611DC();
    v47 = sub_10077124C();
    v45 = v42;
    v42(v38, v39);
    v46 = v47 ^ 1;
  }

  v48 = v78;
  [v43 setHidden:{v46 & 1, v70}];

  v49 = v77;
  v50 = *(v2 + v77);
  if (v50)
  {
    v51 = v50;
    [v51 setShowsPlaybackControls:sub_1007611AC() & 1];

    v48 = v78;
    v52 = *(v2 + v49);
    if (v52)
    {
      v76 = v41;
      v53 = *((swift_isaMask & *v2) + qword_1009A2568 + 752);
      v54 = v52;
      v55 = (v53() & 1) != 0 ? 1 : *(v2 + qword_1009A2560);
      [v54 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v55];

      v56 = *(v2 + v49);
      v48 = v78;
      if (v56)
      {
        v57 = v56;
        sub_1007611BC();
        v58 = v79;
        v59 = sub_10077124C();
        v45(v38, v58);
        if (v59)
        {
          v60 = 1;
        }

        else
        {
          v60 = *(v2 + qword_1009A2540);
        }

        [v57 setPlaybackControlsIncludeVolumeControls:v60];
      }
    }
  }

  sub_1005ED8D0();
  v61 = &v48[v2];
  v62 = v71;
  v63 = v72;
  v74(v72, v61, v71);
  v64 = sub_10076478C();
  v73(v63, v62);
  if (v64)
  {
    v65 = v81;
    v66 = v79;
    v67 = v45;
    if ((*(v2 + qword_1009A2540) & 1) == 0)
    {
      sub_10075FD2C();
      sub_10075FB9C();
      sub_1007638DC();
      sub_10075FBAC();
    }
  }

  else
  {
    v65 = v81;
    v66 = v79;
    v67 = v45;
  }

  sub_1007638EC();
  sub_1005EF3F8();
  sub_1005EE8BC(v68);
  sub_1005EEA78();
  return v67(v65, v66);
}

uint64_t sub_1005F4A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005F4A5C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    sub_100763C9C();
    swift_unknownObjectRelease();
  }

  v3 = v1 + qword_1009602C8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    (*(v5 + 16))(a1, v1, v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  sub_1005EE8BC(v4);
  return sub_1005ED8D0();
}

void sub_1005F4BC0()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = qword_1009A2558;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_1007647EC();
    (*(v3 + 8))(v5, v2);
    sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    sub_100763C7C();
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_1009A2540) == 1)
  {
    v7 = *(v1 + qword_1009602F8);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1005F4E84;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_10089C3C8;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 exitFullScreenAnimated:1 completionHandler:v9];
      _Block_release(v9);
    }
  }
}

uint64_t sub_1005F4E4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005F4E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1005F4EA4(void *a1)
{
  v3 = v1 + qword_1009602B8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v1 + qword_1009A2548) = 1;
  v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006F5994;
  v12 = &unk_10089C3F0;
  v6 = _Block_copy(&v9);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1005F5A14;
  v14 = v7;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006F5994;
  v12 = &unk_10089C418;
  v8 = _Block_copy(&v9);

  [a1 animateAlongsideTransition:v6 completion:v8];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1005F5048(uint64_t a1)
{
  v2 = v1;
  v48 = sub_10076481C();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007611EC();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v43 - v9;
  v10 = sub_10076688C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007668CC();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        [v2 updateAudioSessionCategoryWithIsAudioOn:{1, v16}];
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
        v19 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
LABEL_17:
        (*(v11 + 104))(v13, *v19, v10);
        v32 = v18;
        v33 = v13;
LABEL_27:
        sub_1005EFAB8(v32, v33);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        return;
      case 4:
        v36 = *(v2 + qword_1009602F0);
        if (v36)
        {
          v37 = [v36 isMuted] ^ 1;
        }

        else
        {
          v37 = 0;
        }

        *(v2 + qword_100960318) = v37;
        *(v2 + qword_1009A2540) = 1;
        sub_1005F1A14();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.fullscreen(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.enterFullscreen(_:), v10);
        v32 = v18;
        v33 = v13;
        goto LABEL_27;
      case 5:
        *(v2 + qword_1009A2540) = 0;
        sub_1005F1A14();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.inline(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.exitFullscreen(_:), v10);
        sub_1005EFAB8(v18, v13);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        v20 = v2 + qword_1009602B8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 16))(ObjectType, v21);
          swift_unknownObjectRelease();
        }

        break;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return;
      }

      [v2 updateAudioSessionCategoryWithIsAudioOn:{0, v16}];
      (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
      v19 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      goto LABEL_17;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      sub_100763C8C();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.pause(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.pause(_:), v10);
    sub_1005EFAB8(v18, v13);
    (*(v11 + 8))(v13, v10);
    v34 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v2) + qword_1009A2568 + 752))(v34) & 1) == 0)
    {
      [v2 updateAudioSessionCategoryWithIsAudioOn:0];
      v35 = *(v2 + qword_1009602F0);
      if (v35)
      {
        [v35 setMuted:1];
      }
    }
  }

  else
  {
    v44 = v6;
    v23 = v2;
    v24 = v2 + qword_1009A2538;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43[1] = *(v24 + 1);
      swift_getObjectType();
      sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      sub_100763C6C();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.play(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.play(_:), v10);
    sub_1005EFAB8(v18, v13);
    (*(v11 + 8))(v13, v10);
    v25 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v23) + qword_1009A2568 + 752))(v25) & 1) == 0)
    {
      v26 = sub_10076922C();
      v27 = qword_1009A2558;
      v28 = (v45 + 16);
      v29 = (v45 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_1007647CC();
      }

      else
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_10076479C();
      }

      v38 = v44;
      (*v29)(v5, v30);
      v39 = v47;
      sub_1007611BC();
      sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
      v40 = sub_10077124C();
      v41 = *(v49 + 8);
      v41(v39, v38);
      v41(v31, v38);
      if (v40)
      {
        [v23 updateAudioSessionCategoryWithIsAudioOn:1];
        v42 = *&v23[qword_1009602F0];
        if (v42)
        {
          [v42 setMuted:0];
        }
      }
    }
  }
}

double sub_1005F5A1C(char a1)
{
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_10093FAA8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_10094D778;
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = AVAudioSessionCategoryPlayback;
    v10[5] = AVAudioSessionModeDefault;
    v10[6] = 0;
    v22 = sub_1005F5FF8;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_10089C4B8;
  }

  else
  {
    if (qword_10093FAA8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_10094D778;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = AVAudioSessionCategoryPlayback;
    v12[5] = AVAudioSessionModeDefault;
    v12[6] = 1;
    v22 = sub_1005F5DC8;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_10089C468;
  }

  v20 = sub_10009AEDC;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = AVAudioSessionCategoryPlayback;
  v15 = AVAudioSessionModeDefault;
  sub_10076F0AC();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1005F4A14(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

uint64_t sub_1005F5DCC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005F5E2C()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005F5E64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005F5EA8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1005F5F0C()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + qword_100960308) setAlpha:v1];
}

uint64_t sub_1005F5F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100960400, &qword_1007AF1F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F602C(__n128 a1)
{
  v1 = sub_1007681FC();
  sub_10000DB18(v1, qword_1009A2578);
  sub_10000A61C(v1, qword_1009A2578);
  return sub_1007681DC();
}

void sub_1005F6144()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_1009A2590 = sub_100770DEC(v3, v2).super.isa;
}

uint64_t sub_1005F61E0()
{
  v0 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v0, qword_1009A25A0);
  sub_10000A61C(v0, qword_1009A25A0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDFC();
}

char *sub_1005F6278(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v313 = sub_10076F9AC();
  v311 = *(v313 - 8);
  __chkstk_darwin(v313);
  v307 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075FEEC();
  v295 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v284 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v14 - 8);
  v293 = &v284 - v15;
  v16 = sub_10076D3DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v304 = &v284 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076771C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v284 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v23 - 8);
  v303 = &v284 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v284 - v26;
  v28 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel;
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v294 = v13;
  v296 = v11;
  v29 = sub_10000A61C(v16, qword_1009A1360);
  v30 = *(v17 + 16);
  v312 = (v17 + 16);
  v292 = v30;
  (v30)(v27, v29, v16);
  v306 = v17;
  v31 = *(v17 + 56);
  v291 = v16;
  v310 = (v17 + 56);
  v308 = v31;
  (v31)(v27, 0, 1, v16);
  v32 = *(v20 + 104);
  v300 = enum case for DirectionalTextAlignment.none(_:);
  v309 = v19;
  v302 = v20 + 104;
  v298 = v32;
  (v32)(v22);
  v33 = v22;
  v34 = sub_1007626BC();
  v35 = objc_allocWithZone(v34);
  v299 = v33;
  *(v5 + v28) = sub_1007626AC();
  v36 = type metadata accessor for RatingView();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v38 = &v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v38 = 0;
  v38[8] = 1;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v39 = qword_100944D30;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 1;
  *v38 = 0x4008000000000000;
  v38[8] = 0;
  v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
  v40 = type metadata accessor for StarRow();
  v41 = objc_allocWithZone(v40);
  v42 = v39;
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v43 = objc_allocWithZone(v40);
  *&v37[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v319.receiver = v37;
  v319.super_class = v36;
  v44 = objc_msgSendSuper2(&v319, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v45 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v46 = *&v44[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v47 = *&v46[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v46[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v44[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v48 = v46;
  sub_100062B94(v47);

  if (*&v44[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v44 addSubview:?];
  }

  v305 = v34;
  v49 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView;
  [v44 addSubview:*&v44[v45]];

  *(v5 + v49) = v44;
  v301 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel;
  v50 = v309;
  v51 = v292;
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v52 = v291;
  v290 = sub_10000A61C(v291, qword_1009A13A8);
  v51(v27);
  (v308)(v27, 0, 1, v52);
  v53 = v299;
  v54 = v300;
  v55 = v50;
  v56 = v298;
  v298(v299, v300, v55);
  v57 = v305;
  v58 = objc_allocWithZone(v305);
  *&v301[v5] = sub_1007626AC();
  v301 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel;
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  v59 = sub_10000A61C(v52, qword_1009A13C0);
  (v51)(v27, v59, v52);
  (v308)(v27, 0, 1, v52);
  v56(v53, v54, v309);
  v60 = objc_allocWithZone(v57);
  *&v301[v5] = sub_1007626AC();
  v61 = v51;
  v62 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel;
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  v63 = sub_10000A61C(v52, qword_1009A13D8);
  v61(v27, v63, v52);
  (v308)(v27, 0, 1, v52);
  v56(v53, v54, v309);
  v64 = objc_allocWithZone(v57);
  v65 = v61;
  *(v5 + v62) = sub_1007626AC();
  v285 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel;
  v286 = v5;
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v66 = sub_10000A61C(v52, qword_1009A1390);
  v67 = v304;
  v289 = v66;
  (v61)(v304);
  v301 = objc_opt_self();
  v68 = [v301 clearColor];
  v288 = type metadata accessor for ExpandableTextView();
  v69 = objc_allocWithZone(v288);
  v70 = v68;
  v71 = sub_10073C780(v70, 0.0, 0.0, 0.0, 0.0);
  v65(v27, v67, v52);
  v72 = v308;
  v73 = v65;
  (v308)(v27, 0, 1, v52);
  sub_100389394(v27, v303);
  v74 = v71;
  sub_1007625DC();

  sub_10000CFBC(v27, &unk_100943250, &unk_1007841D0);
  v75 = *(v306 + 8);
  v306 += 8;
  v287 = v75;
  v75(v67, v52);

  v76 = v286;
  *&v286[v285] = v74;
  v285 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel;
  v77 = v65;
  v78 = v52;
  v79 = v76;
  if (qword_100940C80 != -1)
  {
    swift_once();
  }

  v80 = sub_10000A61C(v78, qword_1009A1378);
  v73(v27, v80, v78);
  v72(v27, 0, 1, v78);
  v81 = v299;
  v82 = v300;
  v83 = v298;
  v298(v299, v300, v309);
  v84 = objc_allocWithZone(v305);
  *&v79[v285] = sub_1007626AC();
  v285 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel;
  v77(v27, v290, v78);
  v72(v27, 0, 1, v78);
  v83(v81, v82, v309);
  v85 = objc_allocWithZone(v305);
  *&v79[v285] = sub_1007626AC();
  v86 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel;
  v87 = v304;
  v88 = v77;
  v77(v304, v289, v78);
  v89 = [v301 clearColor];
  v90 = objc_allocWithZone(v288);
  v91 = v89;
  v92 = sub_10073C780(v91, 0.0, 0.0, 0.0, 0.0);
  v88(v27, v87, v78);
  (v308)(v27, 0, 1, v78);
  sub_100389394(v27, v303);
  v93 = v92;
  sub_1007625DC();

  sub_10000CFBC(v27, &unk_100943250, &unk_1007841D0);
  v287(v87, v78);

  *&v79[v86] = v93;
  v94 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView;
  sub_10075F99C();
  *&v79[v94] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v95 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView;
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v79[v95] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v97 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView;
  *&v79[v97] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v98 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView;
  *&v79[v98] = [objc_allocWithZone(UIView) init];
  v99 = &v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
  *v99 = 0;
  v99[1] = 0;
  v100 = &v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
  *v100 = 0;
  v100[1] = 0;
  v101 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  *&v79[v101] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v102 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  *&v79[v102] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination] = 0;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse] = 0;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded] = 1;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded] = 1;
  v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection] = 1;
  v103 = &v79[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_actionHandler];
  v104 = type metadata accessor for ProductReviewView();
  *v103 = 0;
  v103[1] = 0;
  v318.receiver = v79;
  v318.super_class = v104;
  v105 = objc_msgSendSuper2(&v318, "initWithFrame:", a1, a2, a3, a4);
  v106 = [v105 layer];
  [v106 setCornerRadius:20.0];

  v107 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView;
  v108 = qword_10093F8B0;
  v109 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView);
  if (v108 != -1)
  {
    swift_once();
  }

  v110 = sub_10076BCFC();
  v111 = sub_10000A61C(v110, qword_10099D4B0);
  v112 = *(v110 - 8);
  v113 = v293;
  (*(v112 + 16))(v293, v111, v110);
  (*(v112 + 56))(v113, 0, 1, v110);
  sub_10075F97C();

  v114 = *(v105 + v107);
  v115 = v295;
  v116 = v294;
  v117 = enum case for CornerStyle.continuous(_:);
  v118 = v296;
  v312 = *(v295 + 104);
  v312(v294);
  v119 = v114;
  sub_10075F98C();

  v310 = *(v115 + 8);
  v310(v116, v118);
  [v105 addSubview:*(v105 + v107)];
  v120 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView;
  v121 = qword_1009412B0;
  v122 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView);
  if (v121 != -1)
  {
    swift_once();
  }

  v123 = qword_1009A2590;
  [v122 setBackgroundColor:qword_1009A2590];

  v124 = *(v105 + v120);
  (v312)(v116, v117, v118);
  v125 = v124;
  sub_1007638AC();

  v310(v116, v118);
  [v105 addSubview:*(v105 + v120)];
  v126 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView;
  [*(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView) setBackgroundColor:v123];
  [*(v105 + v126) _setContinuousCornerRadius:20.0];
  [v105 addSubview:*(v105 + v126)];
  v127 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView;
  v128 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView);
  v129 = [v301 systemBackgroundColor];
  [v128 setBackgroundColor:v129];

  [*(v105 + v127) setAlpha:0.0];
  v130 = *(v105 + v127);
  (v312)(v116, v117, v118);
  v131 = v130;
  sub_1007638AC();

  v310(v116, v118);
  [*(v105 + v126) addSubview:*(v105 + v127)];
  v132 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel;
  v133 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v134 = v133;
  v135 = v307;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v136 = v311 + 8;
  v137 = *(v311 + 8);
  v137(v135, v313);
  [*(v105 + v126) addSubview:*(v105 + v132)];
  v138 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel;
  v139 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel);
  v140 = sub_1000325F0();
  v141 = v139;
  v142 = sub_100770D1C();
  [v141 setTextColor:v142];

  v143 = *(v105 + v138);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v144 = v143;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v310 = v137;
  v311 = v136;
  v137(v135, v313);
  v312 = v126;
  [*(v105 + v126) addSubview:*(v105 + v138)];
  v145 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView;
  v146 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView);
  v147 = sub_100770CFC();
  v148 = *&v146[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor];
  *&v146[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = v147;
  v149 = v147;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_1000620A4();
  }

  v150 = *(v105 + v145);
  v151 = sub_100770D0C();
  v152 = sub_100770CFC();
  v153 = sub_100770D0C();
  v154.super.isa = sub_100770CFC();
  v155.super.isa = v151;
  v156.super.isa = v152;
  v157.super.isa = v153;
  v158.super.isa = sub_100770E3C(v155, v156, v157, v154).super.isa;
  isa = v158.super.isa;
  v160 = *&v150[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
  *&v150[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = v158;
  if (v160)
  {
    v161 = v158.super.isa;
    v162 = v160;
    v163 = sub_100770EEC();

    if (v163)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v164 = v158.super.isa;
    v162 = 0;
  }

  sub_1000620A4();
  v161 = isa;
LABEL_28:

  v165 = *(v105 + v145);
  v166 = [v105 traitCollection];

  v167 = [v166 accessibilityContrast];
  v168 = v167 == 0;
  v169 = v165[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars];
  v165[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = v168;
  if ((v168 ^ v169))
  {
    v170 = *&v165[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView];
    if (v170)
    {
      v171 = *(v170 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v170 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v168;
      if (((v167 == 0) ^ v171))
      {
        sub_10006363C();
      }
    }
  }

  v309 = v140;

  v172 = qword_1009412B8;
  v173 = *(v105 + v145);
  if (v172 != -1)
  {
    swift_once();
  }

  [v173 setMaximumContentSizeCategory:qword_1009A2598];

  v174 = *(v105 + v145);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v175 = v174;
  v176 = v307;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v177 = v313;
  v310(v176, v313);
  v178 = v312;
  [*(v312 + v105) addSubview:*(v105 + v145)];
  v179 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel;
  v180 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel);
  v181 = sub_100770D1C();
  [v180 setTextColor:v181];

  v182 = *(v105 + v179);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v183 = v182;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v184 = v310;
  v310(v176, v177);
  [*(v178 + v105) addSubview:*(v105 + v179)];
  v185 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel;
  v186 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel);
  v187 = sub_100770D1C();
  [v186 setTextColor:v187];

  v188 = *(v105 + v185);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v189 = v188;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v184(v176, v313);
  [*(v178 + v105) addSubview:*(v105 + v185)];
  v190 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel;
  v191 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel);
  v192 = sub_100770D1C();
  [*&v191[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setTextColor:v192];

  v193 = *(v105 + v190);
  if (*(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse))
  {
    v194 = 2;
  }

  else
  {
    v194 = 6;
  }

  v195 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v196 = *&v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = v194;
  v197 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed])
  {
    v198 = *&v193[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v199 = v193;
    [v198 setNumberOfLines:v194];
    if (*&v193[v195] == v196)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v200 = v193;
    if (v194 == v196)
    {
      goto LABEL_43;
    }
  }

  if (v193[v197])
  {
    sub_10073D75C();
  }

LABEL_43:

  v201 = *(v105 + v190);
  v202 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded);
  v203 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v204 = v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
  v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = v202 ^ 1;
  if (v202)
  {
    v205 = 0;
  }

  else
  {
    v205 = *&v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  }

  v206 = *&v201[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
  v207 = v201;
  [v206 setNumberOfLines:v205];
  if (v204 != v201[v203])
  {
    sub_10073D75C();
  }

  [*(*(v105 + v190) + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setLineBreakMode:4];
  [*(*(v105 + v190) + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setTextAlignment:4];
  v208 = *(v105 + v190);
  v208[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton] = 0;
  v209 = v208;
  sub_10073D75C();

  [*(v105 + v190) setUserInteractionEnabled:1];
  v210 = *(v105 + v190);
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v211 = v210;
  v212 = v307;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v310(v212, v313);
  v213 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  v214 = *(v105 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer);
  v215 = v105;
  [v214 addTarget:v215 action:"moreReviewFrom:"];
  [*(v105 + v213) setDelegate:v215];
  v216 = *(v105 + v190);
  v306 = v213;
  [v216 addGestureRecognizer:*(v105 + v213)];
  v217 = *(v105 + v190);
  v218 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v219 = &v217[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v220 = v190;
  v221 = *&v217[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v222 = *&v217[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler + 8];
  *v219 = sub_1005FA9BC;
  v219[1] = v218;
  swift_retain_n();
  v223 = v217;
  sub_1000167E0(v221, v222);
  v224 = *&v223[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton];

  [v224 setUserInteractionEnabled:1];

  v225 = *(v312 + v105);
  v308 = v220;
  [v225 addSubview:*&v220[v105]];
  v226 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel;
  v227 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel];
  v320._object = 0x80000001007E1420;
  v320._countAndFlagsBits = 0xD000000000000012;
  v321._countAndFlagsBits = 0;
  v321._object = 0xE000000000000000;
  sub_1007622EC(v320, v321);
  v228 = sub_10076FF6C();

  [v227 setText:v228];

  [*&v215[v226] setHidden:1];
  v229 = *&v215[v226];
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v230 = v229;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v231 = v313;
  v232 = v310;
  v310(v212, v313);
  [*(v312 + v105) addSubview:*&v215[v226]];
  v233 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel;
  v234 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel];
  v235 = sub_100770D1C();
  [v234 setTextColor:v235];

  [*&v215[v233] setHidden:1];
  v236 = *&v215[v233];
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v237 = v236;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v232(v212, v231);
  [*(v312 + v105) addSubview:*&v215[v233]];
  v238 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel;
  v239 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel];
  v240 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v241 = *&v239[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v239[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = 2;
  v242 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v239[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v243 = *&v239[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v244 = v239;
    [v243 setNumberOfLines:2];
    if (*&v239[v240] == v241)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v245 = v239;
    if (v241 == 2)
    {
      goto LABEL_54;
    }
  }

  if (v239[v242])
  {
    sub_10073D75C();
  }

LABEL_54:

  v246 = *&v215[v238];
  v247 = v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded];
  v248 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v249 = v246[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
  v246[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = v247 ^ 1;
  if (v247)
  {
    v250 = 0;
  }

  else
  {
    v250 = *&v246[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  }

  v251 = *&v246[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
  v252 = v246;
  [v251 setNumberOfLines:v250];
  if (v249 != v246[v248])
  {
    sub_10073D75C();
  }

  [*(*&v215[v238] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setLineBreakMode:4];
  v253 = *&v215[v238];
  v253[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton] = 0;
  v254 = v253;
  sub_10073D75C();

  v255 = *&v215[v238];
  v256 = sub_100770D1C();
  [*&v255[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setTextColor:v256];

  [*&v215[v238] setUserInteractionEnabled:1];
  [*&v215[v238] setHidden:1];
  v257 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  v258 = *&v215[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer];
  v259 = v215;
  [v258 addTarget:v259 action:"moreResponseFrom:"];
  v260 = *&v215[v257];
  [v260 setDelegate:v259];

  [*&v215[v238] addGestureRecognizer:*&v215[v257]];
  v261 = *&v215[v238];
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v262 = v261;
  v263 = v307;
  sub_10076F95C();
  sub_10000CFBC(&v314, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v316, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v310(v263, v313);
  v264 = *&v215[v238];
  v265 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v266 = &v264[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v267 = *&v264[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v268 = *&v264[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler + 8];
  *v266 = sub_1005FA9E0;
  v266[1] = v265;
  swift_retain_n();
  v269 = v264;
  sub_1000167E0(v267, v268);
  v270 = *&v269[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton];

  [v270 setUserInteractionEnabled:1];

  [*(v312 + v105) addSubview:*&v215[v238]];
  v271 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v259 action:"stateChangedFor:"];

  [v259 addGestureRecognizer:v271];
  [*&v215[v257] setCancelsTouchesInView:0];
  [*(v105 + v306) setCancelsTouchesInView:0];
  v272 = *&v215[v238];
  v273 = &v272[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v274 = *&v272[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v275 = *&v272[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler + 8];
  *v273 = 0;
  *(v273 + 1) = 0;
  v276 = v272;
  [*&v276[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000167E0(v274, v275)}];

  v277 = *&v308[v105];
  v278 = &v277[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v279 = *&v277[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v280 = *&v277[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler + 8];
  *v278 = 0;
  *(v278 + 1) = 0;
  v281 = v277;
  [*&v281[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000167E0(v279, v280)}];

  sub_1005F8918();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v282 = swift_allocObject();
  *(v282 + 16) = xmmword_100784500;
  *(v282 + 32) = sub_10076E88C();
  *(v282 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v282 + 48) = sub_10076E65C();
  *(v282 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v259;
}

void sub_1005F8714(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + *a2;
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);
      sub_1000167E0(v6, v7);
    }
  }
}

void sub_1005F87EC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:v2];
  if (*(v0 + v1))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView) setAlpha:v3];
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView);
  if (*(v0 + v1) == 1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_1009412B0 != -1)
    {
      swift_once();
    }

    v5 = qword_1009A2590;
  }

  v6 = v5;
  [v4 setBackgroundColor:?];
}

void sub_1005F8918()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077071C();

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel] setHidden:v3 & 1];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView];
  if (qword_1009412C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000A61C(v5, qword_1009A25A0);
  v15 = v1;
  v6 = v1;
  sub_10075FDCC();

  v7 = v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding;
  *v7 = v16;
  *(v7 + 8) = 0;
  sub_100062244(v16, 0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView;
  if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView))
  {
    sub_100062244(*v7, *(v7 + 8));
  }

  v9 = [v6 traitCollection];
  v10 = [v9 accessibilityContrast];

  v11 = v10 == 0;
  v12 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars);
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars) = v11;
  if (v11 != v12)
  {
    v13 = *(v4 + v8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v13 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v11;
      if (((v10 == 0) ^ v14))
      {
        sub_10006363C();
      }
    }
  }
}

id sub_1005F8B18(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProductReviewView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  sub_1005F8C40();
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView];
  [v1 bounds];
  return [v5 setFrame:?];
}

uint64_t sub_1005F8C40()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009542E0, qword_1007AF290);
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = v35 - v3;
  v4 = sub_1007681FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v35 - v9;
  v11 = sub_10076821C();
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination];
  if (qword_1009412A8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v4, qword_1009A2578);
  (*(v5 + 16))(v7, v15, v4);
  if (v14)
  {
    v60 = &type metadata for Double;
    v61 = &protocol witness table for Double;
    v59 = 0;
    sub_1007681EC();
    v60 = &type metadata for Double;
    v61 = &protocol witness table for Double;
    v59 = 0x4018000000000000;
    sub_1007681CC();
  }

  (*(v5 + 32))(v10, v7, v4);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel];
  v17 = sub_1007626BC();
  v60 = v17;
  v61 = &protocol witness table for UILabel;
  v58 = &protocol witness table for UILabel;
  v59 = v16;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel];
  v57 = v17;
  v55 = &protocol witness table for UILabel;
  v56 = v18;
  v35[1] = v10;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel];
  v54 = v17;
  v53 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel];
  v51 = v17;
  v52 = &protocol witness table for UILabel;
  v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel];
  v50 = v20;
  type metadata accessor for ExpandableTextView();
  v21 = v16;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  sub_10076D2DC();
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel];
  v47 = v17;
  v48 = &protocol witness table for UILabel;
  v45 = &protocol witness table for UILabel;
  v46 = v25;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel];
  v44 = v17;
  v42 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel];
  v43 = v26;
  v27 = v25;
  v28 = v26;
  sub_10076D2DC();
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView];
  type metadata accessor for RatingView();
  sub_10076D2DC();
  sub_10076820C();
  [v1 bounds];
  v29 = [v1 traitCollection];
  sub_100374304(v30);
  v32 = v37;
  v31 = v38;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v33 = v40;
  sub_10076E0EC();

  (*(v39 + 8))(v31, v33);
  return (*(v36 + 8))(v13, v32);
}

id sub_1005F9134(id result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse];
  if (v3 != (result & 1))
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel] setHidden:v3 ^ 1u];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel] setHidden:(v1[v2] & 1) == 0];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel] setHidden:(v1[v2] & 1) == 0];
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel];
    if (v1[v2])
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    v6 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
    v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines) = v5;
    v8 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) == 1)
    {
      [*(v4 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:?];
      v5 = *(v4 + v6);
    }

    if (v5 != v7 && (*(v4 + v8) & 1) != 0)
    {
      sub_10073D75C();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1005F9288()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel);
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel);
  v7 = *(v1 + v3);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_10073D75C();
  }

  return result;
}

id sub_1005F9364()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel);
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel);
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_10073D75C();
  }

  return result;
}

id sub_1005F9524(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

id sub_1005F95A0(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_1005F9630(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  v8 = &a1[*a4];
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 1);

    v9(v11);
    sub_1000167E0(v9, v10);
  }

  return sub_10000CFBC(v13, &unk_1009434C0, &qword_100783F60);
}

id sub_1005F9764(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductReviewView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005F9914()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1005F9C00;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009AEDC;
  v5[3] = &unk_10089C808;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_1005F9A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v13[4] = a5;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10009AEDC;
    v13[3] = a6;
    v11 = _Block_copy(v13);
    v12 = v6;

    [a1 addAnimations:v11];
    _Block_release(v11);
  }
}

uint64_t sub_1005F9B18()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1005F9B50()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:1.0];
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

double sub_1005F9BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1005F9C00()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

void sub_1005F9C84()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v91 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076771C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v7 - 8);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel;
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v0, qword_1009A1360);
  v96 = *(v1 + 16);
  v97 = v1 + 16;
  v96(v11, v13, v0);
  v92 = v1;
  v14 = *(v1 + 56);
  v99 = v1 + 56;
  v14(v11, 0, 1, v0);
  v15 = *(v4 + 104);
  v95 = enum case for DirectionalTextAlignment.none(_:);
  v88 = v4 + 104;
  v89 = v3;
  v94 = v15;
  (v15)(v6);
  v93 = sub_1007626BC();
  v16 = objc_allocWithZone(v93);
  *(v98 + v12) = sub_1007626AC();
  v17 = type metadata accessor for RatingView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v19 = &v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v19 = 0;
  v19[8] = 1;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v20 = qword_100944D30;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 1;
  *v19 = 0x4008000000000000;
  v19[8] = 0;
  v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
  v21 = type metadata accessor for StarRow();
  v22 = objc_allocWithZone(v21);
  v23 = v20;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v24 = objc_allocWithZone(v21);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v100.receiver = v18;
  v100.super_class = v17;
  v25 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v26 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v27 = *&v25[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v28 = *&v27[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v27[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v25[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v29 = v27;
  sub_100062B94(v28);

  if (*&v25[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v25 addSubview:?];
  }

  v30 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_ratingView;
  [v25 addSubview:*&v25[v26]];

  *(v98 + v30) = v25;
  v31 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel;
  v32 = v96;
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A61C(v0, qword_1009A13A8);
  v32(v11);
  v14(v11, 0, 1, v0);
  v33 = v89;
  v94(v6, v95, v89);
  v34 = objc_allocWithZone(v93);
  *(v98 + v31) = sub_1007626AC();
  v35 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel;
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v0, qword_1009A13C0);
  (v32)(v11, v36, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v37 = objc_allocWithZone(v93);
  *(v98 + v35) = sub_1007626AC();
  v38 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel;
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v0, qword_1009A13D8);
  (v32)(v11, v39, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v40 = objc_allocWithZone(v93);
  *(v98 + v38) = sub_1007626AC();
  v79 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel;
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v85 = v6;
  v41 = sub_10000A61C(v0, qword_1009A1390);
  v42 = v91;
  v83 = v41;
  v32(v91);
  v82 = objc_opt_self();
  v43 = [v82 clearColor];
  v81 = type metadata accessor for ExpandableTextView();
  v44 = objc_allocWithZone(v81);
  v45 = v43;
  v46 = sub_10073C780(v45, 0.0, 0.0, 0.0, 0.0);
  (v32)(v11, v42, v0);
  v87 = v14;
  v14(v11, 0, 1, v0);
  sub_100389394(v11, v90);
  v47 = v46;
  sub_1007625DC();

  sub_10000CFBC(v11, &unk_100943250, &unk_1007841D0);
  v48 = *(v92 + 8);
  v92 += 8;
  v80 = v48;
  v48(v42, v0);

  v49 = v98;
  *(v98 + v79) = v47;
  v79 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseTitleLabel;
  if (qword_100940C80 != -1)
  {
    swift_once();
  }

  v50 = sub_10000A61C(v0, qword_1009A1378);
  v96(v11, v50, v0);
  v51 = v87;
  v87(v11, 0, 1, v0);
  v52 = v85;
  v86 = v0;
  v53 = v95;
  v54 = v89;
  v55 = v94;
  v94(v85, v95, v89);
  v56 = v93;
  v57 = objc_allocWithZone(v93);
  *(v49 + v79) = sub_1007626AC();
  v79 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel;
  v58 = v86;
  v96(v11, v84, v86);
  v51(v11, 0, 1, v58);
  v55(v52, v53, v54);
  v59 = objc_allocWithZone(v56);
  *(v49 + v79) = sub_1007626AC();
  v60 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel;
  v61 = v91;
  v62 = v86;
  v63 = v96;
  v96(v91, v83, v86);
  v64 = [v82 clearColor];
  v65 = objc_allocWithZone(v81);
  v66 = v64;
  v67 = sub_10073C780(v66, 0.0, 0.0, 0.0, 0.0);
  v63(v11, v61, v62);
  v87(v11, 0, 1, v62);
  sub_100389394(v11, v90);
  v68 = v67;
  sub_1007625DC();

  sub_10000CFBC(v11, &unk_100943250, &unk_1007841D0);
  v80(v61, v62);

  *(v49 + v60) = v68;
  v69 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shadowView;
  sub_10075F99C();
  *(v49 + v69) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v70 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_roundedCornerView;
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v49 + v70) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v72 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_focusBackgroundView;
  *(v49 + v72) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v73 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_cardContentView;
  *(v49 + v73) = [objc_allocWithZone(UIView) init];
  v74 = (v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler);
  *v74 = 0;
  v74[1] = 0;
  v75 = (v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler);
  *v75 = 0;
  v75[1] = 0;
  v76 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer;
  *(v49 + v76) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v77 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer;
  *(v49 + v77) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination) = 0;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse) = 0;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection) = 1;
  v78 = (v49 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_actionHandler);
  *v78 = 0;
  v78[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005FA984()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005FAA1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076F1FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F1EC();
  v10 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v4) = sub_10072F844();

  if (v4)
  {
    sub_1005FCF70();
    v14 = *(v2 + 24);
    if (v14)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v15 = v14;
      isa = sub_100770E4C(1.0, 0.58431, 0.0, 0.5).super.isa;
      sub_1005FCA1C(v8, v10, isa, sub_1005FD6C8, v12, 3.0);
    }
  }

  return result;
}

void sub_1005FAF70()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tintView];
  [v1 _setCornerRadius:20.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100786040;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v0 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 rightAnchor];
  v14 = [v0 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_100016F40(0, &qword_100945D78, NSLayoutConstraint_ptr);
  isa = sub_1007701AC().super.isa;

  [v2 activateConstraints:isa];

  [v0 _setCornerRadius:20.0];
  [v0 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v0 setClipsToBounds:1];
  v17 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapFrom:"];
  [v0 addGestureRecognizer:v18];
}

id sub_1005FB3C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tintView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view] = 0;
  v5 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1005FAF70();
  }

  return v7;
}

void sub_1005FB4C0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_viewConstraints;
  sub_100016F40(0, &qword_100945D78, NSLayoutConstraint_ptr);

  isa = sub_1007701AC().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = sub_1007701AC().super.isa;

  [v3 activateConstraints:v6];
}

id sub_1005FB5C0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v2];
    v3 = [v2 bottomAnchor];
    v4 = [v0 layoutMarginsGuide];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5];
    LODWORD(v7) = 1140457472;
    [v6 setPriority:v7];
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100786040;
    v9 = [v2 topAnchor];
    v10 = [v0 layoutMarginsGuide];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v8 + 32) = v12;
    v13 = [v2 leftAnchor];
    v14 = [v0 layoutMarginsGuide];
    v15 = [v14 leftAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v8 + 40) = v16;
    *(v8 + 48) = v6;
    v17 = v6;
    v18 = [v2 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 rightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 56) = v21;
    sub_1005FB4C0(v8);
  }

  else
  {
    sub_1005FB4C0(_swiftEmptyArrayStorage);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_1005FBA00()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
  *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v4 setAxis:1];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v5 setAlignment:0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v6 setDistribution:3];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v7 setSpacing:16.0];
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v0[v2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 addArrangedSubview:v11];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100784DC0;
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v13 + 32) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 leftAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v13 + 40) = v27;
  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 rightAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 rightAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v13 + 48) = v35;
  sub_100016F40(0, &qword_100945D78, NSLayoutConstraint_ptr);
  isa = sub_1007701AC().super.isa;

  [v32 activateConstraints:isa];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 layoutIfNeeded];

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1005FBEE0()
{
  if (qword_1009414D8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR___RootViewController_rootViewController), v3 = v2, swift_unknownObjectRelease(), v2))
  {
    v4 = [v3 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1005FBFCC(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:a1];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_10030B6C8;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10009AEDC;
  v14 = &unk_10089C898;
  v5 = _Block_copy(&v11);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v15 = sub_1005FD198;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000513F0;
  v14 = &unk_10089C8E8;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = v1;

  [v3 animateWithDuration:v5 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v5);
}

void sub_1005FC190(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  v4 = *(a3 + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = [v4 arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = sub_1007701BC();

  if (v6 >> 62)
  {
    v7 = sub_10077158C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v7 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 16);
      if (v9)
      {
        v10 = v9;
        [v10 setHidden:1];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1005FC328()
{
  v30 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView;
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = [v2 arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v4 = sub_1007701BC();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_10077158C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards] < v5 - 1)
  {
    v6 = *&v1[v30];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = [v6 arrangedSubviews];
    v8 = sub_1007701BC();

    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }

LABEL_27:
    v9 = sub_10077158C();
LABEL_9:

    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *&v1[v0];
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
        if (v13 >= 1)
        {
          v29 = v11 - v9 + 2;
          v14 = 5;
          while (1)
          {
            v15 = *&v1[v30];
            if (!v15)
            {
              goto LABEL_31;
            }

            v16 = v14 - 4;
            v17 = [v15 arrangedSubviews];
            v18 = sub_1007701BC();

            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = sub_10077149C();
            }

            else
            {
              if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            v0 = v29 + v14;

            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:v20];
            v21 = objc_opt_self();
            v22 = swift_allocObject();
            *(v22 + 16) = v20;
            v35 = sub_1005FD998;
            v36 = v22;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_10009AEDC;
            v34 = &unk_10089CA00;
            v23 = _Block_copy(&aBlock);
            v24 = v20;

            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v1;
            v35 = sub_1005FD9B8;
            v36 = v25;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_1000513F0;
            v34 = &unk_10089CA50;
            v26 = _Block_copy(&aBlock);
            v27 = v24;
            v28 = v1;

            [v21 animateWithDuration:v23 animations:v26 completion:0.3];
            _Block_release(v26);
            _Block_release(v23);

            if (v29 + v14 == 5)
            {
              return;
            }

            ++v14;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_24;
            }
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

char *sub_1005FC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tintView] setBackgroundColor:a3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  *(v11 + 4) = a4;
  *(v11 + 5) = a5;
  v12 = &v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction];
  v13 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction];
  v14 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction + 8];
  *v12 = sub_1005FD86C;
  v12[1] = v11;

  sub_10001CE50(a4, a5);
  sub_1000167E0(v13, v14);

  v15 = [objc_allocWithZone(UILabel) init];
  v16 = objc_opt_self();
  sub_100016F40(0, &qword_100944E30, UITraitCollection_ptr);
  v17 = sub_10077072C();
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v17];

  [v15 setFont:v18];
  [v15 setNumberOfLines:5];
  [v15 setLineBreakMode:0];
  v19 = sub_10076FF6C();
  [v15 setText:v19];

  v20 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view;
  v21 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view];
  v22 = v15;
  if (v21)
  {
    [v21 removeFromSuperview];
    v21 = *&v8[v20];
  }

  *&v8[v20] = v15;
  v23 = v15;

  sub_1005FB5C0();
  return v8;
}

void sub_1005FC978(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_1005FBFCC(v5);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1005FCA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView;
  v9 = *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
  if (!v9)
  {
    goto LABEL_14;
  }

  v15 = [v9 arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v16 = sub_1007701BC();

  if (v16 >> 62)
  {
    v17 = sub_10077158C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setHidden:0];
      }

      swift_unknownObjectRelease();
    }
  }

  v21 = sub_1005FC6EC(a1, a2, a3, a4, a5);
  [v21 setHidden:1];
  v22 = *&v6[v8];
  if (v22)
  {
    [v22 addArrangedSubview:v21];
    sub_1005FC328();
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v35 = sub_1005FD728;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10009AEDC;
    v34 = &unk_10089C960;
    v25 = _Block_copy(&v31);
    v26 = v21;

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = v6;
    *(v27 + 32) = v26;
    v35 = sub_1005FD77C;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1000513F0;
    v34 = &unk_10089C9B0;
    v28 = _Block_copy(&v31);
    v29 = v26;
    v30 = v6;

    [v23 animateWithDuration:v25 animations:v28 completion:0.3];
    _Block_release(v28);
    _Block_release(v25);

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1005FCD04(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards] = 3;
  if (a2)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1005FCE34(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards] = 3;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1005FCF70()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(type metadata accessor for StatusBarOverlayWindow()) initWithFrame:{v3, v5, v7, v9}];
    v11 = *(v0 + 16);
    *(v0 + 16) = v10;

    type metadata accessor for CardStackViewController();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = *(v0 + 24);
    *(v0 + 24) = v12;

    v14 = *(v0 + 16);
    if (v14)
    {
      [v14 setRootViewController:*(v0 + 24)];
      v15 = *(v0 + 16);
      if (v15)
      {
        v16 = *(v0 + 24);
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          [v18 loadViewIfNeeded];
          v19 = *&v18[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
          if (!v19)
          {
            __break(1u);
            return;
          }

          v20 = v19;
        }

        else
        {
          v17 = v15;
          v19 = 0;
        }

        v21 = *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8422StatusBarOverlayWindow_interactionView];
        *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8422StatusBarOverlayWindow_interactionView] = v19;
      }
    }

    v22 = *(v0 + 24);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_delegate + 8) = &off_10089C858;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1005FD148()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005FD180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1005FD1A0(uint64_t a1)
{
  v2 = sub_10076F1FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (qword_1009414D8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = *(Strong + OBJC_IVAR___RootViewController_rootViewController), v7 = v6, swift_unknownObjectRelease(), v6))
  {
    sub_10076F1DC();
    sub_10076F1EC();
    v8 = sub_10076FF6C();

    v9 = sub_10076FF6C();

    v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v13 = sub_10076FF6C();
    aBlock[4] = sub_1005FD900;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006C1A98;
    aBlock[3] = &unk_10089CB18;
    v14 = _Block_copy(aBlock);

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [v10 addAction:v16];
    v17 = sub_10076FF6C();
    v18 = [v15 actionWithTitle:v17 style:0 handler:0];

    [v10 addAction:v18];
    [v7 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v20 = sub_10076FD4C();
    sub_10000A61C(v20, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBDC();
  }

  return result;
}

void sub_1005FD634()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_10076F1CC();
  v1 = sub_10076FF6C();

  [v0 setString:v1];
}

double sub_1005FD6C8()
{
  v1 = *(sub_10076F1FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1005FD1A0(v2);
}

uint64_t sub_1005FD73C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1005FD77C()
{
  if (*(v0 + 16) >= 0.0)
  {
    return [*(v0 + 24) performSelector:"popWithCard:" withObject:*(v0 + 32) afterDelay:?];
  }

  return result;
}

uint64_t sub_1005FD7A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005FD7E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005FD81C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005FD878()
{
  v1 = sub_10076F1FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1005FD900()
{
  sub_10076F1FC();

  sub_1005FD634();
}

double sub_1005FDB74(__n128 a1)
{
  v2 = v1;
  v3 = sub_100761D4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004CCA80();
  sub_10076C7FC();
  sub_1007646CC();
  if (swift_dynamicCastClass())
  {
    v7 = sub_1007646BC();
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8)
    {
      do
      {
        sub_100760C4C();
        sub_10076F5CC();
        v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32GridTodayBrickCollectionViewCell_grid];
        v21[2] = v27;
        v22 = v9;
        sub_1007646AC();
        v10 = (*(v4 + 88))(v6, v3);
        if (v10 != enum case for ArtworkGridType.small(_:))
        {
          if (v10 == enum case for ArtworkGridType.large(_:))
          {
            v11 = 1;
            goto LABEL_12;
          }

          if (v10 == enum case for ArtworkGridType.extraLarge(_:))
          {
            v11 = 2;
            goto LABEL_12;
          }

          if (v10 == enum case for ArtworkGridType.mixed(_:))
          {
            v11 = 3;
            goto LABEL_12;
          }

LABEL_27:
          v18 = *(v4 + 8);
          v4 += 8;
          v18(v6, v3);
        }

        v11 = 0;
LABEL_12:
        v21[1] = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType;
        v12 = v22;
        v22[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType] = v11;
        sub_10070ED18();
        [v12 setNeedsLayout];
        v13 = sub_1007646BC();
        if (v13 >> 62)
        {
          v2 = sub_10077158C();
        }

        else
        {
          v2 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v22[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v2;
        sub_10070EEE8();
        v14 = sub_1007646BC();
        v15 = v14;
        if (v14 >> 62)
        {
          v3 = sub_10077158C();
          if (!v3)
          {
LABEL_35:

            return result;
          }
        }

        else
        {
          v3 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v3)
          {
            goto LABEL_35;
          }
        }

        v6 = 0;
        v23 = v15 & 0xFFFFFFFFFFFFFF8;
        v24 = v15 & 0xC000000000000001;
        v21[0] = v3;
        while (v24)
        {
          sub_10077149C();
          v16 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (sub_10076BB9C())
          {
            v2 = v22;
            sub_10076BFCC();
            v26 = 0;
            memset(v25, 0, sizeof(v25));
            v4 = swift_allocObject();
            *(v4 + 16) = v2;
            *(v4 + 24) = v6;
            v17 = v2;
            sub_100760B7C();

            v3 = v21[0];

            sub_10002CBB4(v25);
          }

          else
          {
          }

          ++v6;
          if (v16 == v3)
          {
            goto LABEL_35;
          }
        }

        if (v6 < *(v23 + 16))
        {

          v16 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        v19 = sub_10077158C();
      }

      while (v19);
    }
  }

  return result;
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_100960768;
  if (!qword_100960768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005FE078()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1005FE174(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D39C();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v82 = &v74 - v16;
  v88 = a5;
  [a5 pageMarginInsets];
  v99._object = 0x80000001007E1440;
  v99._countAndFlagsBits = 0xD000000000000010;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v17 = sub_1007622EC(v99, v100);
  v19 = sub_1003B5290(v17, v18);
  v77 = v9;
  v78 = v8;
  v76 = v11;
  v83 = v13;
  if (v19 > 2)
  {
    if (v19 - 3 < 2)
    {
      if (qword_1009402A0 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10099F488;
      goto LABEL_21;
    }

    if (v19 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10099F4E0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10099F380;
    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (qword_100940290 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10099F3D8;
  }

  else
  {
    if (qword_100940298 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10099F430;
  }

LABEL_21:
  v21 = v20[4];
  *&v97[16] = v20[3];
  *&v97[32] = v21;
  v98 = *(v20 + 10);
  v22 = v20[2];
  v96 = v20[1];
  *v97 = v22;
  v95 = *v20;
  v23 = *&v97[40];
  v24 = v98;
  v86 = *&v97[24];
  v87 = *&v97[8];
  v26 = *(&v96 + 1);
  v25 = v22;
  v28 = *(&v95 + 1);
  v27 = v96;
  v29 = v95;
  sub_100375BC0(&v95, v92);
  v92[0] = __PAIR128__(v28, v29);
  v92[1] = __PAIR128__(v26, v27);
  *&v93[0] = v25;
  *(v93 + 8) = v87;
  *(&v93[1] + 8) = v86;
  *(&v93[2] + 1) = v23;
  v94 = v24;
  v98 = v24;
  v95 = __PAIR128__(v28, v29);
  v96 = __PAIR128__(v26, v27);
  *v97 = v93[0];
  *&v97[16] = v93[1];
  *&v97[32] = v93[2];
  v30 = v88;
  [v88 pageMarginInsets];
  v31 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v85 = sub_1003B52DC(&v95);

  *&v86 = a1;
  sub_10076B53C();
  v33 = v32;
  v34 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v84 = sub_10076D3DC();
  v35 = sub_10000A61C(v84, qword_10099F538);
  v36 = [v30 traitCollection];
  v81 = v35;
  v37 = sub_100770B3C();

  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v39 = qword_10093F680;
  v40 = NSParagraphStyleAttributeName;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:-1];
  v42 = sub_100016F40(0, &qword_10094D748, NSParagraphStyle_ptr);
  *(inited + 40) = v41;
  *(inited + 64) = v42;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v34;
  *(inited + 80) = v37;
  v43 = NSFontAttributeName;
  v80 = v37;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_1005FF348(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
  v79 = v33;
  isa = sub_10076FE3C().super.isa;

  v47 = [v44 initWithString:v45 attributes:isa];

  *&v87 = v47;
  if (v85)
  {
    v48 = v85;
    sub_1000FC5F4(_swiftEmptyArrayStorage);
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = sub_10076FF6C();
    v51 = sub_10076FE3C().super.isa;

    v52 = [v49 initWithString:v50 attributes:v51];

    [v87 appendAttributedString:v52];
    v53 = [objc_allocWithZone(NSTextAttachment) init];
    [v53 setImage:v48];
    [(UIImage *)v48 size];
    [v53 setBounds:{0.0, -v23, v54, v55}];
    v56 = [objc_opt_self() attributedStringWithAttachment:v53];
    [v87 appendAttributedString:v56];

    sub_100375C20(v92);
  }

  else
  {

    sub_100375C20(v92);
  }

  v57 = v84;
  v58 = *(v84 - 8);
  v59 = v82;
  (*(v58 + 16))(v82, v81, v84);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = sub_10076C04C();
  v90 = v60;
  v61 = sub_1005FF348(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v91 = v61;
  v62 = sub_10000DB7C(v89);
  v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v64 = *(*(v60 - 8) + 104);
  v64(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
  sub_10076C90C();
  sub_10000CD74(v89);
  v65 = v88;
  sub_10076990C();
  sub_1000276DC(v59);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v66 = sub_10076D9AC();
  sub_10000A61C(v66, qword_10099F568);
  sub_10076D42C();
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v66, qword_10099F580);
  sub_10076D3FC();
  v82 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v82 setMaximumNumberOfLines:0];
  sub_10076B54C();
  if (v67)
  {
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v84, qword_10099F550);
    v90 = v60;
    v91 = v61;
    v68 = sub_10000DB7C(v89);
    v64(v68, v63, v60);
    sub_10076C90C();
    sub_10000CD74(v89);
    v69 = v88;
    sub_10076991C();

    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v66, qword_10099F598);
    sub_10076D42C();
    v65 = v69;
    v70 = v83;
    v71 = &off_100911000;
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v66, qword_10099F5B0);
    sub_10076D3FC();
  }

  else
  {
    v70 = v83;
    v71 = &off_100911000;
  }

  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    if ((sub_10076B52C() & 1) == 0)
    {
      [v65 v71[255]];
      [v65 v71[255]];
    }

    sub_10076D36C();
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v66, qword_10099F5C8);
    v72 = v75;
    sub_10076D17C();
    sub_10076D40C();

    (*(v77 + 8))(v72, v78);
    (*(v74 + 8))(v70, v76);
  }

  else
  {
  }

  return a2;
}

id sub_1005FEF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_10076D39C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView];
  v16 = sub_10076B53C();
  sub_1003B2F6C(v16, v17);
  v18 = sub_10076B54C();
  sub_1003B36E0(v18, v19);
  v15[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] = sub_10076B52C() & 1;
  sub_1003B3AD0();
  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    (*(v12 + 16))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1004E9C90(v10, &v15[v20]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:0];
    [v15 setNeedsLayout];
    v21 = [v6 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    Width = CGRectGetWidth(v40);
    sub_10076D36C();
    v32 = v31;

    (*(v12 + 8))(v14, v11);
    v33 = &v6[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v33 = Width;
    *(v33 + 1) = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v34 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1004E9C90(v10, &v15[v34]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:1];
    [v15 setNeedsLayout];
    v35 = &v6[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v35 = 0;
    *(v35 + 1) = 0;
  }

  [a5 pageMarginInsets];
  v37 = v36;
  [a5 pageMarginInsets];
  return [v15 setLayoutMargins:{0.0, v37, 0.0}];
}

uint64_t sub_1005FF348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005FF390(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = a4;
  v11 = a3;
  v13 = sub_10076D39C();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076B75C();
  v8 = *(v7 + 16);
  v15 = v7 + 32;
  v12 = (v4 + 8);
  v16 = v7;

  v9 = 0;
  while (1)
  {
    if (v9 == v8)
    {
      v24 = 0;
      v9 = v8;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_10000A570(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100012498(v20, v19);
    sub_10000A570(v19, v17);
    sub_10000A5D4(&qword_1009575A0, &unk_100784980);
    sub_10076B56C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    sub_10000CD74(v19);
    if (v18)
    {
      if (sub_10076B55C())
      {
        sub_10076BEFC();
        sub_10076BEFC();
        sub_10076D3AC();
        if ((sub_10076B52C() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        sub_10076D36C();
        sub_10076BFCC();
        sub_100760B9C();

        (*v12)(v6, v13);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_1005FF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10075DB7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23URLActivityItemProvider_shareSheetData] = a1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23URLActivityItemProvider_artworkLoader] = a2;
  v12 = qword_1009412C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_100960890;

  sub_100740404(a3, v13);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23URLActivityItemProvider_excludedActivityTypes] = v14;
  sub_1007619DC();
  sub_10075DB1C(v15);
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = type metadata accessor for URLActivityItemProvider();
  v21.receiver = v4;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, "initWithPlaceholderItem:", v17);

  return v19;
}

void sub_1005FFA80(uint64_t *a1@<X8>)
{
  v3 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_10075DB7C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 activityType];
  if (!v11)
  {
    a1[3] = v6;
    sub_10000DB7C(a1);
    sub_1007619DC();
    return;
  }

  v12 = v11;
  sub_10000A5D4(&unk_1009609A0, qword_1007AFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = UIActivityTypeAirDrop;
  v14 = UIActivityTypeAirDrop;
  sub_100761A0C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_10000CFBC(v5, &unk_1009435D0, &qword_100785850);
  }

  else
  {
    v18[0] = *(v7 + 32);
    v15 = (v18[0])(v10, v5, v6);
    v19 = v12;
    __chkstk_darwin(v15);
    v18[-2] = &v19;
    v16 = sub_1001A3F60(sub_1001A5C84, &v18[-4], inited);

    if ((v16 & 1) == 0)
    {
      a1[3] = v6;
      v17 = sub_10000DB7C(a1);
      (v18[0])(v17, v10, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v10, v6);
  }

  a1[3] = v6;
  sub_10000DB7C(a1);
  sub_1007619DC();
LABEL_9:
}

id sub_1005FFDA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1005FFF40()
{
  v1 = sub_10076BF6C();
  v120 = *(v1 - 1);
  v121 = v1;
  __chkstk_darwin(v1);
  v119 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076B96C();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v115 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100952D60, &qword_10079C098);
  __chkstk_darwin(v5 - 8);
  v118 = &v112 - v6;
  v123 = sub_1007619EC();
  v7 = *(v123 - 1);
  __chkstk_darwin(v123);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v10 - 8);
  v12 = &v112 - v11;
  v13 = sub_10075DB7C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v114 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v112 - v17;
  v124 = [objc_allocWithZone(LPLinkMetadata) init];
  v122 = v0;
  sub_100761A0C();
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1007619DC();
    v20 = v19(v12, 1, v13);
    v22 = v13;
    v23 = v14;
    if (v20 != 1)
    {
      sub_10000CFBC(v12, &unk_1009435D0, &qword_100785850);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v22 = v13;
    v23 = v14;
  }

  sub_10075DB1C(v21);
  v25 = v24;
  v28 = *(v23 + 8);
  v26 = (v23 + 8);
  v27 = v28;
  v28(v18, v22);
  v29 = v124;
  [v124 setURL:v25];

  sub_1007619FC();
  v30 = v123;
  v31 = (*(v7 + 88))(v9, v123);
  if (v31 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v7 + 96))(v9, v30);
    if (sub_10076835C())
    {
      v32 = sub_10076BE1C();
      if (v32)
      {
        v33 = v32;
        v34 = _sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v32);
        v35 = v118;
        if (v34)
        {
          v36 = v34;
          v37 = [objc_allocWithZone(LPImage) initWithPlatformImage:v34];

          v33 = v36;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        v35 = v118;
      }

      sub_10076BEAC();
      v81 = sub_10076BEDC();
      (*(*(v81 - 8) + 56))(v35, 0, 1, v81);
      sub_10076BFAC();
      sub_10000CFBC(v35, &qword_100952D60, &qword_10079C098);
      v82 = objc_allocWithZone(sub_100764ABC());
      v83 = sub_100764AAC();
      v84 = [objc_allocWithZone(LPImage) initWithItemProvider:v83 properties:0 placeholderImage:v37];
      [v29 setImage:v84];
    }

    sub_10076834C();
    v85 = sub_10076FF6C();

    [v29 setTitle:v85];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_10076836C();
    if (v87)
    {
LABEL_51:
      v88 = sub_10076FF6C();

LABEL_59:
      [v86 setSubtitle:v88];

      [v29 setSpecialization:v86];

      return v29;
    }

LABEL_58:
    v88 = 0;
    goto LABEL_59;
  }

  if (v31 != enum case for ShareSheetData.Metadata.product(_:))
  {
    if (v31 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v7 + 8))(v9, v30);
      return v29;
    }

    (*(v7 + 96))(v9, v30);
    if (sub_10075E15C())
    {
      v41 = sub_10076BE1C();
      if (v41)
      {
        v42 = v41;
        v43 = _sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v41);
        if (v43)
        {
          v44 = v43;
          v45 = [objc_allocWithZone(LPImage) initWithPlatformImage:v43];

          v42 = v44;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      sub_10076BFBC();
      v89 = objc_allocWithZone(sub_100764ABC());
      v90 = sub_100764AAC();
      v91 = [objc_allocWithZone(LPImage) initWithItemProvider:v90 properties:0 placeholderImage:v45];
      [v29 setImage:v91];
    }

    sub_10075E14C();
    v92 = sub_10076FF6C();

    [v29 setTitle:v92];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_10075E16C();
    if (v93)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  (*(v7 + 96))(v9, v30);
  v38 = [objc_allocWithZone(LPiTunesMediaSoftwareMetadata) init];
  sub_1007683BC();
  if (v39)
  {
    v40 = sub_10076FF6C();
  }

  else
  {
    v40 = 0;
  }

  v47 = v116;
  v46 = v117;
  [v38 setStoreFrontIdentifier:v40];

  v48 = v38;
  v49 = v115;
  sub_1007683EC();
  sub_10076B92C();
  (*(v47 + 8))(v49, v46);
  v50 = sub_10076FF6C();

  [v48 setStoreIdentifier:v50];

  sub_1007683DC();
  v51 = sub_10076FF6C();

  [v48 setName:v51];

  sub_10076840C();
  if (v52)
  {
    v53 = sub_10076FF6C();
  }

  else
  {
    v53 = 0;
  }

  [v48 setSubtitle:v53];

  sub_10076841C();
  v112 = v27;
  if (v54)
  {
    v55 = sub_10076FF6C();
  }

  else
  {
    v55 = 0;
  }

  [v48 setGenre:{v55, v112}];

  sub_1007683CC();
  v56 = sub_10076BE1C();

  v57 = &_s11AppStoreKit5ShelfC11ContentTypeO13miniTodayCardyA2EmFWC_ptr;
  v118 = v26;
  v113 = v22;
  v123 = v48;
  if (v56)
  {
    v58 = _sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v56);
    if (v58)
    {
      v59 = [objc_allocWithZone(LPImageProperties) init];
      sub_1007683CC();
      v60 = v119;
      sub_10076BF7C();

      v61 = sub_10076BF5C();
      v62 = v60;
      v57 = &_s11AppStoreKit5ShelfC11ContentTypeO13miniTodayCardyA2EmFWC_ptr;
      (v120[1].super.isa)(v62, v121);
      [v59 setType:v61];
      v63 = [objc_allocWithZone(LPImage) initWithPlatformImage:v58 properties:v59];

      v58 = v63;
      v56 = v59;
    }
  }

  else
  {
    v58 = 0;
  }

  sub_1007683CC();
  sub_10076BFCC();

  v64 = sub_100764ABC();
  v65 = objc_allocWithZone(v64);
  v66 = sub_100764AAC();
  v67 = [objc_allocWithZone(v57[453]) init];
  sub_1007683CC();
  v68 = v119;
  sub_10076BF7C();

  v69 = sub_10076BF5C();
  (v120[1].super.isa)(v68, v121);
  [v67 setType:v69];
  v70 = objc_allocWithZone(LPImage);
  v121 = v67;
  v122 = v66;
  v71 = [v70 initWithItemProvider:v66 properties:v67 placeholderImage:v58];
  v72 = v123;
  [v123 setIcon:v71];

  result = sub_1007683AC();
  if (!result)
  {
    isa = 0;
    v29 = v124;
    goto LABEL_66;
  }

  v74 = result & 0xFFFFFFFFFFFFFF8;
  v29 = v124;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_61:

    isa = 0;
    goto LABEL_66;
  }

  v94 = result;
  v95 = sub_10077158C();
  result = v94;
  if (!v95)
  {
    goto LABEL_61;
  }

LABEL_35:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*(v74 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v120 = v58;

  v75 = sub_1007601DC();

  if (!(v75 >> 62))
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_40;
    }

LABEL_64:

LABEL_65:
    sub_100601198();
    isa = sub_1007701AC().super.isa;

    v58 = v120;
LABEL_66:
    [v72 setScreenshots:isa];

    [v72 setIsMessagesOnlyApp:sub_10076837C() & 1];
    if (sub_10076839C())
    {

      sub_10076BFCC();
      v96 = objc_allocWithZone(v64);
      v97 = sub_100764AAC();
      v98 = v58;
      v99 = [objc_allocWithZone(LPImage) initWithItemProvider:v97 properties:0 placeholderImage:0];
      [v72 setMessagesAppIcon:v99];

      v58 = v98;
    }

    result = sub_1007683FC();
    if (!result)
    {
      goto LABEL_77;
    }

    v100 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v109 = result;
      v110 = sub_10077158C();
      result = v109;
      v101 = v113;
      if (v110)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v101 = v113;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_71:
        if ((result & 0xC000000000000001) != 0)
        {
          v102 = v58;
          sub_10077149C();
          goto LABEL_74;
        }

        if (*(v100 + 16))
        {
          v102 = v58;

LABEL_74:

          v103 = v114;
          sub_10076B85C();
          v104 = objc_allocWithZone(LPVideo);
          sub_10075DB1C(v105);
          v107 = v106;
          v108 = [v104 initWithStreamingURL:v106 hasAudio:0];

          v112(v103, v101);
          [v72 setPreviewVideo:v108];

          v58 = v102;
LABEL_77:
          v111 = v72;
          [v29 setSpecialization:v111];

          return v29;
        }

        goto LABEL_81;
      }
    }

    goto LABEL_77;
  }

  v76 = sub_10077158C();
  if (!v76)
  {
    goto LABEL_64;
  }

LABEL_40:
  v125 = _swiftEmptyArrayStorage;
  result = sub_1007714EC();
  if ((v76 & 0x8000000000000000) == 0)
  {
    v77 = 0;
    do
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      ++v77;

      sub_10076BFCC();
      v78 = objc_allocWithZone(v64);
      v79 = sub_100764AAC();
      [objc_allocWithZone(LPImage) initWithItemProvider:v79 properties:0 placeholderImage:0];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v76 != v77);

    v29 = v124;
    v72 = v123;
    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_100600FDC(__n128 a1)
{
  v1 = sub_1007619EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007619FC();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v2 + 96))(v4, v1);
    v6 = sub_10076834C();
  }

  else if (v5 == enum case for ShareSheetData.Metadata.product(_:))
  {
    (*(v2 + 96))(v4, v1);
    v6 = sub_1007683DC();
  }

  else
  {
    if (v5 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v2 + 8))(v4, v1);
      return 0;
    }

    (*(v2 + 96))(v4, v1);
    v6 = sub_10075E14C();
  }

  v7 = v6;

  return v7;
}

unint64_t sub_100601198()
{
  result = qword_100960998;
  if (!qword_100960998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100960998);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell(uint64_t a1)
{
  result = qword_1009609D8;
  if (!qword_1009609D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10060131C()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(sub_10076656C());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

double sub_100601424(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_1007637FC();
  v13 = v12;
  v14 = sub_10076381C();
  v15 = sub_10076380C();
  swift_getObjectType();
  v16.n128_f64[0] = a2;
  v17 = sub_1003E7634(v11, v13, v14, v15, a8, v16, a3);

  return v17;
}

id sub_100601578(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel];
  sub_1007637FC();
  v4 = sub_10076FF6C();

  [v3 setText:v4];

  sub_10076381C();
  v5 = sub_1007637EC();
  v6 = sub_10076082C();
  sub_100107BF4(v6, sub_1000368B8);
  v8 = v7;

  v9 = sub_10076081C();
  sub_10050C274(v9, v5, v8);

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
  v11 = sub_1007637DC();
  [v10 setTintColor:v11];

  *&v2[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = sub_10076380C();

  return [v2 setNeedsLayout];
}

double sub_100601710(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon);
  if (v2)
  {

    if (sub_10076BDDC())
    {
      v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView);
      if (sub_10076BE0C())
      {
        v4 = sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        v4 = sub_1005A6008(v2, 0);
      }

      else
      {
        v4 = 0;
      }

      [v3 setImage:v4];
    }

    else
    {
      v5 = qword_1009403D8;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_10076044C();
      if (v6)
      {
        v7 = v6;
        [v6 size];
      }

      sub_10076BFBC();
      sub_10007E008();
      sub_100601928(&qword_100952B10, sub_10007E008, &protocol conformance descriptor for UIImageView);
      sub_100760B8C();
    }
  }

  return v8;
}

uint64_t sub_100601928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006019D4(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SearchResultsContainerViewController();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_100760BDC();
}

void sub_100601A54(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for SearchResultsContainerViewController();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_100760BDC();
}

void sub_100601ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075DD7C();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10076A13C();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v7 - 8);
  v65 = &v40 - v8;
  v9 = sub_100760A6C();
  __chkstk_darwin(v9 - 8);
  v64 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100954460, &unk_100790FF0);
  __chkstk_darwin(v11 - 8);
  v63 = &v40 - v12;
  v13 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v14 = swift_allocObject();
  sub_10076CCCC();
  *(v14 + 16) = sub_10076CCBC();
  v69 = v13;
  v70 = sub_100602B1C(&unk_100958CF0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter, &unk_10078D9A0);
  v67 = v14;
  sub_10076A14C();
  swift_allocObject();
  v15 = sub_10076A12C();
  v16 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_objectGraph);
  v56 = v2;
  sub_100763EEC();
  swift_allocObject();
  swift_retain_n();
  v17 = sub_100763ECC();
  sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
  sub_10076F1BC();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100784500;
  v67 = v15;
  v59 = v15;

  sub_10076F19C();
  v67 = v17;
  v58 = v17;

  sub_10076F19C();
  sub_100765FDC();
  sub_10076F64C();
  sub_10076FC1C();
  v55 = v66;
  v54 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_facetsPresenter);
  sub_10000A5D4(&unk_100960AB8, qword_1007AF6E8);

  sub_10076F63C();
  v53 = v67;
  v52 = v68;
  v51 = sub_1007609FC();
  v50 = v18;
  sub_100760A1C();
  sub_100760A2C();
  v49 = sub_100760A3C();
  v48 = v19;
  sub_1007609BC();
  v47 = sub_1007609EC();
  v46 = sub_1007609CC();
  v45 = sub_1007609DC();
  v44 = v20;
  sub_10076099C();
  sub_10076098C();
  sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  sub_10076FC1C();
  sub_10076A39C();
  sub_10076F63C();
  sub_10076A60C();
  swift_allocObject();
  v21 = sub_10076A5BC();
  v22 = sub_100602B1C(&qword_100960AC8, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  swift_retain_n();
  v23 = sub_1006C7080(v16, v21, v22, v57, 0x6552686372616573, 0xED000073746C7573);

  v24 = objc_allocWithZone(type metadata accessor for SearchResultsDiffablePageViewController(0));

  v25 = a1;
  v26 = v56;
  v27 = sub_1000D0918(v21, v25, v23);
  v28 = v26 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController;
  v29 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
  if (v29)
  {
    v30 = v42;
    v31 = v41;
    v32 = v43;
    (*(v42 + 104))(v41, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v43);
    v33 = v29;
    sub_10076A0FC();
    (*(v30 + 8))(v31, v32);
  }

  sub_100766B2C();
  v34 = v60;
  sub_10075DD6C();
  sub_10075DD4C();
  (*(v61 + 8))(v34, v62);
  sub_100766B1C();
  sub_10076F69C();
  v35 = &off_100888030;
  if (!v27)
  {
    v35 = 0;
  }

  v36 = *v28;
  *v28 = v27;
  *(v28 + 8) = v35;
  v37 = v27;

  if (v27)
  {
    v38 = v26 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate;
    swift_unknownObjectWeakLoadStrong();
    v39 = *(v38 + 8);

    *&v37[qword_10099CDD0 + 8] = v39;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

BOOL sub_100602340(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) == 2;
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) != 2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = sub_10076A5FC();
  if (v8)
  {
    if (v7 == a1 && v8 == a2)
    {

      return 1;
    }

    else
    {
      v10 = sub_10077167C();

      return v10 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_100602424(void *a1)
{
  v2 = v1;
  v4 = sub_10076A13C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController];
  if (!a1)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v10)
  {
    v11 = v10 == a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (!v10)
    {
      v12 = 0;
LABEL_10:
      *v9 = 0;
      v9[1] = 0;

      goto LABEL_11;
    }

LABEL_9:
    (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v4, v6);
    v13 = v10;
    sub_10076A0FC();
    (*(v5 + 8))(v8, v4);

    v12 = *v9;
    goto LABEL_10;
  }

LABEL_11:
  v14 = OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController];
  if (v15)
  {
    v16 = v15;
    [v16 willMoveToParentViewController:0];
    v17 = [v16 view];
    if (!v17)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v18 = v17;
    [v17 removeFromSuperview];

    [v16 removeFromParentViewController];
  }

  if (!a1)
  {
LABEL_20:
    v35 = *&v2[v14];
    *&v2[v14] = a1;
    v36 = a1;

    return;
  }

  v19 = a1;
  [v2 addChildViewController:v19];
  v20 = [v19 view];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v2 view];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v21 setFrame:{v25, v27, v29, v31}];
  v32 = [v2 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v19 view];

  if (v34)
  {
    [v33 addSubview:v34];

    [v19 didMoveToParentViewController:v2];
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

id sub_100602758(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchResultsContainerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100602880()
{
  result = qword_100960AA8;
  if (!qword_100960AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960AA8);
  }

  return result;
}

id sub_1006028D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController] = 0;
  v7 = &v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController];
  *v7 = 0;
  v7[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_objectGraph] = a3;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_artworkLoader] = v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_facetsPresenter] = a1;
  sub_100769A9C();

  sub_10076F63C();
  sub_10076599C();
  swift_allocObject();
  v8 = sub_10076594C();
  v9 = sub_100602B1C(&qword_100960AB0, &type metadata accessor for SearchHintsPresenter, &protocol conformance descriptor for BasePresenter);

  v10 = sub_1006C7080(a3, v8, v9, _swiftEmptyArrayStorage, 0x6948686372616573, 0xEB0000000073746ELL);
  v11 = objc_allocWithZone(type metadata accessor for SearchHintsViewController());
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchHintsViewController] = sub_100602E54(v8, v10);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SearchResultsContainerViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);

  return v12;
}

uint64_t sub_100602B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100602B64(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection;
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection);
  if (v6 != a1)
  {
    v7 = v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(a1, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    *(v2 + v5) = a1;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      v20 = a1;
      goto LABEL_15;
    }

    v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchHintsViewController);
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_13:
    v20 = v10;
    v11 = v10;
    goto LABEL_15;
  }

  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController);
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_14:
  v20 = 0;
LABEL_15:
  v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v12)
  {
    v13 = v20;
    if (v20)
    {
      sub_100602E08();
      v14 = v12;
      v15 = v20;
      v16 = sub_100770EEC();

      v13 = v20;
      if (v16)
      {
LABEL_18:
        if (v6 == a1)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v13 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

  sub_100602424(v13);
LABEL_22:
  v17 = v3 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    v19 = swift_getObjectType();
    (*(v18 + 16))(*(v3 + v5), v6, v19, v18);
    swift_unknownObjectRelease();
  }

LABEL_24:
}

void sub_100602D48()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController) = 0;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100602E08()
{
  result = qword_100960AD0;
  if (!qword_100960AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100960AD0);
  }

  return result;
}

id sub_100602E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_flowLayout;
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v7 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v7 setMinimumInteritemSpacing:0.0];
  [v7 setMinimumLineSpacing:0.0];
  [v7 setScrollDirection:0];
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_presenter) = a1;
  sub_10076615C();

  sub_10076F63C();
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_impressionsCalculator) = v12;
  v8 = *(v3 + v6);

  v9 = sub_10007689C(v8, a2);

  sub_100603E60(&qword_100960B40, &unk_1007AF79C);
  v10 = v9;
  sub_10076598C();

  return v10;
}

id sub_100602FF4()
{
  v1 = v0;
  v2 = sub_10076F9AC();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHintsViewController();
  v52.receiver = v0;
  v52.super_class = v5;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_presenter];
  v7 = type metadata accessor for SearchHintsCollectionViewDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC20ProductPageExtension35SearchHintsCollectionViewDataSource_presenter] = v6;
  v51.receiver = v8;
  v51.super_class = v7;

  v9 = objc_msgSendSuper2(&v51, "init");
  v10 = OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource] = v9;

  v12 = [v1 snapshotPageTraitEnvironment];
  v13 = type metadata accessor for SearchHintsCollectionViewDelegate();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = 0;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_presenter] = v6;

  v15 = [v12 snapshotPageTraitEnvironment];
  *&v14[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v15;
  v50.receiver = v14;
  v50.super_class = v13;
  v16 = objc_msgSendSuper2(&v50, "init");
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate] = v16;
  v19 = v16;

  *&v19[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_impressionsCalculator];

  v20 = *&v1[v17];
  v21 = v20;
  sub_1000743FC(v20);
  v22 = *&v1[v10];
  v23 = v22;
  sub_100074410(v22);
  v24 = [v1 collectionView];
  if (v24)
  {
    v25 = v24;
    [v24 setKeyboardDismissMode:1];
  }

  v26 = [v1 collectionView];
  if (v26)
  {
    v27 = v26;
    sub_1000325F0();
    v28 = sub_100770D2C();
    [v27 setBackgroundColor:v28];
  }

  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setAlwaysBounceVertical:1];
  }

  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setAllowsSelection:1];
  }

  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v35 = [v1 collectionView];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for SearchHintCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1007708FC();
    v38 = sub_10076FF6C();

    [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }

  result = [v1 collectionView];
  if (result)
  {
    v40 = result;
    memset(v49, 0, sizeof(v49));
    sub_10076F96C();
    sub_10000CFBC(v49, &unk_1009434C0, &qword_100783F60);
    sub_100770B9C();

    result = (*(v47 + 8))(v4, v48);
  }

  v41 = *&v1[v17];
  if (v41)
  {
    v42 = v41;
    v43 = [v1 snapshotPageTraitEnvironment];
    v44 = [v1 collectionView];
    v45 = [v43 snapshotPageTraitEnvironment];
    *&v42[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = [v44 collectionViewLayout];
      [v46 invalidateLayout];
    }

    [v44 reloadData];

    swift_unknownObjectRelease();
    return sub_100760C9C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100603540(void *a1, double a2, double a3)
{
  v4 = v3;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = [v4 collectionView];
    v16 = [v14 snapshotPageTraitEnvironment];
    *&v9[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = [v15 collectionViewLayout];
      [v17 invalidateLayout];
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v21[4] = sub_100603ED8;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1006F5994;
    v21[3] = &unk_10089CD68;
    v19 = _Block_copy(v21);
    v20 = v15;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006037EC(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 snapshotPageTraitEnvironment];
    v6 = [v1 collectionView];
    v7 = [v5 snapshotPageTraitEnvironment];
    *&v4[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v7;
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = [v6 collectionViewLayout];
      [v8 invalidateLayout];
    }

    [v6 reloadData];

    swift_unknownObjectRelease();
    v9 = [v1 collectionView];
    [v9 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006039A0(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_impressionsCalculator])
  {
    sub_10076611C();
  }

  sub_10000A5D4(&qword_1009552D8, &qword_10079FCC8);
  sub_10076F63C();
  if (v3)
  {
    swift_getObjectType();
    sub_10076F88C();
    swift_unknownObjectRelease();
  }

  v2 = [v1 collectionView];
  [v2 reloadData];
}

double sub_100603A64()
{

  return result;
}

id sub_100603AD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_100603BA8()
{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_100603BF0()
{
  sub_10000A5D4(&qword_1009552D8, &qword_10079FCC8);
  sub_10076F63C();
  return v1;
}

double sub_100603C4C@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_presenter);
  a1[3] = sub_10076599C();
  a1[4] = &protocol witness table for SearchHintsPresenter;
  *a1 = v3;

  return result;
}

uint64_t sub_100603CA8(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100603E60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHintsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100603EA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100603EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void static AppEventCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();

  sub_1006076C4(a1, a2, a3, a4, ObjectType, a5, a6);
}

uint64_t AppEventCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:notifyMePadding:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  sub_100012498(a1, a8);
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v16 = v15[5];
  v17 = sub_10076D39C();
  (*(*(v17 - 8) + 32))(a8 + v16, a2, v17);
  sub_100012498(a3, a8 + v15[6]);
  sub_100012498(a4, a8 + v15[7]);
  sub_100012498(a5, a8 + v15[8]);
  sub_100012498(a6, a8 + v15[9]);
  v18 = a8 + v15[10];

  return sub_100012498(a7, v18);
}

uint64_t AppEventCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v150 = a2;
  v147 = COERCE_DOUBLE(sub_100763ADC());
  v146 = *(*&v147 - 8);
  __chkstk_darwin(*&v147);
  v144 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_10000CF78((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_10076D23C();
  sub_10000CF78((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_10076D23C();
  sub_10000CF78((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_10076D23C();
  v19 = v6[3];
  sub_10000CF78(v7, v7[3]);
  sub_1000FF02C(v19);
  sub_10076D40C();
  v151 = v20;
  v152 = *(v15 + 8);
  (*&v152)(v17, v14);
  v21 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v163.origin.x = 0.0;
  v163.origin.y = 0.0;
  v163.size.width = a5;
  v163.size.height = a6;
  CGRectGetWidth(v163);
  sub_10076D36C();
  Height = round(v22);
  v164.origin.x = 0.0;
  v164.origin.y = 0.0;
  v164.size.width = a5;
  v156 = a6;
  v164.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v164)) < 1.0)
  {
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = a5;
    v165.size.height = v156;
    Height = CGRectGetHeight(v165);
  }

  v166.origin.x = 0.0;
  v166.origin.y = 0.0;
  v166.size.width = a5;
  v166.size.height = v156;
  Width = CGRectGetWidth(v166);
  sub_10000CF78((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_100770A4C();
  sub_10076D23C();
  v167.origin.x = 0.0;
  v167.origin.y = 0.0;
  v167.size.width = Width;
  v167.size.height = Height;
  v25 = CGRectGetWidth(v167);
  sub_10000CF78((v6 + v18[9]), *(v6 + v18[9] + 24));
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v6 + v18[10], v161, &unk_10094DA00, &qword_100783FA0);
  if (v162)
  {
    sub_10000CF78(v161, v162);
    sub_10076D23C();
    sub_10000CD74(v161);
  }

  else
  {
    sub_10000CFBC(v161, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v6 + v18[11], v161, &unk_10094DA00, &qword_100783FA0);
  if (v162)
  {
    sub_10000CF78(v161, v162);
    sub_10076D23C();
    sub_10000CD74(v161);
  }

  else
  {
    sub_10000CFBC(v161, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v6 + v18[17], &v159, &unk_10094DA00, &qword_100783FA0);
  v153 = a4;
  v154 = a3;
  if (!v160)
  {
    sub_10000CFBC(&v159, &unk_10094DA00, &qword_100783FA0);
LABEL_17:
    LODWORD(v146) = 1;
    MinX = 0.0;
    v142 = 0.0;
    v141 = 0.0;
    v143 = 0.0;
    goto LABEL_18;
  }

  sub_100012498(&v159, v161);
  sub_10000CF78(v161, v162);
  if (sub_10076D24C())
  {
LABEL_16:
    sub_10000CD74(v161);
    goto LABEL_17;
  }

  sub_100016E2C(v6 + v18[18], &v157, &unk_10094DA00, &qword_100783FA0);
  if (!v158)
  {
    sub_10000CFBC(&v157, &unk_10094DA00, &qword_100783FA0);
    goto LABEL_16;
  }

  sub_100012498(&v157, &v159);
  sub_10000CF78(&v159, v160);
  if (sub_10076D24C())
  {
    sub_10000CD74(&v159);
    goto LABEL_16;
  }

  MaxY = v25;
  v114 = sub_100102A30(0.0, 0.0, a5, v156, 0.0, v151);
  v116 = v115;
  v143 = v117;
  v139 = v118;
  MinX = COERCE_DOUBLE(swift_getObjectType());
  v119 = [a1 traitCollection];
  v120 = [v119 preferredContentSizeCategory];
  v142 = *&UIContentSizeCategoryExtraExtraExtraLarge;
  v121 = sub_10077087C();

  v149 = Height;
  v140 = Width;
  v138 = v21;
  if (v121)
  {
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v122 = qword_10099D298;
  }

  else
  {
    if (qword_10093F840 != -1)
    {
      swift_once();
    }

    v122 = qword_10099D280;
  }

  v123 = v147;
  v124 = sub_10000A61C(*&v147, v122);
  v125 = v144;
  (*(*&v146 + 16))(v144, v124, COERCE_DOUBLE(*&v123));
  v126 = [a1 traitCollection];
  v127 = [v126 preferredContentSizeCategory];
  sub_10077087C();

  type metadata accessor for SmallLockupView(0);
  v128 = v143;
  v129 = v139;
  sub_100262AD0(v125, a1, v143, v139);
  v131 = ceil(v130);
  v186.origin.x = 0.0;
  v186.origin.y = 0.0;
  v186.size.width = a5;
  v132 = v156;
  v186.size.height = v156;
  MinX = CGRectGetMinX(v186);
  v187.origin.x = v114;
  v187.origin.y = v116;
  v187.size.width = v128;
  v187.size.height = v129;
  v133 = v116;
  v134 = v114;
  v135 = CGRectGetHeight(v187) - v131;
  v188.origin.x = 0.0;
  v188.origin.y = 0.0;
  v188.size.width = a5;
  v188.size.height = v132;
  v136 = CGRectGetWidth(v188);
  sub_10000CF78(v161, v162);
  v142 = v135;
  v141 = v136;
  sub_10076D23C();
  v189.origin.x = v134;
  v189.origin.y = v133;
  v189.size.width = v128;
  v189.size.height = v129;
  v137 = CGRectGetMinX(v189);
  v190.origin.x = v134;
  v190.origin.y = v133;
  v190.size.width = v128;
  v190.size.height = v129;
  CGRectGetMinY(v190);
  v191.origin.x = v134;
  v191.origin.y = v133;
  v191.size.width = v128;
  v191.size.height = v129;
  CGRectGetWidth(v191);
  sub_10000CF78(&v159, v160);
  v143 = v131;
  sub_10076D23C();
  (*(*&v146 + 8))(v125, COERCE_DOUBLE(*&v147));
  sub_10000CD74(&v159);
  sub_10000CD74(v161);
  LODWORD(v146) = 0;
  Height = v149;
  Width = v140;
  v25 = MaxY;
  a4 = v153;
  a3 = v154;
  v21 = v138;
LABEL_18:
  sub_100016E2C(v7 + v18[12], &v159, &unk_10094DA00, &qword_100783FA0);
  v155 = a5;
  if (v160)
  {
    sub_100012498(&v159, v161);
    sub_10000CF78(v161, v162);
    v26 = v156;
    sub_10076D2AC();
    v149 = Height;
    v147 = v27;
    v28 = (v7 + v21[6]);
    v29 = v28[3];
    sub_10000CF78(v28, v29);
    sub_1000FF02C(v29);
    sub_10076D40C();
    MaxY = v25;
    (*&v152)(v17, v14);
    v168.origin.x = a3;
    v168.origin.y = a4;
    v168.size.width = a5;
    v168.size.height = v26;
    CGRectGetMaxX(v168);
    v169.origin.x = a3;
    v169.origin.y = a4;
    v169.size.width = a5;
    v169.size.height = v26;
    CGRectGetMinY(v169);
    sub_10000CF78(v161, v162);
    v25 = MaxY;
    Height = v149;
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v161);
  }

  else
  {
    sub_10000CFBC(&v159, &unk_10094DA00, &qword_100783FA0);
  }

  v30 = [a1 traitCollection];
  v31 = [v30 preferredContentSizeCategory];
  v32 = sub_10077087C();

  if (v32)
  {
    v33 = sub_100102A30(0.0, 0.0, v155, v156, 0.0, v151);
    v152 = v33;
    v35 = v34;
    v151 = v34;
    v37 = v36;
    v39 = v38;
    v170.origin.x = 0.0;
    v170.origin.y = 0.0;
    v170.size.width = v25;
    v170.size.height = Height;
    MaxY = CGRectGetMaxY(v170);
    v40 = (v7 + v18[13]);
    sub_10000CF78(v40, v40[3]);
    sub_10076D2AC();
    v42 = v41;
    v44 = v43;
    v149 = v45;
    sub_10000CF78((v7 + v21[7]), *(v7 + v21[7] + 24));
    sub_10076D42C();
    v47 = v46;
    v171.origin.x = v33;
    v171.origin.y = v35;
    v171.size.width = v37;
    v171.size.height = v39;
    v48 = CGRectGetMinX(v171);
    v49 = MaxY + v47;
    sub_10000CF78(v40, v40[3]);
    sub_100770A4C();
    sub_10076D23C();
    v172.origin.x = v48;
    v172.origin.y = v49;
    v172.size.width = v42;
    v172.size.height = v44;
    v50 = CGRectGetMaxY(v172) - v149;
    v51 = (v7 + v18[14]);
    sub_10000CF78(v51, v51[3]);
    v52 = v39;
    sub_10076D2AC();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_10000CF78((v7 + v21[8]), *(v7 + v21[8] + 24));
    v147 = v58;
    sub_10076D42C();
    v60 = v59;
    v173.origin.x = v152;
    v173.origin.y = v151;
    v149 = v37;
    v173.size.width = v37;
    MaxY = v52;
    v173.size.height = v52;
    v61 = CGRectGetMinX(v173);
    sub_10000CF78(v51, v51[3]);
    sub_100770A4C();
    sub_10076D23C();
    v174.origin.x = v61;
    v174.origin.y = v50 + v60;
    v174.size.width = v54;
    v174.size.height = v56;
    v62 = CGRectGetMaxY(v174);
    sub_100016E2C(v7 + v18[15], &v159, &qword_10094BB30, qword_100796E40);
    if (v160)
    {
      sub_100012498(&v159, v161);
      sub_10000CF78(v161, v162);
      if (sub_10076D20C())
      {
        v63 = v62 - v147;
        sub_10000CF78(v161, v162);
        v64 = v149;
        v65 = MaxY;
        sub_10076D2AC();
        v67 = v66;
        v69 = v68;
        sub_10000CF78((v7 + v21[9]), *(v7 + v21[9] + 24));
        sub_10076D42C();
        v71 = v70;
        v175.origin.x = v152;
        v175.origin.y = v151;
        v175.size.width = v64;
        v175.size.height = v65;
        v72 = CGRectGetMinX(v175);
        sub_10000CF78(v161, v162);
        sub_100770A4C();
        sub_10076D23C();
        v176.origin.x = v72;
        v176.origin.y = v63 + v71;
        v176.size.width = v67;
        v176.size.height = v69;
        CGRectGetMaxY(v176);
      }

      sub_10000CD74(v161);
    }

    else
    {
      sub_10000CFBC(&v159, &qword_10094BB30, qword_100796E40);
    }

    sub_100016E2C(v7 + v18[16], &v159, &unk_10094DA00, &qword_100783FA0);
    if (v160)
    {
      sub_100012498(&v159, v161);
      sub_10000CF78(v161, v162);
      if ((sub_10076D24C() & 1) == 0 && (LOBYTE(v146) & 1) == 0)
      {
        sub_10000CF78(v161, v162);
        v107 = v149;
        v108 = MaxY;
        sub_10076D2AC();
        v110 = v109;
        v183.origin.x = MinX;
        v183.origin.y = v142;
        v183.size.width = v141;
        v183.size.height = v143;
        v147 = CGRectGetMinY(v183) - v110;
        v111 = v152;
        v184.origin.x = v152;
        v112 = v151;
        v184.origin.y = v151;
        v184.size.width = v107;
        v184.size.height = v108;
        v146 = CGRectGetMinX(v184);
        v185.origin.x = v111;
        v185.origin.y = v112;
        v185.size.width = v107;
        v185.size.height = v108;
        CGRectGetWidth(v185);
        sub_10000CF78(v161, v162);
        sub_10076D23C();
      }

      sub_10000CD74(v161);
    }

    else
    {
      sub_10000CFBC(&v159, &unk_10094DA00, &qword_100783FA0);
    }
  }

  else
  {
    v73 = sub_100102A30(0.0, 0.0, Width, Height, 0.0, v151);
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = (v7 + v21[10]);
    v81 = v80[3];
    sub_10000CF78(v80, v81);
    sub_1000FF02C(v81);
    sub_10076D40C();
    v83 = v82;
    (*&v152)(v17, v14);
    v151 = v73;
    v177.origin.x = v73;
    v149 = v75;
    v177.origin.y = v75;
    v177.size.width = v77;
    v177.size.height = v79;
    v84 = CGRectGetHeight(v177) - v83;
    sub_100016E2C(v7 + v18[15], &v159, &qword_10094BB30, qword_100796E40);
    if (v160)
    {
      sub_100012498(&v159, v161);
      sub_10000CF78(v161, v162);
      if (sub_10076D20C())
      {
        sub_10000CF78(v161, v162);
        sub_10076D2AC();
        v86 = v85;
        v88 = v87;
        v152 = *&v89;
        MaxY = v90;
        v91 = v90 + v84 - v87;
        v178.origin.x = v151;
        v178.origin.y = v149;
        v178.size.width = v77;
        v178.size.height = v79;
        v92 = CGRectGetMinX(v178);
        sub_10000CF78(v161, v162);
        sub_100770A4C();
        sub_10076D23C();
        sub_10000CF78((v7 + v21[9]), *(v7 + v21[9] + 24));
        sub_10076D42C();
        v94 = v93;
        v179.origin.x = v92;
        v179.origin.y = v91;
        v179.size.width = v86;
        v179.size.height = v88;
        v84 = CGRectGetMinY(v179) - v94;
      }

      sub_10000CD74(v161);
    }

    else
    {
      sub_10000CFBC(&v159, &qword_10094BB30, qword_100796E40);
    }

    v95 = (v7 + v18[14]);
    sub_10000CF78(v95, v95[3]);
    sub_10076D2AC();
    v97 = v96;
    v99 = v98;
    v152 = *&v100;
    v101 = v79;
    v102 = v77;
    MaxY = v103;
    v104 = v103 + v84 - v98;
    v180.origin.x = v151;
    v180.origin.y = v149;
    v180.size.width = v102;
    v180.size.height = v101;
    v105 = CGRectGetMinX(v180);
    sub_10000CF78(v95, v95[3]);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CF78((v7 + v21[8]), *(v7 + v21[8] + 24));
    sub_10076D42C();
    v181.origin.x = v105;
    v181.origin.y = v104;
    v181.size.width = v97;
    v181.size.height = v99;
    CGRectGetMinY(v181);
    v106 = (v7 + v18[13]);
    sub_10000CF78(v106, v106[3]);
    sub_10076D2AC();
    v182.origin.x = v151;
    v182.origin.y = v149;
    v182.size.width = v102;
    v182.size.height = v101;
    CGRectGetMinX(v182);
    sub_10000CF78(v106, v106[3]);
    sub_100770A4C();
    sub_10076D23C();
  }

  return sub_10076D1BC();
}

__n128 AppEventCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:videoView:gradientBlurView:notifyMeButton:kindLabel:titleLabel:subtitleLabel:separatorView:lockupContainerView:lockupView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10015B138(a1, a9);
  v22 = type metadata accessor for AppEventCardLayout(0);
  sub_100012498(a2, a9 + v22[5]);
  sub_100012498(a3, a9 + v22[6]);
  sub_100012498(a4, a9 + v22[7]);
  sub_100012498(a5, a9 + v22[8]);
  sub_100012498(a6, a9 + v22[9]);
  v23 = a9 + v22[10];
  v24 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a7 + 32);
  v25 = a9 + v22[11];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a8 + 32);
  v27 = a9 + v22[12];
  v28 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a10 + 32);
  sub_100012498(a11, a9 + v22[13]);
  sub_100012498(a12, a9 + v22[14]);
  v29 = a9 + v22[15];
  v30 = *(a13 + 16);
  *v29 = *a13;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a13 + 32);
  v31 = a9 + v22[16];
  v32 = *(a14 + 16);
  *v31 = *a14;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a14 + 32);
  v33 = a9 + v22[17];
  v34 = *(a15 + 16);
  *v33 = *a15;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a15 + 32);
  v35 = a9 + v22[18];
  result = *a16;
  v37 = *(a16 + 16);
  *v35 = *a16;
  *(v35 + 16) = v37;
  *(v35 + 32) = *(a16 + 32);
  return result;
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_10076D39C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_10076D39C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppEventCardLayout.Metrics.notifyMePadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 24);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 28);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 32);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 36);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 40);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

void AppEventCardLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  sub_1006061E0(a1, v3, ObjectType, a2, a3);
}

void sub_1006061E0(void *a1, void *a2, int *a3, double a4, double a5)
{
  v89 = a3;
  v87 = sub_10077164C();
  v91 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10076D93C();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10076D95C();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10076DE7C();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10076443C();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v68 - v15;
  v16 = sub_100763ADC();
  v79 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppEventCardLayout(0);
  sub_100016E2C(a2 + v19[18], &v94, &unk_10094DA00, &qword_100783FA0);
  v20 = v95;
  sub_10000CFBC(&v94, &unk_10094DA00, &qword_100783FA0);
  v21 = [a1 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_10077087C();

  if (v23)
  {
    v68 = v20;
    v88 = a2;
    v25 = v19[13];
    v26 = v19[14];
    v27 = v19[16];
    v71 = v19[15];
    v72 = v27;
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v69 = (v88 + v25);
    v70 = (v88 + v26);
    v28 = sub_10000A61C(v16, qword_10099D298);
    v89 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_10076D36C();
    v30 = v29;
    v31 = [a1 traitCollection];
    v32 = v79;
    (*(v79 + 16))(v18, v28, v16);
    v33 = sub_100763A4C();
    v35 = v80;
    if ((v36 & 1) == 0 && ((v33 | v34) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v37 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v37 = qword_100944CA0;
      }

      v38 = v76;
      v39 = sub_10000A61C(v76, v37);
      v40 = v75;
      v41 = v73;
      (*(v75 + 16))(v73, v39, v38);
      v42 = v74;
      (*(v40 + 32))(v74, v41, v38);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v40 + 8))(v42, v38);
    }

    sub_10076398C();
    v44 = v43;

    (*(v32 + 8))(v18, v16);
    *&v92 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v95 = &type metadata for CGFloat;
    v96 = &protocol witness table for CGFloat;
    *&v94 = v30;
    *(inited + 56) = v35;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((inited + 32));
    sub_10076DE8C();
    sub_1000F9168(inited);
    v46 = v88;
    v47 = v87;
    if (v68)
    {
      v95 = &type metadata for CGFloat;
      v96 = &protocol witness table for CGFloat;
      *&v94 = ceil(v44 + 16.0 + 16.0);
      v48 = v77;
      sub_10076DE8C();
      v49 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10049CD5C(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_10049CD5C((v50 > 1), v51 + 1, 1, v49);
      }

      v95 = v35;
      v96 = &protocol witness table for VerticalSpaceMeasurable;
      v52 = sub_10000DB7C(&v94);
      v53 = v78;
      (*(v78 + 16))(v52, v48, v35);
      v49[2] = v51 + 1;
      sub_100012498(&v94, &v49[5 * v51 + 4]);
      (*(v53 + 8))(v48, v35);
      *&v92 = v49;
    }

    (*(v84 + 104))(v82, enum case for StackMeasurable.Axis.vertical(_:), v86);
    v54 = v81;
    sub_10076D94C();
    sub_10076D92C();
    (*(v83 + 8))(v54, v85);
    v55 = v46[3];
    sub_10000CF78(v46, v55);
    v56 = v90;
    sub_1000FF02C(v55);
    sub_10076D40C();
    v57 = *(v91 + 8);
    v91 += 8;
    v57(v56, v47);
    sub_100770ACC();
    sub_10000CF78(v69, v69[3]);
    sub_10076D2AC();
    v59 = v58;
    v60 = v89;
    sub_10000CF78((v46 + v89[7]), *(v46 + v89[7] + 24));
    sub_10076D42C();
    *&v94 = v59;
    sub_10076D3FC();
    sub_10000CF78(v70, v70[3]);
    sub_10076D2AC();
    v62 = v61;
    sub_10000CF78((v46 + v60[8]), *(v46 + v60[8] + 24));
    sub_10076D42C();
    *&v94 = v62;
    sub_10076D3FC();
    sub_100016E2C(v46 + v71, &v92, &qword_10094BB30, qword_100796E40);
    if (v93)
    {
      sub_100012498(&v92, &v94);
      sub_10000CF78(&v94, v95);
      if (sub_10076D20C())
      {
        sub_10000CF78(&v94, v95);
        sub_10076D2AC();
        v64 = v63;
        sub_10000CF78((v46 + v89[9]), *(v46 + v89[9] + 24));
        sub_10076D42C();
        *&v92 = v64;
        sub_10076D3FC();
      }

      sub_10000CD74(&v94);
    }

    else
    {
      sub_10000CFBC(&v92, &qword_10094BB30, qword_100796E40);
    }

    v65 = (v46 + v89[10]);
    v66 = v65[3];
    sub_10000CF78(v65, v66);
    v67 = v90;
    sub_1000FF02C(v66);
    sub_10076D40C();
    v57(v67, v47);
    sub_100016E2C(v46 + v72, &v92, &unk_10094DA00, &qword_100783FA0);
    if (v93)
    {
      sub_100012498(&v92, &v94);
      sub_10000CF78(&v94, v95);
      if ((sub_10076D24C() & 1) == 0)
      {
        sub_10000CF78(&v94, v95);
        sub_10076D2AC();
      }

      sub_10000CD74(&v94);
    }

    else
    {
      sub_10000CFBC(&v92, &unk_10094DA00, &qword_100783FA0);
    }
  }

  else
  {
    v24.n128_f64[0] = a4;
    sub_100606F98(v24, a5, a2, v20 != 0, a1);
  }
}

double sub_100606F98(__n128 a1, double a2, uint64_t a3, int a4, void *a5)
{
  v47 = a4;
  v52 = sub_10076D93C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10076D95C();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076DE7C();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076443C();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_100763ADC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F840 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v16, qword_10099D280);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10076D36C();
  v22 = v21;
  v54 = a5;
  v23 = [a5 traitCollection];
  (*(v17 + 16))(v19, v20, v16);
  v24 = sub_100763A4C();
  if ((v26 & 1) == 0 && ((v24 | v25) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v27 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v27 = qword_100944CA0;
    }

    v28 = sub_10000A61C(v10, v27);
    v29 = v44;
    (*(v44 + 16))(v12, v28, v10);
    (*(v29 + 32))(v15, v12, v10);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v29 + 8))(v15, v10);
  }

  sub_10076398C();
  v31 = v30;

  (*(v17 + 8))(v19, v16);
  v58 = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  *&v55 = v22;
  v33 = v48;
  *(inited + 56) = v48;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((inited + 32));
  sub_10076DE8C();
  sub_1000F9168(inited);
  if (v47)
  {
    v56 = &type metadata for CGFloat;
    v57 = &protocol witness table for CGFloat;
    *&v55 = ceil(v31 + 4.0 + 4.0);
    v34 = v45;
    sub_10076DE8C();
    v35 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_10049CD5C(0, v35[2] + 1, 1, v35);
    }

    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = sub_10049CD5C((v36 > 1), v37 + 1, 1, v35);
    }

    v56 = v33;
    v57 = &protocol witness table for VerticalSpaceMeasurable;
    v38 = sub_10000DB7C(&v55);
    v39 = v46;
    (*(v46 + 16))(v38, v34, v33);
    v35[2] = v37 + 1;
    sub_100012498(&v55, &v35[5 * v37 + 4]);
    (*(v39 + 8))(v34, v33);
    v58 = v35;
  }

  (*(v50 + 104))(v49, enum case for StackMeasurable.Axis.vertical(_:), v52);
  sub_10076D94C();
  sub_10076D92C();
  v41 = v40;
  (*(v51 + 8))(v8, v53);
  return v41;
}

void sub_1006076C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  v26 = a5;
  v25 = a4;
  v32 = a3;
  v24 = a1;
  v31 = sub_10075EBAC();
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076B96C();
  v12 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _swiftEmptyArrayStorage;
  v39 = _swiftEmptyArrayStorage;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + 32;
    do
    {
      sub_10000A570(v16, v38);
      sub_100012498(v38, v36);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10075F1FC();
      if ((swift_dynamicCast() & 1) != 0 && v37)
      {
        sub_10077019C();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v14 = v39;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (v14 >> 62)
  {
LABEL_25:
    v33 = v14 & 0xFFFFFFFFFFFFFF8;
    v35 = sub_10077158C();
  }

  else
  {
    v33 = v14 & 0xFFFFFFFFFFFFFF8;
    v35 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v34 = v14 & 0xC000000000000001;
  v27 = (v12 + 8);
  ++v10;
  do
  {
    v18 = v17;
    if (v35 == v17)
    {
      break;
    }

    if (v34)
    {
      sub_10077149C();
      if (__OFADD__(v18, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        break;
      }
    }

    else
    {
      if (v17 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }
    }

    if ((sub_10075F19C() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
    sub_10076F64C();
    sub_10076FC1C();
    swift_getObjectType();
    sub_10075F1DC();
    v19 = v28;
    sub_10076BB7C();

    sub_10075EE2C();
    (*v27)(v19, v29);
    swift_getObjectType();
    sub_10075F1DC();
    sub_10076BA7C();

    v12 = v30;
    sub_10075ED2C();
    v20 = sub_10075EB5C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*v10)(v12, v31);
    v17 = v18 + 1;
  }

  while ((v20 & 1) == 0);
  v21 = v35 != v18;

  v22.n128_f64[0] = a6;
  sub_100606F98(v22, a7, v24, v21, v25);
}

uint64_t sub_100607B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100607C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppEventCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100607D24(uint64_t a1)
{
  type metadata accessor for AppEventCardLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &unk_100950F60, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_1001A3380(319, &qword_100950F80, &qword_10094CF50, &unk_100791F20);
      if (v3 <= 0x3F)
      {
        sub_100102F90(319, &qword_100953E00, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_1001A3380(319, &unk_100950F70, &unk_100953E10, &unk_100784160);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100607E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10076D39C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100607F30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10076D39C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100607FD4(uint64_t a1)
{
  result = sub_100102F90(319, &qword_10094BAA0, &protocol descriptor for AnyDimension);
  if (v2 <= 0x3F)
  {
    result = sub_10076D39C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100608078()
{
  v0 = sub_10076FD2C();
  sub_10000DB18(v0, qword_1009A25B8);
  sub_10000A61C(v0, qword_1009A25B8);
  return sub_10076FD1C();
}

uint64_t sub_1006081C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10076FD2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076FD4C();
  sub_10000DB18(v9, a2);
  sub_10000A61C(v9, a2);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v5, qword_1009A25B8);
  (*(v6 + 16))(v8, v10, v5);
  return sub_10076FD3C();
}

void sub_100608310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a1;
    v12 = v11;
    if ((a5 & 1) != 0 && ([v11 size], v14 = v13, objc_msgSend(v12, "size"), v15 < v14) && (v16 = objc_msgSend(v12, "CGImage")) != 0)
    {
      v17 = v16;
      [v12 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:v18];
    }

    else
    {
      v19 = v12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      v22 = *(v21 + 16);
      if ((v22 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *(v21 + 16);
        }

        else
        {
          v23 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v19;
        v25 = sub_10077153C();
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        *(v21 + 16) = sub_1006085BC(v23, v25 + 1);
      }

      else
      {
        v26 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v21 + 16);
      sub_10024B3D0(v19, a7, isUniquelyReferenced_nonNull_native, v28);
      *(v21 + 16) = v33;
      swift_endAccess();
    }

    swift_beginAccess();
    v29 = swift_weakLoadStrong();
    if (v29)
    {
      v30 = v29;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v30 + 32);
        ObjectType = swift_getObjectType();
        (*(v31 + 8))(v30, v19, a8, ObjectType, v31);

        swift_unknownObjectRelease();
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

uint64_t sub_100608558()
{

  sub_10000CC8C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1006085BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000A5D4(&qword_100948B40, &unk_10078B520);
    v2 = sub_1007715CC();
    v20 = v2;
    sub_10077152C();
    v3 = sub_10077155C();
    if (v3)
    {
      v4 = v3;
      sub_10076C02C();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1006087F8();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_100249C2C(v13 + 1, 1);
        }

        v2 = v20;
        sub_100608844(v12);
        result = sub_10076FEAC();
        v7 = v20 + 64;
        v8 = -1 << *(v20 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v10 == v15;
            if (v10 == v15)
            {
              v10 = 0;
            }

            v14 |= v16;
            v17 = *(v7 + 8 * v10);
          }

          while (v17 == -1);
          v11 = __clz(__rbit64(~v17)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v20 + 48) + 8 * v11) = v19;
        *(*(v20 + 56) + 8 * v11) = v18;
        ++*(v20 + 16);
        v5 = sub_10077155C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_1006087F8()
{
  result = qword_10094F610;
  if (!qword_10094F610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094F610);
  }

  return result;
}

unint64_t sub_100608844(__n128 a1)
{
  result = qword_10094E848;
  if (!qword_10094E848)
  {
    sub_10076C02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E848);
  }

  return result;
}

void *sub_10060889C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1007714EC();
    v6 = a1 + 48;
    do
    {

      if (a2)
      {
        sub_10076BD4C();
      }

      sub_10076BFCC();

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v6 += 24;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100608998(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v121 = a2;
  v103 = a4;
  v7 = sub_100761DDC();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10076997C();
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075D78C();
  v111 = *(v11 - 8);
  v112 = v11;
  __chkstk_darwin(v11);
  v110 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100765D2C();
  v101 = *(v13 - 8);
  v102 = v13;
  __chkstk_darwin(v13);
  v100 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v120 = &v96 - v16;
  v17 = sub_100761DAC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v96 - v23;
  v122 = [a3 traitCollection];
  sub_100761DBC();
  (*(v18 + 104))(v20, enum case for BreakoutDetails.BackgroundStyle.material(_:), v17);
  sub_100609F38(&qword_100960DB0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  sub_10077018C();
  sub_10077018C();
  if (v143 != v140)
  {
    sub_10077167C();
  }

  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v24, v17);

  v26 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100637E90(v121, v120);
  v117 = sub_10005312C();
  v118 = v26;
  v27 = sub_100770B3C();
  v28 = sub_100761DFC();
  if (!v29)
  {
    v34 = v10;
    v30 = a1;
    goto LABEL_7;
  }

  v30 = a1;
  *&v143 = v28;
  *(&v143 + 1) = v29;
  v31 = v110;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v33 = v32;
  (*(v111 + 8))(v31, v112);
  if (v33)
  {
    v34 = v10;

LABEL_7:
    v35 = v119;
    goto LABEL_12;
  }

  [v27 lineHeight];
  v37 = v36;

  v38 = ceil(v37 * 1.3);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v34 = v10;
  v35 = v119;
LABEL_12:
  sub_100761DFC();
  v39 = sub_10076C04C();
  v144 = v39;
  v109 = sub_100609F38(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v145 = v109;
  v40 = sub_10000DB7C(&v143);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v113 = v42;
  v114 = v41 + 104;
  (v42)(v40);
  v43 = v27;
  sub_10076C90C();
  sub_10000CD74(&v143);
  v44 = v34;
  v107 = v43;
  sub_10076996C();
  sub_10076994C();
  v115 = *(v115 + 8);
  (v115)(v34, v35);
  v45 = sub_100770B3C();
  v46 = sub_100761D6C();
  v108 = v44;
  if (!v47)
  {
    v51 = v45;
    goto LABEL_16;
  }

  *&v140 = v46;
  *(&v140 + 1) = v47;
  v48 = v110;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v50 = v49;
  (*(v111 + 8))(v48, v112);
  if (v50)
  {
    v51 = v45;

LABEL_16:
    v52 = v116;
    goto LABEL_21;
  }

  [v107 lineHeight];
  v54 = v53;

  v55 = ceil(v54 * 1.3);
  v52 = v116;
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v51 = v45;
LABEL_21:
  sub_100761D6C();
  v56 = v109;
  v141 = v39;
  v142 = v109;
  v57 = sub_10000DB7C(&v140);
  v113(v57, v52, v39);
  v58 = v51;
  v98 = v39;
  v59 = v56;
  v60 = v58;
  sub_10076C90C();
  sub_10000CD74(&v140);
  v61 = v108;
  v97 = v60;
  sub_10076996C();
  sub_10076994C();
  v62 = v119;
  (v115)(v61, v119);
  v63 = v104;
  v99 = v30;
  sub_100761DEC();
  v65 = v105;
  v64 = v106;
  v66 = (*(v105 + 88))(v63, v106);
  if (v66 == enum case for BreakoutDetails.Badge.text(_:))
  {
    (*(v65 + 96))(v63, v64);
    sub_100770B3C();
    v67 = v98;
    *(&v138 + 1) = v98;
    v139 = v59;
    v68 = sub_10000DB7C(&v137);
    v69 = v113;
    v113(v68, v116, v67);
    sub_10076C90C();
    sub_10000CD74(&v137);
    sub_10076996C();
    sub_10076994C();
    (v115)(v61, v62);
    v70 = *(&v135 + 1);
    v71 = v136;
    v72 = sub_10000CF78(&v134, *(&v135 + 1));
    *(&v138 + 1) = v70;
    v139 = *(v71 + 8);
    v73 = sub_10000DB7C(&v137);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    sub_10000CD74(&v134);
    v74 = v69;
    if (!sub_100761D5C())
    {
      goto LABEL_38;
    }
  }

  else
  {
    v67 = v98;
    if (v66 != enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v61 = v108;
      v74 = v113;
      if (v66 == enum case for BreakoutDetails.Badge.none(_:))
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        if (sub_100761D5C())
        {
          goto LABEL_29;
        }
      }

      else
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        (*(v65 + 8))(v63, v64);
        if (sub_100761D5C())
        {
          goto LABEL_29;
        }
      }

LABEL_38:
      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      goto LABEL_39;
    }

    v75 = sub_10076DDDC();
    swift_allocObject();
    v76 = sub_10076DDBC();
    *(&v138 + 1) = v75;
    v139 = &protocol witness table for LayoutViewPlaceholder;
    *&v137 = v76;
    v61 = v108;
    v74 = v113;
    if (!sub_100761D5C())
    {
      goto LABEL_38;
    }
  }

LABEL_29:
  v77 = sub_100770B3C();
  v78 = sub_10076B8EC();
  if (!v79)
  {
    goto LABEL_36;
  }

  *&v134 = v78;
  *(&v134 + 1) = v79;
  v80 = v110;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v82 = v81;
  (*(v111 + 8))(v80, v112);
  if (v82)
  {

    goto LABEL_36;
  }

  [v77 lineHeight];
  v84 = v83;

  v85 = ceil(v84 * 1.3);
  if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v85 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
    return;
  }

LABEL_36:
  sub_10076B8EC();
  *(&v135 + 1) = v67;
  v136 = v109;
  v86 = sub_10000DB7C(&v134);
  v74(v86, v116, v67);
  v87 = v77;
  sub_10076C90C();
  sub_10000CD74(&v134);
  sub_10076996C();
  sub_10076994C();

  (v115)(v61, v119);
LABEL_39:
  v88 = v101;
  v89 = v102;
  (*(v101 + 16))(v100, v120, v102);
  sub_10000A570(&v143, &v133);
  sub_10000A570(&v140, &v132);
  v131 = 0;
  v130 = 0u;
  *&v129[40] = 0u;
  sub_100016E2C(&v137, v129, &unk_10094DA00, &qword_100783FA0);
  sub_100016E2C(&v134, v123, &qword_10094BB30, qword_100796E40);
  v90 = v124;
  if (v124)
  {
    v91 = v125;
    v92 = sub_10000CF78(v123, v124);
    *(&v127 + 1) = v90;
    v128 = *(v91 + 8);
    v93 = sub_10000DB7C(&v126);
    (*(*(v90 - 8) + 16))(v93, v92, v90);
    sub_10000CD74(v123);
  }

  else
  {
    sub_10000CFBC(v123, &qword_10094BB30, qword_100796E40);
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
  }

  v94 = sub_100765D4C();
  v95 = v103;
  v103[3] = v94;
  v95[4] = sub_100609F38(&qword_100960DB8, &type metadata accessor for BreakoutDetailsLayout, &protocol conformance descriptor for BreakoutDetailsLayout);
  v95[5] = sub_100609F38(&qword_100960DC0, &type metadata accessor for BreakoutDetailsLayout, &protocol conformance descriptor for BreakoutDetailsLayout);
  sub_10000DB7C(v95);
  sub_100765D3C();

  sub_10000CFBC(&v134, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(&v140);
  sub_10000CD74(&v143);
  (*(v88 + 8))(v120, v89);
  sub_10000CFBC(&v137, &unk_10094DA00, &qword_100783FA0);
}

id sub_1006098B0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a4;
  v44 = a3;
  v45 = sub_100761DAC();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100761D8C();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100761DDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  sub_100761DEC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v5[v18], v11);
  swift_beginAccess();
  (*(v12 + 24))(&v5[v18], v17, v11);
  swift_endAccess();
  sub_10063AA94(v14, v19);
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  v21 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  sub_100761DFC();
  if (v22)
  {
    v23 = sub_10076FF6C();
  }

  else
  {
    v23 = 0;
  }

  [v21 setText:v23];

  v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  sub_100761D6C();
  if (v25)
  {
    v26 = sub_10076FF6C();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  v27 = sub_100761D5C();
  if (v27)
  {
    v28 = v27;
    sub_10076B8EC();
    v29 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
    if (v30)
    {
      v31 = sub_10076FF6C();
    }

    else
    {
      v31 = 0;
    }

    [v29 setTitle:v31 forState:0];

    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    *(v35 + 24) = v28;
    v36 = &v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v37 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v38 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler + 8];
    *v36 = sub_100609F30;
    v36[1] = v35;

    v33 = v37;
    v34 = v38;
  }

  else
  {
    [*&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton] setTitle:0 forState:0];
    v32 = &v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v33 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v34 = *&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler + 8];
    *v32 = 0;
    *(v32 + 1) = 0;
  }

  sub_1000167E0(v33, v34);
  sub_100761D9C();
  sub_100761DBC();
  sub_100637A5C(v44, v10, v7);
  (*(v43 + 8))(v7, v45);
  (*(v8 + 8))(v10, v42);
  return [v5 setNeedsLayout];
}

unint64_t sub_100609D48()
{
  result = qword_100960DA8;
  if (!qword_100960DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960DA8);
  }

  return result;
}

uint64_t sub_100609DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_100609EF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100609F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100609F80(void *a1)
{
  if (*(v1 + 24))
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    [a1 _verticalVelocity];
    v5 = v4;
    [a1 _systemContentInset];
    v7 = v6;
    [a1 contentInset];
    v9 = v7 + v8;
    [a1 contentOffset];
    *(v1 + 48) = v9 + v10 >= v2;
    *(v1 + 56) = v5;
  }

  v11 = sub_100767B7C();
  result = sub_100767B7C();
  if (v11 != result)
  {
    v13 = *(v1 + 32);
    if (v13)
    {
      return v13(*(v1 + 48), 1, *(v1 + 56));
    }
  }

  return result;
}

uint64_t sub_10060A080()
{
  sub_1000167E0(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

double sub_10060A0E0()
{
  v0 = sub_1007604DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100960EB0, qword_1007AFAE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0.3;
  v9 = 0x3FA999999999999ALL;
  (*(v1 + 104))(v3, enum case for TimingCurve.linear(_:), v0);
  sub_1007607FC();
  sub_1007607EC();
  (*(v5 + 8))(v7, v4);
  return v10;
}

unint64_t sub_10060A2D0()
{
  result = qword_10094F030;
  if (!qword_10094F030)
  {
    sub_10075FD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F030);
  }

  return result;
}

uint64_t sub_10060A328()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

void sub_10060A410(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v32 = a3;
  v4 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v4 - 8);
  v35 = &v31 - v5;
  v6 = sub_10075DD7C();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076B96C();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100768B1C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v41);
  sub_10000CF78(a1, a1[3]);
  v15 = v6;
  v16 = v33;
  sub_100762E0C();
  sub_10060C770(&qword_100960EF8, &type metadata accessor for TodayCardTriggerIdentifier, &protocol conformance descriptor for TodayCardTriggerIdentifier);
  *&v38 = sub_10077163C();
  *(&v38 + 1) = v17;
  (*(v12 + 8))(v14, v11);
  v43._countAndFlagsBits = 8250;
  v43._object = 0xE200000000000000;
  sub_1007700CC(v43);
  sub_10000CF78(a1, a1[3]);
  sub_100762E2C();
  v18 = sub_10076B92C();
  v20 = v19;
  (*(v8 + 8))(v10, v34);
  v21 = v35;
  v44._countAndFlagsBits = v18;
  v44._object = v20;
  sub_1007700CC(v44);
  v22 = v36;

  v39 = v38;
  sub_100016E2C(v22, v21, &unk_10094FA00, &unk_100786640);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    sub_10000CFBC(v21, &unk_10094FA00, &unk_100786640);
    sub_10000CFBC(v22, &unk_10094FA00, &unk_100786640);
    v23 = 0xED00002E74657920;
    v24 = 0x6E65657320746F4ELL;
LABEL_8:
    *&v40 = v24;
    *(&v40 + 1) = v23;
    v28 = v41[1];
    v29 = v32;
    *(v32 + 32) = v41[0];
    *(v29 + 48) = v28;
    *(v29 + 64) = v42;
    v30 = v40;
    *v29 = v39;
    *(v29 + 16) = v30;
    sub_10000CD74(a1);
    return;
  }

  v25 = v31;
  (*(v16 + 32))(v31, v21, v15);
  sub_10075DD3C();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = -v26;
  if (!__OFSUB__(0, v26))
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_10077145C(20);

    *&v38 = 0x206E656553;
    *(&v38 + 1) = 0xE500000000000000;
    v37 = v27;
    v45._countAndFlagsBits = sub_10077163C();
    sub_1007700CC(v45);

    v46._countAndFlagsBits = 0x73646E6F63657320;
    v46._object = 0xED00002E6F676120;
    sub_1007700CC(v46);
    v23 = *(&v38 + 1);
    v24 = v38;
    sub_10000CFBC(v22, &unk_10094FA00, &unk_100786640);
    (*(v16 + 8))(v25, v15);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10060A93C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = sub_100768B1C();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v9 - 8);
  v11 = &v12 - v10;
  sub_10000A570(a1, v15);
  sub_10000CF78(a2, a2[3]);
  sub_10000CF78(a1, a1[3]);
  sub_100762E0C();
  sub_10075E4CC();
  (*(v6 + 8))(v8, v13);
  sub_10060A410(v15, v11, v14);
}

id sub_10060AADC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_triggerController] = a1;

  *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections] = sub_10060C0C4(v4);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
  v6 = [v5 navigationItem];
  v7 = sub_10076FF6C();
  [v6 setTitle:v7];

  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v5 setRefreshControl:v9];

  v10 = [v5 refreshControl];
  if (v10)
  {
    [v10 addTarget:v5 action:"refreshContent" forControlEvents:4096];
  }

  return v5;
}

void sub_10060ACD8(__n128 a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections] = sub_10060C0C4(*&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_triggerController]);

  v2 = [v1 tableView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];

    v4 = [v1 refreshControl];
    [v4 endRefreshing];
  }

  else
  {
    __break(1u);
  }
}

void sub_10060ADDC(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = sub_10076FF6C();

  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_10000A570(a1, v17);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_100012498(v17, v8 + 24);
  *(v8 + 64) = v4;
  v9 = v2;
  v10 = sub_10076FF6C();
  aBlock[4] = sub_10060CB24;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006C1A98;
  aBlock[3] = &unk_10089CFA8;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = sub_10076FF6C();
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v15];
  [v9 presentViewController:v7 animated:1 completion:0];
}

void sub_10060B04C(void *a1, char a2, __n128 a3)
{
  v6 = sub_100768B1C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_triggerController))
  {
    sub_100768ADC();
    sub_100012498(v13, v14);
    if (a2)
    {
      sub_10000CF78(v14, v15);
      sub_10000A5D4(&qword_100960F18, qword_1007AFCC8);
      v10 = swift_allocObject();
      v10[1] = xmmword_100783DD0;
      sub_10000CF78(a1, a1[3]);
      sub_100762E0C();
      v11._rawValue = v10;
      sub_10075E4EC(v11);
    }

    else
    {
      sub_10000CF78(a1, a1[3]);
      sub_100762E1C();
      sub_10000CF78(v14, v15);
      sub_10000CF78(a1, a1[3]);
      sub_100762E0C();
      sub_10075E4DC();
      (*(v7 + 8))(v9, v6);
    }

    v12 = [objc_opt_self() sharedCoordinator];
    [v12 simulateStorefrontChange];

    sub_10000CD74(v14);
  }
}

uint64_t sub_10060B9D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10060B9E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10060BA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10060BA94()
{
  result = qword_100960EF0;
  if (!qword_100960EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960EF0);
  }

  return result;
}

void sub_10060BAE8(uint64_t a1)
{
  v65 = sub_1007652DC();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100768B1C();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000A5D4(&qword_100960F00, &qword_1007AFCB8);
  __chkstk_darwin(v61);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_1004BBAC4(0, v9, 0);
    v10 = v74;
    v11 = a1 + 64;
    v12 = sub_1007712DC();
    v13 = 0;
    v14 = *(a1 + 36);
    v56 = v2 + 16;
    v57 = v4 + 16;
    v54 = v2 + 32;
    v55 = v4 + 32;
    v58 = v2;
    v53 = v2 + 8;
    v52 = v4 + 8;
    v47 = a1 + 72;
    v73 = v4;
    v48 = v9;
    v50 = a1 + 64;
    v49 = v14;
    v51 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v67 = 1 << v12;
      v68 = v12 >> 6;
      v66 = v13;
      v15 = v61;
      v16 = *(v61 + 48);
      v17 = *(a1 + 48) + *(v4 + 72) * v12;
      v70 = *(v4 + 16);
      v18 = v59;
      v19 = v63;
      v70(v59, v17, v63);
      v20 = v58;
      v21 = *(a1 + 56) + *(v58 + 72) * v12;
      v69 = *(v58 + 16);
      v71 = v12;
      v22 = v65;
      v69(&v18[v16], v21, v65);
      v23 = *(v73 + 32);
      v72 = v10;
      v24 = v60;
      v23(v60, v18, v19);
      v25 = *(v15 + 48);
      (*(v20 + 32))(&v24[v25], &v18[v16], v22);
      v26 = v62;
      v70(v62, v24, v19);
      v27 = v64;
      v69(v64, &v24[v25], v22);
      v70 = sub_100768B0C();
      v29 = v28;
      sub_10060C770(&qword_100960F08, &type metadata accessor for TriggerBuilderError, &protocol conformance descriptor for TriggerBuilderError);
      v30 = sub_1007716EC();
      v32 = v31;
      v33 = *(v20 + 8);
      v4 = v73;
      v33(v27, v22);
      (*(v4 + 8))(v26, v19);
      v34 = v24;
      v10 = v72;
      sub_10000CFBC(v34, &qword_100960F00, &qword_1007AFCB8);
      v74 = v10;
      v36 = v10[2];
      v35 = v10[3];
      if (v36 >= v35 >> 1)
      {
        sub_1004BBAC4((v35 > 1), v36 + 1, 1);
        v10 = v74;
      }

      v10[2] = v36 + 1;
      v37 = &v10[9 * v36];
      v38 = v71;
      v37[4] = v70;
      v37[5] = v29;
      v37[6] = v30;
      v37[7] = v32;
      *(v37 + 4) = 0u;
      *(v37 + 5) = 0u;
      v37[12] = 0;
      a1 = v51;
      v12 = 1 << *(v51 + 32);
      if (v38 >= v12)
      {
        goto LABEL_24;
      }

      v11 = v50;
      v39 = *(v50 + 8 * v68);
      if ((v39 & v67) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v14) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_26;
      }

      v40 = v39 & (-2 << (v38 & 0x3F));
      if (v40)
      {
        v12 = __clz(__rbit64(v40)) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v68 << 6;
        v42 = v68 + 1;
        v43 = (v47 + 8 * v68);
        while (v42 < (v12 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_100032734(v38, v49, 0);
            v12 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        sub_100032734(v38, v49, 0);
      }

LABEL_4:
      v13 = v66 + 1;
      if (v66 + 1 == v48)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void *sub_10060C0C4(uint64_t a1)
{
  if (!a1)
  {
    sub_10000A5D4(&qword_1009591A0, &qword_1007A5E00);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_100783DD0;
    v10[4] = 0xD000000000000015;
    v10[5] = 0x80000001007F21D0;
    v10[6] = _swiftEmptyArrayStorage;
    *(v10 + 56) = 2;
    return v10;
  }

  sub_100768AEC();
  v1 = v45;
  v2 = v46;
  v3 = v47;
  v4 = v48;
  v5 = v49;
  isUniquelyReferenced_nonNull_native = sub_100768ADC();
  v7 = *(v44 + 16);
  v42 = v44;
  v43 = v45;
  if (v7)
  {
    sub_10060BAE8(v44);
    v9 = v8;
    isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = isUniquelyReferenced_nonNull_native;
    v12 = *(isUniquelyReferenced_nonNull_native + 16);
    v11 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v12 >= v11 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v11 > 1), v12 + 1, 1, isUniquelyReferenced_nonNull_native);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v12 + 1;
    v13 = &v10[4 * v12];
    v13[4] = 0xD000000000000013;
    v13[5] = 0x80000001007F21F0;
    v13[6] = v9;
    *(v13 + 56) = 2;
    v1 = v43;
    if (*(v43 + 16))
    {
LABEL_6:
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v41 = &v44;
      sub_100409D08(sub_10060C750, v40, v1);
      v15 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v10[2] + 1, 1, v10);
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10049DCC0((v16 > 1), v17 + 1, 1, v10);
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v10[2] = v17 + 1;
      v18 = &v10[4 * v17];
      v18[4] = 0xD00000000000001DLL;
      v18[5] = 0x80000001007F2210;
      v18[6] = v15;
      *(v18 + 56) = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
    if (*(v45 + 16))
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 16))
  {
LABEL_15:
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_100409D08(sub_10060CB6C, v40, v2);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v22 = v10[2];
    v21 = v10[3];
    if (v22 >= v21 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v21 > 1), v22 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v22 + 1;
    v23 = &v10[4 * v22];
    v23[4] = 0xD00000000000001BLL;
    v23[5] = 0x80000001007F2230;
    v23[6] = v20;
    *(v23 + 56) = 1;
  }

LABEL_20:
  if (*(v3 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_100409D08(sub_10060CB6C, v40, v3);
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v27 = v10[2];
    v26 = v10[3];
    if (v27 >= v26 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v26 > 1), v27 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v27 + 1;
    v28 = &v10[4 * v27];
    v28[4] = 0xD00000000000001CLL;
    v28[5] = 0x80000001007F2250;
    v28[6] = v25;
    *(v28 + 56) = 0;
  }

  if (*(v4 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_100409D08(sub_10060CB6C, v40, v4);
    v30 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v32 = v10[2];
    v31 = v10[3];
    if (v32 >= v31 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v31 > 1), v32 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v32 + 1;
    v33 = &v10[4 * v32];
    v33[4] = 0xD000000000000020;
    v33[5] = 0x80000001007F2270;
    v33[6] = v30;
    *(v33 + 56) = 0;
  }

  if (*(v5 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_100409D08(sub_10060CB6C, v40, v5);
    v35 = v34;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10049DCC0(0, v10[2] + 1, 1, v10);
    }

    v37 = v10[2];
    v36 = v10[3];
    if (v37 >= v36 >> 1)
    {
      v10 = sub_10049DCC0((v36 > 1), v37 + 1, 1, v10);
    }

    v10[2] = v37 + 1;
    v38 = &v10[4 * v37];
    v38[4] = 0xD000000000000017;
    v38[5] = 0x80000001007F22A0;
    v38[6] = v35;
    *(v38 + 56) = 0;
    sub_10000CD74(&v44);
  }

  else
  {
    sub_10000CD74(&v44);
  }

  return v10;
}

uint64_t sub_10060C770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10060C7B8(void *a1)
{
  result = sub_10075E0AC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 + 32 * result;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);

  result = sub_10075E07C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v6 + 16))
  {
    sub_10060CA7C(v6 + 72 * result + 32, &v15);
    v8 = [a1 textLabel];
    if (v8)
    {
      v9 = v8;
      v10 = sub_10076FF6C();
      [v9 setText:v10];
    }

    v11 = [a1 detailTextLabel];
    if (v11)
    {
      v12 = v11;
      v13 = sub_10076FF6C();
      [v12 setText:v13];

      if (v7 == 2)
      {
LABEL_9:
        v14 = 0;
LABEL_12:
        [a1 setAccessoryType:v14];
        return sub_10060CAB4(&v15);
      }
    }

    else
    {

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }

    v14 = 1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10060C954(uint64_t a1)
{
  result = sub_10075E0AC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v3 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3 + 32 * result;
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);

  result = sub_10075E07C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v5 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_10060CA7C(v5 + 72 * result + 32, v10);

  if (v6 != 2)
  {
    sub_100016E2C(&v11, &v7, &qword_100960F10, &qword_1007AFCC0);
    if (!v8)
    {
      sub_10060CAB4(v10);
      return sub_10000CFBC(&v7, &qword_100960F10, &qword_1007AFCC0);
    }

    sub_100012498(&v7, v9);
    sub_10060ADDC(v9, v6 & 1);
    sub_10000CD74(v9);
  }

  return sub_10060CAB4(v10);
}

uint64_t sub_10060CAE4()
{
  sub_10000CD74((v0 + 24));

  return _swift_deallocObject(v0, 65, 7);
}

double sub_10060CB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10060CB84()
{
  sub_10000A5D4(&unk_1009609A0, qword_1007AFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007844F0;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  sub_100179CCC(inited);
  v8 = v7;
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_100960F20 = v8;
  return result;
}

id sub_10060CEEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10060CF94()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_100960F60);
  sub_10000A61C(v0, qword_100960F60);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_10060D030()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2678);
  sub_10000A61C(v4, qword_1009A2678);
  if (qword_100940F38 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1BA0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10060D210(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940F40 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1BB8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10060D3EC()
{
  sub_1000325F0();
  result = sub_100770D9C();
  qword_1009A26C0 = result;
  return result;
}

void sub_10060D420(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076771C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  if (qword_100940F38 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v16 = sub_10000A61C(v15, qword_1009A1BA0);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_1007626BC();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v46[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel] = sub_1007626AC();
  if (qword_100940F40 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v15, qword_1009A1BB8);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_1007626AC();
  v26 = v46;
  *&v46[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel] = v25;
  v27 = objc_opt_self();
  v28 = sub_10076FF6C();
  v29 = [v27 kitImageNamed:v28];

  if (v29)
  {
    v30 = [v29 imageWithRenderingMode:2];

    v31 = [v30 imageFlippedForRightToLeftLayoutDirection];
    v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];

    *&v26[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator] = v32;
    v47.receiver = v26;
    v47.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
    [v33 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
    if (qword_100941338 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_1009A26C0];
    [v33 _setCornerRadius:20.0];
    [v33 addSubview:*&v33[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel]];
    v34 = OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel;
    v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel];
    sub_1000325F0();
    v36 = v35;
    v37 = sub_100770D1C();
    [v36 setTextColor:v37];

    [v33 addSubview:*&v33[v34]];
    v38 = OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator;
    v39 = *&v33[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator];
    v40 = sub_100770D4C();
    [v39 setTintColor:v40];

    [v33 addSubview:*&v33[v38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_10060DA10(double a1)
{
  v2 = v1;
  v3 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel] text];
  if (v3)
  {
    v4 = v3;
    sub_10076FF9C();
  }

  v5 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel] text];
  if (v5)
  {
    v6 = v5;
    sub_10076FF9C();
  }

  [v2 layoutMargins];
  v7 = objc_opt_self();
  v8 = sub_10076FF6C();
  v9 = [v7 kitImageNamed:v8];

  if (v9)
  {
    v10 = [v9 imageWithRenderingMode:2];

    v11 = [v10 imageFlippedForRightToLeftLayoutDirection];
    [v11 size];

    if (qword_100940F38 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D3DC();
    sub_10000A61C(v12, qword_1009A1BA0);
    v13 = sub_10076C04C();
    v21 = v13;
    v14 = sub_10004C7BC();
    v22 = v14;
    v15 = sub_10000DB7C(v20);
    v16 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v17 = *(*(v13 - 8) + 104);
    v17(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v13);
    sub_10076C90C();
    sub_10000CD74(v20);
    sub_10076991C();
    if (qword_100940F40 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v12, qword_1009A1BB8);
    v21 = v13;
    v22 = v14;
    v18 = sub_10000DB7C(v20);
    v17(v18, v16, v13);
    sub_10076C90C();
    sub_10000CD74(v20);
    sub_10076991C();
    if (qword_100941320 != -1)
    {
      swift_once();
    }

    v19 = sub_10076D9AC();
    sub_10000A61C(v19, qword_1009A2678);
    sub_10076D42C();
    if (qword_100941328 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v19, qword_1009A2690);
    sub_10076D42C();
    if (qword_100941330 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v19, qword_1009A26A8);
    sub_10076D3FC();
  }

  else
  {
    __break(1u);
  }
}

id sub_10060DF80()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator];
  v8 = [v7 isHidden];
  sub_10076422C();
  if (v8)
  {
    Width = CGRectGetWidth(*&v9);
  }

  else
  {
    [v7 sizeThatFits:{v11, v12}];
    v15 = v14;
    v17 = v16;
    sub_10076422C();
    v18 = CGRectGetMaxX(v35) - v15;
    sub_10076422C();
    v19 = CGRectGetMidY(v36) + v17 * -0.5;
    sub_10076422C();
    sub_100770A4C();
    [v7 setFrame:?];
    sub_10076422C();
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v15;
    v38.size.height = v17;
    Width = v20 - (CGRectGetWidth(v38) + 24.0);
  }

  if (qword_100941320 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D9AC();
  sub_10000A61C(v21, qword_1009A2678);
  sub_10076D17C();
  sub_10076D40C();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel];
  sub_10076422C();
  [v25 sizeThatFits:{Width, CGRectGetHeight(v39)}];
  v27 = v26;
  sub_10076422C();
  MinX = CGRectGetMinX(v40);
  sub_10076422C();
  MinY = CGRectGetMinY(v41);
  [v25 firstBaselineFromTop];
  v31 = MinY + v23 - v30;
  sub_10076422C();
  sub_100770A4C();
  [v25 setFrame:?];
  if (qword_100941328 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v21, qword_1009A2690);
  sub_10076D17C();
  sub_10076D40C();
  v24(v6, v2);
  v32 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel];
  sub_10076422C();
  [v32 sizeThatFits:{Width, CGRectGetHeight(v42)}];
  sub_10076422C();
  CGRectGetMinX(v43);
  v44.origin.x = MinX;
  v44.origin.y = v31;
  v44.size.width = Width;
  v44.size.height = v27;
  CGRectGetMaxY(v44);
  [v32 firstBaselineFromTop];
  sub_10076422C();
  sub_100770A4C();
  return [v32 setFrame:?];
}

id sub_10060E3F0(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100941318 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_100960F60);
    v7 = v1;
    sub_10075FDCC();

    [*&v7[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel] setTextAlignment:v8];
  }

  return result;
}

void sub_10060E650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v8 = objc_opt_self();
  v9 = sub_10076FF6C();
  v10 = [v8 kitImageNamed:v9];

  if (v10)
  {
    v11 = [v10 imageWithRenderingMode:2];

    v12 = [v11 imageFlippedForRightToLeftLayoutDirection];
    [v12 size];

    if (qword_100940F38 != -1)
    {
      swift_once();
    }

    v13 = sub_10076D3DC();
    sub_10000A61C(v13, qword_1009A1BA0);
    v14 = sub_10076C04C();
    v22 = v14;
    v15 = sub_10004C7BC();
    v23 = v15;
    v16 = sub_10000DB7C(v21);
    v17 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
    sub_10076C90C();
    sub_10000CD74(v21);
    sub_10076991C();
    if (qword_100940F40 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v13, qword_1009A1BB8);
    v22 = v14;
    v23 = v15;
    v19 = sub_10000DB7C(v21);
    v18(v19, v17, v14);
    sub_10076C90C();
    sub_10000CD74(v21);
    sub_10076991C();
    if (qword_100941320 != -1)
    {
      swift_once();
    }

    v20 = sub_10076D9AC();
    sub_10000A61C(v20, qword_1009A2678);
    sub_10076D42C();
    if (qword_100941328 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v20, qword_1009A2690);
    sub_10076D42C();
    if (qword_100941330 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v20, qword_1009A26A8);
    sub_10076D3FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10060EB20()
{
  v26 = sub_10076B6EC();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = sub_10076461C();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v27.receiver = v15;
  v27.super_class = v14;
  v17 = objc_msgSendSuper2(&v27, "init");
  sub_10076460C();
  sub_10076C2FC();
  v19 = v18;
  v21 = v20;
  v12(v9, v6);
  sub_1000E62EC(v17, v19, v21);

  sub_10076465C();
  sub_10076B6BC();
  sub_10060EE0C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v22 = v26;
  sub_10077124C();
  v23 = *(v0 + 8);
  v23(v2, v22);
  return (v23)(v5, v22);
}

uint64_t sub_10060EE0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v57 = a1;
  v1 = sub_10076111C();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = sub_10075DB7C();
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C45C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100960FB8, &qword_1007AFDB0);
  v14 = sub_10076FCEC();
  sub_10076B48C();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = sub_10076B4CC();
    v16 = sub_10076ABCC();
    if (*(v15 + 16))
    {
      v18 = sub_100561E0C(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_10000CD08(*(v15 + 56) + 32 * v18, &v59);

      sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v63;
      v22 = [v63 integerValue];

      v23 = sub_10076B4CC();
      v24 = sub_10076B0CC();
      if (*(v23 + 16))
      {
        v53 = v22;
        v54 = sub_100561E0C(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_10000CD08(*(v23 + 56) + 32 * v54, &v59);

          if (swift_dynamicCast())
          {
            v28 = v63;
            v29 = [v63 integerValue];

            v30 = sub_10076B4CC();
            v31 = sub_100765B9C();
            if (*(v30 + 16))
            {
              v54 = v29;
              v33 = sub_100561E0C(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_10000CD08(*(v30 + 56) + 32 * v33, &v59);

                if (swift_dynamicCast())
                {
                  v36 = v63;
                  v37 = v64;
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  sub_10077145C(91);
                  v65._countAndFlagsBits = 0xD000000000000059;
                  v65._object = 0x80000001007F24B0;
                  sub_1007700CC(v65);
                  v66._countAndFlagsBits = v36;
                  v66._object = v37;
                  sub_1007700CC(v66);

                  sub_10075DB6C();

                  v38 = v58;
                  if ((*(v58 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v38 + 32))(v9, v6, v7);
                    sub_100760C4C();
                    v51[1] = sub_10076F64C();
                    sub_10076FC1C();
                    v52 = v59;
                    sub_10000A5D4(&qword_100960FC0, &qword_1007AFDB8);
                    v40 = (sub_10000A5D4(&qword_100948D78, &qword_10078B6E0) - 8);
                    v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
                    v42 = swift_allocObject();
                    *(v42 + 16) = xmmword_100783DD0;
                    v43 = v42 + v41;
                    v44 = v40[14];
                    v59 = 0xD000000000000015;
                    v60 = 0x80000001007F2510;
                    sub_10077140C();
                    (*(v38 + 16))(v43 + v44, v9, v7);
                    sub_1000FDB2C(v42);
                    swift_setDeallocating();
                    sub_10000CFBC(v43, &qword_100948D78, &qword_10078B6E0);
                    swift_deallocClassInstance();
                    sub_10076110C();
                    sub_10076421C();
                    sub_10076FC1C();
                    sub_100611394(&qword_100960FC8, &type metadata accessor for ShelvesIntent, &protocol conformance descriptor for ShelvesIntent);
                    v45 = v56;
                    sub_10076420C();
                    v46 = swift_allocObject();
                    swift_weakInit();
                    v47 = swift_allocObject();
                    v47[2] = v46;
                    v47[3] = 0xD000000000000015;
                    v47[4] = 0x80000001007F2510;
                    v47[5] = v14;
                    v48 = v52;
                    v47[6] = v53;
                    v47[7] = v48;
                    v47[8] = v54;
                    v49 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);

                    v50 = sub_10077068C();
                    v61 = v49;
                    v62 = &protocol witness table for OS_dispatch_queue;
                    v59 = v50;
                    sub_10076FC6C();

                    (*(v55 + 8))(v3, v45);
                    (*(v58 + 8))(v9, v7);
                    sub_10000CD74(&v59);
                    return v14;
                  }

                  sub_10000CFBC(v6, &unk_1009435D0, &qword_100785850);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v59 = 0;
          sub_10076FCBC();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v59 = 0;
  sub_10076FCBC();
  (*(v11 + 8))(v13, v10);
  return v14;
}