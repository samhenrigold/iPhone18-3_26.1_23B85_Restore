uint64_t sub_1004B3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[15] = swift_task_alloc();
  type metadata accessor for PlaybackIntentDescriptor(0);
  v5[16] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  v5[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v8;
  v5[23] = v7;

  return _swift_task_switch(sub_1004B3F60, v8, v7);
}

uint64_t sub_1004B3F60()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v0[24] = qword_101218AD8;
  sub_10010FC20(&unk_10118ABA0, &qword_100ECF240);
  v3 = swift_allocObject();
  v0[25] = v3;
  *(v3 + 16) = xmmword_100EBDC20;
  v4 = Player.InsertCommand.init(location:playbackIntent:)(0, v1);
  *(v3 + 56) = &type metadata for Player.InsertCommand;
  *(v3 + 64) = &protocol witness table for Player.InsertCommand;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 96) = &type metadata for Player.ChangeCommand;
  *(v3 + 104) = &protocol witness table for Player.ChangeCommand;
  *(v3 + 72) = 1;
  v6 = type metadata accessor for AlbumDetailDataSource(0);
  v0[26] = v6;
  v0[5] = v6;
  v0[6] = &off_1010AEFD0;
  v0[2] = v2;
  v7 = v1;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_1004B40F0;

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, (v0 + 2));
}

uint64_t sub_1004B40F0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = sub_1004B4934;
  }

  else
  {

    sub_1000095E8(v3 + 16, &unk_101183910, &unk_100EBDD00);
    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = sub_1004B424C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1004B424C()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v0 + 80, &unk_1011926C0, &unk_100ECF870);
  if (*(v0 + 88))
  {

    sub_1000095E8(v0 + 80, &unk_1011926C0, &unk_100ECF870);
LABEL_9:
    v11 = *(v0 + 160);
    v12 = *(v0 + 104);
    (*(*(v0 + 144) + 56))(v11, 1, 1, *(v0 + 136));
    sub_1000095E8(v11, &unk_1011841F0, &qword_100ECF040);
    v13 = v12 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *v13 = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v0 + 80, &unk_1011926C0, &unk_100ECF870);
  if (!Strong || (v4 = sub_10003169C(), *(v0 + 232) = v4, Strong, !v4))
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 152);
  v6 = &v5[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
  *v5 = 1;
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v6 = 0;
  v6[1] = 0;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_1004B44AC;
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  return sub_100706024(v8, v9);
}

uint64_t sub_1004B44AC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 248) = v0;

  sub_1004E414C(v3, type metadata accessor for AppInterfaceContext.Activity);

  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1004B4A7C;
  }

  else
  {
    v6 = sub_1004B463C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1004B463C()
{

  v1 = v0[20];
  v2 = v0[13];
  (*(v0[18] + 56))(v1, 0, 1, v0[17]);
  sub_1000095E8(v1, &unk_1011841F0, &qword_100ECF040);
  v3 = v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B472C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 272) = v0;

  sub_1004E414C(v3, type metadata accessor for PlaybackIntentDescriptor);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1004B4BAC;
  }

  else
  {
    v6 = sub_1004B4898;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1004B4898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B4934()
{
  v14 = v0;
  sub_1000095E8((v0 + 2), &unk_101183910, &unk_100EBDD00);
  v0[32] = v0[28];
  v1 = v0[26];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[12];
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13[3] = v1;
  v13[4] = &off_1010AEFD0;
  v13[0] = v4;
  v6 = v5;
  v7 = v4;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v2, v11, 3, 0, 0, 1, 0, 1, v3, 0, v13);
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1004B472C;
  v9 = v0[16];

  return PlaybackController.add(_:route:)(v9, 0);
}

uint64_t sub_1004B4A7C()
{
  v14 = v0;
  v0[32] = v0[31];
  v1 = v0[26];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[12];
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13[3] = v1;
  v13[4] = &off_1010AEFD0;
  v13[0] = v4;
  v6 = v5;
  v7 = v4;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v2, v11, 3, 0, 0, 1, 0, 1, v3, 0, v13);
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1004B472C;
  v9 = v0[16];

  return PlaybackController.add(_:route:)(v9, 0);
}

uint64_t sub_1004B4BAC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1004B4C54(void *a1)
{
  v2 = v1;
  v135._rawValue = a1;
  v3 = type metadata accessor for UUID();
  v143 = *(v3 - 8);
  v144 = v3;
  __chkstk_darwin();
  v142 = v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v5 = *(v140 + 64);
  __chkstk_darwin();
  v141 = v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = (v120 - v6);
  v138 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v8 = v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v7;
  __chkstk_darwin();
  v149 = v120 - v9;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v11 = v120 - v10;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v13 = v120 - v12;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v136 = v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = v120 - v15;
  __chkstk_darwin();
  v145 = v120 - v16;
  __chkstk_darwin();
  v18 = v120 - v17;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v146 = v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = v120 - v20;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v22 = v120 - v21;
  v23 = type metadata accessor for Album();
  v151 = *(v23 - 8);
  v152 = v23;
  v24 = *(v151 + 64);
  __chkstk_darwin();
  v134 = v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = v120 - v25;
  v26 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v26, &v167, &unk_1011926C0, &unk_100ECF870);
  if (v168)
  {
    v27 = &unk_1011926C0;
    v28 = &unk_100ECF870;
    v29 = &v167;
LABEL_6:
    sub_1000095E8(v29, v27, v28);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v167, &unk_1011926C0, &unk_100ECF870);
  v133 = Strong;
  if (!Strong)
  {
    return 0;
  }

  v132 = v8;
  v31 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v2 + v31, v22, &unk_101184730, &unk_100ECB920);
  v33 = v151;
  v32 = v152;
  if ((*(v151 + 48))(v22, 1, v152) == 1)
  {

    v27 = &unk_101184730;
    v28 = &unk_100ECB920;
    v29 = v22;
    goto LABEL_6;
  }

  v127 = v5;
  v35 = v147;
  v125 = *(v33 + 32);
  v126 = v33 + 32;
  v125(v147, v22, v32);
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6B0;
  *(v36 + 56) = v32;
  *(v36 + 64) = &protocol witness table for Album;
  v124 = v36;
  v37 = sub_10001C8B8((v36 + 32));
  v38 = *(v33 + 16);
  v39 = v35;
  v123 = v33 + 16;
  v40 = v38;
  v38(v37, v39, v32);
  v41 = v133;
  v42 = [v133 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v131 = v167;
  v43 = type metadata accessor for IndexPath();
  (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
  sub_1004DB58C(v11, v13);
  sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
  v44 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v44 - 8) + 56))(v13, 0, 1, v44);
  sub_1004E40DC(v13, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1004E414C(v13, type metadata accessor for PlaybackIntentDescriptor);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v46 = *(v45 - 8);
  v121 = *(v46 + 56);
  v122 = v45;
  v120[1] = v46 + 56;
  (v121)(v18, 0, 1);
  v47 = type metadata accessor for AlbumDetailDataSource(0);
  v170 = &off_1010AEFD0;
  v169 = v47;
  v167 = v2;
  v48 = qword_10117F608;
  v49 = v2;
  v50 = v145;
  if (v48 != -1)
  {
    swift_once();
  }

  v51 = qword_101218AD8;
  sub_1000089F8(v18, v50, &unk_1011838E0, &unk_100EC1670);
  v130 = v51;
  v52 = UIViewController.playActivityInformation.getter();
  v128 = v53;
  v129 = v52;
  v55 = v54;
  v57 = v56;
  sub_1000089F8(&v167, &v159, &unk_101183910, &unk_100EBDD00);
  if (*(&v160 + 1))
  {
    sub_100059A8C(&v159, &v163);
  }

  else
  {
    *&v171 = v41;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v58 = v41;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v174, &v163);
    }

    else
    {
      v176 = 0;
      v174 = 0u;
      v175 = 0u;
      *&v163 = v58;
      v59 = v58;
      v60 = String.init<A>(reflecting:)();
      v164 = &type metadata for Player.CommandIssuerIdentity;
      v165 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v163 = v60;
      *(&v163 + 1) = v61;
      if (*(&v175 + 1))
      {
        sub_1000095E8(&v174, &unk_101183910, &unk_100EBDD00);
      }
    }

    v50 = v145;
    if (*(&v160 + 1))
    {
      sub_1000095E8(&v159, &unk_101183910, &unk_100EBDD00);
    }
  }

  v62 = v148;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v130, v50, v129, v128, v55, v57, &v163, v148);
  sub_1000095E8(v18, &unk_1011838E0, &unk_100EC1670);
  sub_1000095E8(&v167, &unk_101183910, &unk_100EBDD00);
  v63 = type metadata accessor for Actions.PlaybackContext(0);
  v64 = *(v63 - 8);
  (*(v64 + 56))(v62, 0, 1, v63);
  v65 = type metadata accessor for PlaylistContext(0);
  (*(*(v65 - 8) + 56))(v149, 1, 1, v65);
  sub_10012B7A8(v135._rawValue, &v167);
  if (v49[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent])
  {
    v66 = &off_10109A570;
  }

  else
  {
    v66 = &off_10109A598;
  }

  v135._rawValue = v66;
  sub_1004E0268(v150);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v134;
  v69 = v152;
  v40(v134, v147, v152);
  v70 = (*(v151 + 80) + 24) & ~*(v151 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v67;
  v129 = v71;
  v125((v71 + v70), v68, v69);
  sub_100008FE4(v124 + 32, v166);
  v145 = v67;

  sub_1000089F8(&v167, &v159, &unk_1011845E0, &unk_100EBF3A0);
  if (v162 == 1)
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
    v177 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v41, &v174, &v163);
    v72 = v146;
    if (v162 != 1)
    {
      sub_1000095E8(&v159, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v159, &v163);
    v72 = v146;
  }

  swift_getObjectType();
  v73 = swift_conformsToProtocol2();
  if (v73)
  {
    v126 = v73;
    v74 = v41;
    v128 = v41;
  }

  else
  {
    v128 = 0;
    v126 = 0;
  }

  v134 = swift_allocBox();
  v76 = v75;
  sub_1000089F8(v148, v72, &unk_10118AB20, &unk_100EBF390);
  v77 = *(v64 + 48);
  if (v77(v72, 1, v63) == 1)
  {
    v78 = v137;
    v121(v137, 1, 1, v122);
    v161 = 0;
    v159 = 0u;
    v160 = 0u;
    sub_1000089F8(v78, v136, &unk_1011838E0, &unk_100EC1670);
    v130 = v130;
    v79 = UIViewController.playActivityInformation.getter();
    v125 = v80;
    v81 = v41;
    v83 = v82;
    v85 = v84;
    sub_1000089F8(&v159, &v157, &unk_101183910, &unk_100EBDD00);
    if (v158)
    {
      sub_100059A8C(&v157, &v171);
      v86 = v127;
    }

    else
    {
      v156 = v81;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v87 = v81;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v153, &v171);
        v86 = v127;
      }

      else
      {
        v155 = 0;
        v153 = 0u;
        v154 = 0u;
        *&v171 = v87;
        v88 = v87;
        v89 = String.init<A>(reflecting:)();
        *(&v172 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v173 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v171 = v89;
        *(&v171 + 1) = v90;
        v86 = v127;
        if (*(&v154 + 1))
        {
          sub_1000095E8(&v153, &unk_101183910, &unk_100EBDD00);
        }
      }

      if (v158)
      {
        sub_1000095E8(&v157, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v130, v136, v79, v125, v83, v85, &v171, v76);
    sub_1000095E8(&v159, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v137, &unk_1011838E0, &unk_100EC1670);
    v91 = v146;
    v92 = v77(v146, 1, v63);
    v41 = v133;
    if (v92 != 1)
    {
      sub_1000095E8(v91, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1004E59E0(v72, v76, type metadata accessor for Actions.PlaybackContext);
    v86 = v127;
  }

  v93 = &v76[*(v63 + 28)];
  sub_1000089F8(v93, &v171, &unk_101183910, &unk_100EBDD00);
  if (*(&v172 + 1))
  {
    sub_100059A8C(&v171, &v159);
  }

  else
  {
    *&v159 = v41;
    v94 = v41;
    v95 = String.init<A>(reflecting:)();
    *(&v160 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v161 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v159 = v95;
    *(&v159 + 1) = v96;
    if (*(&v172 + 1))
    {
      sub_1000095E8(&v171, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_100EBDC20;
  *(v97 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v97 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v97 + 32) = 0x4D747865746E6F43;
  *(v97 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v159, v97 + 72);
  v98 = static Player.CommandIssuer<>.combining(_:)(v97);
  v100 = v99;

  sub_10000959C(&v159);
  *(&v160 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v161 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v159 = v98;
  *(&v159 + 1) = v100;
  sub_10006B010(&v159, v93, &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v166, &v159);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v146 = String.init<A>(describing:)();
  v137 = v101;
  v136 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v166, &v157);
  sub_10012B7A8(&v163, &v159);
  v102 = v141;
  sub_1000089F8(v150, v141, &unk_1011838D0, &unk_100EC0320);
  v103 = v132;
  sub_1000089F8(v149, v132, &unk_1011845D0, &unk_100EBF380);
  v104 = (*(v140 + 80) + 160) & ~*(v140 + 80);
  v105 = (v86 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = (*(v138 + 80) + v106 + 8) & ~*(v138 + 80);
  v108 = (v107 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
  v109 = (v107 + v139 + 31) & 0xFFFFFFFFFFFFFFF8;
  v110 = swift_allocObject();
  sub_100059A8C(&v157, v110 + 16);
  *(v110 + 56) = v131;
  sub_10012B828(&v159, v110 + 64);
  sub_10003D17C(v102, v110 + v104, &unk_1011838D0, &unk_100EC0320);
  *(v110 + v105) = v136;
  *(v110 + v106) = v134;
  sub_10003D17C(v103, v110 + v107, &unk_1011845D0, &unk_100EBF380);
  v111 = v110 + v108;
  v112 = v129;
  v113 = v126;
  *v111 = v128;
  *(v111 + 8) = v113;
  *(v111 + 16) = 2;
  v114 = (v110 + v109);
  *v114 = sub_1004E9A00;
  v114[1] = v112;
  swift_unknownObjectRetain();

  v115 = v142;
  UUID.init()();
  v116 = UUID.uuidString.getter();
  v118 = v117;
  (*(v143 + 8))(v115, v144);
  v178._countAndFlagsBits = v146;
  v178._object = v137;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v171, v178, v116, v118, sub_10021953C, v110);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v163);
  sub_10000959C(v166);

  v119 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v135, 0);

  v163 = v171;
  sub_100015BB0(&v163);
  v159 = v172;
  sub_100015BB0(&v159);

  sub_1000095E8(v150, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v167, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v149, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v148, &unk_10118AB20, &unk_100EBF390);
  (*(v151 + 8))(v147, v152);

  return v119;
}

uint64_t sub_1004B6064(uint64_t a1)
{
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v73 = (&v69 - v2);
  v3 = type metadata accessor for Album();
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin();
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v6 = &v69 - v5;
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v80 = &v69 - v7;
  v79 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v81 = *(v79 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin();
  v72 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v69 - v9;
  __chkstk_darwin();
  v70 = &v69 - v10;
  __chkstk_darwin();
  v76 = &v69 - v11;
  sub_10010FC20(&unk_101192868, &qword_100ECFB70);
  __chkstk_darwin();
  v13 = &v69 - v12;
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v15 = &v69 - v14;
  v16 = type metadata accessor for Artist();
  v17 = *(v16 - 8);
  v84 = v16;
  v85 = v17;
  __chkstk_darwin();
  v75 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v69 - v19;
  swift_beginAccess();
  v82 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = &unk_100EBC000;
  if (!Strong)
  {
    goto LABEL_15;
  }

  v22 = Strong;
  v23 = sub_1004CAC5C();

  swift_getKeyPath();
  *&v96[0] = v23;
  sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v21 = &unk_100EBC000;

  v24 = *(v23 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);

  if (v24 != 1)
  {
    goto LABEL_15;
  }

  Album.artists.getter();
  v25 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v13, 1, v25) == 1)
  {
    sub_1000095E8(v13, &unk_101192868, &qword_100ECFB70);
    (*(v85 + 56))(v15, 1, 1, v84);
LABEL_6:
    sub_1000095E8(v15, &unk_101184930, &unk_100EC05C0);
    v21 = &unk_100EBC000;
LABEL_15:
    v41 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_16;
  }

  sub_10034DA48(v15);
  (*(v26 + 8))(v13, v25);
  v28 = v84;
  v27 = v85;
  if ((*(v85 + 48))(v15, 1, v84) == 1)
  {
    goto LABEL_6;
  }

  v29 = v83;
  (*(v27 + 32))(v83, v15, v28);
  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  v21 = &unk_100EBC000;
  if (!v30)
  {
    (*(v27 + 8))(v29, v28);
    v36 = v80;
    (*(v81 + 56))(v80, 1, 1, v79);
LABEL_14:
    sub_1000095E8(v36, &qword_101192860, &unk_100ECFB60);
    goto LABEL_15;
  }

  v31 = v30;
  v32 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v31 + v32, v6, &unk_101184730, &unk_100ECB920);
  v33 = v77;
  v34 = v78;
  v35 = (*(v77 + 48))(v6, 1, v78);
  v36 = v80;
  if (v35)
  {

    sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
    (*(v81 + 56))(v36, 1, 1, v79);
    v37 = v83;
LABEL_13:
    (*(v85 + 8))(v37, v28);
    goto LABEL_14;
  }

  v38 = v74;
  (*(v33 + 16))(v74, v6, v34);
  sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
  sub_1004CA938(v36);

  (*(v33 + 8))(v38, v34);
  v39 = v81;
  v40 = (*(v81 + 48))(v36, 1, v79) == 1;
  v37 = v83;
  if (v40)
  {
    goto LABEL_13;
  }

  v46 = v83;
  v47 = v76;
  sub_1004E59E0(v36, v76, type metadata accessor for ContainerDetail.AttributionItem);
  (*(v85 + 16))(v75, v46, v28);
  v48 = v70;
  sub_1004E40DC(v47, v70, type metadata accessor for ContainerDetail.AttributionItem);
  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    v51 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v50 + v51, v96, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v96[0]) != 1)
    {
      v53 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v96, &unk_1011926C0, &unk_100ECF870);
      if (v53)
      {
        v80 = sub_10003169C();
      }

      else
      {
        v80 = 0;
      }

      v52 = v73;
      v39 = v81;
      goto LABEL_25;
    }

    sub_1000095E8(v96, &unk_1011926C0, &unk_100ECF870);
  }

  v80 = 0;
  v52 = v73;
LABEL_25:
  swift_beginAccess();
  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    sub_1004E0268(v52);
  }

  else
  {
    v56 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v56 - 8) + 56))(v52, 1, 1, v56);
  }

  v57 = v71;
  sub_1004E40DC(v48, v71, type metadata accessor for ContainerDetail.AttributionItem);
  v58 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v59 = v58 + v8;
  v60 = swift_allocObject();
  sub_1004E59E0(v57, v60 + v58, type metadata accessor for ContainerDetail.AttributionItem);
  v61 = v72;
  sub_1004E59E0(v48, v72, type metadata accessor for ContainerDetail.AttributionItem);
  v62 = (v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  sub_1004E59E0(v61, v63 + v58, type metadata accessor for ContainerDetail.AttributionItem);
  *(v63 + v62) = v80;
  v64 = v84;
  Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v75, 0, 0, sub_1004E9A64, v60, &unk_100ECFFC0, v63, v52, &v95, v84, &protocol witness table for Artist);
  static Actions.GoToArtist.action(context:)(&v95, v96);
  v97 = v95;
  sub_1000095E8(&v97, &qword_1011815E0, &qword_100EBD050);

  v90 = v96[4];
  v91 = v96[5];
  v92 = v96[6];
  v93 = v96[7];
  v86 = v96[0];
  v87 = v96[1];
  v88 = v96[2];
  v89 = v96[3];
  v65 = static ActionBuilder.buildExpression<A, B>(_:)(&v86, &type metadata for Actions.GoToArtist.Context, (&type metadata for () + 1), &protocol witness table for Actions.GoToArtist.Context);
  v94[4] = v90;
  v94[5] = v91;
  v94[6] = v92;
  v94[7] = v93;
  v94[0] = v86;
  v94[1] = v87;
  v94[2] = v88;
  v94[3] = v89;
  sub_1000095E8(v94, &unk_101183950, &qword_100EBF3B8);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  inited = swift_initStackObject();
  v21 = &unk_100EBC000;
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v65;
  v67 = inited + 32;
  v68 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v67, &unk_10118AB80, &qword_100EBF3B0);
  v41 = static ActionBuilder.buildIf(_:)(v68);

  sub_1004E414C(v76, type metadata accessor for ContainerDetail.AttributionItem);
  (*(v85 + 8))(v83, v64);
LABEL_16:
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v42 = swift_initStackObject();
  *(v42 + 16) = v21[107];
  *(v42 + 32) = v41;
  v43 = v42 + 32;
  v44 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v43, &unk_10118AB80, &qword_100EBF3B0);
  return v44;
}

void *sub_1004B6CD8()
{
  v1 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v1, &v12, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
    sub_1000095E8(&v12, &unk_1011926C0, &unk_100ECF870);
    return _swiftEmptyArrayStorage;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v12, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = xmmword_100EBCEF0;
  v3 = Strong;
  PresentationSource.init(viewController:position:)(v3, v14, &v12);
  v4 = sub_1004B4C54(&v12);
  sub_10012BA6C(&v12);
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  v7._countAndFlagsBits = 0x676E6F532ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  if (v4)
  {
    v9 = [v4 children];
    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v5 + 32) = v8;
    *(v5 + 40) = xmmword_100ECF4D0;
    *(v5 + 56) = v10;
  }

  else
  {

    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
  }

  return v5;
}

double sub_1004B6F0C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController) = a1;

  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
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

uint64_t sub_1004B6FF4(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = sub_10010FC20(&qword_101181C50, &qword_100EBD7B8);
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_101192970, &qword_100EBD7C0);
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_10118A310, &qword_100EBD6C0);
  v3[42] = v7;
  v3[43] = *(v7 - 8);
  v3[44] = swift_task_alloc();
  v8 = type metadata accessor for MusicVideo();
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v3[53] = v9;
  v3[54] = *(v9 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_101192980, &unk_100ECFEC0);
  v3[60] = v10;
  v3[61] = *(v10 - 8);
  v3[62] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101181AB8, &unk_100EBD560);
  v3[63] = v11;
  v3[64] = *(v11 - 8);
  v3[65] = swift_task_alloc();
  sub_10010FC20(&unk_101192990, &unk_100ECFED0);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v12 = type metadata accessor for Song();
  v3[72] = v12;
  v3[73] = *(v12 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v3[81] = v13;
  v3[82] = *(v13 - 8);
  v3[83] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v14 = sub_10010FC20(&unk_1011929A0, &unk_100ECBC80);
  v3[96] = v14;
  v3[97] = *(v14 - 8);
  v3[98] = swift_task_alloc();
  v15 = sub_10010FC20(&qword_101181B20, &qword_100EBD5E0);
  v3[99] = v15;
  v3[100] = *(v15 - 8);
  v3[101] = swift_task_alloc();
  v16 = type metadata accessor for Album();
  v3[102] = v16;
  v3[103] = *(v16 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v17 = type metadata accessor for MusicPropertySource();
  v3[108] = v17;
  v3[109] = *(v17 - 8);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[114] = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[115] = v19;
  v3[116] = v18;

  return _swift_task_switch(sub_1004B7890, v19, v18);
}

uint64_t sub_1004B7890()
{
  v111 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 240);
  v5 = *(v2 + 16);
  *(v0 + 936) = v5;
  *(v0 + 944) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 88);
  *(v0 + 952) = v6;
  *(v0 + 960) = (v2 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v7 = v6(v1, v3);
  v8 = enum case for MusicPropertySource.catalog(_:);
  *(v0 + 1280) = enum case for MusicPropertySource.catalog(_:);
  if (v7 == v8)
  {
    sub_1004E40DC(*(v0 + 232), *(v0 + 848), type metadata accessor for AlbumDetailDataSource.LoadingSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v10 = *(v0 + 848);
          v11 = *v10;
          *(v0 + 1144) = *v10;
          v12 = v10[1];
          *(v0 + 1152) = v12;
          swift_getKeyPath();
          *(v0 + 88) = v11;
          *(v0 + 96) = v12;
          sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

          MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
          sub_10010FC20(&qword_101183990, &qword_100EBC750);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_100EBC6C0;
          sub_10010FC20(&qword_10118BFD8, &qword_100ECFF40);
          *(v13 + 32) = static PartialMusicProperty<A>.albums.getter();
          MusicCatalogResourceRequest.properties.setter();
          v14 = swift_task_alloc();
          *(v0 + 1160) = v14;
          *v14 = v0;
          v14[1] = sub_1004BD8F8;
          v15 = *(v0 + 328);
          v16 = *(v0 + 336);
LABEL_56:

          return MusicCatalogResourceRequest.response()(v15, v16);
        }

        (*(*(v0 + 368) + 32))(*(v0 + 400), *(v0 + 848), *(v0 + 360));
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v58 = swift_allocObject();
        *(v0 + 1176) = v58;
        *(v58 + 16) = xmmword_100EBC6C0;
        sub_10010FC20(&unk_1011929B0, &qword_100ECFEE0);
        *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
        v62 = swift_task_alloc();
        *(v0 + 1184) = v62;
        v60 = sub_1004E41B4(&qword_101181CF8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
        *v62 = v0;
        v62[1] = sub_1004BE5E0;
        v61 = *(v0 + 392);
        goto LABEL_42;
      }

      (*(*(v0 + 584) + 32))(*(v0 + 616), *(v0 + 848), *(v0 + 576));
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v58 = swift_allocObject();
      *(v0 + 1120) = v58;
      *(v58 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&qword_10118BFD8, &qword_100ECFF40);
      *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
      v59 = swift_task_alloc();
      *(v0 + 1128) = v59;
      v60 = sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      *v59 = v0;
      v59[1] = sub_1004BCD48;
      v61 = *(v0 + 608);
LABEL_40:
      v83 = *(v0 + 576);
      v84 = *(v0 + 240);
      v85 = &protocol witness table for Song;
      v86 = &protocol witness table for Song;
LABEL_43:

      return MusicItem<>.with(_:preferredSource:)(v61, v58, v84, v83, v85, v86, v60);
    }

    v41 = (v0 + 848);
    if (EnumCaseMultiPayload)
    {
      v42 = *v41;
      v44 = *v42;
      v43 = v42[1];
LABEL_33:
      *(v0 + 1200) = v43;
      v67 = *(v0 + 248);
      swift_getKeyPath();
      *(v0 + 72) = v44;
      *(v0 + 80) = v43;
      sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v68 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v68(v0 + 16, 0);
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_100EBEE70;
      sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
      *(v69 + 32) = static PartialMusicProperty<A>.tracks.getter();
      *(v69 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
      *(v69 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
      *(v69 + 56) = static PartialMusicProperty<A>.artists.getter();
      *(v69 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
      *(v69 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
      MusicCatalogResourceRequest.properties.setter();
      v70 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
      *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
      if (*(v67 + v70) == 1)
      {
        sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
        v71 = type metadata accessor for MusicCatalogResourceRequestOption();
        v72 = *(v71 - 8);
        v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_100EBC6B0;
        (*(v72 + 104))(v74 + v73, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v71);
        MusicCatalogResourceRequest.options.setter();
      }

      v75 = *(v0 + 1280);
      v76 = *(v0 + 952);
      v77 = *(v0 + 936);
      v78 = *(v0 + 880);
      v79 = *(v0 + 864);
      v80 = *(v0 + 240);
      MusicCatalogResourceRequest.prewarmForPlayback.setter();
      v77(v78, v80, v79);
      v81 = v76(v78, v79);
      if (v81 != v75)
      {
        if (v81 == enum case for MusicPropertySource.library(_:))
        {
          sub_1004C5930();
        }

        else
        {
          if (qword_10117FC48 != -1)
          {
            swift_once();
          }

          v92 = *(v0 + 248);
          v93 = type metadata accessor for Logger();
          sub_1000060E4(v93, qword_1012193F8);
          v94 = v92;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = *(v0 + 936);
            v98 = *(v0 + 888);
            v99 = *(v0 + 864);
            v100 = *(v0 + 248);
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v110[0] = v102;
            *v101 = 136446210;
            v103 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
            swift_beginAccess();
            v97(v98, v100 + v103, v99);
            v104 = String.init<A>(describing:)();
            v106 = sub_1000105AC(v104, v105, v110);

            *(v101 + 4) = v106;
            _os_log_impl(&_mh_execute_header, v95, v96, "Unknown source: %{public}s", v101, 0xCu);
            sub_10000959C(v102);
          }

          (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
        }
      }

      v107 = swift_task_alloc();
      *(v0 + 1216) = v107;
      *v107 = v0;
      v107[1] = sub_1004BF18C;
      v15 = *(v0 + 280);
      v16 = *(v0 + 288);
      goto LABEL_56;
    }

    goto LABEL_32;
  }

  if (v7 != enum case for MusicPropertySource.library(_:))
  {

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 896);
    v25 = *(v0 + 864);
    v26 = *(v0 + 240);
    v27 = type metadata accessor for Logger();
    sub_1000060E4(v27, qword_1012193F8);
    v5(v24, v26, v25);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 896);
    if (v30)
    {
      v32 = *(v0 + 888);
      v109 = v29;
      v33 = *(v0 + 872);
      v34 = *(v0 + 864);
      v35 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v110[0] = v108;
      *v35 = 136446210;
      v5(v32, v31, v34);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v31, v34);
      v40 = sub_1000105AC(v36, v38, v110);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v28, v109, "Unknown pageSource: %{public}s", v35, 0xCu);
      sub_10000959C(v108);

      v39(*(v0 + 904), *(v0 + 864));
    }

    else
    {
      v45 = *(v0 + 872);
      v46 = *(v0 + 864);

      v47 = *(v45 + 8);
      v47(v31, v46);
      v47(*(v0 + 904), *(v0 + 864));
    }

LABEL_18:
    v48 = *(v0 + 888);
    v49 = *(v0 + 872);
    v50 = *(v0 + 864);
    (*(v49 + 104))(v48, *(v0 + 1280), v50);
    v51 = static MusicPropertySource.== infix(_:_:)();
    (*(v49 + 8))(v48, v50);
    if (v51)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000060E4(v52, qword_1012193F8);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v55, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v56 = *(v0 + 8);

    return v56();
  }

  sub_1004E40DC(*(v0 + 232), *(v0 + 856), type metadata accessor for AlbumDetailDataSource.LoadingSource);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 <= 1)
  {
    if (!v17)
    {
      v41 = (v0 + 856);
LABEL_32:
      v63 = *(v0 + 832);
      v64 = *(v0 + 824);
      v65 = *(v0 + 816);
      (*(v64 + 32))(v63, *v41, v65);
      v44 = Album.catalogID.getter();
      v43 = v66;
      (*(v64 + 8))(v63, v65);
      if (v43)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v88 = *(v0 + 856);
    v89 = *v88;
    *(v0 + 968) = *v88;
    v90 = v88[1];
    *(v0 + 976) = v90;
    MusicLibraryRequest.init()();
    swift_getKeyPath();
    *(v0 + 120) = v89;
    *(v0 + 128) = v90;
    MusicLibraryRequest.filter<A>(matching:equalTo:)();

    v91 = swift_task_alloc();
    *(v0 + 984) = v91;
    *v91 = v0;
    v91[1] = sub_1004B8C64;
    v23 = *(v0 + 792);
    v22 = *(v0 + 784);
  }

  else
  {
    if (v17 == 2)
    {
      (*(*(v0 + 584) + 32))(*(v0 + 640), *(v0 + 856), *(v0 + 576));
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v58 = swift_allocObject();
      *(v0 + 1000) = v58;
      *(v58 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&qword_10118BFD8, &qword_100ECFF40);
      *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
      v82 = swift_task_alloc();
      *(v0 + 1008) = v82;
      v60 = sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      *v82 = v0;
      v82[1] = sub_1004B98B8;
      v61 = *(v0 + 632);
      goto LABEL_40;
    }

    if (v17 != 3)
    {
      (*(*(v0 + 368) + 32))(*(v0 + 416), *(v0 + 856), *(v0 + 360));
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v58 = swift_allocObject();
      *(v0 + 1096) = v58;
      *(v58 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&unk_1011929B0, &qword_100ECFEE0);
      *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
      v87 = swift_task_alloc();
      *(v0 + 1104) = v87;
      v60 = sub_1004E41B4(&qword_101181CF8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
      *v87 = v0;
      v87[1] = sub_1004BC0E8;
      v61 = *(v0 + 408);
LABEL_42:
      v83 = *(v0 + 360);
      v84 = *(v0 + 240);
      v85 = &protocol witness table for MusicVideo;
      v86 = &protocol witness table for MusicVideo;
      goto LABEL_43;
    }

    v18 = *(v0 + 856);
    v19 = *v18;
    *(v0 + 1024) = *v18;
    v20 = v18[1];
    *(v0 + 1032) = v20;
    MusicLibraryRequest.init()();
    swift_getKeyPath();
    *(v0 + 104) = v19;
    *(v0 + 112) = v20;
    MusicLibraryRequest.filter<A>(matching:equalTo:)();

    v21 = swift_task_alloc();
    *(v0 + 1040) = v21;
    *v21 = v0;
    v21[1] = sub_1004BA51C;
    v22 = *(v0 + 496);
    v23 = *(v0 + 504);
  }

  return MusicLibraryRequest.response()(v22, v23);
}

uint64_t sub_1004B8C64()
{
  v2 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BF694;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004B8D88;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004B8D88()
{
  v75 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  MusicLibraryResponse.items.getter();
  sub_10034DA18(v1);
  (*(v3 + 8))(v2, v4);
  v5 = sub_1004C4124(v1);
  v6 = *(v0 + 800);
  if (!v5)
  {
    v20 = *(v0 + 808);
    v21 = *(v0 + 792);
    v22 = *(v0 + 784);
    v23 = *(v0 + 776);
    v24 = *(v0 + 768);
    v25 = *(v0 + 760);

    sub_1000095E8(v25, &unk_101184730, &unk_100ECB920);
    (*(v23 + 8))(v22, v24);
    (*(v6 + 8))(v20, v21);
LABEL_19:

    v51 = *(v0 + 8);

    return v51();
  }

  v7 = *(v0 + 824);
  v8 = *(v0 + 816);
  v9 = *(v0 + 776);
  v10 = *(v0 + 752);
  sub_1000089F8(*(v0 + 760), v10, &unk_101184730, &unk_100ECB920);
  v11 = (*(v7 + 48))(v10, 1, v8);
  v12 = (v9 + 8);
  v13 = (v6 + 8);
  v14 = *(v0 + 808);
  v15 = *(v0 + 792);
  v16 = *(v0 + 784);
  v17 = *(v0 + 768);
  v18 = *(v0 + 760);
  v19 = *(v0 + 752);
  if (v11 == 1)
  {

    sub_1000095E8(v18, &unk_101184730, &unk_100ECB920);
    (*v12)(v16, v17);
    (*v13)(v14, v15);
    sub_1000095E8(v19, &unk_101184730, &unk_100ECB920);
    goto LABEL_12;
  }

  v26 = *(v0 + 824);
  v73 = *(v0 + 816);
  v71 = Album.catalogID.getter();
  v72 = v27;
  sub_1000095E8(v18, &unk_101184730, &unk_100ECB920);
  (*v12)(v16, v17);
  (*v13)(v14, v15);
  (*(v26 + 8))(v19, v73);
  if (!v72)
  {

LABEL_12:
    v43 = *(v0 + 888);
    v44 = *(v0 + 872);
    v45 = *(v0 + 864);
    (*(v44 + 104))(v43, *(v0 + 1280), v45);
    v46 = static MusicPropertySource.== infix(_:_:)();
    (*(v44 + 8))(v43, v45);
    if (v46)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000060E4(v47, qword_1012193F8);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v50, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_19;
  }

  *(v0 + 1200) = v72;
  v28 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v71;
  *(v0 + 80) = v72;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v29 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v29(v0 + 16, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
  *(v30 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v30 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v30 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v30 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v30 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v30 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v31 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v28 + v31))
  {
    sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
    v32 = type metadata accessor for MusicCatalogResourceRequestOption();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100EBC6B0;
    (*(v33 + 104))(v35 + v34, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v32);
    MusicCatalogResourceRequest.options.setter();
  }

  v36 = *(v0 + 1280);
  v37 = *(v0 + 952);
  v38 = *(v0 + 936);
  v39 = *(v0 + 880);
  v40 = *(v0 + 864);
  v41 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v38(v39, v41, v40);
  v42 = v37(v39, v40);
  if (v42 != v36)
  {
    if (v42 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 248);
      v54 = type metadata accessor for Logger();
      sub_1000060E4(v54, qword_1012193F8);
      v55 = v53;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 936);
        v59 = *(v0 + 888);
        v60 = *(v0 + 864);
        v61 = *(v0 + 248);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v74 = v63;
        *v62 = 136446210;
        v64 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v58(v59, v61 + v64, v60);
        v65 = String.init<A>(describing:)();
        v67 = sub_1000105AC(v65, v66, &v74);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v56, v57, "Unknown source: %{public}s", v62, 0xCu);
        sub_10000959C(v63);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v68 = swift_task_alloc();
  *(v0 + 1216) = v68;
  *v68 = v0;
  v68[1] = sub_1004BF18C;
  v69 = *(v0 + 280);
  v70 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v69, v70);
}

uint64_t sub_1004B98B8()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BFCF0;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004B99DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004B99DC(__n128 a1)
{
  v75 = v1;
  v2 = *(v1 + 656);
  v3 = *(v1 + 648);
  v4 = *(v1 + 632);
  v5 = *(v1 + 584);
  v6 = *(v1 + 576);
  v7 = *(v1 + 568);
  Song.albums.getter();
  v8 = *(v5 + 8);
  v8(v4, v6);
  if ((*(v2 + 48))(v7, 1, v3) == 1)
  {
    v9 = *(v1 + 824);
    v10 = *(v1 + 816);
    v11 = *(v1 + 744);
    sub_1000095E8(*(v1 + 568), &unk_101192990, &unk_100ECFED0);
    (*(v9 + 56))(v11, 1, 1, v10);
  }

  else
  {
    v12 = *(v1 + 656);
    v13 = *(v1 + 648);
    v14 = *(v1 + 568);
    sub_10034DA18(*(v1 + 744));
    (*(v12 + 8))(v14, v13);
  }

  if (!sub_1004C4124(*(v1 + 744)))
  {
    v23 = *(v1 + 744);
    v24 = *(v1 + 640);
    v25 = *(v1 + 576);

    sub_1000095E8(v23, &unk_101184730, &unk_100ECB920);
    v8(v24, v25);
LABEL_22:

    v53 = *(v1 + 8);

    return v53();
  }

  v15 = *(v1 + 824);
  v16 = *(v1 + 816);
  v17 = *(v1 + 736);
  sub_1000089F8(*(v1 + 744), v17, &unk_101184730, &unk_100ECB920);
  v18 = (*(v15 + 48))(v17, 1, v16);
  v19 = *(v1 + 744);
  v20 = *(v1 + 736);
  v21 = *(v1 + 640);
  v22 = *(v1 + 576);
  if (v18 == 1)
  {

    sub_1000095E8(v19, &unk_101184730, &unk_100ECB920);
    v8(v21, v22);
    sub_1000095E8(v20, &unk_101184730, &unk_100ECB920);
    goto LABEL_15;
  }

  v26 = *(v1 + 824);
  v27 = *(v1 + 816);
  v73 = Album.catalogID.getter();
  v29 = v28;
  sub_1000095E8(v19, &unk_101184730, &unk_100ECB920);
  v8(v21, v22);
  (*(v26 + 8))(v20, v27);
  if (!v29)
  {

LABEL_15:
    v45 = *(v1 + 888);
    v46 = *(v1 + 872);
    v47 = *(v1 + 864);
    (*(v46 + 104))(v45, *(v1 + 1280), v47);
    v48 = static MusicPropertySource.== infix(_:_:)();
    (*(v46 + 8))(v45, v47);
    if (v48)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_1000060E4(v49, qword_1012193F8);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v52, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_22;
  }

  *(v1 + 1200) = v29;
  v30 = *(v1 + 248);
  swift_getKeyPath();
  *(v1 + 72) = v73;
  *(v1 + 80) = v29;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v31 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v31(v1 + 16, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
  *(v32 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v32 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v32 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v32 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v32 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v32 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v1 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v30 + v33))
  {
    sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
    v34 = type metadata accessor for MusicCatalogResourceRequestOption();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100EBC6B0;
    (*(v35 + 104))(v37 + v36, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v34);
    MusicCatalogResourceRequest.options.setter();
  }

  v38 = *(v1 + 1280);
  v39 = *(v1 + 952);
  v40 = *(v1 + 936);
  v41 = *(v1 + 880);
  v42 = *(v1 + 864);
  v43 = *(v1 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v40(v41, v43, v42);
  v44 = v39(v41, v42);
  if (v44 != v38)
  {
    if (v44 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v55 = *(v1 + 248);
      v56 = type metadata accessor for Logger();
      sub_1000060E4(v56, qword_1012193F8);
      v57 = v55;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = *(v1 + 936);
        v61 = *(v1 + 888);
        v62 = *(v1 + 864);
        v63 = *(v1 + 248);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v74 = v65;
        *v64 = 136446210;
        v66 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v60(v61, v63 + v66, v62);
        v67 = String.init<A>(describing:)();
        v69 = sub_1000105AC(v67, v68, &v74);

        *(v64 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v58, v59, "Unknown source: %{public}s", v64, 0xCu);
        sub_10000959C(v65);
      }

      (*(*(v1 + 872) + 8))(*(v1 + 880), *(v1 + 864));
    }
  }

  v70 = swift_task_alloc();
  *(v1 + 1216) = v70;
  *v70 = v1;
  v70[1] = sub_1004BF18C;
  v71 = *(v1 + 280);
  v72 = *(v1 + 288);

  return MusicCatalogResourceRequest.response()(v71, v72);
}

uint64_t sub_1004BA51C()
{
  v2 = *v1;
  *(*v1 + 1048) = v0;

  v3 = *(v2 + 928);
  v4 = *(v2 + 920);
  if (v0)
  {
    v5 = sub_1004C03E4;
  }

  else
  {
    v5 = sub_1004BA658;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BA658()
{
  v93 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 472);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  MusicLibraryResponse.items.getter();
  sub_10034DD6C(v3);
  (*(v7 + 8))(v5, v6);
  sub_1000089F8(v3, v4, &unk_101183960, &unk_100EBCF90);
  if ((*(v1 + 48))(v4, 1, v2) == 1)
  {
    v8 = *(v0 + 464);

    sub_1000095E8(v8, &unk_101183960, &unk_100EBCF90);
    (*(*(v0 + 824) + 56))(*(v0 + 728), 1, 1, *(v0 + 816));
    v9 = sub_1004C4124(*(v0 + 728));
    v10 = *(v0 + 728);
    if (!v9)
    {
      v28 = *(v0 + 520);
      v29 = *(v0 + 504);
      v30 = *(v0 + 512);
      v32 = *(v0 + 488);
      v31 = *(v0 + 496);
      v34 = *(v0 + 472);
      v33 = *(v0 + 480);

      sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
      sub_1000095E8(v34, &unk_101183960, &unk_100EBCF90);
      (*(v32 + 8))(v31, v33);
      (*(v30 + 8))(v28, v29);
LABEL_22:

      v68 = *(v0 + 8);

      return v68();
    }

    v11 = *(v0 + 824);
    v12 = *(v0 + 816);
    v13 = *(v0 + 720);
    sub_1000089F8(*(v0 + 728), v13, &unk_101184730, &unk_100ECB920);
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      v14 = *(v0 + 720);
      v15 = *(v0 + 520);
      v16 = *(v0 + 504);
      v17 = *(v0 + 512);
      v19 = *(v0 + 488);
      v18 = *(v0 + 496);
      v21 = *(v0 + 472);
      v20 = *(v0 + 480);
      sub_1000095E8(*(v0 + 728), &unk_101184730, &unk_100ECB920);
      sub_1000095E8(v21, &unk_101183960, &unk_100EBCF90);
      (*(v19 + 8))(v18, v20);
      (*(v17 + 8))(v15, v16);
      sub_1000095E8(v14, &unk_101184730, &unk_100ECB920);
      goto LABEL_15;
    }

    v35 = *(v0 + 824);
    v36 = *(v0 + 728);
    v37 = *(v0 + 720);
    v90 = *(v0 + 520);
    v91 = *(v0 + 816);
    v38 = *(v0 + 512);
    v89 = *(v0 + 504);
    v39 = *(v0 + 488);
    v40 = *(v0 + 496);
    v41 = *(v0 + 472);
    v42 = *(v0 + 480);
    v88 = Album.catalogID.getter();
    v44 = v43;
    sub_1000095E8(v36, &unk_101184730, &unk_100ECB920);
    sub_1000095E8(v41, &unk_101183960, &unk_100EBCF90);
    (*(v39 + 8))(v40, v42);
    (*(v38 + 8))(v90, v89);
    (*(v35 + 8))(v37, v91);
    if (!v44)
    {
LABEL_15:

      v60 = *(v0 + 888);
      v61 = *(v0 + 872);
      v62 = *(v0 + 864);
      (*(v61 + 104))(v60, *(v0 + 1280), v62);
      v63 = static MusicPropertySource.== infix(_:_:)();
      (*(v61 + 8))(v60, v62);
      if (v63)
      {
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_1000060E4(v64, qword_1012193F8);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v67, 2u);
        }

        sub_1004C49FC(0);
      }

      else
      {
        sub_1004C5930();
      }

      goto LABEL_22;
    }

    *(v0 + 1200) = v44;
    v45 = *(v0 + 248);
    swift_getKeyPath();
    *(v0 + 72) = v88;
    *(v0 + 80) = v44;
    sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v46 = MusicCatalogResourceRequest.configuration.modify();
    MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
    v46(v0 + 16, 0);
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100EBEE70;
    sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
    *(v47 + 32) = static PartialMusicProperty<A>.tracks.getter();
    *(v47 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
    *(v47 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
    *(v47 + 56) = static PartialMusicProperty<A>.artists.getter();
    *(v47 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
    *(v47 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
    MusicCatalogResourceRequest.properties.setter();
    v48 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
    *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
    if (*(v45 + v48))
    {
      sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
      v49 = type metadata accessor for MusicCatalogResourceRequestOption();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100EBC6B0;
      (*(v50 + 104))(v52 + v51, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v49);
      MusicCatalogResourceRequest.options.setter();
    }

    v53 = *(v0 + 1280);
    v54 = *(v0 + 952);
    v55 = *(v0 + 936);
    v56 = *(v0 + 880);
    v57 = *(v0 + 864);
    v58 = *(v0 + 240);
    MusicCatalogResourceRequest.prewarmForPlayback.setter();
    v55(v56, v58, v57);
    v59 = v54(v56, v57);
    if (v59 != v53)
    {
      if (v59 == enum case for MusicPropertySource.library(_:))
      {
        sub_1004C5930();
      }

      else
      {
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 248);
        v70 = type metadata accessor for Logger();
        sub_1000060E4(v70, qword_1012193F8);
        v71 = v69;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = *(v0 + 936);
          v75 = *(v0 + 888);
          v76 = *(v0 + 864);
          v77 = *(v0 + 248);
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v92 = v79;
          *v78 = 136446210;
          v80 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
          swift_beginAccess();
          v74(v75, v77 + v80, v76);
          v81 = String.init<A>(describing:)();
          v83 = sub_1000105AC(v81, v82, &v92);

          *(v78 + 4) = v83;
          _os_log_impl(&_mh_execute_header, v72, v73, "Unknown source: %{public}s", v78, 0xCu);
          sub_10000959C(v79);
        }

        (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
      }
    }

    v84 = swift_task_alloc();
    *(v0 + 1216) = v84;
    *v84 = v0;
    v84[1] = sub_1004BF18C;
    v85 = *(v0 + 280);
    v86 = *(v0 + 288);

    return MusicCatalogResourceRequest.response()(v85, v86);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v22 = swift_allocObject();
    *(v0 + 1056) = v22;
    *(v22 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_10118BFD8, &qword_100ECFF40);
    *(v22 + 32) = static PartialMusicProperty<A>.albums.getter();
    v23 = swift_task_alloc();
    *(v0 + 1064) = v23;
    v24 = sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    *v23 = v0;
    v23[1] = sub_1004BB380;
    v25 = *(v0 + 624);
    v26 = *(v0 + 576);
    v27 = *(v0 + 240);

    return MusicItem<>.with(_:preferredSource:)(v25, v22, v27, v26, &protocol witness table for Song, &protocol witness table for Song, v24);
  }
}

uint64_t sub_1004BB380()
{
  v2 = *v1;
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v3 = v2[116];
    v4 = v2[115];
    v5 = sub_1004C0A38;
  }

  else
  {
    v6 = v2[73];
    v7 = v2[72];
    v8 = v2[58];

    v9 = *(v6 + 8);
    v2[135] = v9;
    v2[136] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v8, v7);
    v3 = v2[116];
    v4 = v2[115];
    v5 = sub_1004BB4FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BB4FC(__n128 a1)
{
  v88 = v1;
  v2 = *(v1 + 1080);
  v3 = *(v1 + 656);
  v4 = *(v1 + 648);
  v5 = *(v1 + 624);
  v6 = *(v1 + 576);
  v7 = *(v1 + 560);
  Song.albums.getter();
  v2(v5, v6);
  if ((*(v3 + 48))(v7, 1, v4) == 1)
  {
    sub_1000095E8(*(v1 + 560), &unk_101192990, &unk_100ECFED0);
    (*(*(v1 + 824) + 56))(*(v1 + 728), 1, 1, *(v1 + 816));
  }

  else
  {
    v8 = *(v1 + 656);
    v9 = *(v1 + 648);
    v10 = *(v1 + 560);
    sub_10034DA18(*(v1 + 728));
    (*(v8 + 8))(v10, v9);
  }

  if (!sub_1004C4124(*(v1 + 728)))
  {
    v22 = *(v1 + 728);
    v23 = *(v1 + 520);
    v24 = *(v1 + 504);
    v25 = *(v1 + 512);
    v27 = *(v1 + 488);
    v26 = *(v1 + 496);
    v29 = *(v1 + 472);
    v28 = *(v1 + 480);

    sub_1000095E8(v22, &unk_101184730, &unk_100ECB920);
    sub_1000095E8(v29, &unk_101183960, &unk_100EBCF90);
    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v23, v24);
LABEL_21:

    v63 = *(v1 + 8);

    return v63();
  }

  v11 = *(v1 + 824);
  v12 = *(v1 + 816);
  v13 = *(v1 + 720);
  sub_1000089F8(*(v1 + 728), v13, &unk_101184730, &unk_100ECB920);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    v14 = *(v1 + 720);
    v15 = *(v1 + 520);
    v16 = *(v1 + 504);
    v17 = *(v1 + 512);
    v19 = *(v1 + 488);
    v18 = *(v1 + 496);
    v21 = *(v1 + 472);
    v20 = *(v1 + 480);
    sub_1000095E8(*(v1 + 728), &unk_101184730, &unk_100ECB920);
    sub_1000095E8(v21, &unk_101183960, &unk_100EBCF90);
    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v15, v16);
    sub_1000095E8(v14, &unk_101184730, &unk_100ECB920);
    goto LABEL_14;
  }

  v30 = *(v1 + 824);
  v31 = *(v1 + 728);
  v32 = *(v1 + 720);
  v85 = *(v1 + 520);
  v86 = *(v1 + 816);
  v33 = *(v1 + 512);
  v84 = *(v1 + 504);
  v34 = *(v1 + 488);
  v35 = *(v1 + 496);
  v36 = *(v1 + 472);
  v37 = *(v1 + 480);
  v83 = Album.catalogID.getter();
  v39 = v38;
  sub_1000095E8(v31, &unk_101184730, &unk_100ECB920);
  sub_1000095E8(v36, &unk_101183960, &unk_100EBCF90);
  (*(v34 + 8))(v35, v37);
  (*(v33 + 8))(v85, v84);
  (*(v30 + 8))(v32, v86);
  if (!v39)
  {
LABEL_14:

    v55 = *(v1 + 888);
    v56 = *(v1 + 872);
    v57 = *(v1 + 864);
    (*(v56 + 104))(v55, *(v1 + 1280), v57);
    v58 = static MusicPropertySource.== infix(_:_:)();
    (*(v56 + 8))(v55, v57);
    if (v58)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_1000060E4(v59, qword_1012193F8);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v62, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_21;
  }

  *(v1 + 1200) = v39;
  v40 = *(v1 + 248);
  swift_getKeyPath();
  *(v1 + 72) = v83;
  *(v1 + 80) = v39;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v41 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v41(v1 + 16, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
  *(v42 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v42 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v42 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v42 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v42 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v42 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v43 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v1 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v40 + v43))
  {
    sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
    v44 = type metadata accessor for MusicCatalogResourceRequestOption();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100EBC6B0;
    (*(v45 + 104))(v47 + v46, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v44);
    MusicCatalogResourceRequest.options.setter();
  }

  v48 = *(v1 + 1280);
  v49 = *(v1 + 952);
  v50 = *(v1 + 936);
  v51 = *(v1 + 880);
  v52 = *(v1 + 864);
  v53 = *(v1 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v50(v51, v53, v52);
  v54 = v49(v51, v52);
  if (v54 != v48)
  {
    if (v54 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v65 = *(v1 + 248);
      v66 = type metadata accessor for Logger();
      sub_1000060E4(v66, qword_1012193F8);
      v67 = v65;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = *(v1 + 936);
        v71 = *(v1 + 888);
        v72 = *(v1 + 864);
        v73 = *(v1 + 248);
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v87 = v75;
        *v74 = 136446210;
        v76 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v70(v71, v73 + v76, v72);
        v77 = String.init<A>(describing:)();
        v79 = sub_1000105AC(v77, v78, &v87);

        *(v74 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v68, v69, "Unknown source: %{public}s", v74, 0xCu);
        sub_10000959C(v75);
      }

      (*(*(v1 + 872) + 8))(*(v1 + 880), *(v1 + 864));
    }
  }

  v80 = swift_task_alloc();
  *(v1 + 1216) = v80;
  *v80 = v1;
  v80[1] = sub_1004BF18C;
  v81 = *(v1 + 280);
  v82 = *(v1 + 288);

  return MusicCatalogResourceRequest.response()(v81, v82);
}

uint64_t sub_1004BC0E8()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C10EC;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BC20C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BC20C()
{
  v74 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 552);
  v4 = *(v0 + 408);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  MusicVideo.albums.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v8 = *(v0 + 824);
    v9 = *(v0 + 816);
    v10 = *(v0 + 712);
    sub_1000095E8(*(v0 + 552), &unk_101192990, &unk_100ECFED0);
    (*(v8 + 56))(v10, 1, 1, v9);
  }

  else
  {
    v11 = *(v0 + 656);
    v12 = *(v0 + 648);
    v13 = *(v0 + 552);
    sub_10034DA18(*(v0 + 712));
    (*(v11 + 8))(v13, v12);
  }

  if (!sub_1004C4124(*(v0 + 712)))
  {
    v22 = *(v0 + 712);
    v23 = *(v0 + 416);
    v24 = *(v0 + 360);

    sub_1000095E8(v22, &unk_101184730, &unk_100ECB920);
    v7(v23, v24);
LABEL_22:

    v52 = *(v0 + 8);

    return v52();
  }

  v14 = *(v0 + 824);
  v15 = *(v0 + 816);
  v16 = *(v0 + 704);
  sub_1000089F8(*(v0 + 712), v16, &unk_101184730, &unk_100ECB920);
  v17 = (*(v14 + 48))(v16, 1, v15);
  v18 = *(v0 + 712);
  v19 = *(v0 + 704);
  v20 = *(v0 + 416);
  v21 = *(v0 + 360);
  if (v17 == 1)
  {

    sub_1000095E8(v18, &unk_101184730, &unk_100ECB920);
    v7(v20, v21);
    sub_1000095E8(v19, &unk_101184730, &unk_100ECB920);
    goto LABEL_15;
  }

  v25 = *(v0 + 824);
  v26 = *(v0 + 816);
  v72 = Album.catalogID.getter();
  v28 = v27;
  sub_1000095E8(v18, &unk_101184730, &unk_100ECB920);
  v7(v20, v21);
  (*(v25 + 8))(v19, v26);
  if (!v28)
  {

LABEL_15:
    v44 = *(v0 + 888);
    v45 = *(v0 + 872);
    v46 = *(v0 + 864);
    (*(v45 + 104))(v44, *(v0 + 1280), v46);
    v47 = static MusicPropertySource.== infix(_:_:)();
    (*(v45 + 8))(v44, v46);
    if (v47)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_1000060E4(v48, qword_1012193F8);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v51, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_22;
  }

  *(v0 + 1200) = v28;
  v29 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v72;
  *(v0 + 80) = v28;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v30 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v30(v0 + 16, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
  *(v31 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v31 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v31 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v31 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v31 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v31 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v32 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v29 + v32))
  {
    sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
    v33 = type metadata accessor for MusicCatalogResourceRequestOption();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100EBC6B0;
    (*(v34 + 104))(v36 + v35, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v33);
    MusicCatalogResourceRequest.options.setter();
  }

  v37 = *(v0 + 1280);
  v38 = *(v0 + 952);
  v39 = *(v0 + 936);
  v40 = *(v0 + 880);
  v41 = *(v0 + 864);
  v42 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v39(v40, v42, v41);
  v43 = v38(v40, v41);
  if (v43 != v37)
  {
    if (v43 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 248);
      v55 = type metadata accessor for Logger();
      sub_1000060E4(v55, qword_1012193F8);
      v56 = v54;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 936);
        v60 = *(v0 + 888);
        v61 = *(v0 + 864);
        v62 = *(v0 + 248);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v73 = v64;
        *v63 = 136446210;
        v65 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v59(v60, v62 + v65, v61);
        v66 = String.init<A>(describing:)();
        v68 = sub_1000105AC(v66, v67, &v73);

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v57, v58, "Unknown source: %{public}s", v63, 0xCu);
        sub_10000959C(v64);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v69 = swift_task_alloc();
  *(v0 + 1216) = v69;
  *v69 = v0;
  v69[1] = sub_1004BF18C;
  v70 = *(v0 + 280);
  v71 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v70, v71);
}

uint64_t sub_1004BCD48()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C17D8;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BCE6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BCE6C(__n128 a1)
{
  v70 = v1;
  v2 = *(v1 + 656);
  v3 = *(v1 + 648);
  v4 = *(v1 + 608);
  v5 = *(v1 + 584);
  v6 = *(v1 + 576);
  v7 = *(v1 + 544);
  Song.albums.getter();
  v8 = *(v5 + 8);
  v8(v4, v6);
  if ((*(v2 + 48))(v7, 1, v3) == 1)
  {
    v9 = *(v1 + 544);
    v8(*(v1 + 616), *(v1 + 576));

    v10 = &unk_101192990;
    v11 = &unk_100ECFED0;
LABEL_5:
    sub_1000095E8(v9, v10, v11);
LABEL_6:
    v21 = *(v1 + 888);
    v22 = *(v1 + 872);
    v23 = *(v1 + 864);
    (*(v22 + 104))(v21, *(v1 + 1280), v23);
    v24 = static MusicPropertySource.== infix(_:_:)();
    (*(v22 + 8))(v21, v23);
    if (v24)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000060E4(v25, qword_1012193F8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v28, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v29 = *(v1 + 8);

    return v29();
  }

  v12 = *(v1 + 824);
  v13 = *(v1 + 816);
  v14 = *(v1 + 696);
  v15 = *(v1 + 656);
  v16 = *(v1 + 648);
  v17 = *(v1 + 544);
  sub_10034DA18(v14);
  (*(v15 + 8))(v17, v16);
  v18 = (*(v12 + 48))(v14, 1, v13);
  v9 = *(v1 + 696);
  v19 = *(v1 + 616);
  v20 = *(v1 + 576);
  if (v18 == 1)
  {
    v8(*(v1 + 616), *(v1 + 576));

    v10 = &unk_101184730;
    v11 = &unk_100ECB920;
    goto LABEL_5;
  }

  v31 = *(v1 + 824);
  v32 = *(v1 + 816);
  v33 = Album.catalogID.getter();
  v35 = v34;
  v8(v19, v20);
  (*(v31 + 8))(v9, v32);
  if (!v35)
  {

    goto LABEL_6;
  }

  *(v1 + 1200) = v35;
  v36 = *(v1 + 248);
  swift_getKeyPath();
  *(v1 + 72) = v33;
  *(v1 + 80) = v35;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v37 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v37(v1 + 16, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
  *(v38 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v38 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v38 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v38 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v38 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v38 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v39 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v1 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v36 + v39))
  {
    sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
    v40 = type metadata accessor for MusicCatalogResourceRequestOption();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100EBC6B0;
    (*(v41 + 104))(v43 + v42, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v40);
    MusicCatalogResourceRequest.options.setter();
  }

  v44 = *(v1 + 1280);
  v45 = *(v1 + 952);
  v46 = *(v1 + 936);
  v47 = *(v1 + 880);
  v48 = *(v1 + 864);
  v49 = *(v1 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v46(v47, v49, v48);
  v50 = v45(v47, v48);
  if (v50 != v44)
  {
    if (v50 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v51 = *(v1 + 248);
      v52 = type metadata accessor for Logger();
      sub_1000060E4(v52, qword_1012193F8);
      v53 = v51;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = *(v1 + 936);
        v57 = *(v1 + 888);
        v58 = *(v1 + 864);
        v59 = *(v1 + 248);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v69 = v61;
        *v60 = 136446210;
        v62 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v56(v57, v59 + v62, v58);
        v63 = String.init<A>(describing:)();
        v65 = sub_1000105AC(v63, v64, &v69);

        *(v60 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v54, v55, "Unknown source: %{public}s", v60, 0xCu);
        sub_10000959C(v61);
      }

      (*(*(v1 + 872) + 8))(*(v1 + 880), *(v1 + 864));
    }
  }

  v66 = swift_task_alloc();
  *(v1 + 1216) = v66;
  *v66 = v1;
  v66[1] = sub_1004BF18C;
  v67 = *(v1 + 280);
  v68 = *(v1 + 288);

  return MusicCatalogResourceRequest.response()(v67, v68);
}

uint64_t sub_1004BD8F8()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C1ECC;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BDA1C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BDA1C()
{
  v92 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 424);
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v3);
  (*(v5 + 8))(v4, v6);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v7 = *(v0 + 456);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v12 = *(v0 + 312);
    v13 = *(v0 + 320);

    (*(v13 + 8))(v11, v12);
    (*(v9 + 8))(v8, v10);
    v14 = &unk_101183960;
    v15 = &unk_100EBCF90;
LABEL_7:
    sub_1000095E8(v7, v14, v15);
LABEL_8:
    v43 = *(v0 + 888);
    v44 = *(v0 + 872);
    v45 = *(v0 + 864);
    (*(v44 + 104))(v43, *(v0 + 1280), v45);
    v46 = static MusicPropertySource.== infix(_:_:)();
    (*(v44 + 8))(v43, v45);
    if (v46)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000060E4(v47, qword_1012193F8);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v50, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v51 = *(v0 + 8);

    return v51();
  }

  v16 = *(v0 + 656);
  v17 = *(v0 + 648);
  v18 = *(v0 + 584);
  v19 = *(v0 + 576);
  v20 = *(v0 + 536);
  v21 = *(v0 + 456);
  Song.albums.getter();
  (*(v18 + 8))(v21, v19);
  if ((*(v16 + 48))(v20, 1, v17) == 1)
  {
    v7 = *(v0 + 536);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v26 = *(v0 + 312);
    v27 = *(v0 + 320);

    (*(v27 + 8))(v25, v26);
    (*(v23 + 8))(v22, v24);
    v14 = &unk_101192990;
    v15 = &unk_100ECFED0;
    goto LABEL_7;
  }

  v28 = *(v0 + 824);
  v29 = *(v0 + 816);
  v30 = *(v0 + 688);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  v33 = *(v0 + 536);
  v34 = *(v0 + 344);
  v35 = *(v0 + 320);
  sub_10034DA18(v30);
  (*(v31 + 8))(v33, v32);
  v36 = (*(v28 + 48))(v30, 1, v29);
  v37 = (v35 + 8);
  v38 = (v34 + 8);
  v7 = *(v0 + 688);
  v39 = *(v0 + 352);
  v41 = *(v0 + 328);
  v40 = *(v0 + 336);
  v42 = *(v0 + 312);
  if (v36 == 1)
  {

    (*v37)(v41, v42);
    (*v38)(v39, v40);
    v14 = &unk_101184730;
    v15 = &unk_100ECB920;
    goto LABEL_7;
  }

  v53 = *(v0 + 824);
  v90 = *(v0 + 816);
  v89 = Album.catalogID.getter();
  v55 = v54;
  (*v37)(v41, v42);
  (*v38)(v39, v40);
  (*(v53 + 8))(v7, v90);
  if (!v55)
  {

    goto LABEL_8;
  }

  *(v0 + 1200) = v55;
  v56 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v89;
  *(v0 + 80) = v55;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v57 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v57(v0 + 16, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
  *(v58 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v58 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v58 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v58 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v58 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v58 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v59 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v56 + v59))
  {
    sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
    v60 = type metadata accessor for MusicCatalogResourceRequestOption();
    v61 = *(v60 - 8);
    v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100EBC6B0;
    (*(v61 + 104))(v63 + v62, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v60);
    MusicCatalogResourceRequest.options.setter();
  }

  v64 = *(v0 + 1280);
  v65 = *(v0 + 952);
  v66 = *(v0 + 936);
  v67 = *(v0 + 880);
  v68 = *(v0 + 864);
  v69 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v66(v67, v69, v68);
  v70 = v65(v67, v68);
  if (v70 != v64)
  {
    if (v70 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v71 = *(v0 + 248);
      v72 = type metadata accessor for Logger();
      sub_1000060E4(v72, qword_1012193F8);
      v73 = v71;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = *(v0 + 936);
        v77 = *(v0 + 888);
        v78 = *(v0 + 864);
        v79 = *(v0 + 248);
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v91 = v81;
        *v80 = 136446210;
        v82 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v76(v77, v79 + v82, v78);
        v83 = String.init<A>(describing:)();
        v85 = sub_1000105AC(v83, v84, &v91);

        *(v80 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v74, v75, "Unknown source: %{public}s", v80, 0xCu);
        sub_10000959C(v81);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v86 = swift_task_alloc();
  *(v0 + 1216) = v86;
  *v86 = v0;
  v86[1] = sub_1004BF18C;
  v87 = *(v0 + 280);
  v88 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v87, v88);
}

uint64_t sub_1004BE5E0()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C2524;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BE704;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BE704()
{
  v69 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 528);
  v4 = *(v0 + 392);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  MusicVideo.albums.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v8 = *(v0 + 528);
    v7(*(v0 + 400), *(v0 + 360));

    v9 = &unk_101192990;
    v10 = &unk_100ECFED0;
LABEL_5:
    sub_1000095E8(v8, v9, v10);
LABEL_6:
    v20 = *(v0 + 888);
    v21 = *(v0 + 872);
    v22 = *(v0 + 864);
    (*(v21 + 104))(v20, *(v0 + 1280), v22);
    v23 = static MusicPropertySource.== infix(_:_:)();
    (*(v21 + 8))(v20, v22);
    if (v23)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000060E4(v24, qword_1012193F8);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v27, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v28 = *(v0 + 8);

    return v28();
  }

  v11 = *(v0 + 824);
  v12 = *(v0 + 816);
  v13 = *(v0 + 680);
  v14 = *(v0 + 656);
  v15 = *(v0 + 648);
  v16 = *(v0 + 528);
  sub_10034DA18(v13);
  (*(v14 + 8))(v16, v15);
  v17 = (*(v11 + 48))(v13, 1, v12);
  v8 = *(v0 + 680);
  v18 = *(v0 + 400);
  v19 = *(v0 + 360);
  if (v17 == 1)
  {
    v7(*(v0 + 400), *(v0 + 360));

    v9 = &unk_101184730;
    v10 = &unk_100ECB920;
    goto LABEL_5;
  }

  v30 = *(v0 + 824);
  v31 = *(v0 + 816);
  v32 = Album.catalogID.getter();
  v34 = v33;
  v7(v18, v19);
  (*(v30 + 8))(v8, v31);
  if (!v34)
  {

    goto LABEL_6;
  }

  *(v0 + 1200) = v34;
  v35 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v32;
  *(v0 + 80) = v34;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v36 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v36(v0 + 16, 0);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
  *(v37 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v37 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v37 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v37 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v37 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v37 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v38 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v35 + v38))
  {
    sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
    v39 = type metadata accessor for MusicCatalogResourceRequestOption();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100EBC6B0;
    (*(v40 + 104))(v42 + v41, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v39);
    MusicCatalogResourceRequest.options.setter();
  }

  v43 = *(v0 + 1280);
  v44 = *(v0 + 952);
  v45 = *(v0 + 936);
  v46 = *(v0 + 880);
  v47 = *(v0 + 864);
  v48 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v45(v46, v48, v47);
  v49 = v44(v46, v47);
  if (v49 != v43)
  {
    if (v49 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 248);
      v51 = type metadata accessor for Logger();
      sub_1000060E4(v51, qword_1012193F8);
      v52 = v50;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 936);
        v56 = *(v0 + 888);
        v57 = *(v0 + 864);
        v58 = *(v0 + 248);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v68 = v60;
        *v59 = 136446210;
        v61 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v55(v56, v58 + v61, v57);
        v62 = String.init<A>(describing:)();
        v64 = sub_1000105AC(v62, v63, &v68);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v53, v54, "Unknown source: %{public}s", v59, 0xCu);
        sub_10000959C(v60);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v65 = swift_task_alloc();
  *(v0 + 1216) = v65;
  *v65 = v0;
  v65[1] = sub_1004BF18C;
  v66 = *(v0 + 280);
  v67 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v66, v67);
}

uint64_t sub_1004BF18C()
{
  v2 = *v1;
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C2C10;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BF2B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BF2B0()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[37];
  v12 = v0[38];
  v5 = v0[35];
  v10 = v0[81];
  v11 = v0[36];
  v7 = v0[32];
  v6 = v0[33];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v1);
  (*(v3 + 8))(v2, v10);
  sub_1004C4524(v1);
  sub_1000095E8(v1, &unk_101184730, &unk_100ECB920);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BF694()
{
  v28 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);

  (*(v2 + 8))(v1, v3);
  v4 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012193F8);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 992);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = MusicItemID.description.getter();
    v13 = v12;

    v14 = sub_1000105AC(v11, v13, v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 224) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, v27);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve library album from id %{public}s with error=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    v4 = qword_10117F000;
  }

  else
  {
  }

  v18 = *(v0 + 888);
  v19 = *(v0 + 872);
  v20 = *(v0 + 864);
  (*(v19 + 104))(v18, *(v0 + 1280), v20);
  v21 = static MusicPropertySource.== infix(_:_:)();
  (*(v19 + 8))(v18, v20);
  if (v21)
  {
    if (v4[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v5, qword_1012193F8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v24, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1004BFCF0()
{
  v37 = v0;

  v1 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 640);
  v3 = *(v0 + 600);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1016);
  v10 = *(v0 + 640);
  v11 = *(v0 + 600);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 216) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve library album from the initializing song %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = qword_10117F000;

    v18(v34, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C03E4()
{
  v27 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 1048);
  v5 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_1012193F8);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v9 = 136446466;
    v10 = MusicItemID.description.getter();
    v12 = v11;

    v13 = sub_1000105AC(v10, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 208) = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, v26);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to retrieve library album from the initializing song ID %{public}s with error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    v5 = qword_10117F000;
  }

  else
  {
  }

  v17 = *(v0 + 888);
  v18 = *(v0 + 872);
  v19 = *(v0 + 864);
  (*(v18 + 104))(v17, *(v0 + 1280), v19);
  v20 = static MusicPropertySource.== infix(_:_:)();
  (*(v18 + 8))(v17, v19);
  if (v20)
  {
    if (v5[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v6, qword_1012193F8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v23, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1004C0A38()
{
  v34 = v0;
  v1 = *(v0 + 584);
  v32 = *(v0 + 576);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 496);
  v8 = *(v0 + 472);
  v7 = *(v0 + 480);
  v9 = *(v0 + 464);

  sub_1000095E8(v8, &unk_101183960, &unk_100EBCF90);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v9, v32);
  v10 = *(v0 + 1072);
  v11 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_1012193F8);

  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136446466;
    v16 = MusicItemID.description.getter();
    v18 = v17;

    v19 = sub_1000105AC(v16, v18, v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v0 + 208) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v33);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to retrieve library album from the initializing song ID %{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v11 = qword_10117F000;
  }

  else
  {
  }

  v23 = *(v0 + 888);
  v24 = *(v0 + 872);
  v25 = *(v0 + 864);
  (*(v24 + 104))(v23, *(v0 + 1280), v25);
  v26 = static MusicPropertySource.== infix(_:_:)();
  (*(v24 + 8))(v23, v25);
  if (v26)
  {
    if (v11[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v12, qword_1012193F8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v29, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1004C10EC()
{
  v37 = v0;

  v1 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 416);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 416);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_1011927B0, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v13 + 8);
    v18(v11, v12);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 200) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve library album from the initializing musicVideo %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = qword_10117F000;

    v18(v34, v12);
  }

  else
  {

    v23 = *(v13 + 8);
    v23(v11, v12);
    v23(v10, v12);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C17D8()
{
  v37 = v0;

  v1 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 616);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1136);
  v10 = *(v0 + 616);
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 192) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve catalog album from the initializing song %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = qword_10117F000;

    v18(v34, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C1ECC()
{
  v28 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);

  (*(v2 + 8))(v1, v3);
  v4 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012193F8);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1168);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = MusicItemID.description.getter();
    v13 = v12;

    v14 = sub_1000105AC(v11, v13, v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 184) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, v27);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve catalog album from the initializing song id %{public}s with error=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    v4 = qword_10117F000;
  }

  else
  {
  }

  v18 = *(v0 + 888);
  v19 = *(v0 + 872);
  v20 = *(v0 + 864);
  (*(v19 + 104))(v18, *(v0 + 1280), v20);
  v21 = static MusicPropertySource.== infix(_:_:)();
  (*(v19 + 8))(v18, v20);
  if (v21)
  {
    if (v4[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v5, qword_1012193F8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v24, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1004C2524()
{
  v37 = v0;

  v1 = qword_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 400);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v3 + 16))(v4, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1192);
  v10 = *(v0 + 400);
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v13 = *(v0 + 360);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_1011927B0, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 136) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve catalog album from the initializing musicVideo %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = qword_10117F000;

    v18(v34, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C2C10()
{
  v70 = v0;
  *(v0 + 144) = *(v0 + 1224);
  swift_errorRetain();
  *(v0 + 1232) = sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  *(v0 + 1240) = sub_100009F78(0, &qword_1011929C0, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v1 = *(v0 + 1208);
  v2 = *(v0 + 248);
  v3 = *(v0 + 152);
  *(v0 + 1248) = v3;
  if (*(v2 + v1))
  {
    v4 = v3;
LABEL_15:
    v32 = *(v0 + 1280);
    v33 = *(v0 + 888);
    v34 = *(v0 + 872);
    v35 = *(v0 + 864);

    (*(v34 + 104))(v33, v32, v35);
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
        v69[0] = v42;
        *v41 = 136446210;
        v43 = v38;
        v44 = [v43 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_1000105AC(v45, v47, v69);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve catalog album with error=%{public}s", v41, 0xCu);
        sub_10000959C(v42);
      }

      v50 = *(v0 + 296);
      v49 = *(v0 + 304);
      v51 = *(v0 + 288);
      v52 = v38;
      sub_1004C49FC(v38);

      (*(v50 + 8))(v49, v51);

LABEL_27:

      v66 = *(v0 + 8);

      return v66();
    }

LABEL_22:

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
    v57 = *(v0 + 1224);
    v58 = *(v0 + 296);
    v59 = *(v0 + 304);
    v60 = *(v0 + 288);
    if (v56)
    {
      v68 = *(v0 + 304);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69[0] = v62;
      *v61 = 136446210;
      *(v0 + 160) = v57;
      swift_errorRetain();
      v63 = String.init<A>(describing:)();
      v65 = sub_1000105AC(v63, v64, v69);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to retrieve catalog album with error=%{public}s", v61, 0xCu);
      sub_10000959C(v62);

      (*(v58 + 8))(v68, v60);
    }

    else
    {

      (*(v58 + 8))(v59, v60);
    }

    goto LABEL_27;
  }

  v5 = *(v0 + 888);
  v6 = *(v0 + 872);
  v7 = *(v0 + 864);
  (*(v6 + 104))(v5, *(v0 + 1280), v7);
  v8 = v3;
  v9 = static MusicPropertySource.== infix(_:_:)();
  (*(v6 + 8))(v5, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  *(v0 + 1256) = sub_1000060E4(v10, qword_1012193F8);
  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v69[0] = v15;
    *v14 = 136446210;
    v16 = v11;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_1000105AC(v18, v20, v69);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to retrieve catalog album with error=%{public}s", v14, 0xCu);
    sub_10000959C(v15);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Attempting request including equivalents.", v24, 2u);
  }

  sub_10010FC20(&qword_1011929C8, &qword_100ECFF10);
  v25 = type metadata accessor for MusicCatalogResourceRequestOption();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  (*(v26 + 104))(v28 + v27, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v25);
  MusicCatalogResourceRequest.options.setter();
  v29 = swift_task_alloc();
  *(v0 + 1264) = v29;
  *v29 = v0;
  v29[1] = sub_1004C36F0;
  v30 = *(v0 + 288);
  v31 = *(v0 + 272);

  return MusicCatalogResourceRequest.response()(v31, v30);
}

uint64_t sub_1004C36F0()
{
  v2 = *v1;
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C3C18;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C3820;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004C3820()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v10 = v0[81];
  v11 = v0[156];
  v4 = v0[37];
  v12 = v0[36];
  v13 = v0[38];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[32];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v1);
  (*(v3 + 8))(v2, v10);
  sub_1004C4524(v1);

  sub_1000095E8(v1, &unk_101184730, &unk_100ECB920);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004C3C18()
{
  v20 = v0;
  *(v0 + 168) = *(v0 + 1272);
  swift_errorRetain();
  result = swift_dynamicCast();
  if (result)
  {

    v2 = *(v0 + 176);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = v2;
      v8 = [v7 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_1000105AC(v9, v11, &v19);

      *(v5 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve catalog album when attempting to include equivalents with error=%{public}s", v5, 0xCu);
      sub_10000959C(v6);
    }

    v13 = *(v0 + 1248);
    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v16 = *(v0 + 288);
    v17 = v2;
    sub_1004C49FC(v2);

    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

BOOL sub_1004C4124(uint64_t a1)
{
  v3 = type metadata accessor for MusicPropertySource();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v27 - v7;
  __chkstk_darwin();
  v10 = &v27 - v9;
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v10, &unk_101184730, &unk_100ECB920);
  v15 = (*(v12 + 48))(v10, 1, v11);
  if (v15 == 1)
  {
    sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
    if (*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback) == 1)
    {
      v23 = v28;
      v22 = v29;
      v24 = v30;
      (*(v29 + 104))(v28, enum case for MusicPropertySource.catalog(_:), v30);
      v25 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
      swift_beginAccess();
      (*(v22 + 40))(v1 + v25, v23, v24);
      swift_endAccess();
      sub_1004AEA08();
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 16))(v8, v14, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v1 + v16, v6, &unk_101184730, &unk_100ECB920);
    swift_beginAccess();
    sub_1002190E0(v8, v1 + v16, &unk_101184730, &unk_100ECB920);
    swift_endAccess();
    sub_1004B2480(v6);
    sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
    sub_1000095E8(v8, &unk_101184730, &unk_100ECB920);
    v17 = Album.catalogID.getter();
    v18 = (v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
    v19 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
    v20 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
    *v18 = v17;
    v18[1] = v21;
    sub_1004ABC24(v19, v20);

    (*(v12 + 8))(v14, v11);
  }

  return v15 != 1;
}

void sub_1004C4524(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for MusicPropertySource();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v25 - v5;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v25 - v8;
  __chkstk_darwin();
  v11 = &v25 - v10;
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v26 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(v25, v11, &unk_101184730, &unk_100ECB920);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101184730, &unk_100ECB920);
    v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    v16 = v28;
    (*(v3 + 16))(v28, v1 + v15, v2);
    v17 = v27;
    (*(v3 + 104))(v27, enum case for MusicPropertySource.catalog(_:), v2);
    LOBYTE(v15) = static MusicPropertySource.== infix(_:_:)();
    v18 = *(v3 + 8);
    v18(v17, v2);
    v18(v16, v2);
    if (v15)
    {
      sub_1004C49FC(0);
    }
  }

  else
  {
    v19 = v26;
    (*(v13 + 32))(v26, v11, v12);
    (*(v13 + 16))(v9, v19, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v20 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    sub_1000089F8(v1 + v20, v7, &unk_101184730, &unk_100ECB920);
    swift_beginAccess();
    sub_1002190E0(v9, v1 + v20, &unk_101184730, &unk_100ECB920);
    swift_endAccess();
    sub_1004D53B8(v7);
    sub_1000095E8(v7, &unk_101184730, &unk_100ECB920);
    sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
    v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    v22 = v28;
    (*(v3 + 16))(v28, v1 + v21, v2);
    v23 = v27;
    (*(v3 + 104))(v27, enum case for MusicPropertySource.catalog(_:), v2);
    LOBYTE(v21) = static MusicPropertySource.== infix(_:_:)();
    v24 = *(v3 + 8);
    v24(v23, v2);
    v24(v22, v2);
    if (v21)
    {
      sub_1004ADB28(0);
      sub_1004C5930();
    }

    (*(v13 + 8))(v26, v12);
  }
}

void sub_1004C49FC(void *a1)
{
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012193F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Displaying catalog album error view.", v5, 2u);
  }

  if (a1)
  {
    v6 = a1;
    v7 = [v6 userInfo];
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v8 + 16))
    {
      v11 = sub_100019C10(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_10000DD18(*(v8 + 56) + 32 * v11, v17);

        if ((swift_dynamicCast() & 1) != 0 && (v16 - 400) <= 0x63)
        {
          sub_1004C4C94(0xC000000000000001, 0, 0);
LABEL_17:

          return;
        }

LABEL_16:
        v14 = sub_1004AD6D0();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1004C4C94(v14 & 1, sub_1004E9958, v15);

        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_1004C4C94(0xC000000000000001, 0, 0);
}

void sub_1004C4C94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v9 = v27 - v8 + 22;
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v3 + v10, v9, &unk_101184730, &unk_100ECB920);
  v11 = type metadata accessor for Album();
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
  if (v10 != 1)
  {
LABEL_7:
    sub_10011896C(a1, a2, a3);
    goto LABEL_8;
  }

  v12 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v12 == 2)
    {
      a2 = 0;
      a3 = 0;
      a1 = 0x8000000000000001;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v12)
  {
    a2 = 0;
    a3 = 0;
    a1 = a1 & 0x100 | 0x4000000000000001;
  }

  else
  {

    a1 = 1;
  }

LABEL_8:
  v13 = (v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v14 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v15 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8);
  v16 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 16);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  sub_10011896C(a1, a2, a3);
  sub_1004AC798(v14, v15, v16);
  sub_1004E5BA4(v14, v15, v16);
  sub_1004E5B90(a1, a2, a3);
  v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v17, v27, &unk_1011926C0, &unk_100ECF870);
  if (v28)
  {
    sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v19 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
      [*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
      v20 = *&Strong[v19];
      *&Strong[v19] = 0;
    }
  }

  v21 = *v13;
  if (*v13 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL && (v21 >> 62 == 3 || (v21))
  {
    sub_1000089F8(v4 + v17, v27, &unk_1011926C0, &unk_100ECF870);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v22 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
      if (v22)
      {
        sub_10069F9B8();

        sub_1005587C8(v23);
      }
    }

    *(v4 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
    sub_1004C97D0(0);
    sub_1000089F8(v4 + v17, v27, &unk_1011926C0, &unk_100ECF870);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v24 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
      if (v24)
      {
        sub_10069F67C();
      }
    }

    sub_1000089F8(v4 + v17, v27, &unk_1011926C0, &unk_100ECF870);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0, &unk_100ECF870);
      if (v25)
      {
        [v25 setNeedsUpdateContentUnavailableConfiguration];
      }
    }
  }

  else
  {
    sub_1004C97D0(0);
  }
}

uint64_t sub_1004C50FC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a1;
  v57 = a2;
  v4 = type metadata accessor for Composer();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Genre();
  v47 = *(v51 - 8);
  __chkstk_darwin();
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  __chkstk_darwin();
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v44 - v8;
  v9 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v56 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v44 - v10;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v13 = &v44 - v12;
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v55 = v3;
  v19 = v3 + v18;
  v20 = v15;
  sub_1000089F8(v19, v13, &unk_101184730, &unk_100ECB920);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();
    swift_getKeyPath();
    v60 = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    v25 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
    v26 = v55;
    swift_beginAccess();
    v27 = v54;
    sub_1000089F8(v26 + v25, v54, &unk_1011926F0, &qword_100ECF890);
    v28 = _s6AlbumsV5ScopeOMa(0);
    v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
    v45 = v17;
    v24 = v9;
    if (v29 != 1)
    {
      v30 = v52;
      sub_1000089F8(v27, v52, &unk_1011926F0, &qword_100ECF890);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v34 = v48;
        v35 = v49;
        v36 = v11;
        v37 = v24;
        v38 = v50;
        (*(v49 + 32))(v48, v30, v50);
        swift_getKeyPath();
        MusicLibrarySectionedRequest<>.filterItems<A>(matching:contains:)();

        v39 = v38;
        v24 = v37;
        v11 = v36;
        (*(v35 + 8))(v34, v39);
      }

      else if (EnumCaseMultiPayload)
      {
        sub_1004E414C(v30, _s6AlbumsV5ScopeOMa);
      }

      else
      {
        v32 = v47;
        v33 = v46;
        (*(v47 + 32))(v46, v30, v51);
        swift_getKeyPath();
        MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

        (*(v32 + 8))(v33, v51);
      }
    }

    sub_1000095E8(v27, &unk_1011926F0, &qword_100ECF890);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    v40 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v26 + v40, &v58, &unk_1011926C0, &unk_100ECF870);
    if (v59)
    {
      sub_1000095E8(&v58, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v58, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v42 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

LABEL_14:
        v22 = v57;
        MusicLibrarySectionedRequest.library.setter();
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
        MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
        (*(v20 + 8))(v45, v14);
        v23 = v56;
        (*(v56 + 32))(v22, v11, v24);
        v21 = 0;
        return (*(v23 + 56))(v22, v21, 1, v24);
      }
    }

    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    goto LABEL_14;
  }

  sub_1000095E8(v13, &unk_101184730, &unk_100ECB920);
  v21 = 1;
  v23 = v56;
  v22 = v57;
  v24 = v9;
  return (*(v23 + 56))(v22, v21, 1, v24);
}

void sub_1004C5930()
{
  v1 = type metadata accessor for MusicPropertySource();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v20[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v8 = *(v2 + 16);
  v8(v6, &v0[v7], v1);
  v9 = (*(v2 + 88))(v6, v1);
  if (v9 == enum case for MusicPropertySource.catalog(_:))
  {
    sub_1004C5BFC();
  }

  else if (v9 == enum case for MusicPropertySource.library(_:))
  {
    sub_1004C6854();
  }

  else
  {
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_1012193F8);
    v22 = v0;
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v13;
      v16 = v15;
      v23 = v15;
      *v14 = 136446210;
      v8(v4, &v22[v7], v1);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000105AC(v17, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v21, "Unknown source: %{public}s", v14, 0xCu);
      sub_10000959C(v16);
    }

    (*(v2 + 8))(v6, v1);
  }
}

double sub_1004C5BFC()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v35 = v30 - v2;
  v37 = sub_10010FC20(&qword_1011928F8, &unk_100EE2340);
  v34 = *(v37 - 8);
  __chkstk_darwin();
  v33 = v30 - v3;
  v36 = sub_10010FC20(&qword_101192900, &unk_100ECFD20);
  v39 = *(v36 - 8);
  __chkstk_darwin();
  v5 = v30 - v4;
  v40 = sub_10010FC20(&qword_101192908, &qword_100EE2350);
  v38 = *(v40 - 8);
  __chkstk_darwin();
  v7 = v30 - v6;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v9 = v30 - v8;
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v14, v9, &unk_101184730, &unk_100ECB920);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v16 = *(v11 + 32);
    v32 = v13;
    v16(v13, v9, v10);
    sub_10010FC20(&qword_101192910, &qword_100ECFD30);
    v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100EBC6B0;
    (*(v11 + 16))(v18 + v17, v13, v10);
    sub_1004E41B4(&qword_101192918, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    v31 = v7;
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_101192920, &qword_101192908, &qword_100EE2350, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v20 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse);
    *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse) = v19 | 0x8000000000000000;
    v30[1] = v19;

    sub_1004E6028(v20);
    v21 = v33;
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v41 = v22;
    v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v24 = v35;
    (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
    sub_100020674(&qword_101192928, &qword_1011928F8, &unk_100EE2340, &protocol conformance descriptor for Published<A>.Publisher);
    v25 = v39;
    v30[0] = v1;
    sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v26 = v37;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v24, &qword_101182140, &unk_100EBD2A0);

    (*(v34 + 8))(v21, v26);
    swift_allocObject();
    v27 = v30[0];
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_101192930, &qword_101192900, &unk_100ECFD20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v28 = v36;
    v29 = Publisher<>.sink(receiveValue:)();

    (*(v25 + 8))(v5, v28);
    (*(v38 + 8))(v31, v40);
    (*(v11 + 8))(v32, v10);
    *(v27 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription) = v29;
  }

  return result;
}

void sub_1004C62D4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v4 = &v30 - v3;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v30 - v6;
  sub_10010FC20(&qword_101192938, &qword_100ECFD38);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_10010FC20(&qword_101192940, &qword_100ECFD40);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v13 = type metadata accessor for Album();
  v32 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v30 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v30 = v13;
    v31 = v4;
    sub_1000089F8(a1, v8, &qword_101192938, &qword_100ECFD38);
    v20 = sub_10010FC20(&qword_101192948, &qword_100ECFD48);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v8, 1, v20) == 1)
    {

      sub_1000095E8(v8, &qword_101192938, &qword_100ECFD38);
    }

    else
    {
      v22 = MusicLibraryMapping.Response.mappedItems.getter();
      (*(v21 + 8))(v8, v20);
      if (*(v22 + 16))
      {
        (*(v10 + 16))(v12, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

        MusicLibraryMapping.MappedItem.item.getter();
        (*(v10 + 8))(v12, v9);
        v23 = v32;
        v24 = v30;
        (*(v32 + 32))(v17, v15, v30);
        v25 = v33;
        (*(v23 + 16))(v33, v17, v24);
        (*(v23 + 56))(v25, 0, 1, v24);
        v26 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        v27 = v34;
        sub_1000089F8(v19 + v26, v34, &unk_101184730, &unk_100ECB920);
        swift_beginAccess();
        sub_1002190E0(v25, v19 + v26, &unk_101184730, &unk_100ECB920);
        swift_endAccess();
        sub_1004B2480(v27);
        sub_1000095E8(v27, &unk_101184730, &unk_100ECB920);
        sub_1000095E8(v25, &unk_101184730, &unk_100ECB920);
        v28 = v31;
        Album.tracks.getter();
        v29 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
        swift_beginAccess();
        sub_1002190E0(v28, v19 + v29, &unk_1011842D0, &qword_100ECBF00);
        swift_endAccess();
        sub_1004CD200();
        sub_1000095E8(v28, &unk_1011842D0, &qword_100ECBF00);
        sub_1004CE888(v17);

        (*(v23 + 8))(v17, v24);
      }

      else
      {
      }
    }
  }
}

double sub_1004C6854()
{
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v108 = &v93 - v1;
  v109 = sub_10010FC20(&qword_101192888, &unk_100ECFBB0);
  v107 = *(v109 - 8);
  __chkstk_darwin();
  v106 = &v93 - v2;
  v110 = sub_10010FC20(&qword_101192890, &qword_100EE2260);
  v3 = *(v110 - 8);
  __chkstk_darwin();
  v5 = &v93 - v4;
  v97 = sub_10010FC20(&unk_101191A70, &unk_100EBF360);
  __chkstk_darwin();
  v96 = &v93 - v6;
  v104 = type metadata accessor for Album();
  v103 = *(v104 - 8);
  __chkstk_darwin();
  v101 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v93 - v8;
  v98 = sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v102 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v93 - v10;
  sub_10010FC20(&qword_1011927E0, &qword_100ECF9B8);
  __chkstk_darwin();
  v13 = &v93 - v12;
  v14 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v99 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v93 - v17;
  __chkstk_darwin();
  v20 = &v93 - v19;
  sub_1004C50FC(0, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &qword_1011927E0, &qword_100ECF9B8);
  }

  else
  {
    v94 = v5;
    v95 = v3;
    v105 = v15;
    v22 = *(v15 + 32);
    v112 = v14;
    v22(v20, v13, v14);
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v113 = sub_1000060E4(v23, qword_1012193F8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "╭ Kicking off library request", v26, 2u);
    }

    v27 = v0;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v100 = v27;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v117[0] = v32;
      *v31 = 136446210;
      v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      sub_1000089F8(&v27[v33], v11, &unk_101184730, &unk_100ECB920);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000105AC(v34, v35, v117);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "| Album: %{public}s", v31, 0xCu);
      sub_10000959C(v32);
    }

    v37 = v105;
    v38 = *(v105 + 16);
    v39 = v112;
    v38(v18, v20, v112);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v93 = v20;
    if (v42)
    {
      v43 = v39;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v117[0] = v45;
      *v44 = 136446210;
      v38(v99, v18, v43);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v99 = *(v37 + 8);
      (v99)(v18, v43);
      v49 = sub_1000105AC(v46, v48, v117);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "| Request: %{public}s", v44, 0xCu);
      sub_10000959C(v45);
    }

    else
    {

      v99 = *(v37 + 8);
      (v99)(v18, v39);
    }

    v50 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v51 = v100;
    swift_beginAccess();
    v52 = &v51[v50];
    v53 = v102;
    sub_1000089F8(v52, v102, &unk_101184730, &unk_100ECB920);
    v54 = v103;
    v55 = v104;
    v56 = (*(v103 + 48))(v53, 1, v104);
    v57 = v111;
    if (v56 == 1)
    {
      sub_1000095E8(v53, &unk_101184730, &unk_100ECB920);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "╰ Add Status: Unknown", v60, 2u);
      }

      v61 = v93;
    }

    else
    {
      (*(v54 + 32))(v111, v53, v55);
      v62 = v101;
      (*(v54 + 16))(v101, v57, v55);
      v63 = v51;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v116 = v67;
        *v66 = 136446210;
        v68 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
        swift_beginAccess();
        sub_1000089F8(&v63[v68], &v114, &unk_1011926C0, &unk_100ECF870);
        if (v115)
        {
          sub_1000095E8(&v114, &unk_1011926C0, &unk_100ECF870);
          v69 = 1;
          v70 = v96;
          v71 = v101;
        }

        else
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&v114, &unk_1011926C0, &unk_100ECF870);
          v70 = v96;
          v71 = v101;
          if (Strong)
          {
            v74 = [Strong traitCollection];
            sub_100137E8C();
            UITraitCollection.subscript.getter();

            MusicLibrary.state<A>(for:)();

            dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

            v69 = 0;
          }

          else
          {
            v69 = 1;
          }
        }

        v75 = type metadata accessor for MusicLibrary.AddStatus();
        (*(*(v75 - 8) + 56))(v70, v69, 1, v75);
        v76 = String.init<A>(describing:)();
        v78 = v77;
        v79 = *(v54 + 8);
        v79(v71, v55);
        v80 = sub_1000105AC(v76, v78, &v116);

        *(v66 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v64, v65, "╰ Add Status: %{public}s", v66, 0xCu);
        sub_10000959C(v67);

        v79(v111, v55);
      }

      else
      {

        v72 = *(v54 + 8);
        v72(v62, v55);
        v72(v57, v55);
      }

      v61 = v93;
      v51 = v100;
    }

    sub_100020674(&qword_101192898, &qword_101188E88, &unk_100ECBD70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v81 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v82 = *&v51[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse];
    *&v51[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse] = v81;

    sub_1004E6028(v82);
    v83 = v106;
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v84 = static OS_dispatch_queue.main.getter();
    v114 = v84;
    v85 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v86 = v108;
    (*(*(v85 - 8) + 56))(v108, 1, 1, v85);
    sub_100020674(&qword_1011928A0, &qword_101192888, &unk_100ECFBB0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v87 = v94;
    v88 = v109;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v86, &qword_101182140, &unk_100EBD2A0);

    (*(v107 + 8))(v83, v88);
    v89 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v81;
    sub_100020674(&qword_1011928A8, &qword_101192890, &qword_100EE2260, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v91 = v110;
    v92 = Publisher<>.sink(receiveValue:)();

    (*(v95 + 8))(v87, v91);
    (v99)(v61, v112);
    *&v51[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription] = v92;
  }

  return result;
}

void sub_1004C774C(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v2 = type metadata accessor for MusicPropertySource();
  v100 = *(v2 - 8);
  v101 = v2;
  __chkstk_darwin();
  v99 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v96 - v4;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v104 = &v96 - v6;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v102 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v96 - v8;
  v10 = type metadata accessor for Album();
  v105 = *(v10 - 8);
  v106 = v10;
  __chkstk_darwin();
  v103 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v96 - v12;
  __chkstk_darwin();
  v15 = &v96 - v14;
  sub_10010FC20(&qword_1011928B0, &unk_100ECFBC0);
  __chkstk_darwin();
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v96 - v18;
  sub_10010FC20(&qword_1011928B8, &unk_100EE2320);
  __chkstk_darwin();
  v21 = &v96 - v20;
  v109 = sub_10010FC20(&qword_1011928C0, &unk_100ECFBD0);
  v107 = *(v109 - 8);
  __chkstk_darwin();
  v23 = &v96 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter() & 1) == 0)
  {

    return;
  }

  v97 = v5;
  v98 = v25;
  sub_1000089F8(v108, v19, &qword_1011928B0, &unk_100ECFBC0);
  v26 = sub_10010FC20(&qword_1011928C8, &unk_100EE2330);
  v27 = *(v26 - 8);
  v28 = &unk_101218000;
  if ((*(v27 + 48))(v19, 1, v26) == 1)
  {
    sub_1000095E8(v19, &qword_1011928B0, &unk_100ECFBC0);
    (*(v107 + 56))(v21, 1, 1, v109);
    v29 = v98;
  }

  else
  {
    v96 = v23;
    v30 = MusicLibrarySectionedResponse.sections.getter();
    (*(v27 + 8))(v19, v26);
    if (*(v30 + 16))
    {
      v31 = v107;
      v32 = v109;
      (*(v107 + 16))(v21, v30 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v109);
      v33 = 0;
      v34 = v98;
    }

    else
    {
      v33 = 1;
      v34 = v98;
      v32 = v109;
      v31 = v107;
    }

    (*(v31 + 56))(v21, v33, 1, v32);
    v29 = v34;
    v28 = &unk_101218000;
    if ((*(v31 + 48))(v21, 1, v32) != 1)
    {
      v55 = v96;
      (*(v31 + 32))(v96, v21, v32);
      v56 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent;
      v57 = v29;
      if (v29[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent] != 1 || (v58 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount, *&v29[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount]) || (MusicLibrarySection.item.getter(), v84 = Album.downloadedTrackCount.getter(), v86 = v85, v87 = v15, v88 = *(v105 + 8), v88(v87, v106), (v86 & 1) != 0) || v84 < 1)
      {
        v57[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback] = 0;
        v59 = v109;
        MusicLibrarySection.item.getter();
        v60 = v105;
        (*(v105 + 56))(v9, 0, 1, v106);
        v61 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        v62 = v102;
        sub_1000089F8(&v57[v61], v102, &unk_101184730, &unk_100ECB920);
        swift_beginAccess();
        sub_1002190E0(v9, &v57[v61], &unk_101184730, &unk_100ECB920);
        swift_endAccess();
        sub_1004B2480(v62);
        sub_1000095E8(v62, &unk_101184730, &unk_100ECB920);
        sub_1000095E8(v9, &unk_101184730, &unk_100ECB920);
        if (v57[v56] == 1 && !*&v57[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount])
        {
          type metadata accessor for Track();
          v63 = v104;
          MusicItemCollection.init(arrayLiteral:)();
        }

        else
        {
          v63 = v104;
          MusicLibrarySection.items.getter();
        }

        v64 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
        (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
        v65 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
        swift_beginAccess();
        sub_1002190E0(v63, &v57[v65], &unk_1011842D0, &qword_100ECBF00);
        swift_endAccess();
        sub_1004CD200();
        sub_1000095E8(v63, &unk_1011842D0, &qword_100ECBF00);
        v66 = v103;
        MusicLibrarySection.item.getter();
        sub_1004CE888(v66);
        (*(v60 + 8))(v66, v106);
        v67 = type metadata accessor for TaskPriority();
        v68 = v55;
        v69 = v97;
        (*(*(v67 - 8) + 56))(v97, 1, 1, v67);
        type metadata accessor for MainActor();
        v70 = v57;
        v71 = static MainActor.shared.getter();
        v72 = swift_allocObject();
        v72[2] = v71;
        v72[3] = &protocol witness table for MainActor;
        v72[4] = v70;
        sub_1001F4CB8(0, 0, v69, &unk_100ECFBE8, v72);

        (*(v107 + 8))(v68, v59);
      }

      else
      {
        v89 = v55;
        v90 = v109;
        MusicLibrarySection.item.getter();
        v91 = Album.downloadedTrackCount.getter();
        v93 = v92;
        v88(v13, v106);
        if (v93)
        {
          v94 = 0;
        }

        else
        {
          v94 = v91;
        }

        *&v57[v58] = v94;
        v95 = *&v57[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse];
        if ((~v95 & 0xF000000000000007) != 0)
        {
          if (v95 < 0)
          {

            (*(v107 + 8))(v96, v109);
          }

          else
          {
            swift_allocObject();
            swift_unknownObjectWeakInit();

            dispatch thunk of MusicAutoupdatingResponse.update(_:)();
            sub_1004E6028(v95);

            (*(v107 + 8))(v96, v109);
          }
        }

        else
        {

          (*(v107 + 8))(v89, v90);
        }
      }

      return;
    }
  }

  sub_1000095E8(v21, &qword_1011928B8, &unk_100EE2320);
  v35 = v29;
  if ((v29[v28[463]] & 1) != 0 && *&v29[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount] >= 1)
  {
    *&v29[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount] = 0;
    v36 = *&v29[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse];
    if ((~v36 & 0xF000000000000007) != 0 && (v36 & 0x8000000000000000) == 0)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();

      sub_1004E6028(v36);
      return;
    }

    goto LABEL_46;
  }

  if (v29[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback] == 1)
  {
    if (!*&v29[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8])
    {
      v76 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 328);

      v78 = v76(v77);

      if (v78 >> 30 == 1 || v78 >> 30 == 2 && v78 == 2147483652)
      {
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        sub_1000060E4(v79, qword_1012193F8);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "Failed to load library album because library is loading.", v82, 2u);
        }

        v83 = sub_1004AD6D0();
        sub_1004C4C94(v83 & 1 | 0x4000000000000000, 0, 0);
      }

LABEL_46:

      return;
    }

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_1012193F8);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to load library album — Falling back to catalog.", v40, 2u);
    }

    v42 = v99;
    v41 = v100;
    v43 = v101;
    (*(v100 + 104))(v99, enum case for MusicPropertySource.catalog(_:), v101);
    v44 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v41 + 40))(&v35[v44], v42, v43);
    swift_endAccess();
    sub_1004AF430(v45);
  }

  else
  {
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000060E4(v46, qword_1012193F8);
    sub_1000089F8(v108, v17, &qword_1011928B0, &unk_100ECFBC0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v111[0] = v50;
      *v49 = 136446210;
      v51 = sub_100805A70(v17);
      v53 = v52;
      sub_1000095E8(v17, &qword_1011928B0, &unk_100ECFBC0);
      v54 = sub_1000105AC(v51, v53, v111);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Popping album detail view controller with reason: %{public}s", v49, 0xCu);
      sub_10000959C(v50);
    }

    else
    {

      sub_1000095E8(v17, &qword_1011928B0, &unk_100ECFBC0);
    }

    v73 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    v74 = v98;
    swift_beginAccess();
    sub_1000089F8(&v74[v73], v110, &unk_1011926C0, &unk_100ECF870);
    if (v110[8] == 1)
    {

      sub_1000095E8(v110, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v75 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v110, &unk_1011926C0, &unk_100ECF870);
      if (v75)
      {
        sub_1003FE034(1);
      }
    }
  }
}

uint64_t sub_1004C873C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_1004C87E8();
}

uint64_t sub_1004C87E8()
{
  v1[11] = v0;
  v2 = type metadata accessor for MusicPropertySource();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Album();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v5;
  v1[24] = v4;

  return _swift_task_switch(sub_1004C8994, v5, v4);
}

uint64_t sub_1004C8994()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  v0[25] = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_101184730, &unk_100ECB920);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[17];

    sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v10 + 16))(v9, v12 + v13, v11);
    v14 = swift_task_alloc();
    v0[26] = v14;
    *v14 = v0;
    v14[1] = sub_1004C8B98;
    v15 = v0[20];
    v16 = v0[21];
    v17 = v0[14];

    return sub_1004C8ED8(v15, v16, v17);
  }
}

uint64_t sub_1004C8B98()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return _swift_task_switch(sub_1004C8D1C, v6, v5);
}

uint64_t sub_1004C8D1C()
{
  v1 = v0[25];
  v11 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[11];

  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1000089F8(v7 + v1, v6, &unk_101184730, &unk_100ECB920);
  swift_beginAccess();
  sub_1002190E0(v5, v7 + v1, &unk_101184730, &unk_100ECB920);
  swift_endAccess();
  sub_1004B2480(v6);
  sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
  sub_1000095E8(v5, &unk_101184730, &unk_100ECB920);
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004C8ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicPropertySource();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v6;
  v3[12] = v5;

  return _swift_task_switch(sub_1004C8FDC, v6, v5);
}

uint64_t sub_1004C8FDC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = enum case for MusicPropertySource.library(_:);
  v5 = *(v3 + 104);
  v5(v1, enum case for MusicPropertySource.library(_:), v2);
  v6 = static MusicPropertySource.== infix(_:_:)();
  v7 = *(v3 + 8);
  v0[13] = v7;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v8 = v0[8];
    v9 = v0[6];
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v10 = swift_allocObject();
    v0[15] = v10;
    *(v10 + 16) = xmmword_100EBC6D0;
    sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
    *(v10 + 32) = static PartialMusicProperty<A>.tracks.getter();
    *(v10 + 40) = static PartialMusicProperty<A>.tracksPopularity.getter();
    v5(v8, v4, v9);
    v11 = swift_task_alloc();
    v0[16] = v11;
    v12 = type metadata accessor for Album();
    v0[17] = v12;
    v13 = sub_1004E41B4(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    *v11 = v0;
    v11[1] = sub_1004C9270;
    v14 = v0[8];
    v15 = v0[3];

    return MusicItem<>.with(_:preferredSource:)(v15, v10, v14, v12, &protocol witness table for Album, &protocol witness table for Album, v13);
  }

  else
  {
    v16 = v0[3];
    v17 = v0[4];

    v18 = type metadata accessor for Album();
    (*(*(v18 - 8) + 16))(v16, v17, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1004C9270()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  v3(v4, v5);

  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_1004C94A4;
  }

  else
  {
    v8 = sub_1004C9434;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1004C9434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C94A4()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve library album tracks with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  (*(*(v0[17] - 8) + 16))(v0[3], v0[4]);

  v11 = v0[1];

  return v11();
}

void sub_1004C96BC()
{
  if (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
  {
    v1 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v1, v5, &unk_1011926C0, &unk_100ECF870);
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
        v3 = sub_1006A3A7C();

        if (v3)
        {
          if (v3 >> 62)
          {
            v4 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v4)
          {
            sub_1004C97D0(1);
          }
        }
      }
    }
  }
}

uint64_t sub_1004C97D0(int a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v74 - v6;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v9 = &v74 - v8;
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init()();
  v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload;
  if (v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = v15 + 32;
      while (*(v18 + v17))
      {
        if (v16 == ++v17)
        {
          goto LABEL_8;
        }
      }

      IndexSet.insert(_:)(v17);
      v2[v14] = 0;
    }
  }

LABEL_8:
  v19 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells];
  v80 = v11;
  v81 = v13;
  if (v19)
  {
    v75 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells;
    v20 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v2[v20], &aBlock, &unk_1011926C0, &unk_100ECF870);
    v78 = v20;
    v79 = v10;
    v77 = a1;
    v76 = v5;
    if (v84)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v33 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
        [*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
        v34 = *&Strong[v33];
        *&Strong[v33] = 0;
      }
    }

    v35 = &v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState];
    v36 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState];
    v37 = &v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8];
    v38 = *v37;
    v39 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 16];
    if ((v36 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
    {
      if (v36 >> 62 == 3)
      {
        if (v36 != 0xC000000000000000 || (v36 = 0xC000000000000000, v39 | v38))
        {
LABEL_26:
          v36 = 0xC000000000000001;
          goto LABEL_27;
        }

LABEL_24:
        if (v36 == 0xC000000000000000)
        {
          v36 = 0xC000000000000000;
          if (!(v39 | v38))
          {
            goto LABEL_27;
          }
        }

        goto LABEL_26;
      }

      if ((v36 & 1) == 0)
      {
        v55 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
        swift_beginAccess();
        sub_1000089F8(&v2[v55], v9, &unk_1011842D0, &qword_100ECBF00);
        v56 = v76;
        if ((*(v76 + 48))(v9, 1, v4))
        {
          sub_1000095E8(v9, &unk_1011842D0, &qword_100ECBF00);
          v36 = *v35;
          v38 = v35[1];
          v39 = v35[2];
        }

        else
        {
          (*(v56 + 16))(v7, v9, v4);
          sub_1000095E8(v9, &unk_1011842D0, &qword_100ECBF00);
          sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          (*(v56 + 8))(v7, v4);
          v36 = *v35;
          v38 = v35[1];
          v39 = v35[2];
          if (aBlock != v82)
          {
            goto LABEL_27;
          }
        }
      }
    }

    if ((v36 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      goto LABEL_28;
    }

    if (v36 >> 62 != 3)
    {
      if ((v36 & 1) == 0)
      {
LABEL_28:
        v5 = v78;
        v10 = v79;
        v11 = v81;
        if ((v77 & 1) != 0 || (v40 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections], (v41 = *(v40 + 16)) == 0))
        {
LABEL_33:
          sub_1004D0668();
        }

        else
        {
          v42 = 0;
          v43 = v40 + 32;
          while (*(v43 + v42) != 2)
          {
            if (v41 == ++v42)
            {
              goto LABEL_33;
            }
          }

          IndexSet.insert(_:)(v42);
        }

        sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
        if (v84)
        {
LABEL_35:
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
          goto LABEL_76;
        }

        v44 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
        if (v44)
        {
          v24 = &OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload;
          v45 = v44[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload];

          if (v45)
          {
            v46 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
            v47 = *(v46 + 16);
            if (v47)
            {
              v48 = 0;
              v49 = v46 + 32;
              while (*(v49 + v48) != 10)
              {
                if (v47 == ++v48)
                {
                  goto LABEL_76;
                }
              }

              IndexSet.insert(_:)(v48);
              sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
              if (v84)
              {
                sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
                goto LABEL_73;
              }

              v25 = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
              if (!v25)
              {
                goto LABEL_73;
              }

              sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
              if (v84)
              {
                goto LABEL_57;
              }

              v57 = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
              if (!v57)
              {
                goto LABEL_71;
              }

              v58 = sub_1006A3A7C();

              if (!v58)
              {
                goto LABEL_71;
              }

              if (!(v58 >> 62))
              {
                v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);

                if (!v59)
                {
                  goto LABEL_71;
                }

LABEL_62:
                v60 = *&v2[v75];
                if (!v60)
                {
                  goto LABEL_72;
                }

                sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
                if ((v84 & 1) == 0)
                {
                  v61 = swift_unknownObjectWeakLoadStrong();
                  sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
                  if (v61)
                  {
                    v62 = sub_1006A3A7C();

                    if (v62)
                    {
                      if (v62 >> 62)
                      {
                        goto LABEL_86;
                      }

                      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      goto LABEL_68;
                    }
                  }

LABEL_71:
                  LOBYTE(v60) = 0;
                  goto LABEL_72;
                }

LABEL_57:
                sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
                goto LABEL_71;
              }

LABEL_70:
              v64 = _CocoaArrayWrapper.endIndex.getter();

              if (!v64)
              {
                goto LABEL_71;
              }

              goto LABEL_62;
            }
          }
        }

LABEL_76:
        while (1)
        {
          v66 = objc_opt_self();
          v25 = swift_allocObject();
          v25[2] = v2;
          v25[3] = v11;
          v67 = swift_allocObject();
          *(v67 + 16) = sub_1004E6004;
          *(v67 + 24) = v25;
          v87 = sub_10018A020;
          v88 = v67;
          aBlock = _NSConcreteStackBlock;
          v84 = 1107296256;
          v85 = sub_100029B9C;
          v86 = &unk_1010AF648;
          v24 = _Block_copy(&aBlock);
          v68 = v2;

          [v66 performWithoutAnimation:v24];
          _Block_release(v24);
          LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

          if ((v66 & 1) == 0)
          {
            break;
          }

          __break(1u);
LABEL_86:
          v63 = _CocoaArrayWrapper.endIndex.getter();
LABEL_68:

          LOBYTE(v60) = v63 != 0;
LABEL_72:
          *(v25 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) = v60;

LABEL_73:
          sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
          if (v84)
          {
            goto LABEL_35;
          }

          v65 = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
          if (v65)
          {
            v65[*v24] = 0;
          }
        }

        sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
        if (v84)
        {
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
          v28 = 0;
          v29 = 0;
LABEL_81:
          v54 = 0;
          v22 = 0;
          v30 = 0;
          v31 = 0;
          v27 = sub_1004E6004;
          goto LABEL_84;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
        if (v29)
        {
          v69 = sub_1006A6078();

          v29 = swift_allocObject();
          v29[2] = v68;
          v70 = swift_allocObject();
          v28 = sub_1004E6020;
          *(v70 + 16) = sub_1004E6020;
          *(v70 + 24) = v29;
          v87 = sub_10018A020;
          v88 = v70;
          aBlock = _NSConcreteStackBlock;
          v84 = 1107296256;
          v85 = sub_100029B9C;
          v86 = &unk_1010AF6C0;
          v71 = _Block_copy(&aBlock);
          v72 = v68;

          [v69 performBatchUpdates:v71 completion:0];
          _Block_release(v71);

          goto LABEL_81;
        }

        v27 = sub_1004E6004;
        v28 = 0;
        v54 = 0;
        v22 = 0;
LABEL_83:
        v30 = 0;
        v31 = 0;
        goto LABEL_84;
      }

LABEL_27:
      *v35 = 0x3FFFFFEFELL;
      *v37 = 0;
      v37[1] = 0;
      sub_1004AC798(v36, v38, v39);
      sub_1004E5BA4(v36, v38, v39);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = v13;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1004EA6D4;
  *(v23 + 24) = v22;
  v87 = sub_10018A020;
  v88 = v23;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_100029B9C;
  v86 = &unk_1010AF558;
  v24 = _Block_copy(&aBlock);
  v25 = v2;

  [v21 performWithoutAnimation:v24];
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_70;
  }

  v26 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v25 + v26, &aBlock, &unk_1011926C0, &unk_100ECF870);
  if (v84)
  {
    sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    v27 = 0;
    v25 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    if (!v29)
    {
      v54 = sub_1004EA6D4;
      v27 = 0;
      v25 = 0;
      v28 = 0;
      goto LABEL_83;
    }

    v50 = sub_1006A6078();

    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    v51 = swift_allocObject();
    v30 = sub_1004E5FE0;
    *(v51 + 16) = sub_1004E5FE0;
    *(v51 + 24) = v31;
    v87 = sub_10018A020;
    v88 = v51;
    aBlock = _NSConcreteStackBlock;
    v84 = 1107296256;
    v85 = sub_100029B9C;
    v86 = &unk_1010AF5D0;
    v52 = _Block_copy(&aBlock);
    v53 = v25;

    [v50 performBatchUpdates:v52 completion:0];
    _Block_release(v52);

    v27 = 0;
    v25 = 0;
    v28 = 0;
    v29 = 0;
  }

  v54 = sub_1004EA6D4;
LABEL_84:
  (*(v80 + 1))(v81, v10);
  sub_100020438(v27, v25);
  sub_100020438(v28, v29);
  sub_100020438(v54, v22);
  return sub_100020438(v30, v31);
}

void sub_1004CA610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v8, v15, &unk_1011926C0, &unk_100ECF870);
  if (v15[8])
  {
    sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v10 = sub_1006A6078();

      (*(v5 + 16))(v7, a2, v4);
      IndexSet._bridgeToObjectiveC()(v11);
      v13 = v12;
      (*(v5 + 8))(v7, v4);
      [v10 reloadSections:v13];
    }
  }
}

void sub_1004CA7B4()
{
  sub_1004D313C();
  sub_1004D365C();
  sub_1004D4D28();
  sub_1004D7980();
  sub_1004D8158();
}

double sub_1004CA7E8(uint64_t a1)
{
  v1 = a1 & 1;
  v2 = sub_1004CAC5C();
  if (*(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) == v1)
  {
    *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = v1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1004CA938@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_101192868, &qword_100ECFB70);
  __chkstk_darwin();
  v3 = &v16 - v2;
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Album.artists.getter();
  v10 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v3, 1, v10) == 1)
  {
    sub_1000095E8(v3, &unk_101192868, &qword_100ECFB70);
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_4:
    sub_1000095E8(v5, &unk_101184930, &unk_100EC05C0);
    v12 = type metadata accessor for ContainerDetail.AttributionItem(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  sub_10034DA48(v5);
  (*(v11 + 8))(v3, v10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  v14 = *(v7 + 32);
  v14(v9, v5, v6);
  v14(a1, v9, v6);
  v15 = type metadata accessor for ContainerDetail.AttributionItem(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_1004CAC5C()
{
  v1 = v0;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v3 = v34 - v2 + 22;
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration;
  if (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration))
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
    goto LABEL_25;
  }

  v6 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v3, &unk_101184730, &unk_100ECB920);
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v34, &unk_1011926C0, &unk_100ECF870);
  if (v35)
  {
    sub_1000095E8(v34, &unk_1011926C0, &unk_100ECF870);
    v8 = 2;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v34, &unk_1011926C0, &unk_100ECF870);
    if (Strong && (v10 = sub_10069F9B8(), Strong, v11 = v10[5], v12 = v10[6], v13 = v10[7], sub_1004E5DB4(v11, v12, v13), , (v12 - 1) >= 2))
    {
      sub_1004E5DFC(v11, v12, v13);
      v8 = (v11 & 1) == 0;
    }

    else
    {
      v8 = 2;
    }
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000089F8(v1 + v7, v34, &unk_1011926C0, &unk_100ECF870);
  if (v35)
  {

    sub_1000095E8(v34, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(v34, &unk_1011926C0, &unk_100ECF870);
    if (v17)
    {
      v18 = v8;
      v19 = sub_1006A6078();

      v20 = *&v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
      v21 = *&v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
      v22 = v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 26] << 16;

      v8 = v18;
      v23 = v22 == 0x20000;
      goto LABEL_14;
    }
  }

  v23 = 1;
  v20 = 0.0;
  v21 = 0.0;
LABEL_14:
  sub_1000089F8(v1 + v7, v34, &unk_1011926C0, &unk_100ECF870);
  if (v35)
  {
    sub_1000095E8(v34, &unk_1011926C0, &unk_100ECF870);
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v34, &unk_1011926C0, &unk_100ECF870);
  if (!v24)
  {
    goto LABEL_18;
  }

  v25 = v8;
  v26 = sub_1006A6078();

  [v26 adjustedContentInset];
  v28 = v27;

  v8 = v25;
LABEL_19:
  _s7MetricsCMa(0);
  v29 = swift_allocObject();
  ObservationRegistrar.init()();
  v30 = 0.0;
  if (v23)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v20;
  }

  if (!v23)
  {
    v30 = v21;
  }

  *(v29 + 16) = v31;
  *(v29 + 24) = v30;
  *(v29 + 32) = v28;
  v5 = sub_1005F94D8(v3, v8, &unk_100ECFB58, v14, sub_1004E5F88, v15, sub_1004E5F90, v16, v29);

  *(v1 + v4) = v5;

LABEL_25:

  return v5;
}

uint64_t sub_1004CB0F8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return _swift_task_switch(sub_1004CB194, v5, v4);
}

uint64_t sub_1004CB194()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1004CB2D4;
    v3 = *(v0 + 40);
    v4 = *(v0 + 96);

    return sub_1004CBA58(v3, v4);
  }

  else
  {
    v6 = *(v0 + 40);

    v7 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1004CB2D4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1004CB414, v4, v3);
}

uint64_t sub_1004CB414()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1004CB474(uint64_t a1)
{
  v1 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v28 = &v27 - v4;
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v10 = &v27 - v9;
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v12 = &v27 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v30 = v2;
    v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    sub_1000089F8(v14 + v15, v10, &unk_101184730, &unk_100ECB920);
    if ((*(v6 + 48))(v10, 1, v5))
    {

      sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
      (*(v30 + 56))(v12, 1, 1, v1);
      return sub_1000095E8(v12, &qword_101192860, &unk_100ECFB60);
    }

    (*(v6 + 16))(v8, v10, v5);
    sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
    sub_1004CA938(v12);

    (*(v6 + 8))(v8, v5);
    v16 = v30;
    if ((*(v30 + 48))(v12, 1, v1) == 1)
    {
      return sub_1000095E8(v12, &qword_101192860, &unk_100ECFB60);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v20 = 0;
      goto LABEL_15;
    }

    v18 = Strong;
    v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v18 + v19, v31, &unk_1011926C0, &unk_100ECF870);
    if (v31[8] == 1)
    {

      sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v21 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
      if (v21)
      {
        v20 = sub_10003169C();

LABEL_14:
        v16 = v30;
LABEL_15:
        if (sub_10069BD04())
        {
          if (!v20)
          {
            return sub_1004E414C(v12, type metadata accessor for ContainerDetail.AttributionItem);
          }

          v22 = type metadata accessor for TaskPriority();
          v23 = v28;
          (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
          v24 = v29;
          sub_1004E40DC(v12, v29, type metadata accessor for ContainerDetail.AttributionItem);
          v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = 0;
          sub_1004E59E0(v24, v26 + v25, type metadata accessor for ContainerDetail.AttributionItem);
          *(v26 + ((v3 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
          sub_1001F4CB8(0, 0, v23, &unk_100EE4D10, v26);
        }

        return sub_1004E414C(v12, type metadata accessor for ContainerDetail.AttributionItem);
      }
    }

    v20 = 0;
    goto LABEL_14;
  }

  return result;
}

void sub_1004CB9FC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_1004CBA58(uint64_t a1, char a2)
{
  *(v3 + 400) = a2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v2;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  *(v3 + 264) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  *(v3 + 296) = swift_task_alloc();
  v4 = type metadata accessor for Album();
  *(v3 + 304) = v4;
  *(v3 + 312) = *(v4 - 8);
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 368) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 376) = v6;
  *(v3 + 384) = v5;

  return _swift_task_switch(sub_1004CBC6C, v6, v5);
}

uint64_t sub_1004CBC6C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 256);
  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v1, &unk_101184730, &unk_100ECB920);
  v6 = *(v3 + 48);
  v7 = v6(v1, 1, v2);
  v8 = *(v0 + 360);
  v83 = v6;
  v84 = v5;
  if (v7)
  {
    sub_1000095E8(v8, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v13 = *(v0 + 328);
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    (*(v14 + 16))(v13, v8, v15);
    sub_1000095E8(v8, &unk_101184730, &unk_100ECB920);
    v16 = Album.catalogID.getter();
    v18 = v17;
    (*(v14 + 8))(v13, v15);
    if (v18)
    {
      v81 = v16;
      v82 = v18;
      goto LABEL_8;
    }
  }

  v9 = *(v0 + 352);
  v10 = *(v0 + 304);
  sub_1000089F8(v4 + v5, v9, &unk_101184730, &unk_100ECB920);
  v11 = v6(v9, 1, v10);
  v12 = *(v0 + 352);
  if (v11)
  {
    sub_1000095E8(*(v0 + 352), &unk_101184730, &unk_100ECB920);
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  else
  {
    v19 = *(v0 + 312);
    v20 = *(v0 + 320);
    v21 = *(v0 + 304);
    (*(v19 + 16))(v20, *(v0 + 352), v21);
    sub_1000095E8(v12, &unk_101184730, &unk_100ECB920);
    v81 = Album.id.getter();
    v82 = v22;
    (*(v19 + 8))(v20, v21);
  }

LABEL_8:
  v23 = *(v0 + 288);
  v75 = *(v0 + 272);
  v24 = *(v0 + 256);
  v25 = *(v0 + 400);
  v26 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v79 = SymbolButton.Intent.actionType.getter(v25);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v76 = *(v28 + 56);
  v76(v23, 1, 1, v27);
  sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6B0;
  v80 = v26;
  v78 = v29;
  *(v29 + 32) = sub_1004DFF28();
  sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x6D75626C61;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x6570795479616C70;
  v31 = 7105633;
  if (v25 == 1)
  {
    v31 = 0x41656C6666756873;
  }

  v32 = 0xEA00000000006C6CLL;
  if (v25 != 1)
  {
    v32 = 0xE300000000000000;
  }

  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v31;
  *(inited + 88) = v32;
  v77 = sub_10010C578(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
  swift_arrayDestroy();
  v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sourceURL;
  swift_beginAccess();
  sub_1000089F8(v24 + v33, v75, &qword_101183A20, &unk_100EBCF80);
  v34 = *(v28 + 48);
  if (v34(v75, 1, v27) == 1)
  {
    v35 = *(v0 + 344);
    v36 = *(v0 + 304);
    v37 = v4;
    sub_1000089F8(v4 + v84, v35, &unk_101184730, &unk_100ECB920);
    v38 = v83(v35, 1, v36);
    v39 = *(v0 + 344);
    if (v38)
    {
      v40 = *(v0 + 280);
      sub_1000095E8(*(v0 + 344), &unk_101184730, &unk_100ECB920);
      v76(v40, 1, 1, v27);
    }

    else
    {
      v43 = *(v0 + 312);
      v42 = *(v0 + 320);
      v44 = *(v0 + 304);
      (*(v43 + 16))(v42, *(v0 + 344), v44);
      sub_1000095E8(v39, &unk_101184730, &unk_100ECB920);
      Album.url.getter();
      (*(v43 + 8))(v42, v44);
      v37 = v4;
    }

    v45 = *(v0 + 272);
    if (v34(v45, 1, v27) != 1)
    {
      sub_1000095E8(v45, &qword_101183A20, &unk_100EBCF80);
    }
  }

  else
  {
    v41 = *(v0 + 280);
    (*(v28 + 32))(v41, *(v0 + 272), v27);
    v76(v41, 0, 1, v27);
    v37 = v4;
  }

  v46 = *(v0 + 336);
  v47 = *(v0 + 304);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_100EBC6B0;
  *(v48 + 32) = 0x614E206D75626C41;
  *(v48 + 40) = 0xEA0000000000656DLL;
  sub_1000089F8(v37 + v84, v46, &unk_101184730, &unk_100ECB920);
  v49 = v83(v46, 1, v47);
  v50 = *(v0 + 336);
  if (v49)
  {
    sub_1000095E8(*(v0 + 336), &unk_101184730, &unk_100ECB920);
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  else
  {
    v54 = *(v0 + 312);
    v53 = *(v0 + 320);
    v55 = *(v0 + 304);
    (*(v54 + 16))(v53, *(v0 + 336), v55);
    sub_1000095E8(v50, &unk_101184730, &unk_100ECB920);
    v51 = Album.title.getter();
    v52 = v56;
    (*(v54 + 8))(v53, v55);
  }

  v58 = *(v0 + 288);
  v57 = *(v0 + 296);
  v59 = *(v0 + 280);
  *(v48 + 48) = v51;
  *(v48 + 56) = v52;
  v60 = sub_10010C578(v48);
  swift_setDeallocating();
  sub_1000095E8(v48 + 32, &qword_101183AA0, &unk_100ECAF50);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v81, v82, 1, v79, v58, v78, 0, 0, v57, v77, 0, 768, v81, v82, 0x6D75626C41, 0xE500000000000000, v59, v60, 1, 2, 0, 0, 0);

  v61 = sub_10053771C();
  v63 = v62;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v65 = *(v0 + 264);
  v66 = qword_101218AD0;
  v67 = GroupActivitiesManager.hasJoined.getter();
  v68 = GroupActivitiesManager.participantsCount.getter();
  v69 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v80) + 0xB8))(v64, v61, v63, v67 & 1, v68, *(v66 + v69));

  sub_1004E414C(v64, type metadata accessor for MetricsEvent.Click);
  v70 = type metadata accessor for IndexPath();
  (*(*(v70 - 8) + 56))(v65, 1, 1, v70);
  v71 = swift_task_alloc();
  *(v0 + 392) = v71;
  *v71 = v0;
  v71[1] = sub_1004CC580;
  v72 = *(v0 + 264);
  v73 = *(v0 + 248);

  return sub_1004D8654(v73, v72);
}

uint64_t sub_1004CC580()
{
  v1 = *v0;
  v2 = *(*v0 + 264);

  sub_1000095E8(v2, &unk_10118BCE0, &qword_100EC6450);
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);

  return _swift_task_switch(sub_1004CC6D4, v4, v3);
}

uint64_t sub_1004CC6D4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1004CC7C8()
{
  v1 = v0;
  v2 = sub_1004CAC5C();
  swift_getKeyPath();
  v19 = v2;
  sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v3 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v5 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v6 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  sub_1004E5E44(v4, v3, v5, v6);

  if (v3)
  {

    sub_1004E5E90(v4, v3, v5, v6);
    v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v8, &v20, &unk_1011926C0, &unk_100ECF870);
    if (v21)
    {

      sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v10 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        v20 = v10;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v11 = *(v10 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
        v12 = *(v10 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);

        v13 = type metadata accessor for DescriptionModal();
        v14 = objc_allocWithZone(v13);
        v15 = objc_allocWithZone(type metadata accessor for DescriptionModal.Content());
        v16 = sub_100702394(v11, v12, v4, v3);
        v18.receiver = v14;
        v18.super_class = v13;
        v17 = objc_msgSendSuper2(&v18, "initWithRootViewController:", v16);

        [Strong presentViewController:v17 animated:1 completion:0];
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1004CCA54()
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v4 = &v22[-v3];
  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v5, &v26, &unk_1011926C0, &unk_100ECF870);
  if (BYTE8(v26))
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v26, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v9 = v0;
    v10 = sub_10069F9B8();

    v12 = v10[5];
    v11 = v10[6];
    v13 = v10[7];
    sub_1004E5DB4(v12, v11, v13);

    if ((v11 - 1) >= 2)
    {

      sub_1000089F8(v9 + v5, &v26, &unk_1011926C0, &unk_100ECF870);
      if (BYTE8(v26))
      {
LABEL_2:
        v6 = &unk_1011926C0;
        v7 = &unk_100ECF870;
LABEL_3:
        sub_1000095E8(&v26, v6, v7);
        return;
      }

      v14 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v26, &unk_1011926C0, &unk_100ECF870);
      if (v14)
      {
        sub_10069F9B8();

        v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
        swift_beginAccess();
        sub_1000089F8(v9 + v15, v4, &unk_101184730, &unk_100ECB920);
        v16 = type metadata accessor for Album();
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        if (v18(v4, 1, v16) == 1)
        {
          sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
          v23 = 0u;
          v24 = 0u;
          v25 = 0;
          v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
          swift_beginAccess();
          sub_1000089F8(v9 + v19, v2, &unk_101184730, &unk_100ECB920);
          if (v18(v2, 1, v16) == 1)
          {
            sub_1000095E8(v2, &unk_101184730, &unk_100ECB920);
            v26 = 0u;
            v27 = 0u;
            v28 = 0;
          }

          else
          {
            *(&v27 + 1) = v16;
            v28 = &off_1010B22E8;
            v21 = sub_10001C8B8(&v26);
            (*(v17 + 32))(v21, v2, v16);
          }

          if (*(&v24 + 1))
          {
            sub_1000095E8(&v23, &unk_101192850, &qword_100EE4C90);
          }
        }

        else
        {
          *(&v24 + 1) = v16;
          v25 = &off_1010B22E8;
          v20 = sub_10001C8B8(&v23);
          (*(v17 + 32))(v20, v4, v16);
          sub_100059A8C(&v23, &v26);
        }

        if (qword_10117F6F8 != -1)
        {
          swift_once();
        }

        sub_1005588C8(&v26, qword_101218CA8, unk_101218CB0);

        v6 = &unk_101192850;
        v7 = &qword_100EE4C90;
        goto LABEL_3;
      }
    }

    else
    {
      sub_1004E5DFC(v12, v11, v13);
    }
  }
}

void sub_1004CCE60(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v5 = &v20[-v4 - 8];
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v20[-v6 - 8];
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells;
  v9 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
  if (a1)
  {
    if (v9 && (*(v9 + 16) == 0) == (*(a1 + 16) == 0))
    {
      goto LABEL_10;
    }
  }

  else if (!v9)
  {
    goto LABEL_10;
  }

  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v10, v22, &unk_1011926C0, &unk_100ECF870);
  if (v22[8])
  {
    sub_1000095E8(v22, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v22, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
    }
  }

LABEL_10:
  v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  swift_beginAccess();
  sub_1000089F8(v2 + v12, v5, &qword_1011846D0, &qword_100EDD110);
  sub_1004DF62C(v5, v7);
  sub_1000095E8(v5, &qword_1011846D0, &qword_100EDD110);
  v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  sub_10006B010(v7, v2 + v13, &unk_10118BCE0, &qword_100EC6450);
  swift_endAccess();
  v14 = *(v2 + v8);

  sub_1004D2948(a1, v14);
  LOBYTE(v13) = v15;

  sub_1004C97D0(v13 & 1);
  sub_1004D3D70();
  v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v16, v20, &unk_1011926C0, &unk_100ECF870);
  if (v21)
  {
    sub_1000095E8(v20, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v20, &unk_1011926C0, &unk_100ECF870);
    if (v17)
    {
      sub_100503D5C();
    }
  }

  sub_1000089F8(v2 + v16, v20, &unk_1011926C0, &unk_100ECF870);
  if (v21)
  {
    sub_1000095E8(v20, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v20, &unk_1011926C0, &unk_100ECF870);
    if (v18)
    {
      [v18 setNeedsUpdateContentUnavailableConfiguration];
    }
  }

  sub_1004B3664();
}

double sub_1004CD200()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v14[-v1];
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v4 = &v14[-v3];
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v6 = &v14[-v5];
  sub_1004CAC5C();
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, v6, &unk_101184730, &unk_100ECB920);
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(v0 + v8, v4, &unk_1011842D0, &qword_100ECBF00);
  sub_1005F2FA0(v6, v4);

  sub_1000095E8(v4, &unk_1011842D0, &qword_100ECBF00);
  sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;

  sub_1001F4CB8(0, 0, v2, &unk_100ECFBF8, v12);

  return result;
}

uint64_t sub_1004CD4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = type metadata accessor for MusicPropertySource();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  v4[18] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v7;
  v4[22] = v6;

  return _swift_task_switch(sub_1004CD618, v7, v6);
}

uint64_t sub_1004CD618()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = v0[18];
    v3 = v0[19];
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v8 = Strong;
    swift_beginAccess();
    sub_1000089F8(v8 + v7, v3, &unk_101184730, &unk_100ECB920);
    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
    swift_beginAccess();
    sub_1000089F8(v8 + v9, v2, &unk_1011842D0, &qword_100ECBF00);
    v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v5 + 16))(v4, v8 + v10, v6);
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_1004CD808;
    v12 = v0[18];
    v13 = v0[19];

    return sub_1004E7068(v13, v12);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1004CD808(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);
  *(*v1 + 200) = a1;

  (*(v6 + 8))(v5, v7);
  sub_1000095E8(v4, &unk_1011842D0, &qword_100ECBF00);
  sub_1000095E8(v3, &unk_101184730, &unk_100ECB920);
  v8 = *(v2 + 176);
  v9 = *(v2 + 168);

  return _swift_task_switch(sub_1004CD9F4, v9, v8);
}

uint64_t sub_1004CD9F4()
{
  v1 = v0[25];
  v2 = v0[23];

  v3 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells];
  *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells] = v1;
  sub_1004CCE60(v3);

  v4 = v0[1];

  return v4();
}

void sub_1004CDAA4(uint64_t a1)
{
  v23 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v22 = &v20 - v2;
  v3 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_10010FC20(&qword_101192848, &unk_100ECFAF0) - 8;
  __chkstk_darwin();
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1000089F8(v23, v12, &qword_1011846D0, &qword_100EDD110);
  sub_1000089F8(v1 + v13, &v12[v14], &qword_1011846D0, &qword_100EDD110);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000095E8(v12, &qword_1011846D0, &qword_100EDD110);
      return;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v12, v9, &qword_1011846D0, &qword_100EDD110);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_1004E414C(v9, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
LABEL_6:
    sub_1000095E8(v12, &qword_101192848, &unk_100ECFAF0);
LABEL_7:
    sub_1000089F8(v1 + v13, v7, &qword_1011846D0, &qword_100EDD110);
    v16 = v22;
    sub_1004DF62C(v7, v22);
    sub_1000095E8(v7, &qword_1011846D0, &qword_100EDD110);
    v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
    swift_beginAccess();
    sub_10006B010(v16, v1 + v17, &unk_10118BCE0, &qword_100EC6450);
    swift_endAccess();
    sub_1004D0668();
    return;
  }

  v18 = v21;
  sub_1004E59E0(&v12[v14], v21, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  v19 = sub_1004E1FC0(v9, v18);
  sub_1004E414C(v18, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  sub_1004E414C(v9, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  sub_1000095E8(v12, &qword_1011846D0, &qword_100EDD110);
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1004CDEA0(uint64_t a1)
{
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v28 - v4;
  __chkstk_darwin();
  v6 = &v28 - v5;
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = type metadata accessor for Track();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  swift_beginAccess();
  sub_1000089F8(v1 + v16, v8, &qword_1011846D0, &qword_100EDD110);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &qword_1011846D0, &qword_100EDD110);
  }

  else
  {
    sub_1004E59E0(v8, v12, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
    if (sub_1004E1FC0(v12, v14))
    {
      v18 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v18, v31, &unk_1011926C0, &unk_100ECF870);
      if (v32)
      {
        sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
        }
      }

      sub_1000089F8(v1 + v18, v31, &unk_1011926C0, &unk_100ECF870);
      if (v32)
      {
        sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
        if (v27)
        {
          sub_100503D5C();
        }
      }

      sub_1004E414C(v12, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
      v25 = v14;
      return sub_1004E414C(v25, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
    }

    sub_1004E414C(v12, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  }

  sub_1000089F8(v1 + v16, v6, &qword_1011846D0, &qword_100EDD110);
  if (v17(v6, 1, v9) != 1)
  {
    sub_1004E414C(v14, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
    return sub_1000095E8(v6, &qword_1011846D0, &qword_100EDD110);
  }

  sub_1000095E8(v6, &qword_1011846D0, &qword_100EDD110);
  v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v19, v31, &unk_1011926C0, &unk_100ECF870);
  if (v32)
  {
    sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
    if (v21)
    {
      v21[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
    }
  }

  v22 = v29;
  sub_1004E40DC(v14, v29, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  (*(v10 + 56))(v22, 0, 1, v9);
  v23 = v30;
  sub_1000089F8(v1 + v16, v30, &qword_1011846D0, &qword_100EDD110);
  swift_beginAccess();
  sub_1002190E0(v22, v1 + v16, &qword_1011846D0, &qword_100EDD110);
  swift_endAccess();
  sub_1004CDAA4(v23);
  sub_1000095E8(v23, &qword_1011846D0, &qword_100EDD110);
  sub_1000095E8(v22, &qword_1011846D0, &qword_100EDD110);
  sub_1000089F8(v1 + v19, v31, &unk_1011926C0, &unk_100ECF870);
  if (v32)
  {
    sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v31, &unk_1011926C0, &unk_100ECF870);
    if (v24)
    {
      sub_100503D5C();
    }
  }

  v25 = v14;
  return sub_1004E414C(v25, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
}

uint64_t sub_1004CE4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  v24 = v30;
  v25 = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  v22 = v30;
  v23 = v29;
  v10 = Album.artistName.getter();
  if (!a3)
  {

    goto LABEL_8;
  }

  if (v10 != a2 || v11 != a3)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:

    v13 = a3;
    goto LABEL_9;
  }

LABEL_7:
  a2 = 0;
  v13 = 0;
LABEL_9:
  v14 = a3 == 0;
  type metadata accessor for ClassicalAlbumSection(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
  v29 = 0;
  v30 = 0;
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  Published.init(initialValue:)();
  v17 = *(v7 + 32);
  v17(v15 + v16, v9, v6);
  v18 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName;
  v29 = 0;
  v30 = 0;
  Published.init(initialValue:)();
  v17(v15 + v18, v9, v6);
  v19 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks;
  *(v15 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists;
  *(v15 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = 0;
  swift_beginAccess();
  v27 = v25;
  v28 = v24;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v23;
  v30 = v22;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = a2;
  v30 = v13;

  static Published.subscript.setter();
  *(v15 + v19) = v26;

  *(v15 + v20) = v14;
  return v15;
}

void sub_1004CE888(char *a1)
{
  v59 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v43 - v2;
  v4 = type metadata accessor for MusicLibrary.AddStatus();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin();
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v43 - v6;
  v7 = type metadata accessor for Album();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v61 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v11 = &v43 - v10;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v13 = &v43 - v12;
  v14 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  __chkstk_darwin();
  __chkstk_darwin();
  v18 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_didSetTracksPopularity;
  if ((*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_didSetTracksPopularity) & 1) == 0)
  {
    v52 = v17;
    v53 = v3;
    v54 = &v43 - v15;
    v60 = v16;
    v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    sub_1000089F8(v1 + v19, v11, &unk_101184730, &unk_100ECB920);
    if ((*(v8 + 48))(v11, 1, v7))
    {
      sub_1000095E8(v11, &unk_101184730, &unk_100ECB920);
      (*(v60 + 56))(v13, 1, 1, v14);
LABEL_5:
      sub_1000095E8(v13, &unk_1011842D0, &qword_100ECBF00);
      return;
    }

    v51 = v1;
    v20 = v61;
    v50 = *(v8 + 16);
    v50(v61, v11, v7);
    sub_1000095E8(v11, &unk_101184730, &unk_100ECB920);
    Album.tracks.getter();
    (*(v8 + 8))(v20, v7);
    v21 = v60;
    if ((*(v60 + 48))(v13, 1, v14) == 1)
    {
      goto LABEL_5;
    }

    v48 = v8 + 16;
    v49 = v8;
    v24 = *(v21 + 32);
    v23 = v21 + 32;
    v22 = v24;
    v24(v54, v13, v14);
    v25 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    v26 = v51;
    swift_beginAccess();
    sub_1000089F8(v26 + v25, &v62, &unk_1011926C0, &unk_100ECF870);
    if (v63)
    {
      sub_1000095E8(&v62, &unk_1011926C0, &unk_100ECF870);
LABEL_12:
      (*(v60 + 8))(v54, v14);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v62, &unk_1011926C0, &unk_100ECF870);
    if (!Strong)
    {
      goto LABEL_12;
    }

    v44 = v22;
    v45 = v23;
    v28 = Strong;
    v29 = [v28 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v47 = v28;
    MusicLibrary.state<A>(for:)();

    v30 = v55;
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

    v31 = v56;
    v32 = v57;
    v33 = v58;
    (*(v57 + 104))(v56, enum case for MusicLibrary.AddStatus.added(_:), v58);
    v46 = static MusicLibrary.AddStatus.== infix(_:_:)();
    v34 = *(v32 + 8);
    v34(v31, v33);
    v34(v30, v33);
    if (v46)
    {
      *(v51 + v18) = 1;
      v35 = type metadata accessor for TaskPriority();
      (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
      v50(v61, v59, v7);
      v36 = v60;
      (*(v60 + 16))(v52, v54, v14);
      type metadata accessor for MainActor();
      v37 = v47;
      v38 = static MainActor.shared.getter();
      v39 = v49;
      v40 = (*(v49 + 80) + 40) & ~*(v49 + 80);
      v41 = (v9 + *(v36 + 80) + v40) & ~*(v36 + 80);
      v42 = swift_allocObject();
      *(v42 + 2) = v38;
      *(v42 + 3) = &protocol witness table for MainActor;
      *(v42 + 4) = v37;
      (*(v39 + 32))(&v42[v40], v61, v7);
      v44(&v42[v41], v52, v14);
      sub_1001F4CB8(0, 0, v53, &unk_100ECFAE8, v42);

      (*(v36 + 8))(v54, v14);
    }

    else
    {
      (*(v60 + 8))(v54, v14);
    }
  }
}

uint64_t sub_1004CF084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_1004CF120, v8, v7);
}

uint64_t sub_1004CF120()
{
  v1 = [*(v0 + 32) traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  *(v0 + 80) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v4 = sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  *v2 = v0;
  v2[1] = sub_1004CF25C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return MusicLibrary.setTrackPopularity<A>(for:correspondingCatalogTracks:)(v5, v6, v3, v4);
}

uint64_t sub_1004CF25C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1004CF378;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1004EA728;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004CF378()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to set track popularity with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

unint64_t sub_1004CF55C(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v109 = a2;
  v5 = type metadata accessor for UUID();
  v117 = *(v5 - 8);
  v118 = v5;
  __chkstk_darwin();
  v116 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v112 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v7;
  __chkstk_darwin();
  v122 = (v98 - v8);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v10 = v98 - v9;
  v11 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v113 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = v98 - v13;
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v15 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v110 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = v98 - v17;
  __chkstk_darwin();
  v19 = v98 - v18;
  __chkstk_darwin();
  v21 = v98 - v20;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v119 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = v98 - v23;
  v24 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v24, &v137, &unk_1011926C0, &unk_100ECF870);
  if (BYTE8(v137))
  {
    v25 = &unk_1011926C0;
    v26 = &unk_100ECF870;
LABEL_3:
    sub_1000095E8(&v137, v25, v26);
    return 0;
  }

  v108 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v137, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    return 0;
  }

  v29 = Strong;
  Track.musicItem.getter(&v137);
  if (!v138)
  {

    v25 = &qword_10118B990;
    v26 = &unk_100EBE7B0;
    goto LABEL_3;
  }

  sub_100059A8C(&v137, v140);
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v30 = swift_allocObject();
  v30[1] = xmmword_100EBC6B0;
  v104 = v30;
  sub_100008FE4(v140, (v30 + 2));
  v31 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v105 = v137;
  sub_1004DDD64(a1, v15);
  sub_1004E40DC(v15, v21, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1004E414C(v15, type metadata accessor for PlaybackIntentDescriptor);
  v32 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v33 = *(v32 - 8);
  v99 = *(v33 + 56);
  v100 = v32;
  v98[1] = v33 + 56;
  (v99)(v21, 0, 1);
  v34 = type metadata accessor for AlbumDetailDataSource(0);
  v139 = &off_1010AEFD0;
  v138 = v34;
  *&v137 = v3;
  v35 = qword_10117F608;
  v36 = v3;
  v103 = v36;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_101218AD8;
  sub_1000089F8(v21, v19, &unk_1011838E0, &unk_100EC1670);
  v38 = v37;
  v39 = UIViewController.playActivityInformation.getter();
  v106 = v40;
  v107 = v39;
  v42 = v41;
  v44 = v43;
  sub_1000089F8(&v137, &v129, &unk_101183910, &unk_100EBDD00);
  v101 = v38;
  if (*(&v130 + 1))
  {
    sub_100059A8C(&v129, &v133);
  }

  else
  {
    *&v141 = v29;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v45 = v29;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v144, &v133);
    }

    else
    {
      v146 = 0;
      v144 = 0u;
      v145 = 0u;
      *&v133 = v45;
      v46 = v45;
      v47 = String.init<A>(reflecting:)();
      v134 = &type metadata for Player.CommandIssuerIdentity;
      v135 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v133 = v47;
      *(&v133 + 1) = v48;
      if (*(&v145 + 1))
      {
        sub_1000095E8(&v144, &unk_101183910, &unk_100EBDD00);
      }
    }

    v38 = v101;
    if (*(&v130 + 1))
    {
      sub_1000095E8(&v129, &unk_101183910, &unk_100EBDD00);
    }
  }

  v49 = v120;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v38, v19, v107, v106, v42, v44, &v133, v120);
  sub_1000095E8(v21, &unk_1011838E0, &unk_100EC1670);
  sub_1000095E8(&v137, &unk_101183910, &unk_100EBDD00);
  v50 = type metadata accessor for Actions.PlaybackContext(0);
  v51 = *(v50 - 8);
  (*(v51 + 56))(v49, 0, 1, v50);
  v52 = type metadata accessor for PlaylistContext(0);
  (*(*(v52 - 8) + 56))(v121, 1, 1, v52);
  v53 = type metadata accessor for IndexPath();
  v54 = *(v53 - 8);
  (*(v54 + 16))(v10, v109, v53);
  (*(v54 + 56))(v10, 0, 1, v53);
  v55 = v29;
  sub_1006A6A74(v10, &v137);
  sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
  sub_1004E025C(v122);
  sub_100008FE4(v104 + 32, v136);

  sub_1000089F8(&v137, &v129, &unk_1011845E0, &unk_100EBF3A0);
  if (v132 == 1)
  {
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v147 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v29, &v144, &v133);
    v56 = v119;
    if (v132 != 1)
    {
      sub_1000095E8(&v129, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v129, &v133);
    v56 = v119;
  }

  swift_getObjectType();
  v57 = swift_conformsToProtocol2();
  if (v57)
  {
    v106 = v57;
    v58 = v29;
    v107 = v29;
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v109 = swift_allocBox();
  v60 = v59;
  sub_1000089F8(v120, v56, &unk_10118AB20, &unk_100EBF390);
  v61 = *(v51 + 48);
  if (v61(v56, 1, v50) == 1)
  {
    v62 = v111;
    v99(v111, 1, 1, v100);
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
    sub_1000089F8(v62, v110, &unk_1011838E0, &unk_100EC1670);
    v104 = v101;
    v103 = UIViewController.playActivityInformation.getter();
    v100 = v64;
    v101 = v63;
    v66 = v65;
    sub_1000089F8(&v129, &v127, &unk_101183910, &unk_100EBDD00);
    if (v128)
    {
      sub_100059A8C(&v127, &v141);
      v67 = v119;
    }

    else
    {
      v126 = v29;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v68 = v29;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v123, &v141);
        v67 = v119;
      }

      else
      {
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        *&v141 = v68;
        v69 = v68;
        v70 = String.init<A>(reflecting:)();
        *(&v142 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v143 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v141 = v70;
        *(&v141 + 1) = v71;
        v67 = v119;
        if (*(&v124 + 1))
        {
          sub_1000095E8(&v123, &unk_101183910, &unk_100EBDD00);
        }
      }

      v55 = v29;
      if (v128)
      {
        sub_1000095E8(&v127, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v104, v110, v103, v101, v100, v66, &v141, v60);
    sub_1000095E8(&v129, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v111, &unk_1011838E0, &unk_100EC1670);
    if (v61(v67, 1, v50) != 1)
    {
      sub_1000095E8(v67, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1004E59E0(v56, v60, type metadata accessor for Actions.PlaybackContext);
  }

  v72 = *(v50 + 28);
  sub_1000089F8(&v60[v72], &v141, &unk_101183910, &unk_100EBDD00);
  if (*(&v142 + 1))
  {
    sub_100059A8C(&v141, &v129);
  }

  else
  {
    *&v129 = v55;
    v73 = v55;
    v74 = String.init<A>(reflecting:)();
    *(&v130 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v131 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v129 = v74;
    *(&v129 + 1) = v75;
    if (*(&v142 + 1))
    {
      sub_1000095E8(&v141, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_100EBDC20;
  *(v76 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v76 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v76 + 32) = 0x4D747865746E6F43;
  *(v76 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v129, v76 + 72);
  v77 = static Player.CommandIssuer<>.combining(_:)(v76);
  v79 = v78;

  sub_10000959C(&v129);
  *(&v130 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v131 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v129 = v77;
  *(&v129 + 1) = v79;
  sub_10006B010(&v129, &v60[v72], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v136, &v129);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v119 = String.init<A>(describing:)();
  v111 = v80;
  v110 = swift_allocObject();
  v102 = v29;
  swift_unknownObjectWeakInit();
  sub_100008FE4(v136, &v127);
  sub_10012B7A8(&v133, &v129);
  v81 = v112;
  sub_1000089F8(v122, v112, &unk_1011838D0, &unk_100EC0320);
  v82 = v113;
  sub_1000089F8(v121, v113, &unk_1011845D0, &unk_100EBF380);
  v83 = (*(v114 + 80) + 160) & ~*(v114 + 80);
  v84 = (v115 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (*(v108 + 80) + v85 + 8) & ~*(v108 + 80);
  v115 = (v86 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  sub_100059A8C(&v127, v88 + 16);
  *(v88 + 56) = v105;
  sub_10012B828(&v129, v88 + 64);
  sub_10003D17C(v81, v88 + v83, &unk_1011838D0, &unk_100EC0320);
  v89 = v109;
  *(v88 + v84) = v110;
  *(v88 + v85) = v89;
  sub_10003D17C(v82, v88 + v86, &unk_1011845D0, &unk_100EBF380);
  v90 = v88 + v115;
  v91 = v106;
  *v90 = v107;
  *(v90 + 8) = v91;
  *(v90 + 16) = 2;
  v92 = (v88 + v87);
  *v92 = variable initialization expression of Library.Context.playlistVariants;
  v92[1] = 0;
  swift_unknownObjectRetain();

  v93 = v116;
  UUID.init()();
  v94 = UUID.uuidString.getter();
  v96 = v95;
  (*(v117 + 8))(v93, v118);
  v148._countAndFlagsBits = v119;
  v148._object = v111;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v141, v148, v94, v96, sub_100217D28, v88);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v133);
  sub_10000959C(v136);

  v97 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109B838, 0);
  v133 = v141;
  sub_100015BB0(&v133);
  v129 = v142;
  sub_100015BB0(&v129);

  sub_1000095E8(v122, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v137, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v121, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v120, &unk_10118AB20, &unk_100EBF390);
  sub_10000959C(v140);
  return v97;
}

double sub_1004D0668()
{
  v1 = sub_10010FC20(&unk_10118B970, &qword_100EC71E0);
  __chkstk_darwin();
  v3 = &v124 - v2;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v124 - v6;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v160 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v124 - v9;
  v164 = type metadata accessor for MusicPropertySource();
  v179 = *(v164 - 8);
  __chkstk_darwin();
  v163 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = &v124 - v11;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v168 = &v124 - v12;
  v169 = type metadata accessor for Album();
  v174 = *(v169 - 8);
  __chkstk_darwin();
  v167 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v173 = (&v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v172 = &v124 - v15;
  v170 = type metadata accessor for Track();
  v175 = *(v170 - 8);
  v16 = *(v175 + 64);
  __chkstk_darwin();
  v165 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v171 = &v124 - v17;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v166 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v20;
  __chkstk_darwin();
  v22 = &v124 - v21;
  v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v182 = v23;
  v24 = v0 + v23;
  v25 = v0;
  sub_1000089F8(v24, v185, &unk_1011926C0, &unk_100ECF870);
  if (v185[8])
  {
    sub_1000095E8(v185, &unk_1011926C0, &unk_100ECF870);
    return result;
  }

  v158 = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v185, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v28 = v25;
    v152 = v5;
    v29 = sub_1006A6078();

    v30 = [v29 _indexPathsForPreparedItems];
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v31;
    v33 = *(v31 + 16);
    if (v33)
    {
      v150 = v3;
      v144 = v1;
      v157 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells;
      v34 = v28 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
      v35 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
      v36 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
      v155 = v18;
      v37 = *(v19 + 80);
      v139 = ~v37;
      v156 = v32;
      v38 = v32 + ((v37 + 32) & ~v37);
      v149 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      v143 = v34;
      swift_beginAccess();
      v142 = v35;
      v39 = v28;
      swift_beginAccess();
      v141 = v36;
      swift_beginAccess();
      v42 = *(v19 + 16);
      v40 = v19 + 16;
      v41 = v42;
      v180 = (v40 - 8);
      v148 = (v174 + 6);
      v43 = *(v40 + 56);
      v138 = (v174 + 4);
      v146 = v175 + 16;
      v140 = v37;
      v137 = v16 + v37;
      v44 = v155;
      v45 = v40;
      v46 = v43;
      v145 = (v45 + 16);
      v136 = (v179 + 16);
      v135 = enum case for MusicPropertySource.library(_:);
      v134 = (v179 + 104);
      v133 = (v179 + 8);
      v132 = (v45 + 40);
      v131 = (v45 + 32);
      v130 = (v174 + 1);
      v147 = (v175 + 8);
      *&v47 = 136446210;
      v154 = v47;
      v181 = v45;
      v176 = v28;
      v177 = v42;
      v151 = (v175 + 32);
      v178 = v43;
      v42(v22, v38, v155);
      while (1)
      {
        sub_1000089F8(v39 + v182, &v183, &unk_1011926C0, &unk_100ECF870);
        if (v184)
        {
          (*v180)(v22, v44);
          sub_1000095E8(&v183, &unk_1011926C0, &unk_100ECF870);
          goto LABEL_7;
        }

        v179 = v38;
        v48 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v183, &unk_1011926C0, &unk_100ECF870);
        if (!v48)
        {
          (*v180)(v22, v44);
LABEL_21:
          v38 = v179;
          goto LABEL_7;
        }

        v49 = sub_1006A6078();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v51 = [v49 cellForItemAtIndexPath:isa];

        if (!v51)
        {
          (*v180)(v22, v44);
          v41 = v177;
          v46 = v178;
          goto LABEL_21;
        }

        _s13TracklistCellCMa();
        v52 = swift_dynamicCastClass();
        v46 = v178;
        if (!v52)
        {

          (*v180)(v22, v44);
          v41 = v177;
          goto LABEL_21;
        }

        v53 = v52;
        v54 = *(v52 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8);
        if ((~v54 & 0xF000000000000007) == 0)
        {
          if (qword_10117FC48 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          sub_1000060E4(v55, qword_1012193F8);
          v56 = v51;
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();

          v59 = os_log_type_enabled(v57, v58);
          v38 = v179;
          if (v59)
          {
            v60 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            v183 = v174;
            *v60 = v154;
            v61 = v56;
            LODWORD(v153) = v58;
            v62 = v61;
            v63 = [v53 description];
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;

            v67 = sub_1000105AC(v64, v66, &v183);

            *(v60 + 4) = v67;
            _os_log_impl(&_mh_execute_header, v57, v153, "Attempting to update a cell without a data object %{public}s", v60, 0xCu);
            sub_10000959C(v174);
          }

          else
          {
          }

          goto LABEL_28;
        }

        v68 = *(v52 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data);
        if (!(v54 >> 62))
        {
          v153 = *(v52 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8);
          type metadata accessor for TrackData(0);
          v174 = v68;
          v72 = swift_dynamicCastClass();
          v38 = v179;
          if (v72)
          {
            if (*(v176 + v157))
            {
              v129 = v72;
              sub_1004E5BE4(v174, v153);

              IndexPath.item.getter();
              v73 = type metadata accessor for AlbumDetailDataSource.CellType(0);
              v74 = v172;
              Array.subscript.getter(v73, v172);

              if ((*(*(v73 - 8) + 48))(v74, 1, v73) != 1)
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                v81 = v168;
                v82 = v169;
                v83 = v170;
                if (EnumCaseMultiPayload != 2)
                {
                  (*v180)(v22, v44);
                  sub_1004E5C14(v174, v153);

                  sub_1004E414C(v74, type metadata accessor for AlbumDetailDataSource.CellType);
                  goto LABEL_29;
                }

                v84 = v74 + *(sub_10010FC20(&qword_1011927A8, &qword_100ECF9A8) + 48);
                v127 = *v84;
                LODWORD(KeyPath) = *(v84 + 8);
                v126 = *v151;
                v126(v171, v74, v83);
                sub_1000089F8(v176 + v149, v81, &unk_101184730, &unk_100ECB920);
                if ((*v148)(v81, 1, v82) == 1)
                {
                  sub_1004E5C14(v174, v153);

                  (*v147)(v171, v83);
                  (*v180)(v22, v44);
                  sub_1000095E8(v81, &unk_101184730, &unk_100ECB920);
                  goto LABEL_29;
                }

                (*v138)(v167, v81, v82);
                v85 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v86 = v175;
                v125 = *(v175 + 16);
                v125(v165, v171, v83);
                v177(v166, v22, v44);
                v87 = (*(v86 + 80) + 24) & ~*(v86 + 80);
                v88 = (v137 + v87) & v139;
                v89 = swift_allocObject();
                *(v89 + 16) = v85;
                v126(v89 + v87, v165, v170);
                v124 = *v145;
                v124(v89 + v88, v166, v44);

                sub_100583538(v171, v167, KeyPath ^ 1, sub_1004E5C44, v89);

                v90 = v162;
                v91 = v164;
                (*v136)(v162, v143, v164);
                v92 = v163;
                (*v134)(v163, v135, v91);
                LODWORD(v126) = static MusicPropertySource.== infix(_:_:)();
                v93 = v92;
                v94 = *v133;
                (*v133)(v93, v91);
                v94(v90, v91);
                if (v126)
                {
                  v95 = sub_1004D21CC(v171);
                  if (v95 != 2)
                  {
                    v96 = v95;
                    swift_getKeyPath();
                    swift_getKeyPath();
                    LOBYTE(v183) = v96;
                    sub_1004E5BF8(v174, v153);
                    static Published.subscript.setter();
                  }
                }

                if ((sub_1004D27A0(v127, KeyPath) & 1) == 0)
                {
                  v97 = type metadata accessor for AttributedString();
                  v98 = v159;
                  (*(*(v97 - 8) + 56))(v159, 1, 1, v97);
                  KeyPath = swift_getKeyPath();
                  swift_getKeyPath();
                  sub_1000089F8(v98, v160, &qword_101180C90, &unk_100EBC730);
                  sub_1004E5BF8(v174, v153);
                  static Published.subscript.setter();
                  sub_1000095E8(v98, &qword_101180C90, &unk_100EBC730);
                }

                v99 = v158;
                v177(v158, v22, v44);
                (*v132)(v99, 0, 1, v44);
                v100 = *(v144 + 48);
                v101 = v150;
                sub_1000089F8(v176 + v142, v150, &unk_10118BCE0, &qword_100EC6450);
                KeyPath = v100;
                sub_1000089F8(v99, v101 + v100, &unk_10118BCE0, &qword_100EC6450);
                v102 = *v131;
                if ((*v131)(v101, 1, v44) == 1)
                {
                  sub_1000095E8(v99, &unk_10118BCE0, &qword_100EC6450);
                  v103 = v150;
                  v104 = v102(&v150[KeyPath], 1, v44) == 1;
                  v105 = v103;
                  if (v104)
                  {
                    sub_1000095E8(v103, &unk_10118BCE0, &qword_100EC6450);
                    v106 = 1;
                  }

                  else
                  {
LABEL_60:
                    sub_1000095E8(v105, &unk_10118B970, &qword_100EC71E0);
                    v106 = 0;
                  }
                }

                else
                {
                  v107 = v150;
                  sub_1000089F8(v150, v152, &unk_10118BCE0, &qword_100EC6450);
                  if (v102(v107 + KeyPath, 1, v44) == 1)
                  {
                    sub_1000095E8(v158, &unk_10118BCE0, &qword_100EC6450);
                    (*v180)(v152, v44);
                    v105 = v150;
                    goto LABEL_60;
                  }

                  v124(v166, &v150[KeyPath], v44);
                  sub_1004E41B4(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                  v108 = v152;
                  v106 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v109 = *v180;
                  (*v180)(v166, v44);
                  sub_1000095E8(v158, &unk_10118BCE0, &qword_100EC6450);
                  v109(v108, v44);
                  sub_1000095E8(v150, &unk_10118BCE0, &qword_100EC6450);
                }

                swift_getKeyPath();
                swift_getKeyPath();
                v110 = v106 & 1;
                LOBYTE(v183) = v110;
                sub_1004E5BF8(v174, v153);
                static Published.subscript.setter();
                v111 = v53[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
                v53[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v110;
                if (v110 != v111)
                {
                  [v53 setNeedsUpdateConfiguration];
                }

                v112 = v171;
                v113 = Track.id.getter();
                v115 = v114;
                v116 = *(v176 + v141);
                if (*(v116 + 16))
                {
                  v117 = v113;

                  v118 = sub_100019C10(v117, v115);
                  LOBYTE(v117) = v119;

                  if (v117)
                  {
                    v120 = *(*(v116 + 56) + 8 * v118);

                    v121 = v165;
                    v122 = v171;
                    v123 = v170;
                    v125(v165, v171, v170);
                    (*(*v120 + 224))(v121);

                    sub_1004E5C14(v174, v153);

                    (*v130)(v167, v169);
                    (*v147)(v122, v123);
LABEL_28:
                    (*v180)(v22, v44);
LABEL_29:
                    v39 = v176;
                    v41 = v177;
                    v46 = v178;
                    goto LABEL_7;
                  }

                  v112 = v171;
                }

                else
                {
                }

                sub_1004E5C14(v174, v153);

                (*v130)(v167, v169);
                (*v147)(v112, v170);
                goto LABEL_28;
              }

              (*v180)(v22, v44);
              sub_1004E5C14(v174, v153);

              v75 = v74;
              v46 = v178;
            }

            else
            {

              (*v180)(v22, v44);
              v79 = type metadata accessor for AlbumDetailDataSource.CellType(0);
              v75 = v172;
              (*(*(v79 - 8) + 56))(v172, 1, 1, v79);
              v46 = v178;
            }

            sub_1000095E8(v75, &unk_101192800, &qword_100EE5630);
          }

          else
          {

            (*v180)(v22, v44);
          }

          goto LABEL_42;
        }

        v38 = v179;
        if (v54 >> 62 != 1)
        {
          (*v180)(v22, v44);

LABEL_42:
          v39 = v176;
          v41 = v177;
          goto LABEL_7;
        }

        if (*(v176 + v157))
        {
          v174 = *(v52 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data);
          v69 = v54;
          sub_1004E5BE4(v68, v54);

          IndexPath.item.getter();
          v70 = type metadata accessor for AlbumDetailDataSource.CellType(0);
          v71 = v173;
          Array.subscript.getter(v70, v173);

          if ((*(*(v70 - 8) + 48))(v71, 1, v70) != 1)
          {
            v77 = v174;
            v78 = swift_getEnumCaseMultiPayload();
            v46 = v178;
            if (v78)
            {
              (*v180)(v22, v44);
              sub_1004E5C14(v77, v69);

              sub_1004E414C(v71, type metadata accessor for AlbumDetailDataSource.CellType);
            }

            else
            {
              sub_1003CF3B4(*v71);
              sub_1004E5C14(v77, v69);

              v46 = v178;

              (*v180)(v22, v44);
            }

            goto LABEL_47;
          }

          (*v180)(v22, v44);
          sub_1004E5C14(v174, v69);
        }

        else
        {

          (*v180)(v22, v44);
          v76 = type metadata accessor for AlbumDetailDataSource.CellType(0);
          v71 = v173;
          (*(*(v76 - 8) + 56))(v173, 1, 1, v76);
        }

        v46 = v178;
        sub_1000095E8(v71, &unk_101192800, &qword_100EE5630);
LABEL_47:
        v39 = v176;
        v41 = v177;
LABEL_7:
        v38 += v46;
        if (!--v33)
        {
          break;
        }

        v41(v22, v38, v44);
      }
    }
  }

  return result;
}

unint64_t sub_1004D214C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = sub_1004CF55C(a3, a4);

  return v8;
}

uint64_t sub_1004D21CC(uint64_t a1)
{
  v32 = a1;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v35 = &v29 - v2;
  v3 = type metadata accessor for Track();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin();
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v6 = &v29 - v5;
  v7 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v36 = *(v7 - 8);
  __chkstk_darwin();
  v31 = &v29 - v8;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v10 = &v29 - v9;
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v10, &unk_101184730, &unk_100ECB920);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v16 = &unk_101184730;
    v17 = &unk_100ECB920;
    v18 = v10;
LABEL_7:
    sub_1000095E8(v18, v16, v17);
    return 2;
  }

  (*(v12 + 32))(v14, v10, v11);
  Album.tracks.getter();
  if ((*(v36 + 48))(v6, 1, v7) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v16 = &unk_1011842D0;
    v17 = &qword_100ECBF00;
    v18 = v6;
    goto LABEL_7;
  }

  v19 = v31;
  (*(v36 + 32))();
  __chkstk_darwin();
  *(&v29 - 2) = v32;
  v20 = v35;
  sub_1002D8FA0(sub_1004E5BC4, (&v29 - 4), v35);
  v22 = v33;
  v21 = v34;
  if ((*(v33 + 48))(v20, 1, v34) == 1)
  {
    (*(v36 + 8))(v19, v7);
    (*(v12 + 8))(v14, v11);
    v16 = &qword_10118A530;
    v17 = &qword_100EC64E0;
    v18 = v20;
    goto LABEL_7;
  }

  v24 = v19;
  v25 = v30;
  (*(v22 + 32))(v30, v20, v21);
  v26 = COERCE_DOUBLE(Album.popularity(for:)());
  v28 = v27;
  (*(v22 + 8))(v25, v21);
  (*(v36 + 8))(v24, v7);
  (*(v12 + 8))(v14, v11);
  if ((v28 & 1) == 0)
  {
    return v26 >= 0.7;
  }

  return 2;
}

uint64_t sub_1004D2708(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Track();
  sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1004D27A0(uint64_t a1, char a2)
{
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v5 = (&v10 - v4);
  if (a2)
  {
    return 1;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
  {
    v7 = type metadata accessor for AlbumDetailDataSource.CellType(0);
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    goto LABEL_7;
  }

  v6 = type metadata accessor for AlbumDetailDataSource.CellType(0);

  Array.subscript.getter(v6, v5);

  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
LABEL_7:
    sub_1000095E8(v5, &unk_101192800, &qword_100EE5630);
    return 1;
  }

  if (!swift_getEnumCaseMultiPayload())
  {
    v9 = *(*v5 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists);

    return v9;
  }

  sub_1004E414C(v5, type metadata accessor for AlbumDetailDataSource.CellType);
  return 1;
}

void sub_1004D2948(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v8 = v36 - v7;
  __chkstk_darwin();
  v11 = v36 - v10;
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v12 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = 0;
          v15 = v12 + 32;
          while (*(v15 + v14) != 2)
          {
            if (v13 == ++v14)
            {
              return;
            }
          }

          v37 = *(a1 + 16);
          v38 = v9;
          v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
          swift_beginAccess();
          sub_1000089F8(v2 + v16, &v46, &unk_1011926C0, &unk_100ECF870);
          if (v47)
          {
            sub_1000095E8(&v46, &unk_1011926C0, &unk_100ECF870);
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&v46, &unk_1011926C0, &unk_100ECF870);
            if (Strong)
            {
              v40 = v6;
              v36[0] = a1;
              v36[1] = a2;
              v18 = sub_1006A6078();

              v19 = [v18 _indexPathsForPreparedItems];
              v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v21 = v20;
              v45 = *(v20 + 16);
              if (v45)
              {
                v22 = 0;
                v23 = v40;
                v39 = (v40 + 8);
                v42 = (v40 + 32);
                v43 = v40 + 16;
                v24 = _swiftEmptyArrayStorage;
                v44 = v20;
                while (v22 < *(v21 + 16))
                {
                  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
                  v26 = *(v23 + 72);
                  (*(v23 + 16))(v11, v21 + v25 + v26 * v22, v5);
                  if (IndexPath.section.getter() == v14)
                  {
                    v27 = *v42;
                    (*v42)(v8, v11, v5);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v46 = v24;
                    v41 = v27;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_10066CB48(0, *(v24 + 2) + 1, 1);
                      v24 = v46;
                    }

                    v30 = *(v24 + 2);
                    v29 = *(v24 + 3);
                    v31 = v24;
                    if (v30 >= v29 >> 1)
                    {
                      sub_10066CB48((v29 > 1), v30 + 1, 1);
                      v31 = v46;
                    }

                    *(v31 + 2) = v30 + 1;
                    v41(&v31[v25 + v30 * v26], v8, v5);
                    v23 = v40;
                    v24 = v31;
                  }

                  else
                  {
                    (*v39)(v11, v5);
                  }

                  ++v22;
                  v21 = v44;
                  if (v45 == v22)
                  {
                    goto LABEL_24;
                  }
                }

                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                __break(1u);
              }

              else
              {
                v24 = _swiftEmptyArrayStorage;
                v23 = v40;
LABEL_24:

                v32 = *(v24 + 2);
                if (v32)
                {
                  v33 = 0;
                  v45 = v23 + 16;
                  while (v32 != v33)
                  {
                    if (v33 >= *(v24 + 2))
                    {
                      goto LABEL_35;
                    }

                    v34 = v38;
                    (*(v23 + 16))(v38, &v24[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v33], v5);
                    v35 = IndexPath.item.getter();
                    (*(v23 + 8))(v34, v5);
                    if (v35 < v37)
                    {
                      type metadata accessor for AlbumDetailDataSource.CellType(0);
                      if (v35 < 0)
                      {
                        goto LABEL_36;
                      }

                      sub_1004E41B4(&qword_101192838, type metadata accessor for AlbumDetailDataSource.CellType, &unk_100ECF7B0);
                      ++v33;
                      if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
                      {
                        continue;
                      }
                    }

                    goto LABEL_31;
                  }
                }

                else
                {
LABEL_31:
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1004D2E64()
{
  v1 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - v3;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v6 = v15 - v5;
  v7 = v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState;
  result = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  if ((result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if ((result >> 62) - 1 >= 2)
    {
      if (result >> 62)
      {
        goto LABEL_7;
      }

      v11 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
      v12 = *(v7 + 8);
      v13 = *(v7 + 16);
      sub_10011896C(result, v9, v10);
      v10 = v13;
      v9 = v12;
      result = v11;
    }

    if ((result & 1) == 0)
    {
      return result;
    }

    sub_1004E5BA4(result, v9, v10);
  }

LABEL_7:
  v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(v0 + v14, v6, &unk_1011842D0, &qword_100ECBF00);
  if ((*(v2 + 48))(v6, 1, v1))
  {
    sub_1000095E8(v6, &unk_1011842D0, &qword_100ECBF00);
  }

  else
  {
    (*(v2 + 16))(v4, v6, v1);
    sub_1000095E8(v6, &unk_1011842D0, &qword_100ECBF00);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v2 + 8))(v4, v1);
    if (v15[2] == v15[1] && (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) & 1) != 0)
    {
      return 0x3FFFFFEFALL;
    }
  }

  return 0x3FFFFFEF8;
}

void sub_1004D313C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 4)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_1004E5B38;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF418;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_1004D3324(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004D2E64();
  if ((v3 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEF8)
  {
    if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection) != 1)
    {
      return;
    }

    *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection) = 0;
    v6 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v6, v12, &unk_1011926C0, &unk_100ECF870);
    if ((v13 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
      if (!Strong)
      {
        return;
      }

      v8 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 deleteItemsAtIndexPaths:v9.super.isa];
      goto LABEL_11;
    }

LABEL_8:
    sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  sub_1004E5B40(v3, v4, v5);
  if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection))
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection) = 1;
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v10, v12, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
    goto LABEL_8;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
  if (!v11)
  {
    return;
  }

  v8 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 insertItemsAtIndexPaths:v9.super.isa];
LABEL_11:
}

void sub_1004D365C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 6)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_1004E5B30;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF3A0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}