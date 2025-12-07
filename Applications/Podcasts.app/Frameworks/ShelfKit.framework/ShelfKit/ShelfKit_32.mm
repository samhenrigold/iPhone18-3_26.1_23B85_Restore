uint64_t sub_364384(uint64_t a1)
{
  v39[3] = a1;
  v2 = sub_3E5FC4();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v40);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EC544();
  __chkstk_darwin(v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v7 - 8);
  v9 = v39 - v8;
  v10 = sub_3EC1F4();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v41 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  if (*(v1 + 24))
  {
    v15 = sub_3E80D4();
  }

  else
  {
    v47 = *(v1 + 16);
    sub_17A28();
    v15 = sub_3EE1F4();
  }

  v39[2] = v15;
  v39[1] = sub_3E85B4();
  v16 = sub_3E5DC4();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850, &qword_3F5A50);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  sub_3EC1C4();
  sub_FCF8(v9, &unk_4E9EE0, &unk_3F5BC0);
  v17 = *(v1 + 64);
  v18 = *(v1 + 72);
  v49 = 1;
  v48 = 1;
  *v5 = v17;
  *(v5 + 1) = v18;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0;
  *(v5 + 2) = 0;
  v5[40] = 1;
  *(v5 + 6) = 0;
  v5[56] = 1;
  swift_storeEnumTagMultiPayload();
  v19 = objc_opt_self();

  v20 = [v19 mainBundle];
  v38._countAndFlagsBits = 0xE000000000000000;
  v50._object = 0x800000000042E990;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v21.super.isa = v20;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v40 = sub_3E5A74(v50, v51, v21, v52, 0, v38);
  v23 = v22;

  v25 = v41;
  v24 = v42;
  v26 = *(v42 + 16);
  v27 = v43;
  v26(v41, v14, v43);
  type metadata accessor for FlowAction(0);
  v28 = swift_allocObject();
  sub_FC38(v5, v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v29 = (v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v29 = 0;
  v29[1] = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v26((v28 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v25, v27);
  v30 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v31 = sub_3EC634();
  (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
  v32 = v44;
  sub_3E5FB4();
  v33 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v35 = v34;
  (*(v45 + 8))(v32, v46);
  v36 = *(v24 + 8);
  v36(v25, v27);
  sub_FC9C(v5);
  v36(v14, v27);
  *(v28 + 16) = v33;
  *(v28 + 24) = v35;
  *(v28 + 32) = v40;
  *(v28 + 40) = v23;
  *(v28 + 48) = 48;
  return v28;
}

double sub_3649BC(uint64_t a1, uint64_t a2, double a3)
{
  if (*(v3 + 24))
  {
    sub_3E80D4();
    sub_3E85B4();
    sub_3E86D4();
    sub_3EC5A4();
  }

  else
  {
    sub_17A28();
    sub_3EE1F4();
    sub_3E7A04();
    sub_3E85B4();
    sub_3E86D4();
    sub_3EC5A4();
  }

  return result;
}

void *Episode.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50, &unk_3F7520);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460, &unk_3FADB0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0, &unk_3F5BC0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0, &unk_3F5BC0);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470, &unk_3FADC0);

  return v0;
}

uint64_t Episode.__deallocating_deinit()
{
  Episode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_364D80(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 8))
  {
    return 0;
  }

  result = *v2;
  if (*v2 <= 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_364DB0()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_364DE4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);

  return v1;
}

uint64_t sub_364F0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3 + *a3;
  if (*(v4 + 8))
  {
    return 0;
  }

  result = *v4;
  if (*v4 < 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_364F80()
{
  result = qword_503220;
  if (!qword_503220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EpisodeActionType, &type metadata for EpisodeActionType, v0, v1);
    atomic_store(result, &qword_503220);
  }

  return result;
}

void sub_364FEC(uint64_t a1)
{
  sub_365600(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v1 <= 0x3F)
  {
    sub_365600(319, &qword_4FF1E0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_365600(319, &qword_4E9918, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_365600(319, &qword_4EF4D0, &type metadata accessor for EpisodeListenNowReason);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of Episode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:adamId:channelAdamId:channelName:artwork:showUberArtwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showDisplayType:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LOBYTE(a34) = a34 & 1;
  LOBYTE(a32) = a32 & 1;
  LOBYTE(a30) = a30 & 1;
  LOBYTE(a10) = a10 & 1;
  LOBYTE(a12) = a12 & 1;
  LOBYTE(a14) = a14 & 1;
  v38 = *(v37 + 344);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 64);
  v5 = *(*v3 + 368);
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  v7 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v7;
  v12 = v4;
  v8 = a3[1];
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = a3[2];
  return v5(v11, a2, v10);
}

{
  v4 = *(*v3 + 376);
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  v7[2] = a3[2];
  return v4(a1, a2, v7);
}

void sub_365600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_365654(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3657D4()
{
  result = qword_503430;
  if (!qword_503430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewingPresentationHint, &type metadata for PreviewingPresentationHint, v0, v1);
    atomic_store(result, &qword_503430);
  }

  return result;
}

uint64_t dispatch thunk of EpisodeControllerProtocol.presentShowPage(asPartOf:for:from:presentationHint:suppressMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 184))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 200))(a1, a2, a3, a4, a5, a6);
}

uint64_t Podcast.provider.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t EpisodeHeader.buttonSubtitle.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t EpisodeHeader.subscriptionName.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t EpisodeHeader.channelName.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t EpisodeHeader.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v4 = sub_3E5FC4();
  v166 = *(v4 - 8);
  v167 = v4;
  __chkstk_darwin(v4);
  v165 = &v132[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v6 - 8);
  v173 = &v132[-v7];
  v175 = sub_3E7784();
  v172 = *(v175 - 8);
  __chkstk_darwin(v175);
  v151 = &v132[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v155 = &v132[-v10];
  v184 = sub_3EBF94();
  v177 = *(v184 - 8);
  __chkstk_darwin(v184);
  v179 = &v132[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v157 = &v132[-v13];
  __chkstk_darwin(v14);
  v16 = &v132[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v17 - 8);
  v169 = &v132[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v154 = &v132[-v20];
  __chkstk_darwin(v21);
  v158 = &v132[-v22];
  __chkstk_darwin(v23);
  v176 = &v132[-v24];
  __chkstk_darwin(v25);
  v168 = &v132[-v26];
  __chkstk_darwin(v27);
  v29 = &v132[-v28];
  v30 = sub_3EBDF4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v164 = &v132[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v163 = &v132[-v34];
  __chkstk_darwin(v35);
  v162 = &v132[-v36];
  __chkstk_darwin(v37);
  v161 = &v132[-v38];
  __chkstk_darwin(v39);
  v160 = &v132[-v40];
  __chkstk_darwin(v41);
  v159 = &v132[-v42];
  __chkstk_darwin(v43);
  v156 = &v132[-v44];
  __chkstk_darwin(v45);
  __chkstk_darwin(v46);
  v48 = &v132[-v47];
  v183 = a1;
  sub_3EBE04();
  v185 = a2;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v52 = *(v31 + 8);
  v50 = v31 + 8;
  v51 = v52;
  v52(v48, v30);
  if (!Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v55 = sub_3ECEE4();
    sub_36A020(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v56 = 0xD000000000000013;
    v56[1] = 0x800000000042E9D0;
    v56[2] = v171;
    (*(*(v55 - 8) + 104))(v56, enum case for JSONError.missingProperty(_:), v55);
    swift_willThrow();
    (*(v177 + 8))(v185, v184);
    v51(v183, v30);
    return v55;
  }

  v178 = v50;
  v174 = v51;
  v153 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v180 = v30;
  sub_3EBE04();
  v181 = *(v177 + 16);
  v182 = v177 + 16;
  v181(v16, v185, v184);
  v53 = v170;
  sub_3E76C4();
  if (v53)
  {

    v54 = 1;
  }

  else
  {
    v54 = 0;
  }

  v57 = *(v172 + 56);
  v58 = v175;
  v57(v29, v54, 1, v175);
  v170 = v29;
  v59 = v29;
  v60 = v168;
  sub_FBD0(v59, v168, &qword_4F1D50, &unk_3F7520);
  v149 = type metadata accessor for HeaderModel.PrimaryArtwork(0);
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  sub_FACC(v60, v61 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, &qword_4F1D50, &unk_3F7520);
  sub_3EBE04();
  v181(v157, v185, v184);
  v62 = v176;
  sub_3E76C4();
  v152 = v61;
  v150 = v57;
  v57(v62, 0, 1, v58);

  v63 = v58;
  v64 = v158;
  sub_FBD0(v170, v158, &qword_4F1D50, &unk_3F7520);
  v65 = *(v172 + 48);
  v66 = v65(v64, 1, v58);
  v67 = v169;
  v175 = 0;
  if (v66 == 1)
  {
    v68 = v64;
  }

  else
  {
    v69 = v64;
    v70 = v155;
    sub_369EBC(v69, v155, &type metadata accessor for ArtworkModel);
    sub_FBD0(v176, v67, &qword_4F1D50, &unk_3F7520);
    if (v65(v67, 1, v58) == 1)
    {
      sub_369E5C(v70, &type metadata accessor for ArtworkModel);
      sub_FCF8(v67, &qword_4F1D50, &unk_3F7520);
      v71 = v154;
      v150(v154, 1, 1, v58);
    }

    else
    {
      if (*v67 == *v70 && v67[1] == v70[1])
      {
        v72 = 1;
      }

      else if (sub_3EE804())
      {
        v72 = 1;
      }

      else
      {
        sub_369DF4(v67, v154, &type metadata accessor for ArtworkModel);
        v72 = 0;
      }

      v73 = v150;
      v71 = v154;
      v150(v154, v72, 1, v58);
      sub_369E5C(v155, &type metadata accessor for ArtworkModel);
      sub_369E5C(v169, &type metadata accessor for ArtworkModel);
      if (v65(v71, 1, v58) != 1)
      {
        v128 = v71;
        v129 = v151;
        sub_369EBC(v128, v151, &type metadata accessor for ArtworkModel);
        v130 = v168;
        sub_369EBC(v129, v168, &type metadata accessor for ArtworkModel);
        v73(v130, 0, 1, v63);
        v131 = swift_allocObject();
        *(v131 + 16) = 0;
        sub_FACC(v130, v131 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, &qword_4F1D50, &unk_3F7520);
        v172 = v131;

        goto LABEL_19;
      }
    }

    v68 = v71;
  }

  sub_FCF8(v68, &qword_4F1D50, &unk_3F7520);
  v172 = 0;
LABEL_19:
  sub_3EBE04();
  v74 = sub_3EBDC4();
  v168 = v75;
  v169 = v74;
  v76 = v180;
  v77 = v174;
  v174(v48, v180);
  sub_3EBE04();
  v181(v179, v185, v184);
  sub_A72A8();
  sub_3EC574();
  v157 = v188;
  sub_3EBE04();
  v158 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v77(v48, v76);
  sub_3EBE04();
  v156 = sub_3EBDC4();
  v155 = v78;
  v77(v48, v76);
  sub_3EBE04();
  v151 = sub_3EBD94();
  LODWORD(v154) = v79;
  v77(v48, v76);
  sub_3EBE04();
  v150 = sub_3EBD74();
  LODWORD(v149) = v80;
  v77(v48, v76);
  sub_3EBE04();
  v148 = sub_3EBD74();
  v147 = v81;
  v77(v48, v76);
  sub_3EBE04();
  v146 = sub_3EBDC4();
  v145 = v82;
  v77(v48, v76);
  v83 = v159;
  sub_3EBE04();
  sub_3EBDC4();
  v85 = v84;
  if (v84)
  {
    v86 = v175;
    v87 = sub_3E9494();
    v88 = v86;
    if (v86)
    {

      v144 = sub_3E9484();

      v174(v83, v180);
      v88 = 0;
    }

    else
    {
      v144 = v87;
      v174(v83, v180);
    }
  }

  else
  {
    v77(v83, v76);
    v144 = 0;
    v88 = v175;
  }

  v89 = v160;
  sub_3EBE04();
  sub_3EBDC4();
  v91 = v90;
  if (v90)
  {
    v92 = sub_3E9494();
    if (v88)
    {

      v160 = sub_3E9484();

      v93 = v180;
      v94 = v174;
      v174(v89, v180);
      v175 = 0;
    }

    else
    {
      v175 = 0;
      v160 = v92;
      v93 = v180;
      v94 = v174;
      v174(v89, v180);
    }
  }

  else
  {
    v175 = v88;
    v93 = v180;
    v94 = v174;
    v174(v89, v180);
    v160 = 0;
  }

  LODWORD(v174) = v91 == 0;
  LODWORD(v159) = v85 == 0;
  v95 = v183;
  sub_3EBE04();
  sub_369DA0();
  sub_3EBCF4();
  v94(v48, v93);
  v96 = v187;
  if (v187 == 3)
  {
    v96 = 0;
  }

  v143 = v96;
  sub_3EBE04();
  sub_A18A8();
  sub_3EBCF4();
  v94(v48, v93);
  v97 = v186;
  if (v186 == 3)
  {
    v97 = 1;
  }

  v142 = v97;
  v98 = v161;
  sub_3EBE04();
  v141 = sub_3EBD24();
  v94(v98, v93);
  v99 = v162;
  sub_3EBE04();
  LODWORD(v161) = sub_3EBD24();
  v94(v99, v93);
  sub_3EBE04();
  v181(v179, v185, v184);
  type metadata accessor for HeaderButtonItem(0);
  sub_36A020(&qword_503440, type metadata accessor for HeaderButtonItem, "A&\n");
  v162 = sub_3ED644();
  v100 = v163;
  sub_3EBE04();
  sub_3EBDC4();
  v94(v100, v93);
  v101 = sub_3EDDC4();
  if (v102)
  {
    v103 = 0;
  }

  else
  {
    v103 = v101;
  }

  v163 = v103;
  v104 = v164;
  sub_3EBE04();
  v105 = sub_3EBD24();
  v94(v104, v93);
  LODWORD(v164) = (v105 == 2) | v105;
  sub_3EBE04();
  v140 = sub_3EBDC4();
  v139 = v106;
  v94(v48, v93);
  sub_3EBE04();
  v138 = sub_3EBDC4();
  v137 = v107;
  v94(v48, v93);
  sub_3EBE04();
  v136 = sub_3EBD94();
  v135 = v108;
  v94(v48, v93);
  sub_3EBE04();
  v134 = sub_3EBD94();
  v109 = v184;
  v133 = v110;
  v94(v48, v93);
  sub_3EC634();
  sub_3EBE04();
  v111 = v185;
  v112 = v109;
  v181(v179, v185, v109);
  sub_3EC574();
  v113 = v165;
  sub_3E5FB4();
  v114 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v116 = v115;
  v117 = v152;

  v118 = v172;

  (*(v177 + 8))(v111, v112);
  v94(v95, v180);
  (*(v166 + 8))(v113, v167);
  sub_FCF8(v176, &qword_4F1D50, &unk_3F7520);
  sub_FCF8(v170, &qword_4F1D50, &unk_3F7520);
  v55 = swift_allocObject();
  *(v55 + 16) = v114;
  *(v55 + 24) = v116;
  *(v55 + 40) = v117;
  *(v55 + 48) = v118;
  v119 = v168;
  *(v55 + 104) = v169;
  *(v55 + 112) = v119;
  v120 = v151;
  *(v55 + 120) = v157;
  *(v55 + 128) = v120;
  *(v55 + 32) = 0;
  *(v55 + 136) = v154 & 1;
  *(v55 + 144) = v150;
  *(v55 + 152) = v149 & 1;
  *(v55 + 160) = v148;
  *(v55 + 168) = v147 & 1;
  v121 = v145;
  *(v55 + 56) = v146;
  *(v55 + 64) = v121;
  *(v55 + 72) = v144;
  *(v55 + 80) = v159;
  *(v55 + 88) = v160;
  *(v55 + 96) = v174;
  *(v55 + 97) = v143;
  *(v55 + 98) = v142;
  v122 = v153;
  *(v55 + 176) = v158;
  *(v55 + 184) = v122;
  v123 = v155;
  *(v55 + 192) = v156;
  *(v55 + 200) = v123;
  *(v55 + 208) = v141 & 1;
  *(v55 + 209) = v161 & 1;
  v124 = v163;
  *(v55 + 216) = v162;
  *(v55 + 224) = v124;
  *(v55 + 232) = v164 & 1;
  v125 = v139;
  *(v55 + 240) = v140;
  *(v55 + 248) = v125;
  v126 = v137;
  *(v55 + 256) = v138;
  *(v55 + 264) = v126;
  *(v55 + 272) = v136;
  *(v55 + 280) = v135 & 1;
  *(v55 + 288) = v134;
  *(v55 + 296) = v133 & 1;
  sub_FACC(v173, v55 + OBJC_IVAR____TtC8ShelfKit13EpisodeHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v55;
}

uint64_t EpisodeHeader.__allocating_init(showArtwork:episodeArtwork:title:episodeReleaseDate:duration:seasonNumber:episodeNumber:uuid:adamId:channelAdamId:mediaType:episodeType:providerAction:primaryButtonAction:buttonSubtitle:isExplicit:showTypeIsSerial:headerButtonItems:episodeEntitlementState:hasFreeVersion:susbscriptionName:shelfUniqueId:channelName:referenceTime:playerTime:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, __int128 a12, uint64_t a13, char a14, uint64_t a15, int a16, __int128 a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, __int128 a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33)
{
  v35 = swift_allocObject();
  *(v35 + 32) = 0;
  *(v35 + 16) = a26;
  *(v35 + 24) = a27;
  *(v35 + 40) = a1;
  *(v35 + 48) = a2;
  *(v35 + 104) = a3;
  *(v35 + 112) = a4;
  *(v35 + 120) = a5;
  *(v35 + 128) = a6;
  *(v35 + 136) = a7 & 1;
  *(v35 + 144) = a8;
  *(v35 + 152) = a9 & 1;
  *(v35 + 160) = a10;
  *(v35 + 168) = a11 & 1;
  *(v35 + 56) = a12;
  *(v35 + 72) = a13;
  *(v35 + 80) = a14 & 1;
  *(v35 + 88) = a15;
  *(v35 + 96) = a16 & 1;
  *(v35 + 97) = *(&a16 + 1);
  *(v35 + 176) = a17;
  *(v35 + 192) = a18;
  *(v35 + 200) = a19;
  *(v35 + 208) = a20;
  *(v35 + 209) = a21;
  *(v35 + 216) = a22;
  *(v35 + 224) = a23;
  *(v35 + 232) = a24;
  *(v35 + 240) = a25;
  *(v35 + 256) = a28;
  *(v35 + 272) = a29;
  *(v35 + 280) = a30 & 1;
  *(v35 + 288) = a31;
  *(v35 + 296) = a32 & 1;
  sub_FACC(a33, v35 + OBJC_IVAR____TtC8ShelfKit13EpisodeHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v35;
}

uint64_t EpisodeHeader.init(showArtwork:episodeArtwork:title:episodeReleaseDate:duration:seasonNumber:episodeNumber:uuid:adamId:channelAdamId:mediaType:episodeType:providerAction:primaryButtonAction:buttonSubtitle:isExplicit:showTypeIsSerial:headerButtonItems:episodeEntitlementState:hasFreeVersion:susbscriptionName:shelfUniqueId:channelName:referenceTime:playerTime:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, __int128 a12, uint64_t a13, char a14, uint64_t a15, int a16, __int128 a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, __int128 a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33)
{
  *(v33 + 32) = 0;
  *(v33 + 16) = a26;
  *(v33 + 24) = a27;
  *(v33 + 40) = a1;
  *(v33 + 48) = a2;
  *(v33 + 104) = a3;
  *(v33 + 112) = a4;
  *(v33 + 120) = a5;
  *(v33 + 128) = a6;
  *(v33 + 136) = a7 & 1;
  *(v33 + 144) = a8;
  *(v33 + 152) = a9 & 1;
  *(v33 + 160) = a10;
  *(v33 + 168) = a11 & 1;
  *(v33 + 56) = a12;
  *(v33 + 72) = a13;
  *(v33 + 80) = a14 & 1;
  *(v33 + 88) = a15;
  *(v33 + 96) = a16 & 1;
  *(v33 + 97) = *(&a16 + 1);
  *(v33 + 176) = a17;
  *(v33 + 192) = a18;
  *(v33 + 200) = a19;
  *(v33 + 208) = a20;
  *(v33 + 209) = a21;
  *(v33 + 216) = a22;
  *(v33 + 224) = a23;
  *(v33 + 232) = a24;
  *(v33 + 240) = a25;
  *(v33 + 256) = a28;
  *(v33 + 272) = a29;
  *(v33 + 280) = a30 & 1;
  *(v33 + 288) = a31;
  *(v33 + 296) = a32 & 1;
  sub_FACC(a33, v33 + OBJC_IVAR____TtC8ShelfKit13EpisodeHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v33;
}

void *EpisodeHeader.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13EpisodeHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v0;
}

uint64_t EpisodeHeader.__deallocating_deinit()
{
  EpisodeHeader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_3679A8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = EpisodeHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t EpisodeHeader.__allocating_init(lockup:headerButtonItems:shelfUniqueId:referenceTime:playerTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, double a9)
{
  v126 = a8;
  v107 = a7;
  v125 = a6;
  v133 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a2;
  v116 = sub_3E6B04();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460, &unk_3FADB0);
  __chkstk_darwin(v11 - 8);
  v123 = &v107 - v12;
  v120 = sub_3E5FC4();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v14 - 8);
  v136 = &v107 - v15;
  v121 = sub_3EC1F4();
  v132 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v131 = &v107 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0, &unk_3F6570);
  __chkstk_darwin(v19 - 8);
  v130 = &v107 - v20;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80, &unk_3FA8C0);
  __chkstk_darwin(v134);
  v135 = &v107 - v21;
  v22 = sub_3E7784();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v26 - 8);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v107 - v30;
  sub_FBD0(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &v107 - v30, &qword_4F1D50, &unk_3F7520);
  type metadata accessor for HeaderModel.PrimaryArtwork(0);
  v32 = swift_allocObject();
  *(v32 + 16) = 1;
  v124 = v32;
  sub_FACC(v31, v32 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, &qword_4F1D50, &unk_3F7520);
  swift_retain_n();
  LegacyEpisodeLockup.dedupedEpisodeArtwork.getter(v28);
  if ((*(v23 + 48))(v28, 1, v22) == 1)
  {
    sub_FCF8(v28, &qword_4F1D50, &unk_3F7520);
    v122 = 0;
  }

  else
  {
    sub_369EBC(v28, v25, &type metadata accessor for ArtworkModel);
    sub_369EBC(v25, v31, &type metadata accessor for ArtworkModel);
    (*(v23 + 56))(v31, 0, 1, v22);
    v33 = swift_allocObject();
    *(v33 + 16) = 1;
    v122 = v33;
    sub_FACC(v31, v33 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, &qword_4F1D50, &unk_3F7520);
  }

  v34 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  v35 = a1 + v34;
  v36 = v135;
  sub_FBD0(v35, v135, &qword_4EED80, &unk_3FA8C0);
  sub_3ECAF4();
  sub_FCF8(v36, &qword_4EED80, &unk_3FA8C0);
  if (v138)
  {
    type metadata accessor for PlayStationAction(0);
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = *(v37 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID + 8);
      v130 = *(v37 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
      v39 = *(v37 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID + 8);
      v113 = *(v37 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
      v40 = *(v37 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID);
      LODWORD(v112) = *(v37 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID + 8);
      v41 = v131;
      v42 = *(v132 + 16);
      v43 = v121;
      v42(v131, v37 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v121);
      type metadata accessor for PlayPauseStationAction(0);
      v44 = swift_allocObject();
      v45 = (v44 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID);
      *v45 = v130;
      v45[1] = v38;
      v46 = (v44 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
      *v46 = v113;
      v46[1] = v39;
      v47 = v44 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID;
      *v47 = v40;
      *(v47 + 8) = v112;
      v48 = v118;
      v42(v118, v41, v43);
      v49 = sub_3EC634();
      v50 = v136;
      (*(*(v49 - 8) + 56))(v136, 1, 1, v49);

      v51 = v117;
      sub_3E5FB4();
      v52 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v54 = v53;
      v55 = v132;

      (*(v119 + 8))(v51, v120);
      (*(v55 + 8))(v131, v43);
      goto LABEL_12;
    }
  }

  v113 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v56 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid + 8);
  v112 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) == 2)
  {
    v111 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
    v57 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId + 8);
  }

  else
  {
    v111 = 0;
    v57 = 1;
  }

  v58 = sub_3E8944();
  v59 = *(*(v58 - 8) + 56);
  v60 = v130;
  v59(v130, 1, 1, v58);

  v61 = v131;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for LibraryPlayPauseAction(0);
  v44 = swift_allocObject();
  v62 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  v59(v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings, 1, 1, v58);
  v63 = (v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  *v63 = v112;
  v63[1] = v56;
  v64 = v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
  *v64 = v113;
  *(v64 + 8) = 0;
  v65 = v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
  *v65 = v111;
  *(v65 + 8) = v57;
  swift_beginAccess();
  sub_3B520(v60, v44 + v62);
  swift_endAccess();
  *(v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = 2;
  v66 = sub_3E8474();
  v67 = (v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  *v67 = v66;
  v67[1] = v68;
  *(v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = 0;
  *(v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = 0;
  *(v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = 0;
  v69 = v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
  *v69 = 0;
  *(v69 + 8) = 1;
  *(v44 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = 0;
  v55 = v132;
  v48 = v118;
  v43 = v121;
  (*(v132 + 16))(v118, v61, v121);
  v70 = sub_3EC634();
  v50 = v136;
  (*(*(v70 - 8) + 56))(v136, 1, 1, v70);
  v71 = v117;
  sub_3E5FB4();
  v52 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v54 = v72;
  (*(v119 + 8))(v71, v120);
  (*(v55 + 8))(v61, v43);
  sub_FCF8(v130, &qword_4E9FD0, &unk_3F6570);
LABEL_12:
  *(v44 + 16) = v52;
  *(v44 + 24) = v54;
  *(v44 + 32) = 0;
  *(v44 + 40) = 0;
  *(v44 + 48) = 32;
  (*(v55 + 32))(v44 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v48, v43);
  sub_FACC(v50, v44 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v73 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v132 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v74 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate);
  v75 = v123;
  v131 = v73;
  if (v74)
  {

    sub_3E6B14();
    v76 = sub_3E5F84();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(v75, 1, v76) != 1)
    {
      v78 = v114;
      (*(v77 + 16))(v114, v75, v76);
      (*(v115 + 104))(v78, enum case for LazyDate.State.valid(_:), v116);
      v130 = sub_3E6AF4();
      v79 = *(v77 + 8);

      v79(v75, v76);
      goto LABEL_17;
    }
  }

  else
  {
    v80 = sub_3E5F84();
    (*(*(v80 - 8) + 56))(v75, 1, 1, v80);
  }

  sub_FCF8(v75, &qword_4EF460, &unk_3FADB0);
  v130 = 0;
LABEL_17:
  v81 = (a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration);
  v82 = (a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber);
  v83 = (a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber);
  v84 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid + 8);
  v85 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState;
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) == 2)
  {
    v121 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
    v86 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId + 8);
  }

  else
  {
    v121 = 0;
    v86 = 1;
  }

  LODWORD(v120) = v86;
  v117 = *v81;
  LODWORD(v116) = *(v81 + 8);
  v115 = *v82;
  LODWORD(v114) = *(v82 + 8);
  v113 = *v83;
  v119 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  LODWORD(v111) = *(v83 + 8);
  LODWORD(v118) = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType);
  v110 = *(a1 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  LODWORD(v112) = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType);
  v87 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  swift_beginAccess();
  v88 = v135;
  sub_FBD0(a1 + v87, v135, &qword_4EED80, &unk_3FA8C0);

  sub_3ECAF4();

  sub_FCF8(v88, &qword_4EED80, &unk_3FA8C0);
  v134 = v137;
  LODWORD(v135) = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);

  v89 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName + 8);
  v90 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName + 8);
  v123 = v84;
  if (v125)
  {
    v133 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime);
    v125 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime + 8);
  }

  else
  {
    v125 = 0;
  }

  v91 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial);
  v92 = *(a1 + v85);
  v109 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion);
  v93 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v108 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  if (v126)
  {
    v94 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime);
    v95 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime + 8);
  }

  else
  {
    v95 = 0;
    v94 = v107;
  }

  v96 = sub_3EC634();
  v97 = v136;
  (*(*(v96 - 8) + 56))(v136, 1, 1, v96);
  v98 = swift_allocObject();
  v99 = v128;
  *(v98 + 16) = v127;
  *(v98 + 24) = v99;
  v100 = v122;
  *(v98 + 40) = v124;
  *(v98 + 48) = v100;
  v101 = v131;
  *(v98 + 104) = v132;
  *(v98 + 112) = v101;
  *(v98 + 32) = 0;
  v102 = v117;
  *(v98 + 120) = v130;
  *(v98 + 128) = v102;
  *(v98 + 136) = v116;
  *(v98 + 144) = v115;
  *(v98 + 152) = v114;
  *(v98 + 160) = v113;
  *(v98 + 168) = v111;
  v103 = v123;
  *(v98 + 56) = v110;
  *(v98 + 64) = v103;
  *(v98 + 72) = v119;
  *(v98 + 80) = 0;
  *(v98 + 88) = v121;
  *(v98 + 96) = v120;
  *(v98 + 97) = v118;
  *(v98 + 98) = v112;
  *(v98 + 176) = v134;
  *(v98 + 184) = v44;
  *(v98 + 192) = 0;
  *(v98 + 200) = 0;
  *(v98 + 208) = v135;
  *(v98 + 209) = v91;
  *(v98 + 216) = v129;
  *(v98 + 224) = v92;
  *&v104 = v93;
  *(&v104 + 1) = v89;
  *(v98 + 232) = v109;
  *&v105 = v108;
  *(&v105 + 1) = v90;
  *(v98 + 240) = v104;
  *(v98 + 256) = v105;
  *(v98 + 272) = v133;
  *(v98 + 280) = v125;
  *(v98 + 288) = v94;
  *(v98 + 296) = v95;
  sub_FACC(v97, v98 + OBJC_IVAR____TtC8ShelfKit13EpisodeHeader_impressionMetrics, &unk_4E9170, &unk_3F4890);
  return v98;
}

uint64_t EpisodeHeader.listenNowReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3E8D24();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t EpisodeHeader.seasonNumberOpt.getter()
{
  if (*(v0 + 152))
  {
    return 0;
  }

  result = *(v0 + 144);
  if (result <= 0)
  {
    return 0;
  }

  return result;
}

uint64_t EpisodeHeader.episodeNumberOpt.getter()
{
  if (*(v0 + 168))
  {
    return 0;
  }

  result = *(v0 + 160);
  if (result <= 0)
  {
    return 0;
  }

  return result;
}

uint64_t EpisodeHeader.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 120))
  {

    return sub_3E6B14();
  }

  else
  {
    v4 = sub_3E5F84();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t sub_368CD0()
{
  v1 = *(*v0 + 256);

  return v1;
}

uint64_t sub_368D04()
{
  v1 = *(*v0 + 240);

  return v1;
}

uint64_t sub_368D90()
{
  if (*(*v0 + 152))
  {
    return 0;
  }

  result = *(*v0 + 144);
  if (result < 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_368DBC()
{
  if (*(*v0 + 168))
  {
    return 0;
  }

  result = *(*v0 + 160);
  if (result < 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_368DE8@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 120))
  {

    return sub_3E6B14();
  }

  else
  {
    v4 = sub_3E5F84();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t EpisodeHeader.impressionableActions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80, &qword_3F7EA0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_3F7950;
  *(v1 + 32) = *(v0 + 184);

  return v1;
}

uint64_t sub_368ED4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80, &qword_3F7EA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_3F7950;
  *(v2 + 32) = *(v1 + 184);

  return v2;
}

void EpisodeHeader.bookmarkButtonData.getter(char *a1@<X8>)
{
  v3 = type metadata accessor for HeaderButtonItem(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500648, &qword_4179F0);
  __chkstk_darwin(v10 - 8);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = *(v1 + 216);
  v19 = *(v18 + 16);

  if (v19)
  {
    v34 = v6;
    v35 = v14;
    v36 = a1;
    v20 = 0;
    v21 = v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v33 = v4;
    v22 = *(v4 + 72);
    while (1)
    {
      sub_369DF4(v21, v9, type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_369E5C(v9, type metadata accessor for HeaderButtonItem);
      v23 = type metadata accessor for BookmarkButtonPresenter.Data(0);
      (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
      sub_FCF8(v17, &qword_500648, &qword_4179F0);
      ++v20;
      v21 += v22;
      if (v19 == v20)
      {
        v20 = v19;
        goto LABEL_8;
      }
    }

    sub_369EBC(v9, v17, type metadata accessor for BookmarkButtonPresenter.Data);
    v24 = type metadata accessor for BookmarkButtonPresenter.Data(0);
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    sub_FCF8(v17, &qword_500648, &qword_4179F0);
LABEL_8:
    v14 = v35;
    a1 = v36;
    v4 = v33;
    v6 = v34;
  }

  else
  {
    v20 = 0;
  }

  v25 = *(v18 + 16);
  v26 = v37;
  if (v20 == v25)
  {
    v27 = type metadata accessor for BookmarkButtonPresenter.Data(0);
    (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
LABEL_17:

    return;
  }

  if (v20 >= v25)
  {
    __break(1u);
  }

  else
  {
    sub_369DF4(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, type metadata accessor for HeaderButtonItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_369EBC(v6, v14, type metadata accessor for BookmarkButtonPresenter.Data);
      v28 = 0;
    }

    else
    {
      sub_369E5C(v6, type metadata accessor for HeaderButtonItem);
      v28 = 1;
    }

    v29 = type metadata accessor for BookmarkButtonPresenter.Data(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 56);
    v31(v14, v28, 1, v29);
    sub_FBD0(v14, v26, &qword_500648, &qword_4179F0);
    if ((*(v30 + 48))(v26, 1, v29) != 1)
    {
      sub_369EBC(v26, a1, type metadata accessor for BookmarkButtonPresenter.Data);
      sub_FCF8(v14, &qword_500648, &qword_4179F0);
      v31(a1, 0, 1, v29);
      goto LABEL_17;
    }
  }

  __break(1u);
}

void EpisodeHeader.downloadButtonData.getter(char *a1@<X8>)
{
  v3 = type metadata accessor for HeaderButtonItem(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503448, &qword_41CA60);
  __chkstk_darwin(v10 - 8);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = *(v1 + 216);
  v19 = *(v18 + 16);

  if (v19)
  {
    v34 = v6;
    v35 = v14;
    v36 = a1;
    v20 = 0;
    v21 = v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v33 = v4;
    v22 = *(v4 + 72);
    while (1)
    {
      sub_369DF4(v21, v9, type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      sub_369E5C(v9, type metadata accessor for HeaderButtonItem);
      v23 = type metadata accessor for DownloadButtonPresenter.Data(0);
      (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
      sub_FCF8(v17, &qword_503448, &qword_41CA60);
      ++v20;
      v21 += v22;
      if (v19 == v20)
      {
        v20 = v19;
        goto LABEL_8;
      }
    }

    sub_369EBC(v9, v17, type metadata accessor for DownloadButtonPresenter.Data);
    v24 = type metadata accessor for DownloadButtonPresenter.Data(0);
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    sub_FCF8(v17, &qword_503448, &qword_41CA60);
LABEL_8:
    v14 = v35;
    a1 = v36;
    v4 = v33;
    v6 = v34;
  }

  else
  {
    v20 = 0;
  }

  v25 = *(v18 + 16);
  v26 = v37;
  if (v20 == v25)
  {
    v27 = type metadata accessor for DownloadButtonPresenter.Data(0);
    (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
LABEL_17:

    return;
  }

  if (v20 >= v25)
  {
    __break(1u);
  }

  else
  {
    sub_369DF4(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, type metadata accessor for HeaderButtonItem);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_369EBC(v6, v14, type metadata accessor for DownloadButtonPresenter.Data);
      v28 = 0;
    }

    else
    {
      sub_369E5C(v6, type metadata accessor for HeaderButtonItem);
      v28 = 1;
    }

    v29 = type metadata accessor for DownloadButtonPresenter.Data(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 56);
    v31(v14, v28, 1, v29);
    sub_FBD0(v14, v26, &qword_503448, &qword_41CA60);
    if ((*(v30 + 48))(v26, 1, v29) != 1)
    {
      sub_369EBC(v26, a1, type metadata accessor for DownloadButtonPresenter.Data);
      sub_FCF8(v14, &qword_503448, &qword_41CA60);
      v31(a1, 0, 1, v29);
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t EpisodeHeader.resolvedPrimaryAction.getter()
{
  v1 = *(v0 + 184);
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
  }

  if ((*(v0 + 280) & 1) != 0 || (v3 = *(v0 + 272), v3 < 1.0))
  {
    if (*(v0 + 296))
    {
    }

    v3 = *(v0 + 288);
    if (v3 < 1.0)
    {
    }
  }

  v4 = *v1;
  v5 = *(v2 + 8);
  v6 = v2;

  v7 = v5(v4, v6, v3);

  return v7;
}

uint64_t EpisodeHeader.backgroundArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 48);
  if (v4)
  {
    return sub_FBD0(v4 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, a1, &qword_4F1D50, &unk_3F7520);
  }

  v6 = sub_3E7784();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

uint64_t EpisodeHeader.preferredBackgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 48);
  if (!v4)
  {
    v10 = sub_3E7784();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    goto LABEL_6;
  }

  sub_FBD0(v4 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, v3, &qword_4F1D50, &unk_3F7520);
  v5 = sub_3E7784();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
LABEL_6:
    sub_FCF8(v3, &qword_4F1D50, &unk_3F7520);
    return 0;
  }

  v6 = *(v3 + 7);
  v7 = v3[64];
  sub_1F7418(v6, v3[64]);
  sub_369E5C(v3, &type metadata accessor for ArtworkModel);
  if (v7 != 255)
  {
    v8 = sub_3E9454();
    sub_234D4C(v6, v7);
    return v8;
  }

  return 0;
}

uint64_t EpisodeHeader.uberStyle.getter()
{
  if (*(v0 + 48))
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_369CD0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*v2 + 48);
  if (v4)
  {
    return sub_FBD0(v4 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork, a1, &qword_4F1D50, &unk_3F7520);
  }

  v6 = sub_3E7784();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

unint64_t sub_369DA0()
{
  result = qword_503438;
  if (!qword_503438)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for EpisodeMediaType, &type metadata for EpisodeMediaType, v0, v1);
    atomic_store(result, &qword_503438);
  }

  return result;
}

uint64_t sub_369DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_369E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_369EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_369F24(uint64_t a1)
{
  result = sub_36A020(&qword_503450, type metadata accessor for EpisodeHeader, protocol conformance descriptor for EpisodeHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for EpisodeHeader(uint64_t a1)
{
  result = qword_503480;
  if (!qword_503480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_369FC8(uint64_t a1)
{
  result = sub_36A020(&qword_4FCAE0, type metadata accessor for EpisodeHeader, protocol conformance descriptor for EpisodeHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_36A020(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_36A070(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of EpisodeHeader.__allocating_init(showArtwork:episodeArtwork:title:episodeReleaseDate:duration:seasonNumber:episodeNumber:uuid:adamId:channelAdamId:mediaType:episodeType:providerAction:primaryButtonAction:buttonSubtitle:isExplicit:showTypeIsSerial:headerButtonItems:episodeEntitlementState:hasFreeVersion:susbscriptionName:shelfUniqueId:channelName:referenceTime:playerTime:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a7 & 1;
  v9 = *(v7 + 304);

  return v9(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t EpisodeListType.title.getter()
{
  result = 0;
  v2 = *(v0 + 64);
  if (v2 <= 4)
  {
    if (v2 - 1 < 2)
    {
      return result;
    }

    if (v2 - 3 >= 2)
    {
      v10 = [objc_opt_self() mainBundle];
      v14._countAndFlagsBits = 0xE000000000000000;
      v11._countAndFlagsBits = 0x554F595F4D4F5246;
      v11._object = 0xEF53574F48535F52;
    }

    else
    {
      v10 = [objc_opt_self() mainBundle];
      v14._countAndFlagsBits = 0xE000000000000000;
      v11._countAndFlagsBits = 0x5345444F53495045;
      v11._object = 0xE800000000000000;
    }

    goto LABEL_16;
  }

  if (*(v0 + 64) <= 6u)
  {
    if (v2 == 5)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v2 - 7 < 3)
  {
    return result;
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v0[5];
  v6 = v0[6] | v0[7];
  v7 = v0[4] | v0[3] | v0[2];
  if (!(v6 | *v0 | v5 | v7 | v4))
  {
    v9 = "";
    v10 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000013;
    goto LABEL_15;
  }

  v8 = v6 | v5 | v7 | v4;
  if (v3 == 1 && !v8)
  {
    v9 = ".fetchCachedStoreShelves()";
    v10 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000018;
LABEL_15:
    v11._object = (v9 | 0x8000000000000000);
    goto LABEL_16;
  }

  if (v3 == 2 && !v8)
  {
LABEL_12:
    v10 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v11._countAndFlagsBits = 0x5458454E5F5055;
    v11._object = 0xE700000000000000;
LABEL_16:
    v15.value._countAndFlagsBits = 0;
    v15.value._object = 0;
    v12.super.isa = v10;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v13 = sub_3E5A74(v11, v15, v12, v16, 0, v14);

    return v13;
  }

  if (v3 == 3 && !v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v11._countAndFlagsBits = 0x736970452077654ELL;
    v11._object = 0xEC0000007365646FLL;
    goto LABEL_16;
  }

  if (v3 == 4 && !v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v11._object = 0x8000000000429480;
    v11._countAndFlagsBits = 0xD000000000000010;
    goto LABEL_16;
  }

  if (v3 == 5 && !v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v11._countAndFlagsBits = 0x455F54534554414CLL;
    v11._object = 0xEF5345444F534950;
    goto LABEL_16;
  }

  result = 0;
  if (v3 == 6 && !v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v11._countAndFlagsBits = 0x41535F454C544954;
    v11._object = 0xEB00000000444556;
    goto LABEL_16;
  }

  return result;
}

uint64_t EpisodeListType.shelfItemKind.getter()
{
  v1 = v0[64];
  if (v1 > 0xA)
  {
    return 5;
  }

  if (((1 << v1) & 0x3BC) != 0)
  {
    return 10;
  }

  v3 = v0[1];
  if (v1 == 6)
  {
    if (v3)
    {
      return 5;
    }

    else
    {
      return 9;
    }
  }

  if (v1 != 10)
  {
    return 5;
  }

  v4 = *v0 | (v3 << 8) | (*(v0 + 2) << 16) | (*(v0 + 3) << 48);
  v5 = *(v0 + 4);
  v7 = *(v0 + 2);
  v6 = *(v0 + 3);
  v8 = *(v0 + 1);
  v9 = *(v0 + 6) | *(v0 + 7) | *(v0 + 5);
  if (v9 | v5 | v6 | v4 | v7 | v8 && ((v10 = v9 | v5 | v6 | v7 | v8, v4 != 1) || v10) && v4 == 2 && !v10)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t EpisodeSortType.displayTitle.getter(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 8u)
  {
    v3 = a1 >= 4u;
    v4 = a1 - 4;
    if (v3)
    {
      if (v4 < 3)
      {
        return result;
      }

      v5 = "_BY_DATE_DOWNLOADED";
      v6 = [objc_opt_self() mainBundle];
      v11._countAndFlagsBits = 0xEA00000000006465;
      v7 = 0x7661532065746144;
      v8._countAndFlagsBits = 0xD00000000000001ELL;
    }

    else
    {
      v5 = "SORT_MENU_OPTION_BY_DATE_SAVED";
      v6 = [objc_opt_self() mainBundle];
      v11._countAndFlagsBits = 0xEE0064656873696CLL;
      v7 = 0x6275502065746144;
      v8._countAndFlagsBits = 0xD000000000000022;
    }

    goto LABEL_13;
  }

  if (a1 > 0x10u)
  {
    goto LABEL_12;
  }

  if (((1 << a1) & 0x1B000) != 0)
  {
    return result;
  }

  if (a1 == 11)
  {
    v5 = "DOWNLOADED_EPISODES";
    v6 = [objc_opt_self() mainBundle];
    v11._countAndFlagsBits = 0xE500000000000000;
    v7 = 0x656C746954;
    v8._countAndFlagsBits = 0xD00000000000001BLL;
LABEL_13:
    v8._object = (v5 | 0x8000000000000000);
    goto LABEL_14;
  }

  if (a1 != 14)
  {
LABEL_12:
    v5 = "EPISODES_SORT_BY_DATE_TITLE";
    v6 = [objc_opt_self() mainBundle];
    v11._countAndFlagsBits = 0xEF646564616F6C6ELL;
    v7 = 0x776F442065746144;
    v8._countAndFlagsBits = 0xD000000000000023;
    goto LABEL_13;
  }

  v6 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0xED0000776F685320;
  v7 = 0x79422070756F7247;
  v8._object = 0x800000000042B050;
  v8._countAndFlagsBits = 0xD000000000000018;
LABEL_14:
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v9.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v10 = sub_3E5A74(v8, v12, v9, v13, v7, v11);

  return v10;
}

uint64_t EpisodeSortType.displaySubtitle(with:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a1;
  if ((sub_3E7F24() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (v3 > 7u)
  {
    if (v3 > 0xAu)
    {
      if (v3 - 12 < 5)
      {
        return result;
      }

      v5 = [objc_opt_self() mainBundle];
      v13._countAndFlagsBits = 0x800000000042EBA0;
      v7._countAndFlagsBits = 0x6E69646E65637341;
      v6 = 0xD00000000000001FLL;
      v7._object = 0xE900000000000067;
      v8.value._countAndFlagsBits = 0;
      v8.value._object = 0;
      v9.super.isa = v5;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      goto LABEL_16;
    }

    if (v3 == 9)
    {
      goto LABEL_11;
    }

LABEL_14:
    v5 = [objc_opt_self() mainBundle];
    v13._countAndFlagsBits = 0x800000000042EB60;
    v11 = 1701080143;
    goto LABEL_15;
  }

  if (v3 > 2u)
  {
    if (v3 - 4 < 3)
    {
      return result;
    }

    if (v3 == 3)
    {
      goto LABEL_14;
    }
  }

  else if (v3 == 1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v5 = [objc_opt_self() mainBundle];
  v13._countAndFlagsBits = 0x800000000042EB80;
  v11 = 1702323534;
LABEL_15:
  v7._countAndFlagsBits = v11 | 0x4620747300000000;
  v7._object = 0xEC00000074737269;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v9.super.isa = v5;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = 0xD00000000000001ELL;
LABEL_16:
  v12 = sub_3E5A74(v7, v8, v9, v10, v6, v13);

  return v12;
}

void EpisodeListType.desiredClickActionType.getter(char *a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = sub_3E74A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 64) == 6)
  {
    if (v3)
    {
      v8 = 5;
    }

    else
    {
      v8 = 9;
    }

    if (ModernShelf.ItemKind.rawValue.getter(v8) != 0x4865646F73697065 || v9 != 0xEB000000006F7265)
    {
      sub_3EE804();
    }

    v12 = sub_3E7424();
    v16[3] = v12;
    v16[4] = sub_26E208();
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v16);
    (*(*(v12 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.upNextTapToShowDetailExperiment(_:), v12);
    LOBYTE(v12) = sub_3E6C64();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    if (v12)
    {
      v11 = 3;
    }

    else
    {
      (*(v5 + 104))(v7, enum case for PodcastsBagFeatureFlags.Key.upNextTapToShowDetail(_:), v4);
      v14 = sub_3E74B4();
      (*(v5 + 8))(v7, v4);
      if (v14)
      {
        v11 = 3;
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 4;
  }

  *a1 = v11;
}

double EpisodeListType.groupedFlowDestination(podcastUUID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 64) == 10)
  {
    v5 = *(v3 + 40);
    v6 = *(v3 + 8);
    v7 = *(v3 + 48) | *(v3 + 56);
    v8 = *(v3 + 32) | *(v3 + 24) | *(v3 + 16);
    if (!(v7 | *v3 | v5 | v8 | v6))
    {
      *a3 = a1;
      *(a3 + 8) = a2;
      v9 = 2;
      goto LABEL_10;
    }

    if (*v3 == 6 && !(v7 | v5 | v8 | v6))
    {
      *a3 = a1;
      *(a3 + 8) = a2;
      v9 = 7;
LABEL_10:
      *(a3 + 64) = v9;
      v13 = type metadata accessor for FlowDestination(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v13 - 8) + 56))(a3, 0, 1, v13);

      return result;
    }
  }

  v10 = type metadata accessor for FlowDestination(0);
  v11 = *(*(v10 - 8) + 56);

  v11(a3, 1, 1, v10);
  return result;
}

double EpisodeListType.singleShowListType(showUuid:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 64) == 10)
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 8);
    v6 = *(v3 + 48) | *(v3 + 56);
    v7 = *(v3 + 32) | *(v3 + 24) | *(v3 + 16);
    if (!(v6 | *v3 | v4 | v7 | v5))
    {
      v12 = a1;
      v13 = a3;
      v9 = 2;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = -1;
    if (*v3 != 6)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v10 = v6 | v4 | v7;
    v11 = 0;
    if (!(v10 | v5))
    {
      v12 = a1;
      v13 = a3;
      v9 = 7;
LABEL_8:

      v8 = v12;
      v11 = a2;
      a3 = v13;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0;
    v9 = -1;
  }

LABEL_9:
  *a3 = v8;
  *(a3 + 8) = v11;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = v9;
  return result;
}

uint64_t EpisodeListType.groupedShowListType(hidePlayedEpisodes:)(char a1)
{
  if (*(v1 + 64) != 10)
  {
    return 0;
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 8);
  v4 = *(v1 + 48) | *(v1 + 56);
  v5 = *(v1 + 32) | *(v1 + 24) | *(v1 + 16);
  if (!(v4 | *v1 | v2 | v5 | v3))
  {
    v8 = (a1 & 1) == 0;
    v9 = 3;
LABEL_8:
    if (v8)
    {
      return v9;
    }

    else
    {
      return v9 + 1;
    }
  }

  result = 0;
  if (*v1 == 6 && !(v4 | v2 | v5 | v3))
  {
    v8 = (a1 & 1) == 0;
    v9 = 5;
    goto LABEL_8;
  }

  return result;
}

uint64_t EpisodeListType.groupedShowLockupStyle(hidePlayedEpisodes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 64) != 10)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + 40);
  v4 = *(v2 + 8);
  v5 = *(v2 + 48) | *(v2 + 56);
  v6 = *(v2 + 32) | *(v2 + 24) | *(v2 + 16);
  if (!(v5 | *v2 | v3 | v6 | v4))
  {
    *&v11[1] = *v2;
    *&v11[17] = *(v2 + 16);
    *&v11[49] = *(v2 + 48);
    *&v11[33] = *(v2 + 32);
    v7 = *v11;
    *(a2 + 31) = *&v11[16];
    *(a2 + 47) = *&v11[32];
    *(a2 + 63) = *&v11[48];
    if (result)
    {
      v10 = 9;
    }

    else
    {
      v10 = 8;
    }

    v11[65] = *(v2 + 64);
    *a2 = 0;
    *(a2 + 1) = v10;
    *(a2 + 2) = v10;
    *(a2 + 7) = 0;
    *(a2 + 3) = 15;
    *(a2 + 9) = v10;
    *(a2 + 10) = 252645135;
    *(a2 + 14) = 15;
    v9 = *&v11[64];
    goto LABEL_14;
  }

  if (*v2 != 6 || v5 | v3 | v6 | v4)
  {
LABEL_9:
    *a2 = 2;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 65) = 0u;
    return result;
  }

  *&v12[1] = *v2;
  *&v12[17] = *(v2 + 16);
  *&v12[49] = *(v2 + 48);
  *&v12[33] = *(v2 + 32);
  v7 = *v12;
  *(a2 + 31) = *&v12[16];
  *(a2 + 47) = *&v12[32];
  *(a2 + 63) = *&v12[48];
  if (result)
  {
    v8 = 11;
  }

  else
  {
    v8 = 10;
  }

  v12[65] = *(v2 + 64);
  *a2 = 0;
  *(a2 + 1) = v8;
  *(a2 + 2) = v8;
  *(a2 + 7) = 0;
  *(a2 + 3) = 15;
  *(a2 + 9) = v8;
  *(a2 + 10) = 252645135;
  *(a2 + 14) = 15;
  v9 = *&v12[64];
LABEL_14:
  *(a2 + 79) = v9;
  *(a2 + 15) = v7;
  return result;
}

void EpisodeListType.shelfItemPresentation.getter(uint64_t a1@<X8>)
{
  v2 = v1[64];
  if (v2 > 0xA)
  {
    goto LABEL_13;
  }

  if (((1 << v2) & 0x3BC) != 0)
  {
    v3 = 10;
    goto LABEL_14;
  }

  v4 = v1[1];
  if (v2 == 6)
  {
    if (v4)
    {
      v3 = 5;
    }

    else
    {
      v3 = 9;
    }

    goto LABEL_14;
  }

  if (v2 != 10)
  {
LABEL_13:
    v3 = 5;
    goto LABEL_14;
  }

  v5 = *v1 | (v4 << 8) | (*(v1 + 2) << 16) | (*(v1 + 3) << 48);
  v6 = *(v1 + 4);
  v8 = *(v1 + 2);
  v7 = *(v1 + 3);
  v9 = *(v1 + 1);
  v10 = *(v1 + 6) | *(v1 + 7) | *(v1 + 5);
  if (v10 | v6 | v7 | v5 | v8 | v9 && ((v11 = v10 | v6 | v7 | v8 | v9, v5 != 1) || v11) && v5 == 2 && !v11)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

LABEL_14:
  *a1 = v3;
  *(a1 + 1) = 0;
  *(a1 + 6) = 256;
  *(a1 + 2) = 0;
  *(a1 + 8) = 1;
}

uint64_t EpisodeOffer.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v197 = a2;
  v174 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15C0, &qword_3FDC00);
  __chkstk_darwin(v4 - 8);
  v186 = &v157 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v6 - 8);
  v8 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v188 = &v157 - v10;
  v198 = sub_3EBF94();
  v196 = *(v198 - 8);
  __chkstk_darwin(v198);
  v176 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v157 - v13;
  __chkstk_darwin(v14);
  v180 = &v157 - v15;
  v16 = type metadata accessor for ShowOffer(0);
  __chkstk_darwin(v16 - 8);
  v177 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v185 = &v157 - v19;
  __chkstk_darwin(v20);
  v179 = (&v157 - v21);
  __chkstk_darwin(v22);
  v187 = &v157 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v24 - 8);
  v184 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v189 = &v157 - v27;
  v194 = sub_3E5DC4();
  v191 = *(v194 - 8);
  __chkstk_darwin(v194);
  v183 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v190 = &v157 - v30;
  v31 = sub_3EBDF4();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v175 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v157 - v35;
  __chkstk_darwin(v37);
  v173 = &v157 - v38;
  __chkstk_darwin(v39);
  v172 = &v157 - v40;
  __chkstk_darwin(v41);
  v171 = &v157 - v42;
  __chkstk_darwin(v43);
  v170 = &v157 - v44;
  __chkstk_darwin(v45);
  v169 = &v157 - v46;
  __chkstk_darwin(v47);
  v168 = &v157 - v48;
  __chkstk_darwin(v49);
  v167 = &v157 - v50;
  __chkstk_darwin(v51);
  v165 = &v157 - v52;
  __chkstk_darwin(v53);
  v166 = &v157 - v54;
  __chkstk_darwin(v55);
  v181 = &v157 - v56;
  __chkstk_darwin(v57);
  v178 = &v157 - v58;
  __chkstk_darwin(v59);
  v61 = &v157 - v60;
  __chkstk_darwin(v62);
  v64 = &v157 - v63;
  __chkstk_darwin(v65);
  v67 = &v157 - v66;
  v68 = a1;
  sub_3EBE04();
  sub_3EBDC4();
  if (v69)
  {
    v163 = v36;
    v164 = v8;
    v192 = v31;
    v195 = a1;
    v70 = v193;
    v71 = sub_3E9494();
    if (v70)
    {

      v162 = sub_3E9484();

      v72 = *(v32 + 8);
      v73 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v74 = v192;
      v72(v67, v192);
    }

    else
    {
      v162 = v71;
      v72 = *(v32 + 8);
      v73 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v74 = v192;
      v72(v67, v192);
    }

    v81 = v195;
    sub_3EBE04();
    v161 = sub_3EBDC4();
    v83 = v82;
    v72(v64, v74);
    v84 = v73;
    if (v83)
    {
      v193 = v83;
      sub_3EBE04();
      v85 = v189;
      sub_3EBD14();
      v72(v61, v74);
      v86 = v72;
      v87 = v191;
      v88 = v194;
      v89 = (*(v191 + 48))(v85, 1, v194);
      v90 = v197;
      if (v89 == 1)
      {

        sub_FCF8(v85, &unk_4E9EE0, &unk_3F5BC0);
        v91 = sub_3ECEE4();
        sub_36D20C(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
        swift_allocError();
        v93 = v92;
        v94 = type metadata accessor for EpisodeOffer(0);
        *v93 = 0x72556D6165727473;
        v93[1] = 0xE90000000000006CLL;
        v93[2] = v94;
        (*(*(v91 - 8) + 104))(v93, enum case for JSONError.missingProperty(_:), v91);
        swift_willThrow();
        (*(v196 + 8))(v90, v198);
        return v86(v195, v74);
      }

      else
      {
        v159 = v84;
        v160 = v86;
        v99 = (v87 + 32);
        v158 = *(v87 + 32);
        v158(v190, v85, v88);
        v100 = v178;
        sub_3EBE04();
        v102 = (v196 + 16);
        v101 = *(v196 + 16);
        v103 = v180;
        v104 = v198;
        v101(v180, v90, v198);
        v105 = v179;
        ShowOffer.init(deserializing:using:)(v100, v103, v179);
        v106 = v90;
        v189 = v102;
        v178 = v99;
        v180 = 0;
        v107 = v195;
        sub_71B8C(v105, v187, v108);
        sub_3E7784();
        sub_3EBE04();
        v109 = v182;
        v101(v182, v106, v104);
        sub_36D20C(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
        sub_3EC574();
        v110 = v166;
        sub_3EBE04();
        sub_3EBDC4();
        v160(v110, v192);
        v111 = sub_3ED204();
        v112 = v101;

        v179 = MTEpisodePriceTypeFromPersistentString();

        sub_3EBE04();
        v113 = v198;
        v112(v109, v106, v198);
        sub_9D1C4();
        sub_3EC574();
        LODWORD(v177) = v203;
        sub_3EBE04();
        v112(v109, v106, v113);
        sub_CCCD8();
        sub_3EC574();
        v114 = v202;
        if (v202 == 2)
        {
          v115 = v112;
          v116 = v165;
          sub_3EBE04();
          v117 = sub_3EBD24();
          v160(v116, v192);
          if (v117 == 2)
          {
            v114 = 2;
          }

          else if (v117)
          {
            v114 = 1;
          }

          else
          {
            v114 = 2;
          }

          v112 = v115;
        }

        LODWORD(v175) = v114;
        sub_3EBE04();
        v118 = v182;
        v120 = v197;
        v119 = v198;
        v112(v182, v197, v198);
        sub_36D1B8();
        sub_3EC574();
        LODWORD(v176) = v201;
        sub_3E9354();
        v157 = v112;
        sub_3EBE04();
        v112(v118, v120, v119);
        sub_36D20C(&qword_4F25C0, &type metadata accessor for TranscriptRequestInformation, protocol conformance descriptor for TranscriptRequestInformation);
        sub_3EC574();
        v121 = v167;
        sub_3EBE04();
        v166 = sub_3EBDC4();
        v165 = v122;
        v123 = v192;
        v124 = v160;
        v125 = (v160)(v121, v192);
        sub_6CA58(v187, v185, v125);
        v126 = v168;
        sub_3EBE04();
        sub_3EBD14();
        v124(v126, v123);
        v127 = v191;
        (*(v191 + 16))(v183, v190, v194);
        sub_FBD0(v188, v164, &qword_4F1D50, &unk_3F7520);
        v128 = v169;
        sub_3EBE04();
        v168 = sub_3EBDC4();
        v167 = v129;
        v124(v128, v123);
        sub_3EBE04();
        v130 = v197;
        v157(v118, v197, v198);
        sub_A72A8();
        sub_3EC574();
        v189 = v199;
        v131 = v170;
        sub_3EBE04();
        v182 = sub_3EBD94();
        LODWORD(v181) = v132;
        v124(v131, v123);
        v133 = v171;
        sub_3EBE04();
        v170 = sub_3EBDC4();
        v134 = v107;
        v169 = v135;
        v124(v133, v123);
        v136 = v172;
        sub_3EBE04();
        v171 = sub_3EBD74();
        LODWORD(v157) = v137;
        v124(v136, v123);
        v138 = v173;
        sub_3EBE04();
        v172 = sub_3EBD74();
        v200 = v139;
        v124(v138, v123);
        v140 = v163;
        sub_3EBE04();
        v141 = sub_3EBD24();
        (*(v196 + 8))(v130, v198);
        v124(v134, v123);
        v124(v140, v123);
        sub_FCF8(v188, &qword_4F1D50, &unk_3F7520);
        sub_6C938(v187, v142);
        v143 = v194;
        (*(v127 + 8))(v190, v194);
        v144 = v174;
        v145 = v166;
        *v174 = v162;
        v144[1] = v145;
        v144[2] = v165;
        v146 = type metadata accessor for EpisodeOffer(0);
        sub_FACC(v184, v144 + v146[7], &unk_4E9EE0, &unk_3F5BC0);
        v158(v144 + v146[8], v183, v143);
        *(v144 + v146[9]) = v179;
        v147 = (v144 + v146[10]);
        v148 = v193;
        *v147 = v161;
        v147[1] = v148;
        sub_FACC(v164, v144 + v146[16], &qword_4F1D50, &unk_3F7520);
        v149 = (v144 + v146[11]);
        v150 = v167;
        *v149 = v168;
        v149[1] = v150;
        *(v144 + v146[12]) = v189;
        *(v144 + v146[13]) = v177;
        *(v144 + v146[14]) = v175;
        v151 = v144 + v146[15];
        *v151 = v182;
        v151[8] = v181 & 1;
        sub_71B8C(v185, v144 + v146[6], v152);
        v153 = (v144 + v146[17]);
        v154 = v169;
        *v153 = v170;
        v153[1] = v154;
        v155 = v144 + v146[18];
        *v155 = v171;
        v155[8] = v157 & 1;
        v156 = v144 + v146[19];
        *v156 = v172;
        v156[8] = v200 & 1;
        *(v144 + v146[20]) = v176;
        *(v144 + v146[21]) = (v141 == 2) | v141 & 1;
        return sub_FACC(v186, v144 + v146[22], &qword_4F15C0, &qword_3FDC00);
      }
    }

    else
    {
      v95 = sub_3ECEE4();
      sub_36D20C(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v97 = v96;
      v98 = type metadata accessor for EpisodeOffer(0);
      *v97 = 0x656C746974;
      v97[1] = 0xE500000000000000;
      v97[2] = v98;
      (*(*(v95 - 8) + 104))(v97, enum case for JSONError.missingProperty(_:), v95);
      swift_willThrow();
      (*(v196 + 8))(v197, v198);
      return (v72)(v81, v74);
    }
  }

  else
  {
    v75 = *(v32 + 8);
    v75(v67, v31);
    v76 = sub_3ECEE4();
    sub_36D20C(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v78 = v77;
    v79 = type metadata accessor for EpisodeOffer(0);
    *v78 = 0x49746E65746E6F63;
    v78[1] = 0xE900000000000064;
    v78[2] = v79;
    (*(*(v76 - 8) + 104))(v78, enum case for JSONError.missingProperty(_:), v76);
    swift_willThrow();
    (*(v196 + 8))(v197, v198);
    return (v75)(v68, v31);
  }
}

uint64_t EpisodeOffer.isExplicit.getter()
{
  if (*(v0 + *(type metadata accessor for EpisodeOffer(0) + 56)) == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_3E79D4();
    v4 = v3;
    v1 = 1;
    if (v2 != sub_3E79D4() || v4 != v5)
    {
      v1 = sub_3EE804();
    }
  }

  return v1 & 1;
}

uint64_t EpisodeOffer.mediaKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for EpisodeOffer(0) + 52));
  v4 = sub_3E90A4();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_4C7A68 + v3);

  return v5(a1, v6, v4);
}

uint64_t sub_36CB44@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EpisodeOffer(0) + 24);

  return sub_6CA58(v3, a1, v4);
}

uint64_t EpisodeOffer.streamUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpisodeOffer(0) + 32);
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EpisodeOffer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for EpisodeOffer(0) + 40));

  return v1;
}

uint64_t EpisodeOffer.summary.getter()
{
  v1 = *(v0 + *(type metadata accessor for EpisodeOffer(0) + 44));

  return v1;
}

uint64_t EpisodeOffer.releaseDate.getter()
{
  type metadata accessor for EpisodeOffer(0);
}

uint64_t EpisodeOffer.reportingParams.getter()
{
  v1 = *(v0 + *(type metadata accessor for EpisodeOffer(0) + 68));

  return v1;
}

uint64_t EpisodeOffer.init(contentId:guid:showOffer:storeUrl:streamUrl:priceType:title:artwork:summary:releaseDate:mediaType:contentRating:duration:reportingParams:seasonNumber:episodeNumber:episodeType:isEntitledOffer:transcriptInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, char a25, char a26, uint64_t a27)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v31 = type metadata accessor for EpisodeOffer(0);
  sub_FACC(a5, &a9[v31[7]], &unk_4E9EE0, &unk_3F5BC0);
  v32 = v31[8];
  v33 = sub_3E5DC4();
  (*(*(v33 - 8) + 32))(&a9[v32], a6, v33);
  *&a9[v31[9]] = a7;
  v34 = &a9[v31[10]];
  *v34 = a8;
  *(v34 + 1) = a10;
  sub_FACC(a11, &a9[v31[16]], &qword_4F1D50, &unk_3F7520);
  v35 = &a9[v31[11]];
  *v35 = a12;
  *(v35 + 1) = a13;
  *&a9[v31[12]] = a14;
  a9[v31[13]] = a15;
  a9[v31[14]] = a16;
  v36 = &a9[v31[15]];
  *v36 = a17;
  v36[8] = a18 & 1;
  sub_71B8C(a4, &a9[v31[6]], v37);
  v38 = &a9[v31[17]];
  *v38 = a19;
  *(v38 + 1) = a20;
  v39 = &a9[v31[18]];
  *v39 = a21;
  v39[8] = a22 & 1;
  v40 = &a9[v31[19]];
  *v40 = a23;
  v40[8] = a24 & 1;
  a9[v31[20]] = a25;
  a9[v31[21]] = (a26 == 2) | a26 & 1;
  return sub_FACC(a27, &a9[v31[22]], &qword_4F15C0, &qword_3FDC00);
}

uint64_t type metadata accessor for EpisodeOffer(uint64_t a1)
{
  result = qword_503640;
  if (!qword_503640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_36D1B8()
{
  result = qword_5035E0;
  if (!qword_5035E0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for EpisodeType, &type metadata for EpisodeType, v0, v1);
    atomic_store(result, &qword_5035E0);
  }

  return result;
}

uint64_t sub_36D20C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EpisodeOffer.pfPriceType.getter()
{
  type metadata accessor for EpisodeOffer(0);
  v0 = NSPersistentStringForMTEpisodePriceType();
  sub_3ED244();

  return sub_3E95F4();
}

uint64_t EpisodeOffer.shareURL(referenceTime:playerTime:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v33 = a1;
  v34 = a3;
  v8 = sub_3E5994();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EpisodeOffer(0);
  sub_FBD0(v5 + *(v20 + 28), v15, &unk_4E9EE0, &unk_3F5BC0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_FCF8(v15, &unk_4E9EE0, &unk_3F5BC0);
    v21 = 1;
    v22 = a5;
    return (*(v17 + 56))(v22, v21, 1, v16);
  }

  v23 = *(v17 + 32);
  v23(v19, v15, v16);
  if (a2)
  {
    v24 = _swiftEmptyArrayStorage;
    v22 = a5;
    if (v38)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v22 = a5;
  if (v33 > 0.0)
  {
    v25 = v23;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_3ED7B4();
    sub_3E5964();

    v24 = sub_E05B8(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_E05B8((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    (*(v36 + 32))(v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27, v12, v37);
    v23 = v25;
    if (v38)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v24 = _swiftEmptyArrayStorage;
  if ((v38 & 1) == 0)
  {
LABEL_12:
    if (v34 > 0.0)
    {
      v28 = v23;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_3ED7B4();
      sub_3E5964();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_E05B8(0, v24[2] + 1, 1, v24);
      }

      v30 = v24[2];
      v29 = v24[3];
      if (v30 >= v29 >> 1)
      {
        v24 = sub_E05B8((v29 > 1), v30 + 1, 1, v24);
      }

      v24[2] = v30 + 1;
      (*(v36 + 32))(v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, v35, v37);
      v23 = v28;
    }
  }

LABEL_18:
  if (v24[2])
  {
    v31._rawValue = v24;
    sub_3E5D84(v31);
  }

  v23(v22, v19, v16);
  v21 = 0;
  return (*(v17 + 56))(v22, v21, 1, v16);
}

uint64_t sub_36D780(uint64_t a1, uint64_t a2, int *a3, double a4)
{
  v7 = type metadata accessor for ShowOffer(0);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = *(v7 - 8);
    v10 = a3[6];
LABEL_7:
    v13 = *(v9 + 48);

    return v13(a1 + v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v9 = *(v11 - 8);
    v10 = a3[7];
    goto LABEL_7;
  }

  v12 = sub_3E5DC4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v8 = v12;
    v9 = *(v12 - 8);
    v10 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[10] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v9 = *(v16 - 8);
      v10 = a3[16];
      goto LABEL_7;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15C0, &qword_3FDC00);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[22];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_36D9BC(uint64_t a1, uint64_t a2, int a3, int *a4, double a5)
{
  v9 = type metadata accessor for ShowOffer(0);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a4[6];
LABEL_7:
    v15 = *(v11 + 56);

    return v15(a1 + v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a4[7];
    goto LABEL_7;
  }

  result = sub_3E5DC4();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = *(result - 8);
    v12 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v11 = *(v16 - 8);
    v12 = a4[16];
    goto LABEL_7;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15C0, &qword_3FDC00);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[22];

  return v18(v19, a2, a2, v17);
}

void sub_36DBE4(uint64_t a1)
{
  sub_5FBE4(319, &qword_4E9978, &type metadata for String);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShowOffer(319);
    if (v2 <= 0x3F)
    {
      sub_36DE68(319, &qword_4E9918, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_3E5DC4();
        if (v4 <= 0x3F)
        {
          type metadata accessor for MTEpisodePriceType(319);
          if (v5 <= 0x3F)
          {
            sub_5FBE4(319, &qword_503650, &type metadata for LazyDate);
            if (v6 <= 0x3F)
            {
              sub_5FBE4(319, &qword_503658, &type metadata for EpisodeMediaType);
              if (v7 <= 0x3F)
              {
                sub_5FBE4(319, &qword_4F0350, &type metadata for ContentRating);
                if (v8 <= 0x3F)
                {
                  sub_5FBE4(319, &qword_4ED9F8, &type metadata for Double);
                  if (v9 <= 0x3F)
                  {
                    sub_36DE68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
                    if (v10 <= 0x3F)
                    {
                      sub_5FBE4(319, &qword_503660, &type metadata for Int64);
                      if (v11 <= 0x3F)
                      {
                        sub_5FBE4(319, &qword_503668, &type metadata for EpisodeType);
                        if (v12 <= 0x3F)
                        {
                          sub_36DE68(319, &unk_503670, &type metadata accessor for TranscriptRequestInformation);
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

void sub_36DE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static EpisodeStateMachine<>.playState(episodeLockup:playStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LibraryEpisodeLockup(0);
  if (swift_dynamicCastClass())
  {

    sub_3E8D54();

    sub_3E8984();
  }

  else
  {
    result = sub_3E94A4();
    if (result)
    {
      return result;
    }

    sub_3E8D44();
    sub_3E8984();
  }

  sub_10A060(a2);
  return sub_2489FC(v4, a2);
}

uint64_t static ErrorModel.offline(_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  v73 = a1;
  v74 = a2;
  v76 = a3;
  v4 = sub_3E5FC4();
  v5 = *(v4 - 8);
  v82 = v4;
  v83 = v5;
  __chkstk_darwin(v4);
  v81 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v7 - 8);
  v80 = &v63 - v8;
  v70 = sub_3EC1F4();
  v63 = *(v70 - 8);
  v9 = v63;
  __chkstk_darwin(v70);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v11;
  __chkstk_darwin(v12);
  v79 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - v15;
  v69 = &v63 - v15;
  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  v61._countAndFlagsBits = 0xE000000000000000;
  v84._object = 0x800000000042EBC0;
  v84._countAndFlagsBits = 0xD00000000000001ALL;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v19.super.isa = v18;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v20 = sub_3E5A74(v84, v86, v19, v88, 0, v61);
  v77 = v21;
  v78 = v20;

  v75 = type metadata accessor for ErrorModel(0);
  v22 = (a3 + *(v75 + 28));
  v23 = [v17 mainBundle];
  v62._countAndFlagsBits = 0xE000000000000000;
  v85._countAndFlagsBits = 0x45525F524F525245;
  v85._object = 0xEB00000000595254;
  v87.value._countAndFlagsBits = 0;
  v87.value._object = 0;
  v24.super.isa = v23;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v25 = sub_3E5A74(v85, v87, v24, v89, 0, v62);
  v71 = v26;
  v72 = v25;

  v67 = sub_3E7784();
  v27 = *(v67 - 8);
  v66 = *(v27 + 56);
  v68 = v27 + 56;
  v66(v16, 1, 1, v67);
  v28 = v79;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v29 = type metadata accessor for ClosureAction(0);
  v30 = swift_allocObject();
  v31 = (v30 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  v32 = v74;
  *v31 = v73;
  v31[1] = v32;
  v33 = v11;
  v34 = v70;
  (*(v9 + 16))(v33, v28, v70);
  v35 = sub_3EC634();
  v36 = *(v35 - 8);
  v65 = *(v36 + 56);
  v73 = v36 + 56;
  v37 = v80;
  v65(v80, 1, 1, v35);

  v38 = v81;
  sub_3E5FB4();
  v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v41 = v40;
  v42 = *(v83 + 8);
  v83 += 8;
  v74 = v42;
  v42(v38, v82);
  v43 = v63;
  (*(v63 + 8))(v79, v34);
  *(v30 + 16) = v39;
  *(v30 + 24) = v41;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  *(v30 + 48) = 32;
  (*(v43 + 32))(v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v64, v34);
  sub_FACC(v37, v30 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v44 = type metadata accessor for ActionButton(0);
  v45 = (v22 + v44[8]);
  v45[3] = v29;
  v45[4] = sub_36E944(&qword_4F13D8, type metadata accessor for ClosureAction, "iJ\v");
  *v45 = v30;
  v46 = v65;
  v65(v37, 1, 1, v35);
  v47 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
  v49 = v48;
  v50 = v44[6];
  v66(v22 + v50, 1, 1, v67);
  v51 = v44[7];
  *(v22 + v51) = 2;
  v52 = v44[9];
  v46(v22 + v52, 1, 1, v35);
  *v22 = v47;
  v22[1] = v49;
  v53 = v71;
  v22[2] = v72;
  v22[3] = v53;
  sub_51F9C(v69, v22 + v50, &qword_4F1D50, &unk_3F7520);
  *(v22 + v51) = 2;
  sub_51F9C(v80, v22 + v52, &unk_4E9170, &unk_3F4890);
  (*(*(v44 - 1) + 56))(v22, 0, 1, v44);
  v54 = v76;
  v46(v76 + *(v75 + 24), 1, 1, v35);
  v55 = v81;
  sub_3E5FB4();
  v56 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v58 = v57;
  result = v74(v55, v82);
  *v54 = v56;
  v54[1] = v58;
  v60 = v77;
  v54[2] = v78;
  v54[3] = v60;
  return result;
}

uint64_t ErrorModel.init(id:message:button:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = sub_3E5FC4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_3E5FB4();
    a1 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    a2 = v18;
    (*(v15 + 8))(v17, v14);
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v19 = type metadata accessor for ErrorModel(0);
  sub_FACC(a5, a7 + *(v19 + 28), &qword_4F3940, &qword_406640);
  return sub_FACC(a6, a7 + *(v19 + 24), &unk_4E9170, &unk_3F4890);
}

uint64_t type metadata accessor for ErrorModel(uint64_t a1)
{
  result = qword_503748;
  if (!qword_503748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36E8EC(uint64_t a1)
{
  result = sub_36E944(&qword_5036E8, type metadata accessor for ErrorModel, protocol conformance descriptor for ErrorModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_36E944(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_36E9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940, &qword_406640);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_36EB38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940, &qword_406640);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_36EC74(uint64_t a1)
{
  sub_36ED40(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
  if (v1 <= 0x3F)
  {
    sub_36ED40(319, &unk_503758, type metadata accessor for ActionButton);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_36ED40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HeaderFooterShelves.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_3EBF94();
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  __chkstk_darwin(v3);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = sub_3ECED4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v53 = a1;
  sub_3EBE04();
  sub_3EBD54();
  v25 = *(v12 + 8);
  v24 = v12 + 8;
  v26 = v17;
  v27 = v11;
  v28 = v25;
  v25(v26, v27);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    sub_11FDE0(v10);
    v29 = sub_3ECEE4();
    sub_11FE48(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    strcpy(v30, "footerShelves");
    *(v30 + 7) = -4864;
    *(v30 + 2) = v47;
    (*(*(v29 - 8) + 104))(v30, enum case for JSONError.missingProperty(_:), v29);
    swift_willThrow();
    (*(v51 + 8))(v52, v50);
    return v28(v53, v27);
  }

  else
  {
    v44 = v24;
    v47 = v27;
    v32 = *(v19 + 32);
    v42 = v23;
    v32(v23, v10, v18);
    v33 = type metadata accessor for Shelf(0);
    sub_3EBE04();
    v34 = v46;
    v35 = v50;
    v41 = *(v51 + 16);
    v41(v46, v52);
    v46 = v33;
    v36 = v48;
    v37 = Shelf.__allocating_init(deserializing:using:)(v14, v34);
    v43 = v28;
    if (v36)
    {

      v48 = 0;
    }

    else
    {
      v48 = v37;
    }

    v38 = v42;
    (*(v19 + 16))(v45, v42, v18);
    v39 = v52;
    (v41)(v49, v52, v35);
    sub_11FE48(&qword_4F1F88, type metadata accessor for Shelf, protocol conformance descriptor for Shelf);
    v40 = sub_3ED654();
    (*(v51 + 8))(v39, v35);
    v43(v53, v47);
    (*(v19 + 8))(v38, v18);
    type metadata accessor for HeaderFooterShelves();
    result = swift_allocObject();
    *(result + 16) = v48;
    *(result + 24) = v40;
  }

  return result;
}

uint64_t HeaderFooterShelves.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_36F3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = HeaderFooterShelves.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t HeaderModel.PrimaryArtwork.__allocating_init(artworkType:artwork:)(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1 & 1;
  sub_25612C(a2, v4 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork);
  return v4;
}

uint64_t HeaderModel.InterfaceStyle.uikitStyle.getter()
{
  v1 = 1;
  if (*v0 != 1)
  {
    v1 = *v0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t HeaderModel.PrimaryArtwork.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_3EBF94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v21 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v6 - 8);
  v23 = v19 - v7;
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_3EBE04();
  sub_36F930();
  v12 = v11;
  sub_3EBCF4();
  v13 = *(v9 + 8);
  v25 = v8;
  v13(v11, v8);
  v14 = v27;
  if (v27 == 2)
  {
    v15 = sub_3ECEE4();
    sub_3707D0(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v16 = 0x546B726F77747261;
    v16[1] = 0xEB00000000657079;
    v16[2] = v22;
    (*(*(v15 - 8) + 104))(v16, enum case for JSONError.missingProperty(_:), v15);
    swift_willThrow();
    (*(v4 + 8))(v24, v3);
    v13(v26, v25);
  }

  else
  {
    v19[1] = sub_3E7784();
    v20 = v13;
    v17 = v24;
    sub_3EBE04();
    (*(v4 + 16))(v21, v17, v3);
    sub_3707D0(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
    sub_3EC574();
    (*(v4 + 8))(v17, v3);
    v20(v26, v25);
    v12 = swift_allocObject();
    *(v12 + 16) = v14 & 1;
    sub_25612C(v23, v12 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork);
  }

  return v12;
}

uint64_t HeaderModel.PrimaryArtwork.init(artworkType:artwork:)(char a1, uint64_t a2)
{
  *(v2 + 16) = a1 & 1;
  sub_25612C(a2, v2 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork);
  return v2;
}

unint64_t sub_36F930()
{
  result = qword_503840;
  if (!qword_503840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HeaderModel.PrimaryArtwork.ArtworkType, &type metadata for HeaderModel.PrimaryArtwork.ArtworkType, v0, v1);
    atomic_store(result, &qword_503840);
  }

  return result;
}

ShelfKit::HeaderModel::PrimaryArtwork::ArtworkType_optional __swiftcall HeaderModel.PrimaryArtwork.ArtworkType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4B2D30;
  v6._object = object;
  v3 = sub_3EE624(v2, v6);

  if (v3 == 1)
  {
    v4.value = ShelfKit_HeaderModel_PrimaryArtwork_ArtworkType_logo;
  }

  else
  {
    v4.value = ShelfKit_HeaderModel_PrimaryArtwork_ArtworkType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t HeaderModel.PrimaryArtwork.ArtworkType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1869049708;
  }

  else
  {
    return 0x7265766F63;
  }
}

uint64_t sub_36FA18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1869049708;
  }

  else
  {
    v3 = 0x7265766F63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1869049708;
  }

  else
  {
    v5 = 0x7265766F63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_36FAB4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_36FB2C(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_36FB90(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_36FC04(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B2D30;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_36FC64(uint64_t *a1@<X8>)
{
  v2 = 1869049708;
  if (!*v1)
  {
    v2 = 0x7265766F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t HeaderModel.PrimaryArtwork.__deallocating_deinit()
{
  sub_1433A4(v0 + OBJC_IVAR____TtCO8ShelfKit11HeaderModel14PrimaryArtwork_artwork);

  return swift_deallocClassInstance();
}

uint64_t sub_36FD24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = HeaderModel.PrimaryArtwork.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

ShelfKit::HeaderModel::InterfaceStyle_optional __swiftcall HeaderModel.InterfaceStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B2D80;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t HeaderModel.InterfaceStyle.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 1802658148;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869903201;
  }
}

uint64_t sub_36FDF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1869903201;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869903201;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_36FED8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_36FF68(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_36FFE4(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_37007C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869903201;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t HeaderModel.MetadataComponent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a3;
  v69 = a2;
  v71 = sub_3EBF94();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EBDF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  __chkstk_darwin(v17);
  v67 = &v58 - v18;
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v72 = a1;
  sub_3EBE04();
  v22 = sub_3EBDC4();
  v24 = v23;
  v26 = *(v6 + 8);
  v25 = v6 + 8;
  v27 = v21;
  v28 = v26;
  v26(v27, v5);
  if (v24)
  {
    v29 = v24;
    (*(v68 + 8))(v69, v71);
    result = v28(v72, v5);
    v31 = 0;
  }

  else
  {
    v60 = v13;
    v61 = v16;
    v59 = v10;
    v63 = v28;
    v64 = v25;
    v62 = v5;
    type metadata accessor for FlowAction(0);
    sub_3EBE04();
    v33 = v68;
    v32 = v69;
    v34 = *(v68 + 16);
    v35 = v66;
    v36 = v71;
    v34(v66, v69, v71);
    sub_3707D0(&qword_503848, type metadata accessor for FlowAction, protocol conformance descriptor for Action);
    sub_3EC574();
    v22 = v73;
    if (v73)
    {
      (*(v33 + 8))(v32, v36);
      result = v63(v72, v62);
      v29 = 0;
      v31 = 1;
    }

    else
    {
      type metadata accessor for Ratings(0);
      sub_3EBE04();
      v34(v35, v32, v36);
      sub_3707D0(&qword_503850, type metadata accessor for Ratings, protocol conformance descriptor for Ratings);
      sub_3EC574();
      v22 = v73;
      if (v73)
      {
        (*(v33 + 8))(v32, v36);
        result = v63(v72, v62);
        v29 = 0;
        v31 = 2;
      }

      else
      {
        v38 = v32;
        v39 = v61;
        v40 = v72;
        sub_3EBE04();
        v41 = sub_3EBDC4();
        v29 = v42;
        v43 = v39;
        v45 = v62;
        v44 = v63;
        v63(v43, v62);
        v46 = v40;
        v47 = v33;
        if (v29)
        {
          (*(v33 + 8))(v38, v71);
          result = v44(v46, v45);
          v31 = 3;
          v22 = v41;
        }

        else
        {
          v48 = v60;
          v49 = v46;
          sub_3EBE04();
          v22 = sub_3EBDC4();
          v50 = v48;
          v29 = v51;
          v44(v50, v45);
          v52 = v38;
          if (v29)
          {
            (*(v47 + 8))(v38, v71);
            result = v44(v49, v45);
            v31 = 4;
          }

          else
          {
            v53 = v59;
            sub_3EBE04();
            v54 = sub_3EBD24();
            v44(v53, v45);
            if (v54 == 2 || (v54 & 1) == 0)
            {
              v55 = v65;
              sub_3EBE04();
              v22 = sub_3EBDC4();
              v29 = v56;
              v63(v55, v45);
              if (v29)
              {
                v57 = HIBYTE(v29) & 0xF;
                if ((v29 & 0x2000000000000000) == 0)
                {
                  v57 = v22 & 0xFFFFFFFFFFFFLL;
                }

                if (v57)
                {
                  (*(v47 + 8))(v52, v71);
                  result = v63(v72, v45);
                  v31 = 5;
                  goto LABEL_7;
                }
              }

              (*(v47 + 8))(v52, v71);
              result = v63(v72, v45);
              v22 = 0;
              v31 = 0;
              v29 = 0xE000000000000000;
              goto LABEL_7;
            }

            (*(v47 + 8))(v52, v71);
            result = v63(v72, v45);
            v22 = 0;
            v29 = 0;
            v31 = 7;
          }
        }
      }
    }
  }

LABEL_7:
  v37 = v70;
  *v70 = v22;
  v37[1] = v29;
  *(v37 + 16) = v31;
  return result;
}

uint64_t sub_3707D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_37081C()
{
  result = qword_503858;
  if (!qword_503858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HeaderModel.PrimaryArtwork.ArtworkType, &type metadata for HeaderModel.PrimaryArtwork.ArtworkType, v0, v1);
    atomic_store(result, &qword_503858);
  }

  return result;
}

unint64_t sub_370874()
{
  result = qword_503860;
  if (!qword_503860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HeaderModel.InterfaceStyle, &type metadata for HeaderModel.InterfaceStyle, v0, v1);
    atomic_store(result, &qword_503860);
  }

  return result;
}

uint64_t type metadata accessor for HeaderModel.PrimaryArtwork(uint64_t a1)
{
  result = qword_503890;
  if (!qword_503890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_370994(uint64_t a1, double a2)
{
  sub_4EC44(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit11HeaderModelO17MetadataComponentO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_370AC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_370B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_370B50(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t HighlightIdentifier.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];

  sub_15C774(a1);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = v4;
  *(result + 40) = 0;
  return result;
}

uint64_t Highlight.__allocating_init(sLHighlight:adamId:impressionMetrics:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = [v9 identifier];
  v11 = sub_3ED244();
  v13 = v12;

  *(v8 + 16) = v11;
  *(v8 + 24) = v13;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3 & 1;
  sub_14A10(a4, v8 + OBJC_IVAR____TtC8ShelfKit9Highlight_impressionMetrics);
  return v8;
}

uint64_t Highlight.init(sLHighlight:adamId:impressionMetrics:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  v8 = a1;
  v9 = [v8 identifier];
  v10 = sub_3ED244();
  v12 = v11;

  *(v4 + 16) = v10;
  *(v4 + 24) = v12;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3 & 1;
  sub_14A10(a4, v4 + OBJC_IVAR____TtC8ShelfKit9Highlight_impressionMetrics);
  return v4;
}

uint64_t static Highlight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) identifier];
  v4 = sub_3ED244();
  v6 = v5;

  v7 = [*(a2 + 32) identifier];
  v8 = sub_3ED244();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_3EE804();
  }

  return v12 & 1;
}

double Highlight.hash(into:)(uint64_t a1)
{
  v2 = [*(v1 + 32) identifier];
  sub_3ED244();

  sub_3ED394();

  return result;
}

uint64_t Highlight.deinit()
{

  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit9Highlight_impressionMetrics);
  return v0;
}

uint64_t Highlight.__deallocating_deinit()
{

  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit9Highlight_impressionMetrics);

  return swift_deallocClassInstance();
}

Swift::Int Highlight.hashValue.getter()
{
  sub_3EE954();
  v1 = [*(v0 + 32) identifier];
  sub_3ED244();

  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_370FCC()
{
  v1 = *v0;
  sub_3EE954();
  v2 = [*(v1 + 32) identifier];
  sub_3ED244();

  sub_3ED394();

  return sub_3EE9A4();
}

double sub_371054(uint64_t a1)
{
  v2 = [*(*v1 + 32) identifier];
  sub_3ED244();

  sub_3ED394();

  return result;
}

Swift::Int sub_3710D0(uint64_t a1)
{
  v2 = *v1;
  sub_3EE954();
  v3 = [*(v2 + 32) identifier];
  sub_3ED244();

  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_37116C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 32) identifier];
  v4 = sub_3ED244();
  v6 = v5;

  v7 = [*(v2 + 32) identifier];
  v8 = sub_3ED244();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_3EE804();
  }

  return v12 & 1;
}

uint64_t HighlightIdentifier.__allocating_init(identifier:adamId:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  return result;
}

uint64_t HighlightIdentifier.init(identifier:adamId:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4 & 1;
  return v4;
}

uint64_t HighlightIdentifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_37131C@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_371540(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

ShelfKit::HighlightType_optional __swiftcall HighlightType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B2DE8;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_3713BC(char *a1, char *a2)
{
  if (*&aPodcast_5[8 * *a1] == *&aPodcast_5[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_3EE804();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_371424()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

double sub_371480(uint64_t a1)
{
  sub_3ED394();

  return result;
}

Swift::Int sub_3714C0(uint64_t a1)
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_371540(char *a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_3EBDF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_3EBE04();
  v21 = sub_3EBDC4();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v10, v4);
  sub_3EBE04();
  sub_3EBDC4();
  v15 = v14;
  if (v14)
  {
    v16 = sub_3E9494();
    if (v2)
    {

      v17 = sub_3E9484();
    }

    else
    {
      v17 = v16;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_3EBF94();
  (*(*(v18 - 8) + 8))(v22, v18);
  v13(a1, v4);
  v13(v7, v4);
  type metadata accessor for HighlightIdentifier();
  result = swift_allocObject();
  *(result + 16) = v21;
  *(result + 24) = v12;
  *(result + 32) = v17;
  *(result + 40) = v15 == 0;
  return result;
}

uint64_t sub_371774(uint64_t a1)
{
  result = sub_371838(&qword_503928, protocol conformance descriptor for Highlight);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Highlight(uint64_t a1)
{
  result = qword_503970;
  if (!qword_503970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_371838(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Highlight(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_371880()
{
  result = qword_503938;
  if (!qword_503938)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HighlightFeedback, &type metadata for HighlightFeedback, v0, v1);
    atomic_store(result, &qword_503938);
  }

  return result;
}

unint64_t sub_3718D8()
{
  result = qword_503940;
  if (!qword_503940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HighlightType, &type metadata for HighlightType, v0, v1);
    atomic_store(result, &qword_503940);
  }

  return result;
}

void sub_371934(uint64_t a1)
{
  sub_4D334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t HighlightItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_title);

  return v1;
}

uint64_t HighlightItem.shelfUniqueId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_shelfUniqueId);

  return v1;
}

uint64_t HighlightItem.__allocating_init(highlightIdentifier:type:adamId:icon:title:subtitles:playAction:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v36 = a8;
  v37 = a11;
  v33 = a7;
  v34 = a10;
  v38 = sub_3E5FC4();
  v17 = *(v38 - 8);
  __chkstk_darwin(v38);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = *a3;
  *(v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_highlight) = 0;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v21;
  *(v20 + 40) = a4;
  sub_A18FC(a5, v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_icon, v22);
  v23 = (v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_title);
  v24 = v33;
  v25 = v34;
  *v23 = a6;
  v23[1] = v24;
  *(v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_subtitles) = v36;
  sub_FBD0(v25, v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_clickAction, &qword_4EDE00, &qword_3F9910);
  *(v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_playAction) = a9;
  v26 = v37;
  sub_FBD0(v37, v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_impressionMetrics, &unk_4E9170, &unk_3F4890);

  sub_3E5FB4();
  v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v29 = v28;

  sub_FCF8(v26, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v25, &qword_4EDE00, &qword_3F9910);
  sub_86F48(v35, v30);
  (*(v17 + 8))(v19, v38);
  v31 = (v20 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_shelfUniqueId);
  *v31 = v27;
  v31[1] = v29;
  return v20;
}

uint64_t HighlightItem.init(highlightIdentifier:type:adamId:icon:title:subtitles:playAction:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v35 = a8;
  v36 = a5;
  v37 = a11;
  v33 = a7;
  v34 = a10;
  v38 = sub_3E5FC4();
  v19 = *(v38 - 8);
  v20 = __chkstk_darwin(v38);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v21) = *a3;
  *(v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_highlight) = 0;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v21;
  *(v12 + 40) = a4;
  sub_A18FC(a5, v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_icon, v20);
  v23 = (v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_title);
  v24 = v33;
  v25 = v34;
  *v23 = a6;
  v23[1] = v24;
  *(v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_subtitles) = v35;
  sub_FBD0(v25, v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_clickAction, &qword_4EDE00, &qword_3F9910);
  *(v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_playAction) = a9;
  v26 = v37;
  sub_FBD0(v37, v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_impressionMetrics, &unk_4E9170, &unk_3F4890);

  sub_3E5FB4();
  v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v29 = v28;

  sub_FCF8(v26, &unk_4E9170, &unk_3F4890);
  sub_FCF8(v25, &qword_4EDE00, &qword_3F9910);
  sub_86F48(v36, v30);
  (*(v19 + 8))(v22, v38);
  v31 = (v12 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_shelfUniqueId);
  *v31 = v27;
  v31[1] = v29;
  return v12;
}

uint64_t HighlightItem.highlight.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13HighlightItem_highlight;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HighlightItem.deinit()
{

  sub_86F48(v0 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_icon, v1);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_clickAction, &qword_4EDE00, &qword_3F9910);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_impressionMetrics, &unk_4E9170, &unk_3F4890);

  return v0;
}

uint64_t HighlightItem.__deallocating_deinit()
{
  HighlightItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_372280@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_372638(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_3722E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_shelfUniqueId);

  return v1;
}

uint64_t HighlightItem.subtitle.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0, &unk_403600);
  sub_9809C();
  v0 = sub_3ED134();

  return v0;
}

uint64_t HighlightItem.artwork.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_A18FC(v2 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_icon, a1, a2);
  v4 = sub_3E7784();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_372484@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_A18FC(*v2 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_icon, a1, a2);
  v4 = sub_3E7784();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

void *HighlightItem.impressionableActions.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_playAction);

  if (v2)
  {

    sub_3ED564();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();
  }

  sub_FCF8(&v2, &qword_4EF4C8, &qword_3FAB18);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_372638(char *a1, uint64_t a2)
{
  v147 = a2;
  v127 = sub_3E5FC4();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v124 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v129 = &v120 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98, &qword_41CF30);
  __chkstk_darwin(v8 - 8);
  v131 = (&v120 - v9);
  v10 = sub_3EBF94();
  v144 = *(v10 - 8);
  v145 = v10;
  __chkstk_darwin(v10);
  v138 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v12 - 8);
  v136 = &v120 - v13;
  v14 = sub_3E7784();
  v134 = *(v14 - 8);
  v135 = v14;
  __chkstk_darwin(v14);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v133 = &v120 - v17;
  v18 = sub_3EBDF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v130 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = &v120 - v22;
  __chkstk_darwin(v23);
  v137 = &v120 - v24;
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  __chkstk_darwin(v31);
  v33 = &v120 - v32;
  v34 = 0x800000000042ECF0;
  v35 = a1;
  sub_3EBE04();
  v123 = sub_3EBDC4();
  v37 = v36;
  v40 = *(v19 + 8);
  v39 = v19 + 8;
  v38 = v40;
  v40(v33, v18);
  if (!v37)
  {
    v50 = sub_3ECEE4();
    sub_373AF8(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v52 = v51;
    v53 = type metadata accessor for HighlightItem(0);
    *v52 = 0xD000000000000013;
    v52[1] = 0x800000000042ECF0;
    v52[2] = v53;
    (*(*(v50 - 8) + 104))(v52, enum case for JSONError.missingProperty(_:), v50);
    swift_willThrow();
    (*(v144 + 8))(v147, v145);
    v38(v35, v18);
    return v34;
  }

  v139 = v37;
  v140 = v39;
  v141 = v18;
  v142 = v38;
  v41 = v35;
  sub_3EBE04();
  sub_373AA4();
  v42 = v143;
  sub_3EBCD4();
  v34 = v42;
  if (v42)
  {

    v43 = v30;
    v44 = v141;
    v45 = v142;
    v142(v43, v141);
    v46 = sub_3ECEE4();
    sub_373AF8(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    v34 = 0xE400000000000000;
    swift_allocError();
    v48 = v47;
    v49 = type metadata accessor for HighlightItem(0);
    *v48 = 1701869940;
    v48[1] = 0xE400000000000000;
    v48[2] = v49;
    (*(*(v46 - 8) + 104))(v48, enum case for JSONError.missingProperty(_:), v46);
    swift_willThrow();
    (*(v144 + 8))(v147, v145);
    v45(v35, v44);
    return v34;
  }

  v55 = v141;
  v56 = v142;
  v142(v30, v141);
  v57 = LOBYTE(v146[0]);
  sub_3EBE04();
  sub_3EBDC4();
  if (!v58)
  {
    v56(v27, v55);

    v61 = sub_3ECEE4();
    sub_373AF8(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v63 = v62;
    v64 = type metadata accessor for HighlightItem(0);
    *v63 = 0x64496D616461;
    v63[1] = 0xE600000000000000;
    v63[2] = v64;
    (*(*(v61 - 8) + 104))(v63, enum case for JSONError.missingProperty(_:), v61);
    swift_willThrow();
    (*(v144 + 8))(v147, v145);
    v56(v41, v55);
    return v34;
  }

  v122 = v57;
  v59 = sub_3E9494();
  v60 = v144;
  v121 = v59;
  v143 = 0;
  v142(v27, v55);

  sub_3EBE04();
  v34 = *(v60 + 16);
  v65 = v147;
  v66 = v145;
  (v34)(v138, v147, v145);
  sub_373AF8(&qword_4EECC8, &type metadata accessor for ArtworkModel, &protocol conformance descriptor for ArtworkModel);
  v67 = v136;
  v68 = v135;
  sub_3EC574();
  if ((*(v134 + 48))(v67, 1, v68) == 1)
  {

    sub_FCF8(v67, &qword_4F1D50, &unk_3F7520);
    v70 = sub_3ECEE4();
    sub_373AF8(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v72 = v71;
    v73 = type metadata accessor for HighlightItem(0);
    *v72 = 1852793705;
    v72[1] = 0xE400000000000000;
    v72[2] = v73;
    (*(*(v70 - 8) + 104))(v72, enum case for JSONError.missingProperty(_:), v70);
    swift_willThrow();
    (*(v60 + 8))(v65, v66);
    v142(v41, v141);
    return v34;
  }

  v74 = v133;
  sub_83F9C(v67, v133, v69);
  v75 = v132;
  sub_3EBE04();
  v76 = sub_3EBDC4();
  v78 = v77;
  v79 = v75;
  v80 = v141;
  v81 = v142;
  v142(v79, v141);
  if (!v78)
  {

    v86 = sub_3ECEE4();
    sub_373AF8(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v88 = v87;
    v89 = type metadata accessor for HighlightItem(0);
    *v88 = 0x656C746974;
    v88[1] = 0xE500000000000000;
    v88[2] = v89;
    (*(*(v86 - 8) + 104))(v88, enum case for JSONError.missingProperty(_:), v86);
    swift_willThrow();
    (*(v144 + 8))(v147, v145);
    v90 = v81(v41, v80);
    sub_86F48(v74, v90);
    return v34;
  }

  v134 = v76;
  v135 = v78;
  v82 = v130;
  v136 = v41;
  sub_3EBE04();
  v83 = v131;
  sub_3EBD54();
  v81(v82, v80);
  v84 = sub_3ECED4();
  v85 = *(v84 - 8);
  if ((*(v85 + 48))(v83, 1, v84) == 1)
  {

    sub_FCF8(v83, &qword_4EDC98, &qword_41CF30);
LABEL_19:
    v99 = v147;
    v100 = v145;
    v101 = sub_3ECEE4();
    sub_373AF8(&qword_4E9AB8, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v103 = v102;
    v104 = type metadata accessor for HighlightItem(0);
    *v103 = 0x656C746974627573;
    v103[1] = 0xE900000000000073;
    v103[2] = v104;
    (*(*(v101 - 8) + 104))(v103, enum case for JSONError.missingProperty(_:), v101);
    swift_willThrow();
    (*(v144 + 8))(v99, v100);
    v105 = v81(v136, v141);
    sub_86F48(v133, v105);
    return v34;
  }

  v91 = sub_3ECEA4();
  (*(v85 + 8))(v83, v84);
  if (!v91)
  {

    goto LABEL_19;
  }

  v132 = v91;
  v92 = v137;
  sub_3EBE04();
  v93 = v147;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v95 = v141;
  v81(v92, v141);
  sub_3EBE04();
  v131 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v81(v92, v95);
  sub_3EC634();
  sub_3EBE04();
  (v34)(v138, v93, v145);
  sub_3EC574();
  sub_A18FC(v133, v128, v96);
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v97 = type metadata accessor for Action(0);
    v98 = sub_373AF8(&qword_4EDDF8, type metadata accessor for Action, "iJ\v");
  }

  else
  {
    v97 = 0;
    v98 = 0;
    v146[1] = 0;
    v146[2] = 0;
  }

  v146[0] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v146[3] = v97;
  v146[4] = v98;
  v106 = v129;
  v107 = v124;
  sub_FBD0(v129, v124, &unk_4E9170, &unk_3F4890);
  type metadata accessor for HighlightItem(0);
  v34 = swift_allocObject();
  *(v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_highlight) = 0;
  v108 = v139;
  *(v34 + 16) = v123;
  *(v34 + 24) = v108;
  *(v34 + 32) = v122;
  *(v34 + 40) = v121;
  v109 = v128;
  sub_A18FC(v128, v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_icon, v110);
  v111 = (v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_title);
  v112 = v135;
  *v111 = v134;
  v111[1] = v112;
  *(v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_subtitles) = v132;
  sub_FBD0(v146, v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_clickAction, &qword_4EDE00, &qword_3F9910);
  *(v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_playAction) = v131;
  sub_FBD0(v107, v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_impressionMetrics, &unk_4E9170, &unk_3F4890);

  v113 = v125;
  sub_3E5FB4();
  v114 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v116 = v115;

  (*(v144 + 8))(v147, v145);
  v142(v136, v141);
  (*(v126 + 8))(v113, v127);
  sub_FCF8(v107, &unk_4E9170, &unk_3F4890);
  sub_86F48(v109, v117);
  sub_FCF8(v106, &unk_4E9170, &unk_3F4890);
  sub_86F48(v133, v118);
  sub_FCF8(v146, &qword_4EDE00, &qword_3F9910);
  v119 = (v34 + OBJC_IVAR____TtC8ShelfKit13HighlightItem_shelfUniqueId);
  *v119 = v114;
  v119[1] = v116;
  return v34;
}

uint64_t sub_3737C8(uint64_t a1)
{
  result = sub_373AF8(&qword_503AC0, type metadata accessor for HighlightItem, protocol conformance descriptor for HighlightItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for HighlightItem(uint64_t a1)
{
  result = qword_503AF8;
  if (!qword_503AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_37386C(uint64_t a1)
{
  result = sub_373AF8(&qword_503AC8, type metadata accessor for HighlightItem, protocol conformance descriptor for HighlightItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3738C4(uint64_t a1)
{
  result = sub_373AF8(&qword_4FCB38, type metadata accessor for HighlightItem, protocol conformance descriptor for HighlightItem);
  *(a1 + 8) = result;
  return result;
}

void sub_373924(uint64_t a1, double a2)
{
  sub_3E7784();
  if (v2 <= 0x3F)
  {
    sub_4D334(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_373AA4()
{
  result = qword_503BD8;
  if (!qword_503BD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HighlightType, &type metadata for HighlightType, v0, v1);
    atomic_store(result, &qword_503BD8);
  }

  return result;
}

uint64_t sub_373AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_373B7C(uint64_t a1)
{
  sub_C2A1C();
  result = sub_3ED814();
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_311FC(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id HighlightsProviderProtocol.isSharedContent(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    sub_17A28();
    sub_3EE1F4();
    v4 = sub_3ED204();
  }

  v5 = [v3 isSharedContentWithPageAdamId:v4];

  return v5;
}

void *sub_373D1C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_3EE4C4();
  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_3EE3F4();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_3EE494();
      sub_3EE4D4();
      sub_3EE4E4();
      sub_3EE4A4();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_3EE5A4();
    sub_3EE4C4();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_373E84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_41C6C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2F4AC(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0, &unk_3F6DD0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_41C6C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_373FC4(uint64_t a1, uint64_t (*a2)(void))
{
  v8 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  sub_3EE4C4();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_1F958(i, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8, &qword_3FDCD0);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_3EE494();
    sub_3EE4D4();
    sub_3EE4E4();
    sub_3EE4A4();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

double _s8ShelfKit18HighlightsProviderC021highlightCenterDidAddC0yySo011SLHighlightF0CF_0()
{
  v1 = v0;
  if ([objc_opt_self() isEnabled] && v0[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_userIsLoggedIn] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightCenter];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v8[4] = sub_37D920;
    v8[5] = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_37859C;
    v8[3] = &block_descriptor_27;
    v4 = _Block_copy(v8);
    v5 = v1;

    [v2 fetchHighlightsWithLimit:25 completionBlock:v4];
    _Block_release(v4);
  }

  else
  {
    sub_3E9D44();
    v7 = OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsDisplayedOnCurrentPage;
    swift_beginAccess();
    *&v1[v7] = &_swiftEmptySetSingleton;
  }

  return result;
}

char *HighlightsProvider.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsSubject;
  *&v17 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503BF8, &unk_41D7E0);
  swift_allocObject();
  *&v1[v4] = sub_3E9D94();
  *&v1[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsDisplayedOnCurrentPage] = &_swiftEmptySetSingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28, &unk_40A810);
  sub_3EC444();
  sub_3ECD14();
  sub_1FE90(&v17, &v1[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_storeDataProvider]);
  v5 = [objc_allocWithZone(SLHighlightCenter) init];
  *&v1[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightCenter] = v5;
  v6 = [objc_opt_self() ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];

  v8 = [v7 ams_DSID];
  if (v8)
  {
  }

  v2[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_userIsLoggedIn] = v8 != 0;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v16, "init");
  sub_36174(0, &qword_503C28, SLAttributionView_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v9;
  if ([ObjCClassFromMetadata respondsToSelector:"useNewDefaultBackgroundStyle"])
  {
    [objc_opt_self() useNewDefaultBackgroundStyle];
  }

  v12 = *&v11[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightCenter];
  v13 = v11;
  [v12 setDelegate:v13];
  _s8ShelfKit18HighlightsProviderC021highlightCenterDidAddC0yySo011SLHighlightF0CF_0();
  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v13 selector:"accountDidChange" name:ACDAccountStoreDidChangeNotification object:0];

  return v13;
}

id HighlightsProvider.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightCenter] setDelegate:0];
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:ACDAccountStoreDidChangeNotification object:0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t HighlightsProvider.sharedWithYouShelfPublisher.getter()
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C30, &qword_41D7F0);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = &v12 - v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C38, &unk_41D7F8);
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - v5;
  v15 = *(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsSubject);
  sub_1F958(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_storeDataProvider, v14);
  v7 = swift_allocObject();
  sub_1FE90(v14, v7 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503BF8, &unk_41D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40, &unk_40A440);
  sub_886BC(&qword_503C48, &qword_503BF8, &unk_41D7E0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_3EA024();

  sub_886BC(&unk_503C50, &qword_503C30, &qword_41D7F0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_886BC(&qword_4F5EC8, &qword_503C40, &unk_40A440, &protocol conformance descriptor for AnyPublisher<A, B>);
  v8 = v13;
  sub_3EA184();
  (*(v1 + 8))(v3, v8);
  sub_886BC(&qword_503C60, &qword_503C38, &unk_41D7F8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v9 = v12;
  v10 = sub_3E9F94();
  (*(v4 + 8))(v6, v9);
  return v10;
}

char *sub_3749DC@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v98 = sub_3E5994();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70, &qword_3F7240);
  __chkstk_darwin(v9 - 8);
  v99 = &v86 - v10;
  v104 = sub_3E59F4();
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503DC0, &qword_41D8B8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v86 - v14;
  v106 = sub_3E5DC4();
  v16 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v86 - v19;
  v21 = *a1;
  v22 = *a1 >> 62;
  v109 = *a1;
  if (v22)
  {
    v23 = sub_3EE5A4();
  }

  else
  {
    v23 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  v24 = _swiftEmptyArrayStorage;
  v91 = v13;
  v90 = v15;
  v89 = a2;
  if (v23)
  {
    v111 = _swiftEmptyArrayStorage;
    v108 = v23;
    v102 = (v23 & ~(v23 >> 63));
    result = sub_41BA8(0, v102, 0);
    if ((v108 & 0x8000000000000000) == 0)
    {
      v87 = v12;
      v88 = a3;
      v26 = 0;
      v27 = v111;
      v107 = v109 & 0xC000000000000001;
      v28 = v99;
      do
      {
        v29 = v27;
        if (v107)
        {
          v30 = sub_3EE3F4();
        }

        else
        {
          v30 = *(v109 + 8 * v26 + 32);
        }

        v31 = v30;
        v32 = [v30 identifier];
        v33 = sub_3ED244();
        v35 = v34;

        v27 = v29;
        v111 = v29;
        v36 = v29[2];
        v37 = v27[3];
        if (v36 >= v37 >> 1)
        {
          sub_41BA8((v37 > 1), v36 + 1, 1);
          v27 = v111;
        }

        ++v26;
        v27[2] = v36 + 1;
        v38 = &v27[2 * v36];
        v38[4] = v33;
        v38[5] = v35;
      }

      while (v108 != v26);
      v86 = v27;
      v111 = _swiftEmptyArrayStorage;
      sub_41BC8(0, v102, 0);
      v39 = 0;
      v40 = v111;
      do
      {
        if (v107)
        {
          v41 = sub_3EE3F4();
        }

        else
        {
          v41 = *(v109 + 8 * v39 + 32);
        }

        v42 = v41;
        v43 = [v41 resourceURL];
        sub_3E5D44();

        v111 = v40;
        v45 = v40[2];
        v44 = v40[3];
        if (v45 >= v44 >> 1)
        {
          sub_41BC8((v44 > 1), v45 + 1, 1);
          v40 = v111;
        }

        ++v39;
        v40[2] = v45 + 1;
        (*(v16 + 32))(v40 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v45, v20, v106);
      }

      while (v108 != v39);
      v111 = _swiftEmptyArrayStorage;
      sub_41FE4(0, v102, 0);
      v46 = 0;
      v24 = v111;
      v47 = v101;
      v95 = (v101 + 4);
      v96 = v100 + 8;
      v97 = v100 + 16;
      v94 = v101 + 1;
      v101 = (v16 + 8);
      v102 = (v47 + 6);
      while (1)
      {
        v48 = v107 ? sub_3EE3F4() : *(v109 + 8 * v46 + 32);
        v49 = v48;
        v50 = v105;
        v51 = [v48 resourceURL];
        sub_3E5D44();

        sub_3E59C4();
        v52 = v104;
        if ((*v102)(v28, 1, v104) != 1)
        {
          break;
        }

        (*v101)(v50, v106);

        sub_FCF8(v28, &qword_503D70, &qword_3F7240);
LABEL_42:
        v72 = 0;
        v74 = 0;
LABEL_43:
        v111 = v24;
        v77 = v24[2];
        v76 = v24[3];
        v78 = v108;
        if (v77 >= v76 >> 1)
        {
          sub_41FE4((v76 > 1), v77 + 1, 1);
          v78 = v108;
          v24 = v111;
        }

        ++v46;
        v24[2] = v77 + 1;
        v79 = &v24[2 * v77];
        v79[4] = v72;
        v79[5] = v74;
        if (v78 == v46)
        {
          a3 = v88;
          v12 = v87;
          v80 = v86;
          goto LABEL_48;
        }
      }

      (*v95)(v103, v28, v52);
      v53 = URLComponents.queryItems(named:)(116, 0xE100000000000000);
      if (*(v53 + 2))
      {
        v54 = v100;
        v55 = v93;
        v56 = v98;
        (*(v100 + 16))(v93, &v53[(*(v54 + 80) + 32) & ~*(v54 + 80)], v98);

        v57 = sub_3E5984();
        v59 = v58;
        (*(v54 + 8))(v55, v56);
        if (v59)
        {
          v110 = 0.0;
          v60 = sub_DB960(v57, v59, &v110);

          v50 = v105;
          if (v60)
          {
            goto LABEL_34;
          }

          v28 = v99;
        }

        else
        {
          v28 = v99;
          v50 = v105;
        }
      }

      else
      {
      }

      v61 = URLComponents.queryItems(named:)(114, 0xE100000000000000);
      if (*(v61 + 2))
      {
        v62 = v100;
        v63 = v92;
        v64 = v98;
        (*(v100 + 16))(v92, &v61[(*(v62 + 80) + 32) & ~*(v62 + 80)], v98);

        v65 = sub_3E5984();
        v67 = v66;
        (*(v62 + 8))(v63, v64);
        if (!v67)
        {

          v28 = v99;
          v75 = v104;
          v50 = v105;
LABEL_41:
          (*v94)(v103, v75);
          (*v101)(v50, v106);
          goto LABEL_42;
        }

        v110 = 0.0;
        v68 = sub_DB960(v65, v67, &v110);

        v50 = v105;
        if (v68)
        {
LABEL_34:
          v69 = v110;
          v28 = v99;
          if (qword_4E8B80 != -1)
          {
            swift_once();
          }

          v70 = qword_503BE0;
          [qword_503BE0 setStyle:1];
          v71 = [v70 stringFromSeconds:v69];
          v72 = sub_3ED244();
          v74 = v73;

          (*v94)(v103, v104);
          (*v101)(v50, v106);
          goto LABEL_43;
        }

        v28 = v99;
      }

      else
      {
      }

      v75 = v104;
      goto LABEL_41;
    }

    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
    v80 = _swiftEmptyArrayStorage;
LABEL_48:
    v81 = v89[3];
    v82 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v81);
    (*(v82 + 120))(v80, v40, v24, v81, v82);

    v83 = sub_3ECD24();

    v111 = v83;
    *(swift_allocObject() + 16) = v109;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503DC8, &unk_41D8C0);
    type metadata accessor for ModernShelf(0);
    sub_886BC(&qword_503DD0, &qword_503DC8, &unk_41D8C0, &protocol conformance descriptor for Future<A, B>);
    v84 = v90;
    sub_3EA024();

    sub_886BC(&qword_503DD8, &qword_503DC0, &qword_41D8B8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v85 = sub_3E9F94();
    result = (*(v91 + 8))(v84, v12);
    *a3 = v85;
  }

  return result;
}

uint64_t sub_375514()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_375554(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v5 - 8);
  v7 = v51 - v6;
  v8 = type metadata accessor for Header(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v12 - 8);
  v14 = v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0, &unk_3FEAA0);
  __chkstk_darwin(v15 - 8);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8, &unk_3FF1D0);
  __chkstk_darwin(v18 - 8);
  v20 = v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0, &qword_3FEAB0);
  __chkstk_darwin(v21 - 8);
  v59 = v51 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v23 - 8);
  v25 = v51 - v24;
  if (*a1)
  {
    Shelf.mapToModernShelf()((v51 - v24));
    v26 = type metadata accessor for ModernShelf(0);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) != 1)
    {
      sub_F7928(v25, a3, v27);
      sub_375CF4(v58);
      return;
    }
  }

  else
  {
    v28 = type metadata accessor for ModernShelf(0);
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  }

  v56 = v9;
  v57 = v7;
  v58 = a3;
  sub_FCF8(v25, &unk_503DA0, &unk_3FF1B0);
  v55 = 0x800000000042EE50;
  v29 = type metadata accessor for ActionMenu(0);
  v30 = *(v29 - 8);
  v51[0] = *(v30 + 56);
  v51[1] = v30 + 56;
  (v51[0])(v20, 1, 1, v29);
  v31 = type metadata accessor for Header.PrimaryAction(0);
  v32 = *(*(v31 - 8) + 56);
  v53 = v20;
  v32(v17, 1, 1, v31);
  v33 = sub_3E7784();
  v34 = *(*(v33 - 8) + 56);
  v54 = v17;
  v34(v14, 1, 1, v33);
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v52 = v14;
  v35 = v8[7];
  (v51[0])(&v11[v35], 1, 1, v29);
  v36 = v8[8];
  v32(&v11[v36], 1, 1, v31);
  v37 = v8[9];
  v34(&v11[v37], 1, 1, v33);
  if (sub_3EE0E4())
  {
    v11[32] = 0;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    sub_51F9C(v53, &v11[v35], &qword_4F1AB8, &unk_3FF1D0);
    v38 = v54;
    sub_F7C5C(v54, &v11[v36]);
    sub_51F9C(v52, &v11[v37], &qword_4F1D50, &unk_3F7520);
    v39 = v59;
    sub_37D7A8(v11, v59, type metadata accessor for Header);
    (*(v56 + 56))(v39, 0, 1, v8);
    sub_FCF8(v38, &qword_4F1AB0, &unk_3FEAA0);
    sub_37D880(v11, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v52, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v53, &qword_4F1AB8, &unk_3FF1D0);
    sub_FCF8(v54, &qword_4F1AB0, &unk_3FEAA0);
    sub_37D880(v11, type metadata accessor for Header);
    v39 = v59;
    (*(v56 + 56))(v59, 1, 1, v8);
  }

  v40 = sub_3E5DC4();
  v41 = *(*(v40 - 8) + 56);
  v42 = v57;
  v41(v57, 1, 1, v40);
  v43 = type metadata accessor for ModernShelf(0);
  v44 = v58;
  v45 = &v58[v43[12]];
  *(v45 + 4) = 0;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  v46 = v43[13];
  v47 = sub_3EC634();
  (*(*(v47 - 8) + 56))(&v44[v46], 1, 1, v47);
  v48 = v43[9];
  v49 = &v44[v43[8]];
  v41(&v44[v48], 1, 1, v40);
  *v44 = 0xD000000000000019;
  *(v44 + 1) = v55;
  sub_FACC(v39, &v44[v43[5]], &qword_4F1AC0, &qword_3FEAB0);
  v50 = &v44[v43[6]];
  *v50 = 270;
  *(v50 + 3) = 256;
  *(v50 + 2) = 0;
  *(v50 + 1) = 1;
  *&v44[v43[7]] = _swiftEmptyArrayStorage;
  sub_51F9C(v42, &v44[v48], &unk_4E9EE0, &unk_3F5BC0);
  v44[v43[10]] = 1;
  v44[v43[11]] = 0;
  *v49 = 0;
  *(v49 + 1) = 0;
}

void sub_375CF4(unint64_t a1)
{
  v3 = type metadata accessor for ModernShelf(0);
  v4 = sub_373FC4(*(v1 + *(v3 + 28)), type metadata accessor for HighlightItem);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_14:

    goto LABEL_16;
  }

  v6 = sub_3EE5A4();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_3EE3F4();
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      ++v7;
      v10 = v8[2];
      v9 = v8[3];
      v11 = v8[5];
      type metadata accessor for HighlightIdentifier();
      inited = swift_initStackObject();
      *(inited + 16) = v10;
      *(inited + 24) = v9;
      *(inited + 32) = v11;
      *(inited + 40) = 0;

      v13 = sub_3799C0(inited, a1);

      v14 = OBJC_IVAR____TtC8ShelfKit13HighlightItem_highlight;
      swift_beginAccess();
      *(v8 + v14) = v13;
    }

    while (v6 != v7);
LABEL_16:

    return;
  }

  __break(1u);
}

uint64_t HighlightsProvider.pagePublisher.getter()
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C68, &qword_41D808);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = &v12 - v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503C70, &unk_41D810);
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - v5;
  v15 = *(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsSubject);
  sub_1F958(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_storeDataProvider, v14);
  v7 = swift_allocObject();
  sub_1FE90(v14, v7 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503BF8, &unk_41D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9300, &qword_40CE60);
  sub_886BC(&qword_503C48, &qword_503BF8, &unk_41D7E0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_3EA024();

  sub_886BC(&unk_503C80, &qword_503C68, &qword_41D808, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_886BC(&qword_4F9308, &qword_4F9300, &qword_40CE60, &protocol conformance descriptor for AnyPublisher<A, B>);
  v8 = v13;
  sub_3EA184();
  (*(v1 + 8))(v3, v8);
  sub_886BC(&qword_503C90, &unk_503C70, &unk_41D810, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v9 = v12;
  v10 = sub_3E9F94();
  (*(v4 + 8))(v6, v9);
  return v10;
}

char *sub_3761D8@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v98 = sub_3E5994();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70, &qword_3F7240);
  __chkstk_darwin(v9 - 8);
  v99 = &v86 - v10;
  v104 = sub_3E59F4();
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D78, &qword_41D8A8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v86 - v14;
  v106 = sub_3E5DC4();
  v16 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v86 - v19;
  v21 = *a1;
  v22 = *a1 >> 62;
  v109 = *a1;
  if (v22)
  {
    v23 = sub_3EE5A4();
  }

  else
  {
    v23 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  v24 = _swiftEmptyArrayStorage;
  v91 = v13;
  v90 = v15;
  v89 = a2;
  if (v23)
  {
    v111 = _swiftEmptyArrayStorage;
    v108 = v23;
    v102 = (v23 & ~(v23 >> 63));
    result = sub_41BA8(0, v102, 0);
    if ((v108 & 0x8000000000000000) == 0)
    {
      v87 = v12;
      v88 = a3;
      v26 = 0;
      v27 = v111;
      v107 = v109 & 0xC000000000000001;
      v28 = v99;
      do
      {
        v29 = v27;
        if (v107)
        {
          v30 = sub_3EE3F4();
        }

        else
        {
          v30 = *(v109 + 8 * v26 + 32);
        }

        v31 = v30;
        v32 = [v30 identifier];
        v33 = sub_3ED244();
        v35 = v34;

        v27 = v29;
        v111 = v29;
        v36 = v29[2];
        v37 = v27[3];
        if (v36 >= v37 >> 1)
        {
          sub_41BA8((v37 > 1), v36 + 1, 1);
          v27 = v111;
        }

        ++v26;
        v27[2] = v36 + 1;
        v38 = &v27[2 * v36];
        v38[4] = v33;
        v38[5] = v35;
      }

      while (v108 != v26);
      v86 = v27;
      v111 = _swiftEmptyArrayStorage;
      sub_41BC8(0, v102, 0);
      v39 = 0;
      v40 = v111;
      do
      {
        if (v107)
        {
          v41 = sub_3EE3F4();
        }

        else
        {
          v41 = *(v109 + 8 * v39 + 32);
        }

        v42 = v41;
        v43 = [v41 resourceURL];
        sub_3E5D44();

        v111 = v40;
        v45 = v40[2];
        v44 = v40[3];
        if (v45 >= v44 >> 1)
        {
          sub_41BC8((v44 > 1), v45 + 1, 1);
          v40 = v111;
        }

        ++v39;
        v40[2] = v45 + 1;
        (*(v16 + 32))(v40 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v45, v20, v106);
      }

      while (v108 != v39);
      v111 = _swiftEmptyArrayStorage;
      sub_41FE4(0, v102, 0);
      v46 = 0;
      v24 = v111;
      v47 = v101;
      v95 = (v101 + 4);
      v96 = v100 + 8;
      v97 = v100 + 16;
      v94 = v101 + 1;
      v101 = (v16 + 8);
      v102 = (v47 + 6);
      while (1)
      {
        v48 = v107 ? sub_3EE3F4() : *(v109 + 8 * v46 + 32);
        v49 = v48;
        v50 = v105;
        v51 = [v48 resourceURL];
        sub_3E5D44();

        sub_3E59C4();
        v52 = v104;
        if ((*v102)(v28, 1, v104) != 1)
        {
          break;
        }

        (*v101)(v50, v106);

        sub_FCF8(v28, &qword_503D70, &qword_3F7240);
LABEL_42:
        v72 = 0;
        v74 = 0;
LABEL_43:
        v111 = v24;
        v77 = v24[2];
        v76 = v24[3];
        v78 = v108;
        if (v77 >= v76 >> 1)
        {
          sub_41FE4((v76 > 1), v77 + 1, 1);
          v78 = v108;
          v24 = v111;
        }

        ++v46;
        v24[2] = v77 + 1;
        v79 = &v24[2 * v77];
        v79[4] = v72;
        v79[5] = v74;
        if (v78 == v46)
        {
          a3 = v88;
          v12 = v87;
          v80 = v86;
          goto LABEL_48;
        }
      }

      (*v95)(v103, v28, v52);
      v53 = URLComponents.queryItems(named:)(116, 0xE100000000000000);
      if (*(v53 + 2))
      {
        v54 = v100;
        v55 = v93;
        v56 = v98;
        (*(v100 + 16))(v93, &v53[(*(v54 + 80) + 32) & ~*(v54 + 80)], v98);

        v57 = sub_3E5984();
        v59 = v58;
        (*(v54 + 8))(v55, v56);
        if (v59)
        {
          v110 = 0.0;
          v60 = sub_DB960(v57, v59, &v110);

          v50 = v105;
          if (v60)
          {
            goto LABEL_34;
          }

          v28 = v99;
        }

        else
        {
          v28 = v99;
          v50 = v105;
        }
      }

      else
      {
      }

      v61 = URLComponents.queryItems(named:)(114, 0xE100000000000000);
      if (*(v61 + 2))
      {
        v62 = v100;
        v63 = v92;
        v64 = v98;
        (*(v100 + 16))(v92, &v61[(*(v62 + 80) + 32) & ~*(v62 + 80)], v98);

        v65 = sub_3E5984();
        v67 = v66;
        (*(v62 + 8))(v63, v64);
        if (!v67)
        {

          v28 = v99;
          v75 = v104;
          v50 = v105;
LABEL_41:
          (*v94)(v103, v75);
          (*v101)(v50, v106);
          goto LABEL_42;
        }

        v110 = 0.0;
        v68 = sub_DB960(v65, v67, &v110);

        v50 = v105;
        if (v68)
        {
LABEL_34:
          v69 = v110;
          v28 = v99;
          if (qword_4E8B80 != -1)
          {
            swift_once();
          }

          v70 = qword_503BE0;
          [qword_503BE0 setStyle:1];
          v71 = [v70 stringFromSeconds:v69];
          v72 = sub_3ED244();
          v74 = v73;

          (*v94)(v103, v104);
          (*v101)(v50, v106);
          goto LABEL_43;
        }

        v28 = v99;
      }

      else
      {
      }

      v75 = v104;
      goto LABEL_41;
    }

    __break(1u);
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
    v80 = _swiftEmptyArrayStorage;
LABEL_48:
    v81 = v89[3];
    v82 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v81);
    (*(v82 + 88))(v80, v40, v24, v81, v82);

    v83 = sub_3ECD24();

    v111 = v83;
    *(swift_allocObject() + 16) = v109;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503D80, &qword_41D8B0);
    type metadata accessor for Page(0);
    sub_886BC(&qword_4F83C0, &unk_503D80, &qword_41D8B0, &protocol conformance descriptor for Future<A, B>);
    v84 = v90;
    sub_3EA024();

    sub_886BC(&unk_503D90, &qword_503D78, &qword_41D8A8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v85 = sub_3E9F94();
    result = (*(v91 + 8))(v84, v12);
    *a3 = v85;
  }

  return result;
}

uint64_t sub_376D18@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v51 = a3;
  v4 = sub_3E63E4();
  __chkstk_darwin(v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EC164();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v9 - 8);
  v47 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E0, &unk_403FF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v46 - v18);
  v20 = type metadata accessor for ModernShelf(0);
  v21 = *(v20 - 8);
  v22.n128_f64[0] = __chkstk_darwin(v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  if (!*a1)
  {
LABEL_13:
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29E8, &qword_404000);
    v34 = *(v33 - 8);
    (*(v34 + 56))(v16, 1, 1, v33);
    v35 = sub_3E7784();
    v36 = v47;
    (*(*(v35 - 8) + 56))(v47, 1, 1, v35);
    v37 = v48;
    sub_3EC154();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page(0);
    v25 = swift_allocObject();
    *(v25 + 16) = _swiftEmptyArrayStorage;
    *(v25 + 24) = 0u;
    *(v25 + 40) = 0u;
    *(v25 + 56) = _swiftEmptyArrayStorage;
    *(v25 + 64) = 0;
    *(v25 + 68) = 1;
    *(v25 + 72) = _swiftEmptyArrayStorage;
    *(v25 + 80) = 0;
    sub_37D7A8(v6, v25 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, &type metadata accessor for InteractionContext.Page);
    sub_37D810(v16, v13);
    if ((*(v34 + 48))(v13, 1, v33) == 1)
    {
      sub_37D880(v6, &type metadata accessor for InteractionContext.Page);
      sub_FCF8(v16, &qword_4F29E0, &unk_403FF0);
      sub_FCF8(v13, &qword_4F29E0, &unk_403FF0);
      v52 = 0u;
      v53 = 0u;
      v54 = 0;
    }

    else
    {
      *(&v53 + 1) = v33;
      v54 = sub_886BC(&unk_503DB0, &qword_4F29E8, &qword_404000, &protocol conformance descriptor for AnyJSIntentModel<A>);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v52);
      sub_FACC(v13, boxed_opaque_existential_0Tm, &qword_4F29E8, &qword_404000);
      sub_37D880(v6, &type metadata accessor for InteractionContext.Page);
      sub_FCF8(v16, &qword_4F29E0, &unk_403FF0);
    }

    v39 = v50;
    v32 = v51;
    v40 = v49;
    v41 = v25 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
    v42 = v52;
    v43 = v53;
    *(v41 + 32) = v54;
    *v41 = v42;
    *(v41 + 16) = v43;
    *(v25 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) = 0;
    *(v25 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) = 0;
    sub_FACC(v36, v25 + OBJC_IVAR____TtC8ShelfKit4Page_uber, &qword_4F1D50, &unk_3F7520);
    v44 = v25 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId;
    *v44 = 0;
    *(v44 + 8) = 1;
    v45 = v25 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId;
    *v45 = 0;
    *(v45 + 8) = 1;
    *(v25 + OBJC_IVAR____TtC8ShelfKit4Page_mapiInLibrary) = 2;
    result = (*(v40 + 32))(v25 + OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics, v37, v39);
    goto LABEL_17;
  }

  v26 = *(v25 + 16);
  if (!(v26 >> 62))
  {
    result = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:
    (*(v21 + 56))(v19, 1, 1, v20, v22);
LABEL_12:
    sub_FCF8(v19, &unk_503DA0, &unk_3FF1B0);
    goto LABEL_13;
  }

  result = sub_3EE5A4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v26 & 0xC000000000000001) != 0)
  {

    v29 = sub_3EE3F4();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
  {
    v28 = *(v26 + 32);

    v29 = v28;
LABEL_7:
    v30 = v29;
    Shelf.mapToModernShelf()(v19);

    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      sub_F7928(v19, v24, v31);
      sub_375CF4(v46);
      result = sub_37D880(v24, type metadata accessor for ModernShelf);
      v32 = v51;
LABEL_17:
      *v32 = v25;
      return result;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t HighlightsProvider.pageHighlightShelfPublisherForId(adamId:)(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C30, &qword_41D7F0);
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C38, &unk_41D7F8);
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  sub_1F958(&v1[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_storeDataProvider], v22);
  v10 = swift_allocObject();
  sub_1FE90(v22, v10 + 16);
  *(v10 + 56) = a1;
  v21 = *&v1[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsSubject];
  v11 = swift_allocObject();
  v11[2] = sub_3777D8;
  v11[3] = v10;
  v11[4] = v1;

  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503BF8, &unk_41D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40, &unk_40A440);
  sub_886BC(&qword_503C48, &qword_503BF8, &unk_41D7E0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_3EA024();

  sub_886BC(&unk_503C50, &qword_503C30, &qword_41D7F0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_886BC(&qword_4F5EC8, &qword_503C40, &unk_40A440, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v18;
  sub_3EA184();
  (*(v3 + 8))(v5, v13);
  sub_886BC(&qword_503C60, &qword_503C38, &unk_41D7F8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v14 = v19;
  v15 = sub_3E9F94();

  (*(v20 + 8))(v9, v14);
  return v15;
}

uint64_t sub_3777A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3777D8(uint64_t a1)
{
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v4 + 104))(v3, a1, v5, v4);
}

uint64_t HighlightsProvider.pageHighlightShelfPublisherForURL(pageURL:)(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C30, &qword_41D7F0);
  v20 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C38, &unk_41D7F8);
  v21 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v18 - v5;
  v7 = sub_3E5DC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1F958(&v1[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_storeDataProvider], v23);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_1FE90(v23, v11 + 16);
  (*(v8 + 32))(v11 + v10, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v22 = *&v1[OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsSubject];
  v12 = swift_allocObject();
  v12[2] = sub_378CEC;
  v12[3] = v11;
  v12[4] = v1;

  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503BF8, &unk_41D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40, &unk_40A440);
  sub_886BC(&qword_503C48, &qword_503BF8, &unk_41D7E0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_3EA024();

  sub_886BC(&unk_503C50, &qword_503C30, &qword_41D7F0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_886BC(&qword_4F5EC8, &qword_503C40, &unk_40A440, &protocol conformance descriptor for AnyPublisher<A, B>);
  v14 = v18;
  sub_3EA184();
  (*(v20 + 8))(v4, v14);
  sub_886BC(&qword_503C60, &qword_503C38, &unk_41D7F8, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v15 = v19;
  v16 = sub_3E9F94();

  (*(v21 + 8))(v6, v15);
  return v16;
}

id HighlightsProvider.addFeedbackForHighlight(highlight:feedback:)(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightCenter);
  v5 = *(a1 + 32);
  if (*a2)
  {

    return [v4 feedbackForHighlight:v5 withType:1 completionBlock:0];
  }

  else
  {
    [v4 feedbackForHighlight:v5 withType:0 completionBlock:0];
    swift_beginAccess();

    sub_318EC(&v7, a1);
    swift_endAccess();
  }
}

double sub_377D50()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v6 = [v1 ams_activeiTunesAccount];

  if (v6)
  {
    v3 = [v6 ams_DSID];
    if (v3)
    {

      v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_userIsLoggedIn);
      *(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_userIsLoggedIn) = 1;
      if (v4 != 1)
      {
        _s8ShelfKit18HighlightsProviderC021highlightCenterDidAddC0yySo011SLHighlightF0CF_0();
      }

      return result;
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_userIsLoggedIn);
  *(v0 + OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_userIsLoggedIn) = 0;
  if (v5 == 1)
  {

    return _s8ShelfKit18HighlightsProviderC021highlightCenterDidAddC0yySo011SLHighlightF0CF_0();
  }

  return result;
}

Swift::Bool __swiftcall HighlightsProvider.isSharedContent(contentAdamId:)(Swift::Int64 contentAdamId)
{
  v2 = OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsDisplayedOnCurrentPage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_3EE294();
    type metadata accessor for Highlight(0);
    sub_37D720(&qword_503C98, type metadata accessor for Highlight, protocol conformance descriptor for Highlight);
    result = sub_3ED844();
    v6 = v22;
    v5 = v23;
    v8 = v24;
    v7 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v6 = v3;
  }

  v13 = (v8 + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_3EE304() || (type metadata accessor for Highlight(0), swift_dynamicCast(), (v16 = v21) == 0))
    {
LABEL_21:
      v19 = 0;
      goto LABEL_22;
    }

LABEL_17:
    v17 = *(v16 + 40);
    v18 = *(v16 + 48);

    if ((v18 & 1) == 0)
    {
      if (v17 < 0)
      {
        goto LABEL_24;
      }

      if (v17 == contentAdamId)
      {
        v19 = 1;
LABEL_22:
        sub_44824(v6);

        return v19;
      }
    }
  }

  v14 = v7;
  v15 = v9;
  if (v9)
  {
LABEL_13:
    v9 = (v15 - 1) & v15;

    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v5 + 8 * v7);
    ++v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

Swift::Void __swiftcall HighlightsProvider.clearSharedItems()()
{
  v1 = OBJC_IVAR____TtC8ShelfKit18HighlightsProvider_highlightsDisplayedOnCurrentPage;
  swift_beginAccess();
  *(v0 + v1) = &_swiftEmptySetSingleton;
}

uint64_t sub_3781D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_3EBBC4();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3EBC14();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  v12 = sub_3EDBC4();
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a1;
  aBlock[4] = sub_37D980;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_41;
  v14 = _Block_copy(aBlock);
  v15 = a4;

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_37D720(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0, &unk_40B9F0);
  sub_886BC(&qword_506A30, &unk_503DE0, &unk_40B9F0, &protocol conformance descriptor for [A]);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_3784D8(uint64_t a1, unint64_t a2)
{
  sub_3E9D64();
  if (v6 >> 62)
  {
    v5 = sub_3EE5A4();

    if (v5)
    {
      return sub_3E9D44();
    }
  }

  else
  {
    v3 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));

    if (v3)
    {
      return sub_3E9D44();
    }
  }

  if (a2 >> 62)
  {
    result = sub_3EE5A4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  return sub_3E9D44();
}

void sub_37859C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_36174(0, &qword_503D28, SLHighlight_ptr);
  v7 = sub_3ED584();

  v8 = a4;
  v6(v7, a3, a4);
}

uint64_t sub_378654@<X0>(unint64_t *a1@<X0>, void (*a2)(void *, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a2;
  v51 = a4;
  v49 = a3;
  v55 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D40, &qword_41D898);
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = &v49 - v7;
  v8 = sub_3E5DC4();
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v62 = &v49 - v13;
  v14 = *a1;
  if (*a1 >> 62)
  {
LABEL_26:
    v15 = sub_3EE5A4();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    if (v15)
    {
LABEL_3:
      v16 = 0;
      v60 = v14 & 0xFFFFFFFFFFFFFF8;
      v61 = v14 & 0xC000000000000001;
      v64 = (v63 + 32);
      v56 = v63 + 40;
      v17 = _swiftEmptyDictionarySingleton;
      v58 = v14;
      v59 = v10;
      v57 = v15;
      while (1)
      {
        if (v61)
        {
          v20 = sub_3EE3F4();
        }

        else
        {
          if (v16 >= *(v60 + 16))
          {
            goto LABEL_23;
          }

          v20 = *(v14 + 8 * v16 + 32);
        }

        v21 = v20;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v65 = v16 + 1;

        v22 = [v21 identifier];
        v23 = sub_3ED244();
        v25 = v24;

        v66 = v21;
        v26 = [v21 resourceURL];
        v27 = v62;
        sub_3E5D44();

        v14 = *v64;
        v28 = v8;
        (*v64)(v10, v27, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v17;
        v10 = sub_552A8(v23, v25);
        v31 = v17[2];
        v32 = (v30 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_24;
        }

        v34 = v30;
        if (v17[3] >= v33)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v30)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_596AC();
            if (v34)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_57328(v33, isUniquelyReferenced_nonNull_native);
          v35 = sub_552A8(v23, v25);
          if ((v34 & 1) != (v36 & 1))
          {
            result = sub_3EE894();
            __break(1u);
            return result;
          }

          v10 = v35;
          if (v34)
          {
LABEL_4:

            v18 = v67;
            v19 = v67[7] + *(v63 + 72) * v10;
            v10 = v59;
            v8 = v28;
            (*(v63 + 40))(v19, v59, v28);

            goto LABEL_5;
          }
        }

        v18 = v67;
        v67[(v10 >> 6) + 8] |= 1 << v10;
        v37 = (v18[6] + 16 * v10);
        *v37 = v23;
        v37[1] = v25;
        v38 = v18[7] + *(v63 + 72) * v10;
        v10 = v59;
        v8 = v28;
        (v14)(v38, v59, v28);

        v39 = v18[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_25;
        }

        v18[2] = v41;
LABEL_5:
        v17 = v18;
        ++v16;
        v14 = v58;
        if (v65 == v57)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v17 = _swiftEmptyDictionarySingleton;
LABEL_28:
  v50(v17, v12);

  v42 = sub_3ECD24();

  v67 = v42;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D48, &qword_41D8A0);
  type metadata accessor for ModernShelf(0);
  sub_886BC(&qword_503D50, &qword_503D48, &qword_41D8A0, &protocol conformance descriptor for Future<A, B>);
  v45 = v52;
  sub_3E9FA4();

  sub_886BC(&qword_503D58, &qword_503D40, &qword_41D898, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v46 = v54;
  v47 = sub_3E9F94();
  result = (*(v53 + 8))(v45, v46);
  *v55 = v47;
  return result;
}

uint64_t sub_378C28()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_378CEC(uint64_t a1)
{
  v3 = *(sub_3E5DC4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 96))(&v1[v4], a1, v5, v6);
}

uint64_t objectdestroy_8Tm_0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_378DD4@<X0>(void (**a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_378E98(a3, v6, a4);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for ModernShelf(0);
  return (*(*(v10 - 8) + 56))(a4, v9, 1, v10);
}

uint64_t sub_378E98@<X0>(unint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, char *a3@<X8>)
{
  v90 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v5 - 8);
  v89 = &v78 - v6;
  v7 = type metadata accessor for Header(0);
  v8 = *(v7 - 8);
  v87 = v7;
  v88 = v8;
  __chkstk_darwin(v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v14 - 8);
  v91 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0, &unk_3FEAA0);
  __chkstk_darwin(v19 - 8);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8, &unk_3FF1D0);
  __chkstk_darwin(v25 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v78 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0, &qword_3FEAB0);
  __chkstk_darwin(v31 - 8);
  v86 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v78 - v34;
  if (a2)
  {

    v37 = sub_3799C0(v36, a1);
    if (v37)
    {
      v38 = v37;
      v86 = v35;
      swift_beginAccess();

      sub_318EC(&v92, v38);
      swift_endAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560, &qword_3F6D80);
      v39 = swift_allocObject();
      *(v39 + 1) = xmmword_3F5630;
      v39[7] = type metadata accessor for Highlight(0);
      v39[8] = sub_37D720(&unk_503D60, type metadata accessor for Highlight, protocol conformance descriptor for Highlight);
      v91 = v39;
      v39[4] = v38;
      v40 = type metadata accessor for ActionMenu(0);
      v41 = *(v40 - 8);
      v79 = *(v41 + 56);
      v80 = v41 + 56;
      v79(v30, 1, 1, v40);
      v42 = type metadata accessor for Header.PrimaryAction(0);
      v82 = a2;
      v43 = v42;
      v44 = v87;
      v45 = *(*(v42 - 8) + 56);
      v81 = v38;
      v45(v24, 1, 1, v42);
      v46 = sub_3E7784();
      v85 = v24;
      v47 = v46;
      v48 = *(*(v46 - 8) + 56);
      v83 = v30;
      v84 = v18;
      v48(v18, 1, 1, v46);
      v13[32] = 0;
      *v13 = 0u;
      *(v13 + 1) = 0u;
      v78 = v44[7];
      v79(&v13[v78], 1, 1, v40);
      v80 = v44[8];
      v45(&v13[v80], 1, 1, v43);
      v49 = v44;
      v50 = v13;
      v51 = v44[9];
      v48(&v13[v51], 1, 1, v47);

      LOBYTE(v40) = sub_3EE0E4();

      if (v40)
      {
        v13[32] = 0;
        *v13 = 0u;
        *(v13 + 1) = 0u;
        sub_51F9C(v83, &v13[v78], &qword_4F1AB8, &unk_3FF1D0);
        v52 = v85;
        sub_F7C5C(v85, &v13[v80]);
        sub_51F9C(v84, &v13[v51], &qword_4F1D50, &unk_3F7520);
        v53 = v13;
        v54 = v86;
        sub_37D7A8(v53, v86, type metadata accessor for Header);
        (*(v88 + 56))(v54, 0, 1, v49);
        sub_FCF8(v52, &qword_4F1AB0, &unk_3FEAA0);
        sub_37D880(v50, type metadata accessor for Header);
      }

      else
      {
        sub_FCF8(v84, &qword_4F1D50, &unk_3F7520);
        sub_FCF8(v83, &qword_4F1AB8, &unk_3FF1D0);
        sub_FCF8(v85, &qword_4F1AB0, &unk_3FEAA0);
        sub_37D880(v13, type metadata accessor for Header);
        v54 = v86;
        (*(v88 + 56))(v86, 1, 1, v44);
      }

      goto LABEL_11;
    }
  }

  v55 = type metadata accessor for ActionMenu(0);
  v56 = *(v55 - 8);
  v82 = *(v56 + 56);
  v83 = (v56 + 56);
  v84 = v27;
  v82(v27, 1, 1, v55);
  v57 = type metadata accessor for Header.PrimaryAction(0);
  v58 = *(*(v57 - 8) + 56);
  v59 = v87;
  v58(v21, 1, 1, v57);
  v60 = sub_3E7784();
  v61 = *(*(v60 - 8) + 56);
  v85 = v21;
  v61(v91, 1, 1, v60);
  v10[32] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v62 = v59[7];
  v82(&v10[v62], 1, 1, v55);
  v63 = v59[8];
  v58(&v10[v63], 1, 1, v57);
  v64 = v59[9];
  v61(&v10[v64], 1, 1, v60);
  if (sub_3EE0E4())
  {
    v10[32] = 0;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    sub_51F9C(v84, &v10[v62], &qword_4F1AB8, &unk_3FF1D0);
    v65 = v85;
    sub_F7C5C(v85, &v10[v63]);
    sub_51F9C(v91, &v10[v64], &qword_4F1D50, &unk_3F7520);
    v54 = v86;
    sub_37D7A8(v10, v86, type metadata accessor for Header);
    (*(v88 + 56))(v54, 0, 1, v59);
    sub_FCF8(v65, &qword_4F1AB0, &unk_3FEAA0);
    sub_37D880(v10, type metadata accessor for Header);
  }

  else
  {
    sub_FCF8(v91, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v84, &qword_4F1AB8, &unk_3FF1D0);
    sub_FCF8(v85, &qword_4F1AB0, &unk_3FEAA0);
    sub_37D880(v10, type metadata accessor for Header);
    v54 = v86;
    (*(v88 + 56))(v86, 1, 1, v59);
  }

  v91 = _swiftEmptyArrayStorage;
LABEL_11:
  v66 = sub_3E5DC4();
  v67 = *(*(v66 - 8) + 56);
  v68 = v89;
  v67(v89, 1, 1, v66);
  v69 = type metadata accessor for ModernShelf(0);
  v70 = v90;
  v71 = &v90[v69[12]];
  *(v71 + 4) = 0;
  *v71 = 0u;
  *(v71 + 1) = 0u;
  v72 = v69[13];
  v73 = sub_3EC634();
  (*(*(v73 - 8) + 56))(&v70[v72], 1, 1, v73);
  v74 = v69[9];
  v75 = &v70[v69[8]];
  v67(&v70[v74], 1, 1, v66);
  *v70 = 0xD000000000000014;
  *(v70 + 1) = 0x800000000042EE30;
  sub_FACC(v54, &v70[v69[5]], &qword_4F1AC0, &qword_3FEAB0);
  v76 = &v70[v69[6]];
  *v76 = 13;
  *(v76 + 3) = 256;
  *(v76 + 2) = 0;
  *(v76 + 1) = 1;
  *&v70[v69[7]] = v91;
  result = sub_51F9C(v68, &v70[v74], &unk_4E9EE0, &unk_3F5BC0);
  v70[v69[10]] = 1;
  v70[v69[11]] = 0;
  *v75 = 0;
  *(v75 + 1) = 0;
  return result;
}

uint64_t sub_3799C0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3EE5A4())
  {
    v8 = 0;
    v28 = v6;
    v29 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v29)
      {
        v9 = sub_3EE3F4();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = [v9 identifier];
      v12 = sub_3ED244();
      v14 = v13;

      v15 = *(a1 + 24);
      if (v15)
      {
        if (v12 == *(a1 + 16) && v15 == v14)
        {

LABEL_19:
          v18 = *(a1 + 32);
          v19 = *(a1 + 40);
          v20 = sub_3EC634();
          v21 = v28;
          (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
          type metadata accessor for Highlight(0);
          v22 = swift_allocObject();
          *(v22 + 32) = v10;
          v23 = [v10 identifier];
          v24 = sub_3ED244();
          v26 = v25;

          *(v22 + 16) = v24;
          *(v22 + 24) = v26;
          *(v22 + 40) = v18;
          *(v22 + 48) = v19;
          sub_FACC(v21, v22 + OBJC_IVAR____TtC8ShelfKit9Highlight_impressionMetrics, &unk_4E9170, &unk_3F4890);
          return v22;
        }

        v17 = sub_3EE804();

        if (v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v8;
      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

Swift::Bool __swiftcall HighlightsProvider.isSharedContent(pageAdamId:)(Swift::String_optional pageAdamId)
{
  if (!pageAdamId.value._object)
  {
    goto LABEL_68;
  }

  object = pageAdamId.value._object;
  v2 = HIBYTE(pageAdamId.value._object) & 0xF;
  pageAdamId.value._object = (pageAdamId.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
  if (!((object & 0x2000000000000000) != 0 ? v2 : pageAdamId.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_68;
  }

  if ((object & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = pageAdamId.value._countAndFlagsBits;

    sub_37BCAC(countAndFlagsBits, object, 10);
    v27 = v26;
    LOBYTE(countAndFlagsBits) = v28;

    v6 = v27;
    if ((countAndFlagsBits & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_68:
    LOBYTE(pageAdamId.value._countAndFlagsBits) = 0;
    return pageAdamId.value._countAndFlagsBits;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    v30[0] = pageAdamId.value._countAndFlagsBits;
    v30[1] = object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(pageAdamId.value._countAndFlagsBits) == 43)
    {
      if (!v2)
      {
LABEL_73:
        __break(1u);
        return pageAdamId.value._countAndFlagsBits;
      }

      if (--v2)
      {
        v6 = 0;
        v17 = v30 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v19 + v18;
          if (__OFADD__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v2)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (LOBYTE(pageAdamId.value._countAndFlagsBits) == 45)
    {
      if (!v2)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (--v2)
      {
        v6 = 0;
        v10 = v30 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v2)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v2)
    {
      v6 = 0;
      v22 = v30;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v6;
        if ((v6 * 10) >> 64 != (10 * v6) >> 63)
        {
          break;
        }

        v6 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v22;
        if (!--v2)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
    if ((pageAdamId.value._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v2 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      pageAdamId.value._countAndFlagsBits = sub_3EE484();
      v2 = pageAdamId.value._countAndFlagsBits;
    }

    v4 = *v2;
    if (v4 == 43)
    {
      if (pageAdamId.value._object >= 1)
      {
        v13 = pageAdamId.value._object - 1;
        if (pageAdamId.value._object != &dword_0 + 1)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_63;
          }

          v14 = (v2 + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v16 + v15;
            if (__OFADD__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v13)
            {
LABEL_54:
              LOBYTE(v2) = 0;
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v4 == 45)
    {
      if (pageAdamId.value._object >= 1)
      {
        v5 = pageAdamId.value._object - 1;
        if (pageAdamId.value._object != &dword_0 + 1)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_63;
          }

          v7 = (v2 + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              break;
            }

            v9 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              break;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_62;
      }

      __break(1u);
      goto LABEL_71;
    }

    if (pageAdamId.value._object)
    {
      v6 = 0;
      if (!v2)
      {
        goto LABEL_63;
      }

      while (1)
      {
        v20 = *v2 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v6;
        if ((v6 * 10) >> 64 != (10 * v6) >> 63)
        {
          break;
        }

        v6 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v2;
        if (!--pageAdamId.value._object)
        {
          goto LABEL_54;
        }
      }
    }
  }

LABEL_62:
  v6 = 0;
  LOBYTE(v2) = 1;
LABEL_63:
  v31 = v2;
  if (v2)
  {
    goto LABEL_68;
  }

LABEL_64:
  if (v6 < 1 || !HighlightsProvider.isSharedContent(contentAdamId:)(v6))
  {
    goto LABEL_68;
  }

  LOBYTE(pageAdamId.value._countAndFlagsBits) = 1;
  return pageAdamId.value._countAndFlagsBits;
}

id sub_37A030()
{
  result = [objc_allocWithZone(AVTimeFormatter) init];
  qword_503BE0 = result;
  return result;
}

void *sub_37A144(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F30, &qword_41D890);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_37A1B8(uint64_t a1, double a2)
{
  v3 = v2;
  v37 = sub_3E7DA4();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA198, &qword_3F66E8);
  result = sub_3EE374();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v2;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v35 = v4 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v4 + 72) * (v17 | (v9 << 6));
      v21 = *(v4 + 32);
      v33 = *(v4 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_37D720(&unk_503E40, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
      result = sub_3ED114();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v3 = v31;
    *(v6 + 16) = 0;
  }

  *v3 = v8;
  return result;
}

uint64_t sub_37A514(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA138, &qword_41D8D0);
  result = sub_3EE374();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_3EE954();
      sub_3ED394();
      result = sub_3EE9A4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
  return result;
}

uint64_t sub_37A788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA140, &qword_3F66B0);
  result = sub_3EE374();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_3EE954();
      sub_3EE994(v17);
      result = sub_3EE9A4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_37A9EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_3EE374();
  v7 = result;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_3EDEB4(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_37AC0C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_3EC9F4();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A60, &qword_405A50);
  result = sub_3EE374();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_37D720(&unk_4F8A50, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      result = sub_3ED114();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_37AF68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503E10, &unk_3F66C0);
  result = sub_3EE374();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_3EE944();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_37B18C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503D30, &qword_3F6698);
  result = sub_3EE374();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_3EE954();
      v18 = [*(v17 + 32) identifier];
      sub_3ED244();

      sub_3ED394();

      result = sub_3EE9A4();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_37B420(uint64_t a1, void *a2)
{
  sub_3EDEB4(a2[5]);
  result = sub_3EE274();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_37B4A4(uint64_t a1, uint64_t a2)
{
  sub_3EE954();
  v4 = [*(a1 + 32) identifier];
  sub_3ED244();

  sub_3ED394();

  sub_3EE9A4();
  result = sub_3EE274();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_37B588(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA140, &qword_3F66B0);
  result = sub_3EE394();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_3EE954();
    sub_3EE994(v16);
    result = sub_3EE9A4();
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
    *(*(v9 + 6) + 8 * v20) = v16;
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

uint64_t sub_37B790(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA138, &qword_41D8D0);
  result = sub_3EE394();
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
    sub_3EE954();

    sub_3ED394();
    result = sub_3EE9A4();
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

uint64_t sub_37B9B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503D30, &qword_3F6698);
  result = sub_3EE394();
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
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_3EE954();
    v17 = *(v16 + 32);

    v18 = [v17 identifier];
    sub_3ED244();

    sub_3ED394();

    result = sub_3EE9A4();
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
    *(*(v9 + 6) + 8 * v22) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v29;
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
      v29 = (v15 - 1) & v15;
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

unint64_t *sub_37BC10(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_37C8F8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_37BCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_3ED484();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_37C238(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_3EE484();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
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

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}