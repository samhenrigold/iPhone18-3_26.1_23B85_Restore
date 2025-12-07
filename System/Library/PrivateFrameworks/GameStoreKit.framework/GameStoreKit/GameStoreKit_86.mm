uint64_t Lockup.init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, unsigned __int8 a49, uint64_t a50, unsigned __int8 a51)
{
  v52 = v51;
  v121 = a8;
  v119 = a7;
  v125 = a6;
  v117 = a5;
  v115 = a4;
  v114 = a3;
  v143 = a50;
  v145 = a49;
  v146 = a51;
  v132 = a48;
  v130 = a47;
  v144 = a44;
  v141 = a42;
  v142 = a43;
  v139 = a40;
  v140 = a41;
  v137 = a38;
  v138 = a39;
  v136 = a37;
  v135 = a36;
  v133 = a35;
  v131 = a34;
  v129 = a33;
  v128 = a32;
  v124 = a31;
  v127 = a28;
  v126 = a27;
  v123 = a26;
  v120 = a25;
  v107 = a24;
  v106 = a23;
  v122 = a22;
  v113 = a21;
  v112 = a20;
  v111 = a19;
  v110 = a18;
  v118 = a17;
  v109 = a16;
  v108 = a15;
  v105 = a12;
  v104 = a11;
  v103 = a10;
  v102 = a9;
  v134 = a46;
  v116 = a29;
  v101 = a13;
  v55 = sub_24F91F6B8();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v97 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a2;
  v98 = a2[1];
  v60 = a1;
  v61 = *a14;
  v62 = *a30;
  v99 = a30[1];
  v100 = v62;
  v63 = *(a30 + 16);
  v64 = *a45;
  *(v52 + 424) = 4;
  sub_24E60169C(v60, &v149, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v150 + 1))
  {
    v152 = v149;
    v153 = v150;
    v154 = v151;
  }

  else
  {
    sub_24F91F6A8();
    v65 = sub_24F91F668();
    v97 = v59;
    v66 = v61;
    v67 = v63;
    v68 = v60;
    v69 = v65;
    v71 = v70;
    (*(v56 + 8))(v58, v55);
    v147 = v69;
    v148 = v71;
    v60 = v68;
    v63 = v67;
    v61 = v66;
    v59 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v149, &qword_27F235830, &qword_24F93B8C0);
  }

  v72 = v153;
  *(v52 + 448) = v152;
  *(v52 + 464) = v72;
  *(v52 + 480) = v154;
  v73 = v143;
  sub_24E60169C(v143, v52 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v74 = v98;
  *(v52 + 16) = v59;
  *(v52 + 24) = v74;
  v75 = v115;
  *(v52 + 32) = v114;
  *(v52 + 40) = v75;
  *(v52 + 48) = v117;
  v76 = v107;
  *(v52 + 64) = v106;
  *(v52 + 72) = v76;
  v77 = v121;
  *(v52 + 80) = v119;
  *(v52 + 88) = v77;
  v78 = v103;
  *(v52 + 96) = v102;
  *(v52 + 104) = v78;
  v79 = v105;
  *(v52 + 112) = v104;
  *(v52 + 120) = v79;
  *(v52 + 128) = v101;
  *(v52 + 56) = v125 & 1;
  *(v52 + 136) = v61;
  v80 = v109;
  *(v52 + 144) = v108;
  *(v52 + 152) = v80;
  v81 = v111;
  *(v52 + 192) = v110;
  *(v52 + 200) = v81;
  v82 = v113;
  *(v52 + 208) = v112;
  *(v52 + 216) = v82;
  v83 = v99;
  *(v52 + 376) = v100;
  *(v52 + 392) = v83;
  *(v52 + 408) = v63;
  *(v52 + 360) = v130;
  *(v52 + 416) = v124;
  *(v52 + 432) = v132;
  v84 = v123;
  *(v52 + 160) = v120;
  *(v52 + 168) = v84;
  v85 = v118;
  *(v52 + 176) = v126;
  *(v52 + 184) = v85;
  v86 = v128;
  *(v52 + 224) = v122;
  *(v52 + 232) = v86;
  v87 = v127;
  *(v52 + 240) = v129;
  *(v52 + 248) = v87;
  v88 = v131;
  *(v52 + 256) = v116;
  *(v52 + 264) = v88;
  v89 = v135;
  *(v52 + 272) = v133;
  *(v52 + 280) = v89;
  v90 = v137;
  v91 = v138;
  *(v52 + 288) = v136;
  *(v52 + 296) = v90;
  v92 = v139;
  v93 = v140;
  *(v52 + 304) = v91;
  *(v52 + 312) = v92;
  v95 = v141;
  v94 = v142;
  *(v52 + 320) = v93;
  *(v52 + 328) = v95;
  *(v52 + 336) = v94;
  sub_24E601704(v73, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v60, &qword_27F235830, &qword_24F93B8C0);
  *(v52 + 344) = v144;
  *(v52 + 352) = v64 & 1;
  *(v52 + 440) = v134;
  *(v52 + 368) = v145 & 1;
  *(v52 + 369) = v146 & 1;
  return v52;
}

uint64_t Lockup.deinit()
{

  sub_24E951FEC(*(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408));

  sub_24E6585F8(v0 + 448);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t sub_24EECDA24@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v1;
}

void sub_24EECDAAC(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 424) = v2;
}

double sub_24EECDB3C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EECDB74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 432) = a1;
}

uint64_t sub_24EECDC0C()
{
  sub_24F92C888();
  v1 = sub_24F92D1E8();

  v12 = v1;
  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  MEMORY[0x253050C20](v0[2], v0[3]);
  MEMORY[0x253050C20](93, 0xE100000000000000);
  MEMORY[0x253050C20](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x253050C20](0x6964616548202D20, 0xEC000000203A676ELL);
  v2 = v0[11];
  if (v2)
  {
    v3 = v0[10];
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v0[11];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v3, v4);

  MEMORY[0x253050C20](0x3A656C746974202CLL, 0xE900000000000020);
  v5 = v0[13];
  if (v5)
  {
    v6 = v0[12];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v0[13];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v6, v7);

  MEMORY[0x253050C20](0x746974627573202CLL, 0xEB000000003A656CLL);
  v8 = v0[15];
  if (v8)
  {
    v9 = v0[14];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v0[15];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v12;
}

uint64_t type metadata accessor for Lockup(uint64_t a1)
{
  result = qword_27F2330A8;
  if (!qword_27F2330A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Lockup.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Lockup.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Lockup.__allocating_init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, unsigned __int8 a49, uint64_t a50, unsigned __int8 a51)
{
  v122 = a8;
  v120 = a7;
  v126 = a6;
  v118 = a5;
  v116 = a4;
  v115 = a3;
  v144 = a50;
  v146 = a49;
  v147 = a51;
  v133 = a48;
  v131 = a47;
  v145 = a44;
  v142 = a42;
  v143 = a43;
  v140 = a40;
  v141 = a41;
  v138 = a38;
  v139 = a39;
  v136 = a36;
  v137 = a37;
  v134 = a35;
  v132 = a34;
  v130 = a33;
  v129 = a32;
  v125 = a31;
  v128 = a28;
  v127 = a27;
  v124 = a26;
  v121 = a25;
  v108 = a24;
  v107 = a23;
  v123 = a22;
  v114 = a21;
  v113 = a20;
  v112 = a19;
  v111 = a18;
  v119 = a17;
  v110 = a16;
  v109 = a15;
  v106 = a12;
  v105 = a11;
  v104 = a10;
  v103 = a9;
  v135 = a46;
  v117 = a29;
  v102 = a13;
  v53 = sub_24F91F6B8();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = swift_allocObject();
  v58 = *a2;
  v99 = a2[1];
  v59 = a1;
  v60 = *a14;
  v61 = *a30;
  v100 = a30[1];
  v101 = v61;
  v62 = *(a30 + 16);
  v63 = *a45;
  *(v57 + 424) = 4;
  sub_24E60169C(v59, &v150, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v151 + 1))
  {
    v64 = v151;
    *(v57 + 448) = v150;
    *(v57 + 464) = v64;
    *(v57 + 480) = v152;
  }

  else
  {
    sub_24F91F6A8();
    v65 = sub_24F91F668();
    v98 = v58;
    v66 = v60;
    v67 = v62;
    v68 = v63;
    v69 = v59;
    v70 = v65;
    v72 = v71;
    (*(v54 + 8))(v56, v53);
    v148 = v70;
    v149 = v72;
    v59 = v69;
    v63 = v68;
    v62 = v67;
    v60 = v66;
    v58 = v98;
    sub_24F92C7F8();
    sub_24E601704(&v150, &qword_27F235830, &qword_24F93B8C0);
  }

  v73 = v144;
  sub_24E60169C(v144, v57 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v74 = v99;
  *(v57 + 16) = v58;
  *(v57 + 24) = v74;
  v75 = v116;
  *(v57 + 32) = v115;
  *(v57 + 40) = v75;
  *(v57 + 48) = v118;
  v76 = v108;
  *(v57 + 64) = v107;
  *(v57 + 72) = v76;
  v77 = v122;
  *(v57 + 80) = v120;
  *(v57 + 88) = v77;
  v78 = v104;
  *(v57 + 96) = v103;
  *(v57 + 104) = v78;
  v79 = v106;
  *(v57 + 112) = v105;
  *(v57 + 120) = v79;
  *(v57 + 128) = v102;
  *(v57 + 56) = v126 & 1;
  *(v57 + 136) = v60;
  v80 = v110;
  *(v57 + 144) = v109;
  *(v57 + 152) = v80;
  v81 = v112;
  *(v57 + 192) = v111;
  *(v57 + 200) = v81;
  v82 = v114;
  *(v57 + 208) = v113;
  *(v57 + 216) = v82;
  v83 = v100;
  *(v57 + 376) = v101;
  *(v57 + 392) = v83;
  *(v57 + 408) = v62;
  *(v57 + 360) = v131;
  *(v57 + 416) = v125;
  *(v57 + 432) = v133;
  v84 = v124;
  *(v57 + 160) = v121;
  *(v57 + 168) = v84;
  v85 = v119;
  *(v57 + 176) = v127;
  *(v57 + 184) = v85;
  v86 = v129;
  *(v57 + 224) = v123;
  *(v57 + 232) = v86;
  v87 = v128;
  *(v57 + 240) = v130;
  *(v57 + 248) = v87;
  v88 = v132;
  *(v57 + 256) = v117;
  *(v57 + 264) = v88;
  v89 = v136;
  v90 = v137;
  *(v57 + 272) = v134;
  *(v57 + 280) = v89;
  v91 = v138;
  v92 = v139;
  *(v57 + 288) = v90;
  *(v57 + 296) = v91;
  v93 = v140;
  v94 = v141;
  *(v57 + 304) = v92;
  *(v57 + 312) = v93;
  v96 = v142;
  v95 = v143;
  *(v57 + 320) = v94;
  *(v57 + 328) = v96;
  *(v57 + 336) = v95;
  sub_24E601704(v73, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v59, &qword_27F235830, &qword_24F93B8C0);
  *(v57 + 344) = v145;
  *(v57 + 352) = v63 & 1;
  *(v57 + 440) = v135;
  *(v57 + 368) = v146 & 1;
  *(v57 + 369) = v147 & 1;
  return v57;
}

uint64_t Lockup.__allocating_init(removingActions:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v38 = &v30 - v3;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v5 = *(a1 + 24);
  v68[0] = *(a1 + 16);
  v68[1] = v5;
  v6 = *(a1 + 40);
  v57 = *(a1 + 32);
  v63 = v6;
  v42 = *(a1 + 48);
  v56 = *(a1 + 56);
  v7 = *(a1 + 88);
  v55 = *(a1 + 80);
  v41 = v7;
  v8 = *(a1 + 104);
  v54 = *(a1 + 96);
  v40 = v8;
  v9 = *(a1 + 120);
  v53 = *(a1 + 112);
  v62 = v9;
  v60 = *(a1 + 128);
  v67 = *(a1 + 136);
  v10 = *(a1 + 152);
  v52 = *(a1 + 144);
  v11 = *(a1 + 200);
  v58 = *(a1 + 192);
  v59 = v10;
  v51 = v11;
  v12 = *(a1 + 216);
  v30 = *(a1 + 208);
  v50 = v12;
  v13 = *(a1 + 224);
  v14 = *(a1 + 72);
  v48 = *(a1 + 64);
  v15 = *(a1 + 168);
  v34 = *(a1 + 160);
  v46 = v15;
  v16 = *(a1 + 176);
  v49 = *(a1 + 184);
  v17 = *(a1 + 256);
  v44 = *(a1 + 248);
  v18 = *(a1 + 320);
  v43 = *(a1 + 312);
  v37 = v18;
  v66 = *(a1 + 352);
  v19 = *(a1 + 336);
  v31 = *(a1 + 328);
  v35 = v19;
  v36 = *(a1 + 344);
  v33 = *(a1 + 360);
  v39 = *(a1 + 368);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v4, &qword_27F213E68, &unk_24F93BC80);
  v32 = *(a1 + 369);
  memset(v64, 0, sizeof(v64));
  v65 = 0x8000;
  v47 = v61 + 392;
  v45 = *(v61 + 392);

  v20 = v60;

  v21 = v30;

  v22 = v34;
  v23 = v34;

  v24 = v37;

  v25 = v31;

  v26 = v35;

  v28 = v45(v69, v68, v57, v63, v42, v56, v55, v41, v54, v40, v53, v62, v60, &v67, v52, v59, v49, v58, v51, v21, v50, v13, v48, v14, v22, v46, v16, v44, v17, v64, 0, 0, 0, 0, 0, 0, 0, 0, 0, v43, v24, v25, v26, v27, &v66, 0, v33, MEMORY[0x277D84FA0], v39, v38, v32);

  return v28;
}

double Lockup.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t Lockup.bundleId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Lockup.ordinal.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Lockup.heading.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Lockup.title.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Lockup.subtitle.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *Lockup.subtitleTextColor.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t Lockup.developerTagline.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void *Lockup.rating.getter()
{
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

uint64_t Lockup.ratingCount.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t Lockup.editorialTagline.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t Lockup.editorialDescription.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t Lockup.shortEditorialDescription.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t Lockup.ageRating.getter()
{
  v1 = *(v0 + 248);

  return v1;
}

uint64_t Lockup.crossLinkTitle.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t Lockup.crossLinkSubtitle.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t Lockup.tertiaryTitle.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

double Lockup.shelfBackground.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  v4 = *(v1 + 392);
  v5 = *(v1 + 400);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 408);
  *(a1 + 32) = v6;
  return sub_24E951F10(v2, v3, v4, v5, v6);
}

uint64_t sub_24EECECDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 432) = v2;
}

uint64_t Lockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EECEE00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24EECEE54@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

double sub_24EECEE9C@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 384);
  v5 = *(*v1 + 392);
  v6 = *(*v1 + 400);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 408);
  *(a1 + 32) = v7;
  return sub_24E951F10(v3, v4, v5, v6, v7);
}

double sub_24EECEEC8@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

double sub_24EECEED8()
{
  swift_beginAccess();

  return result;
}

void sub_24EECEF28(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  *a1 = *(v3 + 424);
}

unint64_t sub_24EECEFD0()
{
  result = qword_27F233080;
  if (!qword_27F233080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233080);
  }

  return result;
}

unint64_t sub_24EECF024()
{
  result = qword_27F233090;
  if (!qword_27F233090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233088, &qword_24F9ABBB8);
    sub_24EECF174(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233090);
  }

  return result;
}

unint64_t sub_24EECF0D8()
{
  result = qword_27F233098;
  if (!qword_27F233098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233098);
  }

  return result;
}

uint64_t sub_24EECF174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EECF1BC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 424);
}

void sub_24EECF204(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 424) = v2;
}

double sub_24EECF248@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 432);

  return result;
}

void sub_24EECF2A0(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of Lockup.__allocating_init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)()
{
  v1 = *(v0 + 392);

  return v1();
}

unint64_t sub_24EECF710()
{
  result = qword_27F2330B8;
  if (!qword_27F2330B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2330B8);
  }

  return result;
}

uint64_t sub_24EECF76C()
{
  result = sub_24F92B098();
  qword_27F2330C0 = result;
  return result;
}

id static PersonalizedMediaTokenService.mediaTokenAccountDidChangeNotification.getter()
{
  if (qword_27F2107E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F2330C0;

  return v1;
}

id sub_24EECF800(void *a1, uint64_t a2)
{
  v27 = a2;
  v29 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v26 = sub_24F92BEE8();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92BE88();
  MEMORY[0x28223BE20](v8);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v25 = OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_queue;
  v10 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v24[1] = "idChangeNotification";
  v24[2] = v10;
  sub_24F927DA8();
  v32 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  v11 = v27;
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  v12 = v28;
  sub_24F92C6A8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v26);
  *&v12[v25] = sub_24F92BF38();
  v13 = v29;
  *&v12[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService] = v29;
  v14 = v13;
  MEMORY[0x2530504F0]();
  v15 = sub_24F92AB18();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_24E94221C(v4);
    v17 = 0;
  }

  else
  {
    v17 = sub_24F92AB08();
    (*(v16 + 8))(v4, v15);
  }

  [v14 setAccount_];

  *&v12[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_accounts] = v11;
  v31.receiver = v12;
  v31.super_class = ObjectType;

  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  sub_24F92AB98();
  v22 = sub_24F92AB78();
  [v21 addObserver:v20 selector:sel_accountsDidChange name:v22 object:v11];

  return v20;
}

double sub_24EECFC68()
{
  ObjectType = swift_getObjectType();
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v0[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_queue];
  v9 = *&v0[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_accounts];
  v10 = *&v0[OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v0;
  v11[5] = ObjectType;
  aBlock[4] = sub_24EED0474;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_88;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  v14 = v0;
  sub_24F927DA8();
  v18 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v17);

  return result;
}

void sub_24EECFF58(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v18 - v7;
  v9 = [a1 account];
  MEMORY[0x2530504F0]();
  v10 = sub_24F92AB18();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_24E94221C(v8);
    v12 = 0;
  }

  else
  {
    v12 = sub_24F92AB08();
    (*(v11 + 8))(v8, v10);
  }

  v13 = [v12 ams_DSID];
  v14 = [v9 ams_DSID];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      v16 = sub_24F92C408();

      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v17 = v12;
      goto LABEL_15;
    }

    v15 = v13;
  }

  else if (!v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  [a1 setAccount_];
  [a1 invalidateMediaToken];
  v17 = [objc_opt_self() defaultCenter];
  if (qword_27F2107E0 != -1)
  {
    swift_once();
  }

  [v17 postNotificationName:qword_27F2330C0 object:a3];

  v9 = v12;
LABEL_15:
}

id PersonalizedMediaTokenService.fetchMediaToken()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit29PersonalizedMediaTokenService_tokenService) fetchMediaToken];

  return v1;
}

id PersonalizedMediaTokenService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonalizedMediaTokenService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EED042C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void MetricsPageEnterGate.hasMetricsPage.setter(char a1)
{
  v3 = sub_24F9287F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = *(v1 + 34);
  *(v1 + 34) = a1;
  if (v7 & 1) == 0 && (a1)
  {
    swift_beginAccess();
    if (*(v1 + 32) == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_24F9287E8();
        (*(v8 + 8))(v6, ObjectType, v8);
        swift_unknownObjectRelease();
        (*(v4 + 8))(v6, v3);
      }
    }
  }
}

void MetricsPageEnterGate.hasAppeared.setter(char a1)
{
  v3 = a1 & 1;
  v4 = sub_24F9287F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v8 != v3)
  {
    swift_beginAccess();
    if (*(v1 + 34) == 1 && (a1 & 1) != 0)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_24F9287E8();
        (*(v9 + 8))(v7, ObjectType, v9);
        swift_unknownObjectRelease();
        (*(v5 + 8))(v7, v4);
      }
    }
  }
}

void MetricsPageEnterGate.hasExitedWhileAppeared.setter(char a1)
{
  v3 = sub_24F9287F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = *(v1 + 33);
  *(v1 + 33) = a1;
  if (v7 == 1 && (a1 & 1) == 0)
  {
    swift_beginAccess();
    if (*(v1 + 34))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        sub_24F9287B8();
        (*(v8 + 8))(v6, ObjectType, v8);
        swift_unknownObjectRelease();
        (*(v4 + 8))(v6, v3);
      }
    }
  }
}

uint64_t sub_24EED08D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v8 = a3(a1, v3, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

void (*MetricsPageEnterGate.hasAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_24F9287F8();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 32);
  return sub_24EED0A58;
}

void sub_24EED0A58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasAppeared.setter(*(*a1 + 80));
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 32);
    *(v5 + 32) = v3;
    if (v3 != v6)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (v3)
      {
        if ((*(v7 + 34) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_24F9287E8();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasExitedWhileAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_24F9287F8();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 33);
  return sub_24EED0C98;
}

void sub_24EED0C98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasExitedWhileAppeared.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 33);
    *(v5 + 33) = v3;
    if (v6 == 1 && (v3 & 1) == 0)
    {
      v7 = v2[6];
      swift_beginAccess();
      if (*(v7 + 34))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = v2[8];
          v8 = v2[9];
          v10 = v2[7];
          v11 = *(v2[6] + 24);
          ObjectType = swift_getObjectType();
          sub_24F9287B8();
          (*(v11 + 8))(v8, ObjectType, v11);
          swift_unknownObjectRelease();
          (*(v9 + 8))(v8, v10);
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

void (*MetricsPageEnterGate.hasMetricsPage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_24F9287F8();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 72) = v8;
  swift_beginAccess();
  *(v5 + 80) = *(v1 + 34);
  return sub_24EED0ED4;
}

void sub_24EED0ED4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = v2[9];
    MetricsPageEnterGate.hasMetricsPage.setter(v3);
  }

  else
  {
    v5 = v2[6];
    v6 = *(v5 + 34);
    *(v5 + 34) = v3;
    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v7 = v2[6];
        swift_beginAccess();
        if (*(v7 + 32) == 1)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = v2[8];
            v8 = v2[9];
            v10 = v2[7];
            v11 = *(v2[6] + 24);
            ObjectType = swift_getObjectType();
            sub_24F9287E8();
            (*(v11 + 8))(v8, ObjectType, v11);
            swift_unknownObjectRelease();
            (*(v9 + 8))(v8, v10);
          }
        }
      }
    }

    v4 = v2[9];
  }

  free(v4);

  free(v2);
}

uint64_t MetricsPageEnterGate.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EED1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 32) = 0;
  *(a2 + 34) = 0;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_24EED10A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;
  *(v5 + 34) = 0;
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_24EED110C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

void sub_24EED117C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 33);
}

void sub_24EED11EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 34);
}

double static CGRect.frame(pinnedAtBottomLeftOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MinX;
}

CGFloat static CGRect.frame(pinnedAtBottomRightOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMaxX(*&a1) - a5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

CGFloat static CGRect.frame(centeredWithin:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) - a5 * 0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtTopCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  return v9;
}

CGFloat static CGRect.frame(pinnedAtBottomCenterOf:of:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) + a5 * -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return v9;
}

double static ReviewComposerUtility.iconSize(from:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon);
  if (v1)
  {
    return dbl_24F9AC078[*(v1 + 64)];
  }

  else
  {
    return 60.0;
  }
}

uint64_t _s12GameStoreKit21ReviewComposerUtilityO11lockupStyle4from20AppleMediaServicesUI0d6LockupH0CAA05WriteD6ActionC_tFZ_0(uint64_t a1)
{
  v2 = sub_24F921E78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24F921E88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = *(v11 + 64);
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        v15 = MEMORY[0x277CEE7F8];
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    if (v12)
    {
      v20[13] = 1;
      v14 = 60.0;
      goto LABEL_20;
    }

LABEL_12:
    v15 = MEMORY[0x277CEE800];
LABEL_13:
    (*(v7 + 104))(v10, *v15, v6, v8);
    (*(v3 + 104))(v5, *MEMORY[0x277CEE7E8], v2);
    v16 = objc_allocWithZone(sub_24F921EB8());
    return sub_24F921EA8();
  }

  if (v12 > 5)
  {
    if (v12 == 6 || v12 != 7)
    {
      goto LABEL_12;
    }

    v20[15] = 7;
    v14 = 36.0;
LABEL_20:
    Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, 60.0, v14);
    (*(v7 + 104))(v10, *MEMORY[0x277CEE800], v6);
    (*(v3 + 104))(v5, *MEMORY[0x277CEE7E8], v2);
    v19 = objc_allocWithZone(sub_24F921EB8());
    return sub_24F921EA8();
  }

  if (v12 != 4)
  {
    v15 = MEMORY[0x277CEE7F0];
    goto LABEL_13;
  }

LABEL_18:
  v20[14] = v12;
  Artwork.Style.iconCornerRadius(for:isPlaceholder:)(1, 60.0, 60.0);
  (*(v7 + 104))(v10, *MEMORY[0x277CEE800], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CEE7E8], v2);
  v18 = objc_allocWithZone(sub_24F921EB8());
  return sub_24F921E98();
}

uint64_t TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[3];
  *(a6 + 160) = a1[2];
  *(a6 + 176) = v9;
  v10 = a1[5];
  *(a6 + 192) = a1[4];
  *(a6 + 208) = v10;
  v11 = a1[1];
  *(a6 + 128) = *a1;
  *(a6 + 144) = v11;
  *a6 = a2;
  sub_24E612C80(a3, a6 + 8);
  sub_24E612C80(a4, a6 + 48);

  return sub_24E612C80(a5, a6 + 88);
}

uint64_t TitledParagraphLayout.Metrics.init(textSpace:bodyTopSpace:columnWidth:columnMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_24E612C80(a1, a3);
  result = sub_24E612C80(a2, a3 + 40);
  *(a3 + 80) = a4;
  *(a3 + 88) = a5;
  return result;
}

uint64_t TitledParagraphLayout.Metrics.textSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t TitledParagraphLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t static TitledParagraphLayout.isMultiColumn(compatibleWith:)(uint64_t a1)
{
  if (sub_24F92BF78())
  {
    v1 = sub_24F92BF98() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

double TitledParagraphLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F9225E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24F922618();
  v11 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = v66 - v16;
  v18 = [a1 traitCollection];
  if (*v3 == 1 && (sub_24F92BF78() & 1) != 0 && (sub_24F92BF98() & 1) == 0)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D22788], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_24F93A400;
    v56 = v4[9];
    v55 = v4[10];
    v57 = __swift_project_boxed_opaque_existential_1(v4 + 6, v56);
    *(v54 + 56) = v56;
    *(v54 + 64) = *(v55 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v54 + 32));
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_1, v57, v56);
    v60 = v4[4];
    v59 = v4[5];
    v61 = __swift_project_boxed_opaque_existential_1(v4 + 1, v60);
    v74 = v60;
    v75 = *(v59 + 8);
    v62 = __swift_allocate_boxed_opaque_existential_1(v73);
    (*(*(v60 - 8) + 16))(v62, v61, v60);
    sub_24E615E00((v4 + 16), v72);
    v70 = sub_24F922418();
    v71 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v69);
    sub_24F922408();
    v63 = sub_24F9229F8();
    v64 = MEMORY[0x277D22900];
    *(v54 + 96) = v63;
    *(v54 + 104) = v64;
    __swift_allocate_boxed_opaque_existential_1((v54 + 72));
    sub_24F9229E8();
    sub_24F9225F8();
    sub_24F9225D8();
    __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
    sub_24F922288();

    (*(v11 + 8))(v17, v68);
  }

  else
  {
    v67 = v18;
    v19 = sub_24F92BF98();
    (*(v8 + 104))(v10, *MEMORY[0x277D22788], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
    if (v19)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24F93FC20;
      sub_24E615E00((v4 + 16), v73);
      v21 = sub_24F9229A8();
      v22 = MEMORY[0x277D228E0];
      *(v20 + 56) = v21;
      *(v20 + 64) = v22;
      __swift_allocate_boxed_opaque_existential_1((v20 + 32));
      sub_24F9229B8();
      v24 = v4[9];
      v23 = v4[10];
      v25 = __swift_project_boxed_opaque_existential_1(v4 + 6, v24);
      *(v20 + 96) = v24;
      *(v20 + 104) = *(v23 + 8);
      v26 = __swift_allocate_boxed_opaque_existential_1((v20 + 72));
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v28 = v4[4];
      v27 = v4[5];
      v29 = __swift_project_boxed_opaque_existential_1(v4 + 1, v28);
      v74 = v28;
      v75 = *(v27 + 8);
      v30 = __swift_allocate_boxed_opaque_existential_1(v73);
      (*(*(v28 - 8) + 16))(v30, v29, v28);
      sub_24E615E00((v4 + 16), v72);
      v31 = sub_24F922418();
      v70 = v31;
      v71 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v69);
      sub_24F922408();
      v32 = sub_24F9229F8();
      v33 = MEMORY[0x277D22900];
      *(v20 + 136) = v32;
      *(v20 + 144) = v33;
      __swift_allocate_boxed_opaque_existential_1((v20 + 112));
      sub_24F9229E8();
      v34 = v11;
      v66[1] = a1;
      v36 = v4[14];
      v35 = v4[15];
      v37 = __swift_project_boxed_opaque_existential_1(v4 + 11, v36);
      v74 = v36;
      v75 = *(v35 + 8);
      v38 = __swift_allocate_boxed_opaque_existential_1(v73);
      (*(*(v36 - 8) + 16))(v38, v37, v36);
      sub_24E615E00((v4 + 21), v72);
      v70 = v31;
      v71 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v69);
      sub_24F922408();
      *(v20 + 176) = v32;
      *(v20 + 184) = MEMORY[0x277D22900];
      __swift_allocate_boxed_opaque_existential_1((v20 + 152));
      sub_24F9229E8();
      sub_24F9225F8();
      sub_24F9225D8();
      a2 = v39;

      (*(v34 + 8))(v13, v68);
    }

    else
    {
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_24F9479A0;
      sub_24E615E00((v4 + 16), v73);
      v41 = sub_24F9229A8();
      v42 = MEMORY[0x277D228E0];
      *(v40 + 56) = v41;
      *(v40 + 64) = v42;
      __swift_allocate_boxed_opaque_existential_1((v40 + 32));
      sub_24F9229B8();
      v43 = v4[4];
      v44 = v4[5];
      v45 = __swift_project_boxed_opaque_existential_1(v4 + 1, v43);
      *(v40 + 96) = v43;
      *(v40 + 104) = *(v44 + 8);
      v46 = __swift_allocate_boxed_opaque_existential_1((v40 + 72));
      (*(*(v43 - 8) + 16))(v46, v45, v43);
      v47 = v4[14];
      v48 = v4[15];
      v49 = __swift_project_boxed_opaque_existential_1(v4 + 11, v47);
      v74 = v47;
      v75 = *(v48 + 8);
      v50 = __swift_allocate_boxed_opaque_existential_1(v73);
      (*(*(v47 - 8) + 16))(v50, v49, v47);
      sub_24E615E00((v4 + 21), v72);
      v70 = sub_24F922418();
      v71 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v69);
      sub_24F922408();
      v51 = sub_24F9229F8();
      v52 = MEMORY[0x277D22900];
      *(v40 + 136) = v51;
      *(v40 + 144) = v52;
      __swift_allocate_boxed_opaque_existential_1((v40 + 112));
      sub_24F9229E8();
      sub_24F9225F8();
      sub_24F9225D8();
      a2 = v53;

      (*(v11 + 8))(v13, v68);
    }
  }

  return a2;
}

uint64_t sub_24EED24B8@<X0>(uint64_t *a1@<X8>)
{
  v55 = a1;
  v2 = sub_24F922B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922708();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922718();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F9226C8();
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  if (*v1 == 1 && (sub_24F92BF78() & 1) != 0 || (sub_24F92BF98() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A88, &unk_24F9B8120);
    v14 = *(sub_24F922748() - 8);
    v50 = *(v14 + 72);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    v51 = v16;
    *(v16 + 16) = xmmword_24F93A400;
    v54 = v16 + v15;
    *(&v67 + 1) = sub_24F922418();
    v68 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v66);
    sub_24F922408();
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    v49 = *MEMORY[0x277D227C8];
    v56 = v11;
    v17 = *(v11 + 104);
    v47 = v11 + 104;
    v48 = v17;
    v18 = v13;
    v17(v13);
    v44 = *MEMORY[0x277D227F0];
    v19 = v52;
    v39 = v9;
    v20 = v59;
    v21 = *(v59 + 104);
    v45 = v59 + 104;
    v46 = v21;
    v22 = v53;
    v21(v53);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8, &unk_24F9AC240);
    v43 = v19[9];
    v40 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v23 = swift_allocObject();
    v41 = xmmword_24F93DE60;
    *(v23 + 16) = xmmword_24F93DE60;
    sub_24F9226F8();
    *&v61 = v23;
    v38[3] = sub_24EED36B4(v24);
    v38[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0, &qword_24F9C0E50);
    v38[1] = sub_24EED370C();
    sub_24F92C6A8();
    sub_24F922738();
    v52 = v19[1];
    (v52)(v8, v6);
    v25 = *(v20 + 8);
    v59 = v20 + 8;
    v38[0] = v25;
    v26 = v39;
    v25(v22, v39);
    v27 = *(v56 + 8);
    v56 += 8;
    v28 = v58;
    v27(v18, v58);
    sub_24E930E6C(v64);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v48(v18, v49, v28);
    v46(v22, v44, v26);
    v29 = swift_allocObject();
    *(v29 + 16) = v41;
    sub_24F9226F8();
    *&v64[0] = v29;
    sub_24F92C6A8();
    sub_24F922738();
    (v52)(v8, v6);
    (v38[0])(v22, v26);
    v27(v18, v58);
    sub_24E930E6C(&v66);
    v30 = sub_24F922758();
    v31 = MEMORY[0x277D22808];
    v32 = v55;
    v55[3] = v30;
    v32[4] = v31;
    __swift_allocate_boxed_opaque_existential_1(v32);
    return sub_24F922728();
  }

  else
  {
    v34 = v57;
    sub_24E615E00((v57 + 8), &v66);
    sub_24E615E00((v34 + 48), v64);
    (*(v3 + 104))(v5, *MEMORY[0x277D229D8], v2);
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60[3] = sub_24F922418();
    v60[4] = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v60);
    sub_24F922408();
    v35 = sub_24F922B78();
    v36 = MEMORY[0x277D229E8];
    v37 = v55;
    v55[3] = v35;
    v37[4] = v36;
    __swift_allocate_boxed_opaque_existential_1(v37);
    return sub_24F922B48();
  }
}

uint64_t sub_24EED2C98(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F9221D8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMaxX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinY(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetHeight(v22);
  v16 = [a1 traitCollection];
  sub_24EED24B8(v19);

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_24F92C1D8();
  sub_24F922AC8();
  (*(v13 + 8))(v15, v12);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  __swift_project_boxed_opaque_existential_1((v6 + 88), *(v6 + 112));
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  sub_24F922288();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinY(v26);
  __swift_project_boxed_opaque_existential_1((v6 + 88), *(v6 + 112));
  sub_24F92C1D8();
  sub_24F922228();
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_24EED2F6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v32 = a2;
  v30 = sub_24F922C28();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24F9221D8();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F92CDB8();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 traitCollection];
  v22 = v6[19];
  __swift_project_boxed_opaque_existential_1(v7 + 16, v22);
  sub_24E8ED7D8(v22);
  sub_24F9223A8();
  (*(v17 + 8))(v20, v16);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMinX(v34);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMinY(v35);
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetWidth(v36);
  v37.origin.x = a3;
  *v26 = a3;
  *&v26[1] = a4;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetHeight(v37);
  v23 = v21;
  sub_24EED24B8(v33);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_24F922AC8();
  __swift_project_boxed_opaque_existential_1(v7 + 11, v7[14]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v7 + 21, v7[24]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v7 + 11, v7[14]);
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetMinX(v38);
  sub_24F9221A8();
  sub_24F922158();
  v24 = v27;
  sub_24F9221C8();
  sub_24F922BB8();
  (*(v28 + 8))(v24, v30);
  sub_24F922228();
  sub_24F922128();

  (*(v29 + 8))(v15, v31);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t TitledParagraphLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (*v6 == 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    v11 = a6;
    v12 = a1;
    v13 = [a1 traitCollection];
    if (sub_24F92BF78())
    {
      v14 = sub_24F92BF98();

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
      if ((v14 & 1) == 0)
      {

        return sub_24EED2C98(v12, v8, v9, v10, v11);
      }
    }

    else
    {

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
    }
  }

  return sub_24EED2F6C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24EED34D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (*v6 == 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    v11 = a6;
    v12 = a1;
    v13 = [a1 traitCollection];
    if (sub_24F92BF78())
    {
      v14 = sub_24F92BF98();

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
      if ((v14 & 1) == 0)
      {

        return sub_24EED2C98(v12, v8, v9, v10, v11);
      }
    }

    else
    {

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
    }
  }

  return sub_24EED2F6C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24EED3604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24EED364C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EED36B4(__n128 a1)
{
  result = qword_27F237A50;
  if (!qword_27F237A50)
  {
    sub_24F922708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237A50);
  }

  return result;
}

unint64_t sub_24EED370C()
{
  result = qword_27F237A60;
  if (!qword_27F237A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2330F0, &qword_24F9C0E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237A60);
  }

  return result;
}

char *ReviewSummaryReportConcernAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v80 = a2;
  v74 = v4;
  v6 = *v4;
  v72 = v3;
  v73 = v6;
  v7 = sub_24F9285B8();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v62 - v10;
  MEMORY[0x28223BE20](v11);
  v69 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v62 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v65 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = v62 - v20;
  MEMORY[0x28223BE20](v21);
  v68 = (v62 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = v62 - v24;
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v62 - v31;
  v78 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v66 = v17;
  v33 = *(v17 + 8);
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v79 = v16;
  v33(v34, v16);
  v37 = (*(v27 + 48))(v15, 1, v35);
  v75 = v33;
  if (v37 == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0, &qword_24F965EC0);
LABEL_5:
    v38 = v76;
    v39 = v74;
    v40 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v41 = 0x736E7265636E6F63;
    v41[1] = 0xE800000000000000;
    v41[2] = v73;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v38 + 8))(v80, v77);
    v75(v78, v79);
    goto LABEL_6;
  }

  (*(v27 + 32))(v32, v15, v35);
  if (sub_24F92ABF8())
  {
    (*(v27 + 8))(v32, v35);
    goto LABEL_5;
  }

  (*(v27 + 16))(v29, v32, v35);
  v43 = v77;
  v44 = v76 + 16;
  v64 = *(v76 + 16);
  v64(v69, v80, v77);
  sub_24EAD2CA8();
  v45 = sub_24F92B6A8();
  v62[2] = OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_concerns;
  v63 = v32;
  v39 = v74;
  *&v74[OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_concerns] = v45;
  v46 = v68;
  sub_24F928398();
  v47 = sub_24F928348();
  v69 = v35;
  v49 = v48;
  v75(v46, v79);
  v50 = &v39[OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_comment];
  *v50 = v47;
  v50[1] = v49;
  v68 = v50;
  v51 = v70;
  sub_24F928398();
  v52 = v71;
  v62[1] = v44;
  v64(v71, v80, v43);
  type metadata accessor for HttpTemplateAction(0);
  swift_allocObject();
  v53 = v72;
  v54 = HttpTemplateAction.init(deserializing:using:)(v51, v52);
  if (!v53)
  {
    *&v39[OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_sendAction] = v54;
    v55 = v65;
    v56 = v78;
    (*(v66 + 16))(v65, v78, v79);
    v57 = v67;
    v58 = v80;
    v59 = v77;
    v64(v67, v80, v77);
    v60 = Action.init(deserializing:using:)(v55, v57);
    v61 = v79;
    v39 = v60;
    (*(v76 + 8))(v58, v59);
    v75(v56, v61);
    (*(v36 + 8))(v63, v69);
    return v39;
  }

  (*(v76 + 8))(v80, v77);
  v75(v78, v79);
  (*(v36 + 8))(v63, v69);

LABEL_6:
  swift_deallocPartialClassInstance();
  return v39;
}

uint64_t ReviewSummaryReportConcernAction.comment.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32ReviewSummaryReportConcernAction_comment);

  return v1;
}

double sub_24EED4018()
{

  return result;
}

uint64_t ReviewSummaryReportConcernAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ReviewSummaryReportConcernAction.__deallocating_deinit()
{
  ReviewSummaryReportConcernAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReviewSummaryReportConcernAction(uint64_t a1)
{
  result = qword_27F2330F8;
  if (!qword_27F2330F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EED428C(uint64_t *a1)
{
  v2 = *(sub_24F91FEF8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E86187C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EED64B0(v5);
  *a1 = v3;
}

uint64_t AchievementSummary.__allocating_init(id:bundleId:completedAchievements:totalAchievements:completedText:action:achievements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v14 = a9;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v19 + 112) = v37;
    *(v19 + 128) = v20;
    *(v19 + 144) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v30 = a9;
    v31 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v35 = v24;
    v36 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v14 = v30;
    a5 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v28 = v33;
  *(v19 + 16) = v32;
  *(v19 + 24) = v28;
  *(v19 + 32) = v34;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = v14;
  *(v19 + 72) = a8;
  return v19;
}

uint64_t AchievementSummary.init(id:bundleId:completedAchievements:totalAchievements:completedText:action:achievements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v16 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  sub_24E60169C(a1, &v38, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v31 = a9;
    v32 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v16 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v28 = v42;
  *(v10 + 112) = v41;
  *(v10 + 128) = v28;
  *(v10 + 144) = v43;
  v29 = v34;
  *(v10 + 16) = v33;
  *(v10 + 24) = v29;
  *(v10 + 32) = v35;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 64) = v16;
  *(v10 + 72) = a8;
  return v10;
}

uint64_t AchievementSummary.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v141 = a2;
  v114 = sub_24F91F6B8();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24F9285B8();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233108, &unk_24F9AC2A8);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v99 - v6;
  v123 = sub_24F91FEF8();
  v126 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v130 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = &v99 - v11;
  v12 = sub_24F92AC28();
  v120 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v117 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v115 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v118 = &v99 - v18;
  MEMORY[0x28223BE20](v19);
  v128 = &v99 - v20;
  MEMORY[0x28223BE20](v21);
  v121 = &v99 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v99 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v99 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v99 - v30;
  v134 = a1;
  sub_24F928398();
  v116 = sub_24F928348();
  v33 = v32;
  v127 = v15;
  v36 = *(v15 + 8);
  v35 = v15 + 8;
  v34 = v36;
  v36(v31, v14);
  if (!v33)
  {
    v37 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v44 = 0x6449656C646E7562;
    v44[1] = 0xE800000000000000;
    v44[2] = v132;
    (*(*(v37 - 8) + 104))(v44, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v34(v134, v14);
    return v37;
  }

  v122 = v33;
  v111 = v12;
  v37 = 0x800000024FA61DC0;
  v38 = v134;
  sub_24F928398();
  v110 = sub_24F928258();
  v40 = v39;
  v34(v28, v14);
  v41 = v14;
  if (v40)
  {

    v42 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v43 = 0xD000000000000015;
    v43[1] = 0x800000024FA61DC0;
    v43[2] = v132;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v34(v38, v14);
    return v37;
  }

  v37 = 0x800000024FA61DE0;
  v45 = v38;
  sub_24F928398();
  v105 = sub_24F928258();
  v47 = v46;
  v34(v25, v41);
  v48 = v141;
  v49 = v35;
  if (v47)
  {

    v50 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v51 = 0xD000000000000011;
    v51[1] = 0x800000024FA61DE0;
    v51[2] = v132;
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D22530], v50);
    swift_willThrow();
    (*(v131 + 8))(v48, v133);
    v34(v38, v41);
    return v37;
  }

  v37 = 0xED00007478655464;
  v52 = v121;
  sub_24F928398();
  v102 = sub_24F928348();
  v54 = v53;
  v34(v52, v41);
  v55 = v34;
  v56 = v132;
  if (!v54)
  {

    v63 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    strcpy(v64, "completedText");
    *(v64 + 7) = -4864;
    *(v64 + 2) = v56;
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D22530], v63);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v55(v45, v41);
    return v37;
  }

  v103 = v54;
  type metadata accessor for Action(0);
  v57 = v128;
  sub_24F928398();
  v104 = static Action.tryToMakeInstance(byDeserializing:using:)(v57, v141);
  v55(v57, v41);
  v58 = v118;
  sub_24F928398();
  v59 = v119;
  sub_24F9282B8();
  v55(v58, v41);
  v60 = v120;
  v61 = v111;
  if ((*(v120 + 48))(v59, 1, v111) == 1)
  {

    sub_24E601704(v59, &qword_27F2213B0, &qword_24F965EC0);
    v37 = sub_24F92AC38();
    sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    strcpy(v62, "achievements");
    v62[13] = 0;
    *(v62 + 7) = -5120;
    *(v62 + 2) = v56;
    (*(*(v37 - 8) + 104))(v62, *MEMORY[0x277D22530], v37);
    swift_willThrow();

    (*(v131 + 8))(v141, v133);
    v55(v45, v41);
    return v37;
  }

  v100 = v55;
  v101 = v49;
  v121 = v41;
  (*(v60 + 32))(v117, v59, v61);
  result = sub_24F92AC08();
  v66 = result;
  v119 = *(result + 16);
  if (!v119)
  {
    v69 = MEMORY[0x277D84F90];
LABEL_22:
    v78 = v100;

    v79 = v115;
    sub_24F928398();
    v80 = sub_24F928348();
    if (v81)
    {
      *&v137 = v80;
      *(&v137 + 1) = v81;
    }

    else
    {
      v83 = v112;
      sub_24F91F6A8();
      v84 = sub_24F91F668();
      v86 = v85;
      (*(v113 + 8))(v83, v114);
      *&v137 = v84;
      *(&v137 + 1) = v86;
    }

    sub_24F92C7F8();
    v78(v79, v121);
    v87 = v133;
    v88 = v131;
    v89 = v104;
    type metadata accessor for AchievementSummary();
    v37 = swift_allocObject();
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    sub_24E60169C(&v140, &v137, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v138 + 1))
    {
      v90 = v138;
      *(v37 + 112) = v137;
      *(v37 + 128) = v90;
      *(v37 + 144) = v139;
      v91 = v141;
    }

    else
    {
      v92 = v112;
      sub_24F91F6A8();
      v93 = sub_24F91F668();
      v95 = v94;
      (*(v113 + 8))(v92, v114);
      v135 = v93;
      v136 = v95;
      v89 = v104;
      v91 = v141;
      sub_24F92C7F8();
      sub_24E601704(&v137, &qword_27F235830, &qword_24F93B8C0);
    }

    (*(v88 + 8))(v91, v87);
    v78(v134, v121);
    sub_24E601704(&v140, &qword_27F235830, &qword_24F93B8C0);
    (*(v120 + 8))(v117, v111);
    v96 = v122;
    *(v37 + 16) = v116;
    *(v37 + 24) = v96;
    v97 = v105;
    *(v37 + 32) = v110;
    *(v37 + 40) = v97;
    v98 = v103;
    *(v37 + 48) = v102;
    *(v37 + 56) = v98;
    *(v37 + 64) = v69;
    *(v37 + 72) = v89;
    return v37;
  }

  v67 = 0;
  v118 = (v127 + 16);
  v109 = (v131 + 16);
  v108 = (v126 + 48);
  v68 = (v126 + 32);
  v107 = (v126 + 16);
  v106 = v126 + 8;
  v69 = MEMORY[0x277D84F90];
  while (v67 < *(v66 + 16))
  {
    (*(v127 + 16))(v128, v66 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v67, v121);
    (*v109)(v125, v141, v133);
    sub_24EED63C4(&qword_27F233110, 255, MEMORY[0x277D0C7C0], &protocol conformance descriptor for Achievement);
    v70 = v124;
    v71 = v123;
    sub_24F929548();
    if ((*v108)(v70, 1, v71) == 1)
    {

      sub_24E601704(v70, &qword_27F233108, &unk_24F9AC2A8);
      v37 = sub_24F92AC38();
      sub_24EED63C4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v82 = 0x6D65766569686361;
      v82[1] = 0xEB00000000746E65;
      v82[2] = v56;
      (*(*(v37 - 8) + 104))(v82, *MEMORY[0x277D22530], v37);
      swift_willThrow();

      (*(v131 + 8))(v141, v133);
      v100(v45, v121);
      (*(v120 + 8))(v117, v111);
      return v37;
    }

    v72 = *v68;
    v73 = v129;
    (*v68)(v129, v70, v71);
    (*v107)(v130, v73, v71);
    v74 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_24E6165CC(0, *(v69 + 2) + 1, 1, v69);
    }

    v76 = *(v69 + 2);
    v75 = *(v69 + 3);
    if (v76 >= v75 >> 1)
    {
      v69 = sub_24E6165CC((v75 > 1), v76 + 1, 1, v69);
    }

    ++v67;
    v77 = v126;
    (*(v126 + 8))(v129, v74);
    *(v69 + 2) = v76 + 1;
    result = v72(&v69[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76], v130, v74);
    v45 = v134;
    v56 = v132;
    if (v119 == v67)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t AchievementSummary.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AchievementSummary.completedText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_24EED5AA0(JSContext a1)
{
  v2 = v1;
  v4 = sub_24F91FEF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 valueWithNewObjectInContext_];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = v2[3];
  v31 = v2[2];
  v32 = v11;

  v12 = &off_279691000;
  v13 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_24F92C328();
  v31 = v2[4];
  v14 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_24F92C328();
  v31 = v2[5];
  v15 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_24F92C328();
  v16 = v2[7];
  v31 = v2[6];
  v32 = v16;

  v17 = [v8 valueWithObject:sub_24F92CF68() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_24F92C328();
  v31 = v2[8];

  sub_24EED428C(&v31);
  v18 = v31;
  v19 = *(v31 + 16);
  if (v19)
  {
    v27 = v8;
    v28 = v10;
    v31 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v22 = *(v20 + 64);
    v26 = v18;
    v23 = v18 + ((v22 + 32) & ~v22);
    v29 = *(v20 + 56);
    v30 = v21;
    do
    {
      v30(v7, v23, v4);
      Achievement.makeValue(in:)(a1);
      (*(v20 - 8))(v7, v4);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v23 += v29;
      --v19;
    }

    while (v19);

    v24 = v31;
    v8 = v27;
    v12 = &off_279691000;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v31 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
  v2 = sub_24F92CF68();
  v25 = [v8 v12[249]];
  swift_unknownObjectRelease();
  if (v25)
  {

    sub_24F92C328();
    return;
  }

LABEL_18:
  __break(1u);

  __break(1u);
}

uint64_t sub_24EED5F20(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  sub_24F91FE88();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_24F91F548();
    if (v15(v7, 1, v8) != 1)
    {
      sub_24E601704(v7, &unk_27F22EC30, &qword_24F939880);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  sub_24F91FE88();
  if (v15(v4, 1, v8) == 1)
  {
    sub_24F91F548();
    if (v15(v4, 1, v8) != 1)
    {
      sub_24E601704(v4, &unk_27F22EC30, &qword_24F939880);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
  }

  v16 = sub_24F91F588();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  return v16 & 1;
}

uint64_t AchievementSummary.deinit()
{

  sub_24E601704(v0 + 80, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 112);
  return v0;
}

uint64_t AchievementSummary.__deallocating_deinit()
{

  sub_24E601704(v0 + 80, &qword_27F2129B0, &unk_24F945320);
  sub_24E6585F8(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_24EED62B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AchievementSummary.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EED63C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24EED64B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24F91FEF8();
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_24F91FEF8() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_24EED6B14(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EED65DC(0, v2, 1, a1);
  }
}

void sub_24EED65DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v65 = &v47[-v11];
  v12 = sub_24F91F648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v67 = &v47[-v16];
  v17 = sub_24F91FEF8();
  MEMORY[0x28223BE20](v17);
  v57 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v69 = &v47[-v20];
  v23 = MEMORY[0x28223BE20](v21);
  v66 = &v47[-v24];
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v28 = *(v26 + 56);
    v29 = (v13 + 48);
    v61 = (v13 + 32);
    v62 = v27;
    v59 = (v13 + 48);
    v60 = (v13 + 8);
    v58 = (v26 - 8);
    v63 = v26;
    v30 = v25 + v28 * (a3 - 1);
    v54 = -v28;
    v55 = (v26 + 16);
    v31 = a1 - a3;
    v56 = v25;
    v48 = v28;
    v32 = v25 + v28 * a3;
LABEL_5:
    v52 = v30;
    v53 = a3;
    v50 = v32;
    v51 = v31;
    v33 = v31;
    while (1)
    {
      v34 = v62;
      (v62)(v66, v32, v17, v23);
      v34(v69, v30, v17);
      v35 = v65;
      sub_24F91FE88();
      v36 = *v29;
      if ((*v29)(v35, 1, v12) == 1)
      {
        sub_24F91F548();
        if (v36(v35, 1, v12) != 1)
        {
          sub_24E601704(v65, &unk_27F22EC30, &qword_24F939880);
        }
      }

      else
      {
        (*v61)(v67, v35, v12);
      }

      sub_24F91FE88();
      v37 = v68;
      if (v36(v68, 1, v12) == 1)
      {
        v38 = v64;
        sub_24F91F548();
        if (v36(v37, 1, v12) != 1)
        {
          sub_24E601704(v37, &unk_27F22EC30, &qword_24F939880);
        }
      }

      else
      {
        v38 = v64;
        (*v61)(v64, v37, v12);
      }

      v39 = v67;
      v40 = sub_24F91F588();
      v41 = v38;
      v42 = *v60;
      (*v60)(v41, v12);
      v42(v39, v12);
      v43 = *v58;
      (*v58)(v69, v17);
      v43(v66, v17);
      v29 = v59;
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v30 = v52 + v48;
        v31 = v51 - 1;
        v32 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v32, v17);
      swift_arrayInitWithTakeFrontToBack();
      v44(v30, v45, v17);
      v30 += v54;
      v32 += v54;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24EED6B14(char **a1, uint64_t a2, char **a3, char *a4)
{
  v5 = v4;
  v169 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v200 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v164 - v11;
  MEMORY[0x28223BE20](v13);
  v183 = &v164 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v164 - v16;
  v202 = sub_24F91F648();
  v18 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v20 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v199 = &v164 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v164 - v24;
  MEMORY[0x28223BE20](v26);
  v182 = &v164 - v27;
  v197 = sub_24F91FEF8();
  v180 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v173 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v188 = &v164 - v30;
  MEMORY[0x28223BE20](v31);
  v201 = &v164 - v32;
  MEMORY[0x28223BE20](v33);
  v198 = &v164 - v34;
  MEMORY[0x28223BE20](v35);
  v185 = &v164 - v36;
  MEMORY[0x28223BE20](v37);
  v181 = &v164 - v38;
  MEMORY[0x28223BE20](v39);
  v164 = &v164 - v40;
  v42 = MEMORY[0x28223BE20](v41);
  v167 = &v164 - v43;
  v44 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    v47 = MEMORY[0x277D84F90];
    v49 = a3;
LABEL_115:
    a4 = *v169;
    if (!*v169)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_117;
  }

  v177 = v25;
  v46 = 0;
  v194 = v180 + 16;
  v195 = (v180 + 8);
  v193 = (v18 + 48);
  v192 = (v18 + 32);
  v191 = (v18 + 8);
  v190 = (v180 + 32);
  v47 = MEMORY[0x277D84F90];
  v168 = a4;
  v196 = v12;
  v179 = v17;
  v48 = v197;
  v49 = v44;
  v170 = v44;
LABEL_4:
  v50 = v46;
  v171 = v47;
  if (v46 + 1 >= v45)
  {
    v76 = (v46 + 1);
  }

  else
  {
    v184 = v45;
    v51 = *v49;
    v52 = *(v180 + 72);
    v53 = v46;
    v54 = &(*v49)[v52 * (v46 + 1)];
    v55 = *(v180 + 16);
    v55(v167, v54, v48, v42);
    v189 = v51;
    v56 = &v51[v52 * v53];
    v57 = v164;
    v186 = v55;
    (v55)(v164, v56, v48);
    v58 = v167;
    LODWORD(v187) = sub_24EED5F20(v167, v57);
    if (v5)
    {
      v163 = *v195;
      (*v195)(v57, v48);
      (v163)(v58, v48);
      goto LABEL_125;
    }

    v166 = 0;
    v59 = *v195;
    (*v195)(v57, v48);
    v178 = v59;
    (v59)(v58, v48);
    v165 = v53;
    v60 = (v53 + 2);
    v61 = &v189[v52 * (v53 + 2)];
    v62 = v193;
    v63 = v52;
    v189 = v52;
    do
    {
      if (v184 == v60)
      {
        v47 = v171;
        v76 = v184;
        goto LABEL_20;
      }

      v71 = v186;
      (v186)(v181, v61, v48);
      v71(v185, v54, v48);
      v72 = v202;
      v73 = v179;
      sub_24F91FE88();
      v74 = *v62;
      if ((*v62)(v73, 1, v72) == 1)
      {
        sub_24F91F548();
        if (v74(v73, 1, v72) != 1)
        {
          sub_24E601704(v179, &unk_27F22EC30, &qword_24F939880);
        }
      }

      else
      {
        (*v192)(v182, v73, v72);
      }

      sub_24F91FE88();
      v75 = v183;
      if (v74(v183, 1, v202) == 1)
      {
        v64 = v177;
        sub_24F91F548();
        if (v74(v75, 1, v202) != 1)
        {
          sub_24E601704(v75, &unk_27F22EC30, &qword_24F939880);
        }
      }

      else
      {
        v64 = v177;
        (*v192)(v177, v75, v202);
      }

      v65 = v182;
      v66 = sub_24F91F588();
      v67 = *v191;
      v68 = v64;
      v69 = v202;
      (*v191)(v68, v202);
      v67(v65, v69);
      v48 = v197;
      v70 = v178;
      (v178)(v185, v197);
      v70(v181, v48);
      ++v60;
      v63 = v189;
      v61 = &v189[v61];
      v54 += v189;
      v62 = v193;
    }

    while (((v187 ^ v66) & 1) == 0);
    v76 = v60 - 1;
    v47 = v171;
LABEL_20:
    v5 = v166;
    a4 = v168;
    v49 = v170;
    v50 = v165;
    if (v187)
    {
      if (v76 < v165)
      {
        goto LABEL_148;
      }

      if (v165 < v76)
      {
        v77 = v63 * (v76 - 1);
        v78 = v76 * v63;
        v184 = v76;
        v79 = v76;
        v80 = v165;
        v81 = v165 * v63;
        while (2)
        {
          if (v80 == --v79)
          {
            goto LABEL_27;
          }

          v84 = *v49;
          if (!v84)
          {
            goto LABEL_152;
          }

          v85 = *v190;
          (*v190)(v173, &v84[v81], v197);
          if (v81 >= v77 && &v84[v81] < &v84[v78])
          {
            v83 = v197;
            if (v81 != v77)
            {
              v82 = v197;
              swift_arrayInitWithTakeBackToFront();
LABEL_25:
              v83 = v82;
            }

            v85(&v84[v77], v173, v83);
            v49 = v170;
            v47 = v171;
            v63 = v189;
LABEL_27:
            ++v80;
            v77 -= v63;
            v78 -= v63;
            v81 += v63;
            if (v80 >= v79)
            {
              v5 = v166;
              a4 = v168;
              v48 = v197;
              v50 = v165;
              v76 = v184;
              goto LABEL_35;
            }

            continue;
          }

          break;
        }

        v82 = v197;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v86 = v49[1];
  if (v76 >= v86)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v76, v50))
  {
    goto LABEL_145;
  }

  if (&v76[-v50] >= a4)
  {
LABEL_44:
    a4 = v76;
    if (v76 < v50)
    {
      goto LABEL_144;
    }

    goto LABEL_45;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_146;
  }

  if (&a4[v50] >= v86)
  {
    a4 = v49[1];
  }

  else
  {
    a4 += v50;
  }

  if (a4 < v50)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v47 = sub_24E86164C(v47);
LABEL_117:
    v203 = v47;
    v158 = *(v47 + 16);
    if (v158 >= 2)
    {
      while (*v49)
      {
        v159 = *(v47 + 16 * v158);
        v160 = v47;
        v161 = *(v47 + 16 * (v158 - 1) + 32);
        v47 = *(v47 + 16 * (v158 - 1) + 40);
        sub_24EED7BA8(&(*v49)[*(v180 + 72) * v159], &(*v49)[*(v180 + 72) * v161], &(*v49)[*(v180 + 72) * v47], a4);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v47 < v159)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = sub_24E86164C(v160);
        }

        if (v158 - 2 >= *(v160 + 2))
        {
          goto LABEL_143;
        }

        v162 = &v160[16 * v158];
        *v162 = v159;
        *(v162 + 1) = v47;
        v203 = v160;
        sub_24E8615C0(v158 - 1);
        v47 = v203;
        v158 = *(v203 + 16);
        if (v158 <= 1)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_153;
    }

LABEL_125:

    return;
  }

  if (v76 == a4)
  {
    goto LABEL_44;
  }

  v166 = v5;
  v134 = *v49;
  v135 = *(v180 + 72);
  v189 = *(v180 + 16);
  v136 = &v134[v135 * (v76 - 1)];
  v186 = -v135;
  v165 = v50;
  v137 = v50 - v76;
  v187 = v134;
  v172 = v135;
  v138 = &v134[v76 * v135];
  v174 = a4;
LABEL_98:
  v184 = v76;
  v175 = v138;
  v176 = v137;
  v139 = v137;
  v178 = v136;
  while (1)
  {
    v140 = v48;
    v141 = v20;
    v142 = v189;
    (v189)(v198, v138, v140, v42);
    v142(v201, v136, v140);
    v143 = v202;
    v144 = v196;
    sub_24F91FE88();
    v145 = *v193;
    if ((*v193)(v144, 1, v143) == 1)
    {
      sub_24F91F548();
      if (v145(v144, 1, v143) != 1)
      {
        sub_24E601704(v196, &unk_27F22EC30, &qword_24F939880);
      }
    }

    else
    {
      (*v192)(v199, v144, v143);
    }

    sub_24F91FE88();
    v146 = v200;
    v147 = v141;
    if (v145(v200, 1, v202) == 1)
    {
      sub_24F91F548();
      if (v145(v146, 1, v202) != 1)
      {
        sub_24E601704(v146, &unk_27F22EC30, &qword_24F939880);
      }
    }

    else
    {
      (*v192)(v141, v146, v202);
    }

    v148 = v199;
    v149 = sub_24F91F588();
    v150 = *v191;
    v151 = v147;
    v152 = v147;
    v153 = v202;
    (*v191)(v152, v202);
    v150(v148, v153);
    v154 = *v195;
    v48 = v197;
    (*v195)(v201, v197);
    (v154)(v198, v48);
    if ((v149 & 1) == 0)
    {
      v20 = v151;
LABEL_97:
      v76 = v184 + 1;
      v136 = &v178[v172];
      v137 = v176 - 1;
      v138 = &v175[v172];
      a4 = v174;
      if (v184 + 1 != v174)
      {
        goto LABEL_98;
      }

      v5 = v166;
      v49 = v170;
      v47 = v171;
      v50 = v165;
      if (v174 < v165)
      {
        goto LABEL_144;
      }

LABEL_45:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = a4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_24E615ED8(0, *(v47 + 16) + 1, 1, v47);
      }

      a4 = *(v47 + 16);
      v88 = *(v47 + 24);
      v89 = (a4 + 1);
      if (a4 >= v88 >> 1)
      {
        v47 = sub_24E615ED8((v88 > 1), (a4 + 1), 1, v47);
      }

      *(v47 + 16) = v89;
      v90 = v47 + 16 * a4;
      v91 = v174;
      *(v90 + 32) = v50;
      *(v90 + 40) = v91;
      if (!*v169)
      {
        goto LABEL_154;
      }

      if (a4)
      {
        v92 = *v169;
        while (1)
        {
          v93 = v89 - 1;
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v94 = *(v47 + 32);
            v95 = *(v47 + 40);
            v104 = __OFSUB__(v95, v94);
            v96 = v95 - v94;
            v97 = v104;
LABEL_65:
            if (v97)
            {
              goto LABEL_133;
            }

            v110 = (v47 + 16 * v89);
            v112 = *v110;
            v111 = v110[1];
            v113 = __OFSUB__(v111, v112);
            v114 = v111 - v112;
            v115 = v113;
            if (v113)
            {
              goto LABEL_136;
            }

            v116 = (v47 + 32 + 16 * v93);
            v118 = *v116;
            v117 = v116[1];
            v104 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v104)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v114, v119))
            {
              goto LABEL_140;
            }

            if (v114 + v119 >= v96)
            {
              if (v96 < v119)
              {
                v93 = v89 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          v120 = (v47 + 16 * v89);
          v122 = *v120;
          v121 = v120[1];
          v104 = __OFSUB__(v121, v122);
          v114 = v121 - v122;
          v115 = v104;
LABEL_79:
          if (v115)
          {
            goto LABEL_135;
          }

          v123 = v47 + 16 * v93;
          v125 = *(v123 + 32);
          v124 = *(v123 + 40);
          v104 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v104)
          {
            goto LABEL_138;
          }

          if (v126 < v114)
          {
            goto LABEL_3;
          }

LABEL_86:
          a4 = (v93 - 1);
          if (v93 - 1 >= v89)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (!*v49)
          {
            goto LABEL_151;
          }

          v131 = *(v47 + 32 + 16 * a4);
          v132 = *(v47 + 32 + 16 * v93 + 8);
          sub_24EED7BA8(&(*v49)[*(v180 + 72) * v131], &(*v49)[*(v180 + 72) * *(v47 + 32 + 16 * v93)], &(*v49)[*(v180 + 72) * v132], v92);
          if (v5)
          {
            goto LABEL_125;
          }

          if (v132 < v131)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_24E86164C(v47);
          }

          if (a4 >= *(v47 + 16))
          {
            goto LABEL_130;
          }

          v133 = v47 + 16 * a4;
          *(v133 + 32) = v131;
          *(v133 + 40) = v132;
          v203 = v47;
          sub_24E8615C0(v93);
          v47 = v203;
          v89 = *(v203 + 16);
          v48 = v197;
          if (v89 <= 1)
          {
            goto LABEL_3;
          }
        }

        v98 = v47 + 32 + 16 * v89;
        v99 = *(v98 - 64);
        v100 = *(v98 - 56);
        v104 = __OFSUB__(v100, v99);
        v101 = v100 - v99;
        if (v104)
        {
          goto LABEL_131;
        }

        v103 = *(v98 - 48);
        v102 = *(v98 - 40);
        v104 = __OFSUB__(v102, v103);
        v96 = v102 - v103;
        v97 = v104;
        if (v104)
        {
          goto LABEL_132;
        }

        v105 = (v47 + 16 * v89);
        v107 = *v105;
        v106 = v105[1];
        v104 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v104)
        {
          goto LABEL_134;
        }

        v104 = __OFADD__(v96, v108);
        v109 = v96 + v108;
        if (v104)
        {
          goto LABEL_137;
        }

        if (v109 >= v101)
        {
          v127 = (v47 + 32 + 16 * v93);
          v129 = *v127;
          v128 = v127[1];
          v104 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v104)
          {
            goto LABEL_141;
          }

          if (v96 < v130)
          {
            v93 = v89 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_65;
      }

LABEL_3:
      v45 = v49[1];
      v46 = v174;
      a4 = v168;
      if (v174 >= v45)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    if (!v187)
    {
      break;
    }

    v155 = *v190;
    v156 = v188;
    (*v190)(v188, v138, v48);
    swift_arrayInitWithTakeFrontToBack();
    v155(v136, v156, v48);
    v136 += v186;
    v138 += v186;
    v157 = __CFADD__(v139++, 1);
    v20 = v151;
    if (v157)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_24EED7BA8(unint64_t a1, char *a2, char *a3, char *a4)
{
  v92 = a4;
  v94 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - v9;
  MEMORY[0x28223BE20](v11);
  v91 = &v73 - v12;
  MEMORY[0x28223BE20](v13);
  v86 = &v73 - v14;
  v15 = sub_24F91F648();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v81 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = (&v73 - v19);
  MEMORY[0x28223BE20](v20);
  v82 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v90 = &v73 - v23;
  v24 = sub_24F91FEF8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v88 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v83 = (&v73 - v28);
  MEMORY[0x28223BE20](v29);
  v93 = &v73 - v30;
  MEMORY[0x28223BE20](v31);
  v89 = &v73 - v32;
  v87 = *(v33 + 72);
  if (!v87)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v87 == -1)
  {
    goto LABEL_79;
  }

  v34 = v94 - a2;
  if (v94 - a2 != 0x8000000000000000 || v87 != -1)
  {
    v35 = &a2[-a1] / v87;
    v97 = a1;
    v36 = v92;
    v96 = v92;
    if (v35 < v34 / v87)
    {
      v37 = v35 * v87;
      if (v92 < a1 || a1 + v37 <= v92)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v92 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v36 = v92;
LABEL_17:
      v88 = (v36 + v37);
      v95 = v36 + v37;
      if (v37 >= 1 && a2 < v94)
      {
        v40 = *(v25 + 16);
        v41 = (v16 + 48);
        v83 = (v16 + 32);
        v84 = v40;
        v85 = (v25 + 16);
        v80 = (v25 + 8);
        v81 = (v16 + 8);
        do
        {
          v42 = a2;
          v43 = v36;
          v44 = v84;
          v84(v89, a2, v24);
          v92 = v43;
          v44(v93, v43, v24);
          v45 = v86;
          sub_24F91FE88();
          v46 = *v41;
          if ((*v41)(v45, 1, v15) == 1)
          {
            sub_24F91F548();
            if (v46(v45, 1, v15) != 1)
            {
              sub_24E601704(v86, &unk_27F22EC30, &qword_24F939880);
            }
          }

          else
          {
            (*v83)(v90, v45, v15);
          }

          sub_24F91FE88();
          v47 = v91;
          if (v46(v91, 1, v15) == 1)
          {
            v48 = v82;
            sub_24F91F548();
            if (v46(v47, 1, v15) != 1)
            {
              sub_24E601704(v47, &unk_27F22EC30, &qword_24F939880);
            }
          }

          else
          {
            v48 = v82;
            (*v83)(v82, v47, v15);
          }

          v49 = v90;
          v50 = sub_24F91F588();
          v51 = v48;
          v52 = *v81;
          (*v81)(v51, v15);
          v52(v49, v15);
          v53 = *v80;
          (*v80)(v93, v24);
          v53(v89, v24);
          if (v50)
          {
            v54 = v87;
            a2 = &v42[v87];
            if (a1 < v42 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v36 = v92;
          }

          else
          {
            v54 = v87;
            v55 = &v92[v87];
            a2 = v42;
            if (a1 < v92 || a1 >= v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v92)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v96 = v55;
            v36 = v55;
          }

          a1 += v54;
          v97 = a1;
        }

        while (v36 < v88 && a2 < v94);
      }

LABEL_77:
      sub_24F8FB128(&v97, &v96, &v95);
      return;
    }

    v38 = v34 / v87 * v87;
    if (v92 < a2 || &a2[v38] <= v92)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v92 == a2)
      {
LABEL_48:
        v90 = a2;
        v56 = v36 + v38;
        if (v38 >= 1)
        {
          v89 = v10;
          v57 = -v87;
          v79 = (v16 + 48);
          v80 = (v25 + 16);
          v77 = (v16 + 8);
          v78 = (v16 + 32);
          v76 = (v25 + 8);
          v58 = v56;
          v82 = v24;
          v86 = a1;
          v93 = -v87;
          do
          {
            v74 = v56;
            v59 = v90;
            v90 += v57;
            v87 = v59;
            while (1)
            {
              v60 = v94;
              if (v59 <= a1)
              {
                v97 = v59;
                v95 = v74;
                goto LABEL_77;
              }

              v75 = v56;
              v61 = (v58 + v57);
              v62 = *v80;
              (*v80)(v83, v61, v24);
              (v62)(v88, v90, v24);
              v63 = v89;
              sub_24F91FE88();
              v64 = *v79;
              if ((*v79)(v63, 1, v15) == 1)
              {
                sub_24F91F548();
                if (v64(v63, 1, v15) != 1)
                {
                  sub_24E601704(v89, &unk_27F22EC30, &qword_24F939880);
                }
              }

              else
              {
                (*v78)(v84, v63, v15);
              }

              sub_24F91FE88();
              v65 = v85;
              v66 = v64(v85, 1, v15);
              v67 = v81;
              v91 = v61;
              if (v66 == 1)
              {
                sub_24F91F548();
                if (v64(v65, 1, v15) != 1)
                {
                  sub_24E601704(v65, &unk_27F22EC30, &qword_24F939880);
                }
              }

              else
              {
                (*v78)(v81, v65, v15);
              }

              v94 = &v60[v93];
              v68 = v84;
              v69 = sub_24F91F588();
              v70 = *v77;
              (*v77)(v67, v15);
              v70(v68, v15);
              v71 = *v76;
              v24 = v82;
              (*v76)(v88, v82);
              v71(v83, v24);
              if (v69)
              {
                break;
              }

              v72 = v91;
              v56 = v91;
              v59 = v87;
              if (v60 < v58 || v94 >= v58)
              {
                swift_arrayInitWithTakeFrontToBack();
                v57 = v93;
              }

              else
              {
                v57 = v93;
                if (v60 != v58)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v58 = v56;
              a1 = v86;
              if (v72 <= v92)
              {
                v90 = v59;
                goto LABEL_76;
              }
            }

            if (v60 < v87 || v94 >= v87)
            {
              swift_arrayInitWithTakeFrontToBack();
              v56 = v75;
              v57 = v93;
            }

            else
            {
              v56 = v75;
              v57 = v93;
              if (v60 != v87)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v86;
          }

          while (v58 > v92);
        }

LABEL_76:
        v97 = v90;
        v95 = v56;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v92;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
}

uint64_t sub_24EED8674()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EED86AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 8))(v9, ObjectType, v3);
  v5 = *(v2 + 24);
  v6 = swift_getObjectType();
  (*(v5 + 8))(v8, v6, v5);
  LOBYTE(v5) = MEMORY[0x253052150](v9, v8);
  sub_24E6585F8(v8);
  sub_24E6585F8(v9);
  return v5 & 1;
}

uint64_t sub_24EED8754()
{
  v1 = *v0;
  sub_24F92D068();
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(v5, ObjectType, v2);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v5);
  return sub_24F92D0B8();
}

uint64_t sub_24EED87CC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(v5, ObjectType, v2);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v5);
}

uint64_t sub_24EED883C()
{
  sub_24F92D068();
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(v4, ObjectType, v1);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v4);
  return sub_24F92D0B8();
}

uint64_t sub_24EED88B0()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F233120);
  __swift_project_value_buffer(v4, qword_27F233120);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EED8A04()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v2 + 16))
    {
      sub_24E65864C(v6, v17);
      sub_24E65864C(v17, &v14);
      v8 = sub_24EED8B88(&v14);
      sub_24E9BBAA8(&v14);
      if (v8)
      {
        v14 = v17[0];
        v15 = v17[1];
        v16 = v18;
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v7;
        if ((result & 1) == 0)
        {
          result = sub_24F457B3C(0, *(v7 + 16) + 1, 1);
          v7 = v19;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_24F457B3C((v9 > 1), v10 + 1, 1);
          v7 = v19;
        }

        *(v7 + 16) = v10 + 1;
        v11 = v7 + 40 * v10;
        v12 = v14;
        v13 = v15;
        *(v11 + 64) = v16;
        *(v11 + 32) = v12;
        *(v11 + 48) = v13;
      }

      else
      {
        result = sub_24E6585F8(v17);
      }

      ++v5;
      v6 += 40;
      if (v3 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_13:

    *(v1 + 64) = v7;
  }

  return result;
}

BOOL sub_24EED8B88(uint64_t a1)
{
  v2 = v1;
  sub_24E65E064(a1, &v59);
  if (!*(&v60 + 1))
  {
    sub_24E9BBAA8(&v59);
    return 0;
  }

  v62[0] = v59;
  v62[1] = v60;
  v63 = v61;
  swift_beginAccess();
  v3 = *(v1 + 48);
  if (!*(v3 + 16))
  {
LABEL_11:
    sub_24E6585F8(v62);
    return 0;
  }

  v4 = sub_24E76D934(v62);
  if ((v5 & 1) == 0)
  {

    goto LABEL_11;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  v7 = [*(v6 + 16) superview];
  if (!v7)
  {

    goto LABEL_11;
  }

  sub_24EED8F4C(v6);
  v9 = v8;
  v11 = v10;
  v55 = v13;
  v56 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = 0.0;
  v57 = v11;
  v58 = v9;
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong view];

    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    if (v17)
    {
      [v17 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v17 safeAreaInsets];
      v30 = v29;
      v32 = v31;

      v15 = UIEdgeInsetsInsetRect(v22, v24, v26, v28, v30, v32);
      v18 = v33;
      v19 = v34;
      v20 = v35;
    }
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
  }

  v64.origin.x = v15;
  v64.origin.y = v18;
  v64.size.width = v19;
  v64.size.height = v20;
  v37 = CGRectGetWidth(v64) * *(v2 + 16);
  v65.origin.x = v15;
  v65.origin.y = v18;
  v65.size.width = v19;
  v65.size.height = v20;
  v38 = CGRectGetHeight(v65) * *(v2 + 24);
  v66.origin.x = v15;
  v66.origin.y = v18;
  v66.size.width = v19;
  v66.size.height = v20;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = v15;
  v67.origin.y = v18;
  v67.size.width = v19;
  v67.size.height = v20;
  v40 = MinX + (CGRectGetWidth(v67) - v37) * 0.5;
  v68.origin.x = v15;
  v68.origin.y = v18;
  v68.size.width = v19;
  v68.size.height = v20;
  MinY = CGRectGetMinY(v68);
  v69.origin.x = v15;
  v69.origin.y = v18;
  v69.size.width = v19;
  v69.size.height = v20;
  v70.origin.y = MinY + (CGRectGetHeight(v69) - v38) * 0.5;
  v70.origin.x = v40;
  v70.size.width = v37;
  v70.size.height = v38;
  v76.origin.x = v58;
  v76.origin.y = v57;
  v76.size.width = v56;
  v76.size.height = v55;
  v71 = CGRectIntersection(v70, v76);
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  if (CGRectEqualToRect(v71, *MEMORY[0x277CBF398]))
  {
    sub_24E6585F8(v62);

    return 0;
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v54 = CGRectGetWidth(v72);
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v46 = v54 * CGRectGetHeight(v73);
  v74.origin.x = v58;
  v74.origin.y = v57;
  v74.size.width = v56;
  v74.size.height = v55;
  v47 = CGRectGetWidth(v74);
  v75.origin.x = v58;
  v75.origin.y = v57;
  v75.size.width = v56;
  v75.size.height = v55;
  v48 = CGRectGetHeight(v75);
  v49 = *(v6 + 24);
  v50 = v46 / (v47 * v48);
  ObjectType = swift_getObjectType();
  v52 = (*(v49 + 16))(ObjectType, v49);
  sub_24E6585F8(v62);

  v53 = 40;
  if (v52)
  {
    v53 = 32;
  }

  return *(v2 + v53) < v50;
}

void sub_24EED8F4C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    [v4 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = (*(v5 + 48))(ObjectType, v5);
    if (!v15 || (v16 = v15, [v15 frame], v18 = v17, v20 = v19, v22 = v21, v24 = v23, v16, v34.origin.x = 0.0, v34.origin.y = 0.0, v34.size.width = 0.0, v34.size.height = 0.0, v32.origin.x = v18, v32.origin.y = v20, v32.size.width = v22, v32.size.height = v24, CGRectEqualToRect(v32, v34)))
    {
      [v4 frame];
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = 0.0;
      v35.size.height = 0.0;
      if (CGRectEqualToRect(v33, v35))
      {
        if (*(a1 + 64))
        {
          v18 = v8;
          v20 = v10;
          v22 = v12;
          v24 = v14;
        }

        else
        {
          v22 = *(a1 + 48);
          v24 = *(a1 + 56);
          v18 = *(a1 + 32);
          v20 = *(a1 + 40);
        }

        goto LABEL_11;
      }

      [v4 frame];
      v18 = v25;
      v20 = v26;
      v22 = v27;
      v24 = v28;
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 1;
LABEL_11:
    v29 = [v3 view];
    if (v29)
    {
      v30 = v29;
      v31 = [v4 superview];
      [v30 convertRect:v31 fromView:{v18, v20, v22, v24}];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24EED9160(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v9 = *(a2 + 8);
    v10 = a1;
    v9(v19, ObjectType, a2);
    swift_beginAccess();
    if (*(*(v4 + 48) + 16))
    {

      sub_24E76D934(v19);
      if (v11)
      {

        return sub_24E6585F8(v19);
      }
    }

    type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a2;
    v15 = *(a3 + 16);
    *(v14 + 32) = *a3;
    *(v14 + 48) = v15;
    *(v14 + 64) = *(a3 + 32);
    swift_beginAccess();
    v16 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_24E81E418(v14, v19, isUniquelyReferenced_nonNull_native);
    *(v4 + 48) = v18;
    swift_endAccess();

    return sub_24E6585F8(v19);
  }

  if (qword_27F2107E8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92AAE8();
  __swift_project_value_buffer(v12, qword_27F233120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5B8();
}

uint64_t sub_24EED93FC()
{

  MEMORY[0x2530543E0](v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_24EED9498()
{
  result = qword_27F233138;
  if (!qword_27F233138)
  {
    type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233138);
  }

  return result;
}

uint64_t sub_24EED950C(char *__src, char *a2, char *a3, char *__dst, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[8 * v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
      v6 = a2;
    }

    v196 = &v14[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      v16 = &selRef_lockedAppBundleIdentifiers;
      while (1)
      {
        v192 = v6;
        v194 = v14;
        v17 = *v6;
        v18 = *v14;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v17 + 16);
          v22 = *(v17 + 24);
          v23 = v16;
          ObjectType = swift_getObjectType();

          [v21 v23[502]];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v33 = (*(v22 + 48))(ObjectType, v22);
          if (v33 && (v34 = v33, [v33 v23[502]], v36 = v35, v38 = v37, v40 = v39, v42 = v41, v34, v221.origin.x = 0.0, v221.origin.y = 0.0, v221.size.width = 0.0, v221.size.height = 0.0, v201.origin.x = v36, v201.origin.y = v38, v201.size.width = v40, v201.size.height = v42, !CGRectEqualToRect(v201, v221)))
          {
            *(v17 + 32) = 0u;
            *(v17 + 48) = 0u;
            *(v17 + 64) = 1;
            v16 = v23;
          }

          else
          {
            [v21 v23[502]];
            v222.origin.x = 0.0;
            v222.origin.y = 0.0;
            v222.size.width = 0.0;
            v222.size.height = 0.0;
            v16 = v23;
            if (CGRectEqualToRect(v202, v222))
            {
              if (*(v17 + 64))
              {
                v36 = v26;
                v38 = v28;
                v40 = v30;
                v42 = v32;
              }

              else
              {
                v40 = *(v17 + 48);
                v42 = *(v17 + 56);
                v36 = *(v17 + 32);
                v38 = *(v17 + 40);
              }
            }

            else
            {
              [v21 v23[502]];
              v36 = v47;
              v38 = v48;
              v40 = v49;
              v42 = v50;
              *(v17 + 32) = 0u;
              *(v17 + 48) = 0u;
              *(v17 + 64) = 1;
            }
          }

          result = [v20 view];
          if (!result)
          {
            goto LABEL_104;
          }

          v52 = result;
          v53 = [v21 superview];
          [v52 convertRect:v53 fromView:{v36, v38, v40, v42}];
          v43 = v54;
          v44 = v55;
          v45 = v56;
          v46 = v57;
        }

        else
        {

          v43 = 0.0;
          v44 = 0.0;
          v45 = 0.0;
          v46 = 0.0;
        }

        v58 = swift_unknownObjectWeakLoadStrong();
        if (v58)
        {
          v59 = v58;
          v60 = v16;
          v61 = *(v18 + 16);
          v62 = *(v18 + 24);
          v63 = swift_getObjectType();
          [v61 v60[502]];
          rect = v64;
          v188 = v66;
          v190 = v65;
          v186 = v67;
          v68 = (*(v62 + 48))(v63, v62);
          if (v68 && (v69 = v68, [v68 v60[502]], v71 = v70, v73 = v72, v75 = v74, v77 = v76, v69, v223.origin.x = 0.0, v223.origin.y = 0.0, v223.size.width = 0.0, v223.size.height = 0.0, v203.origin.x = v71, v203.origin.y = v73, v203.size.width = v75, v203.size.height = v77, !CGRectEqualToRect(v203, v223)))
          {
            *(v18 + 32) = 0u;
            *(v18 + 48) = 0u;
            *(v18 + 64) = 1;
            v16 = v60;
          }

          else
          {
            [v61 v60[502]];
            v224.origin.x = 0.0;
            v224.origin.y = 0.0;
            v224.size.width = 0.0;
            v224.size.height = 0.0;
            v16 = v60;
            if (CGRectEqualToRect(v204, v224))
            {
              if (*(v18 + 64))
              {
                v71 = rect;
                v75 = v188;
                v73 = v190;
                v77 = v186;
              }

              else
              {
                v75 = *(v18 + 48);
                v77 = *(v18 + 56);
                v71 = *(v18 + 32);
                v73 = *(v18 + 40);
              }
            }

            else
            {
              [v61 v60[502]];
              v71 = v81;
              v73 = v82;
              v75 = v83;
              v77 = v84;
              *(v18 + 32) = 0u;
              *(v18 + 48) = 0u;
              *(v18 + 64) = 1;
            }
          }

          result = [v59 view];
          if (!result)
          {
            __break(1u);
            goto LABEL_103;
          }

          v85 = result;
          v86 = [v61 superview];
          [v85 convertRect:v86 fromView:{v71, v73, v75, v77}];
          recta = v87;
          v78 = v88;
          v79 = v89;
          v80 = v90;
        }

        else
        {
          recta = 0.0;
          v78 = 0.0;
          v79 = 0.0;
          v80 = 0.0;
        }

        v205.origin.x = v43;
        v205.origin.y = v44;
        v205.size.width = v45;
        v205.size.height = v46;
        v91 = v46;
        v92 = v45;
        v93 = v44;
        v94 = v43;
        MinY = CGRectGetMinY(v205);
        v206.origin.x = recta;
        v206.origin.y = v78;
        v206.size.width = v79;
        v206.size.height = v80;
        if (MinY < CGRectGetMinY(v206))
        {
          break;
        }

        v207.origin.x = v94;
        v207.origin.y = v93;
        v207.size.width = v92;
        v207.size.height = v91;
        v96 = CGRectGetMinY(v207);
        v208.origin.x = recta;
        v208.origin.y = v78;
        v208.size.width = v79;
        v208.size.height = v80;
        if (v96 == CGRectGetMinY(v208))
        {
          v209.origin.x = v94;
          v209.origin.y = v93;
          v209.size.width = v92;
          v209.size.height = v91;
          MinX = CGRectGetMinX(v209);
          v210.origin.x = recta;
          v210.origin.y = v78;
          v210.size.width = v79;
          v210.size.height = v80;
          v98 = CGRectGetMinX(v210);

          if (MinX < v98)
          {
            goto LABEL_40;
          }
        }

        else
        {
        }

        v6 = v192;
        v99 = v194;
        v14 = v194 + 8;
        if (v7 != v194)
        {
          goto LABEL_41;
        }

LABEL_42:
        v7 += 8;
        if (v14 >= v196 || v6 >= v5)
        {
          goto LABEL_95;
        }
      }

LABEL_40:
      v14 = v194;
      v99 = v192;
      v6 = v192 + 8;
      if (v7 == v192)
      {
        goto LABEL_42;
      }

LABEL_41:
      *v7 = *v99;
      goto LABEL_42;
    }

LABEL_95:
    v183 = v7;
LABEL_98:
    if (v183 != v14 || v183 >= &v14[(v196 - v14 + (v196 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v183, v14, 8 * ((v196 - v14) / 8));
    }

    return 1;
  }

  if (__dst != a2 || &a2[8 * v13] <= __dst)
  {
    v100 = __dst;
    memmove(__dst, a2, 8 * v13);
    v6 = a2;
    __dst = v100;
  }

  v196 = &__dst[8 * v13];
  v14 = __dst;
  if (v11 < 8 || v6 <= v7)
  {
    v183 = v6;
    goto LABEL_98;
  }

  v102 = &selRef_lockedAppBundleIdentifiers;
  v191 = v7;
  v195 = __dst;
LABEL_54:
  v193 = v6;
  v103 = v6 - 8;
  v5 -= 8;
  v104 = v196;
  v189 = v6 - 8;
  while (1)
  {
    v106 = *(v104 - 1);
    v104 -= 8;
    v105 = v106;
    v107 = *v103;
    v108 = swift_unknownObjectWeakLoadStrong();
    if (!v108)
    {

      v132 = 0.0;
      v133 = 0.0;
      v134 = 0.0;
      v135 = 0.0;
      goto LABEL_69;
    }

    v109 = v108;
    v110 = v102;
    v111 = *(v105 + 16);
    v112 = *(v105 + 24);
    v113 = swift_getObjectType();

    [v111 v110[502]];
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v122 = (*(v112 + 48))(v113, v112);
    if (v122 && (v123 = v122, [v122 v110[502]], v125 = v124, v127 = v126, v129 = v128, v131 = v130, v123, v225.origin.x = 0.0, v225.origin.y = 0.0, v225.size.width = 0.0, v225.size.height = 0.0, v211.origin.x = v125, v211.origin.y = v127, v211.size.width = v129, v211.size.height = v131, !CGRectEqualToRect(v211, v225)))
    {
      *(v105 + 32) = 0u;
      *(v105 + 48) = 0u;
      *(v105 + 64) = 1;
      v102 = v110;
    }

    else
    {
      [v111 v110[502]];
      v226.origin.x = 0.0;
      v226.origin.y = 0.0;
      v226.size.width = 0.0;
      v226.size.height = 0.0;
      v102 = v110;
      if (CGRectEqualToRect(v212, v226))
      {
        v7 = v191;
        if (*(v105 + 64))
        {
          v125 = v115;
          v127 = v117;
          v129 = v119;
          v131 = v121;
        }

        else
        {
          v129 = *(v105 + 48);
          v131 = *(v105 + 56);
          v125 = *(v105 + 32);
          v127 = *(v105 + 40);
        }

        goto LABEL_67;
      }

      [v111 v110[502]];
      v125 = v136;
      v127 = v137;
      v129 = v138;
      v131 = v139;
      *(v105 + 32) = 0u;
      *(v105 + 48) = 0u;
      *(v105 + 64) = 1;
    }

    v7 = v191;
LABEL_67:
    result = [v109 view];
    if (!result)
    {
      goto LABEL_105;
    }

    v140 = result;
    v141 = [v111 superview];
    [v140 convertRect:v141 fromView:{v125, v127, v129, v131}];
    v132 = v142;
    v133 = v143;
    v134 = v144;
    v135 = v145;

LABEL_69:
    v146 = swift_unknownObjectWeakLoadStrong();
    if (!v146)
    {
      rectc = 0.0;
      v166 = 0.0;
      v167 = 0.0;
      v168 = 0.0;
      goto LABEL_82;
    }

    v147 = v146;
    v148 = v102;
    v149 = *(v107 + 16);
    v150 = *(v107 + 24);
    v151 = swift_getObjectType();
    [v149 v148[502]];
    rectb = v152;
    v185 = v154;
    v187 = v153;
    v184 = v155;
    v156 = (*(v150 + 48))(v151, v150);
    if (v156)
    {
      v157 = v156;
      [v156 v148[502]];
      v159 = v158;
      v161 = v160;
      v163 = v162;
      v165 = v164;

      v227.origin.x = 0.0;
      v227.origin.y = 0.0;
      v227.size.width = 0.0;
      v227.size.height = 0.0;
      v213.origin.x = v159;
      v213.origin.y = v161;
      v213.size.width = v163;
      v213.size.height = v165;
      if (!CGRectEqualToRect(v213, v227))
      {
        *(v107 + 32) = 0u;
        *(v107 + 48) = 0u;
        *(v107 + 64) = 1;
        v102 = v148;
        goto LABEL_78;
      }
    }

    [v149 v148[502]];
    v228.origin.x = 0.0;
    v228.origin.y = 0.0;
    v228.size.width = 0.0;
    v228.size.height = 0.0;
    v102 = v148;
    if (!CGRectEqualToRect(v214, v228))
    {
      [v149 v148[502]];
      v159 = v169;
      v161 = v170;
      v163 = v171;
      v165 = v172;
      *(v107 + 32) = 0u;
      *(v107 + 48) = 0u;
      *(v107 + 64) = 1;
LABEL_78:
      v7 = v191;
      goto LABEL_80;
    }

    v7 = v191;
    if (*(v107 + 64))
    {
      v159 = rectb;
      v163 = v185;
      v161 = v187;
      v165 = v184;
    }

    else
    {
      v163 = *(v107 + 48);
      v165 = *(v107 + 56);
      v159 = *(v107 + 32);
      v161 = *(v107 + 40);
    }

LABEL_80:
    result = [v147 view];
    if (!result)
    {
      break;
    }

    v173 = result;
    v174 = [v149 superview];
    [v173 convertRect:v174 fromView:{v159, v161, v163, v165}];
    rectc = v175;
    v166 = v176;
    v167 = v177;
    v168 = v178;

LABEL_82:
    v215.origin.x = v132;
    v215.origin.y = v133;
    v215.size.width = v134;
    v215.size.height = v135;
    v179 = CGRectGetMinY(v215);
    v216.origin.x = rectc;
    v216.origin.y = v166;
    v216.size.width = v167;
    v216.size.height = v168;
    v103 = v189;
    if (v179 < CGRectGetMinY(v216))
    {

LABEL_90:
      if (v5 + 8 != v193)
      {
        *v5 = *v189;
      }

      v14 = v195;
      if (v196 <= v195 || (v6 = v189, v189 <= v7))
      {
        v183 = v189;
        goto LABEL_98;
      }

      goto LABEL_54;
    }

    v217.origin.x = v132;
    v217.origin.y = v133;
    v217.size.width = v134;
    v217.size.height = v135;
    v180 = CGRectGetMinY(v217);
    v218.origin.x = rectc;
    v218.origin.y = v166;
    v218.size.width = v167;
    v218.size.height = v168;
    if (v180 == CGRectGetMinY(v218))
    {
      v219.origin.x = v132;
      v219.origin.y = v133;
      v219.size.width = v134;
      v219.size.height = v135;
      v181 = CGRectGetMinX(v219);
      v220.origin.x = rectc;
      v220.origin.y = v166;
      v220.size.width = v167;
      v220.size.height = v168;
      v182 = CGRectGetMinX(v220);

      if (v181 < v182)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    if (v5 + 8 != v196)
    {
      *v5 = *v104;
    }

    v5 -= 8;
    v196 = v104;
    if (v104 <= v195)
    {
      v196 = v104;
      v183 = v193;
      v14 = v195;
      goto LABEL_98;
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

void sub_24EEDA0F0(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v23 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v23 = sub_24E86164C(v23);
  }

  v19 = v6;
  *v6 = v23;
  v8 = (v23 + 16);
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v23;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v23[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_24EED950C(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v19 = v23;

        return;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_12;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v23;
    __break(1u);
  }
}

uint64_t sub_24EEDA298(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char **a5)
{
  v6 = a3[1];
  v299 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_retain_n();
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v292 = a5;
    v271 = a4;
LABEL_5:
    v10 = v8 + 1;
    v274 = v8;
    if (v8 + 1 >= v6)
    {
      goto LABEL_52;
    }

    v11 = *a3;
    v12 = *(*a3 + 8 * v10);
    v13 = *(*a3 + 8 * v8);

    sub_24EED8F4C(v12);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_24EED8F4C(v13);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    rect = v15;
    v300.origin.x = v15;
    v300.origin.y = v17;
    v300.size.width = v19;
    v300.size.height = v21;
    MinY = CGRectGetMinY(v300);
    v301.origin.x = v23;
    v301.origin.y = v25;
    v301.size.width = v27;
    v301.size.height = v29;
    if (MinY >= CGRectGetMinY(v301))
    {
      v302.origin.x = rect;
      v302.origin.y = v17;
      v302.size.width = v19;
      v302.size.height = v21;
      v32 = CGRectGetMinY(v302);
      v303.origin.x = v23;
      v303.origin.y = v25;
      v303.size.width = v27;
      v303.size.height = v29;
      if (v32 != CGRectGetMinY(v303))
      {

        v287 = 0;
        goto LABEL_11;
      }

      v304.origin.x = rect;
      v304.origin.y = v17;
      v304.size.width = v19;
      v304.size.height = v21;
      MinX = CGRectGetMinX(v304);
      v305.origin.x = v23;
      v305.origin.y = v25;
      v305.size.width = v27;
      v305.size.height = v29;
      v34 = CGRectGetMinX(v305);

      v31 = MinX < v34;
    }

    else
    {

      v31 = 1;
    }

    v287 = v31;
LABEL_11:
    v35 = v8 + 2;
    if (v8 + 2 >= v6)
    {
      v37 = v8 + 2;
      goto LABEL_48;
    }

    v36 = (v11 + 8 * v8 + 16);
    v285 = v6;
    while (1)
    {
      v289 = v35;
      v38 = *(v36 - 1);
      v39 = *v36;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        v63 = 0.0;
        v64 = 0.0;
        v65 = 0.0;
        v66 = 0.0;
        goto LABEL_28;
      }

      v41 = Strong;
      v42 = *(v39 + 16);
      v43 = *(v39 + 24);
      ObjectType = swift_getObjectType();

      [v42 frame];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = (*(v43 + 48))(ObjectType, v43);
      if (!v53 || (v54 = v53, [v53 frame], v56 = v55, v58 = v57, v60 = v59, v62 = v61, v54, v326.origin.x = 0.0, v326.origin.y = 0.0, v326.size.width = 0.0, v326.size.height = 0.0, v306.origin.x = v56, v306.origin.y = v58, v306.size.width = v60, v306.size.height = v62, CGRectEqualToRect(v306, v326)))
      {
        [v42 frame];
        v327.origin.x = 0.0;
        v327.origin.y = 0.0;
        v327.size.width = 0.0;
        v327.size.height = 0.0;
        if (CGRectEqualToRect(v307, v327))
        {
          if (*(v39 + 64))
          {
            v56 = v46;
            v58 = v48;
            v60 = v50;
            v62 = v52;
          }

          else
          {
            v60 = *(v39 + 48);
            v62 = *(v39 + 56);
            v56 = *(v39 + 32);
            v58 = *(v39 + 40);
          }

          goto LABEL_26;
        }

        [v42 frame];
        v56 = v67;
        v58 = v68;
        v60 = v69;
        v62 = v70;
      }

      *(v39 + 32) = 0u;
      *(v39 + 48) = 0u;
      *(v39 + 64) = 1;
LABEL_26:
      v71 = [v41 view];
      if (!v71)
      {
        goto LABEL_187;
      }

      v72 = v71;
      v73 = [v42 superview];
      [v72 convertRect:v73 fromView:{v56, v58, v60, v62}];
      v63 = v74;
      v64 = v75;
      v65 = v76;
      v66 = v77;

      a5 = v292;
LABEL_28:
      v78 = swift_unknownObjectWeakLoadStrong();
      if (!v78)
      {
        rectb = 0.0;
        v97 = 0.0;
        v98 = 0.0;
        v99 = 0.0;
        goto LABEL_40;
      }

      v79 = v78;
      v80 = *(v38 + 16);
      v81 = *(v38 + 24);
      v82 = swift_getObjectType();
      [v80 frame];
      recta = v83;
      v283 = v84;
      v276 = v86;
      v278 = v85;
      v87 = (*(v81 + 48))(v82, v81);
      if (!v87 || (v88 = v87, [v87 frame], v90 = v89, v92 = v91, v94 = v93, v96 = v95, v88, v328.origin.x = 0.0, v328.origin.y = 0.0, v328.size.width = 0.0, v328.size.height = 0.0, v308.origin.x = v90, v308.origin.y = v92, v308.size.width = v94, v308.size.height = v96, CGRectEqualToRect(v308, v328)))
      {
        [v80 frame];
        v329.origin.x = 0.0;
        v329.origin.y = 0.0;
        v329.size.width = 0.0;
        v329.size.height = 0.0;
        if (CGRectEqualToRect(v309, v329))
        {
          if (*(v38 + 64))
          {
            v90 = recta;
            v92 = v283;
            v96 = v276;
            v94 = v278;
          }

          else
          {
            v94 = *(v38 + 48);
            v96 = *(v38 + 56);
            v90 = *(v38 + 32);
            v92 = *(v38 + 40);
          }

          goto LABEL_38;
        }

        [v80 frame];
        v90 = v100;
        v92 = v101;
        v94 = v102;
        v96 = v103;
      }

      *(v38 + 32) = 0u;
      *(v38 + 48) = 0u;
      *(v38 + 64) = 1;
LABEL_38:
      v104 = [v79 view];
      if (!v104)
      {
        goto LABEL_188;
      }

      v105 = v104;
      v106 = [v80 superview];
      [v105 convertRect:v106 fromView:{v90, v92, v94, v96}];
      rectb = v107;
      v97 = v108;
      v98 = v109;
      v99 = v110;

      a5 = v292;
LABEL_40:
      v310.origin.x = v63;
      v310.origin.y = v64;
      v310.size.width = v65;
      v310.size.height = v66;
      v111 = v66;
      v112 = v65;
      v113 = v64;
      v114 = v63;
      v115 = CGRectGetMinY(v310);
      v311.origin.x = rectb;
      v311.origin.y = v97;
      v311.size.width = v98;
      v311.size.height = v99;
      if (v115 < CGRectGetMinY(v311))
      {

LABEL_44:
        v8 = v274;
        v37 = v285;
        v35 = v289;
        if (!v287)
        {
          v10 = v289;
          a4 = v271;
          goto LABEL_52;
        }

        goto LABEL_15;
      }

      v312.origin.x = v114;
      v312.origin.y = v113;
      v312.size.width = v112;
      v312.size.height = v111;
      v116 = CGRectGetMinY(v312);
      v313.origin.x = rectb;
      v313.origin.y = v97;
      v313.size.width = v98;
      v313.size.height = v99;
      if (v116 == CGRectGetMinY(v313))
      {
        v314.origin.x = v114;
        v314.origin.y = v113;
        v314.size.width = v112;
        v314.size.height = v111;
        v117 = CGRectGetMinX(v314);
        v315.origin.x = rectb;
        v315.origin.y = v97;
        v315.size.width = v98;
        v315.size.height = v99;
        v118 = CGRectGetMinX(v315);

        if (v117 < v118)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v8 = v274;
      v37 = v285;
      v35 = v289;
      if (v287)
      {
        v119 = v289 - 1;
        a4 = v271;
        if (v289 >= v274)
        {
          goto LABEL_50;
        }

LABEL_182:
        __break(1u);
LABEL_183:

        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:

        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:

        __break(1u);
LABEL_190:

        __break(1u);
LABEL_191:

        __break(1u);
        return result;
      }

LABEL_15:
      ++v35;
      ++v36;
      if (v37 == v35)
      {
        v10 = v35 - 1;
        v35 = v37;
LABEL_48:
        v119 = v10;
        v10 = v37;
        a4 = v271;
        if (!v287)
        {
          goto LABEL_52;
        }

        if (v35 < v8)
        {
          goto LABEL_182;
        }

LABEL_50:
        if (v8 <= v119)
        {
          v262 = 8 * v35 - 8;
          v263 = 8 * v8;
          v264 = v35;
          v265 = v8;
          do
          {
            if (v265 != --v264)
            {
              v266 = *a3;
              if (!*a3)
              {
                goto LABEL_189;
              }

              v267 = *(v266 + v263);
              *(v266 + v263) = *(v266 + v262);
              *(v266 + v262) = v267;
            }

            ++v265;
            v262 -= 8;
            v263 += 8;
          }

          while (v265 < v264);
        }

        v10 = v35;
LABEL_52:
        v120 = a3[1];
        if (v10 >= v120)
        {
          goto LABEL_97;
        }

        if (__OFSUB__(v10, v8))
        {
          goto LABEL_179;
        }

        if (v10 - v8 >= a4)
        {
          goto LABEL_97;
        }

        v121 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_180;
        }

        if (v121 >= v120)
        {
          v121 = a3[1];
        }

        if (v121 < v8)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v10 == v121)
        {
          goto LABEL_97;
        }

        v270 = v9;
        v290 = *a3;
        v122 = *a3 + 8 * v10 - 8;
        v123 = v8 - v10;
        v273 = v121;
        while (2)
        {
          v124 = *(v290 + 8 * v10);
          v275 = v123;
          v277 = v122;
          v279 = v10;
          v125 = v122;
          while (2)
          {
            v126 = *v125;
            v127 = swift_unknownObjectWeakLoadStrong();
            if (!v127)
            {

              v150 = 0.0;
              v151 = 0.0;
              v152 = 0.0;
              v153 = 0.0;
              goto LABEL_76;
            }

            v128 = v127;
            v129 = *(v124 + 16);
            v130 = *(v124 + 24);
            v131 = swift_getObjectType();

            [v129 frame];
            v133 = v132;
            v135 = v134;
            v137 = v136;
            v139 = v138;
            v140 = (*(v130 + 48))(v131, v130);
            if (v140)
            {
              v141 = v140;
              [v140 frame];
              v143 = v142;
              v145 = v144;
              v147 = v146;
              v149 = v148;

              v330.origin.x = 0.0;
              v330.origin.y = 0.0;
              v330.size.width = 0.0;
              v330.size.height = 0.0;
              v316.origin.x = v143;
              v316.origin.y = v145;
              v316.size.width = v147;
              v316.size.height = v149;
              if (!CGRectEqualToRect(v316, v330))
              {
                goto LABEL_72;
              }
            }

            [v129 frame];
            v331.origin.x = 0.0;
            v331.origin.y = 0.0;
            v331.size.width = 0.0;
            v331.size.height = 0.0;
            if (!CGRectEqualToRect(v317, v331))
            {
              [v129 frame];
              v143 = v154;
              v145 = v155;
              v147 = v156;
              v149 = v157;
LABEL_72:
              *(v124 + 32) = 0u;
              *(v124 + 48) = 0u;
              *(v124 + 64) = 1;
              goto LABEL_74;
            }

            if (*(v124 + 64))
            {
              v143 = v133;
              v145 = v135;
              v147 = v137;
              v149 = v139;
            }

            else
            {
              v147 = *(v124 + 48);
              v149 = *(v124 + 56);
              v143 = *(v124 + 32);
              v145 = *(v124 + 40);
            }

LABEL_74:
            v158 = [v128 view];
            if (!v158)
            {
              goto LABEL_184;
            }

            v159 = v158;
            v160 = [v129 superview];
            [v159 convertRect:v160 fromView:{v143, v145, v147, v149}];
            v150 = v161;
            v151 = v162;
            v152 = v163;
            v153 = v164;

            a5 = v292;
LABEL_76:
            v165 = swift_unknownObjectWeakLoadStrong();
            if (!v165)
            {
              rectd = 0.0;
              v184 = 0.0;
              v185 = 0.0;
              v186 = 0.0;
              goto LABEL_88;
            }

            v166 = v165;
            v167 = *(v126 + 16);
            v168 = *(v126 + 24);
            v169 = swift_getObjectType();
            [v167 frame];
            rectc = v170;
            v286 = v172;
            v288 = v171;
            v284 = v173;
            v174 = (*(v168 + 48))(v169, v168);
            if (v174)
            {
              v175 = v174;
              [v174 frame];
              v177 = v176;
              v179 = v178;
              v181 = v180;
              v183 = v182;

              v332.origin.x = 0.0;
              v332.origin.y = 0.0;
              v332.size.width = 0.0;
              v332.size.height = 0.0;
              v318.origin.x = v177;
              v318.origin.y = v179;
              v318.size.width = v181;
              v318.size.height = v183;
              if (!CGRectEqualToRect(v318, v332))
              {
                goto LABEL_84;
              }
            }

            [v167 frame];
            v333.origin.x = 0.0;
            v333.origin.y = 0.0;
            v333.size.width = 0.0;
            v333.size.height = 0.0;
            if (!CGRectEqualToRect(v319, v333))
            {
              [v167 frame];
              v177 = v187;
              v179 = v188;
              v181 = v189;
              v183 = v190;
LABEL_84:
              *(v126 + 32) = 0u;
              *(v126 + 48) = 0u;
              *(v126 + 64) = 1;
              goto LABEL_86;
            }

            if (*(v126 + 64))
            {
              v177 = rectc;
              v181 = v286;
              v179 = v288;
              v183 = v284;
            }

            else
            {
              v181 = *(v126 + 48);
              v183 = *(v126 + 56);
              v177 = *(v126 + 32);
              v179 = *(v126 + 40);
            }

LABEL_86:
            v191 = [v166 view];
            if (!v191)
            {
              goto LABEL_185;
            }

            v192 = v191;
            v193 = [v167 superview];
            [v192 convertRect:v193 fromView:{v177, v179, v181, v183}];
            rectd = v194;
            v184 = v195;
            v185 = v196;
            v186 = v197;

            a5 = v292;
LABEL_88:
            v320.origin.x = v150;
            v320.origin.y = v151;
            v320.size.width = v152;
            v320.size.height = v153;
            v198 = v153;
            v199 = v152;
            v200 = v151;
            v201 = v150;
            v202 = CGRectGetMinY(v320);
            v321.origin.x = rectd;
            v321.origin.y = v184;
            v321.size.width = v185;
            v321.size.height = v186;
            if (v202 < CGRectGetMinY(v321))
            {

              goto LABEL_92;
            }

            v322.origin.x = v201;
            v322.origin.y = v200;
            v322.size.width = v199;
            v322.size.height = v198;
            v203 = CGRectGetMinY(v322);
            v323.origin.x = rectd;
            v323.origin.y = v184;
            v323.size.width = v185;
            v323.size.height = v186;
            if (v203 == CGRectGetMinY(v323))
            {
              v324.origin.x = v201;
              v324.origin.y = v200;
              v324.size.width = v199;
              v324.size.height = v198;
              v204 = CGRectGetMinX(v324);
              v325.origin.x = rectd;
              v325.origin.y = v184;
              v325.size.width = v185;
              v325.size.height = v186;
              v205 = CGRectGetMinX(v325);

              if (v204 >= v205)
              {
                goto LABEL_62;
              }

LABEL_92:
              if (!v290)
              {
                goto LABEL_183;
              }

              v206 = *v125;
              v124 = v125[1];
              *v125 = v124;
              v125[1] = v206;
              --v125;
              if (__CFADD__(v123++, 1))
              {
                goto LABEL_62;
              }

              continue;
            }

            break;
          }

LABEL_62:
          v10 = v279 + 1;
          v122 = v277 + 8;
          v123 = v275 - 1;
          if (v279 + 1 != v273)
          {
            continue;
          }

          break;
        }

        v10 = v273;
        v9 = v270;
        v8 = v274;
LABEL_97:
        if (v10 < v8)
        {
          goto LABEL_178;
        }

        v280 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
        }

        v209 = *(v9 + 2);
        v208 = *(v9 + 3);
        v210 = v209 + 1;
        if (v209 >= v208 >> 1)
        {
          v9 = sub_24E615ED8((v208 > 1), v209 + 1, 1, v9);
        }

        *(v9 + 2) = v210;
        v211 = v9 + 32;
        v212 = &v9[16 * v209 + 32];
        *v212 = v8;
        *(v212 + 1) = v280;
        v299 = v9;
        recte = *a1;
        if (!*a1)
        {
          goto LABEL_190;
        }

        if (v209)
        {
          v291 = v9 + 32;
          while (1)
          {
            v213 = v210 - 1;
            if (v210 >= 4)
            {
              break;
            }

            if (v210 == 3)
            {
              v214 = *(v9 + 4);
              v215 = *(v9 + 5);
              v224 = __OFSUB__(v215, v214);
              v216 = v215 - v214;
              v217 = v224;
LABEL_118:
              if (v217)
              {
                goto LABEL_169;
              }

              v230 = &v9[16 * v210];
              v232 = *v230;
              v231 = *(v230 + 1);
              v233 = __OFSUB__(v231, v232);
              v234 = v231 - v232;
              v235 = v233;
              if (v233)
              {
                goto LABEL_172;
              }

              v236 = &v211[16 * v213];
              v238 = *v236;
              v237 = *(v236 + 1);
              v224 = __OFSUB__(v237, v238);
              v239 = v237 - v238;
              if (v224)
              {
                goto LABEL_175;
              }

              if (__OFADD__(v234, v239))
              {
                goto LABEL_176;
              }

              if (v234 + v239 >= v216)
              {
                if (v216 < v239)
                {
                  v213 = v210 - 2;
                }

                goto LABEL_139;
              }

              goto LABEL_132;
            }

            v240 = &v9[16 * v210];
            v242 = *v240;
            v241 = *(v240 + 1);
            v224 = __OFSUB__(v241, v242);
            v234 = v241 - v242;
            v235 = v224;
LABEL_132:
            if (v235)
            {
              goto LABEL_171;
            }

            v243 = &v211[16 * v213];
            v245 = *v243;
            v244 = *(v243 + 1);
            v224 = __OFSUB__(v244, v245);
            v246 = v244 - v245;
            if (v224)
            {
              goto LABEL_174;
            }

            if (v246 < v234)
            {
              goto LABEL_3;
            }

LABEL_139:
            if (v213 - 1 >= v210)
            {
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            v251 = *a3;
            if (!*a3)
            {
              goto LABEL_186;
            }

            v252 = v9;
            v253 = &v211[16 * v213 - 16];
            v254 = *v253;
            v255 = v213;
            v256 = &v211[16 * v213];
            v257 = *(v256 + 1);
            v258 = (v251 + 8 * *v253);
            v259 = (v251 + 8 * *v256);
            v260 = (v251 + 8 * v257);
            a5 = v292;

            sub_24EED950C(v258, v259, v260, recte, v292);
            if (v282)
            {

              goto LABEL_160;
            }

            if (v257 < v254)
            {
              goto LABEL_164;
            }

            v261 = *(v252 + 2);
            if (v255 > v261)
            {
              goto LABEL_165;
            }

            *v253 = v254;
            *(v253 + 1) = v257;
            if (v255 >= v261)
            {
              goto LABEL_166;
            }

            v210 = v261 - 1;
            memmove(v256, v256 + 16, 16 * (v261 - 1 - v255));
            v9 = v252;
            *(v252 + 2) = v261 - 1;
            v211 = v291;
            if (v261 <= 2)
            {
LABEL_3:
              v299 = v9;
              goto LABEL_4;
            }
          }

          v218 = &v211[16 * v210];
          v219 = *(v218 - 8);
          v220 = *(v218 - 7);
          v224 = __OFSUB__(v220, v219);
          v221 = v220 - v219;
          if (v224)
          {
            goto LABEL_167;
          }

          v223 = *(v218 - 6);
          v222 = *(v218 - 5);
          v224 = __OFSUB__(v222, v223);
          v216 = v222 - v223;
          v217 = v224;
          if (v224)
          {
            goto LABEL_168;
          }

          v225 = &v9[16 * v210];
          v227 = *v225;
          v226 = *(v225 + 1);
          v224 = __OFSUB__(v226, v227);
          v228 = v226 - v227;
          if (v224)
          {
            goto LABEL_170;
          }

          v224 = __OFADD__(v216, v228);
          v229 = v216 + v228;
          if (v224)
          {
            goto LABEL_173;
          }

          if (v229 >= v221)
          {
            v247 = &v211[16 * v213];
            v249 = *v247;
            v248 = *(v247 + 1);
            v224 = __OFSUB__(v248, v249);
            v250 = v248 - v249;
            if (v224)
            {
              goto LABEL_177;
            }

            if (v216 < v250)
            {
              v213 = v210 - 2;
            }

            goto LABEL_139;
          }

          goto LABEL_118;
        }

LABEL_4:
        v8 = v280;
        v6 = a3[1];
        a4 = v271;
        if (v280 >= v6)
        {
          goto LABEL_157;
        }

        goto LABEL_5;
      }
    }
  }

  swift_retain_n();
LABEL_157:
  v268 = *a1;
  if (!*a1)
  {
    goto LABEL_191;
  }

  sub_24EEDA0F0(&v299, v268, a3, a5);
  if (v282)
  {

LABEL_160:
  }

  else
  {
  }
}

void sub_24EEDB2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
    return;
  }

  v97 = *a4;
  v5 = (*a4 + 8 * a3 - 8);
  v6 = a1 - a3;
LABEL_6:
  v92 = v5;
  v93 = a3;
  v7 = *(v97 + 8 * a3);
  v91 = v6;
  while (1)
  {
    v8 = *v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      goto LABEL_19;
    }

    v10 = Strong;
    v11 = *(v7 + 16);
    v12 = *(v7 + 24);
    ObjectType = swift_getObjectType();

    [v11 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = (*(v12 + 48))(ObjectType, v12);
    if (!v22 || (v23 = v22, [v22 frame], v25 = v24, v27 = v26, v29 = v28, v31 = v30, v23, v110.origin.x = 0.0, v110.origin.y = 0.0, v110.size.width = 0.0, v110.size.height = 0.0, v100.origin.x = v25, v100.origin.y = v27, v100.size.width = v29, v100.size.height = v31, CGRectEqualToRect(v100, v110)))
    {
      [v11 frame];
      v111.origin.x = 0.0;
      v111.origin.y = 0.0;
      v111.size.width = 0.0;
      v111.size.height = 0.0;
      if (CGRectEqualToRect(v101, v111))
      {
        if (*(v7 + 64))
        {
          v25 = v15;
          v27 = v17;
          v29 = v19;
          v31 = v21;
        }

        else
        {
          v29 = *(v7 + 48);
          v31 = *(v7 + 56);
          v25 = *(v7 + 32);
          v27 = *(v7 + 40);
        }

        goto LABEL_17;
      }

      [v11 frame];
      v25 = v36;
      v27 = v37;
      v29 = v38;
      v31 = v39;
    }

    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 1;
LABEL_17:
    v40 = [v10 view];
    if (!v40)
    {
      goto LABEL_40;
    }

    v41 = v40;
    v42 = [v11 superview];
    [v41 convertRect:v42 fromView:{v25, v27, v29, v31}];
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;

LABEL_19:
    v47 = swift_unknownObjectWeakLoadStrong();
    if (!v47)
    {
      v99 = 0.0;
      v66 = 0.0;
      v67 = 0.0;
      v68 = 0.0;
      goto LABEL_31;
    }

    v48 = v47;
    v50 = *(v8 + 16);
    v49 = *(v8 + 24);
    v51 = swift_getObjectType();
    [v50 frame];
    v98 = v52;
    v95 = v54;
    v96 = v53;
    v94 = v55;
    v56 = (*(v49 + 48))(v51, v49);
    if (!v56 || (v57 = v56, [v56 frame], v59 = v58, v61 = v60, v63 = v62, v65 = v64, v57, v112.origin.x = 0.0, v112.origin.y = 0.0, v112.size.width = 0.0, v112.size.height = 0.0, v102.origin.x = v59, v102.origin.y = v61, v102.size.width = v63, v102.size.height = v65, CGRectEqualToRect(v102, v112)))
    {
      [v50 frame];
      v113.origin.x = 0.0;
      v113.origin.y = 0.0;
      v113.size.width = 0.0;
      v113.size.height = 0.0;
      if (CGRectEqualToRect(v103, v113))
      {
        if (*(v8 + 64))
        {
          v59 = v98;
          v63 = v95;
          v61 = v96;
          v65 = v94;
        }

        else
        {
          v63 = *(v8 + 48);
          v65 = *(v8 + 56);
          v59 = *(v8 + 32);
          v61 = *(v8 + 40);
        }

        goto LABEL_29;
      }

      [v50 frame];
      v59 = v69;
      v61 = v70;
      v63 = v71;
      v65 = v72;
    }

    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 1;
LABEL_29:
    v73 = [v48 view];
    if (!v73)
    {
      goto LABEL_41;
    }

    v74 = v73;
    v75 = [v50 superview];
    [v74 convertRect:v75 fromView:{v59, v61, v63, v65}];
    v99 = v76;
    v66 = v77;
    v67 = v78;
    v68 = v79;

LABEL_31:
    v104.origin.x = v32;
    v104.origin.y = v33;
    v104.size.width = v34;
    v104.size.height = v35;
    v80 = v35;
    v81 = v34;
    v82 = v33;
    v83 = v32;
    MinY = CGRectGetMinY(v104);
    v105.origin.x = v99;
    v105.origin.y = v66;
    v105.size.width = v67;
    v105.size.height = v68;
    if (MinY >= CGRectGetMinY(v105))
    {
      v106.origin.x = v83;
      v106.origin.y = v82;
      v106.size.width = v81;
      v106.size.height = v80;
      v85 = CGRectGetMinY(v106);
      v107.origin.x = v99;
      v107.origin.y = v66;
      v107.size.width = v67;
      v107.size.height = v68;
      if (v85 != CGRectGetMinY(v107))
      {

LABEL_5:
        a3 = v93 + 1;
        v5 = v92 + 1;
        v6 = v91 - 1;
        if (v93 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v108.origin.x = v83;
      v108.origin.y = v82;
      v108.size.width = v81;
      v108.size.height = v80;
      MinX = CGRectGetMinX(v108);
      v109.origin.x = v99;
      v109.origin.y = v66;
      v109.size.width = v67;
      v109.size.height = v68;
      v87 = CGRectGetMinX(v109);

      if (MinX >= v87)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    if (!v97)
    {
      break;
    }

    v88 = *v5;
    v7 = v5[1];
    *v5 = v7;
    v5[1] = v88;
    --v5;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_24EEDB82C(uint64_t *a1, char **a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_24F92CD78();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
        v8 = sub_24F92B618();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_24EEDA298(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_24EEDB2DC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_24EEDB988(uint64_t *a1, char **a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24E861E6C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_24EEDB82C(v8, a2);

  sub_24F92C958();
}

void sub_24EEDBA34()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_24EAEACA0(*(v2 + 16), 0);
    v22 = sub_24EAEAC98();
    swift_bridgeObjectRetain_n();

    sub_24E6586B4(*&v25[0]);
    if (v22 != v3)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  *&v25[0] = v4;

  sub_24EEDB988(v25, v1);

  v5 = *&v25[0];
  if ((*&v25[0] & 0x8000000000000000) == 0 && (*&v25[0] & 0x4000000000000000) == 0)
  {
    v6 = *(*&v25[0] + 16);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_18:

    v8 = MEMORY[0x277D84F90];
LABEL_19:
    *(v1 + 56) = v8;

    sub_24EED8A04();
    return;
  }

  v20 = *&v25[0];
  v6 = sub_24F92C738();
  v5 = v20;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_8:
  v4 = v5;
  v24 = MEMORY[0x277D84F90];
  sub_24F457B3C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v24;
    v9 = v4;
    v21 = v1;
    v23 = v4 & 0xC000000000000001;
    v10 = v4;
    do
    {
      if (v23)
      {
        v11 = MEMORY[0x253052270](v7, v9);
      }

      else
      {
        v11 = *(v9 + 8 * v7 + 32);
      }

      v12 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);

      v14(v25, ObjectType, v12);

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24F457B3C((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v24 + 16) = v16 + 1;
      v17 = v24 + 40 * v16;
      v18 = v25[0];
      v19 = v25[1];
      *(v17 + 64) = v26;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      v9 = v10;
    }

    while (v6 != v7);

    v1 = v21;
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);

  __break(1u);
}

uint64_t GuidedSearchToken.__allocating_init(id:value:isSelected:leadingIconSymbolName:displayName:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  LODWORD(v14) = a4;
  v34 = a2;
  v35 = a3;
  v33 = a10;
  v36 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_24E60169C(a1, &v39, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v40 + 1))
  {
    v21 = v40;
    *(v20 + 80) = v39;
    *(v20 + 96) = v21;
    *(v20 + 112) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v31 = v14;
    v14 = a6;
    v23 = a8;
    v24 = v22;
    v32 = a5;
    v25 = a7;
    v27 = v26;
    (*(v17 + 8))(v19, v16);
    v37 = v24;
    v38 = v27;
    a8 = v23;
    a6 = v14;
    LOBYTE(v14) = v31;
    a7 = v25;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v33, v20 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
  v28 = v35;
  *(v20 + 16) = v34;
  *(v20 + 24) = v28;
  *(v20 + 32) = v14 & 1;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 64) = a8;
  *(v20 + 72) = v36;
  return v20;
}

uint64_t GuidedSearchToken.init(id:value:isSelected:leadingIconSymbolName:displayName:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  LODWORD(v16) = a4;
  v35 = a2;
  v36 = a3;
  v34 = a10;
  v37 = a9;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v40, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v32 = v16;
    v16 = a6;
    v23 = a8;
    v24 = v22;
    v33 = a5;
    v25 = a7;
    v27 = v26;
    (*(v19 + 8))(v21, v18);
    v38 = v24;
    v39 = v27;
    a8 = v23;
    a6 = v16;
    LOBYTE(v16) = v32;
    a7 = v25;
    a5 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v28 = v44;
  *(v11 + 80) = v43;
  *(v11 + 96) = v28;
  *(v11 + 112) = v45;
  sub_24E65E0D4(v34, v11 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
  v29 = v36;
  *(v11 + 16) = v35;
  *(v11 + 24) = v29;
  *(v11 + 32) = v16 & 1;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  *(v11 + 72) = v37;
  return v11;
}

uint64_t GuidedSearchToken.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  MEMORY[0x28223BE20](v3);
  v81 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v72 - v7;
  v8 = sub_24F91F6B8();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v72 - v14;
  MEMORY[0x28223BE20](v15);
  v86 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  v29 = a1;
  sub_24F928398();
  v80 = sub_24F928348();
  v31 = v30;
  v34 = *(v11 + 8);
  v32 = v11 + 8;
  v33 = v34;
  v34(v28, v10);
  if (!v31)
  {
    v42 = sub_24F92AC38();
    sub_24EEDD3E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v43 = 0x65756C6176;
    v44 = v90;
    v43[1] = 0xE500000000000000;
    v43[2] = v44;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
LABEL_7:
    swift_willThrow();
    (*(v92 + 8))(v99, v91);
    v33(v29, v10);
    return v25;
  }

  v89 = v31;
  sub_24F928398();
  v77 = sub_24F928348();
  v36 = v35;
  v33(v25, v10);
  if (!v36)
  {

    v45 = sub_24F92AC38();
    sub_24EEDD3E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v46 = 0x4E79616C70736964;
    v46[1] = 0xEB00000000656D61;
    v46[2] = v90;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22530], v45);
    goto LABEL_7;
  }

  v78 = v36;
  v25 = 0x7463656C65537369;
  sub_24F928398();
  v74 = sub_24F928278();
  v37 = v74;
  v33(v22, v10);
  v38 = v33;
  v39 = v29;
  if (v37 == 2)
  {

    v40 = sub_24F92AC38();
    sub_24EEDD3E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v41 = 0x7463656C65537369;
    v41[1] = 0xEA00000000006465;
    v41[2] = v90;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v92 + 8))(v99, v91);
    v38(v29, v10);
  }

  else
  {
    v75 = v38;
    v76 = v32;
    sub_24F928398();
    v48 = sub_24F928348();
    if (v49)
    {
      *&v95 = v48;
      *(&v95 + 1) = v49;
    }

    else
    {
      v50 = v83;
      sub_24F91F6A8();
      v51 = sub_24F91F668();
      v53 = v52;
      (*(v84 + 8))(v50, v85);
      *&v95 = v51;
      *(&v95 + 1) = v53;
    }

    sub_24F92C7F8();
    v54 = v75;
    v75(v19, v10);
    v55 = v86;
    sub_24F928398();
    v72 = sub_24F928348();
    v73 = v56;
    v54(v55, v10);
    type metadata accessor for Action(0);
    v57 = v87;
    sub_24F928398();
    v25 = v39;
    v58 = v99;
    v59 = v88;
    v60 = static Action.makeInstance(byDeserializing:using:)(v57, v99);
    if (v59)
    {

      (*(v92 + 8))(v58, v91);
      v54(v25, v10);
      v54(v57, v10);
      sub_24E601704(v98, &qword_27F235830, &qword_24F93B8C0);
    }

    else
    {
      v86 = v60;
      v87 = v10;
      v54(v57, v10);
      sub_24F929608();
      v88 = v25;
      sub_24F928398();
      v61 = v91;
      (*(v92 + 16))(v81, v58, v91);
      v62 = v82;
      sub_24F929548();
      v25 = swift_allocObject();
      sub_24E60169C(v98, &v95, &qword_27F235830, &qword_24F93B8C0);
      if (*(&v96 + 1))
      {
        v63 = v96;
        *(v25 + 80) = v95;
        *(v25 + 96) = v63;
        *(v25 + 112) = v97;
      }

      else
      {
        v64 = v83;
        sub_24F91F6A8();
        v65 = sub_24F91F668();
        v67 = v66;
        (*(v84 + 8))(v64, v85);
        v93 = v65;
        v94 = v67;
        sub_24F92C7F8();
        sub_24E601704(&v95, &qword_27F235830, &qword_24F93B8C0);
      }

      v68 = v73;
      v69 = v72;
      (*(v92 + 8))(v99, v61);
      v75(v88, v87);
      sub_24E601704(v98, &qword_27F235830, &qword_24F93B8C0);
      sub_24E65E0D4(v62, v25 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
      v70 = v89;
      *(v25 + 16) = v80;
      *(v25 + 24) = v70;
      *(v25 + 32) = v74 & 1;
      *(v25 + 40) = v69;
      *(v25 + 48) = v68;
      v71 = v78;
      *(v25 + 56) = v77;
      *(v25 + 64) = v71;
      *(v25 + 72) = v86;
    }
  }

  return v25;
}

uint64_t GuidedSearchToken.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GuidedSearchToken.leadingIconSymbolName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GuidedSearchToken.displayName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t GuidedSearchToken.segue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 72);
  a1[3] = type metadata accessor for Action(0);
  a1[4] = sub_24EEDD3E4(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *a1 = v3;
}

uint64_t GuidedSearchToken.withSelection(_:)(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_24F91F6B8();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_24E65864C((v2 + 10), v33);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[6];
  v26 = v2[5];
  v12 = v2[7];
  v13 = v2[8];
  v24 = v9;
  v25 = v12;
  v14 = v2[9];
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics, v8, &qword_27F213E68, &unk_24F93BC80);
  v15 = swift_allocObject();
  sub_24E60169C(v33, &v30, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v31 + 1))
  {
    v16 = v31;
    *(v15 + 80) = v30;
    *(v15 + 96) = v16;
    *(v15 + 112) = v32;
  }

  else
  {

    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v22 + 8))(v5, v23);
    v28 = v17;
    v29 = v19;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v8, v15 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
  *(v15 + 16) = v24;
  *(v15 + 24) = v10;
  *(v15 + 32) = v27 & 1;
  v20 = v25;
  *(v15 + 40) = v26;
  *(v15 + 48) = v11;
  *(v15 + 56) = v20;
  *(v15 + 64) = v13;
  *(v15 + 72) = v14;
  return v15;
}

uint64_t GuidedSearchToken.deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t GuidedSearchToken.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EEDD0C4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  a1[3] = type metadata accessor for Action(0);
  a1[4] = sub_24EEDD3E4(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  *a1 = v3;
}

uint64_t sub_24EEDD148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GuidedSearchToken.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t GuidedSearchToken.debugDescription.getter()
{
  v4 = *(v0 + 16);

  MEMORY[0x253050C20](8250, 0xE200000000000000);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v1, v2);

  return v4;
}

uint64_t sub_24EEDD244()
{
  v1 = *v0;
  v5 = *(*v0 + 16);

  MEMORY[0x253050C20](8250, 0xE200000000000000);
  if (*(v1 + 32))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v2, v3);

  return v5;
}

BOOL _s12GameStoreKit17GuidedSearchTokenC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24F92CE08() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (*(a1 + 40) != *(a2 + 40) || v6 != v7) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 72) == *(a2 + 72);
}

uint64_t sub_24EEDD3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GuidedSearchToken(uint64_t a1)
{
  result = qword_27F233148;
  if (!qword_27F233148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEDD480(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 ShareSheetProductMetadata.__allocating_init(adamId:storeFrontIdentifier:name:subtitle:genreName:icon:screenshots:videos:isMessagesOnlyApp:messagesAppIcon:notesMetadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t arg28, uint64_t a15)
{
  v21 = swift_allocObject();
  v22 = a1[1];
  *(v21 + 16) = *a1;
  *(v21 + 24) = v22;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  *(v21 + 48) = a4;
  *(v21 + 56) = a5;
  *(v21 + 64) = a6;
  *(v21 + 72) = a7;
  *(v21 + 80) = a8;
  result = a10;
  *(v21 + 88) = a10;
  *(v21 + 104) = a12;
  *(v21 + 112) = a13;
  *(v21 + 120) = a14;
  *(v21 + 128) = arg28;
  *(v21 + 136) = a15;
  return result;
}

double ShareSheetProductMetadata.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t ShareSheetProductMetadata.storeFrontIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetProductMetadata.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ShareSheetProductMetadata.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ShareSheetProductMetadata.genreName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ShareSheetProductMetadata.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetProductMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

void (**ShareSheetProductMetadata.init(deserializing:using:)(uint64_t a1, uint64_t a2))(void)
{
  v3 = v2;
  v89 = a2;
  v87 = v3;
  v85 = *v3;
  v88 = sub_24F9285B8();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v81 = &v74[-v7];
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v80 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v84 = &v74[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v74[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v74[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v74[-v20];
  v22 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v26 = v28;
  v28(v21, v8);
  if (!v25)
  {
    v36 = 0x64496D616461;
    v38 = v22;
    v39 = v86;
    v37 = v87;
    v40 = v26;
    v41 = 0xE600000000000000;
LABEL_8:
    v42 = sub_24F92AC38();
    sub_24EEDE1EC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v43 = v36;
    v43[1] = v41;
    v43[2] = v85;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v39 + 8))(v89, v88);
    v40(v38, v8);
    goto LABEL_9;
  }

  v78 = v23;
  sub_24F928398();
  v29 = sub_24F928348();
  v31 = v30;
  v26(v18, v8);
  if (!v31)
  {
    v35 = v26;
    v79 = 0xE400000000000000;
    v36 = 1701667182;
    v38 = v22;
    v37 = v87;
    goto LABEL_7;
  }

  v76 = v29;
  v79 = 0x800000024FA62000;
  sub_24F928398();
  v32 = sub_24F928278();
  v26(v15, v8);
  v33 = v8;
  v34 = v27;
  if (v32 == 2)
  {
    v35 = v26;
    v36 = 0xD000000000000011;
    v8 = v33;

    v37 = v87;
    v38 = v22;
LABEL_7:

    v39 = v86;
    v41 = v79;
    v40 = v35;
    goto LABEL_8;
  }

  v75 = v32;
  v37 = v87;
  v87[2] = v78;
  v37[3] = v25;
  v45 = v22;
  v46 = v33;
  v47 = v84;
  sub_24F928398();
  v48 = sub_24F928348();
  v50 = v49;
  v26(v47, v46);
  v37[4] = v48;
  v37[5] = v50;
  v37[6] = v76;
  v37[7] = v31;
  v77 = v45;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v26(v47, v46);
  v37[8] = v51;
  v37[9] = v53;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v55;
  v78 = v46;
  v79 = v34;
  v26(v47, v46);
  v37[10] = v54;
  v37[11] = v56;
  v57 = type metadata accessor for Artwork(0);
  v58 = v80;
  sub_24F928398();
  v76 = v26;
  v59 = v86;
  v60 = v81;
  v61 = v88;
  v62 = v89;
  v85 = *(v86 + 16);
  v85(v81);
  v81 = v57;
  v63 = v82;
  v64 = Artwork.__allocating_init(deserializing:using:)(v58, v60);
  if (!v63)
  {
    v37[12] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273D0, &qword_24F97E370);
    sub_24F928398();
    v65 = v83;
    v66 = v62;
    v67 = v88;
    (v85)(v83, v66, v88);
    sub_24EAC2CBC();
    sub_24F929548();
    v37[13] = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233158, &qword_24F9AC6E8);
    sub_24F928398();
    v68 = v65;
    v69 = v89;
    v70 = v85;
    (v85)(v68, v89, v67);
    sub_24EEDE138();
    sub_24F929548();
    v37[14] = v90;
    *(v37 + 120) = v75 & 1;
    sub_24F928398();
    v71 = v69;
    v72 = v88;
    v70(v83, v71, v88);
    sub_24EEDE1EC(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v37[16] = v90;
    type metadata accessor for ShareSheetNotesMetadata(0);
    sub_24F928398();
    v73 = v89;
    (v85)(v83, v89, v72);
    sub_24EEDE1EC(&qword_27F233168, type metadata accessor for ShareSheetNotesMetadata, &protocol conformance descriptor for ShareSheetNotesMetadata);
    sub_24F929548();
    (*(v59 + 8))(v73, v72);
    (v76)(v77, v78);
    v37[17] = v90;
    return v37;
  }

  (*(v59 + 8))(v62, v61);
  (v76)(v77, v78);

LABEL_9:
  type metadata accessor for ShareSheetProductMetadata();
  swift_deallocPartialClassInstance();
  return v37;
}

uint64_t ShareSheetProductMetadata.init(adamId:storeFrontIdentifier:name:subtitle:genreName:icon:screenshots:videos:isMessagesOnlyApp:messagesAppIcon:notesMetadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v15 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 24) = v15;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  *(v14 + 64) = a6;
  *(v14 + 72) = a7;
  *(v14 + 80) = a8;
  *(v14 + 88) = a9;
  *(v14 + 104) = a10;
  *(v14 + 112) = a11;
  *(v14 + 120) = a12;
  *(v14 + 128) = a13;
  *(v14 + 136) = a14;
  return v14;
}

unint64_t sub_24EEDE138()
{
  result = qword_27F233160;
  if (!qword_27F233160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233158, &qword_24F9AC6E8);
    sub_24EEDE1EC(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233160);
  }

  return result;
}

uint64_t sub_24EEDE1EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ShareSheetProductMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetProductMetadata.__deallocating_deinit()
{
  ShareSheetProductMetadata.deinit();

  return swift_deallocClassInstance();
}

void (**sub_24EEDE2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(void)
{
  type metadata accessor for ShareSheetProductMetadata();
  v7 = swift_allocObject();
  result = ShareSheetProductMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_24EEDE3B4(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v4);

  return MaxY;
}

CGFloat UIView.firstBaselineFromTop.getter()
{
  [v0 frame];

  return CGRectGetMaxY(*&v1);
}

double sub_24EEDE440(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v6);
  [v1 lastBaselineFromBottom];
  v4 = v3;

  return MaxY - v4;
}

double UIView.lastBaselineMaxY.getter()
{
  [v0 frame];
  MaxY = CGRectGetMaxY(v4);
  [v0 lastBaselineFromBottom];
  return MaxY - v2;
}

double sub_24EEDE51C(void *a1)
{
  v1 = a1;
  v2 = UIButton.lastBaselineFromBottom.getter();

  return v2;
}

double UIButton.lastBaselineFromBottom.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 contentRectForBounds_];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  Height = CGRectGetHeight(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  MaxY = CGRectGetMaxY(v29);
  v19 = [v0 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 _baselineOffsetFromBottom];
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = vabdd_f64(Height, MaxY);
  [v0 contentEdgeInsets];
  v25 = v24;
  [v0 titleEdgeInsets];
  return v23 + v22 + v25 + v26;
}

double sub_24EEDE674(void *a1)
{
  v1 = a1;
  v2 = UIImageView.lastBaselineFromBottom.getter();

  return v2;
}

double UIImageView.lastBaselineFromBottom.getter()
{
  v1 = [v0 image];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v0 preferredSymbolConfiguration];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 traitCollection];
      v7 = [v5 configurationWithTraitCollection_];

      v8 = [v3 imageByApplyingSymbolConfiguration_];
      if (!v8)
      {

        return v2;
      }

      v9 = v8;
      v10 = sub_24F92C3C8();
      v12 = v11;

      if (v12)
      {
        return v2;
      }

      return *&v10;
    }

    v10 = sub_24F92C3C8();
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return *&v10;
    }
  }

  return v2;
}

uint64_t sub_24EEDE7E0()
{
  sub_24E68FF30();

  return sub_24F924868();
}

uint64_t sub_24EEDE870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233170, &unk_24F9AC810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v19 = *(v7 + 16);
  v48 = a1;
  v19(&v44 - v17, a1, v6, v16);
  v47 = v19;
  (v19)(v14, v18, v6);
  v20 = *MEMORY[0x277CDF9A8];
  v46 = *(v7 + 104);
  v46(v5, v20, v6);
  v51 = sub_24EEDEF70(&qword_27F22DF90, MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v50 = sub_24EEDEF70(&qword_27F233178, MEMORY[0x277CDFA38]);
  v22 = sub_24F92AF98();
  sub_24E601704(v5, &qword_27F233170, &unk_24F9AC810);
  v49 = *(v7 + 8);
  v49(v14, v6);
  v23 = MEMORY[0x277CDF988];
  if (v22)
  {
    v24 = 0x405B800000000000;
    v25 = v11;
LABEL_4:
    v49(v18, v6);
    goto LABEL_14;
  }

  v26 = (*(v7 + 88))(v18, v6);
  if (v26 == *MEMORY[0x277CDFA00])
  {
    v24 = 0x4050800000000000;
    v25 = v11;
  }

  else
  {
    v25 = v11;
    if (v26 == *MEMORY[0x277CDFA10])
    {
      v27 = 0x4051800000000000;
    }

    else if (v26 == *v23)
    {
      v27 = 0x4056800000000000;
    }

    else
    {
      if (v26 != *MEMORY[0x277CDF998])
      {
        v24 = 0x4050000000000000;
        goto LABEL_4;
      }

      v27 = 0x4059000000000000;
    }

    v24 = v27;
  }

LABEL_14:
  v47(v25, v48, v6);
  v28 = *v23;
  v29 = v46;
  v46(v5, v28, v6);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = sub_24F92AF98();
  sub_24E601704(v5, &qword_27F233170, &unk_24F9AC810);
  if (v30)
  {
    v49(v25, v6);
    v31 = 16.0;
    v32 = v45;
  }

  else
  {
    v29(v5, *MEMORY[0x277CDF9F0], v6);
    result = sub_24F92AFF8();
    v32 = v45;
    if ((result & 1) == 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v33 = sub_24F92AF98();
    sub_24E601704(v5, &qword_27F233170, &unk_24F9AC810);
    v49(v11, v6);
    if (v33)
    {
      v31 = 14.0;
    }

    else
    {
      v31 = 10.0;
    }
  }

  v47(v32, v48, v6);
  v29(v5, v28, v6);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = sub_24F92AF98();
  sub_24E601704(v5, &qword_27F233170, &unk_24F9AC810);
  if (v34)
  {
    v49(v32, v6);
    sub_24F925A18();
    v35 = v44;
LABEL_28:
    v37 = sub_24F9258E8();

    v38 = type metadata accessor for OfferButtonDesign.Metrics(0);
    v39 = v38[9];
    v40 = sub_24F91EFA8();
    (*(*(v40 - 8) + 56))(v35 + v39, 1, 1, v40);
    v41 = v38[13];
    v42 = *MEMORY[0x277CE1058];
    v43 = sub_24F926E78();
    result = (*(*(v43 - 8) + 104))(v35 + v41, v42, v43);
    *v35 = 0x403C000000000000;
    *(v35 + 8) = v24;
    *(v35 + 16) = 0x406E000000000000;
    *(v35 + 24) = v31;
    *(v35 + 32) = v37;
    *(v35 + v38[10]) = 1;
    *(v35 + v38[11]) = 0x3FEB333333333333;
    *(v35 + v38[12]) = 0x3FF2AAAAAAAAAAABLL;
    return result;
  }

  v29(v5, *MEMORY[0x277CDF9F0], v6);
  result = sub_24F92AFF8();
  if (result)
  {
    v36 = sub_24F92AF98();
    sub_24E601704(v5, &qword_27F233170, &unk_24F9AC810);
    v49(v32, v6);
    v35 = v44;
    if (v36)
    {
      sub_24F925A08();
    }

    else
    {
      sub_24F925A18();
    }

    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_24EEDEF70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24F923E98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EEDEFFC(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OfferButtonDesign(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13 = *(v11 + 20);
  (*(v8 + 32))(&v12[v13], v10, v7);
  result = (*(v8 + 56))(&v12[v13], 0, 1, v7);
  *v12 = a4;
  *(v12 + 1) = 0;
  return result;
}

uint64_t sub_24EEDF144@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v67 = a2;
  v3 = sub_24F926E78();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180, &qword_24F9FDB90);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = v58 - v10;
  MEMORY[0x28223BE20](v11);
  v70 = v58 - v12;
  MEMORY[0x28223BE20](v13);
  v62 = v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v58 - v16;
  v18 = sub_24F923E98();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *MEMORY[0x277CDFA10];
  v24 = *(v19 + 104);
  v24(v22, v23, v18, v20);
  sub_24EEDEF70(&qword_27F233178, MEMORY[0x277CDFA38]);
  v66 = a1;
  LOBYTE(a1) = sub_24F92AF78();
  v25 = *(v19 + 8);
  v25(v22, v18);
  if (a1)
  {
    v62 = v17;
    v26 = type metadata accessor for OfferButtonDesign.Context(0);
    v27 = *(v66 + *(v26 + 24));
    if (v27 < 1)
    {
      LODWORD(v63) = 0;
    }

    else
    {
      LODWORD(v63) = *(v66 + *(v26 + 28));
    }

    v42 = sub_24F91EFA8();
    v43 = *(v42 - 8);
    v59 = *(v43 + 56);
    v60 = v42;
    v58[1] = v43 + 56;
    v59(v70, 1, 1);
    (v24)(v22, v23, v18);
    v44 = sub_24F92AF78();
    v25(v22, v18);
    if (v44)
    {
      v45 = v27;
      v46 = v27 < 14;
      v35 = v68;
      v34 = v69;
      v31 = v64;
      v36 = v65;
      v47 = v62;
      if (v46)
      {
        v53 = v63;
        if ((v45 > 9) | v63 & 1)
        {
          sub_24F925A18();
          v29 = sub_24F9258E8();

          v38 = 0;
          v41 = 1;
        }

        else
        {
          sub_24F9259D8();
          v29 = sub_24F9258E8();

          v41 = 1;
          v38 = 0xBFE5555555555555;
        }
      }

      else
      {
        sub_24F925918();
        v50 = sub_24F925908();
        (*(*(v50 - 8) + 56))(v47, 1, 1, v50);
        v29 = sub_24F925968();
        sub_24E601704(v47, &qword_27F214698, &unk_24F95F810);
        v51 = v61;
        sub_24F91EF98();
        v52 = v70;
        sub_24E601704(v70, &qword_27F233180, &qword_24F9FDB90);
        (v59)(v51, 0, 1, v60);
        sub_24EEDF918(v51, v52);
        v38 = 0;
        v41 = 2;
        v53 = v63;
      }
    }

    else
    {
      sub_24F925918();
      v48 = sub_24F925908();
      v41 = 1;
      v49 = v62;
      (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
      v29 = sub_24F925968();
      sub_24E601704(v49, &qword_27F214698, &unk_24F95F810);
      v38 = 0;
      v35 = v68;
      v34 = v69;
      v31 = v64;
      v36 = v65;
      v53 = v63;
    }

    sub_24EEDF918(v70, v31);
    v54 = MEMORY[0x277CE1058];
    if (!v53)
    {
      v54 = MEMORY[0x277CE1048];
    }

    (*(v35 + 104))(v36, *v54, v34);
    v37 = xmmword_24F9AC800;
    v39 = 1.0;
    v40 = 10.0;
  }

  else
  {
    sub_24F925918();
    v28 = sub_24F925908();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = sub_24F925968();
    sub_24E601704(v17, &qword_27F214698, &unk_24F95F810);
    v30 = sub_24F91EFA8();
    v31 = v62;
    (*(*(v30 - 8) + 56))(v62, 1, 1, v30);
    v32 = type metadata accessor for OfferButtonDesign.Context(0);
    if (*(v66 + *(v32 + 24)) >= 1 && (*(v66 + *(v32 + 28)) & 1) != 0)
    {
      v33 = MEMORY[0x277CE1058];
    }

    else
    {
      v33 = MEMORY[0x277CE1048];
    }

    v35 = v68;
    v34 = v69;
    v36 = v63;
    (*(v68 + 104))(v63, *v33, v69);
    v37 = xmmword_24F9AC7F0;
    v38 = 0;
    v39 = 0.8125;
    v40 = 18.0;
    v41 = 1;
  }

  v55 = v67;
  *v67 = v37;
  *(v55 + 2) = 0x406E000000000000;
  *(v55 + 3) = v40;
  *(v55 + 4) = v29;
  v56 = type metadata accessor for OfferButtonDesign.Metrics(0);
  sub_24EEDF918(v31, v55 + v56[9]);
  *(v55 + v56[10]) = v41;
  *(v55 + v56[11]) = v39;
  *(v55 + v56[12]) = v38;
  return (*(v35 + 32))(v55 + v56[13], v36, v34);
}

uint64_t sub_24EEDF918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180, &qword_24F9FDB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEDF9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EEDFA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F923E98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_24EEDFB44(uint64_t a1)
{
  sub_24F923E98();
  if (v1 <= 0x3F)
  {
    sub_24EEDFBE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EEDFBE0()
{
  if (!qword_27F233198)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F233198);
    }
  }
}

uint64_t sub_24EEDFC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180, &qword_24F9FDB90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F926E78();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EEDFD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180, &qword_24F9FDB90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F926E78();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EEDFEB8(uint64_t a1)
{
  sub_24EEDFF6C(319);
  if (v1 <= 0x3F)
  {
    sub_24F926E78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EEDFF6C(uint64_t a1)
{
  if (!qword_27F2331B0)
  {
    sub_24F91EFA8();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2331B0);
    }
  }
}

uint64_t sub_24EEDFFD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OfferButtonDesign.Size(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EEE00B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OfferButtonDesign.Size(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24EEE015C(uint64_t a1)
{
  result = sub_24E6C5550();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OfferButtonDesign.Size(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EEE01F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9234F8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EEE0274(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24F9234F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24EEE02F4(uint64_t a1)
{
  v1 = sub_24F9234F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24EEE034C()
{
  v0 = type metadata accessor for OfferButtonDesign(0);
  __swift_allocate_value_buffer(v0, qword_27F39CCD8);
  v1 = __swift_project_value_buffer(v0, qword_27F39CCD8);
  if (qword_27F2107F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F39CCA8);

  return sub_24EEE0464(v2, v1);
}

uint64_t sub_24EEE03E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210800 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OfferButtonDesign(0);
  v3 = __swift_project_value_buffer(v2, qword_27F39CCD8);

  return sub_24EEE0464(v3, a1);
}

uint64_t sub_24EEE0464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonDesign(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TodayCardMediaList.init(deserializing:using:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v85 = a2;
  v77 = v3;
  v68 = *v3;
  v78 = sub_24F9285B8();
  v82 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = v65 - v7;
  MEMORY[0x28223BE20](v8);
  v72 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v65 - v13;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v70 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = v65 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v65 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v65 - v24;
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v67 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v79 = v65 - v30;
  v86 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v71 = v16;
  v32 = *(v16 + 8);
  v31 = v16 + 8;
  v83 = v32;
  v84 = v15;
  v32(v25, v15);
  v75 = v27;
  v33 = *(v27 + 48);
  v80 = v26;
  if (v33(v14, 1, v26) == 1)
  {
    sub_24E601704(v14, &qword_27F2213B0, &qword_24F965EC0);
    v34 = sub_24F92AC38();
    sub_24EEE0F74(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v35 = 0x7370756B636F6CLL;
    v35[1] = 0xE700000000000000;
    v35[2] = v68;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v82 + 8))(v85, v78);
    v83(v86, v84);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v75;
    v37 = *(v75 + 32);
    v68 = v31;
    v37(v79, v14, v80);
    sub_24F929608();
    v38 = v78;
    sub_24F928398();
    v39 = v82 + 16;
    v40 = *(v82 + 16);
    v41 = v72;
    v42 = v85;
    v40(v72, v85, v38);
    sub_24F929548();
    v43 = v81;
    v66 = v40;
    v40(v81, v42, v38);
    (*(v36 + 16))(v67, v79, v80);
    v44 = v43;
    v40(v41, v43, v38);
    type metadata accessor for Lockup(0);
    sub_24EEE0F74(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    v45 = sub_24F92B6A8();
    v46 = v77;
    *(v77 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups) = v45;
    v47 = v86;
    sub_24F928398();
    v48 = sub_24F928348();
    v50 = v49;
    v83(v22, v84);
    v51 = (v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);
    *v51 = v48;
    v51[1] = v50;
    sub_24F928398();
    v52 = v44;
    v53 = v44;
    v54 = v78;
    v55 = v66;
    v66(v41, v53, v78);
    type metadata accessor for Artwork(0);
    sub_24EEE0F74(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks) = sub_24F92B698();
    sub_24F928398();
    v55(v41, v52, v54);
    v65[1] = v39;
    type metadata accessor for Video(0);
    sub_24EEE0F74(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos) = sub_24F92B698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980, &qword_24F974D30);
    sub_24F928398();
    v55(v41, v81, v54);
    sub_24E9E115C();
    sub_24F929548();
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = v87;
    v56 = v69;
    sub_24F928398();
    LOBYTE(v48) = sub_24F928278();
    v57 = v84;
    v83(v56, v84);
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_isMediaDark) = v48 & 1;
    v58 = v70;
    (*(v71 + 16))(v70, v47, v57);
    v59 = v73;
    v55(v73, v85, v54);
    v60 = v74;
    v61 = TodayCardMedia.init(deserializing:using:)(v58, v59);
    if (v60)
    {
      v26 = v82 + 8;
      v62 = *(v82 + 8);
      v62(v85, v54);
      v83(v86, v84);
      v62(v81, v54);
      sub_24E601704(v76, &qword_27F213E68, &unk_24F93BC80);
      (*(v75 + 8))(v79, v80);
    }

    else
    {
      v26 = v61;
      v64 = *(v82 + 8);
      v64(v85, v54);
      v83(v86, v84);
      v64(v81, v54);
      sub_24E601704(v76, &qword_27F213E68, &unk_24F93BC80);
      (*(v75 + 8))(v79, v80);
    }
  }

  return v26;
}

uint64_t sub_24EEE0F74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TodayCardMediaList.__allocating_init(lockups:marketingText:artworks:videos:artworkLayoutsWithMetrics:isMediaDark:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = sub_24F91F6B8();
  v27 = *(v16 - 8);
  v28 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups) = a1;
  v20 = (v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);
  *v20 = a2;
  v20[1] = a3;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks) = a4;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos) = a5;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = a6;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_isMediaDark) = a7;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_24E60169C(a8, v19 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v34, &v31, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v32 + 1))
  {
    v21 = v32;
    *(v19 + 32) = v31;
    *(v19 + 48) = v21;
    *(v19 + 64) = v33;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v27 + 8))(v18, v28);
    v29 = v22;
    v30 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v34, &qword_27F235830, &qword_24F93B8C0);
  *(v19 + 16) = 2;
  *(v19 + 24) = 1;
  return v19;
}

uint64_t TodayCardMediaList.init(lockups:marketingText:artworks:videos:artworkLayoutsWithMetrics:isMediaDark:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v9 = v8;
  v31 = a7;
  v17 = sub_24F91F6B8();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v29 - v21;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups) = a1;
  v23 = (v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);
  *v23 = a2;
  v23[1] = a3;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks) = a4;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos) = a5;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = a6;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_isMediaDark) = v31;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_24E60169C(a8, v22, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v40, &v34, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v29 + 8))(v19, v30);
    v32 = v24;
    v33 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v40, &qword_27F235830, &qword_24F93B8C0);
  v27 = v38;
  *(v9 + 32) = v37;
  *(v9 + 48) = v27;
  *(v9 + 64) = v39;
  sub_24E65E0D4(v22, v9 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v9 + 16) = 2;
  *(v9 + 24) = 1;
  return v9;
}

uint64_t TodayCardMediaList.marketingText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);

  return v1;
}

double TodayCardMediaList.artworks.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t TodayCardMediaList.artworks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL TodayCardMediaList.hasMedia.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (sub_24F92C738())
    {
      return 1;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos);
  if (v4 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

char *TodayCardMediaList.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24EEE1890()
{
}

uint64_t TodayCardMediaList.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaList.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

double sub_24EEE1AA4()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for TodayCardMediaList(uint64_t a1)
{
  result = qword_27F2331D8;
  if (!qword_27F2331D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.init(pageFacetsMetricsProvider:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = *(type metadata accessor for PageFacetsFieldsProvider(0) + 20);
  v6 = *MEMORY[0x277D22340];
  v7 = sub_24F92A2D8();
  (*(*(v7 - 8) + 104))(a3 + v5, v6, v7);
  *(a3 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for PageFacetsFieldsProvider(uint64_t a1)
{
  result = qword_27F2331F0;
  if (!qword_27F2331F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageFacetsFieldsProvider(0) + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageFacetsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v40 = (*(v4 + 8))(ObjectType, v4);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_24F929A18();
  v38 = a1;
  if (*(v6 + 16) && (v7 = sub_24E76D644(0x65446E6F69746361, 0xED0000736C696174), (v8 & 1) != 0))
  {
    sub_24E643A9C(*(v6 + 56) + 32 * v7, &v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    if (swift_dynamicCast())
    {
      v9 = *&v41[0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = sub_24E608448(MEMORY[0x277D84F90]);
LABEL_8:
  v10 = 0;
  v11 = v40 + 64;
  v12 = 1 << *(v40 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v40 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = v15;
  while (v14)
  {
    v17 = v10;
LABEL_18:
    v18 = __clz(__rbit64(v14)) | (v17 << 6);
    v19 = (*(v40 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    *&v41[0] = *(*(v40 + 56) + 8 * v18);
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E907170();
    v22 = sub_24F92AF68();
    v24 = v23;

    v43 = MEMORY[0x277D837D0];
    *&v42 = v22;
    *(&v42 + 1) = v24;
    sub_24E612B0C(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    v27 = sub_24E76D644(v21, v20);
    v28 = v9[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_30;
    }

    v31 = v26;
    if (v9[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E8AD8E4();
      }
    }

    else
    {
      sub_24E89873C(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_24E76D644(v21, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_32;
      }

      v27 = v32;
    }

    v14 &= v14 - 1;
    if (v31)
    {

      v9 = v44;
      v16 = (v44[7] + 32 * v27);
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_24E612B0C(v41, v16);
    }

    else
    {
      v9 = v44;
      v44[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v9[6] + 16 * v27);
      *v34 = v21;
      v34[1] = v20;
      sub_24E612B0C(v41, (v9[7] + 32 * v27));
      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_31;
      }

      v9[2] = v37;
    }

    v10 = v17;
    v15 = v39;
    v11 = v40 + 64;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
      *&v42 = v9;
      __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_24F929A28();
      return __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    v14 = *(v11 + 8 * v17);
    ++v10;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a1;
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0, &unk_24F9AC950);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for PageFacetsFieldsProvider(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929F48();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_24F929098();
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  v14 = *(v4 + 20);
  v15 = *MEMORY[0x277D22340];
  v16 = sub_24F92A2D8();
  (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
  *(v6 + 1) = v21;
  swift_unknownObjectWeakAssign();
  v24[3] = v4;
  v24[4] = sub_24EEE24E0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_24EEE2538(v6, boxed_opaque_existential_1);
  if (qword_27F2102E8 != -1)
  {
    swift_once();
  }

  v18 = sub_24F92A2C8();
  __swift_project_value_buffer(v18, qword_27F229D10);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_24ED44204();
  (*(v8 + 16))(v10, v13, v7);
  sub_24F929128();
  sub_24F929148();
  sub_24F929108();
  sub_24F9290A8();
  sub_24EEE259C(v6);
  return (*(v8 + 8))(v13, v7);
}

unint64_t sub_24EEE24E0()
{
  result = qword_27F2331E8;
  if (!qword_27F2331E8)
  {
    type metadata accessor for PageFacetsFieldsProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2331E8);
  }

  return result;
}

uint64_t sub_24EEE2538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsFieldsProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEE259C(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsFieldsProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEE2620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 20);

    return v8(v9, a2, v7);
  }
}

void *sub_24EEE26E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EEE2788(uint64_t a1)
{
  result = sub_24F92A2D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

GameStoreKit::LockupsIntent __swiftcall LockupsIntent.init(bundleIds:)(Swift::OpaquePointer bundleIds)
{
  strcpy(v1, "LockupsIntent");
  *(v1 + 14) = -4864;
  *(v1 + 16) = bundleIds;
  result.kind._countAndFlagsBits = bundleIds._rawValue;
  return result;
}

uint64_t LockupsIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall LockupsIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v5 = isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EEE296C()
{
  result = qword_27F233200;
  if (!qword_27F233200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233200);
  }

  return result;
}

unint64_t sub_24EEE29C4()
{
  result = qword_27F233208;
  if (!qword_27F233208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233208);
  }

  return result;
}

unint64_t sub_24EEE2A1C()
{
  result = qword_27F233210;
  if (!qword_27F233210)
  {
    type metadata accessor for LockupsResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233210);
  }

  return result;
}

GameStoreKit::InAppPurchaseTheme_optional __swiftcall InAppPurchaseTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InAppPurchaseTheme.rawValue.getter()
{
  v1 = 0x7265666E69;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x6867696C746F7073;
  }

  if (*v0)
  {
    v1 = 0x746867696CLL;
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

uint64_t sub_24EEE2BB4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEE2C6C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EEE2D10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EEE2DD0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265666E69;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (*v1 != 2)
  {
    v5 = 0x6867696C746F7073;
    v4 = 0xE900000000000074;
  }

  if (*v1)
  {
    v3 = 0x746867696CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t InAppPurchaseLockup.descriptionText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_descriptionText);

  return v1;
}

uint64_t InAppPurchaseLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v54 = a2;
  v49 = *v4;
  v50 = v3;
  v53 = sub_24F9285B8();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v42 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v24 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v47 = v14;
  v52 = *(v14 + 8);
  v52(v23, v13);
  v51 = v6;
  if (a1)
  {
    v25 = sub_24F92AC38();
    sub_24EEE3640(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 0x746E65726170;
    v27 = v49;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
  }

  else
  {
    sub_24F928398();
    v49 = *(v6 + 16);
    v49(v12, v54, v53);
    type metadata accessor for Lockup(0);
    v25 = swift_allocObject();
    v28 = v50;
    v29 = Lockup.init(deserializing:using:)(v20, v12);
    if (!v28)
    {
      *&v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_parent] = v29;
      sub_24F928398();
      v31 = sub_24F928348();
      v33 = v32;
      v52(v23, v13);
      v34 = &v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_descriptionText];
      *v34 = v31;
      v34[1] = v33;
      sub_24F928398();
      sub_24EEE35EC();
      sub_24F928208();
      v52(v23, v13);
      v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_theme] = v56;
      type metadata accessor for FlowAction(0);
      sub_24F928398();
      v49(v45, v54, v53);
      sub_24EEE3640(&qword_27F22C0E0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      sub_24F929548();
      *&v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_productAction] = v55;
      v35 = v44;
      v43 = v24;
      sub_24F928398();
      LOBYTE(v31) = sub_24F928278();
      v52(v35, v13);
      v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_isSubscription] = v31 & 1;
      v36 = v46;
      (*(v47 + 16))(v46, v24, v13);
      v37 = v48;
      v39 = v53;
      v38 = v54;
      v49(v48, v54, v53);
      v40 = Lockup.init(deserializing:using:)(v36, v37);
      v41 = v43;
      v25 = v40;
      (*(v51 + 8))(v38, v39);
      v52(v41, v13);
      return v25;
    }
  }

  (*(v51 + 8))(v54, v53);
  v52(v24, v13);
  type metadata accessor for InAppPurchaseLockup(0);
  swift_deallocPartialClassInstance();
  return v25;
}