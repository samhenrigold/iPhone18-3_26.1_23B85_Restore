uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.unsafeMutableAddressor()
{
  if (qword_1006005F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.unsafeMutableAddressor()
{
  if (qword_1006005F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static AccessibilityIdentifier.named(_:)(uint64_t a1, void *a2)
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v5 = qword_1006091F0;

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  sub_1004BC024(v6);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_1004BC024(v7);

  return v5;
}

void sub_1002797E0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_100279844();
  v5 = v4;

  qword_1006091F0 = v3;
  *algn_1006091F8 = v5;
}

uint64_t sub_100279844()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v25[-v5];
  v28 = 0;
  v29 = 0xE000000000000000;
  v7 = [v1 bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1004BBE64();
    v11 = v10;

    v26 = 46;
    v27 = 0xE100000000000000;
    __chkstk_darwin();
    *&v25[-16] = &v26;
    if (sub_10028A7F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000E617C, &v25[-32], v9, v11, v25)[2])
    {

      goto LABEL_12;
    }
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  v12 = [v1 executableURL];
  if (v12)
  {
    v13 = v12;
    sub_1004B6A94();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_1004B6B04();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v3, v14, 1, v15);
  sub_10000F708(v3, v6);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_10000F7E0(v6);
    v17 = 0xE500000000000000;
    v18._countAndFlagsBits = 0x636973754DLL;
  }

  else
  {
    v19 = sub_1004B6A24();
    v17 = v20;
    (*(v16 + 8))(v6, v15);
    v18._countAndFlagsBits = v19;
  }

  v18._object = v17;
  sub_1004BC024(v18);

  sub_1004BD1A4();
LABEL_12:
  v21 = sub_1004BBF64();
  v23 = v22;

  v30._countAndFlagsBits = v21;
  v30._object = v23;
  sub_1004BC024(v30);

  return v28;
}

void sub_100279B48()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6B726F77747241;
  v3._object = 0xE700000000000000;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.artwork = v0;
  *algn_100617768 = v1;
  qword_100617770 = 0x6B726F77747241;
  unk_100617778 = 0xE700000000000000;
}

uint64_t *AccessibilityIdentifier.artwork.unsafeMutableAddressor()
{
  if (qword_100600150 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artwork;
}

uint64_t static AccessibilityIdentifier.artwork.getter()
{
  if (qword_100600150 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artwork;

  return v0;
}

void sub_100279CEC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000100506660;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.doneButton = v0;
  *algn_100617788 = v1;
  qword_100617790 = 0xD00000000000001ALL;
  unk_100617798 = 0x8000000100506660;
}

uint64_t *AccessibilityIdentifier.doneButton.unsafeMutableAddressor()
{
  if (qword_100600158 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.doneButton;
}

uint64_t static AccessibilityIdentifier.doneButton.getter()
{
  if (qword_100600158 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.doneButton;

  return v0;
}

void sub_100279E98()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x747475426B636142;
  v3._object = 0xEA00000000006E6FLL;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.backButton = v0;
  *algn_1006177A8 = v1;
  qword_1006177B0 = 0x747475426B636142;
  unk_1006177B8 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.backButton.unsafeMutableAddressor()
{
  if (qword_100600160 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.backButton;
}

uint64_t static AccessibilityIdentifier.backButton.getter()
{
  if (qword_100600160 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.backButton;

  return v0;
}

void sub_10027A044()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 1701998413;
  v3._object = 0xE400000000000000;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.moreButton = v0;
  *algn_1006177C8 = v1;
  qword_1006177D0 = 1701998413;
  unk_1006177D8 = 0xE400000000000000;
}

uint64_t *AccessibilityIdentifier.moreButton.unsafeMutableAddressor()
{
  if (qword_100600168 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.moreButton;
}

uint64_t static AccessibilityIdentifier.moreButton.getter()
{
  if (qword_100600168 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.moreButton;

  return v0;
}

void sub_10027A1E4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x8000000100506640;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.calendarButton = v0;
  *algn_1006177E8 = v1;
  qword_1006177F0 = 0xD000000000000014;
  unk_1006177F8 = 0x8000000100506640;
}

uint64_t *AccessibilityIdentifier.calendarButton.unsafeMutableAddressor()
{
  if (qword_100600170 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.calendarButton;
}

uint64_t static AccessibilityIdentifier.calendarButton.getter()
{
  if (qword_100600170 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.calendarButton;

  return v0;
}

void sub_10027A390()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x65486C6961746544;
  v3._object = 0xEC00000072656461;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.detailHeader = v0;
  *algn_100617808 = v1;
  strcpy(&qword_100617810, "DetailHeader");
  unk_10061781D = 0;
  unk_10061781E = -5120;
}

uint64_t *AccessibilityIdentifier.detailHeader.unsafeMutableAddressor()
{
  if (qword_100600178 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeader;
}

uint64_t static AccessibilityIdentifier.detailHeader.getter()
{
  if (qword_100600178 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeader;

  return v0;
}

void sub_10027A53C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000100506620;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.detailHeaderTitle = v0;
  *algn_100617828 = v1;
  qword_100617830 = 0xD000000000000012;
  unk_100617838 = 0x8000000100506620;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_100600180 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitle.getter()
{
  if (qword_100600180 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitle;

  return v0;
}

void sub_10027A6E8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000100506600;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.detailHeaderTitleFavorited = v0;
  *algn_100617848 = v1;
  qword_100617850 = 0xD00000000000001CLL;
  unk_100617858 = 0x8000000100506600;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor()
{
  if (qword_100600188 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitleFavorited;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitleFavorited.getter()
{
  if (qword_100600188 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitleFavorited;

  return v0;
}

void sub_10027A894()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x80000001005065E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.detailHeaderLabel = v0;
  *algn_100617868 = v1;
  qword_100617870 = 0xD000000000000018;
  unk_100617878 = 0x80000001005065E0;
}

uint64_t *AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor()
{
  if (qword_100600190 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderLabel.getter()
{
  if (qword_100600190 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderLabel;

  return v0;
}

void sub_10027AA40()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x80000001005065C0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.detailHeaderArtistLink = v0;
  *algn_100617888 = v1;
  qword_100617890 = 0xD000000000000017;
  unk_100617898 = 0x80000001005065C0;
}

uint64_t *AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor()
{
  if (qword_100600198 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderArtistLink;
}

uint64_t static AccessibilityIdentifier.detailHeaderArtistLink.getter()
{
  if (qword_100600198 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderArtistLink;

  return v0;
}

void sub_10027ABEC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x80000001005065A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.detailHeaderDescriptionLabel = v0;
  *algn_1006178A8 = v1;
  qword_1006178B0 = 0xD00000000000001DLL;
  unk_1006178B8 = 0x80000001005065A0;
}

uint64_t *AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor()
{
  if (qword_1006001A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderDescriptionLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderDescriptionLabel.getter()
{
  if (qword_1006001A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderDescriptionLabel;

  return v0;
}

void sub_10027AD98()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000100506580;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.detailHeaderMore = v0;
  *algn_1006178C8 = v1;
  qword_1006178D0 = 0xD000000000000011;
  unk_1006178D8 = 0x8000000100506580;
}

uint64_t *AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor()
{
  if (qword_1006001A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderMore;
}

uint64_t static AccessibilityIdentifier.detailHeaderMore.getter()
{
  if (qword_1006001A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderMore;

  return v0;
}

void sub_10027AF44()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100506560;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playIntentButton = v0;
  *algn_1006178E8 = v1;
  qword_1006178F0 = 0xD000000000000015;
  unk_1006178F8 = 0x8000000100506560;
}

uint64_t *AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor()
{
  if (qword_1006001B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playIntentButton;
}

uint64_t static AccessibilityIdentifier.playIntentButton.getter()
{
  if (qword_1006001B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playIntentButton;

  return v0;
}

void sub_10027B0F0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100506540;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.shuffleIntentButton = v0;
  *algn_100617908 = v1;
  qword_100617910 = 0xD000000000000018;
  unk_100617918 = 0x8000000100506540;
}

uint64_t *AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor()
{
  if (qword_1006001B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.shuffleIntentButton;
}

uint64_t static AccessibilityIdentifier.shuffleIntentButton.getter()
{
  if (qword_1006001B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.shuffleIntentButton;

  return v0;
}

void sub_10027B29C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x8000000100506520;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.startSingingIntentButton = v0;
  *algn_100617928 = v1;
  qword_100617930 = 0xD00000000000001DLL;
  unk_100617938 = 0x8000000100506520;
}

uint64_t *AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor()
{
  if (qword_1006001C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.startSingingIntentButton;
}

uint64_t static AccessibilityIdentifier.startSingingIntentButton.getter()
{
  if (qword_1006001C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.startSingingIntentButton;

  return v0;
}

void sub_10027B448()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6C6C6543676E6F53;
  v3._object = 0xE800000000000000;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.songCell = v0;
  *algn_100617948 = v1;
  qword_100617950 = 0x6C6C6543676E6F53;
  unk_100617958 = 0xE800000000000000;
}

uint64_t *AccessibilityIdentifier.songCell.unsafeMutableAddressor()
{
  if (qword_1006001C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.songCell;
}

uint64_t static AccessibilityIdentifier.songCell.getter()
{
  if (qword_1006001C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.songCell;

  return v0;
}

void sub_10027B5EC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x73694C6B63617254;
  v3._object = 0xED00006C6C654374;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCell = v0;
  *algn_100617968 = v1;
  strcpy(&qword_100617970, "TrackListCell");
  unk_10061797E = -4864;
}

uint64_t *AccessibilityIdentifier.trackListCell.unsafeMutableAddressor()
{
  if (qword_1006001D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCell;
}

uint64_t static AccessibilityIdentifier.trackListCell.getter()
{
  if (qword_1006001D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCell;

  return v0;
}

void sub_10027B79C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000100506500;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListEmptyCell = v0;
  *algn_100617988 = v1;
  qword_100617990 = 0xD000000000000013;
  unk_100617998 = 0x8000000100506500;
}

uint64_t *AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor()
{
  if (qword_1006001D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListEmptyCell;
}

uint64_t static AccessibilityIdentifier.trackListEmptyCell.getter()
{
  if (qword_1006001D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListEmptyCell;

  return v0;
}

void sub_10027B948()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x80000001005064E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellArtwork = v0;
  *algn_1006179A8 = v1;
  qword_1006179B0 = 0xD000000000000015;
  unk_1006179B8 = 0x80000001005064E0;
}

uint64_t *AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006001E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtwork;
}

uint64_t static AccessibilityIdentifier.trackListCellArtwork.getter()
{
  if (qword_1006001E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtwork;

  return v0;
}

void sub_10027BAF4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x80000001005064C0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellFavoriteBadge = v0;
  *algn_1006179C8 = v1;
  qword_1006179D0 = 0xD00000000000001CLL;
  unk_1006179D8 = 0x80000001005064C0;
}

uint64_t *AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor()
{
  if (qword_1006001E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellFavoriteBadge.getter()
{
  if (qword_1006001E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellFavoriteBadge;

  return v0;
}

void sub_10027BCA0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x80000001005064A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellPopularBadge = v0;
  *algn_1006179E8 = v1;
  qword_1006179F0 = 0xD00000000000001BLL;
  unk_1006179F8 = 0x80000001005064A0;
}

uint64_t *AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor()
{
  if (qword_1006001F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellPopularBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellPopularBadge.getter()
{
  if (qword_1006001F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellPopularBadge;

  return v0;
}

void sub_10027BE4C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100506480;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellTrackNumber = v0;
  *algn_100617A08 = v1;
  qword_100617A10 = 0xD000000000000019;
  unk_100617A18 = 0x8000000100506480;
}

uint64_t *AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor()
{
  if (qword_1006001F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTrackNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellTrackNumber.getter()
{
  if (qword_1006001F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTrackNumber;

  return v0;
}

void sub_10027BFF8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100506460;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellChartNumber = v0;
  *algn_100617A28 = v1;
  qword_100617A30 = 0xD000000000000019;
  unk_100617A38 = 0x8000000100506460;
}

uint64_t *AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor()
{
  if (qword_100600200 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellChartNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellChartNumber.getter()
{
  if (qword_100600200 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellChartNumber;

  return v0;
}

void sub_10027C1A4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000100506440;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellVideoIcon = v0;
  *algn_100617A48 = v1;
  qword_100617A50 = 0xD000000000000017;
  unk_100617A58 = 0x8000000100506440;
}

uint64_t *AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor()
{
  if (qword_100600208 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellVideoIcon;
}

uint64_t static AccessibilityIdentifier.trackListCellVideoIcon.getter()
{
  if (qword_100600208 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellVideoIcon;

  return v0;
}

void sub_10027C350()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000100506420;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellTitle = v0;
  *algn_100617A68 = v1;
  qword_100617A70 = 0xD000000000000013;
  unk_100617A78 = 0x8000000100506420;
}

uint64_t *AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor()
{
  if (qword_100600210 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTitle;
}

uint64_t static AccessibilityIdentifier.trackListCellTitle.getter()
{
  if (qword_100600210 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTitle;

  return v0;
}

void sub_10027C4FC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x8000000100506400;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellArtist = v0;
  *algn_100617A88 = v1;
  qword_100617A90 = 0xD000000000000014;
  unk_100617A98 = 0x8000000100506400;
}

uint64_t *AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor()
{
  if (qword_100600218 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtist;
}

uint64_t static AccessibilityIdentifier.trackListCellArtist.getter()
{
  if (qword_100600218 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtist;

  return v0;
}

void sub_10027C6A8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x80000001005063E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellAlbum = v0;
  *algn_100617AA8 = v1;
  qword_100617AB0 = 0xD000000000000013;
  unk_100617AB8 = 0x80000001005063E0;
}

uint64_t *AccessibilityIdentifier.trackListCellAlbum.unsafeMutableAddressor()
{
  if (qword_100600220 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellAlbum;
}

uint64_t static AccessibilityIdentifier.trackListCellAlbum.getter()
{
  if (qword_100600220 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellAlbum;

  return v0;
}

void sub_10027C854()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x80000001005063C0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCellDuration = v0;
  *algn_100617AC8 = v1;
  qword_100617AD0 = 0xD000000000000016;
  unk_100617AD8 = 0x80000001005063C0;
}

uint64_t *AccessibilityIdentifier.trackListCellDuration.unsafeMutableAddressor()
{
  if (qword_100600228 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellDuration;
}

uint64_t static AccessibilityIdentifier.trackListCellDuration.getter()
{
  if (qword_100600228 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellDuration;

  return v0;
}

void sub_10027CA00()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x80000001005063A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListReleaseDate = v0;
  *algn_100617AE8 = v1;
  qword_100617AF0 = 0xD000000000000014;
  unk_100617AF8 = 0x80000001005063A0;
}

uint64_t *AccessibilityIdentifier.trackListReleaseDate.unsafeMutableAddressor()
{
  if (qword_100600230 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListReleaseDate;
}

uint64_t static AccessibilityIdentifier.trackListReleaseDate.getter()
{
  if (qword_100600230 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListReleaseDate;

  return v0;
}

void sub_10027CBAC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100506380;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCountAndDuration = v0;
  *algn_100617B08 = v1;
  qword_100617B10 = 0xD000000000000019;
  unk_100617B18 = 0x8000000100506380;
}

uint64_t *AccessibilityIdentifier.trackListCountAndDuration.unsafeMutableAddressor()
{
  if (qword_100600238 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCountAndDuration;
}

uint64_t static AccessibilityIdentifier.trackListCountAndDuration.getter()
{
  if (qword_100600238 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCountAndDuration;

  return v0;
}

void sub_10027CD58()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000100506360;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListCopyright = v0;
  *algn_100617B28 = v1;
  qword_100617B30 = 0xD000000000000012;
  unk_100617B38 = 0x8000000100506360;
}

uint64_t *AccessibilityIdentifier.trackListCopyright.unsafeMutableAddressor()
{
  if (qword_100600240 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCopyright;
}

uint64_t static AccessibilityIdentifier.trackListCopyright.getter()
{
  if (qword_100600240 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCopyright;

  return v0;
}

void sub_10027CF04()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x8000000100506340;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.trackListRecordLabel = v0;
  *algn_100617B48 = v1;
  qword_100617B50 = 0xD000000000000014;
  unk_100617B58 = 0x8000000100506340;
}

uint64_t *AccessibilityIdentifier.trackListRecordLabel.unsafeMutableAddressor()
{
  if (qword_100600248 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListRecordLabel;
}

uint64_t static AccessibilityIdentifier.trackListRecordLabel.getter()
{
  if (qword_100600248 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListRecordLabel;

  return v0;
}

void sub_10027D0B0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x64616F6C6E776F44;
  v3._object = 0xEE00737574617453;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.downloadStatus = v0;
  *algn_100617B68 = v1;
  strcpy(&qword_100617B70, "DownloadStatus");
  unk_100617B7F = -18;
}

uint64_t *AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor()
{
  if (qword_100600250 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.downloadStatus;
}

uint64_t static AccessibilityIdentifier.downloadStatus.getter()
{
  if (qword_100600250 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.downloadStatus;

  return v0;
}

void sub_10027D260()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100506320;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.lyricsStaticView = v0;
  *algn_100617B88 = v1;
  qword_100617B90 = 0xD000000000000010;
  unk_100617B98 = 0x8000000100506320;
}

uint64_t *AccessibilityIdentifier.lyricsStaticView.unsafeMutableAddressor()
{
  if (qword_100600258 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsStaticView;
}

uint64_t static AccessibilityIdentifier.lyricsStaticView.getter()
{
  if (qword_100600258 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsStaticView;

  return v0;
}

void sub_10027D40C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100506300;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.lyricsSyncedView = v0;
  *algn_100617BA8 = v1;
  qword_100617BB0 = 0xD000000000000010;
  unk_100617BB8 = 0x8000000100506300;
}

uint64_t *AccessibilityIdentifier.lyricsSyncedView.unsafeMutableAddressor()
{
  if (qword_100600260 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsSyncedView;
}

uint64_t static AccessibilityIdentifier.lyricsSyncedView.getter()
{
  if (qword_100600260 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsSyncedView;

  return v0;
}

void sub_10027D5B8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x7474754279616C50;
  v3._object = 0xEA00000000006E6FLL;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playButton = v0;
  *algn_100617BC8 = v1;
  qword_100617BD0 = 0x7474754279616C50;
  unk_100617BD8 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.playButton.unsafeMutableAddressor()
{
  if (qword_100600268 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playButton;
}

uint64_t static AccessibilityIdentifier.playButton.getter()
{
  if (qword_100600268 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playButton;

  return v0;
}

void sub_10027D764()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x7475426573756150;
  v3._object = 0xEB000000006E6F74;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.pauseButton = v0;
  *algn_100617BE8 = v1;
  qword_100617BF0 = 0x7475426573756150;
  unk_100617BF8 = 0xEB000000006E6F74;
}

uint64_t *AccessibilityIdentifier.pauseButton.unsafeMutableAddressor()
{
  if (qword_100600270 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.pauseButton;
}

uint64_t static AccessibilityIdentifier.pauseButton.getter()
{
  if (qword_100600270 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.pauseButton;

  return v0;
}

void sub_10027D910()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x74747542706F7453;
  v3._object = 0xEA00000000006E6FLL;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.stopButton = v0;
  *algn_100617C08 = v1;
  qword_100617C10 = 0x74747542706F7453;
  unk_100617C18 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.stopButton.unsafeMutableAddressor()
{
  if (qword_100600278 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.stopButton;
}

uint64_t static AccessibilityIdentifier.stopButton.getter()
{
  if (qword_100600278 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.stopButton;

  return v0;
}

void sub_10027DABC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x80000001005062E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.skipForwardButton = v0;
  *algn_100617C28 = v1;
  qword_100617C30 = 0xD000000000000011;
  unk_100617C38 = 0x80000001005062E0;
}

uint64_t *AccessibilityIdentifier.skipForwardButton.unsafeMutableAddressor()
{
  if (qword_100600280 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipForwardButton;
}

uint64_t static AccessibilityIdentifier.skipForwardButton.getter()
{
  if (qword_100600280 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipForwardButton;

  return v0;
}

void sub_10027DC68()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x80000001005062C0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.skipBackwardButton = v0;
  *algn_100617C48 = v1;
  qword_100617C50 = 0xD000000000000012;
  unk_100617C58 = 0x80000001005062C0;
}

uint64_t *AccessibilityIdentifier.skipBackwardButton.unsafeMutableAddressor()
{
  if (qword_100600288 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipBackwardButton;
}

uint64_t static AccessibilityIdentifier.skipBackwardButton.getter()
{
  if (qword_100600288 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipBackwardButton;

  return v0;
}

void sub_10027DE14()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x74747542706D754ALL;
  v3._object = 0xEA00000000006E6FLL;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.jumpButton = v0;
  *algn_100617C68 = v1;
  qword_100617C70 = 0x74747542706D754ALL;
  unk_100617C78 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.jumpButton.unsafeMutableAddressor()
{
  if (qword_100600290 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.jumpButton;
}

uint64_t static AccessibilityIdentifier.jumpButton.getter()
{
  if (qword_100600290 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.jumpButton;

  return v0;
}

void sub_10027DFC0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x547972617262694CLL;
  v3._object = 0xEA00000000006261;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTab = v0;
  *algn_100617C88 = v1;
  qword_100617C90 = 0x547972617262694CLL;
  unk_100617C98 = 0xEA00000000006261;
}

uint64_t *AccessibilityIdentifier.libraryTab.unsafeMutableAddressor()
{
  if (qword_100600298 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTab;
}

uint64_t static AccessibilityIdentifier.libraryTab.getter()
{
  if (qword_100600298 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTab;

  return v0;
}

void sub_10027E16C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6F4E6E657473694CLL;
  v3._object = 0xEC00000062615477;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.listenNowTab = v0;
  *algn_100617CA8 = v1;
  strcpy(&qword_100617CB0, "ListenNowTab");
  unk_100617CBD = 0;
  unk_100617CBE = -5120;
}

uint64_t *AccessibilityIdentifier.listenNowTab.unsafeMutableAddressor()
{
  if (qword_1006002A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowTab;
}

uint64_t static AccessibilityIdentifier.listenNowTab.getter()
{
  if (qword_1006002A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowTab;

  return v0;
}

void sub_10027E318()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x61546573776F7242;
  v3._object = 0xE900000000000062;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.browseTab = v0;
  *algn_100617CC8 = v1;
  qword_100617CD0 = 0x61546573776F7242;
  unk_100617CD8 = 0xE900000000000062;
}

uint64_t *AccessibilityIdentifier.browseTab.unsafeMutableAddressor()
{
  if (qword_1006002A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseTab;
}

uint64_t static AccessibilityIdentifier.browseTab.getter()
{
  if (qword_1006002A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseTab;

  return v0;
}

void sub_10027E4C4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6261546F69646152;
  v3._object = 0xE800000000000000;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.radioTab = v0;
  *algn_100617CE8 = v1;
  qword_100617CF0 = 0x6261546F69646152;
  unk_100617CF8 = 0xE800000000000000;
}

uint64_t *AccessibilityIdentifier.radioTab.unsafeMutableAddressor()
{
  if (qword_1006002B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioTab;
}

uint64_t static AccessibilityIdentifier.radioTab.getter()
{
  if (qword_1006002B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioTab;

  return v0;
}

void sub_10027E668()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6154686372616553;
  v3._object = 0xE900000000000062;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.searchTab = v0;
  *algn_100617D08 = v1;
  qword_100617D10 = 0x6154686372616553;
  unk_100617D18 = 0xE900000000000062;
}

uint64_t *AccessibilityIdentifier.searchTab.unsafeMutableAddressor()
{
  if (qword_1006002B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchTab;
}

uint64_t static AccessibilityIdentifier.searchTab.getter()
{
  if (qword_1006002B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchTab;

  return v0;
}

void sub_10027E814()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x80000001005062A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailHeader = v0;
  *algn_100617D28 = v1;
  qword_100617D30 = 0xD000000000000016;
  unk_100617D38 = 0x80000001005062A0;
}

uint64_t *AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor()
{
  if (qword_1006002C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeader;
}

uint64_t static AccessibilityIdentifier.containerDetailHeader.getter()
{
  if (qword_1006002C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeader;

  return v0;
}

void sub_10027E9C0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x8000000100506280;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailHeaderArtwork = v0;
  *algn_100617D48 = v1;
  qword_100617D50 = 0xD00000000000001ELL;
  unk_100617D58 = 0x8000000100506280;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_1006002C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderArtwork.getter()
{
  if (qword_1006002C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderArtwork;

  return v0;
}

void sub_10027EB6C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000100506260;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailHeaderTitle = v0;
  *algn_100617D68 = v1;
  qword_100617D70 = 0xD00000000000001CLL;
  unk_100617D78 = 0x8000000100506260;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_1006002D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderTitle.getter()
{
  if (qword_1006002D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderTitle;

  return v0;
}

void sub_10027ED18()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x8000000100506230;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailHeaderAttribution = v0;
  *algn_100617D88 = v1;
  qword_100617D90 = 0xD000000000000022;
  unk_100617D98 = 0x8000000100506230;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderAttribution.unsafeMutableAddressor()
{
  if (qword_1006002D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderAttribution;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderAttribution.getter()
{
  if (qword_1006002D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderAttribution;

  return v0;
}

void sub_10027EEC4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x8000000100506210;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailHeaderMetadata = v0;
  *algn_100617DA8 = v1;
  qword_100617DB0 = 0xD00000000000001FLL;
  unk_100617DB8 = 0x8000000100506210;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderMetadata.unsafeMutableAddressor()
{
  if (qword_1006002E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderMetadata;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderMetadata.getter()
{
  if (qword_1006002E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderMetadata;

  return v0;
}

void sub_10027F070()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001005061E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailHeaderDescription = v0;
  *algn_100617DC8 = v1;
  qword_100617DD0 = 0xD000000000000022;
  unk_100617DD8 = 0x80000001005061E0;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderDescription.unsafeMutableAddressor()
{
  if (qword_1006002E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderDescription;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderDescription.getter()
{
  if (qword_1006002E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderDescription;

  return v0;
}

void sub_10027F21C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001005061B0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailContextualActionsButton = v0;
  *algn_100617DE8 = v1;
  qword_100617DF0 = 0xD000000000000027;
  unk_100617DF8 = 0x80000001005061B0;
}

uint64_t *AccessibilityIdentifier.containerDetailContextualActionsButton.unsafeMutableAddressor()
{
  if (qword_1006002F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailContextualActionsButton;
}

uint64_t static AccessibilityIdentifier.containerDetailContextualActionsButton.getter()
{
  if (qword_1006002F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailContextualActionsButton;

  return v0;
}

void sub_10027F3C8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x8000000100506180;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailFloatingArtwork = v0;
  *algn_100617E08 = v1;
  qword_100617E10 = 0xD000000000000020;
  unk_100617E18 = 0x8000000100506180;
}

uint64_t *AccessibilityIdentifier.containerDetailFloatingArtwork.unsafeMutableAddressor()
{
  if (qword_1006002F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailFloatingArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailFloatingArtwork.getter()
{
  if (qword_1006002F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailFloatingArtwork;

  return v0;
}

void sub_10027F574()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000100506160;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailStateButton = v0;
  *algn_100617E28 = v1;
  qword_100617E30 = 0xD00000000000001BLL;
  unk_100617E38 = 0x8000000100506160;
}

uint64_t *AccessibilityIdentifier.containerDetailStateButton.unsafeMutableAddressor()
{
  if (qword_100600300 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailStateButton;
}

uint64_t static AccessibilityIdentifier.containerDetailStateButton.getter()
{
  if (qword_100600300 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailStateButton;

  return v0;
}

void sub_10027F720()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100506140;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailAddButton = v0;
  *algn_100617E48 = v1;
  qword_100617E50 = 0xD000000000000019;
  unk_100617E58 = 0x8000000100506140;
}

uint64_t *AccessibilityIdentifier.containerDetailAddButton.unsafeMutableAddressor()
{
  if (qword_100600308 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailAddButton;
}

uint64_t static AccessibilityIdentifier.containerDetailAddButton.getter()
{
  if (qword_100600308 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailAddButton;

  return v0;
}

void sub_10027F8CC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x8000000100506120;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailDownloadButton = v0;
  *algn_100617E68 = v1;
  qword_100617E70 = 0xD00000000000001ELL;
  unk_100617E78 = 0x8000000100506120;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadButton.unsafeMutableAddressor()
{
  if (qword_100600310 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadButton.getter()
{
  if (qword_100600310 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadButton;

  return v0;
}

void sub_10027FA78()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001005060F0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailDownloadQueuedButton = v0;
  *algn_100617E88 = v1;
  qword_100617E90 = 0xD000000000000024;
  unk_100617E98 = 0x80000001005060F0;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadQueuedButton.unsafeMutableAddressor()
{
  if (qword_100600318 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadQueuedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadQueuedButton.getter()
{
  if (qword_100600318 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadQueuedButton;

  return v0;
}

void sub_10027FC24()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001005060C0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailDownloadPausedButton = v0;
  *algn_100617EA8 = v1;
  qword_100617EB0 = 0xD000000000000024;
  unk_100617EB8 = 0x80000001005060C0;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadPausedButton.unsafeMutableAddressor()
{
  if (qword_100600320 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadPausedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadPausedButton.getter()
{
  if (qword_100600320 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadPausedButton;

  return v0;
}

void sub_10027FDD0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x8000000100506090;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailDownloadingButton = v0;
  *algn_100617EC8 = v1;
  qword_100617ED0 = 0xD000000000000021;
  unk_100617ED8 = 0x8000000100506090;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadingButton.unsafeMutableAddressor()
{
  if (qword_100600328 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadingButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadingButton.getter()
{
  if (qword_100600328 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadingButton;

  return v0;
}

void sub_10027FF7C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x8000000100506060;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.containerDetailDownloadedButton = v0;
  *algn_100617EE8 = v1;
  qword_100617EF0 = 0xD000000000000020;
  unk_100617EF8 = 0x8000000100506060;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadedButton.unsafeMutableAddressor()
{
  if (qword_100600330 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadedButton.getter()
{
  if (qword_100600330 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadedButton;

  return v0;
}

void sub_100280128()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x8000000100506030;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.albumDetailOpenInClassicalButton = v0;
  *algn_100617F08 = v1;
  qword_100617F10 = 0xD000000000000021;
  unk_100617F18 = 0x8000000100506030;
}

uint64_t *AccessibilityIdentifier.albumDetailOpenInClassicalButton.unsafeMutableAddressor()
{
  if (qword_100600338 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumDetailOpenInClassicalButton;
}

uint64_t static AccessibilityIdentifier.albumDetailOpenInClassicalButton.getter()
{
  if (qword_100600338 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumDetailOpenInClassicalButton;

  return v0;
}

void sub_1002802D4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x8000000100506000;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistDetailCollaborationControl = v0;
  *algn_100617F28 = v1;
  qword_100617F30 = 0xD000000000000023;
  unk_100617F38 = 0x8000000100506000;
}

uint64_t *AccessibilityIdentifier.playlistDetailCollaborationControl.unsafeMutableAddressor()
{
  if (qword_100600340 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistDetailCollaborationControl;
}

uint64_t static AccessibilityIdentifier.playlistDetailCollaborationControl.getter()
{
  if (qword_100600340 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistDetailCollaborationControl;

  return v0;
}

void sub_100280480()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x42746E756F636361;
  v3._object = 0xED00006E6F747475;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.accountButton = v0;
  *algn_100617F48 = v1;
  strcpy(&qword_100617F50, "accountButton");
  unk_100617F5E = -4864;
}

uint64_t *AccessibilityIdentifier.accountButton.unsafeMutableAddressor()
{
  if (qword_100600348 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.accountButton;
}

uint64_t static AccessibilityIdentifier.accountButton.getter()
{
  if (qword_100600348 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.accountButton;

  return v0;
}

void sub_100280630()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100505FE0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryListCell = v0;
  *algn_100617F68 = v1;
  qword_100617F70 = 0xD000000000000010;
  unk_100617F78 = 0x8000000100505FE0;
}

uint64_t *AccessibilityIdentifier.libraryListCell.unsafeMutableAddressor()
{
  if (qword_100600350 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCell;
}

uint64_t static AccessibilityIdentifier.libraryListCell.getter()
{
  if (qword_100600350 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCell;

  return v0;
}

void sub_1002807DC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100505FC0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryListCellArtwork = v0;
  *algn_100617F88 = v1;
  qword_100617F90 = 0xD000000000000018;
  unk_100617F98 = 0x8000000100505FC0;
}

uint64_t *AccessibilityIdentifier.libraryListCellArtwork.unsafeMutableAddressor()
{
  if (qword_100600358 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryListCellArtwork.getter()
{
  if (qword_100600358 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellArtwork;

  return v0;
}

void sub_100280988()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100505FA0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryListCellTitle = v0;
  *algn_100617FA8 = v1;
  qword_100617FB0 = 0xD000000000000016;
  unk_100617FB8 = 0x8000000100505FA0;
}

uint64_t *AccessibilityIdentifier.libraryListCellTitle.unsafeMutableAddressor()
{
  if (qword_100600360 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellTitle.getter()
{
  if (qword_100600360 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellTitle;

  return v0;
}

void sub_100280B34()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100505F80;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryListCellSubtitle = v0;
  *algn_100617FC8 = v1;
  qword_100617FD0 = 0xD000000000000019;
  unk_100617FD8 = 0x8000000100505F80;
}

uint64_t *AccessibilityIdentifier.libraryListCellSubtitle.unsafeMutableAddressor()
{
  if (qword_100600368 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellSubtitle.getter()
{
  if (qword_100600368 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellSubtitle;

  return v0;
}

void sub_100280CE0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100505F60;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryGridCell = v0;
  *algn_100617FE8 = v1;
  qword_100617FF0 = 0xD000000000000010;
  unk_100617FF8 = 0x8000000100505F60;
}

uint64_t *AccessibilityIdentifier.libraryGridCell.unsafeMutableAddressor()
{
  if (qword_100600370 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCell;
}

uint64_t static AccessibilityIdentifier.libraryGridCell.getter()
{
  if (qword_100600370 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCell;

  return v0;
}

void sub_100280E8C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100505F40;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryGridCellArtwork = v0;
  *algn_100618008 = v1;
  qword_100618010 = 0xD000000000000018;
  unk_100618018 = 0x8000000100505F40;
}

uint64_t *AccessibilityIdentifier.libraryGridCellArtwork.unsafeMutableAddressor()
{
  if (qword_100600378 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryGridCellArtwork.getter()
{
  if (qword_100600378 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellArtwork;

  return v0;
}

void sub_100281038()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100505F20;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryGridCellTitle = v0;
  *algn_100618028 = v1;
  qword_100618030 = 0xD000000000000016;
  unk_100618038 = 0x8000000100505F20;
}

uint64_t *AccessibilityIdentifier.libraryGridCellTitle.unsafeMutableAddressor()
{
  if (qword_100600380 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellTitle.getter()
{
  if (qword_100600380 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellTitle;

  return v0;
}

void sub_1002811E4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100505F00;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryGridCellSubtitle = v0;
  *algn_100618048 = v1;
  qword_100618050 = 0xD000000000000019;
  unk_100618058 = 0x8000000100505F00;
}

uint64_t *AccessibilityIdentifier.libraryGridCellSubtitle.unsafeMutableAddressor()
{
  if (qword_100600388 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellSubtitle.getter()
{
  if (qword_100600388 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellSubtitle;

  return v0;
}

void sub_100281390()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100505EE0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistButton = v0;
  *algn_100618068 = v1;
  qword_100618070 = 0xD000000000000016;
  unk_100618078 = 0x8000000100505EE0;
}

uint64_t *AccessibilityIdentifier.playlistButton.unsafeMutableAddressor()
{
  if (qword_100600390 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistButton;
}

uint64_t static AccessibilityIdentifier.playlistButton.getter()
{
  if (qword_100600390 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistButton;

  return v0;
}

void sub_10028153C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000100505EC0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.contextualMenuButton = v0;
  *algn_100618088 = v1;
  qword_100618090 = 0xD00000000000001CLL;
  unk_100618098 = 0x8000000100505EC0;
}

uint64_t *AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor()
{
  if (qword_100600398 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.contextualMenuButton;
}

uint64_t static AccessibilityIdentifier.contextualMenuButton.getter()
{
  if (qword_100600398 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.contextualMenuButton;

  return v0;
}

void sub_1002816E8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000100505EA0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryFilterOptionsButton = v0;
  *algn_1006180A8 = v1;
  qword_1006180B0 = 0xD00000000000001BLL;
  unk_1006180B8 = 0x8000000100505EA0;
}

uint64_t *AccessibilityIdentifier.libraryFilterOptionsButton.unsafeMutableAddressor()
{
  if (qword_1006003A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFilterOptionsButton;
}

uint64_t static AccessibilityIdentifier.libraryFilterOptionsButton.getter()
{
  if (qword_1006003A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFilterOptionsButton;

  return v0;
}

void sub_100281894()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100505E80;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.librarySortOptionsButton = v0;
  *algn_1006180C8 = v1;
  qword_1006180D0 = 0xD000000000000019;
  unk_1006180D8 = 0x8000000100505E80;
}

uint64_t *AccessibilityIdentifier.librarySortOptionsButton.unsafeMutableAddressor()
{
  if (qword_1006003A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySortOptionsButton;
}

uint64_t static AccessibilityIdentifier.librarySortOptionsButton.getter()
{
  if (qword_1006003A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySortOptionsButton;

  return v0;
}

void sub_100281A40()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000100505E60;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTrackCell = v0;
  *algn_1006180E8 = v1;
  qword_1006180F0 = 0xD000000000000011;
  unk_1006180F8 = 0x8000000100505E60;
}

uint64_t *AccessibilityIdentifier.libraryTrackCell.unsafeMutableAddressor()
{
  if (qword_1006003B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCell;
}

uint64_t static AccessibilityIdentifier.libraryTrackCell.getter()
{
  if (qword_1006003B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCell;

  return v0;
}

void sub_100281BEC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100505E40;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTrackCellArtwork = v0;
  *algn_100618108 = v1;
  qword_100618110 = 0xD000000000000019;
  unk_100618118 = 0x8000000100505E40;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006003B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellArtwork.getter()
{
  if (qword_1006003B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellArtwork;

  return v0;
}

void sub_100281D98()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000100505E20;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTrackCellTitle = v0;
  *algn_100618128 = v1;
  qword_100618130 = 0xD000000000000017;
  unk_100618138 = 0x8000000100505E20;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellTitle.unsafeMutableAddressor()
{
  if (qword_1006003C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellTitle.getter()
{
  if (qword_1006003C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellTitle;

  return v0;
}

void sub_100281F44()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000100505E00;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTrackCellSubtitle = v0;
  *algn_100618148 = v1;
  qword_100618150 = 0xD00000000000001ALL;
  unk_100618158 = 0x8000000100505E00;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellSubtitle.unsafeMutableAddressor()
{
  if (qword_1006003C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellSubtitle.getter()
{
  if (qword_1006003C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellSubtitle;

  return v0;
}

void sub_1002820F0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000100505DE0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTrackCellDetailText = v0;
  *algn_100618168 = v1;
  qword_100618170 = 0xD00000000000001CLL;
  unk_100618178 = 0x8000000100505DE0;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDetailText.unsafeMutableAddressor()
{
  if (qword_1006003D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDetailText;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDetailText.getter()
{
  if (qword_1006003D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDetailText;

  return v0;
}

void sub_10028229C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000100505DC0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTrackCellDuration = v0;
  *algn_100618188 = v1;
  qword_100618190 = 0xD00000000000001ALL;
  unk_100618198 = 0x8000000100505DC0;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDuration.unsafeMutableAddressor()
{
  if (qword_1006003D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDuration;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDuration.getter()
{
  if (qword_1006003D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDuration;

  return v0;
}

void sub_100282448()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100505DA0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTextCell = v0;
  *algn_1006181A8 = v1;
  qword_1006181B0 = 0xD000000000000010;
  unk_1006181B8 = 0x8000000100505DA0;
}

uint64_t *AccessibilityIdentifier.libraryTextCell.unsafeMutableAddressor()
{
  if (qword_1006003E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTextCell;
}

uint64_t static AccessibilityIdentifier.libraryTextCell.getter()
{
  if (qword_1006003E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTextCell;

  return v0;
}

void sub_1002825F4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100505D80;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryFavoriteBadge = v0;
  *algn_1006181C8 = v1;
  qword_1006181D0 = 0xD000000000000015;
  unk_1006181D8 = 0x8000000100505D80;
}

uint64_t *AccessibilityIdentifier.libraryFavoriteBadge.unsafeMutableAddressor()
{
  if (qword_1006003E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.libraryFavoriteBadge.getter()
{
  if (qword_1006003E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFavoriteBadge;

  return v0;
}

void sub_1002827A0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100505D60;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryMenuView = v0;
  *algn_1006181E8 = v1;
  qword_1006181F0 = 0xD000000000000010;
  unk_1006181F8 = 0x8000000100505D60;
}

uint64_t *AccessibilityIdentifier.libraryMenuView.unsafeMutableAddressor()
{
  if (qword_1006003F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMenuView;
}

uint64_t static AccessibilityIdentifier.libraryMenuView.getter()
{
  if (qword_1006003F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMenuView;

  return v0;
}

void sub_10028294C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000100505D40;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryContentView = v0;
  *algn_100618208 = v1;
  qword_100618210 = 0xD000000000000013;
  unk_100618218 = 0x8000000100505D40;
}

uint64_t *AccessibilityIdentifier.libraryContentView.unsafeMutableAddressor()
{
  if (qword_1006003F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryContentView;
}

uint64_t static AccessibilityIdentifier.libraryContentView.getter()
{
  if (qword_1006003F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryContentView;

  return v0;
}

void sub_100282AF8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x2E7972617262694CLL;
  v3._object = 0xEC000000736E6950;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryPins = v0;
  *algn_100618228 = v1;
  strcpy(&qword_100618230, "Library.Pins");
  unk_10061823D = 0;
  unk_10061823E = -5120;
}

uint64_t *AccessibilityIdentifier.libraryPins.unsafeMutableAddressor()
{
  if (qword_100600400 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPins;
}

uint64_t static AccessibilityIdentifier.libraryPins.getter()
{
  if (qword_100600400 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPins;

  return v0;
}

void sub_100282CA4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x567972617262694CLL;
  v3._object = 0xEB00000000776569;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryView = v0;
  *algn_100618248 = v1;
  qword_100618250 = 0x567972617262694CLL;
  unk_100618258 = 0xEB00000000776569;
}

uint64_t *AccessibilityIdentifier.libraryView.unsafeMutableAddressor()
{
  if (qword_100600408 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryView;
}

uint64_t static AccessibilityIdentifier.libraryView.getter()
{
  if (qword_100600408 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryView;

  return v0;
}

void sub_100282E50()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x80000001005068A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryRecentlyAddedView = v0;
  *algn_100618268 = v1;
  qword_100618270 = 0xD000000000000019;
  unk_100618278 = 0x80000001005068A0;
}

uint64_t static AccessibilityIdentifier.libraryRecentlyAddedView.getter()
{
  if (qword_100600410 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryRecentlyAddedView;

  return v0;
}

void sub_100282FAC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000100506820;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryArtistsListView = v0;
  *algn_100618288 = v1;
  qword_100618290 = 0xD000000000000017;
  unk_100618298 = 0x8000000100506820;
}

uint64_t static AccessibilityIdentifier.libraryArtistsListView.getter()
{
  if (qword_100600418 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsListView;

  return v0;
}

void sub_100283108()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x8000000100505D10;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryArtistsDetailView = v0;
  *algn_1006182A8 = v1;
  qword_1006182B0 = 0xD000000000000020;
  unk_1006182B8 = 0x8000000100505D10;
}

uint64_t *AccessibilityIdentifier.libraryArtistsDetailView.unsafeMutableAddressor()
{
  if (qword_100600420 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsDetailView;
}

uint64_t static AccessibilityIdentifier.libraryArtistsDetailView.getter()
{
  if (qword_100600420 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsDetailView;

  return v0;
}

void sub_1002832B4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000100506800;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryAlbumsView = v0;
  *algn_1006182C8 = v1;
  qword_1006182D0 = 0xD000000000000012;
  unk_1006182D8 = 0x8000000100506800;
}

uint64_t static AccessibilityIdentifier.libraryAlbumsView.getter()
{
  if (qword_100600428 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryAlbumsView;

  return v0;
}

void sub_100283410()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100506920;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryComposersView = v0;
  *algn_1006182E8 = v1;
  qword_1006182F0 = 0xD000000000000015;
  unk_1006182F8 = 0x8000000100506920;
}

uint64_t static AccessibilityIdentifier.libraryComposersView.getter()
{
  if (qword_100600430 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryComposersView;

  return v0;
}

void sub_10028356C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100506900;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryCompilationsView = v0;
  *algn_100618308 = v1;
  qword_100618310 = 0xD000000000000018;
  unk_100618318 = 0x8000000100506900;
}

uint64_t static AccessibilityIdentifier.libraryCompilationsView.getter()
{
  if (qword_100600438 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryCompilationsView;

  return v0;
}

void sub_1002836C8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100506960;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryDownloadedView = v0;
  *algn_100618328 = v1;
  qword_100618330 = 0xD000000000000016;
  unk_100618338 = 0x8000000100506960;
}

uint64_t static AccessibilityIdentifier.libraryDownloadedView.getter()
{
  if (qword_100600440 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadedView;

  return v0;
}

void sub_100283824()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000100506980;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryDownloadingView = v0;
  *algn_100618348 = v1;
  qword_100618350 = 0xD000000000000017;
  unk_100618358 = 0x8000000100506980;
}

uint64_t static AccessibilityIdentifier.libraryDownloadingView.getter()
{
  if (qword_100600448 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadingView;

  return v0;
}

void sub_100283980()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000100506880;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryGenresView = v0;
  *algn_100618368 = v1;
  qword_100618370 = 0xD000000000000012;
  unk_100618378 = 0x8000000100506880;
}

uint64_t static AccessibilityIdentifier.libraryGenresView.getter()
{
  if (qword_100600450 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGenresView;

  return v0;
}

void sub_100283ADC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x80000001005068C0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryMadeForYouView = v0;
  *algn_100618388 = v1;
  qword_100618390 = 0xD000000000000016;
  unk_100618398 = 0x80000001005068C0;
}

uint64_t static AccessibilityIdentifier.libraryMadeForYouView.getter()
{
  if (qword_100600458 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMadeForYouView;

  return v0;
}

void sub_100283C38()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x80000001005068E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryMusicVideosView = v0;
  *algn_1006183A8 = v1;
  qword_1006183B0 = 0xD000000000000017;
  unk_1006183B8 = 0x80000001005068E0;
}

uint64_t static AccessibilityIdentifier.libraryMusicVideosView.getter()
{
  if (qword_100600460 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMusicVideosView;

  return v0;
}

void sub_100283D94()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100506860;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryPlaylistsView = v0;
  *algn_1006183C8 = v1;
  qword_1006183D0 = 0xD000000000000015;
  unk_1006183D8 = 0x8000000100506860;
}

uint64_t static AccessibilityIdentifier.libraryPlaylistsView.getter()
{
  if (qword_100600468 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPlaylistsView;

  return v0;
}

void sub_100283EF0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000100506840;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.librarySongsView = v0;
  *algn_1006183E8 = v1;
  qword_1006183F0 = 0xD000000000000011;
  unk_1006183F8 = 0x8000000100506840;
}

uint64_t static AccessibilityIdentifier.librarySongsView.getter()
{
  if (qword_100600470 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySongsView;

  return v0;
}

void sub_10028404C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000100506940;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.libraryTVAndMoviesView = v0;
  *algn_100618408 = v1;
  qword_100618410 = 0xD000000000000017;
  unk_100618418 = 0x8000000100506940;
}

uint64_t static AccessibilityIdentifier.libraryTVAndMoviesView.getter()
{
  if (qword_100600478 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTVAndMoviesView;

  return v0;
}

void sub_1002841A8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100505CF0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.listenNowContentView = v0;
  *algn_100618428 = v1;
  qword_100618430 = 0xD000000000000015;
  unk_100618438 = 0x8000000100505CF0;
}

uint64_t *AccessibilityIdentifier.listenNowContentView.unsafeMutableAddressor()
{
  if (qword_100600480 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowContentView;
}

uint64_t static AccessibilityIdentifier.listenNowContentView.getter()
{
  if (qword_100600480 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowContentView;

  return v0;
}

void sub_100284354()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000100505CD0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.browseContentView = v0;
  *algn_100618448 = v1;
  qword_100618450 = 0xD000000000000012;
  unk_100618458 = 0x8000000100505CD0;
}

uint64_t *AccessibilityIdentifier.browseContentView.unsafeMutableAddressor()
{
  if (qword_100600488 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseContentView;
}

uint64_t static AccessibilityIdentifier.browseContentView.getter()
{
  if (qword_100600488 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseContentView;

  return v0;
}

void sub_100284500()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000100505CB0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.radioContentView = v0;
  *algn_100618468 = v1;
  qword_100618470 = 0xD000000000000011;
  unk_100618478 = 0x8000000100505CB0;
}

uint64_t *AccessibilityIdentifier.radioContentView.unsafeMutableAddressor()
{
  if (qword_100600490 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioContentView;
}

uint64_t static AccessibilityIdentifier.radioContentView.getter()
{
  if (qword_100600490 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioContentView;

  return v0;
}

void sub_1002846AC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000100505C90;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.searchContentView = v0;
  *algn_100618488 = v1;
  qword_100618490 = 0xD000000000000012;
  unk_100618498 = 0x8000000100505C90;
}

uint64_t *AccessibilityIdentifier.searchContentView.unsafeMutableAddressor()
{
  if (qword_100600498 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchContentView;
}

uint64_t static AccessibilityIdentifier.searchContentView.getter()
{
  if (qword_100600498 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchContentView;

  return v0;
}

void sub_100284858()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000100505C70;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.videosContentView = v0;
  *algn_1006184A8 = v1;
  qword_1006184B0 = 0xD000000000000012;
  unk_1006184B8 = 0x8000000100505C70;
}

uint64_t *AccessibilityIdentifier.videosContentView.unsafeMutableAddressor()
{
  if (qword_1006004A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.videosContentView;
}

uint64_t static AccessibilityIdentifier.videosContentView.getter()
{
  if (qword_1006004A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.videosContentView;

  return v0;
}

void sub_100284A04()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6979616C50776F4ELL;
  v3._object = 0xEE0077656956676ELL;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingView = v0;
  *algn_1006184C8 = v1;
  strcpy(&qword_1006184D0, "NowPlayingView");
  unk_1006184DF = -18;
}

uint64_t *AccessibilityIdentifier.nowPlayingView.unsafeMutableAddressor()
{
  if (qword_1006004A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingView;
}

uint64_t static AccessibilityIdentifier.nowPlayingView.getter()
{
  if (qword_1006004A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingView;

  return v0;
}

void sub_100284BB4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100505C50;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.bottomPlayerView = v0;
  *algn_1006184E8 = v1;
  qword_1006184F0 = 0xD000000000000010;
  unk_1006184F8 = 0x8000000100505C50;
}

uint64_t *AccessibilityIdentifier.bottomPlayerView.unsafeMutableAddressor()
{
  if (qword_1006004B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.bottomPlayerView;
}

uint64_t static AccessibilityIdentifier.bottomPlayerView.getter()
{
  if (qword_1006004B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.bottomPlayerView;

  return v0;
}

void sub_100284D60()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100505C30;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingShuffleButton = v0;
  *algn_100618508 = v1;
  qword_100618510 = 0xD000000000000018;
  unk_100618518 = 0x8000000100505C30;
}

uint64_t *AccessibilityIdentifier.nowPlayingShuffleButton.unsafeMutableAddressor()
{
  if (qword_1006004B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingShuffleButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingShuffleButton.getter()
{
  if (qword_1006004B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingShuffleButton;

  return v0;
}

void sub_100284F0C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000100505C10;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingRepeatButton = v0;
  *algn_100618528 = v1;
  qword_100618530 = 0xD000000000000017;
  unk_100618538 = 0x8000000100505C10;
}

uint64_t *AccessibilityIdentifier.nowPlayingRepeatButton.unsafeMutableAddressor()
{
  if (qword_1006004C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingRepeatButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingRepeatButton.getter()
{
  if (qword_1006004C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingRepeatButton;

  return v0;
}

void sub_1002850B8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100505BF0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingAutoPlayButton = v0;
  *algn_100618548 = v1;
  qword_100618550 = 0xD000000000000019;
  unk_100618558 = 0x8000000100505BF0;
}

uint64_t *AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor()
{
  if (qword_1006004C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAutoPlayButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAutoPlayButton.getter()
{
  if (qword_1006004C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAutoPlayButton;

  return v0;
}

void sub_100285264()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100505BD0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingFavoriteButton = v0;
  *algn_100618568 = v1;
  qword_100618570 = 0xD000000000000019;
  unk_100618578 = 0x8000000100505BD0;
}

uint64_t *AccessibilityIdentifier.nowPlayingFavoriteButton.unsafeMutableAddressor()
{
  if (qword_1006004D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingFavoriteButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingFavoriteButton.getter()
{
  if (qword_1006004D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingFavoriteButton;

  return v0;
}

void sub_100285410()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x8000000100505BA0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton = v0;
  *algn_100618588 = v1;
  qword_100618590 = 0xD000000000000024;
  unk_100618598 = 0x8000000100505BA0;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton.unsafeMutableAddressor()
{
  if (qword_1006004D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton.getter()
{
  if (qword_1006004D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton;

  return v0;
}

void sub_1002855BC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x8000000100505B70;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton = v0;
  *algn_1006185A8 = v1;
  qword_1006185B0 = 0xD000000000000021;
  unk_1006185B8 = 0x8000000100505B70;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton.unsafeMutableAddressor()
{
  if (qword_1006004E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton.getter()
{
  if (qword_1006004E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton;

  return v0;
}

void sub_100285768()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x8000000100505B40;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton = v0;
  *algn_1006185C8 = v1;
  qword_1006185D0 = 0xD000000000000023;
  unk_1006185D8 = 0x8000000100505B40;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton.unsafeMutableAddressor()
{
  if (qword_1006004E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton.getter()
{
  if (qword_1006004E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton;

  return v0;
}

void sub_100285914()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x747475426574754DLL;
  v3._object = 0xEA00000000006E6FLL;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.muteButton = v0;
  *algn_1006185E8 = v1;
  qword_1006185F0 = 0x747475426574754DLL;
  unk_1006185F8 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.muteButton.unsafeMutableAddressor()
{
  if (qword_1006004F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.muteButton;
}

uint64_t static AccessibilityIdentifier.muteButton.getter()
{
  if (qword_1006004F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.muteButton;

  return v0;
}

void sub_100285AC0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6C53656D756C6F56;
  v3._object = 0xEC00000072656469;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.volumeSlider = v0;
  *algn_100618608 = v1;
  strcpy(&qword_100618610, "VolumeSlider");
  unk_10061861D = 0;
  unk_10061861E = -5120;
}

uint64_t *AccessibilityIdentifier.volumeSlider.unsafeMutableAddressor()
{
  if (qword_1006004F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.volumeSlider;
}

uint64_t static AccessibilityIdentifier.volumeSlider.getter()
{
  if (qword_1006004F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.volumeSlider;

  return v0;
}

void sub_100285C6C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6B63616279616C50;
  v3._object = 0xEE00726564696C53;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playbackSlider = v0;
  *algn_100618628 = v1;
  strcpy(&qword_100618630, "PlaybackSlider");
  unk_10061863F = -18;
}

uint64_t *AccessibilityIdentifier.playbackSlider.unsafeMutableAddressor()
{
  if (qword_100600500 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playbackSlider;
}

uint64_t static AccessibilityIdentifier.playbackSlider.getter()
{
  if (qword_100600500 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playbackSlider;

  return v0;
}

void sub_100285E1C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000100505B20;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playerMenuButton = v0;
  *algn_100618648 = v1;
  qword_100618650 = 0xD00000000000001BLL;
  unk_100618658 = 0x8000000100505B20;
}

uint64_t *AccessibilityIdentifier.playerMenuButton.unsafeMutableAddressor()
{
  if (qword_100600508 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playerMenuButton;
}

uint64_t static AccessibilityIdentifier.playerMenuButton.getter()
{
  if (qword_100600508 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playerMenuButton;

  return v0;
}

void sub_100285FC8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x754273636972794CLL;
  v3._object = 0xEC0000006E6F7474;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.lyricsButton = v0;
  *algn_100618668 = v1;
  strcpy(&qword_100618670, "LyricsButton");
  unk_10061867D = 0;
  unk_10061867E = -5120;
}

uint64_t *AccessibilityIdentifier.lyricsButton.unsafeMutableAddressor()
{
  if (qword_100600510 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsButton;
}

uint64_t static AccessibilityIdentifier.lyricsButton.getter()
{
  if (qword_100600510 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsButton;

  return v0;
}

void sub_100286174()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000100505B00;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playbackQueueButton = v0;
  *algn_100618688 = v1;
  qword_100618690 = 0xD000000000000013;
  unk_100618698 = 0x8000000100505B00;
}

uint64_t *AccessibilityIdentifier.playbackQueueButton.unsafeMutableAddressor()
{
  if (qword_100600518 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playbackQueueButton;
}

uint64_t static AccessibilityIdentifier.playbackQueueButton.getter()
{
  if (qword_100600518 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playbackQueueButton;

  return v0;
}

void sub_100286320()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000100505AE0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsView = v0;
  *algn_1006186A8 = v1;
  qword_1006186B0 = 0xD00000000000001BLL;
  unk_1006186B8 = 0x8000000100505AE0;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsView.unsafeMutableAddressor()
{
  if (qword_100600520 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsView;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsView.getter()
{
  if (qword_100600520 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsView;

  return v0;
}

void sub_1002864CC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x8000000100505AB0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton = v0;
  *algn_1006186C8 = v1;
  qword_1006186D0 = 0xD000000000000025;
  unk_1006186D8 = 0x8000000100505AB0;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.unsafeMutableAddressor()
{
  if (qword_100600528 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.getter()
{
  if (qword_100600528 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton;

  return v0;
}

void sub_100286678()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000100505A90;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsCell = v0;
  *algn_1006186E8 = v1;
  qword_1006186F0 = 0xD00000000000001CLL;
  unk_1006186F8 = 0x8000000100505A90;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCell.unsafeMutableAddressor()
{
  if (qword_100600530 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCell;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCell.getter()
{
  if (qword_100600530 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCell;

  return v0;
}

void sub_100286824()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x8000000100505A60;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork = v0;
  *algn_100618708 = v1;
  qword_100618710 = 0xD000000000000024;
  unk_100618718 = 0x8000000100505A60;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.unsafeMutableAddressor()
{
  if (qword_100600538 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.getter()
{
  if (qword_100600538 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork;

  return v0;
}

void sub_1002869D0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x8000000100505A30;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsCellTitle = v0;
  *algn_100618728 = v1;
  qword_100618730 = 0xD000000000000022;
  unk_100618738 = 0x8000000100505A30;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor()
{
  if (qword_100600540 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellTitle;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellTitle.getter()
{
  if (qword_100600540 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellTitle;

  return v0;
}

void sub_100286B7C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x8000000100505A00;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName = v0;
  *algn_100618748 = v1;
  qword_100618750 = 0xD000000000000027;
  unk_100618758 = 0x8000000100505A00;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.unsafeMutableAddressor()
{
  if (qword_100600548 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.getter()
{
  if (qword_100600548 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName;

  return v0;
}

void sub_100286D28()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001005059D0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsCellDuration = v0;
  *algn_100618768 = v1;
  qword_100618770 = 0xD000000000000025;
  unk_100618778 = 0x80000001005059D0;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellDuration.unsafeMutableAddressor()
{
  if (qword_100600550 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellDuration;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellDuration.getter()
{
  if (qword_100600550 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellDuration;

  return v0;
}

void sub_100286ED4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000026;
  v3._object = 0x80000001005059A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton = v0;
  *algn_100618788 = v1;
  qword_100618790 = 0xD000000000000026;
  unk_100618798 = 0x80000001005059A0;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.unsafeMutableAddressor()
{
  if (qword_100600558 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.getter()
{
  if (qword_100600558 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton;

  return v0;
}

void sub_100287080()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100505980;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistAddMusicCell = v0;
  *algn_1006187A8 = v1;
  qword_1006187B0 = 0xD000000000000015;
  unk_1006187B8 = 0x8000000100505980;
}

uint64_t *AccessibilityIdentifier.playlistAddMusicCell.unsafeMutableAddressor()
{
  if (qword_100600560 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistAddMusicCell;
}

uint64_t static AccessibilityIdentifier.playlistAddMusicCell.getter()
{
  if (qword_100600560 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistAddMusicCell;

  return v0;
}

void sub_10028722C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x462E747369747241;
  v3._object = 0xEF657469726F7661;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.artistFavorite = v0;
  *algn_1006187C8 = v1;
  qword_1006187D0 = 0x462E747369747241;
  unk_1006187D8 = 0xEF657469726F7661;
}

uint64_t *AccessibilityIdentifier.artistFavorite.unsafeMutableAddressor()
{
  if (qword_100600568 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artistFavorite;
}

uint64_t static AccessibilityIdentifier.artistFavorite.getter()
{
  if (qword_100600568 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artistFavorite;

  return v0;
}

void sub_1002873DC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000100505960;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.artistUndoFavorite = v0;
  *algn_1006187E8 = v1;
  qword_1006187F0 = 0xD000000000000013;
  unk_1006187F8 = 0x8000000100505960;
}

uint64_t *AccessibilityIdentifier.artistUndoFavorite.unsafeMutableAddressor()
{
  if (qword_100600570 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artistUndoFavorite;
}

uint64_t static AccessibilityIdentifier.artistUndoFavorite.getter()
{
  if (qword_100600570 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artistUndoFavorite;

  return v0;
}

void sub_100287588()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x657469726F766146;
  v3._object = 0xED00006567646142;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.favoriteBadge = v0;
  *algn_100618808 = v1;
  strcpy(&qword_100618810, "FavoriteBadge");
  unk_10061881E = -4864;
}

uint64_t *AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor()
{
  if (qword_100600578 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.favoriteBadge;
}

uint64_t static AccessibilityIdentifier.favoriteBadge.getter()
{
  if (qword_100600578 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.favoriteBadge;

  return v0;
}

void sub_100287738()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100505940;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.privacyTermsAcceptButton = v0;
  *algn_100618828 = v1;
  qword_100618830 = 0xD000000000000018;
  unk_100618838 = 0x8000000100505940;
}

uint64_t *AccessibilityIdentifier.privacyTermsAcceptButton.unsafeMutableAddressor()
{
  if (qword_100600580 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyTermsAcceptButton;
}

uint64_t static AccessibilityIdentifier.privacyTermsAcceptButton.getter()
{
  if (qword_100600580 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyTermsAcceptButton;

  return v0;
}

void sub_1002878E4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000100505920;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.privacyTermsLink = v0;
  *algn_100618848 = v1;
  qword_100618850 = 0xD000000000000010;
  unk_100618858 = 0x8000000100505920;
}

uint64_t *AccessibilityIdentifier.privacyTermsLink.unsafeMutableAddressor()
{
  if (qword_100600588 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyTermsLink;
}

uint64_t static AccessibilityIdentifier.privacyTermsLink.getter()
{
  if (qword_100600588 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyTermsLink;

  return v0;
}

void sub_100287A90()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000100505900;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.privacyWelcomeImage = v0;
  *algn_100618868 = v1;
  qword_100618870 = 0xD000000000000013;
  unk_100618878 = 0x8000000100505900;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeImage.unsafeMutableAddressor()
{
  if (qword_100600590 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeImage;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeImage.getter()
{
  if (qword_100600590 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeImage;

  return v0;
}

void sub_100287C3C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x80000001005058E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.privacyWelcomeTitle = v0;
  *algn_100618888 = v1;
  qword_100618890 = 0xD000000000000013;
  unk_100618898 = 0x80000001005058E0;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeTitle.unsafeMutableAddressor()
{
  if (qword_100600598 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeTitle;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeTitle.getter()
{
  if (qword_100600598 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeTitle;

  return v0;
}

void sub_100287DE8()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x80000001005058C0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.privacyWelcomeDescription = v0;
  *algn_1006188A8 = v1;
  qword_1006188B0 = 0xD000000000000019;
  unk_1006188B8 = 0x80000001005058C0;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeDescription.unsafeMutableAddressor()
{
  if (qword_1006005A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeDescription;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeDescription.getter()
{
  if (qword_1006005A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeDescription;

  return v0;
}

void sub_100287F94()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x6569566D75626C41;
  v3._object = 0xE900000000000077;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.albumView = v0;
  *algn_1006188C8 = v1;
  qword_1006188D0 = 0x6569566D75626C41;
  unk_1006188D8 = 0xE900000000000077;
}

uint64_t *AccessibilityIdentifier.albumView.unsafeMutableAddressor()
{
  if (qword_1006005A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumView;
}

uint64_t static AccessibilityIdentifier.albumView.getter()
{
  if (qword_1006005A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumView;

  return v0;
}

void sub_100288140()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0x7473696C79616C50;
  v3._object = 0xEC00000077656956;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistView = v0;
  *algn_1006188E8 = v1;
  strcpy(&qword_1006188F0, "PlaylistView");
  unk_1006188FD = 0;
  unk_1006188FE = -5120;
}

uint64_t *AccessibilityIdentifier.playlistView.unsafeMutableAddressor()
{
  if (qword_1006005B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistView;
}

uint64_t static AccessibilityIdentifier.playlistView.getter()
{
  if (qword_1006005B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistView;

  return v0;
}

void sub_1002882EC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x80000001005058A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistFolderView = v0;
  *algn_100618908 = v1;
  qword_100618910 = 0xD000000000000012;
  unk_100618918 = 0x80000001005058A0;
}

uint64_t *AccessibilityIdentifier.playlistFolderView.unsafeMutableAddressor()
{
  if (qword_1006005B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistFolderView;
}

uint64_t static AccessibilityIdentifier.playlistFolderView.getter()
{
  if (qword_1006005B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistFolderView;

  return v0;
}

void sub_100288498()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x8000000100506680;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1 = v0;
  *algn_100618928 = v1;
  qword_100618930 = 0xD00000000000002BLL;
  unk_100618938 = 0x8000000100506680;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.getter()
{
  if (qword_1006005C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;

  return v0;
}

void sub_1002885F4()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001005066B0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2 = v0;
  *algn_100618948 = v1;
  qword_100618950 = 0xD00000000000002BLL;
  unk_100618958 = 0x80000001005066B0;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.getter()
{
  if (qword_1006005C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;

  return v0;
}

void sub_100288750()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001005066E0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3 = v0;
  *algn_100618968 = v1;
  qword_100618970 = 0xD00000000000002BLL;
  unk_100618978 = 0x80000001005066E0;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.getter()
{
  if (qword_1006005D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;

  return v0;
}

void sub_1002888AC()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x8000000100506710;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4 = v0;
  *algn_100618988 = v1;
  qword_100618990 = 0xD00000000000002BLL;
  unk_100618998 = 0x8000000100506710;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.getter()
{
  if (qword_1006005D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;

  return v0;
}

void sub_100288A08()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x8000000100506740;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5 = v0;
  *algn_1006189A8 = v1;
  qword_1006189B0 = 0xD00000000000002BLL;
  unk_1006189B8 = 0x8000000100506740;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.getter()
{
  if (qword_1006005E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;

  return v0;
}

void sub_100288B64()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x8000000100506770;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6 = v0;
  *algn_1006189C8 = v1;
  qword_1006189D0 = 0xD00000000000002BLL;
  unk_1006189D8 = 0x8000000100506770;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.getter()
{
  if (qword_1006005E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;

  return v0;
}

void sub_100288CC0()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001005067A0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7 = v0;
  *algn_1006189E8 = v1;
  qword_1006189F0 = 0xD00000000000002BLL;
  unk_1006189F8 = 0x80000001005067A0;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.getter()
{
  if (qword_1006005F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;

  return v0;
}

void sub_100288E1C()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001005067D0;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8 = v0;
  *algn_100618A08 = v1;
  qword_100618A10 = 0xD00000000000002BLL;
  unk_100618A18 = 0x80000001005067D0;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.getter()
{
  if (qword_1006005F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;

  return v0;
}

void sub_100288F78()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x8000000100505870;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9 = v0;
  *algn_100618A28 = v1;
  qword_100618A30 = 0xD00000000000002BLL;
  unk_100618A38 = 0x8000000100505870;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9.unsafeMutableAddressor()
{
  if (qword_100600600 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9.getter()
{
  if (qword_100600600 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9;

  return v0;
}

void sub_100289124()
{
  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v0 = qword_1006091F0;
  v1 = *algn_1006091F8;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004BC024(v2);

  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x8000000100505840;
  sub_1004BC024(v3);

  static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up = v0;
  *algn_100618A48 = v1;
  qword_100618A50 = 0xD000000000000023;
  unk_100618A58 = 0x8000000100505840;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor()
{
  if (qword_100600608 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.getter()
{
  if (qword_100600608 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up;

  return v0;
}

double sub_1002892D0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v3;

  return result;
}

uint64_t sub_1002892E0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004BD9C4();
  }
}

id UIView.withAccessibilityIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a1, a2, v8, v7, a4);

  return v10;
}

void UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    v6 = sub_1004BBE24();
  }

  else
  {
    v6 = 0;
  }

  [v5 setAccessibilityIdentifier:v6];
}

uint64_t UIAccessibilityIdentification.musicAccessibilityIdentifier.getter()
{
  v1 = [v0 accessibilityIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004BBE64();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void (*UIAccessibilityIdentification.musicAccessibilityIdentifier.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, double a4)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  *v5 = UIAccessibilityIdentification.musicAccessibilityIdentifier.getter();
  v6[1] = v7;
  v6[2] = v8;
  v6[3] = v9;
  return sub_100289504;
}

void sub_100289504(uint64_t **a1, char a2, uint64_t a3, double a4)
{
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[3];
  if (a2)
  {
    v8 = sub_10028959C(**a1, v6, v4[2], v7);
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v5, v6, v8, v9, v7);
    sub_1002895E0(*v4, v4[1], v4[2], v4[3]);
  }

  else
  {
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(**a1, v6, a4, a3, v7);
  }

  free(v4);
}

double sub_10028959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_1002895E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t View.textSuffix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v33 = a7;
  v29 = sub_1004B9D34();
  v13 = *(v29 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a5;
  v42 = a6;
  v30 = &opaque type descriptor for <<opaque return type of View.textSuffix(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v31 = OpaqueTypeMetadata2;
  v32 = v17;
  __chkstk_darwin();
  v19 = &v28 - v18;
  v20 = a1;
  v21 = a2;
  v22 = v28;
  sub_1004B9D24();
  sub_1004B9E04();
  (*(v13 + 8))(v15, v29);
  v34 = a5;
  v35 = a6;
  v23 = a6;
  v36 = v7;
  v37 = v20;
  v38 = v21;
  v39 = a3 & 1;
  v40 = v22;
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  v24 = sub_1004BA4D4();
  WitnessTable = swift_getWitnessTable();
  v41 = v24;
  v42 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v41 = a5;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  v41 = v24;
  v42 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  sub_1004BA044();
  return (*(v32 + 8))(v19, v26);
}

uint64_t sub_100289934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v25 = a6;
  v32 = a5;
  v31 = a4;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v35 = a8;
  v8 = sub_1004B9754();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1004BA4D4();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v24 - v13;
  v15 = swift_getWitnessTable();
  v43 = v11;
  v44 = v15;
  v24 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v24 - v20;
  v36 = v25;
  v37 = v30;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v31 & 1;
  v42 = v32;
  sub_1004B9204();
  sub_1004BA4C4();
  sub_1004B9744();
  sub_1004B9FF4();
  (*(v33 + 8))(v10, v34);
  (*(v12 + 8))(v14, v11);
  v43 = v11;
  v44 = v15;
  swift_getOpaqueTypeConformance2();
  sub_10002FB94();
  v22 = *(v17 + 8);
  v22(v19, OpaqueTypeMetadata2);
  sub_10002FB94();
  return (v22)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_100289CF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v12 = *(a6 - 8);
  __chkstk_darwin();
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v19 - v15;
  sub_10002FB94();
  (*(v12 + 16))(v14, v16, a6);
  v25[0] = v14;
  v25[1] = &v21;
  sub_10002FA14(a2, a3, a4 & 1);

  v20[0] = a6;
  v20[1] = &type metadata for Text;
  v19[0] = a7;
  v19[1] = &protocol witness table for Text;
  sub_100278E78(v25, 2uLL, v20);
  v17 = *(v12 + 8);
  v17(v16, a6);
  sub_10002FA24(v21, v22, v23);

  return (v17)(v14, a6);
}

uint64_t AccessibilityString.init(_:tableName:bundle:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v7);
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v6 + 8))(a1, v5);
  return v9;
}

double sub_10028A074(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, void *, uint64_t, unint64_t, __n128))
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v12[0] = v8;
  v12[1] = v9;
  v10 = sub_10000E7F4();

  (a5)(v12, a3, &type metadata for String, a4, v10);

  return result;
}

uint64_t Text.accessibilityLabel(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  sub_10000E7F4();

  v6 = sub_1004B9CA4();

  return v6;
}

char *static Text.compact(_:)(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = &v3[16 * v1];
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *v5;
    v5 += 16;
    ++v1;
    if (v7)
    {
      v18 = v3;
      sub_10000E7F4();

      v8 = sub_1004B9D84();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100019004(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        result = sub_100019004((v15 > 1), v16 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[32 * v16];
      *(v17 + 4) = v8;
      *(v17 + 5) = v10;
      v17[48] = v12 & 1;
      *(v17 + 7) = v14;
      v1 = v6;
      v3 = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t TabIdentifier.accessibilityIdentifier.getter(uint64_t a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        v2 = 0x8000000100505820;
        if (qword_100600148 != -1)
        {
          swift_once();
        }

        v7 = qword_1006091F0;

        v14._countAndFlagsBits = 46;
        v14._object = 0xE100000000000000;
        sub_1004BC024(v14);

        v5._countAndFlagsBits = 0xD000000000000010;
        goto LABEL_34;
      }

      if (qword_100600148 != -1)
      {
        swift_once();
      }

      v1 = 0x762E726142626174;
      v7 = qword_1006091F0;

      v10._countAndFlagsBits = 46;
      v10._object = 0xE100000000000000;
      sub_1004BC024(v10);

      v3 = 0x736F656469;
    }

    else
    {
      if (a1 == 3)
      {
        if (qword_100600148 != -1)
        {
          swift_once();
        }

        v1 = 0x722E726142626174;
        v7 = qword_1006091F0;

        v8._countAndFlagsBits = 46;
        v8._object = 0xE100000000000000;
        sub_1004BC024(v8);

        v2 = 0xEC0000006F696461;
        goto LABEL_33;
      }

      if (qword_100600148 != -1)
      {
        swift_once();
      }

      v1 = 0x732E726142626174;
      v7 = qword_1006091F0;

      v13._countAndFlagsBits = 46;
      v13._object = 0xE100000000000000;
      sub_1004BC024(v13);

      v3 = 0x6863726165;
    }

LABEL_32:
    v2 = (v3 & 0xFFFFFFFFFFFFLL | 0xED00000000000000);
LABEL_33:
    v5._countAndFlagsBits = v1;
LABEL_34:
    v5._object = v2;
    goto LABEL_35;
  }

  if (!a1)
  {
    if (qword_100600148 != -1)
    {
      swift_once();
    }

    v1 = 0x6C2E726142626174;
    v7 = qword_1006091F0;

    v11._countAndFlagsBits = 46;
    v11._object = 0xE100000000000000;
    sub_1004BC024(v11);

    v2 = 0xEE00797261726269;
    goto LABEL_33;
  }

  if (a1 == 1)
  {
    if (qword_100600148 != -1)
    {
      swift_once();
    }

    v1 = 0x682E726142626174;
    v7 = qword_1006091F0;

    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    sub_1004BC024(v9);

    v2 = 0xEB00000000656D6FLL;
    goto LABEL_33;
  }

  v4 = sub_10028ABB4();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) == 0)
  {
    if (qword_100600148 != -1)
    {
      swift_once();
    }

    v1 = 0x622E726142626174;
    v7 = qword_1006091F0;

    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    sub_1004BC024(v15);

    v3 = 0x6573776F72;
    goto LABEL_32;
  }

  if (qword_100600148 != -1)
  {
    swift_once();
  }

  v7 = qword_1006091F0;

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  sub_1004BC024(v12);

  v5._countAndFlagsBits = 0x6E2E726142626174;
  v5._object = 0xEA00000000007765;
LABEL_35:
  sub_1004BC024(v5);

  return v7;
}

void *sub_10028A7F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_1004BC114();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100017BBC(0, 1, 1, _swiftEmptyArrayStorage);
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
    v14 = sub_100017BBC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
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
        v19 = sub_1004BC0E4();
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

        v14 = sub_1004BBFC4();
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
        v18 = sub_1004BBFC4();
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
          v7 = sub_1004BC114();
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

        v14 = sub_100017BBC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1004BC114();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100017BBC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100017BBC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1004BBFC4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10028ABB4()
{
  result = qword_100609200;
  if (!qword_100609200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609200);
  }

  return result;
}

uint64_t sub_10028AC28(uint64_t *a1)
{
  sub_1004B9874();
  sub_1004B8D64();
  sub_10028AC94();
  return swift_getWitnessTable();
}

unint64_t sub_10028AC94()
{
  result = qword_100601970;
  if (!qword_100601970)
  {
    sub_1004B9874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601970);
  }

  return result;
}

uint64_t sub_10028ACEC(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA4D4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static AppReview.requestReview(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_10028C320(a1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_10028B888(a1);
}

double static AppReview.recordAppOpened()()
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v1 = &v5 - v0;
  v2 = sub_1004BC4B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1000FD6BC(0, 0, v1, &unk_1004D8680, v3);

  return result;
}

uint64_t sub_10028B0FC()
{
  if (qword_100600610 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000136EC;

  return StoreReviewGatingController.didEnterForeground()();
}

void sub_10028B1E0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001005069C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1004BD9C4();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_10028B280(uint64_t a1)
{
  v2 = sub_10028CA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028B2BC(uint64_t a1)
{
  v2 = sub_10028CA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028B2F8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100003ABC(&qword_100609238, &qword_1004D87A0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100009178(a1, a1[3]);
  sub_10028CA44();
  sub_1004BDC34();
  if (v2)
  {
    return sub_100004C6C(a1);
  }

  v9 = sub_1004BD7D4();
  (*(v6 + 8))(v8, v5);
  result = sub_100004C6C(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_10028B45C(void *a1)
{
  v2 = sub_100003ABC(&qword_100609248, &qword_1004D87A8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100009178(a1, a1[3]);
  sub_10028CA44();
  sub_1004BDC44();
  sub_1004BD864();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10028B594()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v5[4] = sub_100134E94;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10011FE68;
  v5[3] = &unk_1005BD068;
  v1 = _Block_copy(v5);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v2];

    v4 = objc_allocWithZone(sub_1004B7DF4());
    result = sub_1004B7DC4();
    qword_100609208 = result;
  }

  return result;
}

uint64_t sub_10028B6C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100609210);
  sub_100007084(v2, qword_100609210);
  return sub_1004B80A4();
}

void _s9MusicCore9AppReviewO16recordSongPlayedyyFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_10028C8B4();
  v5 = sub_10028C908();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for AppReview.UsageRequirements, v8);

  v6 = [v2 standardUserDefaults];
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for AppReview.UsageRequirements, v8);

  if (LOBYTE(v8[0]) == 2 || (v8[0] & 1) == 0)
  {
    v7 = [v2 standardUserDefaults];
    v8[3] = &type metadata for AppReview.UsageRequirements;
    v8[4] = v4;
    v8[5] = v5;
    LOBYTE(v8[0]) = 1;
    NSUserDefaults.encodeValue(_:forKey:)(v8, 0xD000000000000018, 0x80000001005069A0);

    sub_100004C6C(v8);
  }
}

uint64_t sub_10028B888(uint64_t a1)
{
  v1[34] = a1;
  sub_1004BC474();
  v1[35] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[36] = v3;
  v1[37] = v2;

  return _swift_task_switch(sub_10028B920, v3, v2);
}

uint64_t sub_10028B920()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100051DEC(v0 + 16);
  if (*(v0 + 112) == 2)
  {
  }

  else
  {
    v5 = sub_1004BD9C4();

    if ((v5 & 1) == 0)
    {

      if (qword_100600618 != -1)
      {
        swift_once();
      }

      v13 = sub_1004B80B4();
      sub_100007084(v13, qword_100609210);
      v9 = sub_1004B8094();
      v10 = sub_1004BC9A4();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_27;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "🤩❌ User is not a subscriber";
      goto LABEL_26;
    }
  }

  v6 = [objc_opt_self() sharedPrivacyInfo];
  v7 = [v6 privacyAcknowledgementRequiredForMusic];

  if (v7)
  {

    if (qword_100600618 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, qword_100609210);
    v9 = sub_1004B8094();
    v10 = sub_1004BC9A4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "🤩❌ User has not accepted GDPR";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

LABEL_27:

    v18 = *(v0 + 8);

    return v18();
  }

  v14 = [objc_opt_self() standardUserDefaults];
  sub_10028C8B4();
  sub_10028C908();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for AppReview.UsageRequirements, (v0 + 328));

  v15 = *(v0 + 328);
  if (v15 == 2 || (v15 & 1) == 0)
  {

    if (qword_100600618 != -1)
    {
      swift_once();
    }

    v17 = sub_1004B80B4();
    sub_100007084(v17, qword_100609210);
    v9 = sub_1004B8094();
    v10 = sub_1004BC9A4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "🤩❌ User has not played anything yet";
    goto LABEL_26;
  }

  if (qword_100600610 != -1)
  {
    swift_once();
  }

  *(v0 + 304) = qword_100609208;
  v16 = swift_task_alloc();
  *(v0 + 312) = v16;
  *v16 = v0;
  v16[1] = sub_10028BE24;

  return StoreReviewGatingController.canPrompt()();
}

uint64_t sub_10028BE24(char a1)
{
  v2 = *v1;
  *(*v1 + 329) = a1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);

  return _swift_task_switch(sub_10028BF4C, v4, v3);
}

uint64_t sub_10028BF4C()
{
  if (*(v0 + 329) == 1)
  {
    sub_1004BBB64();
    if (qword_100600618 != -1)
    {
      swift_once();
    }

    v1 = sub_1004B80B4();
    sub_100007084(v1, qword_100609210);
    v2 = sub_1004B8094();
    v3 = sub_1004BC9A4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "🤩 Requesting a review through StoreKit", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v0 + 320) = v5;
    *v5 = v0;
    v5[1] = sub_10028C1A0;

    return StoreReviewGatingController.didPrompt()();
  }

  else
  {

    if (qword_100600618 != -1)
    {
      swift_once();
    }

    v6 = sub_1004B80B4();
    sub_100007084(v6, qword_100609210);
    v7 = sub_1004B8094();
    v8 = sub_1004BC9A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "🤩❌ Review is being gated by AMS", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10028C1A0()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10028C2C0, v3, v2);
}

uint64_t sub_10028C2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028C320(uint64_t a1)
{
  v1[14] = a1;
  sub_1004BC474();
  v1[15] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[16] = v3;
  v1[17] = v2;

  return _swift_task_switch(sub_10028C3B8, v3, v2);
}

void sub_10028C3B8()
{
  sub_10028C95C(v0[14], (v0 + 2));
  if (v0[10] == 1)
  {

    sub_10028C9CC((v0 + 2));
LABEL_11:
    if (qword_100600618 != -1)
    {
      swift_once();
    }

    v7 = sub_1004B80B4();
    sub_100007084(v7, qword_100609210);
    v8 = sub_1004B8094();
    v9 = sub_1004BC984();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "🤩❌ No windowScene", v10, 2u);
    }

    v11 = v0[1];

    v11();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10005BC00((v0 + 2));
    goto LABEL_11;
  }

  v2 = Strong;
  v3 = [Strong view];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 window];

  v5 = [v4 windowScene];
  v0[18] = v5;

  sub_10005BC00((v0 + 2));
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_10028C618;

  sub_10028B888(v5);
}

uint64_t sub_10028C618()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10028C738, v3, v2);
}

uint64_t sub_10028C738()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10028C7A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10028C7D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000136EC;

  return sub_10028B0E0();
}

uint64_t sub_10028C894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10028C8B4()
{
  result = qword_100609228;
  if (!qword_100609228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609228);
  }

  return result;
}

unint64_t sub_10028C908()
{
  result = qword_100609230;
  if (!qword_100609230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609230);
  }

  return result;
}

uint64_t sub_10028C95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100602A08, &qword_1004CBF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028C9CC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100602A08, &qword_1004CBF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10028CA44()
{
  result = qword_100609240;
  if (!qword_100609240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609240);
  }

  return result;
}

unint64_t sub_10028CAAC()
{
  result = qword_100609250;
  if (!qword_100609250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609250);
  }

  return result;
}

unint64_t sub_10028CB04()
{
  result = qword_100609258;
  if (!qword_100609258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609258);
  }

  return result;
}

unint64_t sub_10028CB5C()
{
  result = qword_100609260;
  if (!qword_100609260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609260);
  }

  return result;
}

void static ClassicalBridge.generatePrestoURL(forAlbum:)(uint64_t x8_0@<X8>)
{
  v3 = sub_1004BB3D4();
  if (v4)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v3, v4, x8_0);
  }

  else
  {
    sub_10008A2E8();
    swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    swift_willThrow();
  }
}

uint64_t static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100290750(a1, a2);
}

_OWORD *sub_10028CD08(void *a1)
{
  v2 = v1;
  v3 = a1[2];
  if (!v3)
  {
    sub_100134ECC();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0;
    *(v20 + 40) = 2;
LABEL_17:
    swift_willThrow();
    return (v19 & 1);
  }

  v4 = a1;
  v5 = a1[4];

  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
  {
    v4 = sub_100018288(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    v32 = v4;
  }

  sub_100132614(0, 1, 0);
  if (![v2 valueForBagKey:v6])
  {

    sub_100134ECC();
    swift_allocError();
    *v21 = v6;
    *(v21 + 40) = 0;
    goto LABEL_17;
  }

  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100004DE4(v31, v30);
  v8 = v4[2];
  result = v6;
  v10 = result;
  v27 = result;
  if (!v8)
  {
LABEL_13:

    sub_100004DE4(v30, v29);
    if (swift_dynamicCast())
    {

      sub_100004C6C(v30);
      sub_100004C6C(v31);
      v19 = v28;
    }

    else
    {
      sub_100134ECC();
      swift_allocError();
      v23 = v22;
      *v22 = v10;
      sub_100004DE4(v30, (v22 + 1));
      *(v23 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100004C6C(v30);
      sub_100004C6C(v31);
    }

    return (v19 & 1);
  }

  v11 = 0;
  v12 = result;
  while (v11 < v4[2])
  {
    v13 = v4[v11 + 4];
    sub_100004DE4(v30, v29);
    v10 = v13;
    sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_100134ECC();
      swift_allocError();
      v25 = v24;
      *v24 = v10;
      sub_100004DE4(v30, (v24 + 1));
      *(v25 + 40) = 1;
      goto LABEL_22;
    }

    v14 = sub_1004BBE64();
    if (!*(v28 + 16))
    {

LABEL_21:

      sub_100134ECC();
      swift_allocError();
      *v26 = v10;
      *(v26 + 40) = 0;
LABEL_22:
      swift_willThrow();

      goto LABEL_23;
    }

    v16 = sub_1000346D4(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    ++v11;
    sub_100004DE4(*(v28 + 56) + 32 * v16, v29);

    sub_100004C6C(v30);

    result = sub_10003E13C(v29, v30);
    v12 = v10;
    if (v8 == v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_10028D0D4(void *a1)
{
  v2 = v1;
  v3 = a1[2];
  if (!v3)
  {
    sub_100134ECC();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    return swift_willThrow();
  }

  v4 = a1;
  v5 = a1[4];

  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
  {
    v4 = sub_100018288(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    v31 = v4;
  }

  sub_100132614(0, 1, 0);
  if (![v2 valueForBagKey:v6])
  {

    sub_100134ECC();
    swift_allocError();
    *v20 = v6;
    *(v20 + 40) = 0;
    return swift_willThrow();
  }

  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100004DE4(v30, v29);
  v8 = v4[2];
  result = v6;
  v10 = result;
  v26 = result;
  if (v8)
  {
    v11 = 0;
    v12 = result;
    while (v11 < v4[2])
    {
      v13 = v4[v11 + 4];
      sub_100004DE4(v29, v28);
      v10 = v13;
      sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_100134ECC();
        swift_allocError();
        v24 = v23;
        *v23 = v10;
        sub_100004DE4(v29, (v23 + 1));
        *(v24 + 40) = 1;
        goto LABEL_22;
      }

      v14 = sub_1004BBE64();
      if (!*(v27 + 16))
      {

LABEL_21:

        sub_100134ECC();
        swift_allocError();
        *v25 = v10;
        *(v25 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v16 = sub_1000346D4(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v11;
      sub_100004DE4(*(v27 + 56) + 32 * v16, v28);

      sub_100004C6C(v29);

      result = sub_10003E13C(v28, v29);
      v12 = v10;
      if (v8 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_100004DE4(v29, v28);
    if (swift_dynamicCast())
    {

      sub_100004C6C(v29);
      sub_100004C6C(v30);
      return v27;
    }

    else
    {
      sub_100134ECC();
      swift_allocError();
      v22 = v21;
      *v21 = v10;
      sub_100004DE4(v29, (v21 + 1));
      *(v22 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100004C6C(v29);
      return sub_100004C6C(v30);
    }
  }

  return result;
}

uint64_t sub_10028D49C(uint64_t a1)
{
  v1[18] = a1;
  sub_1004BC474();
  v1[19] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_10028D534, v3, v2);
}

uint64_t sub_10028D534(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v2[22] = v3;
  sub_1004B6A44(v4);
  v6 = v5;
  v2[23] = v5;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1000C8DC0();
  isa = sub_1004BBC24().super.isa;
  v2[24] = isa;

  v2[2] = v2;
  v2[7] = v2 + 25;
  v2[3] = sub_10028D6E8;
  v8 = swift_continuation_init();
  v2[17] = sub_100003ABC(&qword_100606198, &qword_1004D3108);
  v2[10] = _NSConcreteStackBlock;
  v2[11] = 1107296256;
  v2[12] = sub_1001F1A28;
  v2[13] = &unk_1005BD478;
  v2[14] = v8;
  [v3 openURL:v6 options:isa completionHandler:v2 + 10];

  return _swift_continuation_await(v2 + 2);
}

uint64_t sub_10028D6E8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_10028D7F0, v2, v1);
}

uint64_t sub_10028D7F0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10028D870(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[20] = swift_task_alloc();
  v3 = sub_1004B6B04();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  sub_1004BC474();
  v2[24] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v2[25] = v5;
  v2[26] = v4;

  return _swift_task_switch(sub_10028D99C, v5, v4);
}

uint64_t sub_10028D99C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  sub_1004BD404(36);

  v23._countAndFlagsBits = v5;
  v23._object = v3;
  sub_1004BC024(v23);
  sub_1004B6AC4();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];

    sub_100007214(v6, &qword_100600DE0, &unk_1004C66D0);
    sub_10008A2E8();
    swift_allocError();
    *v9 = 0xD000000000000022;
    *(v9 + 8) = 0x8000000100506B60;
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    *(v9 + 32) = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v15 = v0[20];
    v14 = v0[21];

    (*(v13 + 32))(v12, v15, v14);
    v16 = [objc_opt_self() sharedApplication];
    v0[27] = v16;
    sub_1004B6A44(v17);
    v19 = v18;
    v0[28] = v18;
    sub_10003D128(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1000C8DC0();
    isa = sub_1004BBC24().super.isa;
    v0[29] = isa;

    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_10028DCC8;
    v21 = swift_continuation_init();
    v0[17] = sub_100003ABC(&qword_100606198, &qword_1004D3108);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001F1A28;
    v0[13] = &unk_1005BD4A0;
    v0[14] = v21;
    [v16 openURL:v19 options:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10028DCC8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_10028DDD0, v2, v1);
}

uint64_t sub_10028DDD0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

void sub_10028DE90(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if (([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = v3;
LABEL_7:
  [v5 presentViewController:a2 animated:1 completion:0];
}

void static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v61 = a4;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v8 = &v54 - v7;
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v9 = v67;
  if (v67)
  {
    v58 = a3;
    v59 = a2;
    sub_100003ABC(&qword_100601318, &qword_1004D88E0);
    inited = swift_initStackObject();
    v60 = xmmword_1004C50C0;
    *(inited + 16) = xmmword_1004C50C0;
    v11 = ICURLBagKeyMusicCommon;
    *(inited + 32) = ICURLBagKeyMusicCommon;
    v12 = qword_100600628;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = qword_100609278;
    *(inited + 40) = qword_100609278;
    v15 = v14;
    v16 = sub_10028CD08(inited);
    if (v4)
    {

      swift_setDeallocating();
      type metadata accessor for ICURLBagKey(0);
      swift_arrayDestroy();
    }

    else
    {
      v18 = v16;
      swift_setDeallocating();
      type metadata accessor for ICURLBagKey(0);
      v57 = v19;
      swift_arrayDestroy();
      if (v18)
      {
        v20 = swift_initStackObject();
        v56 = xmmword_1004C5070;
        *(v20 + 16) = xmmword_1004C5070;
        *(v20 + 32) = v13;
        v21 = qword_100600638;
        v55 = v13;
        if (v21 != -1)
        {
          swift_once();
        }

        v22 = qword_100609288;
        *(v20 + 40) = qword_100609288;
        v23 = qword_100600640;
        v24 = v22;
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = qword_100609290;
        *(v20 + 48) = qword_100609290;
        v26 = v25;
        sub_10028D0D4(v20);

        swift_setDeallocating();
        swift_arrayDestroy();
        v28 = swift_initStackObject();
        *(v28 + 16) = v56;
        v29 = v55;
        *(v28 + 32) = v55;
        *(v28 + 40) = v24;
        v30 = qword_100600648;
        *&v56 = v29;
        v31 = v24;
        if (v30 != -1)
        {
          swift_once();
        }

        v32 = qword_100609298;
        *(v28 + 48) = qword_100609298;
        v33 = v32;
        sub_10028D0D4(v28);

        swift_setDeallocating();
        swift_arrayDestroy();
        v34 = swift_initStackObject();
        *(v34 + 16) = v60;
        v35 = v56;
        *(v34 + 32) = v56;
        v36 = qword_100600630;
        v37 = v35;
        if (v36 != -1)
        {
          swift_once();
        }

        v38 = qword_100609280;
        *(v34 + 40) = qword_100609280;
        v39 = v38;
        v40 = sub_10028D0D4(v34);
        v42 = v41;
        swift_setDeallocating();
        swift_arrayDestroy();
        v57 = v40;
        v67 = v40;
        v68 = v42;
        *&v60 = v42;
        v65 = 0x7D646E696B7BLL;
        v66 = 0xE600000000000000;
        v43 = 0x747369747261;
        if (v62)
        {
          v43 = 0x6D75626C61;
          v44 = 0xE500000000000000;
        }

        else
        {
          v44 = 0xE600000000000000;
        }

        v63 = v43;
        v64 = v44;
        sub_10000E7F4();
        v45 = sub_1004BD224();
        v47 = v46;

        v67 = v45;
        v68 = v47;
        v65 = 2103732603;
        v66 = 0xE400000000000000;
        v48 = v58;
        v63 = v59;
        v64 = v58;
        sub_1004BD224();

        sub_1004B6AC4();

        v49 = sub_1004B6B04();
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v8, 1, v49) == 1)
        {
          sub_100007214(v8, &qword_100600DE0, &unk_1004C66D0);
          sub_10008A2E8();
          swift_allocError();
          v51 = v59;
          v52 = v60;
          *v53 = v57;
          *(v53 + 8) = v52;
          *(v53 + 16) = v51;
          *(v53 + 24) = v48;
          *(v53 + 32) = 1;
          swift_willThrow();
        }

        else
        {

          (*(v50 + 32))(v61, v8, v49);
        }
      }

      else
      {
        sub_10008A2E8();
        swift_allocError();
        *v27 = 1;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 32) = 2;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_10008A2E8();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 2;
    swift_willThrow();
  }
}

uint64_t ClassicalBridge.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D75626C61;
  }

  else
  {
    return 0x747369747261;
  }
}

MusicCore::ClassicalBridge::Type_optional __swiftcall ClassicalBridge.Type.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_1005A6840;
  v6._object = object;
  v3 = sub_1004BD764(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_ClassicalBridge_Type_album;
  }

  else
  {
    v4.value = MusicCore_ClassicalBridge_Type_unknownDefault;
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

uint64_t sub_10028E744(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D75626C61;
  }

  else
  {
    v3 = 0x747369747261;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D75626C61;
  }

  else
  {
    v5 = 0x747369747261;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_10028E7E4()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

double sub_10028E860(uint64_t a1)
{
  sub_1004BBF84();

  return result;
}

Swift::Int sub_10028E8C8()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

void sub_10028E940(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A6840;
  v7._object = v3;
  v5 = sub_1004BD764(v4, v7);

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

void sub_10028E9A0(uint64_t *a1@<X8>)
{
  v2 = 0x747369747261;
  if (*v1)
  {
    v2 = 0x6D75626C61;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void static ClassicalBridge.generatePrestoURL(forModelObject:)(uint64_t a3@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v4;
  if (v4 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = [v4 identifiers];
    v7 = [v6 universalStore];

    if (v7)
    {
      [v7 adamID];
      v8 = sub_1004BD934();
      v10 = v9;
      swift_unknownObjectRelease();
      static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(v5 != 0, v8, v10, a3);

      return;
    }

    sub_10008A2E8();
    swift_allocError();
    v12 = 4;
  }

  else
  {
    sub_10008A2E8();
    swift_allocError();
    v12 = 3;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 2;
  swift_willThrow();
}

uint64_t sub_10028EB8C()
{
  result = swift_slowAlloc();
  qword_100609270 = result;
  return result;
}

char *sub_10028EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationRecordObserver] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app];
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  v12 = &v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationInstalledBlock];
  *v12 = a4;
  *(v12 + 1) = a5;
  v21.receiver = v5;
  v21.super_class = _s23StoreProductCoordinatorCMa(0, v13);

  v14 = objc_msgSendSuper2(&v21, "init");
  v15 = *NSNotificationName.applicationRegistered.unsafeMutableAddressor();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v15;

  type metadata accessor for NotificationObserver(0, v18);
  swift_allocObject();

  v19 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 0, sub_100291D90, v16);

  *&v14[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationRecordObserver] = v19;

  return v14;
}

void sub_10028ED38(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v3 = &v14 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app);
    v7 = *(Strong + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app + 8);

    LOBYTE(v6) = static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(v6, v7);

    if (v6)
    {
      v8 = sub_1004BC4B4();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v5;
      v10 = v5;
      sub_1000FD6BC(0, 0, v3, &unk_1004D8AF0, v9);

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 presentingViewController];

        if (v13)
        {
          [v13 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

uint64_t sub_10028EF18()
{
  v1 = v0[3] + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationInstalledBlock;
  v2 = *v1;
  v0[4] = *(v1 + 8);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10028F024;

  return v5();
}

uint64_t sub_10028F024()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10028F198;
  }

  else
  {
    v2 = sub_10028F138;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028F138()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028F198()
{
  v14 = v0;

  if (qword_100600650 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.classicalBridge);
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v8 = sub_1004BBF04();
    v10 = sub_100012018(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not execute applicationInstalledBlock, error: %s", v6, 0xCu);
    sub_100004C6C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t Logger.classicalBridge.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_100600650 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.classicalBridge);
}

id sub_10028F3D4()
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = [objc_allocWithZone(SKStoreProductViewController) init];
  [v3 setDelegate:v0];
  if (qword_100600620 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v3, qword_100609270, v0, 1);
  v4 = sub_1004BC4B4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1004BC474();
  v5 = v3;
  v6 = v0;
  v7 = sub_1004BC464();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  v8[5] = v6;
  sub_1001FA848(0, 0, v2, &unk_1004D8AC0, v8);

  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_10028F594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[28] = a1;
  sub_1004BC474();
  v5[31] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v5[32] = v7;
  v5[33] = v6;

  return _swift_task_switch(sub_10028F630, v7, v6);
}

uint64_t sub_10028F630()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v4;
  v5 = *(v2 + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app + 16);
  *(inited + 72) = &type metadata for Int64;
  *(inited + 48) = v5;
  sub_10003C58C(inited);
  swift_setDeallocating();
  sub_100007214(inited + 32, &qword_100601C08, &qword_1004C95C0);
  isa = sub_1004BBC24().super.isa;
  v0[34] = isa;

  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_10028F828;
  v7 = swift_continuation_init();
  v0[27] = sub_100003ABC(&qword_1006061A0, &unk_1004D3110);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_1001F1DF4;
  v0[23] = &unk_1005BD388;
  v0[24] = v7;
  [v1 loadProductWithParameters:isa completionBlock:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10028F828()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_10028F9D0;
  }

  else
  {
    v5 = sub_10028F958;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10028F958()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);

  *v2 = *(v0 + 288);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10028F9D0()
{
  v1 = *(v0 + 272);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id sub_10028FA78(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s23StoreProductCoordinatorCMa(0, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

NSString sub_10028FB24()
{
  result = sub_1004BBE24();
  qword_100609278 = result;
  return result;
}

NSString sub_10028FB5C()
{
  result = sub_1004BBE24();
  qword_100609280 = result;
  return result;
}

NSString sub_10028FB94()
{
  result = sub_1004BBE24();
  qword_100609288 = result;
  return result;
}

NSString sub_10028FBCC()
{
  result = sub_1004BBE24();
  qword_100609290 = result;
  return result;
}

NSString sub_10028FC00()
{
  result = sub_1004BBE24();
  qword_100609298 = result;
  return result;
}

uint64_t sub_10028FC30(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.classicalBridge);
  sub_100007084(v2, static Logger.classicalBridge);
  return sub_1004B80A4();
}

uint64_t static Logger.classicalBridge.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_100600650 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.classicalBridge);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

void *sub_10028FD58(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&unk_100609380, &qword_1004D8B00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_10028FDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1004BC104();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100290358(v4, v5);
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
      v7 = sub_1004BD4C4();
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