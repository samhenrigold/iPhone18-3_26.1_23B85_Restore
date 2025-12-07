void *sub_24EDB137C(uint64_t a1, __n128 a2)
{
  v6 = v2;
  v8 = *v2;
  v9 = sub_24F927E38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v12 = sub_24F92BEF8();
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v13 = sub_24F927E68();
  v15 = *(v10 + 8);
  v14 = v10 + 8;
  v15(v12, v9);
  if (v13)
  {
    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();

    if (!a1)
    {
      v25 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier);
      *v25 = 0;
      v25[1] = 0;

      v26 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
      *v26 = 0;
      v26[1] = 0;

      v27 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
      swift_beginAccess();
      *v27 = 0;
      v27[1] = 0;

      v28 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
      swift_beginAccess();
      *v28 = 0;
      v28[1] = 0;

      v29 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
      swift_beginAccess();
      *(v6 + v29) = 0;
      *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) = 0;
      [objc_opt_self() timeIntervalSinceReferenceDate];
      *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp) = 0;
      *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) = 0x3FF0000000000000;
      v30 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
      swift_beginAccess();
      v31 = *(v6 + v30);
      *(v6 + v30) = 0;

      v32 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
      result = swift_beginAccess();
      *(v6 + v32) = 0;
      return result;
    }

    swift_unknownObjectRetain();
    result = MRContentItemGetIdentifier();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    v8 = sub_24F92B0D8();
    v3 = v18;

    v19 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier);
    *v19 = v8;
    v19[1] = v3;

    ArtworkIdentifier = MRContentItemGetArtworkIdentifier();
    if (ArtworkIdentifier)
    {
      v21 = ArtworkIdentifier;
      v22 = sub_24F92B0D8();
      v14 = v23;

      v4 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
      v24 = *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8);
      v77 = v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8;
      if (v24)
      {
        if (v14)
        {
          if (*v4 == v22 && v24 == v14)
          {
            v79 = 1;
          }

          else
          {
            v79 = sub_24F92CE08();
          }
        }

        else
        {
          v79 = 0;
        }

LABEL_17:
        v76 = v22;
        v12 = *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
        v5 = *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id + 8);
        if (qword_27F2113D8 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0;
      v4 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier);
      v33 = *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8);
      v77 = v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artworkIdentifier + 8;
      if (v33)
      {
        v79 = 0;
        v22 = 0;
        goto LABEL_17;
      }

      v22 = 0;
    }

    v79 = v14 == 0;
    goto LABEL_17;
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_18:
  v34 = sub_24F9220D8();
  __swift_project_value_buffer(v34, qword_27F39E7D8);

  v35 = sub_24F9220B8();
  v36 = sub_24F92BD98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v75 = v4;
    v74 = v14;
    v38 = v37;
    v39 = v8;
    v40 = swift_slowAlloc();
    v80[0] = v40;
    *v38 = 136446467;
    v41 = sub_24E7620D4(v12, v5, v80);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2081;
    v42 = sub_24E7620D4(v39, v3, v80);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_24E5DD000, v35, v36, "%{public}s: %{private}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v40, -1, -1);
    v43 = v38;
    v14 = v74;
    v4 = v75;
    MEMORY[0x2530542D0](v43, -1, -1);
  }

  else
  {
  }

  v44 = sub_24EDB1B88(a1);
  v46 = v45;
  v47 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_subtitle);
  swift_beginAccess();
  *v47 = v44;
  v47[1] = v46;

  Title = MRContentItemGetTitle();
  if (Title)
  {
    v49 = Title;
    v50 = sub_24F92B0D8();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  v53 = (v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_title);
  swift_beginAccess();
  *v53 = v50;
  v53[1] = v52;

  MRContentItemGetDuration();
  v55 = v54;
  v56 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_duration;
  swift_beginAccess();
  *(v6 + v56) = v55;
  MediaType = MRContentItemGetMediaType();
  v58 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_mediaType;
  swift_beginAccess();
  *(v6 + v58) = MediaType;
  MRContentItemGetElapsedTime();
  *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTime) = v59;
  v60 = objc_opt_self();
  [v60 timeIntervalSinceReferenceDate];
  v61 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__elapsedTimeTimestamp) = v62;
  MRContentItemGetElapsedTimeTimestamp();
  if (v63 <= 0.0)
  {
    [v60 timeIntervalSinceReferenceDate];
  }

  *(v6 + v61) = v63;
  MRContentItemGetPlaybackRate();
  v65 = v64;
  v66 = v64 <= 0.0;
  v67 = 1.0;
  if (!v66)
  {
    v67 = v65;
  }

  *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) = v67;
  v68 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
  swift_beginAccess();
  v69 = *(v6 + v68);
  if (v69)
  {
    if ((v79 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    swift_unknownObjectRelease();
  }

  HasArtworkData = MRContentItemGetHasArtworkData();
  if ((v79 & 1) != 0 && !HasArtworkData)
  {
    goto LABEL_33;
  }

  v69 = *(v6 + v68);
LABEL_35:
  *(v6 + v68) = 0;

  v71 = v77;
  *v4 = v76;
  *v71 = v14;

  v72 = *(v6 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath);
  if (v72)
  {
    v73 = sub_24F92BEF8();

    sub_24EDB1DFC(v73, sub_24EDB48C0, v6, v72);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24EDB1B88(uint64_t a1)
{
  AlbumName = MRContentItemGetAlbumName();
  if (AlbumName)
  {
    v2 = AlbumName;
    v3 = sub_24F92B0D8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  TrackArtistName = MRContentItemGetTrackArtistName();
  if (TrackArtistName)
  {
    v7 = TrackArtistName;
    v8 = sub_24F92B0D8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    AlbumArtistName = MRContentItemGetAlbumArtistName();
    if (AlbumArtistName)
    {
      v13 = AlbumArtistName;
      v8 = sub_24F92B0D8();
      v10 = v14;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }
  }

  v15 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v10) & 0xF;
    }

    if (v16)
    {
      MEMORY[0x253050C20](0x209380E220, 0xA500000000000000);
      MEMORY[0x253050C20](v3, v5);

      return v8;
    }

    else
    {
    }
  }

  else
  {

    return v8;
  }

  return v3;
}

double sub_24EDB1D08(void *a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_artwork;
    swift_beginAccess();
    v5 = *(a2 + v4);
    *(a2 + v4) = a1;
    v6 = a1;

    sub_24EDB4838(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);
    sub_24F922FA8();
    sub_24F923008();
  }

  return result;
}

void sub_24EDB1DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v8 = sub_24F9220D8();
  __swift_project_value_buffer(v8, qword_27F39E7D8);
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDA8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24E5DD000, v9, v10, "requesting artwork", v11, 2u);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  v12 = MRPlaybackQueueRequestCreate();
  if (v12)
  {
    v13 = v12;
    MRPlaybackQueueRequestSetIncludeArtwork();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_24EDB48C8;
    *(v15 + 24) = v14;
    v17[4] = sub_24EDB4C70;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24EDB3A64;
    v17[3] = &block_descriptor_67_1;
    v16 = _Block_copy(v17);

    MEMORY[0x253053110](v13, a4, a1, v16);
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MediaPlayer.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_appURL, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackAssertion, &qword_27F2129B0, &unk_24F945320);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t MediaPlayer.__deallocating_deinit()
{
  MediaPlayer.deinit();

  return swift_deallocClassInstance();
}

double sub_24EDB21B4@<D0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t sub_24EDB21D0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1852793705;
  if (v1 != 6)
  {
    v3 = 0x6B63616279616C70;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 4)
  {
    v4 = 0x64657370616C65;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6B726F77747261;
  if (v1 != 2)
  {
    v5 = 0x73646E616D6D6F63;
  }

  if (*v0)
  {
    v2 = 0x657669746361;
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

uint64_t sub_24EDB22BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EDB45AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EDB22E4(uint64_t a1)
{
  v2 = sub_24EDB3E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDB2320(uint64_t a1)
{
  v2 = sub_24EDB3E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaPlayer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F820, &qword_24F99D538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDB3E68();
  sub_24F92D128();
  v16 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v16 = 1;
    sub_24F92CD18();
    swift_beginAccess();
    v15 = 2;
    sub_24F92CD18();
    v9 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_commands;
    swift_beginAccess();
    v14 = *(v3 + v9);
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F830, &qword_24F99D540);
    sub_24EDB3EBC();
    sub_24F92CD48();
    swift_beginAccess();
    v13 = 4;
    sub_24F92CD28();
    sub_24EDAD4B4();
    v13 = 5;
    sub_24F92CD28();
    swift_beginAccess();
    v12 = 6;
    sub_24F92CD18();
    if (*(v3 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer__playbackRate) != 1.0)
    {
      v12 = 7;
      sub_24F92CD28();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EDB26C8()
{
  type metadata accessor for MediaRemotePlaybackTimer(0);
  swift_allocObject();
  result = sub_24EDB2788(0.1);
  qword_27F39C848 = result;
  return result;
}

double sub_24EDB2710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return result;
}

uint64_t sub_24EDB2788(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F8F0, &qword_24F99DAF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__now;
  sub_24F91F548();
  (*(v8 + 16))(v10, v13, v7);
  sub_24F923058();
  (*(v8 + 8))(v13, v7);
  (*(v4 + 32))(v1 + v14, v6, v3);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_enableCount) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer) = 0;
  v15 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer___lock;
  type metadata accessor for UnfairControlsLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v1 + v15) = v16;
  v18 = (v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__enablementAssertions);
  *v18 = v16;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__playbackAssertions);
  *v19 = v16;
  v19[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_interval) = a1;
  swift_retain_n();
  return v1;
}

void sub_24EDB29EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F8F8, &qword_24F99DB00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E7D8);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v6, v7, "start playback timer", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  sub_24E69A5C4(0, &qword_27F22F900, 0x277CBEBB8);
  v9 = [objc_opt_self() mainRunLoop];
  v10 = sub_24F92C468();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_24F92C368();

  sub_24E601704(v4, &qword_27F22F8F8, &qword_24F99DB00);
  v15 = v11;
  sub_24F92C358();
  sub_24EDB4838(&qword_27F22F908, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v12 = sub_24F922FF8();

  v15 = v12;
  swift_getKeyPath();
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F910, &qword_24F99DB30);
  sub_24E602068(&qword_27F22F918, &qword_27F22F910, &qword_24F99DB30, MEMORY[0x277CBCB30]);
  v13 = sub_24F923158();

  *(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer) = v13;
}

double sub_24EDB2D00()
{
  v1 = v0;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7D8);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "stop playback timer", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer_timer))
  {

    sub_24F922F78();
  }

  *(v1 + v6) = 0;

  return result;
}

void sub_24EDB2E20()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__playbackAssertions);
  swift_beginAccess();
  v2 = *v1;
  os_unfair_lock_lock(*(*v1 + 16));
  v3 = v1[1];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1[1] = v5;
  if (v5 != 1)
  {
    if (v5 > 1)
    {
      os_unfair_lock_unlock(*(v2 + 16));
      swift_endAccess();
      return;
    }

LABEL_9:
    sub_24F92CA88();
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(*(v2 + 16));
  swift_endAccess();
  v6 = (v0 + OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__enablementAssertions);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = *(*v6 + 16);

  os_unfair_lock_lock(v9);
  os_unfair_lock_unlock(*(v7 + 16));

  if (v8)
  {
    sub_24EDB29EC();
  }
}

void sub_24EDB2F58(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  os_unfair_lock_lock(*(*v2 + 16));
  v4 = v2[1];
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_8:
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v2[1] = v6;
  if (v6)
  {
    if (v6 > 0)
    {
      os_unfair_lock_unlock(*(v3 + 16));
      swift_endAccess();
      return;
    }

    goto LABEL_8;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  swift_endAccess();
  sub_24EDB2D00();
}

double sub_24EDB3040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return result;
}

uint64_t sub_24EDB30BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_24F9230A8();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_24EDB322C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24MediaRemotePlaybackTimer__now;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F8F0, &qword_24F99DAF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EDB3314()
{
  result = *MEMORY[0x277D27D50];
  if (*MEMORY[0x277D27D50])
  {
    result = sub_24F92B0D8();
    qword_27F39C850 = result;
    *algn_27F39C858 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDB33D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (*a2)
  {
    sub_24F92B0D8();
    v5 = sub_24F92B098();

    *a3 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_24EDB3428(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_24EDB347C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = qword_27F2113D8;
    v5 = a2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    v7 = __swift_project_value_buffer(v6, qword_27F39E7D8);
    MEMORY[0x28223BE20](v7);
    sub_24EDACD00(sub_24EDB3608, 0, sub_24EDB4C98);
    a3(MEMORY[0x277D84F90]);
  }

  else
  {
    if (a1)
    {
      sub_24E69A5C4(0, &qword_27F22F928, 0x277D27960);
      sub_24F92B598();
    }

    a3(MEMORY[0x277D84F90]);
  }
}

void sub_24EDB3624(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    if (*(sub_24EDB1240() + 16))
    {
      swift_unknownObjectRetain();

      ArtworkData = MRContentItemGetArtworkData();
      if (ArtworkData)
      {
        v5 = ArtworkData;
        v6 = sub_24F91F4E8();
        v8 = v7;

        v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v10 = sub_24F91F4C8();
        v11 = [v9 initWithData_];

        sub_24E627880(v6, v8);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v11 = 0;
LABEL_8:
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9220D8();
  __swift_project_value_buffer(v12, qword_27F39E7D8);
  v24 = v11;
  v13 = sub_24F9220B8();
  v14 = sub_24F92BDA8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    if (v11)
    {
      [v24 size];
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = NSStringFromSize(*&v17);
    v20 = sub_24F92B0D8();
    v22 = v21;

    v23 = sub_24E7620D4(v20, v22, &v25);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_24E5DD000, v13, v14, "artwork: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2530542D0](v16, -1, -1);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  a3(v11);
}

double sub_24EDB38A8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  swift_unknownObjectRetain();
  return result;
}

void *sub_24EDB38B4()
{
  result = MRNowPlayingPlayerPathCopyStringRepresentation();
  if (result)
  {
    v1 = result;
    v2 = sub_24F92B0D8();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDB3924(uint64_t a1, void *a2, void (*a3)(__n128))
{
  if (a2)
  {
    v5 = qword_27F2113D8;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_24F9220D8();
    v8 = __swift_project_value_buffer(v7, qword_27F39E7D8);
    MEMORY[0x28223BE20](v8);
    sub_24EDACD00(sub_24EDB3A48, 0, sub_24EDB4C98);
  }

  if (!a1)
  {
    return (a3)(0);
  }

  v9 = swift_unknownObjectRetain();
  (a3)(v9);
  return swift_unknownObjectRelease();
}

void sub_24EDB3A64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

const void *sub_24EDB3ADC(CFArrayRef theArray, void *a2, void (*a3)(id))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v5 = qword_27F2113D8;
  v6 = a2;
  if (v5 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v7 = sub_24F9220D8();
    v8 = __swift_project_value_buffer(v7, qword_27F39E7D8);
    MEMORY[0x28223BE20](v8);
    sub_24EDACD00(sub_24EDB3CA8, 0, sub_24EDB4C98);

LABEL_4:
    v6 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    if (!theArray)
    {
      goto LABEL_14;
    }

    Count = CFArrayGetCount(theArray);
    if ((Count & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v10 = Count;
  if (!Count)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_14:
    a3(v6);
  }

  v11 = 0;
  while (1)
  {
    result = CFArrayGetValueAtIndex(theArray, v11);
    if (!result)
    {
      break;
    }

    v13 = swift_unknownObjectRetain_n();
    MEMORY[0x253050F00](v13);
    if (v14[2] >= v14[3] >> 1)
    {
      sub_24F92B5E8();
    }

    ++v11;
    sub_24F92B638();
    swift_unknownObjectRelease();
    if (v10 == v11)
    {
      v6 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_24EDB3CC4(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  if (a2)
  {
    v6 = a2;
  }

  if (a1)
  {
    swift_unknownObjectRetain();
  }

  v7 = a2;
  a3(a1, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_24EDB3D68(void *a1)
{
  if (qword_27F2106F8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  sub_24EDB2F58(a1);

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EDB3E18()
{

  return swift_deallocObject();
}

unint64_t sub_24EDB3E68()
{
  result = qword_27F22F828;
  if (!qword_27F22F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F828);
  }

  return result;
}

unint64_t sub_24EDB3EBC()
{
  result = qword_27F22F838;
  if (!qword_27F22F838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F830, &qword_24F99D540);
    sub_24EDB3F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F838);
  }

  return result;
}

unint64_t sub_24EDB3F40()
{
  result = qword_27F22F840;
  if (!qword_27F22F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F840);
  }

  return result;
}

unint64_t sub_24EDB3FDC()
{
  result = qword_27F22F860;
  if (!qword_27F22F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F860);
  }

  return result;
}

uint64_t sub_24EDB4030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_isPlaying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EDB40B0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24E972460;
  a2[1] = v5;
}

void sub_24EDB4148(uint64_t a1)
{
  sub_24EDB43D8(319, &qword_27F218378, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EDB42E4(uint64_t a1)
{
  sub_24EDB43D8(319, &qword_27F22F8D0, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EDB43D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24EDB44A8()
{
  result = qword_27F22F8D8;
  if (!qword_27F22F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F8D8);
  }

  return result;
}

unint64_t sub_24EDB4500()
{
  result = qword_27F22F8E0;
  if (!qword_27F22F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F8E0);
  }

  return result;
}

unint64_t sub_24EDB4558()
{
  result = qword_27F22F8E8;
  if (!qword_27F22F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F8E8);
  }

  return result;
}

uint64_t sub_24EDB45AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64657370616C65 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000065746152)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24EDB4838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24EDB4894()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_24EDB48D0()
{

  return swift_deallocObject();
}

double sub_24EDB4910()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 24);
  return sub_24EDAD590(&v3, v1);
}

unint64_t sub_24EDB4950()
{
  result = qword_27F22F940;
  if (!qword_27F22F940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F938, &qword_24F99DB68);
    sub_24EDB4838(&qword_27F212508, type metadata accessor for CFString, &unk_24F938A7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F940);
  }

  return result;
}

uint64_t sub_24EDB4A04()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);

  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24EDB4B34()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_24EDAF598(v2, v3, v4, v5, v6);
}

uint64_t sub_24EDB4BA8()
{

  return swift_deallocObject();
}

unint64_t sub_24EDB4C00()
{
  result = qword_27F22F958;
  if (!qword_27F22F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F958);
  }

  return result;
}

uint64_t static UICollectionReusableView.defaultReuseIdentifier.getter()
{
  v1 = v0;
  if (qword_27F211078 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F39E178;
  if (*(qword_27F39E178 + 16) && (v3 = sub_24E76D97C(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    v5 = sub_24F92B0D8();
    v9 = v8;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = qword_27F39E178;
    qword_27F39E178 = 0x8000000000000000;
    sub_24E81E5A4(v5, v9, v1, isUniquelyReferenced_nonNull_native);
    qword_27F39E178 = v12;
    swift_endAccess();
  }

  return v5;
}

uint64_t static UICollectionReusableView.elementKind.getter()
{
  v1 = v0;
  if (qword_27F211080 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F39E180;
  if (*(qword_27F39E180 + 16) && (v3 = sub_24E76D97C(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v11 = v6;
    MEMORY[0x253050C20](0x746E656D656C652ELL, 0xEC000000646E694BLL);
    v5 = v10;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = qword_27F39E180;
    qword_27F39E180 = 0x8000000000000000;
    sub_24E81E5A4(v10, v11, v1, isUniquelyReferenced_nonNull_native);
    qword_27F39E180 = v9;
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_24EDB4F5C()
{
  v1 = v0;
  if (qword_27F211088 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F39E188;
  if (*(qword_27F39E188 + 16) && (v3 = sub_24E76D97C(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_24F92C888();
    v6 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v8 = v7;

    MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA5D7A0);
    v5 = v6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = qword_27F39E188;
    qword_27F39E188 = 0x8000000000000000;
    sub_24E81E5A4(v6, v8, v1, isUniquelyReferenced_nonNull_native);
    qword_27F39E188 = v11;
    swift_endAccess();
  }

  return v5;
}

uint64_t static UICollectionReusableView.makeUniqueElementKind()()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = static UICollectionReusableView.elementKind.getter();
  v9[1] = v4;
  MEMORY[0x253050C20](95, 0xE100000000000000);
  sub_24F91F6A8();
  v5 = sub_24F91F668();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x253050C20](v5, v7);

  return v9[0];
}

uint64_t static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)(uint64_t a1, char a2)
{
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  v7 = sub_24EDB4F5C();
  MEMORY[0x253050C20](v7);
  if (a2)
  {

    MEMORY[0x253050C20](95, 0xE100000000000000);
    sub_24F91F6A8();
    v8 = sub_24F91F668();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
    MEMORY[0x253050C20](v8, v10);
  }

  sub_24F92AF28();
  type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A48();

  v11 = sub_24F92C7A8();
  MEMORY[0x253050C20](v11);

  sub_24E6585F8(v14);
  return v15;
}

uint64_t sub_24EDB5400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_24E600AEC();
  v3 = sub_24F92C5F8();

  return v3 & 1;
}

double String.extractElementKindContentIdentifier()@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = 47;
  v19[1] = 0xE100000000000000;
  v18[2] = v19;

  v7 = sub_24EDB5584(0x7FFFFFFFFFFFFFFFLL, 1, sub_24E61B674, v18, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32 * v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];

    v14 = MEMORY[0x253050B50](v10, v11, v12, v13);
    v16 = v15;

    v18[4] = v14;
    v18[5] = v16;
    sub_24F92C7F8();
    DiffablePageContentIdentifier.init(_:)(v19, a3);
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

unint64_t sub_24EDB5584@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24F92B3D8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24E619400(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24E619400((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24F92B3A8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24F92B238();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24F92B238();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24F92B3D8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24E619400(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24F92B3D8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24E619400(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24E619400((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24F92B238();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t PurchaseHistory.init(isAppleSiliconSupportEnabled:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v12 = a2;
  v11 = sub_24F92BEE8();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92BE88();
  MEMORY[0x28223BE20](v6);
  v10[1] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v14 = v7;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v11);
  result = sub_24F92BF38();
  v9 = v12;
  *(v12 + 8) = result;
  *v9 = v13;
  return result;
}

uint64_t sub_24EDB5C48()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C8E0);
  __swift_project_value_buffer(v4, qword_27F39C8E0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id PurchaseHistory.defaultPurchaseQuery.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
  [v0 setAccountID_];
  [v0 setIsHidden_];
  [v0 setIsFirstParty_];
  [v0 setIsPreorder_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F941C80;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x277CEC420]) initWithName:*MEMORY[0x277CEC4E0] ascending:0];
  sub_24E69A5C4(0, &qword_27F22F960, 0x277CEC420);
  v2 = sub_24F92B588();

  [v0 setSortOptions_];

  return v0;
}

id PurchaseHistory.makeQuery(for:)(uint64_t a1)
{
  v2 = PurchaseHistory.defaultPurchaseQuery.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v4 = sub_24F92B588();

  [v2 setStoreIDs_];

  return v2;
}

void *PurchaseHistory.makeQuery(isVisible:excludePreorders:searchTerm:)(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v7 = PurchaseHistory.defaultPurchaseQuery.getter();
  v8 = v7;
  if (a1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setIsHidden_];
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [v8 setIsPreorder_];
  if (a4 && sub_24F92B228() >= 1)
  {
    v11 = sub_24E600AEC();
    v12 = MEMORY[0x277D837D0];
    sub_24F92C568();
    sub_24F92C568();

    v20 = v11;
    v21 = v11;
    v18 = v12;
    v19 = v11;
    v13 = sub_24F92C568();
    v15 = v14;

    MEMORY[0x253050C20](v13, v15);

    MEMORY[0x253050C20](37, 0xE100000000000000);
    v16 = sub_24F92B098();

    [v8 setSearchTerm_];
  }

  return v8;
}

void PurchaseHistory.execute(_:familyMemberIDs:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = *(v4 + 8);
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v13 = sub_24F92AB18();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_24E601704(v11, &qword_27F2330E0, &unk_24F9694C0);
LABEL_12:
    sub_24E60C238(MEMORY[0x277D84F90]);
    a3();

    return;
  }

  v15 = sub_24F92AB08();
  (*(v14 + 8))(v11, v13);
  v16 = [v15 ams_DSID];

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = [v16 longLongValue];

  if (![a1 accountID])
  {
    v18 = sub_24EDB6908(v17);
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_15:
    v43 = [objc_opt_self() sharedInstance];
    v44 = swift_allocObject();
    v44[2] = v12;
    v44[3] = a3;
    v44[4] = a4;
    v44[5] = v17;
    v57 = sub_24EDB8C98;
    v58 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_24EDB6F60;
    v56 = &block_descriptor_78;
    v45 = _Block_copy(&aBlock);

    v46 = v12;

    [v43 executeQuery:v18 withResultHandler:v45];
    _Block_release(v45);

    return;
  }

  v18 = a1;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_6:
  v50 = a4;
  v51 = a1;
  v48 = a3;
  v49 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F941C80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F968, &qword_24F99DC90);
  v20 = sub_24F92A9E8();
  v21 = objc_opt_self();
  v22 = a2;
  v23 = [v21 sharedInstance];
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v18;
  v57 = sub_24EDB8CC0;
  v58 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_24EDB6F60;
  v56 = &block_descriptor_6_4;
  v25 = _Block_copy(&aBlock);

  v26 = v18;

  v47 = v26;
  [v23 executeQuery:v26 withResultHandler:v25];
  _Block_release(v25);

  v27 = v22;
  *(v19 + 32) = v20;
  v52 = v19;
  v28 = *(v22 + 16);
  if (v28)
  {
    v29 = (v27 + 32);
    do
    {
      v30 = *v29++;
      v31 = sub_24EDB6908(v30);
      v32 = sub_24F92A9E8();
      v33 = [v21 sharedInstance];
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = v31;
      v57 = sub_24EDB90A8;
      v58 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_24EDB6F60;
      v56 = &block_descriptor_13_0;
      v35 = _Block_copy(&aBlock);

      v36 = v31;

      [v33 executeQuery:v36 withResultHandler:v35];
      _Block_release(v35);

      MEMORY[0x253050F00]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      --v28;
    }

    while (v28);
    v19 = v52;
  }

  aBlock = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F970, &qword_24F99DC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F978, &qword_24F99DCA0);
  sub_24E602068(&qword_27F22F980, &qword_27F22F970, &qword_24F99DC98, MEMORY[0x277D83970]);
  sub_24E602068(&qword_27F22F988, &qword_27F22F968, &qword_24F99DC90, MEMORY[0x277D224B8]);
  sub_24F92A4C8();

  v37 = swift_allocObject();
  v38 = v48;
  v39 = v50;
  *(v37 + 16) = v48;
  *(v37 + 24) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  v56 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v57 = MEMORY[0x277D225C0];
  v41 = v49;
  aBlock = v49;
  swift_retain_n();
  v42 = v41;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

id sub_24EDB6908(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
  [v3 setAccountID_];
  [v3 setIsFirstParty_];
  [v3 setIsHidden_];
  [v3 setIsPreorder_];
  v4 = [v1 searchTerm];
  [v3 setSearchTerm_];

  v5 = [v1 sortOptions];
  [v3 setSortOptions_];

  v6 = [v1 storeIDs];
  [v3 setStoreIDs_];

  v7 = [v1 bundleIDs];
  [v3 setBundleIDs_];

  [v3 setIsIOSBinaryMacOSCompatible_];
  [v3 setCurrentlyOptedInForMacOSEligibility_];
  [v3 setCurrentlyOptedInForXROSEligibility_];
  [v3 setOptedInForMacOSEligibility_];
  [v3 setOptedInForXROSEligibility_];
  [v3 setSupportsRealityDevice_];
  return v3;
}

double sub_24EDB6B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v10 = sub_24F927D88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F927DC8();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  aBlock[4] = sub_24EDB9058;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_101;
  v18 = _Block_copy(aBlock);

  sub_24F927DA8();
  v23 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);

  return result;
}

uint64_t sub_24EDB6E58(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F990, &qword_24F99DCF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = a4;
    v8 = inited + 32;
    *(inited + 40) = a1;
    v9 = sub_24E60C238(inited);
    swift_setDeallocating();

    sub_24E601704(v8, &qword_27F22F998, qword_24F99DD00);
    (a2)(v9);
  }

  else
  {
    sub_24E60C238(MEMORY[0x277D84F90]);
    a2();
  }
}

uint64_t sub_24EDB6F60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, &qword_27F225130, 0x277CEC410);
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

void PurchaseHistory.setHidden(_:forStoreItemID:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a3;
  v13[4] = a4;
  v15[4] = sub_24EDB8D88;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_25_1;
  v14 = _Block_copy(v15);

  [v12 setHidden:a1 & 1 forStoreItemID:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void PurchaseHistory.showAll(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_24EDB8DCC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E9FABA0;
  v11[3] = &block_descriptor_31;
  v10 = _Block_copy(v11);

  [v8 showAllWithCompletionHandler_];
  _Block_release(v10);
}

double sub_24EDB7264(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a2;
  v12 = sub_24F927D88();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F927DC8();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  v20 = a1;
  sub_24F927DA8();
  v25 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);

  return result;
}

void PurchaseHistory.update(for:in:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = sub_24EDB8E14;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_37_0;
  v14 = _Block_copy(v15);

  [v12 updateForAccountID:a1 withContext:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void PurchaseHistory.update(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_24EDB8E58;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E9FABA0;
  v13[3] = &block_descriptor_43;
  v12 = _Block_copy(v13);

  [v10 updateWithContext:a1 withCompletionHandler:v12];
  _Block_release(v12);
}

double sub_24EDB77A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v27 = a2;
  v12 = sub_24F927D88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F927DC8();
  v16 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_24F927DA8();
  v28 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v18, v15, v20);
  _Block_release(v20);
  (*(v13 + 8))(v15, v12);
  (*(v16 + 8))(v18, v26);

  return result;
}

uint64_t sub_24EDB7A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    if (qword_27F210740 != -1)
    {
      swift_once();
    }

    v6 = 0xD000000000000010;
    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39C8E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    if (a2 <= 1)
    {
      if (!a2)
      {
        v8 = a3;
        v9 = 0xE700000000000000;
        v6 = 0x746C7561666564;
        goto LABEL_16;
      }

      if (a2 == 1)
      {
        v8 = a3;
        v9 = 0xED00006567615073;
        v6 = 0x6573616863727570;
        goto LABEL_16;
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v8 = a3;
          v9 = 0x800000024FA5D810;
          goto LABEL_16;
        case 3:
          v8 = a3;
          v9 = 0xEE006465676E6168;
          v6 = 0x43746E756F636361;
          goto LABEL_16;
        case 2:
          v8 = a3;
          v9 = 0xE800000000000000;
          v6 = 0x776F685365646968;
LABEL_16:
          v10 = MEMORY[0x277D837D0];
          v16 = MEMORY[0x277D837D0];
          v14 = v6;
          v15 = v9;
          sub_24F928438();
          sub_24E601704(&v14, &qword_27F2129B0, &unk_24F945320);
          sub_24F9283A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670, &qword_24F989C80);
          v11 = sub_24F92C498();
          v16 = v10;
          v14 = v11;
          v15 = v12;
          sub_24F928438();
          sub_24E601704(&v14, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A588();

          a3 = v8;
          return (a3)(a1 == 0, a2);
      }
    }

    v8 = a3;
    v9 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

  return (a3)(a1 == 0, a2);
}

void sub_24EDB7DA0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24E60C238(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v4;
      sub_24EDB887C(v7, sub_24EDB8C84, 0, isUniquelyReferenced_nonNull_native, &v9);
      v4 = v9;
      --v5;
    }

    while (v5);
  }

  *a2 = v4;
}

uint64_t sub_24EDB7E58@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v33)
  {
    v38 = v4;
    v7 = MEMORY[0x277D84F90];
    if (i)
    {
      v39 = MEMORY[0x277D84F90];
      result = sub_24F458A10(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v3;
      v10 = 0;
      v11 = v39;
      v12 = v5;
      v13 = v5 & 0xC000000000000001;
      do
      {
        if (v13)
        {
          v14 = MEMORY[0x253052270](v10, v12);
        }

        else
        {
          v14 = *(v12 + 8 * v10 + 32);
        }

        v15 = v14;
        v16 = [v14 storeItemID];

        v18 = *(v39 + 16);
        v17 = *(v39 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_24F458A10((v17 > 1), v18 + 1, 1);
        }

        ++v10;
        *(v39 + 16) = v18 + 1;
        *(v39 + 8 * v18 + 32) = v16;
        v12 = v38;
      }

      while (i != v10);
      v3 = v9;
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v19 = sub_24F45DE3C(v11);

    v40 = v7;
    if (v3 >> 62)
    {
      break;
    }

    v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_36;
    }

LABEL_16:
    v35 = v3;
    v21 = 0;
    v37 = v3 & 0xC000000000000001;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    v3 += 32;
    v22 = v19 + 56;
    while (1)
    {
      if (v37)
      {
        v23 = MEMORY[0x253052270](v21, v35);
      }

      else
      {
        if (v21 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v23 = *(v3 + 8 * v21);
      }

      v24 = v23;
      if (__OFADD__(v21++, 1))
      {
        break;
      }

      v26 = [v23 storeItemID];
      if (*(v19 + 16) && (v27 = v26, v28 = sub_24F92D058(), v29 = -1 << *(v19 + 32), v30 = v28 & ~v29, ((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (*(*(v19 + 48) + 8 * v30) != v27)
        {
          v30 = (v30 + 1) & v31;
          if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      if (v21 == v20)
      {
        v32 = v40;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v33 = sub_24F92C738();
    v4 = v5;
  }

  v20 = sub_24F92C738();
  if (v20)
  {
    goto LABEL_16;
  }

LABEL_36:
  v32 = MEMORY[0x277D84F90];
LABEL_37:

  result = sub_24EA0B834(v34);
  *a3 = v32;
  return result;
}

void sub_24EDB8170(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F990, &qword_24F99DCF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;

    *(inited + 32) = [a4 accountID];
    *(inited + 40) = a1;
    sub_24E60C238(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F22F998, qword_24F99DD00);
LABEL_3:
    sub_24F92A9C8();

    return;
  }

  if (!a2)
  {
    sub_24E60C238(MEMORY[0x277D84F90]);
    goto LABEL_3;
  }

  v8 = a2;
  sub_24F92A9A8();
}

id sub_24EDB82AC(uint64_t a1)
{
  v2 = PurchaseHistory.defaultPurchaseQuery.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v4 = sub_24F92B588();

  [v2 setStoreIDs_];

  return v2;
}

void sub_24EDB8394(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a3;
  v13[4] = a4;
  v15[4] = sub_24EDB90D8;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_71_0;
  v14 = _Block_copy(v15);

  [v12 setHidden:a1 & 1 forStoreItemID:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void sub_24EDB84D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_24EDB90D4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24E9FABA0;
  v11[3] = &block_descriptor_64;
  v10 = _Block_copy(v11);

  [v8 showAllWithCompletionHandler_];
  _Block_release(v10);
}

void sub_24EDB85F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = sub_24EDB90A4;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E9FABA0;
  v15[3] = &block_descriptor_57_0;
  v14 = _Block_copy(v15);

  [v12 updateForAccountID:a1 withContext:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void sub_24EDB8734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_24EDB90A0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24E9FABA0;
  v13[3] = &block_descriptor_50_0;
  v12 = _Block_copy(v13);

  [v10 updateWithContext:a1 withCompletionHandler:v12];
  _Block_release(v12);
}

void sub_24EDB887C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v17)
  {
    if (!v9)
    {
      v18 = i;
      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v17 >= v10)
        {
          sub_24E6586B4(a1);

          return;
        }

        v16 = *(v6 + 8 * v17);
        ++v18;
        if (v16)
        {
          v37 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_24F92CF88();
      __break(1u);
      goto LABEL_34;
    }

    v37 = a4;
    v16 = v9;
    v17 = i;
LABEL_15:
    v19 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v20 = *(*(a1 + 56) + v19);
    v42 = *(*(a1 + 48) + v19);
    v43 = v20;

    a2(&v40, &v42);

    v22 = v40;
    v21 = v41;
    v44 = v41;
    v23 = *a5;
    v25 = sub_24E7728CC(v40);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_31;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (v37)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_24E8B3EDC();
      if (v29)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *a5;
    *(*a5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    *(v12[6] + 8 * v25) = v22;
    *(v12[7] + 8 * v25) = v21;
    v13 = v12[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_32;
    }

    v12[2] = v15;
LABEL_7:
    v9 = (v16 - 1) & v16;
    a4 = 1;
  }

  sub_24E8A43A4(v28, v37 & 1);
  v30 = sub_24E7728CC(v22);
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_33;
  }

  v25 = v30;
  if ((v29 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v32 = *a5;
  v39 = *(*(*a5 + 56) + 8 * v25);

  sub_24EDB7E58(&v39, &v44, &v42);
  if (!v35)
  {

    *(v32[7] + 8 * v25) = v42;

    goto LABEL_7;
  }

  v39 = v35;
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_24E6586B4(a1);

    return;
  }

LABEL_34:
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
  sub_24F92CA38();
  MEMORY[0x253050C20](39, 0xE100000000000000);
  sub_24F92CA88();
  __break(1u);
}

double sub_24EDB8C84@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EDB8CC8()
{

  return swift_deallocObject();
}

uint64_t sub_24EDB8D2C()
{
  v1 = *(v0 + 16);
  sub_24E60C238(MEMORY[0x277D84F90]);
  v1();
}

uint64_t objectdestroy_33Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroy_73Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_85Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_24EDB9018()
{

  return swift_deallocObject();
}

double sub_24EDB9120()
{

  return result;
}

uint64_t sub_24EDB9150()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeFooterViewModel(uint64_t a1)
{
  result = qword_27F22F9A0;
  if (!qword_27F22F9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EDB924C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9C0, &qword_24F99DE68);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9C8, &qword_24F99DE70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  if (a2)
  {
    sub_24F927558();
    v30 = a3;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0, &qword_24F99DE78);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D8, &qword_24F99DE80);
    v29 = v6;
    v15 = v14;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9E0, &qword_24F99DE88);
    v28 = v9;
    v16 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    v17 = sub_24EDBB038();
    v26 = sub_24EDBB238();
    sub_24F926AF8();
    v18 = v28;
    (*(v10 + 16))(v8, v12, v28);
    swift_storeEnumTagMultiPayload();
    v31 = v13;
    v32 = MEMORY[0x277CE1350];
    v33 = v15;
    v34 = v27;
    v35 = v16;
    v36 = MEMORY[0x277CE1340];
    v37 = v17;
    v38 = v26;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v10 + 8))(v12, v18);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0, &qword_24F99DE78);
    (*(*(v20 - 8) + 16))(v8, a1, v20);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D8, &qword_24F99DE80);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9E0, &qword_24F99DE88);
    v23 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    v24 = sub_24EDBB038();
    v25 = sub_24EDBB238();
    v31 = v20;
    v32 = MEMORY[0x277CE1350];
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = MEMORY[0x277CE1340];
    v37 = v24;
    v38 = v25;
    swift_getOpaqueTypeConformance2();
    return sub_24F924E28();
  }
}

uint64_t sub_24EDB9658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v57 = a2;
  v62 = sub_24F924258();
  MEMORY[0x28223BE20](v62);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F927538();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24F927148();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA40, &qword_24F99DEC8);
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA48, &qword_24F99DED0);
  MEMORY[0x28223BE20](v58);
  v59 = &v52 - v11;
  v12 = sub_24F927418();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA00, &qword_24F99DE90);
  MEMORY[0x28223BE20](v63);
  v17 = &v52 - v16;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v56 = sub_24F926C98();
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];

    v20 = [v18 mainScreen];
    [v20 bounds];

    sub_24F927618();
    sub_24F9238C8();
    v55 = v68;
    v21 = v69;
    v22 = v70;
    v23 = v71;
    v24 = v72;
    v54 = v73;
    sub_24F9273F8();
    v25 = &v17[*(v63 + 36)];
    v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA50, &qword_24F99DED8) + 36)];
    sub_24F927448();
    (*(v13 + 8))(v15, v12);
    v27 = sub_24F925808();
    v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v27;
    v28 = v55;
    *v25 = v56;
    *(v25 + 1) = v28;
    v25[16] = v21;
    *(v25 + 3) = v22;
    v25[32] = v23;
    v29 = v54;
    *(v25 + 5) = v24;
    *(v25 + 6) = v29;
    v30 = sub_24F927618();
    v32 = v31;
    v33 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA10, &qword_24F99DE98) + 36)];
    *v33 = v30;
    v33[1] = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0, &qword_24F99DE78);
    (*(*(v34 - 8) + 16))(v17, v60, v34);
    sub_24E60169C(v17, v59, &qword_27F22FA00, &qword_24F99DE90);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB154();
    v35 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    v36 = sub_24EB67ED0();
    v64 = v34;
    v65 = v62;
    v66 = v35;
    v67 = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return sub_24E601704(v17, &qword_27F22FA00, &qword_24F99DE90);
  }

  else
  {
    sub_24F9273F8();
    sub_24F927448();
    (*(v13 + 8))(v15, v12);
    sub_24F927138();
    (*(v4 + 8))(v6, v53);
    v38 = v62;
    v39 = *(v62 + 20);
    v40 = *MEMORY[0x277CE0118];
    v41 = sub_24F924B38();
    (*(*(v41 - 8) + 104))(&v3[v39], v40, v41);
    __asm { FMOV            V0.2D, #30.0 }

    *v3 = _Q0;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0, &qword_24F99DE78);
    v48 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    v49 = sub_24EB67ED0();
    sub_24F926248();
    sub_24E6EB974(v3);
    (*(v54 + 8))(v8, v55);
    v50 = v56;
    v51 = v61;
    (*(v56 + 16))(v59, v10, v61);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB154();
    v68 = v47;
    v69 = v38;
    v70 = v48;
    v71 = v49;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v50 + 8))(v10, v51);
  }
}

uint64_t sub_24EDB9EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F926C08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F926C98();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  v9 = sub_24F926D48();
  LOBYTE(v7) = sub_24F925808();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9E0, &qword_24F99DE88) + 36);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA30, &unk_24F99DEA8) + 36);
  sub_24F927438();
  v12 = sub_24F925808();
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)) = v12;
  *v10 = v8;
  *(v10 + 8) = v9;
  *(v10 + 16) = v7;
  v13 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA38, &unk_24F99DEB8) + 36));
  v14 = *(sub_24F924258() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #30.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  v22 = sub_24F927618();
  v24 = v23;
  v25 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA28, &qword_24F99DEA0) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0, &qword_24F99DE78);
  return (*(*(v26 - 8) + 16))(a2, a1, v26);
}

uint64_t sub_24EDBA148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v66 = a3;
  v65 = a2;
  v70 = a1;
  v71 = a4;
  v63 = sub_24F924258();
  MEMORY[0x28223BE20](v63);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24F927538();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F927148();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAA8, &qword_24F99DF08);
  MEMORY[0x28223BE20](v69);
  v14 = &v59 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAE0, &qword_24F99DF30);
  MEMORY[0x28223BE20](v67);
  v68 = &v59 - v15;
  v16 = sub_24F927418();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA88, &qword_24F99DEF8);
  MEMORY[0x28223BE20](v72);
  v21 = &v59 - v20;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = byte_27F2301A8;
  v23 = sub_24F926C98();
  v64 = v23;
  if (v22 == 1)
  {
    v24 = objc_opt_self();
    v25 = [v24 mainScreen];
    [v25 bounds];

    v26 = [v24 mainScreen];
    [v26 bounds];

    sub_24F927618();
    sub_24F9238C8();
    v27 = v75;
    v28 = v76;
    v29 = v77;
    v30 = v78;
    v63 = v79;
    v62 = v80;
    sub_24F9273F8();
    v31 = &v21[*(v72 + 36)];
    v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAF0, &unk_24F99DF40) + 36)];
    sub_24F927448();
    (*(v17 + 8))(v19, v16);
    v74[0] = v65;
    v74[1] = v66;
    *&v74[2] = a5;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
    MEMORY[0x25304CAF0](&v73, v33);
    v34 = v73;
    *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C0, &unk_24F939550) + 36)] = v34;
    v35 = sub_24F925808();
    v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229070, &qword_24F99DF50) + 36)] = v35;
    *v31 = v64;
    *(v31 + 1) = v27;
    v31[16] = v28;
    *(v31 + 3) = v29;
    v31[32] = v30;
    v36 = v62;
    *(v31 + 5) = v63;
    *(v31 + 6) = v36;
    v37 = sub_24F927618();
    v39 = v38;
    v40 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA98, &qword_24F99DF00) + 36)];
    *v40 = v37;
    v40[1] = v39;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58, &qword_24F99DEE0);
    (*(*(v41 - 8) + 16))(v21, v70, v41);
    sub_24E60169C(v21, v68, &qword_27F22FA88, &qword_24F99DEF8);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB3C0();
    sub_24EDBB4A4();
    sub_24F924E28();
    return sub_24E601704(v21, &qword_27F22FA88, &qword_24F99DEF8);
  }

  else
  {
    v75 = v23;
    sub_24F9273F8();
    sub_24F927448();
    (*(v17 + 8))(v19, v16);
    sub_24F927138();
    (*(v8 + 8))(v10, v60);
    v43 = *(v63 + 20);
    v44 = *MEMORY[0x277CE0118];
    v45 = sub_24F924B38();
    (*(*(v45 - 8) + 104))(&v7[v43], v44, v45);
    __asm { FMOV            V0.2D, #30.0 }

    *v7 = _Q0;
    v51 = &v14[*(v69 + 36)];
    sub_24EB67ED0();
    sub_24F926248();
    sub_24E6EB974(v7);
    (*(v61 + 8))(v12, v62);

    v75 = v65;
    v76 = v66;
    v77 = a5;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
    MEMORY[0x25304CAF0](v74, v52);
    v53 = v74[0];
    *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAE8, &qword_24F99DF38) + 36)] = v53;
    v54 = sub_24F927618();
    v56 = v55;
    v57 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAB8, &qword_24F99DF10) + 36)];
    *v57 = v54;
    v57[1] = v56;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58, &qword_24F99DEE0);
    (*(*(v58 - 8) + 16))(v14, v70, v58);
    sub_24EDBB66C(v14, v68);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB3C0();
    sub_24EDBB4A4();
    sub_24F924E28();
    return sub_24EDBB6DC(v14);
  }
}

uint64_t sub_24EDBA9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_24F926C08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F926C98();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v15 = sub_24F926D48();
  LOBYTE(v13) = sub_24F925808();
  v16 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA68, &qword_24F99DEF0) + 36);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA30, &unk_24F99DEA8) + 36);
  sub_24F927438();
  v18 = sub_24F925808();
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)) = v18;
  *v16 = v14;
  *(v16 + 8) = v15;
  *(v16 + 16) = v13;
  v19 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA38, &unk_24F99DEB8) + 36));
  v20 = *(sub_24F924258() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #30.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  v36[1] = a2;
  v36[2] = a3;
  *&v36[3] = a5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
  MEMORY[0x25304CAF0](v36, v28);
  v29 = v36[0];
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAD8, &qword_24F99DF28) + 36)) = v29;
  v30 = sub_24F927618();
  v32 = v31;
  v33 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAD0, &qword_24F99DF18) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58, &qword_24F99DEE0);
  return (*(*(v34 - 8) + 16))(a4, a1, v34);
}

uint64_t sub_24EDBACC8(uint64_t a1)
{
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58, &qword_24F99DEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA60, &qword_24F99DEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA68, &qword_24F99DEF0);
  sub_24E602068(&qword_27F22FA70, &qword_27F22FA58, &qword_24F99DEE0, MEMORY[0x277CE04B0]);
  sub_24EDBB334();
  sub_24EDBB588();
  return sub_24F926AF8();
}

uint64_t View.glassPlatter(opacity:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[0] = a1;
  v5[1] = a2;
  *&v5[2] = a4;
  return MEMORY[0x25304C420](v5, a3, &type metadata for GlassPlatterWithOpacityModifier);
}

unint64_t sub_24EDBAEA8()
{
  result = qword_27F22F9B0;
  if (!qword_27F22F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9B0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx12GameStoreKit20GlassPlatterModifierVGAaBHPxAaBHD1__AgA0cK0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_24F924038();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_24EDBAF8C()
{
  result = qword_27F22F9B8;
  if (!qword_27F22F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9B8);
  }

  return result;
}

unint64_t sub_24EDBB038()
{
  result = qword_27F22F9F0;
  if (!qword_27F22F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D8, &qword_24F99DE80);
    sub_24EDBB154();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D0, &qword_24F99DE78);
    sub_24F924258();
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    sub_24EB67ED0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9F0);
  }

  return result;
}

unint64_t sub_24EDBB154()
{
  result = qword_27F22F9F8;
  if (!qword_27F22F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA00, &qword_24F99DE90);
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F22FA08, &qword_27F22FA10, &qword_24F99DE98, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9F8);
  }

  return result;
}

unint64_t sub_24EDBB238()
{
  result = qword_27F22FA18;
  if (!qword_27F22FA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9E0, &qword_24F99DE88);
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F22FA20, &qword_27F22FA28, &qword_24F99DEA0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FA18);
  }

  return result;
}

unint64_t sub_24EDBB334()
{
  result = qword_27F22FA78;
  if (!qword_27F22FA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA60, &qword_24F99DEE8);
    sub_24EDBB3C0();
    sub_24EDBB4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FA78);
  }

  return result;
}

unint64_t sub_24EDBB3C0()
{
  result = qword_27F22FA80;
  if (!qword_27F22FA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA88, &qword_24F99DEF8);
    sub_24E602068(&qword_27F22FA70, &qword_27F22FA58, &qword_24F99DEE0, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F22FA90, &qword_27F22FA98, &qword_24F99DF00, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FA80);
  }

  return result;
}

unint64_t sub_24EDBB4A4()
{
  result = qword_27F22FAA0;
  if (!qword_27F22FAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FAA8, &qword_24F99DF08);
    sub_24E602068(&qword_27F22FA70, &qword_27F22FA58, &qword_24F99DEE0, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F22FAB0, &qword_27F22FAB8, &qword_24F99DF10, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FAA0);
  }

  return result;
}

unint64_t sub_24EDBB588()
{
  result = qword_27F22FAC0;
  if (!qword_27F22FAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA68, &qword_24F99DEF0);
    sub_24E602068(&qword_27F22FA70, &qword_27F22FA58, &qword_24F99DEE0, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F22FAC8, &qword_27F22FAD0, &qword_24F99DF18, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FAC0);
  }

  return result;
}

uint64_t sub_24EDBB66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAA8, &qword_24F99DF08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDBB6DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAA8, &qword_24F99DF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EDBB748()
{
  result = qword_27F22FAF8;
  if (!qword_27F22FAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB00, &qword_24F99DF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D0, &qword_24F99DE78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D8, &qword_24F99DE80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9E0, &qword_24F99DE88);
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0, &qword_24F99DE78, MEMORY[0x277CE04B0]);
    sub_24EDBB038();
    sub_24EDBB238();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FAF8);
  }

  return result;
}

uint64_t sub_24EDBB8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA58, &qword_24F99DEE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA60, &qword_24F99DEE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA68, &qword_24F99DEF0);
  sub_24E602068(&qword_27F22FA70, &qword_27F22FA58, &qword_24F99DEE0, MEMORY[0x277CE04B0]);
  sub_24EDBB334();
  sub_24EDBB588();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EDBB9C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EDBBA90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FriendRequestOverlayComponentGrid(uint64_t a1)
{
  result = qword_27F22FB08;
  if (!qword_27F22FB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDBBB8C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F22FB18, &qword_27F21BE38, &unk_24F953890);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90, &qword_24F9538B0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24EDBBCA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FBC0, &qword_24F99E1B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDBD05C();
  sub_24F92D128();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24EDBD220();
    sub_24F92CD48();
    v9 = type metadata accessor for FriendRequestOverlayComponentGrid(0);
    v14 = 2;
    sub_24F929608();
    sub_24EDBD2D0(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB58, &unk_24F99E150);
    sub_24EDBD318();
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    sub_24EDBD3C8();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EDBBFA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FBA0, &qword_24F99E1A8);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - v6;
  v8 = type metadata accessor for FriendRequestOverlayComponentGrid(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 40) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 9) = 0;
  v32 = v10 + 40;
  sub_24E61DA68(&v33, (v10 + 40), qword_27F21B590, &unk_24F93BE30);
  v11 = v8[6];
  v12 = sub_24F929608();
  v13 = *(*(v12 - 8) + 56);
  v30 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v8[7]];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  sub_24E61DA68(&v33, v14, &qword_27F2171D0, &unk_24F980290);
  v15 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24EDBD05C();
  v27 = v7;
  v16 = v29;
  sub_24F92D108();
  if (v16)
  {
    v17 = v32;
    __swift_destroy_boxed_opaque_existential_1(v31);
    v18 = v30;
    sub_24E601704(v17, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v10[v18], &qword_27F213E68, &unk_24F93BC80);
    return sub_24E601704(v14, &qword_27F22FB58, &unk_24F99E150);
  }

  else
  {
    v29 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v36 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v19 = v34;
    *v10 = v33;
    *(v10 + 1) = v19;
    *(v10 + 4) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v36 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v20 = v26;
    sub_24E61DA68(&v33, v32, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v33) = 2;
    sub_24EDBD2D0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v21 = v29;
    sub_24F92CC18();
    sub_24E61DA68(v21, &v10[v30], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB58, &unk_24F99E150);
    v36 = 3;
    sub_24EDBD0B0();
    v22 = v27;
    sub_24F92CC68();
    sub_24E61DA68(&v33, v14, &qword_27F22FB58, &unk_24F99E150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    v36 = 4;
    sub_24E9D8C44();
    v23 = v28;
    sub_24F92CC68();
    (*(v20 + 8))(v22, v23);
    *&v10[v8[8]] = v33;
    sub_24EDBD160(v10, v25);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_24EDBD1C4(v10);
  }
}

unint64_t sub_24EDBC560()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x6461654864697267;
  if (v1 != 3)
  {
    v4 = 0x6552646E65697266;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EDBC600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EDBD704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EDBC628(uint64_t a1)
{
  v2 = sub_24EDBD05C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDBC664(uint64_t a1)
{
  v2 = sub_24EDBD05C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EDBC720()
{
  result = qword_27F22FB20;
  if (!qword_27F22FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB20);
  }

  return result;
}

uint64_t sub_24EDBC774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB50, &qword_24F99E148);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-1] - v11;
  v13 = type metadata accessor for FriendRequestOverlayComponentGrid(0);
  sub_24E60169C(a1 + *(v13 + 28), &v27, &qword_27F22FB58, &unk_24F99E150);
  if (*(&v28 + 1))
  {
    sub_24E612C80(&v27, v26);
    sub_24E615E00(v26, v24);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24EDBD2D0(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
    v14 = sub_24F923598();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v26);
    *&v23 = v14;
    BYTE8(v23) = v16 & 1;
    v28 = v24[0];
    v29 = v24[1];
    v30 = v25;
    v27 = v23;
  }

  else
  {
    sub_24E601704(&v27, &qword_27F2171D0, &unk_24F980290);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
  }

  *&v23 = *(a1 + *(v13 + 32));
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24EDBCEE0;
  *(v18 + 24) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB60, &qword_24F99E180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB68, &qword_24F99E188);
  sub_24EDBCF20();
  sub_24EDBCFD0();
  sub_24F927228();
  sub_24E60169C(&v27, &v23, &qword_27F22FB90, &qword_24F99E198);
  v19 = *(v7 + 16);
  v19(v9, v12, v6);
  sub_24E60169C(&v23, a2, &qword_27F22FB90, &qword_24F99E198);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB98, &qword_24F99E1A0);
  v19((a2 + *(v20 + 48)), v9, v6);
  v21 = *(v7 + 8);
  v21(v12, v6);
  sub_24E601704(&v27, &qword_27F22FB90, &qword_24F99E198);
  v21(v9, v6);
  return sub_24E601704(&v23, &qword_27F22FB90, &qword_24F99E198);
}

double sub_24EDBCB30@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_24E615E00(a1, a2 + 16);
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24EDBD2D0(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  *a2 = sub_24F923598();
  *(a2 + 8) = v4 & 1;
  sub_24F927618();
  sub_24F9238C8();
  *(a2 + 56) = v6;
  *(a2 + 72) = v7;
  result = *&v8;
  *(a2 + 88) = v8;
  return result;
}

__n128 sub_24EDBCC08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(a1 + *(type metadata accessor for FriendRequestOverlayComponentGrid(0) + 32)) + 16) <= 2uLL)
  {
    v4 = 0x4024000000000000;
  }

  else
  {
    v4 = 0x4034000000000000;
  }

  *a2 = sub_24F924C88();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB38, &qword_24F99E130);
  sub_24EDBC774(a1, a2 + *(v5 + 44), 44.0);
  v6 = sub_24F925808();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB40, &qword_24F99E138) + 36);
  *v7 = v6;
  __asm { FMOV            V0.2D, #14.0 }

  *(v7 + 8) = _Q0;
  *(v7 + 24) = _Q0;
  *(v7 + 40) = 0;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB48, &qword_24F99E140) + 36));
  v14 = *(sub_24F924258() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  __asm { FMOV            V0.2D, #24.0 }

  *v13 = result;
  return result;
}

uint64_t sub_24EDBCD40(uint64_t a1)
{
  sub_24EDBC720();

  return sub_24F9218E8();
}

unint64_t sub_24EDBCDD0()
{
  result = qword_27F22FB30;
  if (!qword_27F22FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB30);
  }

  return result;
}

uint64_t sub_24EDBCEE8()
{

  return swift_deallocObject();
}

unint64_t sub_24EDBCF20()
{
  result = qword_27F22FB70;
  if (!qword_27F22FB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB60, &qword_24F99E180);
    sub_24E602068(&qword_27F22FB78, &qword_27F22FB80, &qword_24F99E190, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB70);
  }

  return result;
}

unint64_t sub_24EDBCFD0()
{
  result = qword_27F22FB88;
  if (!qword_27F22FB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB68, &qword_24F99E188);
    sub_24E66C1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB88);
  }

  return result;
}

unint64_t sub_24EDBD05C()
{
  result = qword_27F22FBA8;
  if (!qword_27F22FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBA8);
  }

  return result;
}

unint64_t sub_24EDBD0B0()
{
  result = qword_27F22FBB0;
  if (!qword_27F22FBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB58, &unk_24F99E150);
    sub_24E602068(&qword_27F22FBB8, &qword_27F21BE38, &unk_24F953890, MEMORY[0x277D21FD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBB0);
  }

  return result;
}

uint64_t sub_24EDBD160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendRequestOverlayComponentGrid(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDBD1C4(uint64_t a1)
{
  v2 = type metadata accessor for FriendRequestOverlayComponentGrid(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EDBD220()
{
  result = qword_27F214048;
  if (!qword_27F214048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E602068(&qword_27F214050, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214048);
  }

  return result;
}

uint64_t sub_24EDBD2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EDBD318()
{
  result = qword_27F22FBC8;
  if (!qword_27F22FBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB58, &unk_24F99E150);
    sub_24E602068(&qword_27F22FBD0, &qword_27F21BE38, &unk_24F953890, MEMORY[0x277D21FD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBC8);
  }

  return result;
}

unint64_t sub_24EDBD3C8()
{
  result = qword_27F21F8A8;
  if (!qword_27F21F8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F8A0, &unk_24F9608F0);
    sub_24E602068(&qword_27F21F8B0, &qword_27F21BE90, &qword_24F9538B0, MEMORY[0x277D21F20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F8A8);
  }

  return result;
}

unint64_t sub_24EDBD48C()
{
  result = qword_27F22FBD8;
  if (!qword_27F22FBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB48, &qword_24F99E140);
    sub_24EDBD544();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBD8);
  }

  return result;
}

unint64_t sub_24EDBD544()
{
  result = qword_27F22FBE0;
  if (!qword_27F22FBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB40, &qword_24F99E138);
    sub_24E602068(&qword_27F22FBE8, &qword_27F22FBF0, &unk_24F99E1C8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBE0);
  }

  return result;
}

unint64_t sub_24EDBD600()
{
  result = qword_27F22FBF8;
  if (!qword_27F22FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBF8);
  }

  return result;
}

unint64_t sub_24EDBD658()
{
  result = qword_27F22FC00;
  if (!qword_27F22FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC00);
  }

  return result;
}

unint64_t sub_24EDBD6B0()
{
  result = qword_27F22FC08;
  if (!qword_27F22FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC08);
  }

  return result;
}

uint64_t sub_24EDBD704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6461654864697267 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t CornerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EDBD950()
{
  result = qword_27F22FC10;
  if (!qword_27F22FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC10);
  }

  return result;
}

id sub_24EDBD9B4(id a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_24F92C2E8();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v10 = MEMORY[0x277D84F90];
    v36 = a3;
    v37 = a1;
    if (!i)
    {
      break;
    }

    v42[0] = MEMORY[0x277D84F90];
    result = sub_24F4578E0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v12 = 0;
    a3 = v42[0];
    v43 = v8 & 0xC000000000000001;
    v38 = i;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v43)
      {
        v14 = MEMORY[0x253052270](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v14 = *(v8 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_24F92B328();
      if (v4)
      {

        return a1;
      }

      v18 = v16;
      a1 = v17;

      v42[0] = a3;
      v20 = a3[2];
      v19 = a3[3];
      v21 = a3;
      if (v20 >= v19 >> 1)
      {
        sub_24F4578E0((v19 > 1), v20 + 1, 1);
        v21 = v42[0];
      }

      v21[2] = v20 + 1;
      v22 = &v21[2 * v20];
      v22[4] = v18;
      v22[5] = a1;
      ++v12;
      v4 = 0;
      a3 = v21;
      if (v13 == v38)
      {

        v10 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  a3 = MEMORY[0x277D84F90];
LABEL_18:
  v43 = v4;
  v23 = a3[2];
  if (v23)
  {
    v42[0] = v10;
    sub_24F45814C(0, v23, 0);
    v24 = v10;
    v25 = a3 + 5;
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v42[0] = v24;
      v28 = *(v24 + 16);
      v29 = *(v24 + 24);

      if (v28 >= v29 >> 1)
      {
        sub_24F45814C((v29 > 1), v28 + 1, 1);
        v24 = v42[0];
      }

      *(v24 + 16) = v28 + 1;
      v30 = v24 + 16 * v28;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
      v25 += 2;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v31 = *(v36 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_24EDC0968(v31 + 24, v42);
  if (v42[3])
  {
    sub_24E615E00(v42, v39);
    sub_24E601704(v42, &qword_27F22FC18, &qword_24F99E368);
    v32 = v40;
    v33 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v34 = (*(v33 + 8))(v24, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v42[0] = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EBD8, &qword_24F95DB28);
    v35 = sub_24F92CF68();
    a1 = [objc_opt_self() valueWithObject:v35 inContext:v37];
    result = swift_unknownObjectRelease();
    if (!a1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    sub_24E601704(v42, &qword_27F22FC18, &qword_24F99E368);
    result = [objc_opt_self() valueWithNullInContext_];
    if (!result)
    {
      goto LABEL_37;
    }

    a1 = result;
  }

  return a1;
}

uint64_t sub_24EDBDE5C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, __n128 a9)
{
  v34 = a8;
  v9 = a9.n128_u64[0];
  v17 = sub_24F92AC68();
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a2;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v21 = sub_24F9298F8();
  v22 = a3;
  v23 = a4;
  v24 = a2;

  v26 = v21;
  v27 = MEMORY[0x25304F260](v25);
  if (!v27)
  {
    sub_24EA32FE4();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v26 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v9;
  *(v28 + 24) = 0;
  *(v28 + 32) = v26;
  *(v28 + 40) = sub_24EDC114C;
  *(v28 + 48) = v20;
  v29 = a1;

  v30 = v37;
  sub_24F92AC48();

  if (v30)
  {
LABEL_5:

    return v26;
  }

  sub_24F92C048();
  sub_24F929778();
  v31 = sub_24F929768();
  sub_24F921FE8();

  v26 = sub_24F92AC58();

  (*(v35 + 8))(v19, v36);
  return v26;
}

char *sub_24EDBE0E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  LOBYTE(v7) = a7;
  v11 = sub_24F92C2E8();
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v14 = MEMORY[0x277D84F90];
    v46 = a1;
    v47 = a5;
    v45 = v7;
    v48 = a6;
    if (!i)
    {
      break;
    }

    v66 = MEMORY[0x277D84F90];
    result = sub_24F458A60(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    a6 = 0;
    a5 = v66;
    v67 = v12 & 0xFFFFFFFFFFFFFF8;
    v7 = i - 1;
    v16 = v50;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x253052270](a6, v12);
      }

      else
      {
        if (a6 >= *(v67 + 16))
        {
          goto LABEL_39;
        }

        v17 = *(v12 + 8 * a6 + 32);
      }

      SponsoredSearchAdvert.init(_:)(v17, &v60);
      if (v16)
      {

        return v12;
      }

      v58 = v64;
      v59 = v65;
      v56 = v62;
      v57 = v63;
      v54 = v60;
      v55 = v61;
      v66 = a5;
      a1 = *(a5 + 16);
      v18 = *(a5 + 24);
      if (a1 >= v18 >> 1)
      {
        sub_24F458A60((v18 > 1), a1 + 1, 1);
        v16 = 0;
        a5 = v66;
      }

      *(a5 + 16) = a1 + 1;
      v19 = (a5 + 96 * a1);
      v19[2] = v54;
      v19[3] = v55;
      v19[6] = v58;
      v19[7] = v59;
      v19[4] = v56;
      v19[5] = v57;
      if (v7 == a6)
      {
        v50 = v16;

        v14 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }

      ++a6;
    }

    while (!__OFADD__(a6, 1));
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  a5 = MEMORY[0x277D84F90];
LABEL_20:
  v20 = sub_24F92C2E8();
  v7 = v20;
  if (v20 >> 62)
  {
    a1 = sub_24F92C738();
    if (a1)
    {
LABEL_22:
      *&v60 = v14;
      result = sub_24F458A40(0, a1 & ~(a1 >> 63), 0);
      if ((a1 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        v22 = v60;
        v67 = v7 & 0xC000000000000001;
        v51 = v7 & 0xFFFFFFFFFFFFFF8;
        v52 = a1;
        v53 = v7;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_38;
          }

          if (v67)
          {
            v24 = v22;
            v25 = MEMORY[0x253052270](v21, v7);
          }

          else
          {
            if (v21 >= *(v51 + 16))
            {
              goto LABEL_40;
            }

            v24 = v22;
            v25 = *(v7 + 8 * v21 + 32);
          }

          v26 = v25;
          v27 = sub_24F92C318();
          v12 = sub_24F92C2F8();
          v29 = v28;

          if (!v29)
          {
            break;
          }

          v30 = sub_24F92C318();
          v31 = [v30 toDictionary];

          if (!v31)
          {

            sub_24F92C318();
            v12 = sub_24F92A868();
            sub_24E979414();
            swift_allocError();
            goto LABEL_37;
          }

          v32 = sub_24F92AE38();

          v22 = v24;
          *&v60 = v24;
          a1 = *(v24 + 16);
          v33 = *(v22 + 24);
          a6 = a1 + 1;
          if (a1 >= v33 >> 1)
          {
            sub_24F458A40((v33 > 1), a1 + 1, 1);
            v22 = v60;
          }

          *(v22 + 16) = a6;
          v34 = (v22 + 24 * a1);
          v34[4] = v12;
          v34[5] = v29;
          v34[6] = v32;
          ++v21;
          v7 = v53;
          if (v23 == v52)
          {

            goto LABEL_44;
          }
        }

        sub_24F92C318();
        v12 = sub_24F92A868();
        sub_24E979414();
        swift_allocError();
LABEL_37:
        sub_24F92A828();
        swift_willThrow();

        return v12;
      }

      goto LABEL_51;
    }
  }

  else
  {
    a1 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
      goto LABEL_22;
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_44:
  v35 = *(*(a4 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService) + 16);
  v12 = *(v35 + 16);
  if (v12)
  {
    v36 = *(v35 + 24);
    ObjectType = swift_getObjectType();
    v38 = *(v36 + 8);
    swift_unknownObjectRetain();
    v39 = v38(v47, v48, ObjectType, v36);
    if (v39)
    {
      v40 = v39[15];
      v41 = v39[16];
      __swift_project_boxed_opaque_existential_1(v39 + 12, v40);
      (*(v41 + 8))(a5, v22, v45 & 1, v40, v41);

      swift_unknownObjectRelease();

      *(swift_allocObject() + 16) = v46;
      *(&v61 + 1) = sub_24F929638();
      *&v62 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v60);
      v42 = v46;
      sub_24F929628();
      sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
      v12 = sub_24F92A938();

      __swift_destroy_boxed_opaque_existential_1(&v60);
    }

    else
    {

      sub_24EC11078();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_24EC11078();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_24EDBEA04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v57 = a4;
  v58 = a5;
  v55 = a3;
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v49 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v18 = sub_24F922058();
  __swift_project_value_buffer(v18, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();

  v19 = sub_24F922038();
  v20 = sub_24F92C058();

  v21 = sub_24F92C478();
  v54 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v52 = v12;
    v23 = a2;
    v24 = v22;
    v25 = swift_slowAlloc();
    v53 = v10;
    v26 = v25;
    v60 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_24E7620D4(a1, v23, &v60);
    v27 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v19, v20, v27, "OnDeviceAd", "placementType=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v28 = v26;
    v10 = v53;
    MEMORY[0x2530542D0](v28, -1, -1);
    v29 = v24;
    a2 = v23;
    v12 = v52;
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  v51 = *(v10 + 16);
  v51(v59, v17, v9);
  sub_24F922098();
  swift_allocObject();
  v52 = sub_24F922088();
  v31 = *(v10 + 8);
  v30 = v10 + 8;
  v50 = v31;
  v31(v17, v9);
  sub_24F922038();
  sub_24F921FF8();

  v32 = sub_24F922038();
  v33 = sub_24F92C058();

  if (sub_24F92C478())
  {
    v34 = swift_slowAlloc();
    v49 = v9;
    v35 = a2;
    v36 = v34;
    v37 = swift_slowAlloc();
    v53 = v30;
    v38 = v37;
    v60 = v37;
    *v36 = 136315138;
    v39 = v54;
    *(v36 + 4) = sub_24E7620D4(v54, v35, &v60);
    v40 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v32, v33, v40, "OnDeviceAdPromise", "placementType=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v38, -1, -1);
    v41 = v36;
    a2 = v35;
    v9 = v49;
    MEMORY[0x2530542D0](v41, -1, -1);
  }

  else
  {

    v39 = v54;
  }

  v51(v59, v12, v9);
  swift_allocObject();
  v42 = sub_24F922088();
  v50(v12, v9);
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v43 = sub_24F92C448();
  MEMORY[0x28223BE20](v43);
  *(&v49 - 10) = v42;
  *(&v49 - 9) = v39;
  v44 = v52;
  *(&v49 - 8) = a2;
  *(&v49 - 7) = v44;
  *(&v49 - 6) = a6;
  v45 = v55;
  *(&v49 - 5) = v56;
  *(&v49 - 4) = v45;
  v46 = v58;
  *(&v49 - 3) = v57;
  *(&v49 - 2) = v46;
  v47 = sub_24F92C458();

  return v47;
}

uint64_t sub_24EDBEEE8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v47 = a1;
  v50 = a7;
  v51 = a8;
  v53 = a5;
  v54 = a2;
  v14 = sub_24F922068();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F922028();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24F92AC68();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v52 = a3;
  v23._countAndFlagsBits = a3;
  v23._object = a4;
  AdPlacementType.init(rawValue:)(v23);
  v24 = v57;
  if (v57 == 5)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v25 = sub_24F922058();
    __swift_project_value_buffer(v25, qword_27F23DAC0);
    v26 = sub_24F922038();
    sub_24F922078();
    LODWORD(v51) = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v27 = v49;
      if ((*(v49 + 88))(v16, v14) == *MEMORY[0x277D85B00])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 8))(v16, v14);
        v28 = "success=false";
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v51, v42, "OnDeviceAd", v28, v41, 2u);
      MEMORY[0x2530542D0](v41, -1, -1);
    }

    (*(v18 + 8))(v20, v17);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_24F92C888();

    v57 = 0xD00000000000004ALL;
    v58 = 0x800000024FA5D9E0;
    MEMORY[0x253050C20](v52, a4);
    v29 = v58;
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    goto LABEL_18;
  }

  v29 = *(a6 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_24EDC0968(v29 + 24, &v55);
  if (!v56)
  {
    sub_24E601704(&v55, &qword_27F22FC18, &qword_24F99E368);
    sub_24EDC0DC0();
    swift_allocError();
LABEL_18:
    swift_willThrow();
    goto LABEL_21;
  }

  if (a9 == 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = a9;
  }

  sub_24E612C80(&v55, &v57);
  v31 = v59;
  v32 = v60;
  __swift_project_boxed_opaque_existential_1(&v57, v59);
  LOBYTE(v55) = v24;
  v33 = (*(v32 + 16))(&v55, COERCE_DOUBLE(*&v30), a9 == 0.0, v50, v51, a10, v31, v32);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v34 = swift_allocObject();
  v35 = v53;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  v29 = sub_24F9298F8();

  v37 = MEMORY[0x25304F260](v36);
  if (v37)
  {
    v29 = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 1;
    *(v38 + 32) = v29;
    *(v38 + 40) = sub_24EDC0E54;
    *(v38 + 48) = v34;
    v39 = v47;

    v40 = v48;
    sub_24F92AC48();
    if (!v40)
    {

      v29 = sub_24F92AC58();

      (*(v45 + 8))(v22, v46);
      sub_24EDBF55C();
      return v29;
    }
  }

  else
  {
    sub_24EA32FE4();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
  }

LABEL_21:
  sub_24EDBF55C();
  return v29;
}

uint64_t sub_24EDBF55C()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAC0);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "OnDeviceAdPromise", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EDBF7E8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v9[3] = sub_24F929638();
  v9[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v9);

  v6 = a1;
  sub_24F929628();
  sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v7 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

JSValue sub_24EDBF8D4@<X0>(__int128 *a1@<X0>, objc_class *a2@<X2>, JSValue *a3@<X8>)
{
  v25.super.isa = a2;
  v26 = a3;
  v4 = sub_24F922068();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F922028();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[7];
  v33 = a1[6];
  v34 = v11;
  v35[0] = a1[8];
  *(v35 + 9) = *(a1 + 137);
  v12 = a1[3];
  v29 = a1[2];
  v30 = v12;
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v27 = *a1;
  v28 = v14;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v15 = sub_24F922058();
  __swift_project_value_buffer(v15, qword_27F23DAC0);
  v16 = sub_24F922038();
  sub_24F922078();
  v17 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    v18 = v24;
    if ((*(v24 + 88))(v6, v4) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 8))(v6, v4);
      v19 = "success=true";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v16, v17, v21, "OnDeviceAd", v19, v20, 2u);
    MEMORY[0x2530542D0](v20, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  result.super.isa = OnDeviceAdvertFetchResponse.makeValue(in:)(v25).super.isa;
  v26->super.isa = result.super.isa;
  return result;
}

uint64_t sub_24EDBFCC4(uint64_t a1, void *a2, double a3)
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92AAE8();
  __swift_project_value_buffer(v8, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F928448();
  sub_24F9283A8();
  v11 = MEMORY[0x277D837D0];
  v9 = a1;
  v10 = a2;

  sub_24F928458();
  sub_24E601704(&v9, &qword_27F2129B0, &unk_24F945320);
  v11 = MEMORY[0x277D839F8];
  v9 = *&a3;
  sub_24F928458();
  sub_24E601704(&v9, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  AdPlacementType.init(rawValue:)(v6);
  if (v9 != 5)
  {
    return sub_24EDC0A48(&v9, a3);
  }

  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v11 = MEMORY[0x277D837D0];
  v9 = a1;
  v10 = a2;

  sub_24F928458();
  sub_24E601704(&v9, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

id sub_24EDC0068(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F2A7BFC();

  result = [objc_opt_self() valueWithBool:v3 & 1 inContext:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_24EDC01F8(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 stringArrayForKey_];

  if (v4)
  {
    sub_24F92B5A8();

    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v5 = sub_24F92CF68();
    v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      swift_bridgeObjectRelease_n();
      return v6;
    }

    __break(1u);
  }

  else
  {
    result = [objc_opt_self() valueWithNullInContext_];
    v6 = result;
    if (result)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_24EDC03EC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  AdPlacementType.init(rawValue:)(v8);
  v9 = v21;
  if (v21 == 5)
  {
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F9283A8();
    v23 = MEMORY[0x277D837D0];
    v21 = a2;
    v22 = a3;

    sub_24F928458();
    sub_24E601704(&v21, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v21 = 0;
    v22 = 0xE000000000000000;
    sub_24F92C888();

    v21 = 0xD00000000000004DLL;
    v22 = 0x800000024FA5DA80;
    MEMORY[0x253050C20](a2, a3);
    v11 = v21;
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    goto LABEL_9;
  }

  v11 = *(a4 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_24EDC0968(v11 + 24, &v19);
  if (!v20)
  {
LABEL_8:
    sub_24E601704(&v19, &qword_27F22FC18, &qword_24F99E368);
    sub_24EDC0DC0();
    swift_allocError();
LABEL_9:
    swift_willThrow();
    return v11;
  }

  sub_24E612C80(&v19, &v21);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(&v21, v23);
  LOBYTE(v19) = v9;
  v14 = (*(v13 + 32))(&v19, v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v21 = v14;
  v22 = v16;
  v17 = sub_24F92CF68();
  v11 = [objc_opt_self() valueWithObject:v17 inContext:a1];
  swift_unknownObjectRelease();
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  return v11;
}

id sub_24EDC08A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSAdsObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24EDC08E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(v3 + 16);
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  sub_24EDC0968(a3, v7);
  swift_beginAccess();
  sub_24EDC09D8(v7, v3 + 24);
  return swift_endAccess();
}

uint64_t sub_24EDC0968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC18, &qword_24F99E368);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDC09D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC18, &qword_24F99E368);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDC0A48(char *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  sub_24EDC0968(v2 + 24, &v9);
  if (v10)
  {
    sub_24E612C80(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    LOBYTE(v9) = v4;
    (*(v6 + 24))(&v9, v5, v6, a2);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_24E601704(&v9, &qword_27F22FC18, &qword_24F99E368);
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t AdsService.deinit()
{

  sub_24E601704(v0 + 24, &qword_27F22FC18, &qword_24F99E368);
  return v0;
}

uint64_t AdsService.__deallocating_deinit()
{

  sub_24E601704(v0 + 24, &qword_27F22FC18, &qword_24F99E368);

  return swift_deallocClassInstance();
}

unint64_t sub_24EDC0DC0()
{
  result = qword_27F22FC28;
  if (!qword_27F22FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC28);
  }

  return result;
}

uint64_t sub_24EDC0E14()
{

  return swift_deallocObject();
}

uint64_t sub_24EDC0E74()
{

  return swift_deallocObject();
}

void sub_24EDC0EF0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_24F2A7BFC();

  if (v5)
  {
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v7[3] = MEMORY[0x277D837D0];
    v7[0] = a1;
    v7[1] = a2;

    sub_24F928458();
    sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A598();
  }
}

uint64_t sub_24EDC10FC()
{

  return swift_deallocObject();
}

uint64_t sub_24EDC1174()
{

  return swift_deallocObject();
}

JSValue sub_24EDC11AC@<X0>(JSValue *a1@<X8>)
{
  result.super.isa = SponsoredSearchNativeAdvertData.makeValue(in:)(v1[2]).super.isa;
  a1->super.isa = result.super.isa;
  return result;
}

unint64_t sub_24EDC1240()
{
  result = qword_27F22FC30;
  if (!qword_27F22FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC30);
  }

  return result;
}

uint64_t sub_24EDC1298()
{
  sub_24EDC12D8();
  sub_24F924868();
  return v1;
}

unint64_t sub_24EDC12D8()
{
  result = qword_27F22FC38;
  if (!qword_27F22FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC38);
  }

  return result;
}

uint64_t sub_24EDC134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24EDC13B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_24EDC13B0()
{
  result = qword_27F22FC40;
  if (!qword_27F22FC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FC48, &qword_24F99E4C8);
    sub_24EDC1434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC40);
  }

  return result;
}

unint64_t sub_24EDC1434()
{
  result = qword_27F22FC50;
  if (!qword_27F22FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC50);
  }

  return result;
}

uint64_t sub_24EDC1500(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F648();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CardLayoutMetrics(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EDC1638(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CardLayoutMetrics(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ChallengeCardTitleView(uint64_t a1)
{
  result = qword_27F22FC58;
  if (!qword_27F22FC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDC17A8(uint64_t a1)
{
  sub_24F91F648();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CardLayoutMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_24E7C6468(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EDC1870@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for ChallengeCardTitleView(0);
  v3 = v2 - 8;
  v21 = *(v2 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D620, &unk_24F958EC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v20 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v23 = *(v1 + *(v3 + 36));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D628, &unk_24F99E560);
  sub_24E602068(&qword_27F21D630, &qword_27F21D628, &unk_24F99E560, MEMORY[0x277D83970]);
  sub_24F9253C8();
  sub_24EDC264C(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v12 = swift_allocObject();
  sub_24EDC289C(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  (*(v6 + 16))(v20, v10, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24EDC2900;
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0, &qword_24FA02720);
  sub_24E602068(&qword_27F21D640, &qword_27F21D620, &unk_24F958EC0, MEMORY[0x277CE06D8]);
  sub_24E8C5A10();
  v14 = v22;
  sub_24F923828();
  (*(v6 + 8))(v10, v5);
  v15 = v1 + *(v3 + 32);
  v16 = *(v15 + *(type metadata accessor for CardLayoutMetrics(0) + 84));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC68, &unk_24F99E5A0);
  v19 = v14 + *(result + 36);
  *v19 = KeyPath;
  *(v19 + 8) = v16;
  *(v19 + 16) = 0;
  return result;
}

double sub_24EDC1BBC@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v3);
  v5 = v98 - v4;
  v6 = sub_24F925D38();
  v111 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v117 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F925D58();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F925D78();
  MEMORY[0x28223BE20](v9 - 8);
  v113 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F924A78();
  MEMORY[0x28223BE20](v11 - 8);
  v115 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v98 - v14;
  v16 = sub_24F91F648();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v112 = v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v98 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  sub_24F923808();
  v22 = type metadata accessor for ChallengeCardTitleView(0);
  v23 = a1 + *(v22 + 20);
  sub_24E7C79D8();
  v110 = v23;
  LOBYTE(v23) = sub_24F92AF78();
  v24 = *(v17 + 8);
  v109 = v17 + 8;
  v108 = v24;
  v24(v21, v16);
  if (v23)
  {
    v25 = a1 + *(v22 + 24);
    v26 = &v25[*(type metadata accessor for CardLayoutMetrics(0) + 88)];
    v27 = *(v26 + 3);
    v118 = *(v26 + 4);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v28 = a1[1];
    *&v125 = *a1;
    *(&v125 + 1) = v28;
    sub_24E600AEC();

    v29 = sub_24F925E18();
    v31 = v30;
    v33 = v32;
    v34 = sub_24F925C98();
    v36 = v35;
    v38 = v37;
    sub_24E600B40(v29, v31, v33 & 1);

    v39 = sub_24F925C58();
    v41 = v40;
    LOBYTE(v29) = v42;
    v44 = v43;
    sub_24E600B40(v34, v36, v38 & 1);

    v120 = v39;
    v121 = v41;
    v122 = v29 & 1;
    v123 = v44;
    v124 = 1;
  }

  else
  {
    v106 = v3;
    v107 = v5;
    sub_24F924A68();
    sub_24F924A58();
    v45 = a1 + *(v22 + 24);
    v46 = type metadata accessor for CardLayoutMetrics(0);
    v102 = v17;
    v47 = v46;
    v48 = &v45[*(v46 + 88)];
    v99 = *(v48 + 3);
    v100 = *(v48 + 4);
    v98[1] = __swift_project_boxed_opaque_existential_1(v48, v99);
    v49 = *a1;
    v50 = a1[1];
    *&v125 = v49;
    *(&v125 + 1) = v50;
    sub_24E600AEC();

    v51 = sub_24F925E18();
    v53 = v52;
    v55 = v54;
    v103 = v47;
    v104 = v45;
    v56 = sub_24F925C98();
    v101 = v6;
    v57 = v56;
    v105 = v15;
    v59 = v58;
    v61 = v60;
    sub_24E600B40(v51, v53, v55 & 1);

    v62 = sub_24F925C58();
    v64 = v63;
    v66 = v65;
    sub_24E600B40(v57, v59, v61 & 1);

    sub_24F924A28();
    sub_24E600B40(v62, v64, v66 & 1);

    sub_24F924A58();
    sub_24F924A68();
    sub_24F924A58();
    (*(v102 + 16))(v112, v110, v16);
    sub_24F91F638();
    sub_24F91F558();
    v108(v21, v16);
    (*(v111 + 104))(v117, *MEMORY[0x277CE0BB0], v101);
    v67 = v114;
    sub_24F925D48();
    sub_24F925D68();
    (*(v116 + 8))(v67, v118);
    v68 = sub_24F925DD8();
    v70 = v69;
    LOBYTE(v64) = v71;
    sub_24F924A28();
    sub_24E600B40(v68, v70, v64 & 1);

    sub_24F924A58();
    sub_24F924A98();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v72 = qword_27F24F280;
    v73 = sub_24F925DE8();
    v75 = v74;
    v77 = v76;
    v78 = sub_24F925C98();
    v80 = v79;
    v82 = v81;
    sub_24E600B40(v73, v75, v77 & 1);

    LODWORD(v73) = sub_24F9251B8();
    v83 = *(v106 + 36);
    v84 = *MEMORY[0x277CE13B8];
    v85 = sub_24F927748();
    v86 = v107;
    (*(*(v85 - 8) + 104))(v107 + v83, v84, v85);
    *v86 = v73;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v87 = sub_24F925C58();
    v89 = v88;
    LOBYTE(v83) = v90;
    sub_24E600B40(v78, v80, v82 & 1);

    sub_24EAAD700(v86);
    sub_24F924A28();
    sub_24E600B40(v87, v89, v83 & 1);

    sub_24F924A58();
    sub_24F924A98();
    v120 = sub_24F925DE8();
    v121 = v91;
    v122 = v92 & 1;
    v123 = v93;
    v124 = 0;
  }

  sub_24F924E28();
  result = *&v125;
  v95 = v126;
  v96 = v127;
  v97 = v119;
  *v119 = v125;
  v97[1] = v95;
  *(v97 + 32) = v96;
  return result;
}

uint64_t sub_24EDC264C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTitleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDC26B0()
{
  v1 = type metadata accessor for ChallengeCardTitleView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  v4 = sub_24F91F648();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + *(v1 + 24);
  type metadata accessor for CardLayoutMetrics.CardHeight(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_24F922348();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  v8 = type metadata accessor for CardLayoutMetrics(0);

  __swift_destroy_boxed_opaque_existential_1((v5 + *(v8 + 88)));

  return swift_deallocObject();
}

uint64_t sub_24EDC289C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTitleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24EDC2900@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengeCardTitleView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EDC1BBC(v4, a1);
}

uint64_t sub_24EDC2980@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC70, &unk_24F99E5B0);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(v16, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v17;
    v15 = v16[1];
    *a3 = v16[0];
    *(a3 + 16) = v15;
    *(a3 + 32) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDC2ADC()
{

  return swift_deallocObject();
}

unint64_t sub_24EDC2B28()
{
  result = qword_27F22FC78;
  if (!qword_27F22FC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FC68, &unk_24F99E5A0);
    sub_24EDC2BE0();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC78);
  }

  return result;
}

unint64_t sub_24EDC2BE0()
{
  result = qword_27F22FC80;
  if (!qword_27F22FC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FC88, &qword_24F99E5C0);
    sub_24E8C5A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC80);
  }

  return result;
}

uint64_t ReferrerData.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v32 = a2;
  v36 = sub_24F9285B8();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_24F928398();
  v27 = sub_24F928348();
  v31 = v13;
  v14 = *(v7 + 8);
  v14(v12, v6);
  sub_24F928398();
  v15 = sub_24F928348();
  v30 = v16;
  v14(v12, v6);
  sub_24F928398();
  v17 = sub_24F928328();
  v14(v12, v6);
  if (v17)
  {
    v18 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v19 = 1684957547;
    v19[1] = 0xE400000000000000;
    v19[2] = &type metadata for ReferrerData;
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D22530], v18);
    swift_willThrow();
    (*(v33 + 8))(v32, v36);
  }

  else
  {
    sub_24F928398();
    v20 = v32;
    (*(v33 + 16))(v5, v32, v36);
    v21 = v29;
    ReferrerData.Kind.init(deserializing:using:)(v9, v5, &v34);
    if (!v21)
    {
      (*(v33 + 8))(v20, v36);
      result = (v14)(a1, v6);
      v23 = v34;
      v24 = v35;
      v25 = v28;
      *v28 = v27;
      v25[1] = v31;
      v25[2] = v15;
      v25[3] = v30;
      v25[4] = v23;
      *(v25 + 40) = v24;
      return result;
    }

    (*(v33 + 8))(v20, v36);
  }

  v14(a1, v6);
}

unint64_t sub_24EDC3010()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);

  v7 = sub_24E608448(MEMORY[0x277D84F90]);
  v22 = v7;
  v8 = MEMORY[0x277D837D0];
  if (v1)
  {
    v9 = v7;
    v21 = MEMORY[0x277D837D0];
    *&v20 = v2;
    *(&v20 + 1) = v1;
    sub_24E612B0C(&v20, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v9;
    sub_24E81C1D4(v17, 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v18;
  }

  else
  {
    sub_24E98EF1C(7368801, 0xE300000000000000, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  if (v3)
  {
    v21 = v8;
    *&v20 = v4;
    *(&v20 + 1) = v3;
    sub_24E612B0C(&v20, v17);

    v11 = v22;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v11;
    sub_24E81C1D4(v17, 0x6C616E7265747865, 0xEB000000006C7255, v12);
    v13 = v18;
  }

  else
  {
    sub_24E98EF1C(0x6C616E7265747865, 0xEB000000006C7255, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
    v13 = v22;
  }

  v18 = v5;
  v19 = v6;
  v14 = sub_24EDC3A44();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  *&v20 = v14;
  sub_24E612B0C(&v20, v17);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v17, 1684957547, 0xE400000000000000, v15);
  return v13;
}

uint64_t ReferrerData.init(app:externalUrl:kind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  *(a6 + 40) = v7;
  return result;
}

uint64_t ReferrerData.Kind.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_31;
  }

  if (a1 == 0x70696C43707061 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v9 = 2;
    a3 = 1;
    goto LABEL_33;
  }

  if (a1 == 0x65726F7453707061 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    a3 = 2;
LABEL_32:
    v9 = 2;
    goto LABEL_33;
  }

  if (a1 == 0x746E6543656D6167 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    v9 = 2;
    a3 = 3;
    goto LABEL_33;
  }

  if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    v9 = 2;
    a3 = 4;
    goto LABEL_33;
  }

  if (a1 == 0x696C6F706D617274 && a2 == 0xEA0000000000656ELL || (sub_24F92CE08() & 1) != 0)
  {
    if (!a3)
    {
      a3 = sub_24E6087F0(MEMORY[0x277D84F90]);
    }

    v9 = 0;
    goto LABEL_33;
  }

  if ((a1 != 0x746567646977 || a2 != 0xE600000000000000) && (sub_24F92CE08() & 1) == 0)
  {

LABEL_31:

    a3 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    a3 = sub_24E6087F0(MEMORY[0x277D84F90]);
  }

  v9 = 1;
LABEL_33:
  *a4 = a3;
  *(a4 + 8) = v9;
  return result;
}

uint64_t ReferrerData.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 8))
  {
    if (v2 == 1)
    {
      v3 = 0x746567646977;
    }

    else
    {
      v3 = *&aUnspecifappcli[8 * v1];
    }
  }

  else
  {
    v3 = 0x696C6F706D617274;
  }

  sub_24E90BCC4(v1, v2);
  return v3;
}

uint64_t ReferrerData.Kind.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v30 = v14;
    sub_24F928398();
    sub_24F9281F8();
    v17(v10, v7);
    v18 = sub_24F928E68();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_24E601704(v6, qword_27F221C40, &unk_24F967D80);
      v20 = 0;
    }

    else
    {
      v25 = v35;
      v20 = sub_24F928E38();
      v35 = v25;
      (*(v19 + 8))(v6, v18);
    }

    ReferrerData.Kind.init(rawValue:)(v30, v16, v20, &v33);
    v26 = sub_24F9285B8();
    (*(*(v26 - 8) + 8))(v32, v26);
    result = (v17)(a1, v7);
    v27 = v34;
    v28 = v31;
    *v31 = v33;
    *(v28 + 8) = v27;
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v22 = 1701667182;
    v22[1] = 0xE400000000000000;
    v22[2] = &type metadata for ReferrerData.Kind;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v32, v23);
    return (v17)(a1, v7);
  }

  return result;
}

double sub_24EDC3934@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F928368();
  if (v11[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        v7 = v12;
        v8 = v13;
        v15 = v12;
        v16 = v13;
        v9 = v14;
        v17 = v14;
        *a3 = a1;
        *(a3 + 8) = a2;
        *(a3 + 16) = v7;
        *(a3 + 32) = v8;
        *(a3 + 48) = v9;

        return result;
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  sub_24E601704(&v12, &qword_27F235830, &qword_24F93B8C0);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

unint64_t sub_24EDC3A44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = sub_24E608448(MEMORY[0x277D84F90]);
  *&v12[0] = v1;
  BYTE8(v12[0]) = v2;
  v4 = ReferrerData.Kind.rawValue.getter();
  v6 = v5;

  v14 = MEMORY[0x277D837D0];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_24E612B0C(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v12, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v15 = v3;
  *&v12[0] = v1;
  BYTE8(v12[0]) = v2;
  ReferrerData.Kind.rawValue.getter();
  v9 = v8;

  if (v9)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0, &qword_24F986600);
    *&v13 = v9;
    sub_24E612B0C(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v12, 0x747865746E6F63, 0xE700000000000000, v10);
    return v3;
  }

  else
  {
    sub_24E98EF1C(0x747865746E6F63, 0xE700000000000000, &v13);
    sub_24E601704(&v13, &qword_27F2129B0, &unk_24F945320);
    return v15;
  }
}

uint64_t sub_24EDC3BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ReferrerData.Kind.init(rawValue:)(*a1, a1[1], a1[2], &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_24EDC3BFC@<X0>(uint64_t *a1@<X8>)
{
  result = ReferrerData.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t ReferrerData.Kind.init(userActivity:url:refApp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v8 = [a1 _originatingProcess];
  v9 = [a1 _sourceApplication];
  if (v9)
  {
    v10 = v9;
    v11 = sub_24F92B0D8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_24EDC3D6C(a2, v8, v11, v13, &v16);

  result = sub_24E601704(a2, &qword_27F228530, &unk_24F93C6E0);
  v15 = v17;
  *a5 = v16;
  *(a5 + 8) = v15;
  return result;
}

uint64_t sub_24EDC3D6C@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_24F928418();
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  if (a2)
  {
    v12 = a2;
    v13 = [v12 bundleIdentifier];
    if (v13)
    {
      v24 = a1;
      v14 = v13;
      v15 = sub_24F92B0D8();
      v17 = v16;

      v18 = v15 == 0xD000000000000012 && 0x800000024FA44B00 == v17;
      if (v18 || (sub_24F92CE08() & 1) != 0)
      {

        result = 2;
LABEL_19:
        v21 = 2;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000019 && 0x800000024FA5DC50 == v17 || (sub_24F92CE08() & 1) != 0)
      {

LABEL_24:

        v21 = 2;
        result = 1;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000033 && 0x800000024FA5DC70 == v17 || (sub_24F92CE08() & 1) != 0)
      {

        v21 = 2;
        result = 3;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000013 && 0x800000024FA5DCB0 == v17)
      {

LABEL_34:
        v21 = 2;
        result = 4;
        goto LABEL_25;
      }

      v23 = sub_24F92CE08();

      a1 = v24;
      if (v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v20 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v22 = sub_24F3E5298(a3, a4, 1);
  v12 = [v22 appClipMetadata];

  if (v12)
  {
    goto LABEL_24;
  }

  result = _s12GameStoreKit03AppB8DeepLinkV17trampolineMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(a1, a3, a4);
  if (!result)
  {
    result = _s12GameStoreKit03AppB8DeepLinkV13widgetMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(a1, a3, a4);
    if (result)
    {
      v21 = 1;
      goto LABEL_25;
    }

LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v21 = 0;
LABEL_25:
  *a5 = result;
  *(a5 + 8) = v21;
  return result;
}

uint64_t ReferrerData.Kind.init(urlOptions:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    goto LABEL_17;
  }

  v6 = sub_24E7728E8();
  if ((v7 & 1) == 0)
  {
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_17:

    v12 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v6, &v18);
  sub_24EDC4718();
  if (swift_dynamicCast())
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

LABEL_10:
  v9 = sub_24E7728E8();
  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v9, &v18);

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

LABEL_18:
  sub_24EDC3D6C(a2, v8, v12, v13, &v18);

  result = sub_24E601704(a2, &qword_27F228530, &unk_24F93C6E0);
  v15 = v19;
  *a3 = v18;
  *(a3 + 8) = v15;
  return result;
}

uint64_t _s12GameStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_24E90BCC4(*a2, 0);
      sub_24E90BCC4(v2, 0);
      v6 = sub_24EBAD4E8(v2, v4);
      sub_24E7B6564(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_24E90BCC4(*a2, 1u);
      sub_24E90BCC4(v2, 1u);
      LOBYTE(v6) = sub_24EBAD4E8(v2, v4);
      sub_24E7B6564(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_24E7B6564(v7, v8);
      return v6 & 1;
    }

    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      if (v5 == 2 && v4 == 1)
      {
        sub_24E7B6564(1, 2u);
        sub_24E7B6564(1, 2u);
        return v4;
      }
    }

    else if (v5 == 2 && !v4)
    {
      sub_24E7B6564(0, 2u);
      v10 = 0;
      goto LABEL_21;
    }

LABEL_25:
    sub_24E90BCC4(*a2, *(a2 + 8));
    sub_24E90BCC4(v2, v3);
    sub_24E7B6564(v2, v3);
    sub_24E7B6564(v4, v5);
    return 0;
  }

  if (v2 == 2)
  {
    goto LABEL_25;
  }

  if (v2 != 3)
  {
    if (v5 == 2 && v4 == 4)
    {
      sub_24E7B6564(4, 2u);
      v10 = 4;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (v5 != 2 || v4 != 3)
  {
    goto LABEL_25;
  }

  sub_24E7B6564(3, 2u);
  v10 = 3;
LABEL_21:
  sub_24E7B6564(v10, 2u);
  return 1;
}

uint64_t _s12GameStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    if (v11 && (v4 == v9 && v6 == v11 || (sub_24F92CE08() & 1) != 0))
    {
      goto LABEL_13;
    }

LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_13:
  v17 = v5;
  v18 = v7;
  v15 = v10;
  v16 = v12;
  sub_24E90BCC4(v5, v7);
  sub_24E90BCC4(v10, v12);
  v13 = _s12GameStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(&v17, &v15);
  sub_24E7B6564(v15, v16);
  sub_24E7B6564(v17, v18);
  return v13 & 1;
}

unint64_t sub_24EDC4718()
{
  result = qword_27F22FC90;
  if (!qword_27F22FC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22FC90);
  }

  return result;
}

uint64_t sub_24EDC4784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)(a1, a2, WitnessTable, x8_0);
}

uint64_t FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v45 = sub_24F91FA78();
  v9 = *(v45 - 8);
  v10 = MEMORY[0x28223BE20](v45);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a3 + 56);
  if ((v44(a1, a2, a3, v10) & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    goto LABEL_13;
  }

  (*(a3 + 64))(&v50, a1, a2, a3);
  if (!*(&v51 + 1))
  {
LABEL_13:
    v24 = &qword_27F2171D0;
    v25 = &unk_24F980290;
    v26 = &v50;
LABEL_14:
    sub_24E601704(v26, v24, v25);
    goto LABEL_15;
  }

  sub_24E612C80(&v50, v53);
  sub_24E615E00(v53, v48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38, &unk_24F992830);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    memset(v47, 0, 40);
    v24 = &qword_27F22CE30;
    v25 = &qword_24F99AA80;
    v26 = v47;
    goto LABEL_14;
  }

  v42[1] = v13;
  sub_24E612C80(v47, &v50);
  v14 = *(&v51 + 1);
  v43 = a4;
  v15 = v52;
  __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
  v16 = *(v15 + 8);
  v17 = v15;
  a4 = v43;
  if (v16(v14, v17))
  {
    type metadata accessor for FlowAction(0);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
      v21 = v20 > 0x2F;
      v22 = (1 << v20) & 0xE00000802010;
      if (v21 || v22 == 0)
      {
        sub_24E615E00(v53, v48);
        type metadata accessor for TodayCard(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v39 = *(&v51 + 1);
          v40 = v52;
          __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
          v41 = *(v40 + 16);

          v41(v39, v40);
          sub_24EDC5774(v53, v48);

          __swift_destroy_boxed_opaque_existential_1(v53);
          v38 = v48[0];
          *a4 = v19;
          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(v53);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v53);
      }

      goto LABEL_36;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1(&v50);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24F93A400;
  *(v27 + 32) = sub_24F91FA18();
  *(v27 + 40) = 0;
  MEMORY[0x253045350](v27);
  if ((v44)(v12, a2, a3))
  {
    (*(a3 + 64))(&v50, v12, a2, a3);
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
  }

  (*(v9 + 8))(v12, v45);
  if (*(&v51 + 1))
  {
    sub_24E612C80(&v50, v53);
    sub_24E615E00(v53, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8, &qword_24F99AA88);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v47, &v50);
      v28 = *(&v51 + 1);
      v29 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v30 = sub_24F91FA08();
      (*(v29 + 8))(v47, v30, v28, v29);
      if (*&v47[0])
      {
        v48[0] = v47[0];
        v48[1] = v47[1];
        v49 = *&v47[2];
        sub_24E60169C(v48, v47, &qword_27F22CE40, &qword_24F99AAA0);
        type metadata accessor for FlowAction(0);
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          v32 = v31;
          sub_24E601704(v47 + 8, &qword_27F2129B0, &unk_24F945320);
          v33 = *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
          if (v33 <= 0x2F && ((1 << v33) & 0xE00000802010) != 0)
          {

            sub_24E601704(v48, &qword_27F22CE40, &qword_24F99AAA0);
            __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_31:
            result = __swift_destroy_boxed_opaque_existential_1(&v50);
            goto LABEL_32;
          }

          sub_24E60169C(v48, v47, &qword_27F22CE40, &qword_24F99AAA0);

          sub_24EDC5774(v53, &v46);

          sub_24E601704(v48, &qword_27F22CE40, &qword_24F99AAA0);
          __swift_destroy_boxed_opaque_existential_1(v53);
          v38 = v46;
          *a4 = v32;
          *(a4 + 8) = *(v47 + 8);
          *(a4 + 24) = *(&v47[1] + 8);
LABEL_41:
          *(a4 + 40) = v38;
          return __swift_destroy_boxed_opaque_existential_1(&v50);
        }

        sub_24E601704(v48, &qword_27F22CE40, &qword_24F99AAA0);
        __swift_destroy_boxed_opaque_existential_1(v53);
        v35 = &qword_27F2129B0;
        v36 = &unk_24F945320;
        v37 = (v47 + 8);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v53);
        v35 = &qword_27F22ECF8;
        v36 = &unk_24F9AA510;
        v37 = v47;
      }

      sub_24E601704(v37, v35, v36);
      goto LABEL_31;
    }

    __swift_destroy_boxed_opaque_existential_1(v53);
    memset(v47, 0, 40);
    result = sub_24E601704(v47, &qword_27F22ECF0, &unk_24F99AA90);
  }

  else
  {
    result = sub_24E601704(&v50, &qword_27F2171D0, &unk_24F980290);
  }

LABEL_32:
  *a4 = 1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_24EDC4F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(a1, v8, v5, a3, v6, WitnessTable);
}

uint64_t FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_24F91FA78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 56);
  if ((v14(a1, a4, a6, v11) & 1) == 0)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_7;
  }

  (*(a6 + 64))(&v32, a1, a4, a6);
  if (!*(&v33 + 1))
  {
LABEL_7:
    sub_24E601704(&v32, &qword_27F2171D0, &unk_24F980290);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCB0, &qword_24F99E858);
  if (swift_dynamicCast())
  {
    if (*(&v36 + 1))
    {
      sub_24E612C80(&v35, v38);
      v15 = v39;
      v16 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v17 = (*(v16 + 8))(v15, v16);
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v38);
      return v17;
    }
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

LABEL_8:
  v29 = v9;
  sub_24E601704(&v35, &qword_27F22FC98, &qword_24F99E840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24F93A400;
  *(v18 + 32) = sub_24F91FA18();
  *(v18 + 40) = 0;
  MEMORY[0x253045350](v18);
  if ((v14)(v13, a4, a6))
  {
    (*(a6 + 64))(&v32, v13, a4, a6);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  (*(v10 + 8))(v13, v29);
  if (!*(&v33 + 1))
  {
    sub_24E601704(&v32, &qword_27F2171D0, &unk_24F980290);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCA8, &qword_24F99E850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_20;
  }

  if (!*(&v36 + 1))
  {
LABEL_20:
    sub_24E601704(&v35, &qword_27F22FCA0, &qword_24F99E848);
    return 0;
  }

  sub_24E612C80(&v35, v38);
  v19 = sub_24F91FA08();
  v20 = v39;
  v21 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  if (v19 < (*(v21 + 32))(v20, v21))
  {
    v22 = v39;
    v23 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v24 = sub_24F91FA08();
    (*(v23 + 16))(&v32, v24, v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCB0, &qword_24F99E858);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v30, &v35);
      v25 = *(&v36 + 1);
      v26 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v17 = (*(v26 + 8))(v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      goto LABEL_17;
    }

    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_24E601704(v30, &qword_27F22FC98, &qword_24F99E840);
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return 0;
}

double FlowPreview.init(destination:actions:)@<D0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E60169C(a1, v12, &qword_27F22FCB8, &qword_24F99E860);
  v6 = v12[0];
  if (v12[0] == 1)
  {
    sub_24E601704(v12, &qword_27F22FCB8, &qword_24F99E860);
    goto LABEL_7;
  }

  sub_24EDC5824(v12);
  if (!v6)
  {
    goto LABEL_7;
  }

  sub_24E60169C(a1, v12, &qword_27F22FCB8, &qword_24F99E860);
  if (v12[0] != 1)
  {
    v7 = v13;
    sub_24EDC5824(v12);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a2 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_9;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    sub_24E601704(a1, &qword_27F22FCB8, &qword_24F99E860);

    *(a3 + 48) = 0;
    *&v9 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return *&v9;
  }

  sub_24E601704(v12, &qword_27F22FCB8, &qword_24F99E860);
LABEL_9:
  *&v14[9] = *(a1 + 25);
  v8 = *a1;
  *v14 = a1[1];
  v9 = *v14;
  v10 = *&v14[16];
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = a2;
  return *&v9;
}

uint64_t FlowPreviewDestination.ContentType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

__n128 FlowPreviewDestination.init(flowAction:sender:contentType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  return result;
}

uint64_t sub_24EDC5774@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_24E615E00(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  type metadata accessor for Review(0);
  if (swift_dynamicCast() || (type metadata accessor for ReviewsContainer(), swift_dynamicCast()))
  {

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v5);
  *a2 = v3;
  return result;
}

unint64_t sub_24EDC5858()
{
  result = qword_27F22FCC0;
  if (!qword_27F22FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit22FlowPreviewDestinationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EDC58D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EDC5918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EDC5974(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24EDC59D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EDC5AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)(a1, a2, WitnessTable, a3);
}

uint64_t sub_24EDC5B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(a1, v8, v5, a3, v6, WitnessTable);
}

unint64_t sub_24EDC5B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v66 = MEMORY[0x277D84F90];
  sub_24F457E54(0, v1, 0);
  v2 = v66;
  v4 = v3 + 56;
  v5 = sub_24F92C6B8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FD38, &qword_24F99F010);
  v50 = v3;
  v7 = 0;
  v47 = v3 + 64;
  v48 = v1;
  v49 = v3 + 56;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    v53 = v5 >> 6;
    v54 = v5;
    v55 = v2;
    v51 = v7;
    v52 = *(v3 + 36);
    v9 = (*(v3 + 48) + (v5 << 6));
    v10 = v9[6];
    v56 = v9[7];
    v57 = *v9;
    v58 = v9[1];
    v59 = v9[2];
    v60 = v9[3];
    v61 = v9[4];
    v62 = v9[5];
    strcpy(v63, "metricsValue");
    BYTE5(v63[1]) = 0;
    HIWORD(v63[1]) = -5120;
    v64 = v10;
    v65 = v56;
    v11 = sub_24F92CB58();

    result = sub_24E76D644(0x65756C6176, 0xE500000000000000);
    if (v12)
    {
      goto LABEL_28;
    }

    v13 = v11 + 8;
    *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v11[6] + 16 * result);
    *v14 = 0x65756C6176;
    v14[1] = 0xE500000000000000;
    v15 = (v11[7] + 16 * result);
    *v15 = v57;
    v15[1] = v58;
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v18;

    result = sub_24E76D644(0x656C746974, 0xE500000000000000);
    if (v19)
    {
      goto LABEL_28;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v20 = (v11[6] + 16 * result);
    *v20 = 0x656C746974;
    v20[1] = 0xE500000000000000;
    v21 = (v11[7] + 16 * result);
    *v21 = v59;
    v21[1] = v60;
    v22 = v11[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v23;

    result = sub_24E76D644(0x6D496D6574737973, 0xEF656D614E656761);
    if (v24)
    {
      goto LABEL_28;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v25 = (v11[6] + 16 * result);
    *v25 = 0x6D496D6574737973;
    v25[1] = 0xEF656D614E656761;
    v26 = (v11[7] + 16 * result);
    *v26 = v61;
    v26[1] = v62;
    v27 = v11[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v28;
    v29 = v63[0];
    v30 = v63[1];
    v32 = v64;
    v31 = v65;

    result = sub_24E76D644(v63[0], v63[1]);
    if (v33)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v34 = (v11[6] + 16 * result);
    *v34 = v29;
    v34[1] = v30;
    v35 = (v11[7] + 16 * result);
    *v35 = v32;
    v35[1] = v31;
    v36 = v11[2];
    v17 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22FD40, &qword_24F99F018);
    swift_arrayDestroy();
    v2 = v55;
    v66 = v55;
    v39 = *(v55 + 16);
    v38 = *(v55 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_24F457E54((v38 > 1), v39 + 1, 1);
      v2 = v66;
    }

    *(v2 + 16) = v39 + 1;
    *(v2 + 8 * v39 + 32) = v11;
    v3 = v50;
    v8 = 1 << *(v50 + 32);
    result = v5;
    if (v5 >= v8)
    {
      goto LABEL_32;
    }

    v4 = v49;
    v40 = *(v49 + 8 * v53);
    if ((v40 & (1 << v5)) == 0)
    {
      goto LABEL_33;
    }

    if (v52 != *(v50 + 36))
    {
      goto LABEL_34;
    }

    v41 = v40 & (-2 << (v5 & 0x3F));
    if (v41)
    {
      v8 = __clz(__rbit64(v41)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = v53 << 6;
      v43 = v53 + 1;
      v44 = (v47 + 8 * v53);
      while (v43 < (v8 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_24E6586A8(v54, v52, 0);
          v8 = __clz(__rbit64(v45)) + v42;
          goto LABEL_4;
        }
      }

      result = sub_24E6586A8(v54, v52, 0);
    }

LABEL_4:
    v7 = v51 + 1;
    v5 = v8;
    if (v51 + 1 == v48)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

GameStoreKit::PageFacets::Facet::DisplayType_optional __swiftcall PageFacets.Facet.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PageFacets.Facet.DisplayType.rawValue.getter()
{
  v1 = 0x6553656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C67676F74;
  }
}

uint64_t sub_24EDC615C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6553656C676E6973;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x800000024FA3FA90;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000024FA3FA90;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C67676F74;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6553656C676E6973;
  if (*a2 == 1)
  {
    v5 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

void sub_24EDC6278(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x6553656C676E6973;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000024FA3FA90;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EDC62E4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EDC6394(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EDC6430()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t PageFacets.Facet.Option.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.Option.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.Option.systemImageName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.Option.metricsValue.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PageFacets.Facet.Option.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v52 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v19 = v18;
  v20 = *(v6 + 8);
  v50 = v5;
  v20(v16, v5);
  v49 = v19;
  if (v19)
  {
    v21 = v52;
    v47 = v17;
    sub_24F928398();
    v23 = sub_24EDC6964(v22);
    v45 = v24;
    v46 = v23;
    v25 = v50;
    v20(v13, v50);
    sub_24F928398();
    v27 = sub_24EDC6964(v26);
    v44 = v28;
    v20(v10, v25);
    v29 = v48;
    sub_24F928398();
    v31 = sub_24EDC6964(v30);
    v33 = v32;
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v51, v34);
    v20(v21, v25);
    result = (v20)(v29, v25);
    v36 = v45;
    *a3 = v46;
    a3[1] = v36;
    v37 = v49;
    a3[2] = v47;
    a3[3] = v37;
    v38 = v44;
    a3[4] = v27;
    a3[5] = v38;
    a3[6] = v31;
    a3[7] = v33;
  }

  else
  {
    v39 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v40 = MEMORY[0x277D84F90];
    *v41 = 0x656C746974;
    v41[1] = 0xE500000000000000;
    v41[2] = &type metadata for PageFacets.Facet;
    v41[3] = v40;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22540], v39);
    swift_willThrow();
    v42 = sub_24F9285B8();
    (*(*(v42 - 8) + 8))(v51, v42);
    return (v20)(v52, v50);
  }

  return result;
}

uint64_t sub_24EDC6964(__n128 a1)
{
  sub_24F928368();
  if (v6)
  {
    sub_24E612B0C(&v5, v7);
    sub_24E643A9C(v7, &v5);
    if (swift_dynamicCast())
    {
      if (v4)
      {
        v1 = 1702195828;
      }

      else
      {
        v1 = 0x65736C6166;
      }

      goto LABEL_10;
    }

    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v2 = [v4 stringValue];
      v1 = sub_24F92B0D8();

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(&v5);
      return v1;
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
    if (swift_dynamicCast())
    {
      v1 = v4;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    sub_24E601704(&v5, &qword_27F2129B0, &unk_24F945320);
  }

  return 0;
}

void __swiftcall PageFacets.Facet.Option.init(value:title:systemImageName:metricsValue:)(GameStoreKit::PageFacets::Facet::Option *__return_ptr retstr, Swift::String_optional value, Swift::String title, Swift::String_optional systemImageName, Swift::String_optional metricsValue)
{
  retstr->value = value;
  retstr->title = title;
  retstr->systemImageName = systemImageName;
  retstr->metricsValue = metricsValue;
}

uint64_t sub_24EDC6AF8()
{
  v1 = 0x65756C6176;
  v2 = 0x6D496D6574737973;
  if (*v0 != 2)
  {
    v2 = 0x567363697274656DLL;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EDC6B80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EDCB4B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EDC6BA8(uint64_t a1)
{
  v2 = sub_24EDCB04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDC6BE4(uint64_t a1)
{
  v2 = sub_24EDCB04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageFacets.Facet.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCC8, &qword_24F99EA30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDCB04C();
  sub_24F92D128();
  v16 = 0;
  v10 = v12[7];
  sub_24F92CCA8();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_24F92CD08();
  v14 = 2;
  sub_24F92CCA8();
  v13 = 3;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PageFacets.Facet.Option.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[7];
  if (v1[1])
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();
  if (!v2)
  {
    sub_24F92D088();
    if (v3)
    {
      goto LABEL_6;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v3)
  {
    return sub_24F92D088();
  }

LABEL_6:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t PageFacets.Facet.Option.hashValue.getter()
{
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t PageFacets.Facet.Option.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCD8, &qword_24F99EA38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDCB04C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_24F92CBC8();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_24F92CC28();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_24F92CBC8();
  v25 = v13;
  v33 = 3;
  v14 = sub_24F92CBC8();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_24E8056D8(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_24E805734(v32);
}

uint64_t sub_24EDC7260()
{
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC72A4()
{
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)(v1);
  return sub_24F92D0B8();
}

double PageFacets.Facet.init(id:parameterName:title:displayType:options:defaultOptions:displayOptionsInline:showsSelectedOptions:isHiddenFromMenu:metricsParameterName:clickAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *a7;
  result = 0.0;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 48) = v16;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = a11;
  *(a9 + 89) = a12;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 90) = a13;
  *(a9 + 96) = a16;
  return result;
}

uint64_t PageFacets.Facet.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a2;
  v119 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v114 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v104 - v7;
  v9 = sub_24F92AC28();
  v123 = *(v9 - 8);
  v124 = v9;
  MEMORY[0x28223BE20](v9);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v122 = &v104 - v12;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v118 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v116 = &v104 - v17;
  MEMORY[0x28223BE20](v18);
  v115 = &v104 - v19;
  MEMORY[0x28223BE20](v20);
  v113 = &v104 - v21;
  MEMORY[0x28223BE20](v22);
  v120 = &v104 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v104 - v25;
  MEMORY[0x28223BE20](v27);
  v125 = &v104 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v104 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v104 - v33;
  sub_24F928398();
  v117 = sub_24F928348();
  v36 = v35;
  v38 = v14 + 8;
  v37 = *(v14 + 8);
  v37(v34, v13);
  v126 = v36;
  if (!v36)
  {
    v42 = v37;
    v43 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v45 = v47;
    v48 = MEMORY[0x277D84F90];
    *v47 = 25705;
    v47[1] = 0xE200000000000000;
    v47[2] = &type metadata for PageFacets.Facet;
    v47[3] = v48;
    goto LABEL_6;
  }

  v127 = v38;
  sub_24F928398();
  v111 = sub_24F928348();
  v40 = v39;
  v37(v31, v13);
  if (!v40)
  {

    v49 = v37;
    v50 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v52 = v51;
    v53 = MEMORY[0x277D84F90];
    *v51 = 0x656C746974;
    v54 = 0xE500000000000000;
LABEL_10:
    v51[1] = v54;
    v51[2] = &type metadata for PageFacets.Facet;
    v51[3] = v53;
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D22540], v50);
    swift_willThrow();
    v49(a1, v13);
    goto LABEL_11;
  }

  v41 = v125;
  sub_24F928398();
  sub_24EDCB0A0();
  sub_24F928248();
  v37(v41, v13);
  if (v130 == 3)
  {

    v42 = v37;
    v43 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v45 = v44;
    v46 = MEMORY[0x277D84F90];
    *v44 = 0x5479616C70736964;
    v44[1] = 0xEB00000000657079;
    v44[2] = &type metadata for PageFacets.Facet;
    v44[3] = v46;
LABEL_6:
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D22540], v43);
    swift_willThrow();
    v42(a1, v13);
LABEL_11:
    v57 = v128;
    v58 = sub_24F9285B8();
    return (*(*(v58 - 8) + 8))(v57, v58);
  }

  v129 = v130;
  sub_24F928398();
  sub_24F9282B8();
  v37(v26, v13);
  v56 = v123;
  v55 = v124;
  v108 = *(v123 + 48);
  if (v108(v8, 1, v124) == 1)
  {

    sub_24E601704(v8, &qword_27F2213B0, &qword_24F965EC0);
    v49 = v37;
    v50 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v52 = v51;
    v53 = MEMORY[0x277D84F90];
    *v51 = 0x736E6F6974706FLL;
    v54 = 0xE700000000000000;
    goto LABEL_10;
  }

  v109 = v13;
  v60 = v56 + 32;
  v61 = *(v56 + 32);
  v62 = v122;
  v107 = v60;
  v106 = v61;
  v63 = v61(v122, v8, v55);
  v110 = a1;
  MEMORY[0x28223BE20](v63);
  *(&v104 - 2) = v128;
  v64 = sub_24F92ABB8();
  v65 = v64;
  v66 = v110;
  if (v129 && !*(v64 + 16))
  {

    v81 = v37;
    v82 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v83 = MEMORY[0x277D84F90];
    *v84 = 0x736E6F6974706FLL;
    v84[1] = 0xE700000000000000;
    v84[2] = &type metadata for PageFacets.Facet;
    v84[3] = v83;
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D22540], v82);
    swift_willThrow();
    v81(v66, v109);
    goto LABEL_20;
  }

  v121 = v40;
  v67 = v120;
  sub_24F928398();
  v105 = sub_24F928348();
  v69 = v68;
  v70 = v109;
  v37(v67, v109);
  v71 = v37;
  v120 = v69;
  if (!v69)
  {

    v78 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v79 = MEMORY[0x277D84F90];
    strcpy(v80, "parameterName");
    *(v80 + 7) = -4864;
    *(v80 + 2) = &type metadata for PageFacets.Facet;
    *(v80 + 3) = v79;
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D22540], v78);
    swift_willThrow();
    v71(v110, v70);
LABEL_20:
    (*(v123 + 8))(v62, v124);
    goto LABEL_11;
  }

  v104 = v65;
  v72 = v113;
  sub_24F928398();
  v73 = v114;
  sub_24F9282B8();
  v37(v72, v70);
  v74 = v124;
  v75 = v108(v73, 1, v124);
  v76 = v128;
  v77 = v71;
  if (v75 == 1)
  {
    sub_24E601704(v73, &qword_27F2213B0, &qword_24F965EC0);
    v114 = MEMORY[0x277D84FA0];
  }

  else
  {
    v85 = v112;
    v86 = v106(v112, v73, v74);
    MEMORY[0x28223BE20](v86);
    *(&v104 - 2) = v76;
    v87 = sub_24F92ABB8();
    v114 = sub_24F45D748(v87);

    (*(v123 + 8))(v85, v74);
  }

  v88 = v115;
  v89 = v110;
  sub_24F928398();
  LODWORD(v113) = sub_24F928278();
  v90 = v109;
  v77(v88, v109);
  v91 = v116;
  sub_24F928398();
  LODWORD(v115) = sub_24F928278();
  v77(v91, v90);
  v92 = v118;
  sub_24F928398();
  LODWORD(v116) = sub_24F928278();
  v77(v92, v90);
  v93 = v125;
  sub_24F928398();
  v118 = sub_24F928348();
  v112 = v94;
  v77(v93, v90);
  type metadata accessor for Action(0);
  sub_24F928398();
  v95 = v128;
  v96 = static Action.tryToMakeInstance(byDeserializing:using:)(v93, v128);
  v77(v89, v90);
  v77(v93, v90);
  (*(v123 + 8))(v122, v124);
  v97 = v119;
  *(v119 + 120) = 0u;
  *(v97 + 104) = 0u;
  v98 = v126;
  *v97 = v117;
  *(v97 + 8) = v98;
  v99 = v121;
  *(v97 + 32) = v111;
  *(v97 + 40) = v99;
  v100 = v120;
  *(v97 + 16) = v105;
  *(v97 + 24) = v100;
  *(v97 + 48) = v129;
  v101 = v114;
  *(v97 + 56) = v104;
  *(v97 + 64) = v101;
  *(v97 + 88) = v115 & 1;
  *(v97 + 89) = v113 & 1;
  v102 = v112;
  *(v97 + 72) = v118;
  *(v97 + 80) = v102;
  *(v97 + 90) = v116 & 1;
  *(v97 + 96) = v96;
  v103 = sub_24F9285B8();
  return (*(*(v103 - 8) + 8))(v95, v103);
}

uint64_t sub_24EDC813C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_24EDCB6C8();
  return sub_24F929548();
}

uint64_t PageFacets.Facet.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.parameterName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.metricsParameterName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PageFacets.Facet.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();

  sub_24EDC9948(a1, *(v2 + 64));
  sub_24EA1DCB8(a1, *(v2 + 56));
  sub_24F92D088();
  sub_24F92D088();
  return sub_24F92D088();
}

uint64_t PageFacets.Facet.hashValue.getter()
{
  sub_24F92D068();
  PageFacets.Facet.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8534()
{
  sub_24F92D068();
  PageFacets.Facet.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8578()
{
  sub_24F92D068();
  PageFacets.Facet.hash(into:)(v1);
  return sub_24F92D0B8();
}

GameStoreKit::PageFacets::FacetGroup __swiftcall PageFacets.FacetGroup.init(title:facets:)(Swift::String_optional title, Swift::OpaquePointer facets)
{
  *v2 = title;
  *(v2 + 16) = facets;
  result.title = title;
  result.facets = facets;
  return result;
}

uint64_t PageFacets.FacetGroup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v34 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v15 = *(v6 + 8);
  v33 = v5;
  v15(v11, v5);
  v16 = sub_24F92AC28();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v14, 1, v16);
  v35 = a2;
  if (v18 != 1)
  {
    MEMORY[0x28223BE20](v18);
    *(&v31 - 2) = a2;
    v19 = sub_24F92ABB8();
    (*(v17 + 8))(v14, v16);
    if (*(v19 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:

    v27 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v28 = 0x737465636166;
    v28[1] = 0xE600000000000000;
    v28[2] = &type metadata for PageFacets.FacetGroup;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v15(v34, v33);
    goto LABEL_6;
  }

  sub_24E601704(v14, &qword_27F2213B0, &qword_24F965EC0);
  v19 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = v34;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = v20;
  v25 = v33;
  v15(v24, v33);
  v15(v8, v25);
  v26 = v32;
  *v32 = v21;
  v26[1] = v23;
  v26[2] = v19;
LABEL_6:
  v29 = sub_24F9285B8();
  return (*(*(v29 - 8) + 8))(v35, v29);
}

uint64_t sub_24EDC89E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_24EDCB674();
  return sub_24F929548();
}

uint64_t PageFacets.FacetGroup.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.FacetGroup.facets.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PageFacets.FacetGroup.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  return sub_24EA1DE28(a1, v3);
}

uint64_t static PageFacets.FacetGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_24EA17DD8(v4, v6);
}

uint64_t PageFacets.FacetGroup.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24EA1DE28(v4, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8D78()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24EA1DE28(v4, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8DF8(__int128 *a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  return sub_24EA1DE28(a1, v3);
}

uint64_t sub_24EDC8E78()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24EA1DE28(v4, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8F0C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_24EA17DD8(v4, v6);
}

GameStoreKit::PageFacets __swiftcall PageFacets.init(facetGroups:resetButtonTitle:allowsResetButton:)(Swift::OpaquePointer facetGroups, Swift::String_optional resetButtonTitle, Swift::Bool allowsResetButton)
{
  countAndFlagsBits = resetButtonTitle.value._countAndFlagsBits;
  rawValue = facetGroups._rawValue;
  v7 = v3;
  if (!resetButtonTitle.value._object)
  {
    resetButtonTitle.value._countAndFlagsBits = 0x800000024FA5DD50;
    v8 = 0xD00000000000001DLL;
    v9 = 0xE000000000000000;
    v10 = localizedString(_:comment:)(*(&resetButtonTitle - 8), *&resetButtonTitle.value._object);
    resetButtonTitle.value._countAndFlagsBits = v10._object;
    facetGroups._rawValue = v10._countAndFlagsBits;
    countAndFlagsBits = v10._countAndFlagsBits;
    resetButtonTitle.value._object = v10._object;
  }

  *v7 = rawValue;
  *(v7 + 8) = countAndFlagsBits;
  *(v7 + 16) = resetButtonTitle.value._object;
  *(v7 + 24) = allowsResetButton;
  result.resetButtonTitle = resetButtonTitle;
  result.facetGroups = facetGroups;
  result.allowsResetButton = allowsResetButton;
  return result;
}

uint64_t PageFacets.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v33 - v15;
  v36 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v17 = *(v5 + 8);
  v17(v13, v4);
  v18 = sub_24F92AC28();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v16, 1, v18);
  if (v20 == 1)
  {
    sub_24E601704(v16, &qword_27F2213B0, &qword_24F965EC0);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v33[1] = v33;
    MEMORY[0x28223BE20](v20);
    v33[-2] = v35;
    v21 = sub_24F92ABB8();
    (*(v19 + 8))(v16, v18);
  }

  sub_24F928398();
  countAndFlagsBits = sub_24F928348();
  object = v23;
  v17(v10, v4);
  sub_24F928398();
  v25 = sub_24F928278();
  v17(v7, v4);
  if (!object)
  {
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v26._object = 0x800000024FA5DD50;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = localizedString(_:comment:)(v26, v27);
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;
  }

  v29 = v35;
  v17(v36, v4);
  v30 = v34;
  *v34 = v21;
  v30[1] = countAndFlagsBits;
  v30[2] = object;
  *(v30 + 24) = v25 & 1;
  v31 = sub_24F9285B8();
  return (*(*(v31 - 8) + 8))(v29, v31);
}

uint64_t sub_24EDC93B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_24EDCB620();
  return sub_24F929548();
}

uint64_t PageFacets.facetGroups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PageFacets.resetButtonTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PageFacets.hash(into:)(__int128 *a1)
{
  v2 = v1[2];
  sub_24EA1DF78(a1, *v1);
  sub_24F92D088();
  if (v2)
  {
    sub_24F92B218();
  }

  return sub_24F92D088();
}

uint64_t static PageFacets.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_24EA1782C(*a1, *a2);
  if (v8)
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_24F92CE08() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_24EDC96E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_24EA1782C(*a1, *a2);
  if (v8)
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_24F92CE08() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

void sub_24EDC97AC(__int128 *a1, uint64_t a2)
{
  sub_24F92D0B8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_9:
    sub_24F92D068();
    v5 &= v5 - 1;
    sub_24F92B218();

    v7 ^= sub_24F92D0B8();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x253052A00](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_24EDC9948(__int128 *a1, uint64_t a2)
{
  sub_24F92D0B8();
  v16 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
    v17 = v8;
LABEL_12:
    v12 = (*(v16 + 48) + ((v9 << 12) | (__clz(__rbit64(v6)) << 6)));
    v13 = v12[1];
    v14 = v12[5];
    v15 = v12[7];
    sub_24F92D068();
    sub_24F92D088();

    if (v13)
    {

      sub_24F92B218();
    }

    sub_24F92B218();
    if (v14)
    {
      sub_24F92D088();
      sub_24F92B218();
      if (!v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_24F92D088();
      if (!v15)
      {
LABEL_4:
        sub_24F92D088();
        goto LABEL_5;
      }
    }

    sub_24F92D088();
    sub_24F92B218();
LABEL_5:
    v6 &= v6 - 1;
    v10 = sub_24F92D0B8();

    v8 = v10 ^ v17;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      MEMORY[0x253052A00](v8);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v17 = v8;
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_24EDC9B90(__int128 *a1, uint64_t a2)
{
  sub_24F92D0B8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x253052A00](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_24F92D068();

        sub_24F92B218();
        v10 = sub_24F92D0B8();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t _s12GameStoreKit10PageFacetsV5FacetV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_39;
  }

  v5 = a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
  if (!v5 && (sub_24F92CE08() & 1) == 0 || (a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = 0x6553656C676E6973;
  v7 = 0xEF6E6F697463656CLL;
  v8 = 0x800000024FA3FA90;
  if (*(a1 + 48) != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x800000024FA3FA90;
  }

  if (*(a1 + 48))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*(a1 + 48))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = 0x6553656C676E6973;
  if (*(a2 + 48) == 1)
  {
    v8 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v11 = 0xD000000000000011;
  }

  if (*(a2 + 48))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x656C67676F74;
  }

  if (*(a2 + 48))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v9 == v12 && v10 == v13)
  {
  }

  else
  {
    v14 = sub_24F92CE08();

    if ((v14 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if ((sub_24EDD4178(a1[8], *(a2 + 64)) & 1) != 0 && (sub_24EA169B8(a1[7], *(a2 + 56)) & 1) != 0 && *(a1 + 88) == *(a2 + 88) && *(a1 + 89) == *(a2 + 89))
  {
    v15 = *(a1 + 90) ^ *(a2 + 90) ^ 1;
    return v15 & 1;
  }

LABEL_39:
  v15 = 0;
  return v15 & 1;
}

uint64_t _s12GameStoreKit10PageFacetsV5FacetV6OptionV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[7];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v16 = a2[6];
    v17 = a1[6];
    if ((*a1 != *a2 || v3 != v9) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = a2[6];
    v17 = a1[6];
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 != v10 || v6 != v11) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (v5 != v12 || v7 != v13) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (v14 && (v17 == v16 && v8 == v14 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

void *sub_24EDCA028(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_20:
    v15 = sub_24E609724(MEMORY[0x277D84F90]);
    v16 = *(v5 + 2);
    if (!v16)
    {
LABEL_58:

      return v15;
    }

    v17 = 0;
    v18 = (v5 + 32);
    v19 = MEMORY[0x277D84FA0];
    while (1)
    {
      if (v17 >= *(v5 + 2))
      {
        goto LABEL_62;
      }

      sub_24E772674(v18, v65);
      if (!v66)
      {
        break;
      }

      if (v66 != 1 || (v20 = v67, !*(v67 + 16)))
      {
        sub_24E772674(v65, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v15;
        v37 = sub_24E76D6EC(v64);
        v39 = v15[2];
        v40 = (v38 & 1) == 0;
        v13 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v13)
        {
          goto LABEL_64;
        }

        v42 = v38;
        if (v15[3] < v41)
        {
          sub_24E899498(v41, isUniquelyReferenced_nonNull_native);
          v37 = sub_24E76D6EC(v64);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_70;
          }

          goto LABEL_41;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_41:
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v57 = v37;
          sub_24E8ADDC8();
          v37 = v57;
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
LABEL_42:
            v15[(v37 >> 6) + 8] |= 1 << v37;
            v51 = v37;
            sub_24E772674(v64, v15[6] + 136 * v37);
            *(v15[7] + 8 * v51) = v19;
            sub_24E7726D0(v64);
            v52 = v15[2];
            v13 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v13)
            {
              goto LABEL_67;
            }

LABEL_48:
            v15[2] = v53;
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A678, &qword_24F9FAAF0);
      inited = swift_initStackObject();
      inited[1] = xmmword_24F93DE60;
      v22 = v20[2];
      v23 = v20[3];
      v24 = v20[5];
      v62 = v20[4];
      v25 = v62;
      v63 = v24;
      v61[0] = v22;
      v61[1] = v23;
      v26 = v20[3];
      inited[2] = v20[2];
      inited[3] = v26;
      inited[4] = v25;
      inited[5] = v24;
      sub_24E8056D8(v61, v64);
      v27 = sub_24F45D748(inited);
      swift_setDeallocating();
      sub_24E805734((inited + 2));
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_24E76D6EC(v65);
      v31 = v15[2];
      v32 = (v30 & 1) == 0;
      v13 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v13)
      {
        goto LABEL_68;
      }

      v34 = v30;
      if (v15[3] >= v33)
      {
        if ((v28 & 1) == 0)
        {
          v59 = v29;
          sub_24E8ADDC8();
          v29 = v59;
        }
      }

      else
      {
        sub_24E899498(v33, v28);
        v29 = sub_24E76D6EC(v65);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_70;
        }
      }

      if (v34)
      {
        *(v15[7] + 8 * v29) = v27;
      }

      else
      {
        v56 = v29;
        sub_24E772674(v65, v64);
        sub_24EC2579C(v56, v64, v27, v15);
      }

LABEL_23:
      sub_24E7726D0(v65);
      ++v17;
      v18 += 136;
      if (v16 == v17)
      {
        goto LABEL_58;
      }
    }

    sub_24E772674(v65, v64);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v61[0] = v15;
    v37 = sub_24E76D6EC(v64);
    v46 = v15[2];
    v47 = (v45 & 1) == 0;
    v13 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v13)
    {
      goto LABEL_66;
    }

    v49 = v45;
    if (v15[3] >= v48)
    {
      if ((v44 & 1) == 0)
      {
        v58 = v37;
        sub_24E8ADDC8();
        v37 = v58;
        v15 = *&v61[0];
        if ((v49 & 1) == 0)
        {
LABEL_47:
          v15[(v37 >> 6) + 8] |= 1 << v37;
          v54 = v37;
          sub_24E772674(v64, v15[6] + 136 * v37);
          *(v15[7] + 8 * v54) = v19;
          sub_24E7726D0(v64);
          v55 = v15[2];
          v13 = __OFADD__(v55, 1);
          v53 = v55 + 1;
          if (v13)
          {
            goto LABEL_69;
          }

          goto LABEL_48;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_24E899498(v48, v44);
      v37 = sub_24E76D6EC(v64);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_70;
      }
    }

    v15 = *&v61[0];
    if ((v49 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_22:
    *(v15[7] + 8 * v37) = v19;

    sub_24E7726D0(v64);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x277D84F90];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_60;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    if (v10 && v9 <= *(v5 + 3) >> 1)
    {
      if (!*(v6 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_24E6165F4(v10, v11, 1, v5);
      if (!*(v6 + 16))
      {
LABEL_3:

        if (v7)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }
    }

    if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
    {
      goto LABEL_63;
    }

    swift_arrayInitWithCopy();

    if (v7)
    {
      v12 = *(v5 + 2);
      v13 = __OFADD__(v12, v7);
      v14 = v12 + v7;
      if (v13)
      {
        goto LABEL_65;
      }

      *(v5 + 2) = v14;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}