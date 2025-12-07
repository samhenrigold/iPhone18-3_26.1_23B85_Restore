uint64_t sub_1D6FAD24C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D5B4BFC8(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v45 - v5;
  swift_beginAccess();
  v6 = v0[3];
  v53 = v0[2];
  v7 = v0[5];
  v69 = v0[4];
  swift_beginAccess();
  v9 = v0[6];
  v8 = v0[7];
  swift_beginAccess();
  v10 = v0[8];
  v68 = v7;

  if (v10)
  {

    v66 = sub_1D600DA28(v10);
  }

  else
  {
    v66 = 0;
  }

  v11 = v1[9];
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v71[0] = v1[9];

    sub_1D6C051DC(&v73);

    v11 = v73;
  }

  v65 = v11;
  v12 = v1[10];
  v56 = v2;
  v51 = v8;
  if (v12)
  {
    v63 = sub_1D600CADC(v12);
  }

  else
  {
    v63 = 0;
  }

  v61 = *(v1 + 88);
  v14 = v1[12];
  v13 = v1[13];
  v15 = *(v1 + 112);
  v16 = v1[15];
  v54 = *(v1 + 128);
  swift_beginAccess();
  v17 = v1[17];
  v78 = *(v1 + 224);
  v18 = *(v1 + 12);
  v75 = *(v1 + 11);
  v76 = v18;
  v77 = *(v1 + 13);
  v19 = *(v1 + 10);
  v73 = *(v1 + 9);
  v74 = v19;
  v64 = v78;
  v70 = v6;
  v67 = v9;
  v60 = v14;
  if (v78 == 254)
  {
    sub_1D5ED34B0(v14, v13, v15);
    sub_1D5D0AF9C(v16);

    v20 = v73;
    v46 = HIDWORD(v73);
    v21 = DWORD2(v73);
    v22 = *(&v74 + 1);
    v23 = v74;
    v49 = v75;
    v50 = v76;
    v52 = v77;
  }

  else
  {
    v52 = v77;
    v24 = *(&v75 + 1);
    v22 = *(&v74 + 1);
    v23 = v74;
    v21 = DWORD2(v73);
    v20 = v73;
    v50 = v76;
    v72[0] = v75;
    sub_1D6FAFAD4(&v73, v71, sub_1D615C3A4);
    sub_1D6FAFAD4(&v73, v71, sub_1D615C3A4);
    sub_1D5ED34B0(v14, v13, v15);
    sub_1D5D0AF9C(v16);

    sub_1D6E0CAE0(v71);

    sub_1D6FB09B8(&v73, sub_1D615C3A4);
    *&v25 = v71[0];
    *(&v25 + 1) = v24;
    v49 = v25;
  }

  v26 = v1[29];
  if ((~v26 & 0xF000000000000007) != 0)
  {
    v72[0] = v1[29];

    sub_1D6E0CAE0(v71);

    v26 = v71[0];
  }

  v62 = v17;
  v27 = *(v1 + 240);
  v29 = v1[31];
  v28 = v1[32];
  v59 = v13;
  v57 = v15;
  v55 = v16;
  v48 = v27;
  if (v29)
  {
    v30 = v51;
    if (v29 == 1)
    {
      v31 = v53;
      v32 = v58;
      v47 = 1;
      goto LABEL_22;
    }

    v31 = v53;
    sub_1D62B5D88(v29);

    v47 = sub_1D600BA14(v33);
  }

  else
  {
    v30 = v51;
    v31 = v53;

    v47 = 0;
  }

  v32 = v58;
  if (v28)
  {

    v35 = sub_1D600BA14(v34);

    sub_1D62B5D44(v29);
    v28 = v35;
  }

  else
  {
    sub_1D62B5D44(v29);
  }

LABEL_22:
  sub_1D6FADCB0(v1 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v32, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B4BFC8);
  v36 = swift_allocObject();
  *(v36 + 64) = 0;
  *(v36 + 136) = 0;
  swift_beginAccess();
  v38 = v69;
  v37 = v70;
  *(v36 + 16) = v31;
  *(v36 + 24) = v37;
  v39 = v68;
  *(v36 + 32) = v38;
  *(v36 + 40) = v39;
  swift_beginAccess();
  *(v36 + 48) = v67;
  *(v36 + 56) = v30;
  swift_beginAccess();
  *(v36 + 64) = v66;

  v40 = v63;
  *(v36 + 72) = v65;
  *(v36 + 80) = v40;
  *(v36 + 88) = v61;
  v41 = v59;
  *(v36 + 96) = v60;
  *(v36 + 104) = v41;
  *(v36 + 112) = v57;
  *(v36 + 120) = v55;
  *(v36 + 128) = v54;
  swift_beginAccess();
  *(v36 + 136) = v62;

  *(v36 + 144) = v20;
  *(v36 + 152) = v21;
  *(v36 + 156) = v46;
  *(v36 + 160) = v23;
  *(v36 + 168) = v22;
  v42 = v50;
  *(v36 + 176) = v49;
  *(v36 + 192) = v42;
  v43 = *(&v52 + 1);
  *(v36 + 208) = v52;
  *(v36 + 216) = v43;
  *(v36 + 224) = v64;
  *(v36 + 232) = v26;
  *(v36 + 240) = v48;
  *(v36 + 248) = v47;
  *(v36 + 256) = v28;
  sub_1D5FC55FC(v32, v36 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask);
  return v36;
}

double FormatImageNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatImageNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatImageNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatImageNodeStyle.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;

  return result;
}

uint64_t FormatImageNodeStyle.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatImageNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 112);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatImageNodeStyle.renderingMode.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5D0AF9C(v2);
}

double sub_1D6FADABC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;

  return result;
}

double FormatImageNodeStyle.transforms.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;

  return result;
}

uint64_t FormatImageNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v4 = *(v1 + 208);
  v10 = *(v1 + 192);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 224);
  v6 = *(v1 + 160);
  v9[0] = *(v1 + 144);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D6FAFAD4(v9, v8, sub_1D615C3A4);
}

uint64_t FormatImageNodeStyle.tintColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatImageNodeStyle.request.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 256);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B5D88(v2);
}

uint64_t sub_1D6FADCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t FormatImageNodeStyle.__allocating_init(identifier:class:selectors:alpha:adjustments:background:borders:contentMode:cornerRadius:renderingMode:resize:transforms:shadow:tintColor:ignoresSmartInvertColors:request:imageMask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char *a10, uint64_t *a11, uint64_t *a12, char *a13, uint64_t a14, uint64_t a15, uint64_t *a16, char a17, uint64_t *a18, uint64_t a19)
{
  v21 = swift_allocObject();
  v31 = *a6;
  v22 = *a10;
  v35 = *a11;
  v33 = *a8;
  v34 = a11[1];
  v23 = *(a11 + 16);
  v24 = *a12;
  v25 = *a13;
  v41 = *a16;
  v27 = *a18;
  v26 = a18[1];
  *(v21 + 64) = 0;
  *(v21 + 136) = 0;
  swift_beginAccess();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  swift_beginAccess();
  *(v21 + 48) = a5;
  *(v21 + 56) = v31;
  swift_beginAccess();
  *(v21 + 64) = a7;

  *(v21 + 72) = v33;
  *(v21 + 80) = a9;
  *(v21 + 88) = v22;
  *(v21 + 96) = v35;
  *(v21 + 104) = v34;
  *(v21 + 112) = v23;
  *(v21 + 120) = v24;
  *(v21 + 128) = v25;
  swift_beginAccess();
  *(v21 + 136) = a14;

  v28 = *(a15 + 48);
  *(v21 + 176) = *(a15 + 32);
  *(v21 + 192) = v28;
  *(v21 + 208) = *(a15 + 64);
  *(v21 + 224) = *(a15 + 80);
  v29 = *(a15 + 16);
  *(v21 + 144) = *a15;
  *(v21 + 160) = v29;
  *(v21 + 232) = v41;
  *(v21 + 240) = a17;
  *(v21 + 248) = v27;
  *(v21 + 256) = v26;
  sub_1D5FC55FC(a19, v21 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask);
  return v21;
}

uint64_t FormatImageNodeStyle.init(identifier:class:selectors:alpha:adjustments:background:borders:contentMode:cornerRadius:renderingMode:resize:transforms:shadow:tintColor:ignoresSmartInvertColors:request:imageMask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char *a10, uint64_t *a11, uint64_t *a12, char *a13, uint64_t a14, uint64_t a15, uint64_t *a16, char a17, uint64_t *a18, uint64_t a19)
{
  v24 = *a6;
  v25 = *a8;
  v34 = *a10;
  v32 = a11[1];
  v33 = *a11;
  v31 = *(a11 + 16);
  v30 = *a12;
  v29 = *a13;
  v39 = *a18;
  v37 = *a16;
  v38 = a18[1];
  *(v19 + 64) = 0;
  *(v19 + 136) = 0;
  swift_beginAccess();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  swift_beginAccess();
  *(v19 + 48) = a5;
  *(v19 + 56) = v24;
  swift_beginAccess();
  *(v19 + 64) = a7;

  *(v19 + 72) = v25;
  *(v19 + 80) = a9;
  *(v19 + 88) = v34;
  *(v19 + 96) = v33;
  *(v19 + 104) = v32;
  *(v19 + 112) = v31;
  *(v19 + 120) = v30;
  *(v19 + 128) = v29;
  swift_beginAccess();
  *(v19 + 136) = a14;

  v26 = *(a15 + 48);
  *(v19 + 176) = *(a15 + 32);
  *(v19 + 192) = v26;
  *(v19 + 208) = *(a15 + 64);
  *(v19 + 224) = *(a15 + 80);
  v27 = *(a15 + 16);
  *(v19 + 144) = *a15;
  *(v19 + 160) = v27;
  *(v19 + 232) = v37;
  *(v19 + 240) = a17;
  *(v19 + 248) = v39;
  *(v19 + 256) = v38;
  sub_1D5FC55FC(a19, v19 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask);
  return v19;
}

uint64_t FormatImageNodeStyle.deinit()
{

  sub_1D5C8500C(*(v0 + 72));

  sub_1D5ED348C(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1D5D0AFAC(*(v0 + 120));

  sub_1D600ECE4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  sub_1D5C84FF4(*(v0 + 232));
  sub_1D62B5D44(*(v0 + 248));
  sub_1D6FAE1E4(v0 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B4BFC8);
  return v0;
}

uint64_t sub_1D6FAE1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t FormatImageNodeStyle.__deallocating_deinit()
{
  FormatImageNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatImageNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatImageNodeStyle.Selector.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatImageNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatImageNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D6FAFAD4(v9, v8, sub_1D615C3A4);
}

uint64_t FormatImageNodeStyle.Selector.tintColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatImageNodeStyle.Selector.renderingMode.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = v2;
  return sub_1D5D0AF9C(v2);
}

uint64_t FormatImageNodeStyle.Selector.request.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B5D88(v2);
}

uint64_t sub_1D6FAE41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v58 = *(a1 + 48);
  v8 = *(a1 + 88);
  v9 = *(a1 + 120);
  v77[3] = *(a1 + 104);
  v77[4] = v9;
  v78 = *(a1 + 136);
  v77[1] = *(a1 + 72);
  v10 = *(v2 + 15);
  v79[3] = *(v2 + 13);
  v79[4] = v10;
  v79[1] = *(v2 + 9);
  v11 = *(a1 + 56);
  v12 = *(a1 + 144);
  v55 = *(a1 + 153);
  v56 = *(a1 + 152);
  v54 = *(a1 + 168);
  v60 = *(a1 + 176);
  v40 = *(a1 + 160);
  v41 = *(a1 + 184);
  v44 = *(a1 + 200);
  v42 = *(a1 + 192);
  v43 = *(a1 + 208);
  v53 = *v2;
  v57 = v2[1];
  v13 = v2[2];
  v61 = v2[3];
  v15 = v2[4];
  v14 = v2[5];
  v62 = *(v2 + 48);
  v80 = *(v2 + 136);
  v63 = v14;
  v64 = v2[18];
  v51 = *(v2 + 153);
  v52 = *(v2 + 152);
  v50 = *(v2 + 168);
  v16 = v2[23];
  v65 = v2[20];
  v66 = v2[22];
  v69 = v2[25];
  v67 = v2[24];
  v68 = v2[26];
  v17 = v13;
  v45 = v13;
  v77[2] = v8;
  v77[0] = v11;
  v79[2] = *(v2 + 11);
  v79[0] = *(v2 + 7);
  if ((~v13 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v5);
    v17 = v5;
  }

  v49 = v17;
  v18 = v61;
  if (!v61)
  {

    v18 = v4;
  }

  v48 = v18;
  v19 = v2 + 7;
  v20 = v15;
  v21 = v63;
  v22 = v62;
  if (v62 >= 0xFE)
  {
    v21 = v6;
    sub_1D5ED34B0(v7, v6, v58);
    v20 = v7;
    v22 = v58;
  }

  v46 = v21;
  v47 = v20;
  v59 = v15;
  if (v80 == 254)
  {
    v19 = v77;
    sub_1D6FAFAD4(v77, &v71, sub_1D615C3A4);
  }

  v23 = v19[2];
  v24 = v19[4];
  v74 = v19[3];
  v75 = v24;
  v76 = *(v19 + 80);
  v25 = v19[1];
  v26 = v64;
  v71 = *v19;
  v72 = v25;
  v73 = v23;
  if ((~v64 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v12);
    v26 = v12;
  }

  v27 = v22;
  v28 = v65;
  if (!v65)
  {
    v28 = v40;
  }

  v29 = v66;
  if (v66 == 3)
  {
    v29 = v60;
    sub_1D5D0AF9C(v60);
  }

  v30 = v16;
  if (!v16)
  {
    v30 = v41;
  }

  v31 = v67;
  if (!v67)
  {
    v31 = v42;
  }

  v32 = v68;
  v33 = v69;
  if (v69 == 1)
  {
    v32 = v43;
    v33 = v44;
    sub_1D62B5D88(v44);
  }

  *(a2 + 88) = v73;
  v34 = v75;
  *(a2 + 104) = v74;
  *(a2 + 120) = v34;
  v35 = v72;
  *(a2 + 56) = v71;
  v36 = v54;
  if (v50 != 9)
  {
    v36 = v50;
  }

  v37 = v55;
  if (v51 != 4)
  {
    v37 = v51;
  }

  v38 = v56;
  if (v52 != 2)
  {
    v38 = v52;
  }

  *a2 = v53;
  *(a2 + 8) = v57;
  *(a2 + 16) = v49;
  *(a2 + 24) = v48;
  *(a2 + 32) = v47;
  *(a2 + 40) = v46;
  *(a2 + 48) = v27;
  *(a2 + 136) = v76;
  *(a2 + 72) = v35;
  *(a2 + 144) = v26;
  *(a2 + 152) = v38;
  *(a2 + 153) = v37;
  *(a2 + 160) = v28;
  *(a2 + 168) = v36;
  *(a2 + 176) = v29;
  *(a2 + 184) = v30;
  *(a2 + 192) = v31;
  *(a2 + 200) = v33;
  *(a2 + 208) = v32;

  sub_1D5D04BD4(v45);

  sub_1D5ED34B0(v59, v63, v62);
  sub_1D6FAFAD4(v79, v70, sub_1D615C3A4);
  sub_1D5CFCFAC(v64);

  sub_1D5D0AF9C(v66);

  return sub_1D62B5D88(v69);
}

uint64_t FormatImageNodeStyle.auxViewRequirements.getter()
{
  v1 = *(v0 + 72);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v4 = &protocol witness table for FormatBackground;
    v3 = &type metadata for FormatBackground;
    v2 = *(v0 + 72);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v2;
  v16[3] = v3;
  v16[4] = v4;
  sub_1D5D04BD4(v1);
  sub_1D6FADCB0(v16, v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  sub_1D6FADCB0(v15, &v10, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  if (v11)
  {
    sub_1D5B63F14(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = sub_1D5EECE3C(v7, MEMORY[0x1E69E7CD0]);
    sub_1D6FAE1E4(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D6FAE1E4(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    sub_1D6FAE1E4(&v10, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    v8 = MEMORY[0x1E69E7CD0];
  }

  sub_1D6FAE1E4(v16, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  return v8;
}

uint64_t sub_1D6FAE9FC()
{
  v1 = *v0;
  sub_1D5B56218(0, &qword_1EDF195B8, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1D7273AE0;
  v4 = *(v1 + 72);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v7 = &protocol witness table for FormatBackground;
    v6 = &type metadata for FormatBackground;
    v5 = *(v1 + 72);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v5;
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  sub_1D5D04BD4(v4);
  v8 = sub_1D6E27AC0();
  swift_setDeallocating();
  sub_1D6FAE1E4(v3 + 32, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  return v8;
}

BOOL _s8NewsFeed20FormatImageNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v80 = a1[3];
  v76 = *(a1 + 2);
  v77 = *(a1 + 48);
  v7 = *(a1 + 13);
  v118 = *(a1 + 11);
  v119 = v7;
  v120 = *(a1 + 15);
  v121 = *(a1 + 136);
  v8 = *(a1 + 9);
  v116 = *(a1 + 7);
  v117 = v8;
  v74 = a1[18];
  v72 = *(a1 + 152);
  v70 = *(a1 + 153);
  v68 = a1[20];
  v66 = *(a1 + 168);
  v9 = a1[22];
  v10 = a1[23];
  v12 = a1[24];
  v11 = a1[25];
  v13 = a1[26];
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v78 = a2[3];
  v18 = a2[4];
  v17 = a2[5];
  v75 = *(a2 + 48);
  v19 = *(a2 + 13);
  v124 = *(a2 + 11);
  v125 = v19;
  v126 = *(a2 + 15);
  v127 = *(a2 + 136);
  v20 = *(a2 + 9);
  v122 = *(a2 + 7);
  v123 = v20;
  v73 = a2[18];
  v71 = *(a2 + 152);
  v69 = *(a2 + 153);
  v67 = a2[20];
  v65 = *(a2 + 168);
  v63 = a2[23];
  v64 = a2[22];
  v21 = a2[24];
  v62 = a2[25];
  v22 = a2[26];
  if (v4 != v14 || v5 != v15)
  {
    v60 = v16;
    v23 = v6;
    v24 = a2[26];
    v25 = v13;
    v26 = a2[24];
    v27 = v18;
    v28 = v12;
    v29 = v10;
    v30 = v9;
    v31 = v11;
    v32 = v17;
    v33 = sub_1D72646CC();
    v17 = v32;
    v11 = v31;
    v9 = v30;
    v10 = v29;
    v12 = v28;
    v18 = v27;
    v21 = v26;
    v13 = v25;
    v22 = v24;
    v6 = v23;
    v16 = v60;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  if ((~v6 & 0xF000000000000007) == 0)
  {
    v61 = v17;
    sub_1D5D04BD4(v6);
    sub_1D5D04BD4(v16);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v6);
      goto LABEL_13;
    }

LABEL_9:
    sub_1D5C8500C(v6);
    sub_1D5C8500C(v16);
    return 0;
  }

  *&v98 = v6;
  if ((~v16 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v6);
    sub_1D5D04BD4(v16);
    sub_1D5D04BD4(v6);

    goto LABEL_9;
  }

  v61 = v17;
  *v110 = v16;
  sub_1D5D04BD4(v6);
  sub_1D5D04BD4(v16);
  sub_1D5D04BD4(v6);
  v36 = _s8NewsFeed16FormatBackgroundO2eeoiySbAC_ACtFZ_0(&v98, v110);

  sub_1D5C8500C(v6);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v59 = v21;
  if (v80)
  {
    if (!v78)
    {
      return 0;
    }

    sub_1D633C9E8(v80, v78);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  v79 = v22;
  v81 = v13;
  if (v77 > 0xFD)
  {
    v39 = *(&v76 + 1);
    v40 = v76;
    sub_1D5ED34B0(v76, *(&v76 + 1), v77);
    v41 = v61;
    v42 = v75;
    sub_1D5ED34B0(v18, v61, v75);
    if (v75 > 0xFD)
    {
      sub_1D5ED348C(v76, *(&v76 + 1), v77);
      goto LABEL_25;
    }

LABEL_23:
    sub_1D5ED348C(v40, v39, v77);
    sub_1D5ED348C(v18, v41, v42);
    return 0;
  }

  v39 = *(&v76 + 1);
  v40 = v76;
  v98 = v76;
  LOBYTE(v99) = v77;
  v42 = v75;
  if (v75 > 0xFD)
  {
    sub_1D5ED34B0(v76, *(&v76 + 1), v77);
    v41 = v61;
    sub_1D5ED34B0(v18, v61, v75);
    sub_1D5ED34B0(v76, *(&v76 + 1), v77);
    sub_1D5ED34A0(v76, *(&v76 + 1), v77);
    goto LABEL_23;
  }

  *v110 = v18;
  *&v110[8] = v61;
  v110[16] = v75;
  sub_1D5ED34B0(v76, *(&v76 + 1), v77);
  sub_1D5ED34B0(v18, v61, v75);
  sub_1D5ED34B0(v76, *(&v76 + 1), v77);
  v43 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v98, v110);
  sub_1D5ED34A0(*v110, *&v110[8], v110[16]);
  sub_1D5ED34A0(v98, *(&v98 + 1), v99);
  sub_1D5ED348C(v76, *(&v76 + 1), v77);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v44 = v9;
  v45 = v10;
  v46 = v12;
  v113 = v118;
  v114 = v119;
  v115 = v120;
  v111 = v116;
  v112 = v117;
  *&v110[23] = v123;
  *&v110[39] = v124;
  *&v110[55] = v125;
  *&v110[71] = v126;
  v47 = v121;
  *&v110[7] = v122;
  v48 = v127;
  if (v121 == 254)
  {
    if (v127 == 254)
    {
      v49 = v11;
      v100 = v118;
      v101 = v119;
      v102 = v120;
      v98 = v116;
      v99 = v117;
      v103 = -2;
      sub_1D6FAFAD4(&v116, &v92, sub_1D615C3A4);
      sub_1D6FAFAD4(&v122, &v92, sub_1D615C3A4);
      sub_1D6FB09B8(&v98, sub_1D615C3A4);
      goto LABEL_33;
    }

    sub_1D6FAFAD4(&v116, &v98, sub_1D615C3A4);
    sub_1D6FAFAD4(&v122, &v98, sub_1D615C3A4);
LABEL_31:
    v100 = v113;
    v101 = v114;
    v102 = v115;
    v98 = v111;
    v99 = v112;
    v106 = *&v110[32];
    v107 = *&v110[48];
    *v108 = *&v110[64];
    v104 = *v110;
    v103 = v47;
    *&v108[15] = *&v110[79];
    v105 = *&v110[16];
    v109 = v48;
    sub_1D6FB09B8(&v98, sub_1D615F6C0);
    return 0;
  }

  v100 = v118;
  v101 = v119;
  v102 = v120;
  v98 = v116;
  v99 = v117;
  v103 = v121;
  v94 = v118;
  v95 = v119;
  v96 = v120;
  v97 = v121;
  v92 = v116;
  v93 = v117;
  if (v127 == 254)
  {
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    v86 = v98;
    v87 = v99;
    sub_1D6FAFAD4(&v116, v84, sub_1D615C3A4);
    sub_1D6FAFAD4(&v122, v84, sub_1D615C3A4);
    sub_1D6FAFAD4(&v98, v84, sub_1D615C3A4);
    sub_1D601144C(&v86);
    goto LABEL_31;
  }

  v49 = v11;
  v88 = v124;
  v89 = v125;
  v90 = v126;
  v86 = v122;
  v87 = v123;
  v91 = v127;
  sub_1D6FAFAD4(&v116, v84, sub_1D615C3A4);
  sub_1D6FAFAD4(&v122, v84, sub_1D615C3A4);
  sub_1D6FAFAD4(&v98, v84, sub_1D615C3A4);
  v50 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v92, &v86);
  v82[2] = v88;
  v82[3] = v89;
  v82[4] = v90;
  v83 = v91;
  v82[0] = v86;
  v82[1] = v87;
  sub_1D601144C(v82);
  v84[2] = v94;
  v84[3] = v95;
  v84[4] = v96;
  v85 = v97;
  v84[0] = v92;
  v84[1] = v93;
  sub_1D601144C(v84);
  v88 = v113;
  v89 = v114;
  v90 = v115;
  v86 = v111;
  v87 = v112;
  v91 = v47;
  sub_1D6FB09B8(&v86, sub_1D615C3A4);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  if ((~v74 & 0xF000000000000007) == 0)
  {
    v51 = v73;
    sub_1D5CFCFAC(v74);
    sub_1D5CFCFAC(v73);
    if ((~v73 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v74);
      goto LABEL_40;
    }

LABEL_38:
    sub_1D5C84FF4(v74);
    sub_1D5C84FF4(v51);
    return 0;
  }

  *&v98 = v74;
  v51 = v73;
  if ((~v73 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v74);
    sub_1D5CFCFAC(v73);
    sub_1D5CFCFAC(v74);

    goto LABEL_38;
  }

  *v110 = v73;
  sub_1D5CFCFAC(v74);
  sub_1D5CFCFAC(v73);
  sub_1D5CFCFAC(v74);
  v52 = static FormatColor.== infix(_:_:)(&v98, v110);

  sub_1D5C84FF4(v74);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  if (v72 == 2)
  {
    if (v71 != 2)
    {
      return 0;
    }

LABEL_45:
    if (v70 == 4)
    {
      if (v69 != 4)
      {
        return 0;
      }
    }

    else if (v69 == 4 || (sub_1D6DDD190(v70, v69) & 1) == 0)
    {
      return 0;
    }

    if (v68)
    {
      if (!v67 || (sub_1D6348EA4(v68, v67) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v67)
    {
      return 0;
    }

    if (v66 == 9)
    {
      if (v65 != 9)
      {
        return 0;
      }
    }

    else if (v65 == 9 || (sub_1D6DDD2B8(v66, v65) & 1) == 0)
    {
      return 0;
    }

    if (v44 == 3)
    {
      sub_1D5D0AF9C(3);
      if (v64 == 3)
      {
        sub_1D5D0AF9C(3);
        sub_1D5D0AFAC(3);
LABEL_68:
        if (v45)
        {
          if (!v63)
          {
            return 0;
          }

          sub_1D633A310(v45, v63);
          v55 = v54;

          if ((v55 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v63)
          {
            return 0;
          }
        }

        if (v46)
        {
          if (!v59)
          {
            return 0;
          }

          sub_1D6347044(v46, v59);
          v57 = v56;

          if ((v57 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v59)
        {
          return 0;
        }

        if (v49 == 1)
        {
          sub_1D62B5D88(1);
          if (v62 == 1)
          {
            v34 = 1;
            sub_1D62B5D88(1);
            sub_1D62B5D44(1);
            return v34;
          }

          sub_1D62B5D88(v62);
        }

        else
        {
          *&v98 = v49;
          *(&v98 + 1) = v81;
          if (v62 != 1)
          {
            *v110 = v62;
            *&v110[8] = v79;
            sub_1D62B5D88(v49);
            sub_1D62B5D88(v62);
            sub_1D62B5D88(v49);
            v58 = _s8NewsFeed22FormatImageNodeRequestV2eeoiySbAC_ACtFZ_0(&v98, v110);

            sub_1D62B5D44(v49);
            return v58;
          }

          sub_1D62B5D88(v49);
          sub_1D62B5D88(1);
          sub_1D62B5D88(v49);
        }

        sub_1D62B5D44(v49);
        sub_1D62B5D44(v62);
        return 0;
      }

      sub_1D5D0AF9C(v64);
    }

    else
    {
      *&v98 = v44;
      if (v64 != 3)
      {
        *v110 = v64;
        sub_1D5D0AF9C(v44);
        sub_1D5D0AF9C(v64);
        sub_1D5D0AF9C(v44);
        v53 = static FormatImageRenderingMode.== infix(_:_:)(&v98, v110);
        sub_1D5D0AFCC(*v110);
        sub_1D5D0AFCC(v98);
        sub_1D5D0AFAC(v44);
        if (!v53)
        {
          return 0;
        }

        goto LABEL_68;
      }

      sub_1D5D0AF9C(v44);
      sub_1D5D0AF9C(3);
      sub_1D5D0AF9C(v44);
      sub_1D5D0AFCC(v44);
    }

    sub_1D5D0AFAC(v44);
    sub_1D5D0AFAC(v64);
    return 0;
  }

  v34 = 0;
  if (v71 != 2 && ((v71 ^ v72) & 1) == 0)
  {
    goto LABEL_45;
  }

  return v34;
}

uint64_t sub_1D6FAF6C0(uint64_t a1)
{
  result = sub_1D6FAF7F8(&qword_1EC899140, &protocol conformance descriptor for FormatImageNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6FAF704(uint64_t a1)
{
  *(a1 + 16) = sub_1D6FAF7F8(&unk_1EDF2B0D8, &protocol conformance descriptor for FormatImageNodeStyle);
  result = sub_1D6FAF7F8(&qword_1EDF0F0F0, &protocol conformance descriptor for FormatImageNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6FAF76C(void *a1)
{
  a1[1] = sub_1D6FAF7F8(&unk_1EDF2B0D8, &protocol conformance descriptor for FormatImageNodeStyle);
  a1[2] = sub_1D6FAF7F8(&qword_1EDF0F0F0, &protocol conformance descriptor for FormatImageNodeStyle);
  result = sub_1D6FAF7F8(&qword_1EC899148, &protocol conformance descriptor for FormatImageNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6FAF7F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatImageNodeStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6FAF83C(uint64_t a1)
{
  result = sub_1D6FAF864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6FAF864()
{
  result = qword_1EC899150;
  if (!qword_1EC899150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899150);
  }

  return result;
}

unint64_t sub_1D6FAF8B8(uint64_t a1)
{
  *(a1 + 8) = sub_1D5C73D14();
  result = sub_1D5C841E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6FAF8E8(void *a1)
{
  a1[1] = sub_1D5C73D14();
  a1[2] = sub_1D5C841E0();
  result = sub_1D6FAF920();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6FAF920()
{
  result = qword_1EC899158;
  if (!qword_1EC899158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899158);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24FormatImageRenderingModeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D6FAFA14(uint64_t a1)
{
  if (!qword_1EDF1B9B0)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B9B0);
    }
  }
}

void sub_1D6FAFA78(uint64_t a1)
{
  if (!qword_1EDF21800)
  {
    v2 = sub_1D69A5D9C();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatImageNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF21800);
    }
  }
}

uint64_t sub_1D6FAFAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6FAFB3C(uint64_t a1, __int128 *a2)
{
  v4 = a2[11];
  v59 = a2[10];
  v60 = v4;
  v61 = a2[12];
  v62 = *(a2 + 26);
  v5 = a2[7];
  *&v57[48] = a2[6];
  *&v57[64] = v5;
  v6 = a2[9];
  *&v57[80] = a2[8];
  v58 = v6;
  v7 = a2[3];
  v56 = a2[2];
  *v57 = v7;
  v8 = a2[5];
  *&v57[16] = a2[4];
  *&v57[32] = v8;
  v9 = a2[1];
  v54 = *a2;
  v55 = v9;
  *(v2 + 64) = 0;
  *(v2 + 136) = 0;
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v10;
  *(v2 + 24) = v11;
  v12 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v12;
  swift_beginAccess();
  v13 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v13;
  v14 = *(&v60 + 1);
  if (!*(&v60 + 1))
  {
  }

  *(v2 + 56) = v14;
  v15 = v61;
  if (!v61)
  {
    swift_beginAccess();
    v15 = *(a1 + 64);
  }

  swift_beginAccess();
  *(v2 + 64) = v15;

  v16 = v55;
  v17 = v55;
  if ((~v55 & 0xF000000000000007) == 0)
  {
    v17 = *(a1 + 72);
    sub_1D5D04BD4(v17);
  }

  *(v2 + 72) = v17;
  v18 = *(&v55 + 1);
  if (!*(&v55 + 1))
  {
  }

  *(v2 + 80) = v18;
  v19 = BYTE8(v59);
  if (BYTE8(v59) == 9)
  {
    v19 = *(a1 + 88);
  }

  *(v2 + 88) = v19;
  v21 = *(&v56 + 1);
  v20 = v56;
  v22 = v57[0];
  v40 = *(&v56 + 1);
  v41 = v56;
  v23 = v57[0];
  if (v57[0] >= 0xFEu)
  {
    v20 = *(a1 + 96);
    v21 = *(a1 + 104);
    v23 = *(a1 + 112);
    sub_1D5ED34B0(v20, v21, v23);
  }

  *(v2 + 96) = v20;
  *(v2 + 104) = v21;
  *(v2 + 112) = v23;
  v24 = v60;
  v25 = v60;
  if (v60 == 3)
  {
    v25 = *(a1 + 120);
    sub_1D5D0AF9C(v25);
  }

  *(v2 + 120) = v25;
  v26 = BYTE9(v58);
  if (BYTE9(v58) == 4)
  {
    v26 = *(a1 + 128);
  }

  *(v2 + 128) = v26;
  v27 = v59;
  if (!v59)
  {
    swift_beginAccess();
    v27 = *(a1 + 136);
  }

  swift_beginAccess();
  sub_1D5D04BD4(v16);

  sub_1D5ED34B0(v41, v40, v22);
  sub_1D5D0AF9C(v24);
  *(v2 + 136) = v27;

  if (v57[88] == 254)
  {
    v28 = *(a1 + 192);
    v44 = *(a1 + 176);
    v45 = v28;
    v46 = *(a1 + 208);
    v47 = *(a1 + 224);
    v29 = *(a1 + 160);
    v42 = *(a1 + 144);
    v43 = v29;
    sub_1D6FAFAD4(&v42, &v48, sub_1D615C3A4);
    v50 = v44;
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v30 = v42;
    v31 = v43;
  }

  else
  {
    v50 = *&v57[40];
    v51 = *&v57[56];
    v52 = *&v57[72];
    v53 = v57[88];
    v30 = *&v57[8];
    v31 = *&v57[24];
  }

  v48 = v30;
  v49 = v31;
  v32 = v51;
  *(v2 + 176) = v50;
  *(v2 + 192) = v32;
  *(v2 + 208) = v52;
  *(v2 + 224) = v53;
  v33 = v49;
  v34 = v58;
  v35 = v58;
  *(v2 + 144) = v48;
  *(v2 + 160) = v33;
  if ((~v35 & 0xF000000000000007) == 0)
  {
    v35 = *(a1 + 232);
    sub_1D5CFCFAC(v35);
  }

  *(v2 + 232) = v35;
  v36 = BYTE8(v58);
  if (BYTE8(v58) == 2)
  {
    v36 = *(a1 + 240);
  }

  *(v2 + 240) = v36;
  v37 = *(&v61 + 1);
  v38 = v62;
  sub_1D6FAFAD4(&v57[8], &v42, sub_1D615C3A4);
  sub_1D5CFCFAC(v34);
  sub_1D62B5D88(v37);
  sub_1D5D0B1AC(&v54);
  if (v37 == 1)
  {
    v37 = *(a1 + 248);
    v38 = *(a1 + 256);
    sub_1D62B5D88(v37);
  }

  *(v2 + 248) = v37;
  *(v2 + 256) = v38;
  sub_1D6FADCB0(a1 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v2 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B4BFC8);
  return v2;
}

void *sub_1D6FAFFB8(__int128 *a1, unint64_t a2)
{
  v3 = a1[7];
  v97 = a1[6];
  v98 = v3;
  v99 = a1[8];
  v100 = *(a1 + 18);
  v4 = a1[3];
  v93 = a1[2];
  v94 = v4;
  v5 = a1[5];
  v95 = a1[4];
  v96 = v5;
  v6 = a1[1];
  v91 = *a1;
  v92 = v6;
  sub_1D5B56218(0, &qword_1EC880AC0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7284F00;
  sub_1D5B4BFC8(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v60 = *(*(v8 - 8) + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7273AE0;
  v59 = v9;
  v11 = (v10 + v9);
  if (a2)
  {
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);

    v14 = sub_1D6FAD24C();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 64) = 0x1000000000000000;
    v16 = sub_1D601118C;
  }

  else
  {
    v16 = sub_1D70DD9D8;
    v15 = 0;
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = (v11 + *(v17 + 24));
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *(v10 + v59) = v12;
  v11[2] = 0;
  v11[3] = 0;
  v11[1] = v13;
  v20 = v11 + *(v17 + 28);
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  v21 = *(*(v17 - 8) + 56);
  (v21)(v11, 0, 1, v17);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v10, v85);
  swift_setDeallocating();
  sub_1D6FB09B8(v11, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v7 + 56) = &type metadata for FormatInspectionGroup;
  *(v7 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v7 + 32) = v22;
  v23 = v85[1];
  *(v22 + 16) = v85[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v86;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7279960;
  v25 = v24 + v59;
  v26 = sub_1D711F844(1701869908, 0xE400000000000000, 0x6567616D49, 0xE500000000000000, (v24 + v59));
  v21(v24 + v59, 0, 1, v17, v26);
  if (a2)
  {
    v27 = *(a2 + 56);

    v28 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v27, (v25 + v60));
    v21(v25 + v60, 0, 1, v17, v28);
    v29 = *(a2 + 72);
    sub_1D5D04BD4(v29);
  }

  else
  {
    v30 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v25 + v60));
    v21(v25 + v60, 0, 1, v17, v30);
    v29 = 0xF000000000000007;
  }

  sub_1D7125A4C(0x756F72676B636142, 0xEA0000000000646ELL, v29, v25 + 2 * v60);
  v58 = 2 * v60;
  (v21)(v25 + 2 * v60, 0, 1, v17);
  if (a2)
  {
    v31 = *(a2 + 232);
    sub_1D5CFCFAC(v31);
  }

  else
  {
    v31 = 0xF000000000000007;
  }

  sub_1D711B4B4(0x6C6F4320746E6954, 0xEA0000000000726FLL, v31, (v25 + 3 * v60));
  (v21)(v25 + 3 * v60, 0, 1, v17);
  if (a2)
  {
    v32 = *(a2 + 240);
  }

  else
  {
    v32 = 2;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v32, (v25 + 4 * v60));
  (v21)(v25 + 4 * v60, 0, 1, v17);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v24, v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v7 + 96) = &type metadata for FormatInspectionGroup;
  *(v7 + 104) = &off_1F518B2C0;
  v33 = swift_allocObject();
  *(v7 + 72) = v33;
  v34 = v87[1];
  *(v33 + 16) = v87[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v88;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7279970;
  v36 = (v35 + v59);
  if (a2)
  {
    sub_1D712ACD0(0x657A69736552, 0xE600000000000000, *(a2 + 128), v36);
    (v21)(v36, 0, 1, v17);
    v37 = *(a2 + 88);
  }

  else
  {
    sub_1D712ACD0(0x657A69736552, 0xE600000000000000, 4, v36);
    (v21)(v36, 0, 1, v17);
    v37 = 9;
  }

  sub_1D712AF58(0x20746E65746E6F43, 0xEC00000065646F4DLL, v37, &v36[v60]);
  (v21)(&v36[v60], 0, 1, v17);
  if (a2)
  {
    v38 = *(a2 + 120);
    sub_1D5D0AF9C(v38);
  }

  else
  {
    v38 = 3;
  }

  sub_1D712B280(0x6E697265646E6552, 0xEE0065646F4D2067, v38, &v36[v58]);
  (v21)(&v36[v58], 0, 1, v17);
  sub_1D6795150(0x6567616D49, 0xE500000000000000, 0, 0, v35, v89);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v7 + 136) = &type metadata for FormatInspectionGroup;
  *(v7 + 144) = &off_1F518B2C0;
  v39 = swift_allocObject();
  *(v7 + 112) = v39;
  v40 = v89[1];
  *(v39 + 16) = v89[0];
  *(v39 + 32) = v40;
  *(v39 + 48) = v90;
  v83[6] = v97;
  v83[7] = v98;
  v83[8] = v99;
  v84 = v100;
  v83[2] = v93;
  v83[3] = v94;
  v83[4] = v95;
  v83[5] = v96;
  v83[0] = v91;
  v83[1] = v92;
  if (a2)
  {
    v41 = *(a2 + 96);
    v42 = *(a2 + 104);
    v43 = *(a2 + 112);
    sub_1D5ED34B0(v41, v42, v43);
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = -2;
  }

  *&v73 = v41;
  *(&v73 + 1) = v42;
  LOBYTE(v74) = v43;
  v44 = sub_1D6D9893C(v83, &v73);
  sub_1D5ED348C(v73, *(&v73 + 1), v74);
  *(v7 + 176) = &type metadata for FormatInspection;
  *(v7 + 184) = &off_1F51E3FD0;
  *(v7 + 152) = v44;
  v79 = v97;
  v80 = v98;
  v81 = v99;
  v82 = v100;
  v75 = v93;
  v76 = v94;
  v77 = v95;
  v78 = v96;
  v73 = v91;
  v74 = v92;
  if (a2)
  {
    v45 = *(a2 + 192);
    v69 = *(a2 + 176);
    v70 = v45;
    v71 = *(a2 + 208);
    v72 = *(a2 + 224);
    v46 = *(a2 + 160);
    v67 = *(a2 + 144);
    v68 = v46;
    sub_1D6FAFAD4(&v67, &v61, sub_1D615C3A4);
    v47 = v67;
    v48 = v68;
    v49 = v69;
    v50 = v70;
    v51 = v71;
    v52 = v72;
  }

  else
  {
    v47 = 0uLL;
    v52 = -2;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  v61 = v47;
  v62 = v48;
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v53 = sub_1D686F740(&v73, &v61);
  v69 = v63;
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v67 = v61;
  v68 = v62;
  sub_1D6FB09B8(&v67, sub_1D615C3A4);
  *(v7 + 216) = &type metadata for FormatInspection;
  *(v7 + 224) = &off_1F51E3FD0;
  *(v7 + 192) = v53;
  if (a2)
  {
    v54 = *(a2 + 248);
    a2 = *(a2 + 256);
    sub_1D62B5D88(v54);
  }

  else
  {
    v54 = 1;
  }

  *&v61 = v54;
  *(&v61 + 1) = a2;
  v55 = sub_1D6D4C9C8(&v91, &v61);
  sub_1D62B5D44(v61);
  *(v7 + 256) = &type metadata for FormatInspection;
  *(v7 + 264) = &off_1F51E3FD0;
  *(v7 + 232) = v55;
  v56 = sub_1D7073500(v7);
  swift_setDeallocating();
  sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v56;
}

uint64_t sub_1D6FB09B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatAudioTrackBinding.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6FB0AA8()
{
  result = qword_1EC899160;
  if (!qword_1EC899160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899160);
  }

  return result;
}

unint64_t sub_1D6FB0AFC(uint64_t a1)
{
  result = sub_1D6FB0B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6FB0B24()
{
  result = qword_1EC899168;
  if (!qword_1EC899168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899168);
  }

  return result;
}

unint64_t sub_1D6FB0B78(void *a1)
{
  a1[1] = sub_1D6680798();
  a1[2] = sub_1D66FFC44();
  result = sub_1D6FB0AA8();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6FB0C00(void *a1)
{
  v3 = v1;
  sub_1D6FB5640(0, &qword_1EC899220, sub_1D6FB55EC, &type metadata for A12_V3.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FB55EC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6FB56A8(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6FB0E48(uint64_t a1)
{
  v2 = sub_1D6FB55EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6FB0E84(uint64_t a1)
{
  v2 = sub_1D6FB55EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6FB0EC0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6FB534C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6FB0F20(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6FB4FE0();

  return sub_1D725A24C();
}

uint64_t sub_1D6FB0F9C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6FB5640(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6FB1058(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v114 = a2;
  v118 = a1;
  v103 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v115 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v119 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v131 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v116 = &v102 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for GroupLayoutContext(0);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v23);
  v112 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v102 - v27;
  v108 = &v102 - v27;
  v117 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v117 - 1);
  MEMORY[0x1EEE9AC00](v117, v30);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v107 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v118, v32, type metadata accessor for GroupLayoutBindingContext);
  v109 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v114, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v106 = sub_1D725893C();
  v105 = v35;
  (*(v19 + 8))(v22, v18);
  v129 = &type metadata for A12_V3;
  v36 = sub_1D5ECE91C();
  v130 = v36;
  LOBYTE(v127) = v33;
  *(&v127 + 1) = v34;
  v128 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v120[0] = sub_1D7264C5C();
  v120[1] = v39;
  v125 = 95;
  v126 = 0xE100000000000000;
  v123 = 45;
  v124 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v112;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v105;
  *v44 = v106;
  v44[1] = v45;
  sub_1D5B68374(&v127, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v117);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v108, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v110 + 56);
  v110 = v37;
  v48(v37 + v47, 0, 1, v111);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v129 = &type metadata for A12_V3;
  v130 = v36;
  LOBYTE(v127) = v107;
  v49 = v38;
  *(&v127 + 1) = v38;
  v128 = v5;
  sub_1D5BE3ED8(v114, v43, v109);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v51 = v50;
  inited = swift_initStackObject();
  v53 = MEMORY[0x1E69E7CC0];
  v114 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v54 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v55 = sub_1D5C0F8FC(0, 1, 1, v53);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  v58 = (v57 + 1);
  if (v57 >= v56 >> 1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *(v55 + 16) = v58;
    v59 = v55 + 16 * v57;
    *(v59 + 32) = sub_1D63106DC;
    *(v59 + 40) = 0;
    *v54 = v55;
    swift_endAccess();
    v57 = v117[14];
    v60 = *&v118[v57];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v58 = sub_1D5C14D80(v63), , v58))
    {
      v109 = v57;
      v111 = v51;
      v51 = *(v58 + 2);
      if (v51)
      {
        v43 = 0;
        v57 = MEMORY[0x1E69E7CC0];
        v54 = v115;
        v55 = v116;
        while (1)
        {
          v56 = *(v58 + 2);
          if (v43 >= v56)
          {
            break;
          }

          v36 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v53 = *(v54 + 72);
          sub_1D5BE3ED8(&v58[v36 + v53 * v43], v55, type metadata accessor for FeedHeadline);
          if ((*(v55 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v55, v131, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v120[0] = v57;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v57 + 16) + 1, 1);
              v54 = v115;
              v57 = v120[0];
            }

            v37 = *(v57 + 16);
            v65 = *(v57 + 24);
            if (v37 >= v65 >> 1)
            {
              sub_1D5C0F91C((v65 > 1), v37 + 1, 1);
              v54 = v115;
              v57 = v120[0];
            }

            *(v57 + 16) = v37 + 1;
            sub_1D5BDA904(v131, v57 + v36 + v37 * v53, type metadata accessor for FeedHeadline);
            v55 = v116;
          }

          else
          {
            sub_1D5BE780C(v55, type metadata accessor for FeedHeadline);
          }

          if (v51 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      v57 = MEMORY[0x1E69E7CC0];
LABEL_22:
      if ((*v118 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v70 = v69;

        v57 = v70;
      }

      v43 = v112;
      v53 = MEMORY[0x1E69E7CC0];
      v51 = v111;
      v71 = *&v118[v117[18]];
      v72 = *&v118[v117[19]];
      if (__OFSUB__(v71, v72))
      {
        goto LABEL_70;
      }

      v73 = sub_1D5C0FAD4(v57, v71 - v72);
      v36 = sub_1D5C11E10(&unk_1F5113860, v73, v58);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5113860, v57, v58);

        if (!v36)
        {
          v120[0] = &unk_1F5113860;
          v4 = v104;
          sub_1D5E239F4(v120);
          if (v4)
          {
            goto LABEL_74;
          }

          if (!*(v120[0] + 2))
          {
            goto LABEL_72;
          }

          v98 = *(v120[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v99, "FeedHeadline");
          v99[13] = 0;
          *(v99 + 7) = -5120;
          *(v99 + 2) = 0;
          *(v99 + 3) = 0;
          *(v99 + 4) = 4;
          *(v99 + 5) = v98;
          *(v99 + 6) = 0;
          *(v99 + 7) = 0;
          v99[64] = 0;
          swift_willThrow();
          goto LABEL_63;
        }
      }

      strcpy(v120, "FeedHeadline");
      BYTE5(v120[1]) = 0;
      HIWORD(v120[1]) = -5120;
      v121 = 0;
      v122 = 0;

      v75 = sub_1D5C107C4(v74);

      sub_1D5BDACA8(v120, v75);
      swift_setDeallocating();

      v57 = v109;
    }

    else
    {
      if (qword_1F5113880)
      {
        v120[0] = &unk_1F5113860;
        v4 = v104;
        sub_1D5E239F4(v120);
        if (v4)
        {
          goto LABEL_74;
        }

        v66 = *(v120[0] + 2);
        if (v66)
        {
          v67 = *(v120[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v68, "FeedHeadline");
          v68[13] = 0;
          *(v68 + 7) = -5120;
          *(v68 + 2) = 0;
          *(v68 + 3) = 0;
          *(v68 + 4) = 4;
          *(v68 + 5) = v67;
          *(v68 + 6) = 0;
          *(v68 + 7) = 0;
          v68[64] = 0;
          swift_willThrow();
LABEL_46:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v127);
          return;
        }

        __break(1u);
LABEL_68:
        v58 = sub_1D5C0F8FC((v66 > 1), v37, 1, v58);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v76 = swift_initStackObject();
    v131 = v76;
    *(v76 + 16) = v53;
    v60 = (v76 + 16);
    swift_beginAccess();
    v58 = sub_1D5C0F8FC(0, 1, 1, v53);
    v55 = *(v58 + 2);
    v66 = *(v58 + 3);
    v37 = v55 + 1;
    if (v55 >= v66 >> 1)
    {
      goto LABEL_68;
    }

LABEL_30:
    *(v58 + 2) = v37;
    v77 = &v58[16 * v55];
    *(v77 + 4) = sub_1D63106DC;
    *(v77 + 5) = 0;
    *v60 = v58;
    swift_endAccess();
    if (!*(*&v118[v57] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v79);

    if (!v37)
    {
      break;
    }

    v116 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v58 = MEMORY[0x1E69E7CC0];
LABEL_49:
      v86 = v118;
      if ((*v118 & 1) == 0)
      {

        sub_1D62F071C(v58);
        v88 = v87;

        v58 = v88;
      }

      v89 = *&v86[v117[18]];
      v90 = *&v86[v117[19]];
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_71;
      }

      v91 = sub_1D5C0FAD4(v58, v89 - v90);
      v85 = sub_1D5C11E10(&unk_1F5113888, v91, v37);

      if (v85)
      {

LABEL_55:
        strcpy(v120, "FeedHeadline");
        BYTE5(v120[1]) = 0;
        HIWORD(v120[1]) = -5120;
        v121 = 0;
        v122 = 0;

        v93 = sub_1D5C107C4(v92);

        sub_1D5BDACA8(v120, v93);
        swift_setDeallocating();

        v43 = v112;
        v36 = v116;
        goto LABEL_56;
      }

      v85 = sub_1D5C11E10(&unk_1F5113888, v58, v37);

      if (v85)
      {
        goto LABEL_55;
      }

      v120[0] = &unk_1F5113888;
      v4 = v104;
      sub_1D5E239F4(v120);
      if (v4)
      {
        goto LABEL_74;
      }

      v43 = v112;
      if (!*(v120[0] + 2))
      {
        goto LABEL_73;
      }

      v100 = *(v120[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v101, "FeedHeadline");
      v101[13] = 0;
      *(v101 + 7) = -5120;
      *(v101 + 2) = 0;
      *(v101 + 3) = 0;
      *(v101 + 4) = 0;
      *(v101 + 5) = v100;
      *(v101 + 6) = 0;
      *(v101 + 7) = 0;
      v101[64] = 0;
      swift_willThrow();
LABEL_63:
      swift_setDeallocating();
      goto LABEL_46;
    }

    v36 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v54 = v115;
    while (1)
    {
      v56 = *(v37 + 16);
      if (v36 >= v56)
      {
        break;
      }

      v53 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v51 = *(v54 + 72);
      v80 = v113;
      sub_1D5BE3ED8(v37 + v53 + v51 * v36, v113, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v80, v119, type metadata accessor for FeedHeadline);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v120[0] = v58;
      if ((v81 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v58 + 2) + 1, 1);
        v54 = v115;
        v58 = v120[0];
      }

      v55 = *(v58 + 2);
      v82 = *(v58 + 3);
      v57 = v55 + 1;
      if (v55 >= v82 >> 1)
      {
        sub_1D5C0F91C((v82 > 1), v55 + 1, 1);
        v54 = v115;
        v58 = v120[0];
      }

      ++v36;
      *(v58 + 2) = v57;
      sub_1D5BDA904(v119, &v58[v53 + v55 * v51], type metadata accessor for FeedHeadline);
      if (v43 == v36)
      {
        goto LABEL_49;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v55 = sub_1D5C0F8FC((v56 > 1), v58, 1, v55);
  }

  if (!qword_1F51138A8)
  {

    v85 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v120[0] = v36;
    sub_1D5C122E4(v85);
    v94 = v120[0];
    v95 = type metadata accessor for A12_V3.Bound(0);
    v96 = v103;
    v103[3] = v95;
    v96[4] = sub_1D6FB56A8(&qword_1EC899180, type metadata accessor for A12_V3.Bound, &unk_1D737F494);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
    *boxed_opaque_existential_1 = v110;
    sub_1D5B63F14(&v127, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v95 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v95 + 28)) = v94;
    return;
  }

  v120[0] = &unk_1F5113888;
  v4 = v104;
  sub_1D5E239F4(v120);
  if (!v4)
  {

    if (*(v120[0] + 2))
    {
      v83 = *(v120[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v84, "FeedHeadline");
      v84[13] = 0;
      *(v84 + 7) = -5120;
      *(v84 + 2) = 0;
      *(v84 + 3) = 0;
      *(v84 + 4) = 0;
      *(v84 + 5) = v83;
      *(v84 + 6) = 0;
      *(v84 + 7) = 0;
      v84[64] = 0;
      swift_willThrow();
      goto LABEL_46;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_74:

  __break(1u);
}

void sub_1D6FB2204(_BYTE *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1D725A36C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V3.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v43);
  sub_1D5B68374(v12 + 56, v42);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v43, v15 + 16);
  sub_1D5B63F14(v42, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v41[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v42);
  sub_1D5B68374(v16 + 56, v41);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v42, v18 + 16);
  sub_1D5B63F14(v41, v18 + 56);
  *(v18 + 96) = v17;
  v40[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v40, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v43, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v43[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v43[0];
  v39[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6FB4F7C, v39);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v35);
  v37 = v22;
  v38 = v2;
  sub_1D6FB5090(0, &qword_1EC8991A0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v35 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v44;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v33 = v43[1];
  v34 = v43[0];
  *&v43[0] = v22;
  *&v42[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v36;
  *v36 = 0;
  v30 = v34;
  *(v29 + 24) = v33;
  *(v29 + 8) = v30;
  *&v43[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v32 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
}

uint64_t sub_1D6FB2750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6FB2820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6FB5090(0, &qword_1EC8991C0, MEMORY[0x1E69D7150]);
  sub_1D6FB5044(&qword_1EC8991C8, &qword_1EC8991C0, v13, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6FB2A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v15[-v11];
  v18 = a1;
  (*(v8 + 104))(&v15[-v11], *MEMORY[0x1E69D7460], v7, v10);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6FB5090(0, &qword_1EC8991D0, MEMORY[0x1E69D6F38]);
  sub_1D6FB5044(&qword_1EC8991D8, &qword_1EC8991D0, v13, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1D6FB2BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a3;
  v27 = a2;
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v26 - v8);
  v35 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v29 = *MEMORY[0x1E69D7490];
  v28 = *(v6 + 104);
  v28(v9);
  sub_1D6FB5114(0);
  sub_1D6FB5640(0, &qword_1EC8991E8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D70D8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  v16 = v15 + v14;
  sub_1D5ED83AC(0);
  v18 = (v16 + *(v17 + 48));
  v19 = *MEMORY[0x1E69D7238];
  v20 = sub_1D725A0DC();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  *v18 = 0x6C6F437468676972;
  v18[1] = 0xEB000000006E6D75;
  (*(v13 + 104))(v16, *MEMORY[0x1E69D7020], v12);
  v21 = v27;
  v34 = v27;
  v22 = MEMORY[0x1E69D6F38];
  sub_1D6FB5090(0, &qword_1EC8991D0, MEMORY[0x1E69D6F38]);
  sub_1D6FB5044(&qword_1EC8991D8, &qword_1EC8991D0, v22, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();

  v23 = *(v6 + 8);
  v23(v9, v5);
  v35 = v30;
  v24 = swift_allocObject();
  *(v24 + 16) = 6;
  *v9 = v24;
  (v28)(v9, v29, v5);
  v32 = v21;
  v33 = v31;
  sub_1D7259A2C();
  return (v23)(v9, v5);
}

uint64_t sub_1D6FB2FFC(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v56 = sub_1D725A36C();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v3);
  v57 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725A19C();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v50, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v46 - v18);
  v61 = a1;
  v20 = sub_1D725994C();
  v21 = swift_allocBox();
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69D6F50], v20);
  *v19 = v21;
  v23 = *(v16 + 104);
  v23(v19, *MEMORY[0x1E69D73C0], v15);
  v24 = MEMORY[0x1E69D6F38];
  sub_1D6FB5090(0, &qword_1EC8991D0, MEMORY[0x1E69D6F38]);
  v26 = v25;
  v27 = sub_1D6FB5044(&qword_1EC8991D8, &qword_1EC8991D0, v24, MEMORY[0x1E69D6F40]);
  v53 = v26;
  v28 = v15;
  sub_1D7259A9C();
  v29 = *(v16 + 8);
  v51 = v16 + 8;
  v29(v19, v15);
  v61 = a1;
  KeyPath = swift_getKeyPath();
  v23(v19, *MEMORY[0x1E69D7460], v28);
  if (!*(v60 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v46 = KeyPath;
  v47 = v29;
  v48 = v27;
  KeyPath = v52;
  sub_1D5BE3ED8(v60 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v52, type metadata accessor for HeadlineViewLayout.Context);
  v31 = v50;
  v32 = *(v50 + 20);
  v33 = *MEMORY[0x1E69D7348];
  v34 = sub_1D725A34C();
  v35 = *(v34 - 8);
  (*(v35 + 104))(&v10[v32], v33, v34);
  (*(v35 + 56))(&v10[v32], 0, 1, v34);
  v36 = MEMORY[0x1E69DDC70];
  *v10 = 0;
  *&v10[*(v31 + 24)] = 0;
  v37 = *v36;
  *&v10[*(v31 + 28)] = v37;
  v38 = qword_1EDF386E8;
  v39 = v37;
  if (v38 != -1)
  {
LABEL_5:
    swift_once();
  }

  v40 = v55;
  sub_1D725972C();

  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  *(&v46 - 4) = KeyPath;
  *(&v46 - 3) = v10;
  v45 = v40;
  (*(v54 + 104))(v57, *MEMORY[0x1E69D7378], v56, v43);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v58 + 8))(v40, v59);
  sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(KeyPath, type metadata accessor for HeadlineViewLayout.Context);
  v45 = sub_1D5BE8850();
  sub_1D7259A4C();

  return v47(v19, v28);
}

uint64_t sub_1D6FB369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v81 = a1;
  v82 = a2;
  v62 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v62, v4);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v62 - v10);
  v84 = a1;
  v12 = sub_1D725994C();
  v65 = v12;
  v13 = swift_allocBox();
  LODWORD(v75) = *MEMORY[0x1E69D6F50];
  v14 = *(v12 - 8);
  KeyPath = *(v14 + 104);
  v76 = v14 + 104;
  KeyPath(v15);
  *v11 = v13;
  v70 = *MEMORY[0x1E69D73C0];
  v16 = *(v8 + 104);
  v16(v11);
  v80 = v8 + 104;
  v17 = MEMORY[0x1E69D6F38];
  sub_1D6FB5090(0, &qword_1EC8991D0, MEMORY[0x1E69D6F38]);
  v79 = v18;
  v78 = sub_1D6FB5044(&qword_1EC8991D8, &qword_1EC8991D0, v17, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v84 = v81;
  (v16)(v11, *MEMORY[0x1E69D74A8], v7);
  sub_1D6FB5114(0);
  v68 = v20;
  sub_1D6FB5640(0, &qword_1EC8991E8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D70D8]);
  v22 = v21;
  v72 = v21;
  v23 = *(v21 - 8);
  v69 = *(v23 + 72);
  v67 = *(v23 + 80);
  v24 = v23;
  v25 = (v67 + 32) & ~v67;
  v64 = v25;
  v26 = swift_allocObject();
  v66 = xmmword_1D7273AE0;
  *(v26 + 16) = xmmword_1D7273AE0;
  v27 = *MEMORY[0x1E69D7098];
  v28 = *(v24 + 104);
  v71 = v24 + 104;
  v73 = v28;
  v28(v26 + v25, v27, v22);
  v83 = v82;
  sub_1D72599EC();

  v19(v11, v7);
  v29 = v81;
  v84 = v81;
  v30 = v65;
  v31 = swift_allocBox();
  (KeyPath)(v32, v75, v30);
  *v11 = v31;
  (v16)(v11, v70, v7);
  sub_1D7259A9C();
  v75 = v19;
  v76 = v8 + 8;
  v19(v11, v7);
  v84 = v29;
  KeyPath = swift_getKeyPath();
  sub_1D60DF7C0(0);
  v34 = v33;
  v35 = swift_allocBox();
  v37 = v36;
  v38 = *(v34 + 48);
  *v36 = 2;
  v39 = *MEMORY[0x1E69D7348];
  v40 = sub_1D725A34C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 104);
  v43 = v37 + v38;
  v44 = v82;
  v70 = v39;
  v65 = v42;
  v42(v43, v39, v40);
  *v11 = v35;
  v45 = *MEMORY[0x1E69D73E0];
  v81 = v7;
  (v16)(v11, v45, v7);
  v46 = v64;
  v47 = swift_allocObject();
  *(v47 + 16) = v66;
  v48 = v77 + *(type metadata accessor for A12_V3.Bound(0) + 24);
  *(v47 + v46) = *(v48 + *(type metadata accessor for GroupLayoutContext(0) + 32)) * 135.0;
  result = v73(v47 + v46, *MEMORY[0x1E69D70D0], v72);
  if (*(v44 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v50 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v52 = v44 + 3 * *(v50 + 72);
    v53 = v62;
    v54 = *(v62 + 20);
    v55 = v63;
    v65(&v63[v54], v70, v40);
    (*(v41 + 56))(&v55[v54], 0, 1, v40);
    v56 = *MEMORY[0x1E69DDC70];
    *v55 = 0;
    *&v55[*(v53 + 24)] = 0;
    *&v55[*(v53 + 28)] = v56;
    v57 = *MEMORY[0x1E69DDCE0];
    v58 = *(MEMORY[0x1E69DDCE0] + 8);
    v59 = *(MEMORY[0x1E69DDCE0] + 16);
    v60 = *(MEMORY[0x1E69DDCE0] + 24);
    v61 = v56;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v52 + v51, v55, v57, v58, v59, v60);
    sub_1D5BE780C(v55, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return v75(v11, v81);
  }

  return result;
}

uint64_t sub_1D6FB3E78(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6FB5090(0, &qword_1EC8991D0, MEMORY[0x1E69D6F38]);
  sub_1D6FB5044(&qword_1EC8991D8, &qword_1EC8991D0, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 3;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6FB411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6FB5090(0, &qword_1EC8991D0, MEMORY[0x1E69D6F38]);
  sub_1D6FB5044(&qword_1EC8991D8, &qword_1EC8991D0, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6FB46F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FB5640(0, &qword_1EC8991B8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6FB5090(0, &qword_1EC8991D0, MEMORY[0x1E69D6F38]);
  sub_1D6FB5044(&qword_1EC8991D8, &qword_1EC8991D0, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6FB4CC4@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V3.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6FB4DD8(uint64_t a1)
{
  *(a1 + 8) = sub_1D6FB4E08();
  result = sub_1D6FB4E5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6FB4E08()
{
  result = qword_1EC899170;
  if (!qword_1EC899170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899170);
  }

  return result;
}

unint64_t sub_1D6FB4E5C()
{
  result = qword_1EC899178;
  if (!qword_1EC899178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899178);
  }

  return result;
}

uint64_t type metadata accessor for A12_V3.Bound(uint64_t a1)
{
  result = qword_1EC899188;
  if (!qword_1EC899188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6FB4F24(uint64_t a1)
{
  result = sub_1D6FB56A8(&qword_1EC899198, type metadata accessor for A12_V3.Bound, &unk_1D737F46C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6FB4F8C()
{
  result = qword_1EC8991A8;
  if (!qword_1EC8991A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8991A8);
  }

  return result;
}

unint64_t sub_1D6FB4FE0()
{
  result = qword_1EC8991B0;
  if (!qword_1EC8991B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8991B0);
  }

  return result;
}

uint64_t sub_1D6FB5044(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6FB5090(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6FB5090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V3.Layout;
    v8[1] = &type metadata for A12_V3.Layout.Attributes;
    v8[2] = sub_1D6FB4F8C();
    v8[3] = sub_1D6FB4FE0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6FB5114(uint64_t a1)
{
  if (!qword_1EC8991E0)
  {
    sub_1D6FB5640(255, &qword_1EC8991E8, sub_1D6FB4F8C, &type metadata for A12_V3.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8991E0);
    }
  }
}

unint64_t sub_1D6FB51F0()
{
  result = qword_1EC8991F0;
  if (!qword_1EC8991F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8991F0);
  }

  return result;
}

unint64_t sub_1D6FB5248()
{
  result = qword_1EC8991F8;
  if (!qword_1EC8991F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8991F8);
  }

  return result;
}

unint64_t sub_1D6FB52A0()
{
  result = qword_1EC899200;
  if (!qword_1EC899200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899200);
  }

  return result;
}

unint64_t sub_1D6FB52F8()
{
  result = qword_1EC899208;
  if (!qword_1EC899208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899208);
  }

  return result;
}

uint64_t sub_1D6FB534C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6FB5640(0, &qword_1EC899210, sub_1D6FB55EC, &type metadata for A12_V3.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FB55EC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6FB56A8(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6FB55EC()
{
  result = qword_1EC899218;
  if (!qword_1EC899218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899218);
  }

  return result;
}

void sub_1D6FB5640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6FB56A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6FB5704()
{
  result = qword_1EC899228;
  if (!qword_1EC899228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899228);
  }

  return result;
}

unint64_t sub_1D6FB575C()
{
  result = qword_1EC899230;
  if (!qword_1EC899230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899230);
  }

  return result;
}

unint64_t sub_1D6FB57B4()
{
  result = qword_1EC899238;
  if (!qword_1EC899238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899238);
  }

  return result;
}

uint64_t sub_1D6FB5814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 137))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = ((*(a1 + 136) >> 7) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 136) >> 1) & 0x3F) << 7)))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6FB5888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_1D6FB5940(uint64_t result, char a2)
{
  v2 = *(result + 136) & 1 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 136) = v2;
  return result;
}

uint64_t static FormatContentSubgroupFilterPrecededBy.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FormatContentSubgroupFilterPrecededBy.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6FB59D0(uint64_t a1)
{
  v2 = sub_1D6FB5B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6FB5A0C(uint64_t a1)
{
  v2 = sub_1D6FB5B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterPrecededBy.encode(to:)(void *a1)
{
  sub_1D6FB5D6C(0, &qword_1EC899240, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FB5B94();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6FB5B94()
{
  result = qword_1EC899248;
  if (!qword_1EC899248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899248);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterPrecededBy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6FB5D6C(0, &qword_1EC899250, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FB5B94();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6FB5D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6FB5B94();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterPrecededBy.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6FB5DD0(void *a1)
{
  a1[1] = sub_1D69CFCDC();
  a1[2] = sub_1D69CFE90();
  result = sub_1D6FB5E08();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6FB5E08()
{
  result = qword_1EC899258;
  if (!qword_1EC899258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899258);
  }

  return result;
}

uint64_t sub_1D6FB5E74(void *a1)
{
  sub_1D6FB5D6C(0, &qword_1EC899240, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FB5B94();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6FB5FE4()
{
  result = qword_1EC899260;
  if (!qword_1EC899260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899260);
  }

  return result;
}

unint64_t sub_1D6FB603C()
{
  result = qword_1EC899268;
  if (!qword_1EC899268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899268);
  }

  return result;
}

unint64_t sub_1D6FB6094()
{
  result = qword_1EC899270;
  if (!qword_1EC899270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899270);
  }

  return result;
}

uint64_t *AnyFeedServiceConfigFetcher.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D5BD6410(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t AnyFeedServiceConfigFetcher.deinit()
{

  return v0;
}

uint64_t AnyFeedServiceConfigFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FB63C4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x6C616974696E69;
  }

  if (a3 != 1)
  {
    return 0x676E616863206F6ELL;
  }

  sub_1D6FB66A8(a1, a2, 1);

  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);

  return 0x287365676E616863;
}

uint64_t sub_1D6FB64C0()
{
  sub_1D7263D4C();

  v1 = sub_1D6FB63C4(*v0, *(v0 + 8), *(v0 + 16));
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x657461647075202CLL, 0xEA00000000003D64);
  v2 = type metadata accessor for DebugFormatPackagesDelta(0);
  if (*(v0 + *(v2 + 20)) >> 62)
  {
    sub_1D7263BFC();
  }

  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x65766F6D6572202CLL, 0xEA00000000003D64);
  if (*(v0 + *(v2 + 24)) >> 62)
  {
    sub_1D7263BFC();
  }

  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0x3D64616F6C7BLL;
}

uint64_t type metadata accessor for DebugFormatPackagesDelta(uint64_t a1)
{
  result = qword_1EC899278;
  if (!qword_1EC899278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6FB66A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

void sub_1D6FB6708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6FB6780(uint64_t a1)
{
  sub_1D6FB6708(319, &qword_1EC890D68, sub_1D5EF3A64, type metadata accessor for DebugFormatManagerResult);
  if (v1 <= 0x3F)
  {
    sub_1D5EF3A64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id cast<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v16 - v9;
  v16[1] = a1;
  sub_1D6FB6A30();
  v11 = a1;
  v12 = swift_dynamicCast();
  v13 = *(*(a2 - 8) + 56);
  if (v12)
  {
    v14 = *(a2 - 8);
    v13(v10, 0, 1, a2);
    (*(v14 + 32))(a3, v10, a2);
    return [v11 setHidden_];
  }

  else
  {
    v13(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
    [v11 setHidden_];
    sub_1D6FB6A7C();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_1D6FB6A30()
{
  result = qword_1EC88B4B8;
  if (!qword_1EC88B4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88B4B8);
  }

  return result;
}

unint64_t sub_1D6FB6A7C()
{
  result = qword_1EC899288;
  if (!qword_1EC899288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899288);
  }

  return result;
}

unint64_t sub_1D6FB6AE4()
{
  result = qword_1EC899290;
  if (!qword_1EC899290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899290);
  }

  return result;
}

void sub_1D6FB6B38(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v17 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v18 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v17 + 24);

      v20 = sub_1D6F7CF80(a2, a1, v18, v19);
      sub_1D6FB6B38(a1, a2, v20, a4);
    }

    else
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }
  }

  else if (v13)
  {
    v21 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    *(a4 + 24) = &type metadata for FormatCommand;
    *(a4 + 32) = &off_1F51AF740;
    *a4 = v21;
  }

  else
  {
    v14 = v10;
    v15 = swift_projectBox();
    sub_1D6FB6CBC(v15, v12);
    *(a4 + 24) = v14;
    *(a4 + 32) = &off_1F5127128;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    sub_1D675DDB0(v12, boxed_opaque_existential_1);
  }
}

uint64_t sub_1D6FB6CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6FB6D20(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v28 - v10;
  v12 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v12 == 2)
    {
      if (a2 >> 62 != 2)
      {
        goto LABEL_15;
      }

      v17 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v18 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v19 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *(v18 + 24);

      sub_1D6353F70(v17, v19);
      if ((v21 & 1) == 0)
      {

        goto LABEL_15;
      }

      v22 = sub_1D6FB6D20(v16, v20);

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (a2 != 0xC000000000000000)
    {
      goto LABEL_15;
    }

    v15 = 1;
    return v15 & 1;
  }

  if (v12)
  {
    if (a2 >> 62 == 1)
    {
      v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *(v23 + 32);
      v30[0] = *(v23 + 16);
      v30[1] = v25;
      v31[0] = *(v23 + 48);
      *(v31 + 15) = *(v23 + 63);
      v26 = *(v24 + 32);
      v28[0] = *(v24 + 16);
      v28[1] = v26;
      v29[0] = *(v24 + 48);
      *(v29 + 15) = *(v24 + 63);
      v15 = static FormatCommandBinding.== infix(_:_:)(v30, v28);
      return v15 & 1;
    }

LABEL_15:
    v15 = 0;
    return v15 & 1;
  }

  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  v13 = swift_projectBox();
  v14 = swift_projectBox();
  sub_1D6FB6CBC(v13, v11);
  sub_1D6FB6CBC(v14, v7);
  v15 = _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(v11, v7);
  sub_1D6FB6F44(v7);
  sub_1D6FB6F44(v11);
  return v15 & 1;
}

uint64_t sub_1D6FB6F44(uint64_t a1)
{
  v2 = type metadata accessor for FormatCommandOpenURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6FB6FB0(uint64_t a1)
{
  result = sub_1D5C888A0();
  *(a1 + 8) = result;
  return result;
}

void sub_1D6FB70AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = *(v3 + 16);
  if (!*v3)
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (*(v3 + 8))
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v31 = v5;
      v32 = v12;
      v14 = sub_1D5FBC414(sub_1D6D99BA4, v30, v13);
      if (v4)
      {
        return;
      }

      v36 = 0;
      v15 = *(v14 + 2);
      if (!v15)
      {

        v4 = v36;
        if (v7 != 255)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }

      v40 = v7;
      v33 = v5;
      v34 = a3;
      v38 = v11;
      v16 = v14;
      sub_1D6997AA0(0, v15, 0);
      v11 = v38;
      v35 = v16;
      v17 = v16 + 72;
      do
      {
        v37 = v11;
        v18 = *(v17 - 5);
        v19 = *(v17 - 4);
        v20 = *(v17 - 24);
        v21 = *(v17 - 2);
        v22 = *(v17 - 8);
        v23 = *v17;
        v24 = swift_allocObject();
        *(v24 + 16) = v18;
        *(v24 + 24) = v19;
        *(v24 + 32) = v20;
        *(v24 + 40) = v21;
        *(v24 + 48) = v22;
        *(v24 + 56) = v23;
        sub_1D5F26358(v18, v19, v20);
        v25 = v22;
        v11 = v37;
        sub_1D62B5FC8(v21, v25);
        v38 = v11;
        v26 = *(v11 + 16);
        v27 = *(v11 + 24);

        if (v26 >= v27 >> 1)
        {
          sub_1D6997AA0((v27 > 1), v26 + 1, 1);
          v11 = v38;
        }

        *(v11 + 16) = v26 + 1;
        *(v11 + 8 * v26 + 32) = v24;
        v17 += 6;
        --v15;
      }

      while (v15);

      v4 = v36;
      v5 = v33;
      a3 = v34;
      v7 = v40;
    }

    if (v7 != 255)
    {
      goto LABEL_14;
    }

LABEL_18:
    v28 = 0;
    v29 = -2;
    goto LABEL_19;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v31 = v5;
  v32 = v8;
  v10 = sub_1D5ECA524(sub_1D6FB928C, v30, v9);
  if (v4)
  {
    return;
  }

  v11 = v10;
  if (v7 == 255)
  {
    goto LABEL_18;
  }

LABEL_14:
  v41 = v7 & 1;
  sub_1D7071804(v5, &v38);
  if (v4)
  {

    return;
  }

  v28 = v38;
  v29 = v39;
LABEL_19:
  *a3 = v11;
  *(a3 + 8) = v28;
  *(a3 + 16) = v29;
}

uint64_t FormatMenu.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v134 = v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v139 = v125 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v129 = v125 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v125 - v16;
  sub_1D6FB8380(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v140 = v1[1];
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D5C7656C();
  sub_1D71B5B30(&type metadata for FormatMenu.CodingKeys, v26, v24, &type metadata for FormatVersions.Azden, v25, &off_1F51F6B78, v22);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD50);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v132 = v28;
  v137 = v30;
  v138 = v27;
  v136 = v29 + 16;
  (v30)(v17);
  v135 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v144 = 0;
  v31 = &v22[*(v19 + 44)];
  v33 = *v31;
  v32 = *(v31 + 1);
  v34 = swift_allocObject();
  v36 = v34;
  *(v34 + 16) = 0;
  *(v34 + 24) = v33;
  *(v34 + 32) = v32;
  v142 = v22;
  v133 = v19;
  if (v23)
  {
    v130 = v17;
    v131 = v125;
    v143 = v23;
    MEMORY[0x1EEE9AC00](v34, v35);
    v141 = v2;
    v125[-4] = sub_1D5B4AA6C;
    v125[-3] = 0;
    v125[-2] = sub_1D6FB9320;
    v125[-1] = v36;
    v37 = v23;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v33;
    *(v38 + 32) = v32;
    sub_1D5C96240(0, &qword_1EDF02848, MEMORY[0x1E69E6F58]);
    v39 = v33;
    v41 = v40;
    v42 = sub_1D6FB8400();
    swift_retain_n();

    v128 = v32;
    v125[1] = v41;
    v125[2] = v42;
    v43 = sub_1D72647CC();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    v45 = *(v19 + 36);
    v46 = v130;
    v47 = &v22[v45];
    v48 = *&v22[v45 + 24];
    v49 = *&v22[v45 + 32];
    v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
    MEMORY[0x1EEE9AC00](v50, v51);
    v125[-2] = sub_1D6FB931C;
    v125[-1] = v44;
    MEMORY[0x1EEE9AC00](v52, v53);
    v125[-4] = sub_1D615B4A4;
    v125[-3] = &v125[-6];
    v125[-2] = sub_1D6FB9320;
    v125[-1] = v38;
    v54 = v141;
    v56 = sub_1D5D2F7A4(v46, sub_1D615B49C, v55, sub_1D615B4A4, &v125[-6], v48, v49);
    v3 = v54;
    if (v54)
    {

      v22 = v142;
      v57 = v46;
LABEL_30:
      sub_1D5D2D1C8(v57, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2D1C8(v22, sub_1D6FB8380);
    }

    v59 = v56;
    v126 = v39;

    if (v59)
    {
      sub_1D5B49760(0, &qword_1EDF1B148, &type metadata for FormatMenuGroupable, MEMORY[0x1E69E62F8]);
      sub_1D5C86D1C(&qword_1EDF04F20, sub_1D6EEBA80, MEMORY[0x1E69E6300]);
      v22 = v142;
      sub_1D72647EC();
      v23 = v37;
      v33 = v126;

      sub_1D5D2D1C8(v46, type metadata accessor for FormatVersionRequirement);
      v32 = v128;
      v58 = v140;
      if (!v140)
      {
LABEL_13:
        v126 = v33;
        v127 = v23;
        v60 = v129;
        v137(v129, v132, v138);
        swift_storeEnumTagMultiPayload();
        v61 = swift_allocObject();
        *(v61 + 16) = 1;
        *(v61 + 24) = v33;
        *(v61 + 32) = v32;
        sub_1D5C96240(0, &qword_1EDF02848, MEMORY[0x1E69E6F58]);
        sub_1D6FB8400();

        v62 = v32;
        v63 = sub_1D72647CC();
        v64 = swift_allocObject();
        *(v64 + 16) = v63;
        *(v64 + 24) = 1;
        v65 = &v22[*(v133 + 36)];
        v66 = *(v65 + 3);
        v67 = *(v65 + 4);
        v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
        MEMORY[0x1EEE9AC00](v68, v69);
        v125[-2] = sub_1D6FB931C;
        v125[-1] = v64;
        MEMORY[0x1EEE9AC00](v70, v71);
        v125[-4] = sub_1D6FB8474;
        v125[-3] = 0;
        v125[-2] = sub_1D6FB9320;
        v125[-1] = v61;
        v72 = v67;
        v23 = v127;
        sub_1D5D2BC70(v60, sub_1D60566B0, v73, sub_1D60565EC, &v125[-6], v66, v72);
        v32 = v62;
        sub_1D5D2D1C8(v60, type metadata accessor for FormatVersionRequirement);

        v33 = v126;

        v58 = v140;
        if (v3)
        {
          return sub_1D5D2D1C8(v22, sub_1D6FB8380);
        }
      }
    }

    else
    {
      v23 = v37;

      sub_1D5D2D1C8(v46, type metadata accessor for FormatVersionRequirement);
      v22 = v142;
      v32 = v128;
      v33 = v126;
      v58 = v140;
      if (!v140)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {

    sub_1D5D2D1C8(v17, type metadata accessor for FormatVersionRequirement);

    v58 = v140;
    if (!v140)
    {
      goto LABEL_13;
    }
  }

  v127 = v23;
  v141 = v3;
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v74 = v138;
  v75 = __swift_project_value_buffer(v138, qword_1EDFFCDF8);
  v76 = v139;
  v137(v139, v75, v74);
  swift_storeEnumTagMultiPayload();
  v144 = 1;
  v77 = swift_allocObject();
  v79 = v77;
  *(v77 + 16) = 1;
  *(v77 + 24) = v33;
  *(v77 + 32) = v32;
  v80 = v134;
  if (v58)
  {
    v131 = v125;
    v143 = v58;
    MEMORY[0x1EEE9AC00](v77, v78);
    v125[-4] = sub_1D5B4AA6C;
    v125[-3] = 0;
    v125[-2] = sub_1D6FB9320;
    v125[-1] = v79;
    v81 = swift_allocObject();
    *(v81 + 16) = 1;
    *(v81 + 24) = v33;
    *(v81 + 32) = v32;
    sub_1D5C96240(0, &qword_1EDF02848, MEMORY[0x1E69E6F58]);
    v83 = v82;
    v84 = sub_1D6FB8400();
    swift_retain_n();

    v128 = v32;
    v85 = v142;
    v130 = v83;
    v86 = sub_1D72647CC();
    v87 = v33;
    v88 = swift_allocObject();
    *(v88 + 16) = v86;
    v89 = v139;
    *(v88 + 24) = 1;
    v90 = &v85[*(v133 + 36)];
    v91 = *(v90 + 3);
    v92 = *(v90 + 4);
    v93 = __swift_project_boxed_opaque_existential_1(v90, v91);
    MEMORY[0x1EEE9AC00](v93, v94);
    v125[-2] = sub_1D6FB931C;
    v125[-1] = v88;
    MEMORY[0x1EEE9AC00](v95, v96);
    v125[-4] = sub_1D615B4A4;
    v125[-3] = &v125[-6];
    v125[-2] = sub_1D6FB9320;
    v125[-1] = v81;
    v97 = v141;
    v99 = sub_1D5D2F7A4(v89, sub_1D615B49C, v98, sub_1D615B4A4, &v125[-6], v91, v92);
    if (v97)
    {

      v22 = v142;
      v57 = v139;
      goto LABEL_30;
    }

    v100 = v99;
    v141 = v84;
    v101 = v87;
    v102 = v128;

    if (v100)
    {
      sub_1D5B49760(0, &qword_1EDF1B2F8, &type metadata for FormatMenuItem, MEMORY[0x1E69E62F8]);
      sub_1D5C85250(&qword_1EDF05038, sub_1D66F3618, MEMORY[0x1E69E6300]);
      v22 = v142;
      sub_1D72647EC();
      v80 = v134;
      v33 = v101;
      v141 = 0;

      sub_1D5D2D1C8(v139, type metadata accessor for FormatVersionRequirement);
      v32 = v102;
    }

    else
    {
      v141 = 0;

      sub_1D5D2D1C8(v89, type metadata accessor for FormatVersionRequirement);
      v22 = v142;
      v80 = v134;
      v32 = v102;
      v33 = v101;
    }
  }

  else
  {

    sub_1D5D2D1C8(v76, type metadata accessor for FormatVersionRequirement);

    v22 = v142;
  }

  v137(v80, v132, v138);
  swift_storeEnumTagMultiPayload();
  v144 = 0;
  v103 = swift_allocObject();
  v105 = v103;
  *(v103 + 16) = 0;
  *(v103 + 24) = v33;
  *(v103 + 32) = v32;
  if (v127)
  {
    v140 = v125;
    v143 = v127;
    MEMORY[0x1EEE9AC00](v103, v104);
    v125[-4] = sub_1D5B4AA6C;
    v125[-3] = 0;
    v125[-2] = sub_1D6FB9320;
    v125[-1] = v105;
    v106 = v80;
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = v33;
    *(v107 + 32) = v32;
    sub_1D5C96240(0, &qword_1EDF02848, MEMORY[0x1E69E6F58]);
    v109 = v108;
    sub_1D6FB8400();
    swift_retain_n();

    v139 = v109;
    v110 = sub_1D72647CC();
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = 0;
    v112 = &v22[*(v133 + 36)];
    v113 = *(v112 + 3);
    v114 = *(v112 + 4);
    v115 = __swift_project_boxed_opaque_existential_1(v112, v113);
    MEMORY[0x1EEE9AC00](v115, v116);
    v125[-2] = sub_1D6FB8F80;
    v125[-1] = v111;
    MEMORY[0x1EEE9AC00](v117, v118);
    v125[-4] = sub_1D60565EC;
    v125[-3] = &v125[-6];
    v125[-2] = sub_1D6FB8F74;
    v125[-1] = v107;
    v119 = v141;
    v121 = sub_1D5D2F7A4(v106, sub_1D60566B0, v120, sub_1D60565EC, &v125[-6], v113, v114);
    if (v119)
    {

      v22 = v142;
      v122 = v134;
    }

    else
    {
      v123 = v121;

      if ((v123 & 1) == 0)
      {

        sub_1D5D2D1C8(v134, type metadata accessor for FormatVersionRequirement);
        v22 = v142;
        return sub_1D5D2D1C8(v22, sub_1D6FB8380);
      }

      sub_1D5B49760(0, &qword_1EDF1B148, &type metadata for FormatMenuGroupable, MEMORY[0x1E69E62F8]);
      sub_1D5C86D1C(&qword_1EDF04F20, sub_1D6EEBA80, MEMORY[0x1E69E6300]);
      v22 = v142;
      sub_1D72647EC();
      v122 = v134;
    }

    v57 = v122;
    goto LABEL_30;
  }

  sub_1D5D2D1C8(v80, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2D1C8(v22, sub_1D6FB8380);
}

void sub_1D6FB8380(uint64_t a1)
{
  if (!qword_1EDF087C8)
  {
    sub_1D5C96240(255, &qword_1EDF02848, MEMORY[0x1E69E6F58]);
    v3 = v2;
    v4 = sub_1D6FB8400();
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF087C8);
    }
  }
}

unint64_t sub_1D6FB8400()
{
  result = qword_1EDF02850;
  if (!qword_1EDF02850)
  {
    sub_1D5C96240(255, &qword_1EDF02848, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02850);
  }

  return result;
}

uint64_t sub_1D6FB8494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6FB9174(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6FB84BC(uint64_t a1)
{
  v2 = sub_1D5C7656C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6FB84F8(uint64_t a1)
{
  v2 = sub_1D5C7656C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6FB8550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *v3;
  if (!*v3)
  {
    v79 = v3[1];
    if (!v79)
    {

      return;
    }

    v80 = *(v79 + 16);
    if (v80)
    {
      v126 = MEMORY[0x1E69E7CC0];
      sub_1D6997920(0, v80, 0);
      v81 = v126;
      v82 = (v79 + 32);
      sub_1D5B49760(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
      do
      {
        v83 = v82[2];
        v84 = v82[3];
        v85 = v82[1];
        v122 = *v82;
        v123 = v85;
        v124 = v83;
        v125 = v84;
        v86 = v122;
        v87 = BYTE8(v85);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7279970;
        if ((v87 & 4) != 0)
        {
          v121 = v86;
          sub_1D5CFBAA8(&v122, v120);
          v90 = a1;
          v91 = sub_1D6E5B0C8(a1, a2, a3);
          v89 = v93;
        }

        else
        {
          sub_1D5CFBAA8(&v122, v120);
          v89 = sub_1D6E5D04C(v86);

          v90 = a1;
          v91 = a1;
          v92 = a2;
        }

        v94 = *(&v125 + 1);
        *(inited + 32) = v91;
        *(inited + 40) = v92;
        *(inited + 48) = v89 & 1;
        *(inited + 56) = v90;
        *(inited + 64) = a2;
        *(inited + 72) = 0;
        if ((v94 >> 62) <= 1 || v94 >> 62 == 3)
        {
          swift_bridgeObjectRetain_n();
          v95 = 0;
        }

        else
        {

          v95 = sub_1D6E5D1E8();

          v90 = a1;
        }

        *(inited + 80) = v90;
        *(inited + 88) = a2;
        *(inited + 96) = v95 & 1;
        v96 = sub_1D60ED798();
        v98 = v97;
        v100 = v99;
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1D5D08954(&v122);
        v126 = v81;
        v102 = *(v81 + 16);
        v101 = *(v81 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_1D6997920((v101 > 1), v102 + 1, 1);
          v81 = v126;
        }

        *(v81 + 16) = v102 + 1;
        v103 = v81 + 24 * v102;
        *(v103 + 32) = v96;
        *(v103 + 40) = v98;
        *(v103 + 48) = v100 & 1;
        v82 += 4;
        --v80;
      }

      while (v80);
    }

LABEL_52:
    sub_1D60ED798();

    return;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_52;
  }

  v126 = MEMORY[0x1E69E7CC0];
  sub_1D6997920(0, v7, 0);
  v8 = 0;
  v9 = v126;
  v114 = v6 + 32;
  v113 = v7;
  v104 = v6;
  while (v8 < *(v6 + 16))
  {
    v10 = *(v114 + 8 * v8);
    v11 = v10 >> 61;
    v115 = v8;
    v116 = v9;
    if ((v10 >> 61) <= 1)
    {
      if (v11)
      {
        v25 = (v10 & 0x1FFFFFFFFFFFFFFFLL);
        v26 = v25[2];
        v27 = v25[3];
        v29 = v25[4];
        v28 = v25[5];
        v111 = v25[7];
        v112 = v25[6];
        v30 = v25[8];
        v31 = v25[10];
        sub_1D5B49760(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
        v105 = swift_initStackObject();
        *(v105 + 16) = xmmword_1D7273AE0;
        v32 = *(v31 + 16);

        v108 = v27;
        v109 = v26;
        v106 = v28;
        v107 = v29;
        sub_1D62B738C(v26, v27, v29, v28);
        v110 = v30;
        sub_1D670818C(v112, v111, v30);

        v118 = v32;
        if (v32)
        {
          v33 = 0;
          v34 = (v31 + 32);
          v35 = MEMORY[0x1E69E7CC0];
          while (v33 < *(v31 + 16))
          {
            v36 = v31;
            v37 = v34[2];
            v38 = v34[3];
            v39 = v34[1];
            v122 = *v34;
            v123 = v39;
            v124 = v37;
            v125 = v38;
            v40 = v122;
            v41 = BYTE8(v39);
            v42 = swift_initStackObject();
            *(v42 + 16) = xmmword_1D7279970;
            if ((v41 & 4) != 0)
            {
              v121 = v40;
              sub_1D5CFBAA8(&v122, v120);
              v44 = a1;
              v45 = sub_1D6E5B0C8(a1, a2, a3);
              v43 = v47;
            }

            else
            {
              sub_1D5CFBAA8(&v122, v120);
              v43 = sub_1D6E5D04C(v40);

              v44 = a1;
              v45 = a1;
              v46 = a2;
            }

            v48 = *(&v125 + 1);
            *(v42 + 32) = v45;
            *(v42 + 40) = v46;
            *(v42 + 48) = v43 & 1;
            *(v42 + 56) = v44;
            *(v42 + 64) = a2;
            *(v42 + 72) = 0;
            if ((v48 >> 62) <= 1 || v48 >> 62 == 3)
            {
              swift_bridgeObjectRetain_n();
              v49 = 0;
            }

            else
            {

              v49 = sub_1D6E5D1E8();
            }

            *(v42 + 80) = v44;
            *(v42 + 88) = a2;
            *(v42 + 96) = v49 & 1;
            v50 = sub_1D60ED798();
            v52 = v51;
            v54 = v53;
            swift_setDeallocating();
            swift_arrayDestroy();
            sub_1D5D08954(&v122);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1D698F3D8(0, *(v35 + 2) + 1, 1, v35);
            }

            v56 = *(v35 + 2);
            v55 = *(v35 + 3);
            if (v56 >= v55 >> 1)
            {
              v35 = sub_1D698F3D8((v55 > 1), v56 + 1, 1, v35);
            }

            ++v33;
            *(v35 + 2) = v56 + 1;
            v57 = &v35[24 * v56];
            *(v57 + 4) = v50;
            *(v57 + 5) = v52;
            v57[48] = v54 & 1;
            v34 += 4;
            v5 = a1;
            v31 = v36;
            if (v118 == v33)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          break;
        }

LABEL_34:
        v68 = sub_1D60ED798();
        v70 = v69;
        v72 = v71;

        *(v105 + 32) = v68;
        *(v105 + 40) = v70;
        *(v105 + 48) = v72 & 1;
        v23 = sub_1D60ED798();
        v24 = v73;
        v12 = v74;
        swift_setDeallocating();
        sub_1D6FB92C8(v105 + 32);
        sub_1D62B7110(v109, v108, v107, v106);
        sub_1D62B7020(v112, v111, v110);

        v6 = v104;
      }

      else
      {
        v13 = *(v10 + 32);
        v122 = *(v10 + 16);
        v123 = v13;
        v14 = *(v10 + 64);
        v124 = *(v10 + 48);
        v125 = v14;
        sub_1D5B49760(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_1D7273AE0;
        v16 = v122;
        v17 = BYTE8(v123);
        v18 = swift_initStackObject();
        *(v18 + 16) = xmmword_1D7279970;
        if ((v17 & 4) != 0)
        {
          v121 = v16;

          sub_1D5CFBAA8(&v122, v120);
          v5 = a1;
          v20 = sub_1D6E5B0C8(a1, a2, a3);
          v19 = v58;
        }

        else
        {

          sub_1D5CFBAA8(&v122, v120);
          v19 = sub_1D6E5D04C(v16);

          v5 = a1;
          v20 = a1;
          v21 = a2;
        }

        v59 = *(&v125 + 1);
        *(v18 + 32) = v20;
        *(v18 + 40) = v21;
        *(v18 + 48) = v19 & 1;
        *(v18 + 56) = v5;
        *(v18 + 64) = a2;
        *(v18 + 72) = 0;
        if (v59 >> 62 == 2)
        {

          v60 = sub_1D6E5D1E8();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v60 = 0;
        }

        *(v18 + 80) = v5;
        *(v18 + 88) = a2;
        *(v18 + 96) = v60 & 1;
        v61 = sub_1D60ED798();
        v63 = v62;
        v65 = v64;
        swift_setDeallocating();
        swift_arrayDestroy();
        *(v15 + 32) = v61;
        *(v15 + 40) = v63;
        *(v15 + 48) = v65 & 1;
        v23 = sub_1D60ED798();
        v24 = v66;
        v12 = v67;
        swift_setDeallocating();
        sub_1D6FB92C8(v15 + 32);
        sub_1D5D08954(&v122);
      }
    }

    else
    {
      if (v11 == 2)
      {

        v12 = sub_1D6E5CF80(v22);
      }

      else
      {

        v12 = 0;
      }

      v23 = v5;
      v24 = a2;
    }

    v75 = v115;
    v9 = v116;
    v126 = v116;
    v77 = *(v116 + 16);
    v76 = *(v116 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_1D6997920((v76 > 1), v77 + 1, 1);
      v75 = v115;
      v9 = v126;
    }

    v8 = v75 + 1;
    *(v9 + 16) = v77 + 1;
    v78 = v9 + 24 * v77;
    *(v78 + 32) = v23;
    *(v78 + 40) = v24;
    *(v78 + 48) = v12 & 1;
    if (v8 == v113)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
}

uint64_t sub_1D6FB8EEC(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5D290FC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatMenu.CodingKeys;
  *(inited + 64) = sub_1D5C7656C();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t _s8NewsFeed10FormatMenuV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1D635AF88(v3, v6);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v2)
  {
    if (!v5)
    {
      return 0;
    }

    v10 = sub_1D6352660(v2, v5);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4 == 255)
  {
    if (v7 == 255)
    {
      return 1;
    }
  }

  else if (v7 != 255 && ((v7 ^ v4) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D6FB9070(void *a1)
{
  a1[1] = sub_1D5C76450();
  a1[2] = sub_1D67008B4();
  result = sub_1D6FB90A8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6FB90A8()
{
  result = qword_1EC899298;
  if (!qword_1EC899298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899298);
  }

  return result;
}

unint64_t sub_1D6FB9120()
{
  result = qword_1EC8992A0;
  if (!qword_1EC8992A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8992A0);
  }

  return result;
}

uint64_t sub_1D6FB9174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xED0000736D657449)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1D6FB928C(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D6EEB3A8(*(v3 + 16), *(v3 + 24), *a1, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

void *sub_1D6FB9334(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v3);
  sub_1D5EA74B8(0);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = a2 + *(type metadata accessor for FeedCustomItem(0) + 20);
  v9 = *(v8 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
  *&v31[0] = *(v9 + 16);
  *&v33[0] = sub_1D72644BC();
  *(&v33[0] + 1) = v10;
  MEMORY[0x1DA6F9910](0x736E6F6974704F20, 0xE800000000000000);
  sub_1D68CAFC4(v9);
  v12 = sub_1D5F64170(v11);

  v13 = sub_1D5F62BFC(v12);

  v14 = sub_1D7073500(v13);

  sub_1D711AD20(0x736E6F6974704FLL, 0xE700000000000000, v14, *&v33[0], *(&v33[0] + 1), (v7 + v6));
  v15 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v15 - 8) + 56))(v7 + v6, 0, 1, v15);
  sub_1D6795150(0x49206D6F74737543, 0xEB000000006D6574, 0, 0, v7, v29);
  swift_setDeallocating();
  sub_1D6180C78(v7 + v6);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v16 = swift_allocObject();
  *(inited + 32) = v16;
  *(v16 + 48) = v30;
  v17 = v29[1];
  *(v16 + 16) = v29[0];
  *(v16 + 32) = v17;
  v28 = a2;
  sub_1D5ECF4A0(sub_1D6FB9744, v27, &unk_1F5118508);
  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v18, v31);

  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(inited + 72) = v19;
  *(v19 + 48) = v32;
  v20 = v31[1];
  *(v19 + 16) = v31[0];
  *(v19 + 32) = v20;
  v26[2] = a2;
  sub_1D5ECC080(sub_1D6FB9764, v26, &unk_1F5118530);
  sub_1D6795150(5001813, 0xE300000000000000, 0, 0, v21, v33);

  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(inited + 112) = v22;
  *(v22 + 48) = v34;
  v23 = v33[1];
  *(v22 + 16) = v33[0];
  *(v22 + 32) = v23;
  v24 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v24;
}

uint64_t sub_1D6FB978C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_1D6FB97D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FormatGroupLayoutFactory.Bound(uint64_t a1)
{
  result = qword_1EDF260E8;
  if (!qword_1EDF260E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6FB98E8(uint64_t a1)
{
  type metadata accessor for GroupLayoutKey(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B49474(319, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext(319);
      if (v3 <= 0x3F)
      {
        sub_1D6FF9128(319, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FormatPackageInventory(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FormatNodeStateData();
            if (v6 <= 0x3F)
            {
              sub_1D6FF9DCC(319, &qword_1EDF1AD18, sub_1D60074F4, &type metadata for FormatGroupLayoutFactoryOption, MEMORY[0x1E69E64E8]);
              if (v7 <= 0x3F)
              {
                sub_1D5B49474(319, &unk_1EDF30318, &protocol descriptor for FormatLoggerType);
                if (v8 <= 0x3F)
                {
                  sub_1D5B49474(319, qword_1EDF42D80, &protocol descriptor for FeedLayoutTrackerType);
                  if (v9 <= 0x3F)
                  {
                    sub_1D6FF8CD0(319, &qword_1EDF3C928, MEMORY[0x1E69E62F8]);
                    if (v10 <= 0x3F)
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

void sub_1D6FB9AE4(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v22 = a1 + 32;
  while (1)
  {
    v3 = *(v22 + 16 * v1 + 8);
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      v5 = sub_1D7263BFC();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = sub_1D7263BFC();
      v8 = v21 + v5;
      if (__OFADD__(v21, v5))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 + v5;
      if (__OFADD__(v7, v5))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v6)
      {
        v9 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_1D7263DDC();
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v4)
    {
      break;
    }

    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v11 >> 1) - v10) < v5)
    {
      goto LABEL_35;
    }

    v25 = v2;
    v13 = v9 + 8 * v10 + 32;
    if (v4)
    {
      if (v12 < 1)
      {
        goto LABEL_37;
      }

      sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
      sub_1D6FFC2E8(&qword_1EC883230, MEMORY[0x1E69E6340]);
      for (i = 0; i != v12; ++i)
      {
        v15 = sub_1D6D876E0(v24, i, v3);
        v17 = *v16;

        (v15)(v24, 0);
        *(v13 + 8 * i) = v17;
      }
    }

    else
    {
      type metadata accessor for FormatAccessibilityLayoutValue();
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v5 >= 1)
    {
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v5);
      v20 = v18 + v5;
      if (v19)
      {
        goto LABEL_36;
      }

      *(v9 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return;
    }
  }

  v12 = sub_1D7263BFC();
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v5 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1D6FB9DC4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v3, 0);
    result = v26;
    v6 = (a1 + 40);
    v20 = a2;
    do
    {
      v22 = result;
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *(*a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
      v10 = v9[3];
      if (v10)
      {
        v25 = v9[2];

        MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
        MEMORY[0x1DA6F9910](v7, v8);
        v11 = v10;
        v23 = v25;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v23 = v7;
        v11 = v8;
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + 32);
        v21 = v7;
        v14 = v9[6];
        swift_beginAccess();
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v13 + 16);
        *(v13 + 16) = 0x8000000000000000;
        sub_1D6D7741C(v14, v23, v11, isUniquelyReferenced_nonNull_native);

        *(v13 + 16) = v24;
        swift_endAccess();

        a2 = v20;

        v7 = v21;
      }

      else
      {
      }

      v16 = sub_1D6B0A84C(v7, v8);

      *a2 = v16;

      result = v22;
      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D5BFC364((v17 > 1), v18 + 1, 1);
        result = v22;
      }

      *(result + 16) = v18 + 1;
      v19 = result + 16 * v18;
      *(v19 + 32) = v23;
      *(v19 + 40) = v11;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1D6FBA034(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t *a8)
{
  v88 = a8;
  v86 = a7;
  v83 = a6;
  v82 = a5;
  v81 = a4;
  v9 = v8;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v78 = v13;
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = (&v76 - v15);
  v85 = sub_1D725A36C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v16);
  v87 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v92 = &v76 - v21;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v18);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = (&v76 - v24);
  v102 = a1;
  v93 = a2;
  swift_beginAccess();
  v26 = v9[2];
  v27 = v9[3];

  v28 = sub_1D6E8DD40(v26, v27);
  v30 = v29;

  v91 = a3;
  v31 = *(a3 + 3);
  if (*(v31 + 16))
  {
    *v25 = v93;
    v32 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
    swift_beginAccess();

    sub_1D6D60828(v25, v28, v30);
    swift_endAccess();
  }

  v89 = v28;
  v90 = v30;
  v33 = v9[3];
  v95 = v9[2];
  v96 = v33;

  MEMORY[0x1DA6F9910](0x657250676E6F6C2DLL, 0xEA00000000007373);
  v34 = sub_1D6E8DD40(v95, v96);
  v36 = v35;

  v37 = v93;
  if (*(v31 + 16))
  {
    *v25 = v93;
    v38 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(v25, 0, 1, v38);
    swift_beginAccess();

    sub_1D6D60828(v25, v34, v36);
    swift_endAccess();
  }

  v39 = v91;
  if (v9[24])
  {
    v41 = v9[28];
    v40 = v9[29];
    v43 = v9[26];
    v42 = v9[27];
    v44 = v9[25];
    v95 = v9[24];
    v96 = v44;
    v97 = v43;
    v98 = v42;
    v99 = v41;
    v100 = v40;

    sub_1D5DEA234(v41);

    v45 = v94;
    sub_1D68687FC(v37, v92);
    v94 = v45;
    if (v45)
    {
      v46 = v99;

      sub_1D5CBF568(v46);

      return;
    }

    v79 = v34;
    v48 = v99;

    sub_1D5CBF568(v48);
    v39 = v91;

    v47 = 0;
  }

  else
  {
    v79 = v34;
    v47 = 1;
  }

  v49 = sub_1D7259B8C();
  (*(*(v49 - 8) + 56))(v92, v47, 1, v49);
  swift_unownedRetainStrong();
  v50 = v90;

  swift_unownedRetain();

  v51 = swift_allocObject();
  v51[2] = v9;
  v51[3] = v37;
  v52 = v89;
  v51[4] = v39;
  v51[5] = v52;
  v53 = v79;
  v51[6] = v50;
  v51[7] = v53;
  v51[8] = v36;
  v54 = v82(0);
  v55 = v83();

  v83 = v54;
  v86 = v55;
  sub_1D7259ACC();

  type metadata accessor for FormatButtonNodeStateMapper();
  v56 = v39;
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v57[4] = MEMORY[0x1E69E7CC8];
  v58 = (*(v84 + 104))(v87, *MEMORY[0x1E69D7378], v85);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v76 - 6) = v52;
  *(&v76 - 5) = v50;
  *(&v76 - 4) = v37;
  *(&v76 - 3) = v9;
  v74 = v56;
  v75 = v57;
  sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v60 = v94;
  v61 = sub_1D725A4EC();
  if (v60)
  {

    swift_bridgeObjectRelease_n();
    v67 = MEMORY[0x1E69D6FA0];
    v68 = MEMORY[0x1E69E6720];
    v69 = v92;
  }

  else
  {
    v62 = v86;
    v63 = v61;
    swift_beginAccess();
    v101[0] = v9[4];
    sub_1D5C82CD8(v101[0]);
    v64 = v80;
    sub_1D5BEB9F4(v93, v52, v50, v80);
    sub_1D5C92A8C(v101[0]);
    swift_beginAccess();
    v65 = v9[6];

    v66 = v93;
    sub_1D618EFB4(v93, v65);
    v94 = 0;

    v88 = &v76;
    MEMORY[0x1EEE9AC00](v70, v71);
    v72 = v90;
    *(&v76 - 8) = v89;
    *(&v76 - 7) = v72;
    *(&v76 - 6) = v9;
    *(&v76 - 5) = v66;
    *(&v76 - 4) = v63;
    *(&v76 - 3) = v57;
    v75 = v62;
    v74 = v83;
    v73 = v92;
    sub_1D725997C();

    swift_bridgeObjectRelease_n();
    (*(v77 + 8))(v64, v78);
    v67 = MEMORY[0x1E69D6FA0];
    v68 = MEMORY[0x1E69E6720];
    v69 = v73;
  }

  sub_1D6FFCA9C(v69, &qword_1EDF3C120, v67, v68, sub_1D5D27F7C);
}

void sub_1D6FBAAA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v33 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v34 = *(v33 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v34;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDD11C(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D6DAD370(v11);

    sub_1D6FD1EC4(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v32 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatTextNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v32;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6DAC0B0(v30, v31);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6DAD370(v11);

  sub_1D6FD1EC4(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBAE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v7 = *(*(v31 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v7 + 16) + 16))
  {
    v10 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v32 = *(v31 + 56);

  sub_1D6F622E0(v8);
  sub_1D5B886D0(v9);

  v10 = v32;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v11 & 1) == 0)
  {
    goto LABEL_40;
  }

  v13 = sub_1D6FDD3C0(v12, a1);

  v14 = v13 >> 62;
  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_39:

LABEL_40:
    sub_1D6A46458(v10);

    sub_1D6FD3E28();

    return;
  }

  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA6FB460](0, v13);
      if (v15 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v16 = *(v13 + 32);

      if (v15 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v14)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v15)
    {
      goto LABEL_45;
    }

    if ((v13 & 0xC000000000000001) == 0 || v15 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatAnimationNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v15 != v19);
    }

    if (v14)
    {
      sub_1D72640EC();
      v14 = v21;
      v20 = v22;
      v24 = v23;

      v15 = v24 >> 1;
    }

    else
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();

    v13 = v16;
    v25 = v15 - v20;
    if (v15 == v20)
    {
      break;
    }

    if (v15 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v15;
    }

    v27 = v26 - v20;
    v28 = (v14 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v14 = v29;

      v13 = sub_1D6A4591C(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v15 = sub_1D7263BFC();
    if (!v15)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6A46458(v10);

  sub_1D6FD3E28();
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBB1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDD664(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D6799F84(v11);

    sub_1D6FCF388(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatViewNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6798FD4(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6799F84(v11);

  sub_1D6FCF388(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBB580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDD8FC(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D6FACC10(v11);

    sub_1D6FD2904(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatImageNodeStyle(0);

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6FAB7EC(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6FACC10(v11);

  sub_1D6FD2904(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBB924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDDBA0(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D69EFFD4(v11);

    sub_1D6FD331C(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatItemNodeStyle(0);

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D69EEDCC(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D69EFFD4(v11);

  sub_1D6FD331C(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBBCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v6 = *(*(v30 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v6 + 16) + 16))
  {
    v9 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  v31 = *(v30 + 56);

  sub_1D6F622E0(v7);
  sub_1D5B886D0(v8);

  v9 = v31;
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!*(a4 + 16) || (sub_1D5B69D90(*(a1 + 32), *(a1 + 40)), (v10 & 1) == 0))
  {
    sub_1D71C6800(v9);

    sub_1D6FD38BC();

    return;
  }

  v12 = sub_1D6FDDE44(v11, a1);

  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_37;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_38:

    sub_1D71C6800(v9);
LABEL_39:

    sub_1D6FD38BC();

    return;
  }

  while ((v12 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA6FB460](0, v12);
    if (v14 < 0)
    {
      goto LABEL_41;
    }

LABEL_10:
    if (v13)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_43;
      }

      v16 = sub_1D7263BFC();
    }

    else
    {
      v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_43;
      }
    }

    if (v16 < v14)
    {
      goto LABEL_44;
    }

    if ((v12 & 0xC000000000000001) == 0 || v14 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatSupplementaryNodeStyle();

      v17 = 1;
      do
      {
        v18 = v17 + 1;
        sub_1D7263DAC();
        v17 = v18;
      }

      while (v14 != v18);
    }

    if (v13)
    {
      sub_1D72640EC();
      v13 = v20;
      v19 = v21;
      v23 = v22;

      v14 = v23 >> 1;
    }

    else
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v19 = 1;
    }

    swift_unknownObjectRetain();

    v12 = v15;
    v24 = v14 - v19;
    if (v14 == v19)
    {
LABEL_35:
      swift_unknownObjectRelease();
      sub_1D71C6800(v9);

      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    if (v14 <= v19)
    {
      v25 = v19;
    }

    else
    {
      v25 = v14;
    }

    v26 = v25 - v19;
    v27 = (v13 + 8 * v19);
    while (v26)
    {
      v28 = *v27++;
      v13 = v28;

      v12 = sub_1D71C5CD0(v29);

      --v26;
      if (!--v24)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    v14 = sub_1D7263BFC();
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v15 = *(v12 + 32);

  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1D6FBC05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDE0E8(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D60097FC(v11);

    sub_1D6FC8AFC(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatGroupNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6008734(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D60097FC(v11);

  sub_1D6FC8AFC(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBC400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v6 = *(*(v30 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v6 + 16) + 16))
  {
    v9 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  v31 = *(v30 + 56);

  sub_1D6F622E0(v7);
  sub_1D5B886D0(v8);

  v9 = v31;
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!*(a4 + 16) || (sub_1D5B69D90(*(a1 + 32), *(a1 + 40)), (v10 & 1) == 0))
  {
    sub_1D61928B4(v9);

    sub_1D6FCC08C();

    return;
  }

  v12 = sub_1D6FDE38C(v11, a1);

  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_37;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_38:

    sub_1D61928B4(v9);
LABEL_39:

    sub_1D6FCC08C();

    return;
  }

  while ((v12 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA6FB460](0, v12);
    if (v14 < 0)
    {
      goto LABEL_41;
    }

LABEL_10:
    if (v13)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_43;
      }

      v16 = sub_1D7263BFC();
    }

    else
    {
      v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_43;
      }
    }

    if (v16 < v14)
    {
      goto LABEL_44;
    }

    if ((v12 & 0xC000000000000001) == 0 || v14 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatWebEmbedNodeStyle();

      v17 = 1;
      do
      {
        v18 = v17 + 1;
        sub_1D7263DAC();
        v17 = v18;
      }

      while (v14 != v18);
    }

    if (v13)
    {
      sub_1D72640EC();
      v13 = v20;
      v19 = v21;
      v23 = v22;

      v14 = v23 >> 1;
    }

    else
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v19 = 1;
    }

    swift_unknownObjectRetain();

    v12 = v15;
    v24 = v14 - v19;
    if (v14 == v19)
    {
LABEL_35:
      swift_unknownObjectRelease();
      sub_1D61928B4(v9);

      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    if (v14 <= v19)
    {
      v25 = v19;
    }

    else
    {
      v25 = v14;
    }

    v26 = v25 - v19;
    v27 = (v13 + 8 * v19);
    while (v26)
    {
      v28 = *v27++;
      v13 = v28;

      v12 = sub_1D6191D50(v29);

      --v26;
      if (!--v24)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    v14 = sub_1D7263BFC();
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v15 = *(v12 + 32);

  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1D6FBC794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v6 = *(*(v143 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v6 + 16) + 16))
  {
    v128 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v142 = *(v143 + 56);

  sub_1D6F622E0(v7);
  sub_1D5B886D0(v8);

  v128 = v142;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_124;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v9 & 1) == 0)
  {
    goto LABEL_124;
  }

  v11 = sub_1D6FDE630(v10, a1);

  isUniquelyReferenced_nonNull_native = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_122;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_123:

LABEL_124:
    sub_1D6159CD8(v128);

    sub_1D6FCB23C(a2);

    return;
  }

  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v115 = MEMORY[0x1DA6FB460](0, v11);
      if (v13 < 0)
      {
        break;
      }

      goto LABEL_10;
    }

    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_127;
    }

    v115 = *(v11 + 32);

    if (v13 < 0)
    {
      break;
    }

LABEL_10:
    if (isUniquelyReferenced_nonNull_native)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_128;
      }

      v14 = sub_1D7263BFC();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_128;
      }
    }

    if (v14 < v13)
    {
      goto LABEL_129;
    }

    if ((v11 & 0xC000000000000001) == 0 || v13 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatCustomNodeStyle();

      v15 = 1;
      do
      {
        v16 = v15 + 1;
        sub_1D7263DAC();
        v15 = v16;
      }

      while (v13 != v16);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1D72640EC();
      v118 = v18;
      v20 = v19;
      v22 = v21;

      v13 = v22 >> 1;
      v17 = v20;
    }

    else
    {
      v118 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
      v17 = 1;
    }

    swift_unknownObjectRetain();

    if (v17 == v13)
    {
LABEL_28:
      swift_unknownObjectRelease();
      sub_1D6159CD8(v128);

      sub_1D6FCB23C(a2);
      if (v129)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }

    if (v13 <= v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = v13;
    }

    v116 = v13;
    v117 = v23;
    isUniquelyReferenced_nonNull_native = v115;
    while (1)
    {
      if (v17 == v117)
      {
        goto LABEL_119;
      }

      v25 = *(v118 + 8 * v17);
      swift_beginAccess();
      v26 = *(isUniquelyReferenced_nonNull_native + 48);
      if (v26 == 2)
      {
        LOBYTE(v26) = *(v25 + 48);
      }

      v27 = *(isUniquelyReferenced_nonNull_native + 24);
      v126 = *(isUniquelyReferenced_nonNull_native + 16);
      v28 = *(isUniquelyReferenced_nonNull_native + 40);
      v124 = *(isUniquelyReferenced_nonNull_native + 32);
      v29 = *(isUniquelyReferenced_nonNull_native + 56);
      v30 = *(v25 + 56);

      v125 = v27;

      v123 = v28;

      v122 = sub_1D6FCAE0C(v29, v30);
      swift_beginAccess();
      v31 = *(isUniquelyReferenced_nonNull_native + 64);
      swift_beginAccess();
      v32 = *(v25 + 64);
      v144 = MEMORY[0x1E69E7CC8];
      v11 = *(v31 + 16);
      v33 = *(v32 + 16);
      isUniquelyReferenced_nonNull_native = v11 + v33;
      if (__OFADD__(v11, v33))
      {
        goto LABEL_120;
      }

      v135 = *(v32 + 16);
      v120 = v26;
      v121 = v17;
      sub_1D6FF9A98(0);

      v132 = v32;

      sub_1D7261DAC();
      v34 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
      v133 = v31;
      v138 = *(v31 + 16);
      v141 = v34;
      if (v138)
      {
        v35 = 0;
        v36 = (v31 + 56);
        while (1)
        {
          if (v35 >= *(v31 + 16))
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v37 = *(v36 - 3);
          v38 = *(v36 - 2);
          v11 = *(v36 - 8);
          v39 = *v36;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = sub_1D6D8CB60();
          v42 = v144[2];
          v43 = (v41 & 1) == 0;
          v44 = __OFADD__(v42, v43);
          v45 = v42 + v43;
          if (v44)
          {
            goto LABEL_111;
          }

          v46 = v41;
          if (v144[3] < v45)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_48;
          }

          isUniquelyReferenced_nonNull_native = v11;
          v51 = v40;
          sub_1D6D7F898();
          v40 = v51;
          v11 = isUniquelyReferenced_nonNull_native;
          if ((v46 & 1) == 0)
          {
LABEL_51:
            v49 = v144;
            v144[(v40 >> 6) + 8] |= 1 << v40;
            v52 = (v144[6] + 16 * v40);
            *v52 = v37;
            v52[1] = v38;
            v53 = v144[7] + 32 * v40;
            *v53 = v37;
            *(v53 + 8) = v38;
            *(v53 + 16) = v11;
            *(v53 + 24) = v39;
            v54 = v144[2];
            v44 = __OFADD__(v54, 1);
            v55 = v54 + 1;
            if (v44)
            {
              goto LABEL_116;
            }

            v144[2] = v55;
            goto LABEL_53;
          }

LABEL_49:
          isUniquelyReferenced_nonNull_native = v11;
          v48 = v40;

          v49 = v144;
          v50 = v144[7] + 32 * v48;
          *v50 = v37;
          *(v50 + 8) = v38;
          *(v50 + 16) = isUniquelyReferenced_nonNull_native;
          *(v50 + 24) = v39;

LABEL_53:
          v144 = v49;
          v11 = *(v141 + 2);
          v56 = *(v141 + 3);

          if (v11 >= v56 >> 1)
          {
            v141 = sub_1D698F4BC((v56 > 1), v11 + 1, 1, v141);
          }

          ++v35;

          *(v141 + 2) = v11 + 1;
          v57 = &v141[16 * v11];
          *(v57 + 4) = v37;
          *(v57 + 5) = v38;
          v36 += 4;
          v31 = v133;
          if (v138 == v35)
          {
            goto LABEL_56;
          }
        }

        sub_1D6D68C80(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_1D6D8CB60();
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_130;
        }

LABEL_48:
        if ((v46 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

LABEL_56:
      v130 = sub_1D698F4BC(0, v135, 0, MEMORY[0x1E69E7CC0]);
      v58 = v132;
      v59 = *(v132 + 16);
      if (v59)
      {
        v11 = 0;
        v131 = *(v132 + 16);
        v119 = v59 - 1;
        v60 = (v132 + 56);
        do
        {
          while (1)
          {
            if (v11 >= *(v58 + 16))
            {
              goto LABEL_112;
            }

            v63 = *(v60 - 3);
            v62 = *(v60 - 2);
            isUniquelyReferenced_nonNull_native = *(v60 - 8);
            v64 = *v60;
            v136 = v11;
            v139 = *v60;
            if (v144[2])
            {
              break;
            }

LABEL_78:

            v11 = swift_isUniquelyReferenced_nonNull_native();
            v85 = v62;
            v86 = sub_1D6D8CB60();
            v88 = v144[2];
            v89 = (v87 & 1) == 0;
            v44 = __OFADD__(v88, v89);
            v90 = v88 + v89;
            if (v44)
            {
              goto LABEL_118;
            }

            v91 = v87;
            if (v144[3] < v90)
            {
              sub_1D6D68C80(v90, v11);
              v86 = sub_1D6D8CB60();
              if ((v91 & 1) != (v92 & 1))
              {
                goto LABEL_130;
              }

LABEL_83:
              if (v91)
              {
                goto LABEL_84;
              }

              goto LABEL_88;
            }

            if (v11)
            {
              goto LABEL_83;
            }

            v11 = v86;
            sub_1D6D7F898();
            v86 = v11;
            if (v91)
            {
LABEL_84:
              v93 = v144[7] + 32 * v86;
              *v93 = v63;
              *(v93 + 8) = v85;
              *(v93 + 16) = isUniquelyReferenced_nonNull_native;
              *(v93 + 24) = v139;

              goto LABEL_90;
            }

LABEL_88:
            v144[(v86 >> 6) + 8] |= 1 << v86;
            v94 = (v144[6] + 16 * v86);
            *v94 = v63;
            v94[1] = v85;
            v95 = v144[7] + 32 * v86;
            *v95 = v63;
            *(v95 + 8) = v85;
            *(v95 + 16) = isUniquelyReferenced_nonNull_native;
            *(v95 + 24) = v139;
            v96 = v144[2];
            v44 = __OFADD__(v96, 1);
            v97 = v96 + 1;
            if (v44)
            {
              goto LABEL_121;
            }

            v144[2] = v97;

LABEL_90:
            isUniquelyReferenced_nonNull_native = *(v130 + 2);
            v98 = *(v130 + 3);

            if (isUniquelyReferenced_nonNull_native >= v98 >> 1)
            {
              v130 = sub_1D698F4BC((v98 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v130);
            }

            v11 = v136 + 1;

            *(v130 + 2) = isUniquelyReferenced_nonNull_native + 1;
            v99 = &v130[16 * isUniquelyReferenced_nonNull_native];
            *(v99 + 4) = v63;
            *(v99 + 5) = v85;
            if (v119 == v136)
            {
              goto LABEL_94;
            }

            v60 = (v132 + 56 + 32 * v11);
          }

          v65 = sub_1D6D8CB60();
          if ((v66 & 1) == 0)
          {
            goto LABEL_78;
          }

          v67 = v144[7] + 32 * v65;
          v68 = *v67;
          v69 = *(v67 + 8);
          v70 = *(v67 + 24);
          if (*(v67 + 16) == 2)
          {
            v71 = isUniquelyReferenced_nonNull_native;
          }

          else
          {
            v71 = *(v67 + 16);
          }

          v134 = v71;
          v72 = v70;
          if (!v70)
          {

            v72 = v64;
          }

          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v11 = swift_isUniquelyReferenced_nonNull_native();
          v73 = v68;
          v75 = sub_1D6D8CB60();
          v76 = v144[2];
          v77 = (v74 & 1) == 0;
          v78 = v76 + v77;
          if (__OFADD__(v76, v77))
          {
            goto LABEL_115;
          }

          isUniquelyReferenced_nonNull_native = v74;
          if (v144[3] >= v78)
          {
            if (v11)
            {
              if (v74)
              {
                goto LABEL_58;
              }
            }

            else
            {
              sub_1D6D7F898();
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
            sub_1D6D68C80(v78, v11);
            v79 = sub_1D6D8CB60();
            if ((isUniquelyReferenced_nonNull_native & 1) != (v80 & 1))
            {
              goto LABEL_130;
            }

            v75 = v79;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_58:
              v61 = v144[7] + 32 * v75;
              isUniquelyReferenced_nonNull_native = *(v61 + 24);
              *v61 = v73;
              *(v61 + 8) = v69;
              *(v61 + 16) = v134;
              *(v61 + 24) = v72;

              goto LABEL_59;
            }
          }

          v144[(v75 >> 6) + 8] |= 1 << v75;
          v81 = (v144[6] + 16 * v75);
          *v81 = v73;
          v81[1] = v69;
          v82 = v144[7] + 32 * v75;
          *v82 = v73;
          *(v82 + 8) = v69;
          *(v82 + 16) = v134;
          *(v82 + 24) = v72;
          v83 = v144[2];
          v44 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v44)
          {
            goto LABEL_117;
          }

          v144[2] = v84;

          isUniquelyReferenced_nonNull_native = v70;
LABEL_59:
          v11 = v136 + 1;

          v60 += 4;
          v58 = v132;
        }

        while (v131 != v136 + 1);
      }

LABEL_94:

      sub_1D6985DAC(v100);
      isUniquelyReferenced_nonNull_native = v130;
      v101 = *(v130 + 2);
      if (v101)
      {
        break;
      }

      v24 = MEMORY[0x1E69E7CC0];
LABEL_35:
      v17 = v121 + 1;

      type metadata accessor for FormatCustomNodeStyle();
      isUniquelyReferenced_nonNull_native = swift_allocObject();
      swift_beginAccess();
      *(isUniquelyReferenced_nonNull_native + 16) = v126;
      *(isUniquelyReferenced_nonNull_native + 24) = v125;
      *(isUniquelyReferenced_nonNull_native + 32) = v124;
      *(isUniquelyReferenced_nonNull_native + 40) = v123;
      *(isUniquelyReferenced_nonNull_native + 48) = v120;
      *(isUniquelyReferenced_nonNull_native + 56) = v122;
      swift_beginAccess();
      *(isUniquelyReferenced_nonNull_native + 64) = v24;
      if (v121 + 1 == v116)
      {
        goto LABEL_28;
      }
    }

    v102 = 0;
    v103 = v130 + 40;
    v24 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v11 = &v103[16 * v102];
    v104 = v102;
    while (v104 < v101)
    {
      v102 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_114;
      }

      if (v144[2])
      {

        v105 = sub_1D6D8CB60();
        if (v106)
        {
          v140 = v103;
          v107 = v144[7] + 32 * v105;
          v109 = *v107;
          v108 = *(v107 + 8);
          v110 = *(v107 + 16);
          v111 = *(v107 + 24);

          v137 = v110;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1D698D844(0, *(v24 + 2) + 1, 1, v24);
          }

          v113 = *(v24 + 2);
          v112 = *(v24 + 3);
          v11 = v113 + 1;
          if (v113 >= v112 >> 1)
          {
            v24 = sub_1D698D844((v112 > 1), v113 + 1, 1, v24);
          }

          *(v24 + 2) = v11;
          v114 = &v24[32 * v113];
          *(v114 + 4) = v109;
          *(v114 + 5) = v108;
          v114[48] = v137;
          *(v114 + 7) = v111;
          v103 = v140;
          if (v102 != v101)
          {
            goto LABEL_96;
          }

          goto LABEL_35;
        }
      }

      ++v104;
      v11 += 16;
      if (v102 == v101)
      {
        goto LABEL_35;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    v13 = sub_1D7263BFC();
    if (!v13)
    {
      goto LABEL_123;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  sub_1D726493C();
  __break(1u);
}

void sub_1D6FBD4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDE8D4(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D6D8E900(v11);

    sub_1D6FD3A10(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatMicaNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6D8DA8C(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6D8E900(v11);

  sub_1D6FD3A10(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBD864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDEB78(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D67AC7DC(v11);

    sub_1D6FCFE2C(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatLayeredMediaNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D67AB674(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D67AC7DC(v11);

  sub_1D6FCFE2C(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBDC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDEE1C(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D68872C8(v11);

    sub_1D6FD3FBC(a2, sub_1D6FFCC1C);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatVideoNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6886320(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D68872C8(v11);

  sub_1D6FD3FBC(a2, sub_1D6FFCC1C);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBDFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDF0C0(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D615D56C(v11);

    sub_1D6FCB400(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatIssueCoverNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D615C6B8(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D615D56C(v11);

  sub_1D6FCB400(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBE378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDF364(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D719B314(v11);

    sub_1D6FD3FBC(a2, sub_1D6FFCC1C);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatVideoPlayerNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D719A36C(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D719B314(v11);

  sub_1D6FD3FBC(a2, sub_1D6FFCC1C);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBE744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDF608(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D617F45C(v11);

    sub_1D6FCB8B4(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatProgressViewNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D617E8D4(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D617F45C(v11);

  sub_1D6FCB8B4(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D6FBEAE8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v90 = a3;
  v5 = *a1;
  v6 = a1 + 1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = a1[3];
  v87 = a1[2];
  v88 = v9;
  v89 = v5;
  sub_1D725A7EC();
  v10 = *(*(v83 + 40) + 16);
  swift_beginAccess();
  if (*(*(v10 + 16) + 16))
  {
    *&v83 = *(v83 + 56);

    sub_1D6F622E0(v11);
    sub_1D5B886D0(v12);

    v13 = v83;
    if (!*(a1 + 1))
    {
LABEL_15:
      v36 = a1[1];
      v75 = *a1;
      v76 = v36;
      v37 = a1[3];
      v77 = a1[2];
      v78 = v37;
      v38 = v75;
      v39 = v6[1];
      v63 = *v6;
      v64 = v39;
      v65 = v6[2];
      if (*(&v75 + 1))
      {
        sub_1D6FF924C(a1, &v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
        sub_1D6A525F8(v13, &v83);

        v67 = v75;
        v68 = v76;
        v69 = v77;
        v70 = v78;
        sub_1D66B0388(&v67);
        v40 = v83;
        v41 = v84;
        v42 = v85;
        v43 = BYTE1(v86);
        v44 = *(&v86 + 1);
        v71 = v83;
        v72 = v84;
        v73 = v85;
        v74 = v86;
        v45 = v86;

        sub_1D5ED34B0(v42, *(&v42 + 1), v45);

        result = sub_1D66B0388(&v71);
        v47 = v90;
        *v90 = v40;
        v47[1] = v41;
        v47[2] = v42;
        *(v47 + 48) = v45;
        *(v47 + 49) = v43;
        *(v47 + 7) = v44;
      }

      else
      {
        sub_1D6FF924C(a1, &v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

        v71 = v75;
        v72 = v76;
        v73 = v77;
        v74 = v78;
        result = sub_1D5D0AC3C(&v71, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
        v48 = v90;
        *v90 = v38;
        *(v48 + 1) = 0;
        v49 = v64;
        v48[1] = v63;
        v48[2] = v49;
        v48[3] = v65;
      }

      return result;
    }
  }

  else
  {
    v13 = sub_1D6E46E28();

    if (!*(a1 + 1))
    {
      goto LABEL_15;
    }
  }

  v79 = v89;
  v81 = v87;
  v82 = v88;
  *&v80 = v7;
  *(&v80 + 1) = v8;
  if (!*(a2 + 16))
  {
    v75 = v79;
    v76 = v80;
    v77 = v81;
    v78 = v82;
    v83 = v89;
    *&v84 = v7;
    *(&v84 + 1) = v8;
    v85 = v87;
    v86 = v88;
    sub_1D6A53524(&v83, &v71);
    v35 = &v75;
LABEL_14:
    sub_1D66B0388(v35);
    goto LABEL_15;
  }

  v75 = v89;
  *&v76 = v7;
  *(&v76 + 1) = v8;
  v77 = v87;
  v78 = v88;
  sub_1D6A53524(&v75, &v83);
  sub_1D5B69D90(v7, v8);
  if ((v14 & 1) == 0)
  {
    v83 = v79;
    v84 = v80;
    v85 = v81;
    v86 = v82;
    v35 = &v83;
    goto LABEL_14;
  }

  v83 = v79;
  v84 = v80;
  v85 = v81;
  v86 = v82;

  v16 = sub_1D6FDF8AC(v15, &v83);

  v17 = *(v16 + 2);
  if (v17)
  {
    v18 = *(v16 + 3);
    v71 = *(v16 + 2);
    v72 = v18;
    v19 = *(v16 + 5);
    v73 = *(v16 + 4);
    v74 = v19;
    v51 = v18;
    v52 = v71;
    v20 = v19;
    v21 = v73;
    v22 = *(&v19 + 1);
    sub_1D6A53524(&v71, &v67);
    sub_1D6A53524(&v71, &v67);
    v59 = v52;
    v60 = v51;
    v61 = v21;
    LOWORD(v62) = v20;
    *(&v62 + 1) = v22;
    v23 = v17 - 1;
    if (v23)
    {
      v24 = (v16 + 96);
      do
      {
        v55 = *v24;
        v56 = v24[1];
        v57 = v24[2];
        v58 = v24[3];
        v63 = v59;
        v64 = v60;
        v65 = v61;
        v66 = v62;
        sub_1D6A51A48(&v55, &v67);
        sub_1D66B0388(&v59);
        v59 = v67;
        v60 = v68;
        v61 = v69;
        LOWORD(v62) = v70;
        v24 += 4;
        *(&v62 + 1) = *(&v70 + 1);
        --v23;
      }

      while (v23);
    }

    v63 = v59;
    v64 = v60;
    v65 = v61;
    v66 = v62;
    sub_1D6A525F8(v13, &v67);

    v53[0] = v63;
    v53[1] = v64;
    v53[2] = v65;
    v53[3] = v66;
    sub_1D66B0388(v53);
    sub_1D66B0388(&v71);
    v54[0] = v79;
    v54[1] = v80;
    v54[2] = v81;
    v54[3] = v82;
    sub_1D66B0388(v54);
    v26 = *(&v67 + 1);
    v25 = v67;
    v28 = *(&v68 + 1);
    v27 = v68;
    v30 = *(&v69 + 1);
    v29 = v69;
    v31 = BYTE1(v70);
    v32 = *(&v70 + 1);
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v58 = v70;
    v33 = v70;

    sub_1D5ED34B0(v29, v30, v33);

    v34 = &v55;
  }

  else
  {

    sub_1D6A525F8(v13, &v63);

    v67 = v79;
    v68 = v80;
    v69 = v81;
    v70 = v82;
    sub_1D66B0388(&v67);
    v26 = *(&v63 + 1);
    v25 = v63;
    v28 = *(&v64 + 1);
    v27 = v64;
    v30 = *(&v65 + 1);
    v29 = v65;
    v31 = BYTE1(v66);
    v32 = *(&v66 + 1);
    v71 = v63;
    v72 = v64;
    v73 = v65;
    v74 = v66;
    v33 = v66;

    sub_1D5ED34B0(v29, v30, v33);

    v34 = &v71;
  }

  result = sub_1D66B0388(v34);
  v50 = v90;
  *v90 = v25;
  *(v50 + 1) = v26;
  *(v50 + 2) = v27;
  *(v50 + 3) = v28;
  *(v50 + 4) = v29;
  *(v50 + 5) = v30;
  *(v50 + 48) = v33;
  *(v50 + 49) = v31;
  *(v50 + 7) = v32;
  return result;
}